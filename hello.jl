using RLWE

# กำหนดค่าพารามิเตอร์ของอัลกอริทึม
n = 4096
q = 2^2048

# แปลงข้อความเป็นตัวเลข
message = "สวัสดีชาวโลก"
message_int = string(message) |> collect |> map(x -> ord(x))

# สร้างคีย์การเข้ารหัสและถอดรหัส
key = RLWE.generate_key(n, q)

# เข้ารหัสข้อความ
ciphertext = RLWE.encrypt(key, message_int)

# ถอดรหัสข้อความ
plaintext = RLWE.decrypt(key, ciphertext)

# แสดงข้อความที่ถอดรหัสได้
println(plaintext)
@interface POUserUnlockKeySwift
+ (NSNumber)prebootEncryptionAlgorithm;
+ (id)createUnlockKeyWithPublicKey:(__SecKey *)a3 error:(id *)a4;
+ (id)unlockKeyWithEncryptedKey:(id)a3 privateKey:(__SecKey *)a4 error:(id *)a5;
- (NSData)keyData;
- (NSString)encryptedKeyData;
- (_TtC15PlatformSSOCore20POUserUnlockKeySwift)init;
- (void)setEncryptedKeyData:(id)a3;
- (void)setKeyData:(id)a3;
@end

@implementation POUserUnlockKeySwift

+ (NSNumber)prebootEncryptionAlgorithm
{
  if (qword_27FD0D020 != -1)
  {
    swift_once();
  }

  v3 = qword_27FD0D530;

  return v3;
}

- (NSString)encryptedKeyData
{
  v2 = (self + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_25E941838();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setEncryptedKeyData:(id)a3
{
  if (a3)
  {
    v4 = sub_25E941848();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSData)keyData
{
  v2 = (self + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_25E9146C8(v5, v4);
    v6 = sub_25E941458();
    sub_25E8B2B18(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setKeyData:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = self;
    v6 = v3;
    v3 = sub_25E941478();
    v8 = v7;
  }

  else
  {
    v9 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = v3;
  v10[1] = v8;
  sub_25E8B2B18(v11, v12);
}

- (_TtC15PlatformSSOCore20POUserUnlockKeySwift)init
{
  v2 = (self + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_encryptedKeyData);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR____TtC15PlatformSSOCore20POUserUnlockKeySwift_keyData) = xmmword_25E949010;
  v4.receiver = self;
  v4.super_class = type metadata accessor for POUserUnlockKeySwift();
  return [(POUserUnlockKeySwift *)&v4 init];
}

+ (id)unlockKeyWithEncryptedKey:(id)a3 privateKey:(__SecKey *)a4 error:(id *)a5
{
  v6 = sub_25E941848();
  v8 = v7;
  v9 = a4;
  v10 = sub_25E91E188(v6, v8, v9);
  v12 = v11;

  v13 = sub_25E941458();
  sub_25E91471C(v10, v12);

  return v13;
}

+ (id)createUnlockKeyWithPublicKey:(__SecKey *)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_25E91E7B0(v4);

  return v5;
}

@end
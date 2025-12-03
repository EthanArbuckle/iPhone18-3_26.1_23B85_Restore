@interface POPrebootDataKey
+ (NSNumber)prebootEncryptionAlgorithm;
+ (id)createKeyAndReturnError:(id *)error;
+ (id)verifiedKeyWithPrebootData:(id)data error:(id *)error;
- (NSData)keyData;
- (NSString)encryptedKeyData;
- (_TtC15PlatformSSOCore16POPrebootDataKey)init;
- (void)setEncryptedKeyData:(id)data;
- (void)setKeyData:(id)data;
@end

@implementation POPrebootDataKey

+ (NSNumber)prebootEncryptionAlgorithm
{
  if (qword_27FD0CD90 != -1)
  {
    swift_once();
  }

  v3 = qword_27FD0D500;

  return v3;
}

- (NSString)encryptedKeyData
{
  v2 = (self + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
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

- (void)setEncryptedKeyData:(id)data
{
  if (data)
  {
    v4 = sub_25E941848();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSData)keyData
{
  v2 = (self + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData);
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

- (void)setKeyData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v6 = dataCopy;
    dataCopy = sub_25E941478();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = dataCopy;
  v10[1] = v8;
  sub_25E8B2B18(v11, v12);
}

- (_TtC15PlatformSSOCore16POPrebootDataKey)init
{
  v2 = (self + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_encryptedKeyData);
  *v2 = 0;
  v2[1] = 0;
  *(self + OBJC_IVAR____TtC15PlatformSSOCore16POPrebootDataKey_keyData) = xmmword_25E949010;
  v4.receiver = self;
  v4.super_class = type metadata accessor for POPrebootDataKey();
  return [(POPrebootDataKey *)&v4 init];
}

+ (id)verifiedKeyWithPrebootData:(id)data error:(id *)error
{
  if (qword_27FD0CD70 != -1)
  {
    swift_once();
  }

  v5 = sub_25E9414D8();
  __swift_project_value_buffer(v5, qword_27FD0CD78);
  v6 = Logger.PSSO_ERROR(code:description:)(-1001);
  swift_willThrow();
  if (error)
  {
    v7 = sub_25E9413F8();

    v8 = v7;
    *error = v7;
  }

  else
  {
  }

  return 0;
}

+ (id)createKeyAndReturnError:(id *)error
{
  sub_25E916980();

  return v3;
}

@end
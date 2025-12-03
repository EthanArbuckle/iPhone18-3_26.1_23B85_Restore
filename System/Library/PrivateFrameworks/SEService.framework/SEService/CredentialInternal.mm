@interface CredentialInternal
- (NSDate)lastUsedDate;
- (NSString)friendlyName;
- (NSUUID)configUUID;
- (NSUUID)identifier;
- (_TtC9SEService18CredentialInternal)init;
- (int64_t)accessLevel;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessLevel:(int64_t)level;
- (void)setConfigUUID:(id)d;
- (void)setLastUsedDate:(id)date;
@end

@implementation CredentialInternal

- (NSUUID)identifier
{
  v3 = sub_1C7C7D104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC9SEService18CredentialInternal_identifier, v3);
  v8 = sub_1C7C7D0C4();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)friendlyName
{
  v2 = *(self + OBJC_IVAR____TtC9SEService18CredentialInternal_friendlyName);
  v3 = *(self + OBJC_IVAR____TtC9SEService18CredentialInternal_friendlyName + 8);

  v4 = sub_1C7C7D2E4();

  return v4;
}

- (NSUUID)configUUID
{
  v3 = sub_1C7C7D104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SEService18CredentialInternal_configUUID;
  swift_beginAccess();
  (*(v4 + 16))(v7, self + v8, v3);
  v9 = sub_1C7C7D0C4();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (void)setConfigUUID:(id)d
{
  v4 = sub_1C7C7D104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7C7D0E4();
  v9 = OBJC_IVAR____TtC9SEService18CredentialInternal_configUUID;
  swift_beginAccess();
  v10 = *(v5 + 40);
  selfCopy = self;
  v10(self + v9, v8, v4);
  swift_endAccess();
}

- (int64_t)accessLevel
{
  v3 = OBJC_IVAR____TtC9SEService18CredentialInternal_accessLevel;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAccessLevel:(int64_t)level
{
  v5 = OBJC_IVAR____TtC9SEService18CredentialInternal_accessLevel;
  swift_beginAccess();
  *(self + v5) = level;
}

- (NSDate)lastUsedDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263450, &unk_1C7C89EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR____TtC9SEService18CredentialInternal_lastUsedDate;
  swift_beginAccess();
  sub_1C7BF69EC(self + v7, v6);
  v8 = sub_1C7C7D084();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C7C7D064();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setLastUsedDate:(id)date
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC263450, &unk_1C7C89EA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (date)
  {
    sub_1C7C7D074();
    v9 = sub_1C7C7D084();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C7C7D084();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR____TtC9SEService18CredentialInternal_lastUsedDate;
  swift_beginAccess();
  selfCopy = self;
  sub_1C7BF6BFC(v8, self + v11);
  swift_endAccess();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CredentialInternal.encode(with:)(coderCopy);
}

- (_TtC9SEService18CredentialInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
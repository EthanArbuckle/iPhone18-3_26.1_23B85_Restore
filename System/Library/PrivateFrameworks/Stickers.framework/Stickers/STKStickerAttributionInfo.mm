@interface STKStickerAttributionInfo
- (BOOL)isEqual:(id)equal;
- (NSString)bundleIdentifier;
- (NSString)description;
- (NSString)name;
- (STKStickerAttributionInfo)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBundleIdentifier:(id)identifier;
@end

@implementation STKStickerAttributionInfo

- (NSString)bundleIdentifier
{
  v2 = (self + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_1B8A23EF4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1B8A23F24();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSString)name
{
  if (*(self + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v2 = *(self + OBJC_IVAR___STKStickerAttributionInfo_name);
    v3 = *(self + OBJC_IVAR___STKStickerAttributionInfo_name + 8);

    v4 = sub_1B8A23EF4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B8A244A4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B8A1C0D8(v8);

  sub_1B8A0B308(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B8A1C37C();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B8A1C9F4(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1B8A1CEDC();

  v3 = sub_1B8A23EF4();

  return v3;
}

- (STKStickerAttributionInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
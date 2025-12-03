@interface PASExtensionManifest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)init;
- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)initWithCoder:(id)coder;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PASExtensionManifest

- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)init
{
  result = sub_2610BD0D4();
  __break(1u);
  return result;
}

- (NSString)description
{
  selfCopy = self;
  PASExtensionManifest.description.getter();

  v3 = sub_2610BC9D4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = PASExtensionManifest.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  selfCopy = self;
  v4 = sub_2610BCBE4();
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  v6 = sub_2610BCBE4();

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_2610BC9D4();
  [coderCopy encodeBool:v4 forKey:v6];

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  v8 = sub_2610BC9D4();
  [coderCopy encodeBool:v7 forKey:v8];
}

- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_261054C08(coderCopy);

  return v4;
}

@end
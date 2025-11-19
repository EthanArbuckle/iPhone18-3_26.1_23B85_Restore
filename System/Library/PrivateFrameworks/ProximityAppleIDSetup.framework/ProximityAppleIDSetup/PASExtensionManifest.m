@interface PASExtensionManifest
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)init;
- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)initWithCoder:(id)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v2 = self;
  PASExtensionManifest.description.getter();

  v3 = sub_2610BC9D4();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2610BCEA4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = PASExtensionManifest.isEqual(_:)(v8);

  sub_260FAC3F0(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  v3 = self;
  v4 = sub_2610BCBE4();
  v5 = *(&v3->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  v6 = sub_2610BCBE4();

  return v6 ^ v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_isAccountPickerAvailable);
  v5 = a3;
  v9 = self;
  v6 = sub_2610BC9D4();
  [v5 encodeBool:v4 forKey:v6];

  v7 = *(&v9->super.isa + OBJC_IVAR____TtC21ProximityAppleIDSetup20PASExtensionManifest_wantsFullScreenPresentation);
  v8 = sub_2610BC9D4();
  [v5 encodeBool:v7 forKey:v8];
}

- (_TtC21ProximityAppleIDSetup20PASExtensionManifest)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_261054C08(v3);

  return v4;
}

@end
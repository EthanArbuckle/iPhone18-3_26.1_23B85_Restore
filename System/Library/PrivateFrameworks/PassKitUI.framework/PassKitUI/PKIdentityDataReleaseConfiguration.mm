@interface PKIdentityDataReleaseConfiguration
- (_TtC9PassKitUI34PKIdentityDataReleaseConfiguration)init;
- (_TtC9PassKitUI34PKIdentityDataReleaseConfiguration)initWithRecognizedElements:(id)a3 relyingPartyName:(id)a4;
@end

@implementation PKIdentityDataReleaseConfiguration

- (_TtC9PassKitUI34PKIdentityDataReleaseConfiguration)initWithRecognizedElements:(id)a3 relyingPartyName:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    v8 = sub_1BE052434();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements) = a3;
  v10 = (self + OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_relyingPartyName);
  *v10 = v8;
  v10[1] = v9;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v11 = a3;
  return [(PKIdentityDataReleaseConfiguration *)&v13 init];
}

- (_TtC9PassKitUI34PKIdentityDataReleaseConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
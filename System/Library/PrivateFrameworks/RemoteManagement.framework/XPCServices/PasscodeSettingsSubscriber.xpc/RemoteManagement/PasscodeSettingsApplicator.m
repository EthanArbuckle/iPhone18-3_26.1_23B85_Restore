@interface PasscodeSettingsApplicator
+ (id)supportedConfigurationTypes;
- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)init;
- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4;
@end

@implementation PasscodeSettingsApplicator

- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)init
{
  v3 = [objc_allocWithZone(type metadata accessor for PasscodeSettingsAdapter()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for PasscodeSettingsApplicator();
  v4 = [(PasscodeSettingsApplicator *)&v6 initWithAdapter:v3 inPlaceUpdates:1];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  sub_1000014B8(&qword_100014A50, &unk_10000B8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000B5C0;
  v3 = [objc_opt_self() registeredIdentifier];
  v4 = sub_10000AA8C();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_100009A7C(inited);
  swift_setDeallocating();
  sub_100007AF0(inited + 32);
  v7.super.isa = sub_10000AB6C().super.isa;

  return v7.super.isa;
}

- (_TtC26PasscodeSettingsSubscriber26PasscodeSettingsApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
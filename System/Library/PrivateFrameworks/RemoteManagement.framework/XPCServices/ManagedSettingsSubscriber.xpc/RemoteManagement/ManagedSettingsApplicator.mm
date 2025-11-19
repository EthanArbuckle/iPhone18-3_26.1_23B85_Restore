@interface ManagedSettingsApplicator
+ (id)supportedConfigurationClassesArray;
+ (id)supportedConfigurationTypes;
- (_TtC25ManagedSettingsSubscriber25ManagedSettingsApplicator)init;
- (_TtC25ManagedSettingsSubscriber25ManagedSettingsApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4;
@end

@implementation ManagedSettingsApplicator

- (_TtC25ManagedSettingsSubscriber25ManagedSettingsApplicator)init
{
  v3 = [objc_allocWithZone(type metadata accessor for ManagedSettingsAdapter()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for ManagedSettingsApplicator();
  v4 = [(ManagedSettingsApplicator *)&v6 initWithAdapter:v3 inPlaceUpdates:0];

  sub_10000BE1C();
  return v4;
}

+ (id)supportedConfigurationTypes
{
  v2 = [objc_opt_self() managedSettingsSchemas];
  sub_10000B858(0, &qword_10001CCA8, RMModelConfigurationSchema_ptr);
  v3 = sub_1000113EC();

  sub_10000BFCC(v3);
  v4.super.isa = sub_1000115FC().super.isa;

  return v4.super.isa;
}

+ (id)supportedConfigurationClassesArray
{
  sub_100001550(&qword_10001CAD0, &qword_100012920);
  v2.super.isa = sub_10001158C().super.isa;

  return v2.super.isa;
}

- (_TtC25ManagedSettingsSubscriber25ManagedSettingsApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
@interface InteractiveLegacyProfilesApplicator
+ (id)supportedConfigurationTypes;
- (_TtC35InteractiveLegacyProfilesSubscriber35InteractiveLegacyProfilesApplicator)init;
@end

@implementation InteractiveLegacyProfilesApplicator

- (_TtC35InteractiveLegacyProfilesSubscriber35InteractiveLegacyProfilesApplicator)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(type metadata accessor for InteractiveLegacyProfilesAdapter()) init];
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(InteractiveLegacyProfilesApplicator *)&v7 initWithAdapter:v4 inPlaceUpdates:1];

  return v5;
}

+ (id)supportedConfigurationTypes
{
  sub_1000012FC(&qword_100010928, &qword_100009218);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008E20;
  registeredIdentifier = [objc_opt_self() registeredIdentifier];
  v4 = sub_10000843C();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_100008170(inited);
  swift_setDeallocating();
  sub_1000082D8(inited + 32);
  v7.super.isa = sub_1000084DC().super.isa;

  return v7.super.isa;
}

@end
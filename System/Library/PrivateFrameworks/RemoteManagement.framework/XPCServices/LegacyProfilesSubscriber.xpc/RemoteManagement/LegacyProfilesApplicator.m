@interface LegacyProfilesApplicator
+ (id)supportedConfigurationTypes;
- (_TtC24LegacyProfilesSubscriber24LegacyProfilesApplicator)init;
@end

@implementation LegacyProfilesApplicator

- (_TtC24LegacyProfilesSubscriber24LegacyProfilesApplicator)init
{
  ObjectType = swift_getObjectType();
  v4 = [objc_allocWithZone(type metadata accessor for LegacyProfilesAdapter()) init];
  v7.receiver = self;
  v7.super_class = ObjectType;
  v5 = [(LegacyProfilesApplicator *)&v7 initWithAdapter:v4 inPlaceUpdates:1];

  [(LegacyProfilesApplicator *)v5 setRetryOnce:1];
  return v5;
}

+ (id)supportedConfigurationTypes
{
  sub_1000012FC(&qword_100010928, &qword_1000093C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100008FF0;
  v3 = [objc_opt_self() registeredIdentifier];
  v4 = sub_10000863C();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  sub_100008370(inited);
  swift_setDeallocating();
  sub_1000084D8(inited + 32);
  v7.super.isa = sub_1000086DC().super.isa;

  return v7.super.isa;
}

@end
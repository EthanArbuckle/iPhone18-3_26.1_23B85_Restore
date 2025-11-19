@interface SecurityApplicator
+ (id)supportedConfigurationTypes;
- (_TtC18SecuritySubscriber18SecurityApplicator)init;
- (_TtC18SecuritySubscriber18SecurityApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4;
@end

@implementation SecurityApplicator

- (_TtC18SecuritySubscriber18SecurityApplicator)init
{
  v3 = [objc_allocWithZone(type metadata accessor for SecurityAdapter()) init];
  v6.receiver = self;
  v6.super_class = type metadata accessor for SecurityApplicator();
  v4 = [(SecurityApplicator *)&v6 initWithAdapter:v3 inPlaceUpdates:1];

  return v4;
}

+ (id)supportedConfigurationTypes
{
  sub_100009F44();
  v2.super.isa = sub_10000E738().super.isa;

  return v2.super.isa;
}

- (_TtC18SecuritySubscriber18SecurityApplicator)initWithAdapter:(id)a3 inPlaceUpdates:(BOOL)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
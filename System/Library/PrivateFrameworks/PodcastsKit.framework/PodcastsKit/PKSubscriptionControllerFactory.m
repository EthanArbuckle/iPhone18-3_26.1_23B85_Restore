@interface PKSubscriptionControllerFactory
+ (id)platformInstance;
- (PKSubscriptionControllerFactory)init;
@end

@implementation PKSubscriptionControllerFactory

+ (id)platformInstance
{
  if ([objc_opt_self() supportsBlueMoon])
  {
    type metadata accessor for MediaAPISubscriptionController();
    v2 = swift_allocObject();
    v3 = sub_25EA1E538();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = sub_25EA1E528();
    v7 = v2;
    *(v2 + 16) = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(type metadata accessor for MediaRemoteSubscriptionController()) init];
  }

  return v7;
}

- (PKSubscriptionControllerFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SubscriptionControllerFactory();
  return [(PKSubscriptionControllerFactory *)&v3 init];
}

@end
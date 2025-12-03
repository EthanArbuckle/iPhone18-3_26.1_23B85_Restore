@interface FailsafeDelayedOffer
- (NSString)debugDescription;
- (NSString)description;
- (_TtC33iCloudSubscriptionOptimizerClient20FailsafeDelayedOffer)init;
- (id)newOfferResponse;
@end

@implementation FailsafeDelayedOffer

- (_TtC33iCloudSubscriptionOptimizerClient20FailsafeDelayedOffer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FailsafeDelayedOffer();
  return [(FailsafeDelayedOffer *)&v3 init];
}

- (id)newOfferResponse
{
  v2 = objc_allocWithZone(type metadata accessor for FailsafeNewOfferResponse());

  return [v2 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_275A2F378();

  v3 = sub_275A3D924();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(FailsafeDelayedOffer *)self description];

  return v2;
}

@end
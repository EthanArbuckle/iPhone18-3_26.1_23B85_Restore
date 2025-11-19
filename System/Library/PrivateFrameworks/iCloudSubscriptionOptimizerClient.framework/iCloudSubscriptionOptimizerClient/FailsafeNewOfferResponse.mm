@interface FailsafeNewOfferResponse
- (NSString)debugDescription;
- (NSString)description;
- (_TtC33iCloudSubscriptionOptimizerClient24FailsafeNewOfferResponse)init;
- (id)toContext;
@end

@implementation FailsafeNewOfferResponse

- (id)toContext
{
  if (qword_280A23AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_275A3D8E4();

  return v2;
}

- (NSString)description
{
  v2 = self;
  sub_275A2F69C();

  v3 = sub_275A3D924();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(FailsafeNewOfferResponse *)self description];

  return v2;
}

- (_TtC33iCloudSubscriptionOptimizerClient24FailsafeNewOfferResponse)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FailsafeNewOfferResponse();
  return [(FailsafeNewOfferResponse *)&v3 init];
}

@end
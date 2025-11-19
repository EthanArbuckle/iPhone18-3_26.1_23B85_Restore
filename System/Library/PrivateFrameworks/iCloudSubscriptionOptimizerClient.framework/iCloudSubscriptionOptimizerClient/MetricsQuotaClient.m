@interface MetricsQuotaClient
- (_TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient)init;
- (id)failsafeDelayedOfferJsonContext;
- (id)parseDelayedOfferFromJson:(id)a3;
- (void)logFailsafeEvent:(id)a3;
- (void)newOffer:(id)a3 andCallback:(id)a4;
@end

@implementation MetricsQuotaClient

- (void)newOffer:(id)a3 andCallback:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_275A30A68(v8, sub_275A331F8, v7);
}

- (id)parseDelayedOfferFromJson:(id)a3
{
  sub_275A3D934();
  v4 = self;
  v5 = sub_275A32030();

  return v5;
}

- (id)failsafeDelayedOfferJsonContext
{
  v2 = self;
  sub_275A32994();
  v4 = v3;

  if (v4)
  {
    v5 = sub_275A3D924();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logFailsafeEvent:(id)a3
{
  sub_275A3D934();
  v4 = self;
  sub_275A32D5C();
}

- (_TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
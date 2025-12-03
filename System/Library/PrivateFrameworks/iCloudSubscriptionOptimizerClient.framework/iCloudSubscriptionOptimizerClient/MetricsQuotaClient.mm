@interface MetricsQuotaClient
- (_TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient)init;
- (id)failsafeDelayedOfferJsonContext;
- (id)parseDelayedOfferFromJson:(id)json;
- (void)logFailsafeEvent:(id)event;
- (void)newOffer:(id)offer andCallback:(id)callback;
@end

@implementation MetricsQuotaClient

- (void)newOffer:(id)offer andCallback:(id)callback
{
  v6 = _Block_copy(callback);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  offerCopy = offer;
  selfCopy = self;
  sub_275A30A68(offerCopy, sub_275A331F8, v7);
}

- (id)parseDelayedOfferFromJson:(id)json
{
  sub_275A3D934();
  selfCopy = self;
  v5 = sub_275A32030();

  return v5;
}

- (id)failsafeDelayedOfferJsonContext
{
  selfCopy = self;
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

- (void)logFailsafeEvent:(id)event
{
  sub_275A3D934();
  selfCopy = self;
  sub_275A32D5C();
}

- (_TtC33iCloudSubscriptionOptimizerClient18MetricsQuotaClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
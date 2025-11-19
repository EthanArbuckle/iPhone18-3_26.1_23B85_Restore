@interface DelayedOffer
- (NSString)debugDescription;
- (NSString)description;
- (_TtC33iCloudSubscriptionOptimizerClient12DelayedOffer)init;
- (id)newOfferResponse;
@end

@implementation DelayedOffer

- (id)newOfferResponse
{
  v3 = sub_275A3D794();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A2EE98(self + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient12DelayedOffer_context, v7);
  v8 = type metadata accessor for NewOfferResponse();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context;
  sub_275A2EE98(v7, &v9[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context]);
  (*(v4 + 56))(&v9[v10], 0, 1, v3);
  *&v9[OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_serverError] = 0;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = [(DelayedOffer *)&v13 init];
  sub_275A2EEFC(v7);
  return v11;
}

- (NSString)description
{
  v2 = self;
  sub_275A3DA84();
  MEMORY[0x277C860D0](0xD000000000000016, 0x8000000275A3EDD0);
  sub_275A3D794();
  sub_275A3DAA4();
  MEMORY[0x277C860D0](10589, 0xE200000000000000);

  v3 = sub_275A3D924();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(DelayedOffer *)self description];

  return v2;
}

- (_TtC33iCloudSubscriptionOptimizerClient12DelayedOffer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
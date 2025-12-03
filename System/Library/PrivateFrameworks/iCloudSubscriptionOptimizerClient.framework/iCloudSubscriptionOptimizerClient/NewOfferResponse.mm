@interface NewOfferResponse
- (BOOL)shouldDisplayOfferNow;
- (NSString)debugDescription;
- (NSString)description;
- (_TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse)init;
- (id)error;
- (id)toContext;
@end

@implementation NewOfferResponse

- (id)toContext
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A23B18, &qword_275A3E720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v14 - v4;
  v6 = sub_275A3D794();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275A33260(self + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_context, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    selfCopy = self;
    sub_275A332D0(v5);
    if (qword_280A23AB8 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_275A33338(v5, v10);
    _s33iCloudSubscriptionOptimizerClient19QuotaServerProtocolV02toF14RefreshDetailsySDys11AnyHashableVypG01iabC4Core0iJ7ContextVFZ_0();
    sub_275A2EEFC(v10);
  }

  v12 = sub_275A3D8E4();

  return v12;
}

- (id)error
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse_serverError);
  if (v2)
  {
    v3 = v2;
    v4 = sub_275A3D2E4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  sub_275A33A1C();

  v3 = sub_275A3D924();

  return v3;
}

- (NSString)debugDescription
{
  v2 = [(NewOfferResponse *)self description];

  return v2;
}

- (BOOL)shouldDisplayOfferNow
{
  selfCopy = self;
  v3 = sub_275A33BF4();

  return v3;
}

- (_TtC33iCloudSubscriptionOptimizerClient16NewOfferResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
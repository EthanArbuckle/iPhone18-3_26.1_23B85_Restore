@interface FundingSourcesModel
- (void)dealloc;
- (void)didUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4;
@end

@implementation FundingSourcesModel

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9PassKitUI19FundingSourcesModel_accountService);
  if (v3)
  {
    [v3 unregisterObserver_];
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FundingSourcesModel(0);
  [(FundingSourcesModel *)&v5 dealloc];
}

- (void)didUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4
{
  v5 = a3;
  if (a3)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4E090);
    v5 = sub_1BE052744();
  }

  if (a4)
  {
    a4 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = self;
  sub_1BD648238(v5, a4, v8);
}

@end
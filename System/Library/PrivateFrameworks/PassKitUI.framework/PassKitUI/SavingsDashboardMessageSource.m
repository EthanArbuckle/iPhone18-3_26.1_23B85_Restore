@interface SavingsDashboardMessageSource
- (_TtC9PassKitUI29SavingsDashboardMessageSource)init;
- (void)didUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4;
- (void)discoveryService:(id)a3 dialogRequestsChangedForPlacement:(id)a4;
- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4;
@end

@implementation SavingsDashboardMessageSource

- (_TtC9PassKitUI29SavingsDashboardMessageSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)discoveryService:(id)a3 dialogRequestsChangedForPlacement:(id)a4
{
  if (a4)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_1BD9D09F0(v6, v8);
}

- (void)transactionSourceIdentifier:(id)a3 didReceiveTransaction:(id)a4
{
  if (a3)
  {
    v6 = sub_1BE052434();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a4;
  v10 = self;
  sub_1BD9CFDB4(v6, v8, a4);
}

- (void)didUpdatePaymentFundingSources:(id)a3 accountIdentifier:(id)a4
{
  if (a3)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4E090);
    sub_1BE052744();
  }

  if (a4)
  {
    a4 = sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1BD9D0D7C(a4, v7);
}

@end
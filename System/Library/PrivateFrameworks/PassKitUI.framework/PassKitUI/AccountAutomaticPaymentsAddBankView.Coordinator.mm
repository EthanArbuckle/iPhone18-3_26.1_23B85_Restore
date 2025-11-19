@interface AccountAutomaticPaymentsAddBankView.Coordinator
- (_TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator)init;
- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4;
- (void)addBankAccountInformationViewController:(id)a3 didFailWithError:(id)a4;
- (void)addBankAccountInformationViewControllerDidFinish:(id)a3;
@end

@implementation AccountAutomaticPaymentsAddBankView.Coordinator

- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD301C00(a4);
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v3 = [v5 navigationController];
    if (v3)
    {
      v4 = v3;
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)addBankAccountInformationViewController:(id)a3 didFailWithError:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_1BD301560(a3, a4);
}

- (_TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
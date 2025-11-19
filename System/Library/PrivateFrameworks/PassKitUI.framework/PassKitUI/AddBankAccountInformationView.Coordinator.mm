@interface AddBankAccountInformationView.Coordinator
- (_TtCV9PassKitUI29AddBankAccountInformationView11Coordinator)init;
- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4;
- (void)addBankAccountInformationViewControllerDidFinish:(id)a3;
@end

@implementation AddBankAccountInformationView.Coordinator

- (void)addBankAccountInformationViewController:(id)a3 didAddFundingSource:(id)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded);
  *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded) = a4;
  v4 = a4;
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_completionAction);
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded);
  v6 = v5;
  v7 = self;
  sub_1BE048964();
  v4(v5);
}

- (_TtCV9PassKitUI29AddBankAccountInformationView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
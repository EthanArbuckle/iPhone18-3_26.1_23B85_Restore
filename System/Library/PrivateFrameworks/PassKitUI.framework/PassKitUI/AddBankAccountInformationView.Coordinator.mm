@interface AddBankAccountInformationView.Coordinator
- (_TtCV9PassKitUI29AddBankAccountInformationView11Coordinator)init;
- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source;
- (void)addBankAccountInformationViewControllerDidFinish:(id)finish;
@end

@implementation AddBankAccountInformationView.Coordinator

- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded);
  *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded) = source;
  sourceCopy = source;
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)finish
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_completionAction);
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded);
  v6 = v5;
  selfCopy = self;
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
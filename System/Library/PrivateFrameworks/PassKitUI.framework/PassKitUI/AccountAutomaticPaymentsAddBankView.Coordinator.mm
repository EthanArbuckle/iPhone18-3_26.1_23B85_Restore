@interface AccountAutomaticPaymentsAddBankView.Coordinator
- (_TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator)init;
- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source;
- (void)addBankAccountInformationViewController:(id)controller didFailWithError:(id)error;
- (void)addBankAccountInformationViewControllerDidFinish:(id)finish;
@end

@implementation AccountAutomaticPaymentsAddBankView.Coordinator

- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  selfCopy = self;
  sub_1BD301C00(source);
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)finish
{
  if (finish)
  {
    finishCopy = finish;
    navigationController = [finishCopy navigationController];
    if (navigationController)
    {
      v4 = navigationController;
      [navigationController dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

- (void)addBankAccountInformationViewController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1BD301560(controller, error);
}

- (_TtCV9PassKitUI35AccountAutomaticPaymentsAddBankView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
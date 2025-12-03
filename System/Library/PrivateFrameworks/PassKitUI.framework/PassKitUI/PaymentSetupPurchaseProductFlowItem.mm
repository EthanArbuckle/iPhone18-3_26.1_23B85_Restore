@interface PaymentSetupPurchaseProductFlowItem
- (_TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem)init;
- (void)purchaseViewController:(id)controller didPerformPurchaseWithCredential:(id)credential;
- (void)purchaseViewControllerDidRequestTransferBalance:(id)balance;
@end

@implementation PaymentSetupPurchaseProductFlowItem

- (_TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)purchaseViewControllerDidRequestTransferBalance:(id)balance
{
  balanceCopy = balance;
  selfCopy = self;
  sub_1BD7F68D0();
}

- (void)purchaseViewController:(id)controller didPerformPurchaseWithCredential:(id)credential
{
  controllerCopy = controller;
  credentialCopy = credential;
  selfCopy = self;
  sub_1BD7F6680(controllerCopy, credentialCopy);
}

@end
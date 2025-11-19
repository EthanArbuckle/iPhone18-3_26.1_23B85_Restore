@interface PaymentSetupPurchaseProductFlowItem
- (_TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem)init;
- (void)purchaseViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4;
- (void)purchaseViewControllerDidRequestTransferBalance:(id)a3;
@end

@implementation PaymentSetupPurchaseProductFlowItem

- (_TtC9PassKitUI35PaymentSetupPurchaseProductFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)purchaseViewControllerDidRequestTransferBalance:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD7F68D0();
}

- (void)purchaseViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD7F6680(v6, v7);
}

@end
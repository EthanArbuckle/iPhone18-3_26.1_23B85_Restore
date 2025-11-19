@interface PaymentSetupPurchaseServiceProductFlowItem
- (_TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem)init;
- (void)purchaseServiceProviderProductItemsViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4;
- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)a3;
@end

@implementation PaymentSetupPurchaseServiceProductFlowItem

- (_TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)purchaseServiceProviderProductItemsViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD4FC530(v6, v7);
}

- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BAB238, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end
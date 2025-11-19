@interface PaymentSetupUpLeveledPurchaseServiceProductFlowItem
- (_TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem)init;
- (void)purchaseServiceProviderProductItemsViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4;
- (void)purchaseServiceProviderProductItemsViewControllerDidSelectOtherProviders:(id)a3;
- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)a3;
@end

@implementation PaymentSetupUpLeveledPurchaseServiceProductFlowItem

- (_TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem)init
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
  sub_1BD127074(v6, v7);
}

- (void)purchaseServiceProviderProductItemsViewControllerDidSelectOtherProviders:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD1273C8();
}

- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3B92D58, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end
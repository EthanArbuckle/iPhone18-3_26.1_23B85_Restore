@interface PaymentSetupPurchaseServiceProductFlowItem
- (_TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem)init;
- (void)purchaseServiceProviderProductItemsViewController:(id)controller didPerformPurchaseWithCredential:(id)credential;
- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)terminate;
@end

@implementation PaymentSetupPurchaseServiceProductFlowItem

- (_TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)purchaseServiceProviderProductItemsViewController:(id)controller didPerformPurchaseWithCredential:(id)credential
{
  controllerCopy = controller;
  credentialCopy = credential;
  selfCopy = self;
  sub_1BD4FC530(controllerCopy, credentialCopy);
}

- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)terminate
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI42PaymentSetupPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BAB238, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end
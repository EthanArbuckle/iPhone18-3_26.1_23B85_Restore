@interface PaymentSetupUpLeveledPurchaseServiceProductFlowItem
- (_TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem)init;
- (void)purchaseServiceProviderProductItemsViewController:(id)controller didPerformPurchaseWithCredential:(id)credential;
- (void)purchaseServiceProviderProductItemsViewControllerDidSelectOtherProviders:(id)providers;
- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)terminate;
@end

@implementation PaymentSetupUpLeveledPurchaseServiceProductFlowItem

- (_TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem)init
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
  sub_1BD127074(controllerCopy, credentialCopy);
}

- (void)purchaseServiceProviderProductItemsViewControllerDidSelectOtherProviders:(id)providers
{
  providersCopy = providers;
  selfCopy = self;
  sub_1BD1273C8();
}

- (void)purchaseServiceProviderProductItemsViewControllerDidTerminate:(id)terminate
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI51PaymentSetupUpLeveledPurchaseServiceProductFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3B92D58, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end
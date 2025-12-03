@interface PaymentSetupProductTypeFlowItem
- (_TtC9PassKitUI31PaymentSetupProductTypeFlowItem)init;
- (void)chooseProductTypeViewController:(id)controller didPerformPurchaseWithCredential:(id)credential;
- (void)chooseProductTypeViewController:(id)controller didSelectServiceProducts:(id)products;
- (void)chooseProductTypeViewControllerDidSelectManualEntry:(id)entry;
- (void)chooseProductTypeViewControllerDidTerminate:(id)terminate;
@end

@implementation PaymentSetupProductTypeFlowItem

- (_TtC9PassKitUI31PaymentSetupProductTypeFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)chooseProductTypeViewControllerDidSelectManualEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1BD160A68();
}

- (void)chooseProductTypeViewController:(id)controller didPerformPurchaseWithCredential:(id)credential
{
  controllerCopy = controller;
  credentialCopy = credential;
  selfCopy = self;
  sub_1BD1606AC(controllerCopy, credentialCopy);
}

- (void)chooseProductTypeViewControllerDidTerminate:(id)terminate
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3B93C18, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)chooseProductTypeViewController:(id)controller didSelectServiceProducts:(id)products
{
  sub_1BD160A1C();
  v6 = sub_1BE052744();
  controllerCopy = controller;
  selfCopy = self;
  sub_1BD160B6C(v6);
}

@end
@interface PaymentSetupProductTypeFlowItem
- (_TtC9PassKitUI31PaymentSetupProductTypeFlowItem)init;
- (void)chooseProductTypeViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4;
- (void)chooseProductTypeViewController:(id)a3 didSelectServiceProducts:(id)a4;
- (void)chooseProductTypeViewControllerDidSelectManualEntry:(id)a3;
- (void)chooseProductTypeViewControllerDidTerminate:(id)a3;
@end

@implementation PaymentSetupProductTypeFlowItem

- (_TtC9PassKitUI31PaymentSetupProductTypeFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)chooseProductTypeViewControllerDidSelectManualEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD160A68();
}

- (void)chooseProductTypeViewController:(id)a3 didPerformPurchaseWithCredential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1BD1606AC(v6, v7);
}

- (void)chooseProductTypeViewControllerDidTerminate:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI31PaymentSetupProductTypeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3B93C18, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)chooseProductTypeViewController:(id)a3 didSelectServiceProducts:(id)a4
{
  sub_1BD160A1C();
  v6 = sub_1BE052744();
  v7 = a3;
  v8 = self;
  sub_1BD160B6C(v6);
}

@end
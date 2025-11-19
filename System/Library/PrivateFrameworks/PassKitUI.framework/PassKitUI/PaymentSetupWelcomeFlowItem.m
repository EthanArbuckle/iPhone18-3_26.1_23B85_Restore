@interface PaymentSetupWelcomeFlowItem
- (_TtC9PassKitUI27PaymentSetupWelcomeFlowItem)init;
- (void)welcomeViewController:(id)a3 didSelectCategory:(id)a4 products:(id)a5;
- (void)welcomeViewControllerDidSelectCardsOnFile:(id)a3;
- (void)welcomeViewControllerDidSelectManualEntry:(id)a3;
- (void)welcomeViewControllerDidTerminate:(id)a3;
@end

@implementation PaymentSetupWelcomeFlowItem

- (_TtC9PassKitUI27PaymentSetupWelcomeFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)welcomeViewControllerDidSelectCardsOnFile:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD5521A0();
}

- (void)welcomeViewControllerDidSelectManualEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD552364();
}

- (void)welcomeViewController:(id)a3 didSelectCategory:(id)a4 products:(id)a5
{
  v5 = a5;
  if (a5)
  {
    sub_1BD0E5E8C(0, &qword_1EBD38568);
    v5 = sub_1BE052744();
  }

  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_1BD552458(v10, v5);
}

- (void)welcomeViewControllerDidTerminate:(id)a3
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v7 = self;
    sub_1BD8659A4(v7, &off_1F3BAD340, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end
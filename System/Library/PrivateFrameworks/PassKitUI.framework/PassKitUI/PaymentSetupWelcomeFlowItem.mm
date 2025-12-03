@interface PaymentSetupWelcomeFlowItem
- (_TtC9PassKitUI27PaymentSetupWelcomeFlowItem)init;
- (void)welcomeViewController:(id)controller didSelectCategory:(id)category products:(id)products;
- (void)welcomeViewControllerDidSelectCardsOnFile:(id)file;
- (void)welcomeViewControllerDidSelectManualEntry:(id)entry;
- (void)welcomeViewControllerDidTerminate:(id)terminate;
@end

@implementation PaymentSetupWelcomeFlowItem

- (_TtC9PassKitUI27PaymentSetupWelcomeFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)welcomeViewControllerDidSelectCardsOnFile:(id)file
{
  fileCopy = file;
  selfCopy = self;
  sub_1BD5521A0();
}

- (void)welcomeViewControllerDidSelectManualEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1BD552364();
}

- (void)welcomeViewController:(id)controller didSelectCategory:(id)category products:(id)products
{
  productsCopy = products;
  if (products)
  {
    sub_1BD0E5E8C(0, &qword_1EBD38568);
    productsCopy = sub_1BE052744();
  }

  controllerCopy = controller;
  categoryCopy = category;
  selfCopy = self;
  sub_1BD552458(categoryCopy, productsCopy);
}

- (void)welcomeViewControllerDidTerminate:(id)terminate
{
  v4 = self + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    selfCopy = self;
    sub_1BD8659A4(selfCopy, &off_1F3BAD340, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

@end
@interface PaymentSetupProductsFlowItem
- (_TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem)init;
- (void)productsViewController:(id)controller didSelectProduct:(id)product;
- (void)productsViewControllerDidSelectManualEntry:(id)entry;
@end

@implementation PaymentSetupProductsFlowItem

- (_TtC9PassKitUIP33_72014EF847C2945C10179480F21D54B228PaymentSetupProductsFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)productsViewControllerDidSelectManualEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_1BD0DBA78();
}

- (void)productsViewController:(id)controller didSelectProduct:(id)product
{
  controllerCopy = controller;
  productCopy = product;
  selfCopy = self;
  sub_1BD0DBB6C(productCopy);
}

@end
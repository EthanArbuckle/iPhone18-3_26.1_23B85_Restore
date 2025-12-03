@interface PaymentSetupProductDevicePickerFlowItem
- (_TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem)init;
- (void)devicePickerViewController:(id)controller didSelectProvisioningController:(id)provisioningController product:(id)product;
@end

@implementation PaymentSetupProductDevicePickerFlowItem

- (_TtC9PassKitUI39PaymentSetupProductDevicePickerFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)devicePickerViewController:(id)controller didSelectProvisioningController:(id)provisioningController product:(id)product
{
  controllerCopy = controller;
  provisioningControllerCopy = provisioningController;
  productCopy = product;
  selfCopy = self;
  sub_1BD5B9594(provisioningControllerCopy, productCopy);
}

@end
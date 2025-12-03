@interface ProvisioningPasscodeUpgradeNewPasscodeFlowItem
- (_TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem)init;
- (void)newDevicePasscodeViewController:(id)controller didFinishSettingPasscode:(BOOL)passcode withError:(id)error;
@end

@implementation ProvisioningPasscodeUpgradeNewPasscodeFlowItem

- (_TtC9PassKitUI46ProvisioningPasscodeUpgradeNewPasscodeFlowItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)newDevicePasscodeViewController:(id)controller didFinishSettingPasscode:(BOOL)passcode withError:(id)error
{
  controllerCopy = controller;
  selfCopy = self;
  errorCopy = error;
  sub_1BD3023F4(passcode, error);
}

@end
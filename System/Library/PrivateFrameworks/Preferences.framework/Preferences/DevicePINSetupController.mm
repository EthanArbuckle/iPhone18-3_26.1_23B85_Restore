@interface DevicePINSetupController
- (BOOL)success;
- (CGSize)preferredContentSize;
- (DevicePINSetupController)init;
- (void)showController:(id)controller animate:(BOOL)animate;
@end

@implementation DevicePINSetupController

- (DevicePINSetupController)init
{
  v4.receiver = self;
  v4.super_class = DevicePINSetupController;
  v2 = [(PSSetupController *)&v4 init];
  if (v2 && (PSUsePadStylePIN() & 1) == 0)
  {
    [(DevicePINSetupController *)v2 setModalPresentationStyle:0];
  }

  return v2;
}

- (BOOL)success
{
  topViewController = [(DevicePINSetupController *)self topViewController];
  success = [topViewController success];

  return success;
}

- (CGSize)preferredContentSize
{
  controller = [(PSSetupController *)self controller];

  if (controller)
  {
    controller2 = [(PSSetupController *)self controller];
    [controller2 preferredContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)showController:(id)controller animate:(BOOL)animate
{
  animateCopy = animate;
  controllerCopy = controller;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [controllerCopy setAllowOptionsButton:self->_allowOptionsButton];
  }

  v7.receiver = self;
  v7.super_class = DevicePINSetupController;
  [(PSSetupController *)&v7 showController:controllerCopy animate:animateCopy];
}

@end
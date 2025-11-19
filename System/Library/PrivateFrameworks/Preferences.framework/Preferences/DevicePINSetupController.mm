@interface DevicePINSetupController
- (BOOL)success;
- (CGSize)preferredContentSize;
- (DevicePINSetupController)init;
- (void)showController:(id)a3 animate:(BOOL)a4;
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
  v2 = [(DevicePINSetupController *)self topViewController];
  v3 = [v2 success];

  return v3;
}

- (CGSize)preferredContentSize
{
  v3 = [(PSSetupController *)self controller];

  if (v3)
  {
    v4 = [(PSSetupController *)self controller];
    [v4 preferredContentSize];
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

- (void)showController:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setAllowOptionsButton:self->_allowOptionsButton];
  }

  v7.receiver = self;
  v7.super_class = DevicePINSetupController;
  [(PSSetupController *)&v7 showController:v6 animate:v4];
}

@end
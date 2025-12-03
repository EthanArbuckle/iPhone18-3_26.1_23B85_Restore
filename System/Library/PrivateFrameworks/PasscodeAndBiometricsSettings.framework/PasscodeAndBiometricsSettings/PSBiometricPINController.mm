@interface PSBiometricPINController
- (id)stringsBundle;
- (void)setPane:(id)pane;
@end

@implementation PSBiometricPINController

- (void)setPane:(id)pane
{
  v6.receiver = self;
  v6.super_class = PSBiometricPINController;
  [(DevicePINController *)&v6 setPane:pane];
  if (![(DevicePINController *)self mode])
  {
    navigationItem = [(PSBiometricPINController *)self navigationItem];
    v5 = PABS_LocalizedStringForPasscodeLock(@"CREATE_PASSCODE");
    [navigationItem setTitle:v5];
  }
}

- (id)stringsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

@end
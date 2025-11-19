@interface PSBiometricPINController
- (id)stringsBundle;
- (void)setPane:(id)a3;
@end

@implementation PSBiometricPINController

- (void)setPane:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSBiometricPINController;
  [(DevicePINController *)&v6 setPane:a3];
  if (![(DevicePINController *)self mode])
  {
    v4 = [(PSBiometricPINController *)self navigationItem];
    v5 = PABS_LocalizedStringForPasscodeLock(@"CREATE_PASSCODE");
    [v4 setTitle:v5];
  }
}

- (id)stringsBundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return [v2 bundleForClass:v3];
}

@end
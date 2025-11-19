@interface PKAppProtectionShieldConfiguration
- (PKAppProtectionShieldConfiguration)init;
- (PKAppProtectionShieldViewControllerDelegate)delegate;
@end

@implementation PKAppProtectionShieldConfiguration

- (PKAppProtectionShieldConfiguration)init
{
  v7.receiver = self;
  v7.super_class = PKAppProtectionShieldConfiguration;
  v2 = [(PKAppProtectionShieldConfiguration *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_showAuthOnAppear = 1;
    v4 = [objc_alloc(MEMORY[0x1E69B8558]) initWithAppType:0];
    application = v3->_application;
    v3->_application = v4;
  }

  return v3;
}

- (PKAppProtectionShieldViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
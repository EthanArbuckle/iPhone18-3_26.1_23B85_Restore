@interface PKAppleBalanceSetupController
- (PKAppleBalanceSetupController)initWithProduct:(id)product setupContext:(int64_t)context;
- (PKAppleBalanceSetupController)initWithSetupContext:(int64_t)context uiOnly:(BOOL)only;
@end

@implementation PKAppleBalanceSetupController

- (PKAppleBalanceSetupController)initWithProduct:(id)product setupContext:(int64_t)context
{
  productCopy = product;
  v12.receiver = self;
  v12.super_class = PKAppleBalanceSetupController;
  v7 = [(PKAppleBalanceSetupController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_setupContext = context;
    v9 = [objc_alloc(MEMORY[0x1E69B8570]) initWithProduct:productCopy eligibilitySource:1];
    credential = v8->_credential;
    v8->_credential = v9;
  }

  return v8;
}

- (PKAppleBalanceSetupController)initWithSetupContext:(int64_t)context uiOnly:(BOOL)only
{
  v11.receiver = self;
  v11.super_class = PKAppleBalanceSetupController;
  v6 = [(PKAppleBalanceSetupController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_setupContext = context;
    v6->_uiOnly = only;
    v8 = [objc_alloc(MEMORY[0x1E69B8570]) initWithProduct:0 eligibilitySource:1];
    credential = v7->_credential;
    v7->_credential = v8;
  }

  return v7;
}

@end
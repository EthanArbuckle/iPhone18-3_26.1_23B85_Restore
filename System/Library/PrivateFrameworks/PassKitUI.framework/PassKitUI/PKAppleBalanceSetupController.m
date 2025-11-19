@interface PKAppleBalanceSetupController
- (PKAppleBalanceSetupController)initWithProduct:(id)a3 setupContext:(int64_t)a4;
- (PKAppleBalanceSetupController)initWithSetupContext:(int64_t)a3 uiOnly:(BOOL)a4;
@end

@implementation PKAppleBalanceSetupController

- (PKAppleBalanceSetupController)initWithProduct:(id)a3 setupContext:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PKAppleBalanceSetupController;
  v7 = [(PKAppleBalanceSetupController *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_setupContext = a4;
    v9 = [objc_alloc(MEMORY[0x1E69B8570]) initWithProduct:v6 eligibilitySource:1];
    credential = v8->_credential;
    v8->_credential = v9;
  }

  return v8;
}

- (PKAppleBalanceSetupController)initWithSetupContext:(int64_t)a3 uiOnly:(BOOL)a4
{
  v11.receiver = self;
  v11.super_class = PKAppleBalanceSetupController;
  v6 = [(PKAppleBalanceSetupController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_setupContext = a3;
    v6->_uiOnly = a4;
    v8 = [objc_alloc(MEMORY[0x1E69B8570]) initWithProduct:0 eligibilitySource:1];
    credential = v7->_credential;
    v7->_credential = v8;
  }

  return v7;
}

@end
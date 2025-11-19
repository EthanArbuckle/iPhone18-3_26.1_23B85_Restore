@interface PKPaymentSetupController
+ (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4;
- (void)presentPaymentSetupRequest:(id)a3 completion:(id)a4;
@end

@implementation PKPaymentSetupController

+ (void)paymentSetupFeaturesForConfiguration:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x1E69B8A58];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedInstance];
  [v8 paymentSetupFeaturesForConfiguration:v7 completion:v6];
}

- (void)presentPaymentSetupRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  if (PKIsPad())
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 windows];
    v10 = [v9 firstObject];
    v11 = [v10 windowScene];
    v13 = [v7 numberWithInteger:{objc_msgSend(v11, "interfaceOrientation")}];
  }

  else
  {
    v13 = &unk_1F3CC7D60;
  }

  v12 = [MEMORY[0x1E69B8A58] sharedInstance];
  [v12 presentPaymentSetupRequest:v6 orientation:v13 completion:v5];
}

@end
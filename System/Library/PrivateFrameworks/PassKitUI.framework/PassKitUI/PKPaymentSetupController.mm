@interface PKPaymentSetupController
+ (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion;
- (void)presentPaymentSetupRequest:(id)request completion:(id)completion;
@end

@implementation PKPaymentSetupController

+ (void)paymentSetupFeaturesForConfiguration:(id)configuration completion:(id)completion
{
  v5 = MEMORY[0x1E69B8A58];
  completionCopy = completion;
  configurationCopy = configuration;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance paymentSetupFeaturesForConfiguration:configurationCopy completion:completionCopy];
}

- (void)presentPaymentSetupRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  if (PKIsPad())
  {
    v7 = MEMORY[0x1E696AD98];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    windows = [mEMORY[0x1E69DC668] windows];
    firstObject = [windows firstObject];
    windowScene = [firstObject windowScene];
    v13 = [v7 numberWithInteger:{objc_msgSend(windowScene, "interfaceOrientation")}];
  }

  else
  {
    v13 = &unk_1F3CC7D60;
  }

  mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
  [mEMORY[0x1E69B8A58] presentPaymentSetupRequest:requestCopy orientation:v13 completion:completionCopy];
}

@end
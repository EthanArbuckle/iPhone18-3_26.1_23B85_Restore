@interface TPSApplePayPeerValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSApplePayPeerValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  IsAvailable = PKPeerPaymentIsAvailable();
  v6 = IsAvailable ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v6 ^ 1u, 0);
}

@end
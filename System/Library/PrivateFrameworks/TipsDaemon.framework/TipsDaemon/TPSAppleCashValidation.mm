@interface TPSAppleCashValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSAppleCashValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  IsSetup = PKPeerPaymentIsSetup();
  v6 = IsSetup ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v6 ^ 1u, 0);
}

@end
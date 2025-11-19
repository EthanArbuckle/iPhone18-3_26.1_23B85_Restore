@interface TPSApplePayPeerValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSApplePayPeerValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  IsAvailable = PKPeerPaymentIsAvailable();
  v6 = IsAvailable ^ [(TPSTargetingValidation *)self BOOLValue];
  v7 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v7];
  }

  (*(v4 + 2))(v4, v6 ^ 1u, 0);
}

@end
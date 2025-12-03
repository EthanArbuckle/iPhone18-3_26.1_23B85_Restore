@interface TPSMultiLanguageValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSMultiLanguageValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CBEAF8];
  completionCopy = completion;
  preferredLanguages = [v4 preferredLanguages];
  v7 = [preferredLanguages count];

  bOOLValue = [(TPSTargetingValidation *)self BOOLValue];
  v9 = v7 < 2;
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v9 ^ bOOLValue, 0);
}

@end
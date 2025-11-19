@interface TPSMultiLanguageValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSMultiLanguageValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CBEAF8];
  v5 = a3;
  v6 = [v4 preferredLanguages];
  v7 = [v6 count];

  v8 = [(TPSTargetingValidation *)self BOOLValue];
  v9 = v7 < 2;
  v10 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v10];
  }

  (*(v5 + 2))(v5, v9 ^ v8, 0);
}

@end
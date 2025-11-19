@interface TPSMedicalIDAvailableValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSMedicalIDAvailableValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CCD4A8];
  v5 = a3;
  v6 = [v4 shared];
  v7 = [v6 isMedicalIDAvailable];

  v8 = v7 ^ [(TPSTargetingValidation *)self BOOLValue];
  v9 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v9];
  }

  (*(v5 + 2))(v5, v8 ^ 1u, 0);
}

@end
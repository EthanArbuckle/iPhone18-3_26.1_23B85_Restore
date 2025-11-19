@interface TPSCloudDriveValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSCloudDriveValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = *MEMORY[0x277CB91D8];
  v5 = a3;
  v6 = [TPSCloudAccountChecker isiCloudDataClassEnabled:v4];
  v7 = v6 ^ [(TPSTargetingValidation *)self BOOLValue];
  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v8];
  }

  (*(v5 + 2))(v5, v7 ^ 1u, 0);
}

@end
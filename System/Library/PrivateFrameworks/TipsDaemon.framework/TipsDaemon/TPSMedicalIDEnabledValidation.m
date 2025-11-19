@interface TPSMedicalIDEnabledValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSMedicalIDEnabledValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[TPSHealthKitDefines sharedHealthStore];
  v6 = [objc_alloc(MEMORY[0x277CCD5E8]) initWithHealthStore:v5];
  v7 = [v6 medicalIDSetUpStatus];
  v8 = [(TPSTargetingValidation *)self BOOLValue];
  v9 = v7 != 2;
  v10 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v10];
  }

  (*(v4 + 2))(v4, v9 ^ v8, 0);
}

@end
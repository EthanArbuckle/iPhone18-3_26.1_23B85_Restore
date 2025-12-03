@interface TPSMedicalIDEnabledValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSMedicalIDEnabledValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[TPSHealthKitDefines sharedHealthStore];
  v6 = [objc_alloc(MEMORY[0x277CCD5E8]) initWithHealthStore:v5];
  medicalIDSetUpStatus = [v6 medicalIDSetUpStatus];
  bOOLValue = [(TPSTargetingValidation *)self BOOLValue];
  v9 = medicalIDSetUpStatus != 2;
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v9 ^ bOOLValue, 0);
}

@end
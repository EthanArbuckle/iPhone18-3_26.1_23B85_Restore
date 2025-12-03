@interface TPSMedicalIDAvailableValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSMedicalIDAvailableValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCD4A8];
  completionCopy = completion;
  shared = [v4 shared];
  isMedicalIDAvailable = [shared isMedicalIDAvailable];

  v8 = isMedicalIDAvailable ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v8 ^ 1u, 0);
}

@end
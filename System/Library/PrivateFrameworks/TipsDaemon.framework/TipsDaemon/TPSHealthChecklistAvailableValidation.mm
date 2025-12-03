@interface TPSHealthChecklistAvailableValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHealthChecklistAvailableValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CCD4A8];
  completionCopy = completion;
  shared = [v4 shared];
  isHealthChecklistAvailable = [shared isHealthChecklistAvailable];

  v8 = isHealthChecklistAvailable ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v8 ^ 1u, 0);
}

@end
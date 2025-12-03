@interface TPSCloudBackupValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSCloudBackupValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D28A40];
  completionCopy = completion;
  v6 = [[v4 alloc] initWithDelegate:0];
  isBackupEnabled = [v6 isBackupEnabled];
  v8 = isBackupEnabled ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v8 ^ 1u, 0);
}

@end
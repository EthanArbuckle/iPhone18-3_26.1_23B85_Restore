@interface TPSCloudPhotoLibraryValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSCloudPhotoLibraryValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = *MEMORY[0x277CB9100];
  completionCopy = completion;
  v6 = [TPSCloudAccountChecker isiCloudDataClassEnabled:v4];
  v7 = v6 ^ [(TPSTargetingValidation *)self BOOLValue];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v7 ^ 1u, 0);
}

@end
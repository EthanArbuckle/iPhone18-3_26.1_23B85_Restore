@interface TPSPairedLargeHomePodValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPairedLargeHomePodValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CD19B8];
  completionCopy = completion;
  areAnyLargeHomePodConfigured = [v4 areAnyLargeHomePodConfigured];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:areAnyLargeHomePodConfigured, targeting];
  }

  completionCopy[2](completionCopy, areAnyLargeHomePodConfigured, 0);
}

@end
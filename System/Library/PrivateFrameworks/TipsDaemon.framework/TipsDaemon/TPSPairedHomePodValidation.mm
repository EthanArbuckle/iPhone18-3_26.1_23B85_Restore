@interface TPSPairedHomePodValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPairedHomePodValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CD19B8];
  completionCopy = completion;
  areAnyHomePodsConfigured = [v4 areAnyHomePodsConfigured];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:areAnyHomePodsConfigured, targeting];
  }

  completionCopy[2](completionCopy, areAnyHomePodsConfigured, 0);
}

@end
@interface TPSPairedHomePodMiniValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPairedHomePodMiniValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CD19B8];
  completionCopy = completion;
  areAnyHomePodMiniConfigured = [v4 areAnyHomePodMiniConfigured];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:areAnyHomePodMiniConfigured, targeting];
  }

  completionCopy[2](completionCopy, areAnyHomePodMiniConfigured, 0);
}

@end
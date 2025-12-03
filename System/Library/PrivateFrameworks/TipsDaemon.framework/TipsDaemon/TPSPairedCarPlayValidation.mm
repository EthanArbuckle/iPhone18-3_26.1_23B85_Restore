@interface TPSPairedCarPlayValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPairedCarPlayValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CF8A78];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  shouldSuggestCarPlayTips = [v6 shouldSuggestCarPlayTips];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:shouldSuggestCarPlayTips, targeting];
  }

  completionCopy[2](completionCopy, shouldSuggestCarPlayTips, 0);
}

@end
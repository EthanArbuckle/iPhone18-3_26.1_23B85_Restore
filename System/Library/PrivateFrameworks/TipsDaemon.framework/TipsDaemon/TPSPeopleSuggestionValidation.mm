@interface TPSPeopleSuggestionValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPeopleSuggestionValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D3A0B8];
  completionCopy = completion;
  v6 = objc_alloc_init(v4);
  v7 = [v6 chatGuidsForMessagesPinningWithMaxSuggestions:3];
  v8 = [v7 count];
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  completionCopy[2](completionCopy, v8 == 3, 0);
}

@end
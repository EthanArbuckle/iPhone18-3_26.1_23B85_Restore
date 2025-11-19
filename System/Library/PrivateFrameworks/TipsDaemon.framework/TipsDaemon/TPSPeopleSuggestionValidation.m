@interface TPSPeopleSuggestionValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSPeopleSuggestionValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D3A0B8];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 chatGuidsForMessagesPinningWithMaxSuggestions:3];
  v8 = [v7 count];
  v9 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v9];
  }

  v5[2](v5, v8 == 3, 0);
}

@end
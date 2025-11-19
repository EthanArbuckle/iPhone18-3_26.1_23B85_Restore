@interface TPSPairedCarPlayValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSPairedCarPlayValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CF8A78];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [v6 shouldSuggestCarPlayTips];
  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v7, v8];
  }

  v5[2](v5, v7, 0);
}

@end
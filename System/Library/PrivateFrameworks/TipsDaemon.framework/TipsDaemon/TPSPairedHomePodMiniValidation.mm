@interface TPSPairedHomePodMiniValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSPairedHomePodMiniValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CD19B8];
  v5 = a3;
  v6 = [v4 areAnyHomePodMiniConfigured];
  v7 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v6, v7];
  }

  v5[2](v5, v6, 0);
}

@end
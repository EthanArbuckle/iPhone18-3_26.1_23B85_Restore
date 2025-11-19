@interface TPSContactsMeCardValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSContactsMeCardValidation

- (void)validateWithCompletion:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D716E8];
  v5 = a3;
  if ([v4 isCellularChinaSKUDevice])
  {
    v6 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(TPSContactsMeCardValidation *)self validateWithCompletion:v6];
    }

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v14[0] = *MEMORY[0x277CBD018];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v13 = 0;
    v10 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v9 error:&v13];
    v7 = v13;

    v8 = (v10 == 0) ^ [(TPSTargetingValidation *)self BOOLValue];
  }

  v11 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v8, v11];
  }

  v5[2](v5, v8, v7);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)validateWithCompletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 name];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Skipping %@ validation", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
@interface TPSSleepSetupValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSSleepSetupValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277D62528];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v14 = 0;
  v7 = [v6 currentSleepScheduleWithError:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [v7 isEnabled];
    v11 = v10 ^ [(TPSTargetingValidation *)self BOOLValue]^ 1;
  }

  else
  {
    if (v8)
    {
      v12 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(TPSSleepSetupValidation *)v9 validateWithCompletion:v12];
      }
    }

    v11 = 0;
  }

  v13 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v11, v13];
  }

  v5[2](v5, v11, 0);
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Failed to query sleep schedule: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
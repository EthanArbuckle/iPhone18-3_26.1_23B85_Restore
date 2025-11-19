@interface TPSSystemVersionUpdateValidation
- (BOOL)validateLastMajorSystemVersionUpdateSinceTimeInterval:(double)a3 desiredOrder:(int64_t)a4;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSSystemVersionUpdateValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSTargetingValidation *)self value];
  v6 = [v5 TPSSafeIntegerForKey:@"type"];

  v7 = [(TPSTargetingValidation *)self value];
  [v7 TPSSafeDoubleForKey:@"interval"];
  v9 = v8;

  v10 = [(TPSTargetingValidation *)self value];
  v11 = [v10 TPSSafeIntegerForKey:@"order"];

  if (v6)
  {
    v12 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [TPSSystemVersionUpdateValidation validateWithCompletion:v6];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(TPSSystemVersionUpdateValidation *)self validateLastMajorSystemVersionUpdateSinceTimeInterval:v11 desiredOrder:v9];
  }

  v14 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v13, v14];
  }

  v4[2](v4, v13, 0);
}

- (BOOL)validateLastMajorSystemVersionUpdateSinceTimeInterval:(double)a3 desiredOrder:(int64_t)a4
{
  v6 = [MEMORY[0x277D716E8] sharedInstance];
  v7 = [v6 lastMajorVersionUpdateDate];

  if (v7)
  {
    if ((a4 - 2) > 0xFFFFFFFFFFFFFFFCLL)
    {
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [v7 dateByAddingTimeInterval:a3];
      v10 = [v11 compare:v12] == a4;

      goto LABEL_11;
    }

    v8 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TPSSystemVersionUpdateValidation validateLastMajorSystemVersionUpdateSinceTimeInterval:a4 desiredOrder:?];
    }
  }

  else
  {
    v9 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TPSSystemVersionUpdateValidation validateLastMajorSystemVersionUpdateSinceTimeInterval:v9 desiredOrder:?];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)validateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_1(&dword_232D6F000, v2, v3, "Unsupported system version update type: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)validateLastMajorSystemVersionUpdateSinceTimeInterval:(uint64_t)a1 desiredOrder:.cold.1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  OUTLINED_FUNCTION_0_1(&dword_232D6F000, v2, v3, "Invalid ordered parameter: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
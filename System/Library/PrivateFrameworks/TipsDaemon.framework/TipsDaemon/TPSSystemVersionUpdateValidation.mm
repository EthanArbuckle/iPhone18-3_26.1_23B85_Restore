@interface TPSSystemVersionUpdateValidation
- (BOOL)validateLastMajorSystemVersionUpdateSinceTimeInterval:(double)interval desiredOrder:(int64_t)order;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSSystemVersionUpdateValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  value = [(TPSTargetingValidation *)self value];
  v6 = [value TPSSafeIntegerForKey:@"type"];

  value2 = [(TPSTargetingValidation *)self value];
  [value2 TPSSafeDoubleForKey:@"interval"];
  v9 = v8;

  value3 = [(TPSTargetingValidation *)self value];
  v11 = [value3 TPSSafeIntegerForKey:@"order"];

  if (v6)
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
    {
      [TPSSystemVersionUpdateValidation validateWithCompletion:v6];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(TPSSystemVersionUpdateValidation *)self validateLastMajorSystemVersionUpdateSinceTimeInterval:v11 desiredOrder:v9];
  }

  targeting2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting2, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v13, targeting2];
  }

  completionCopy[2](completionCopy, v13, 0);
}

- (BOOL)validateLastMajorSystemVersionUpdateSinceTimeInterval:(double)interval desiredOrder:(int64_t)order
{
  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  lastMajorVersionUpdateDate = [mEMORY[0x277D716E8] lastMajorVersionUpdateDate];

  if (lastMajorVersionUpdateDate)
  {
    if ((order - 2) > 0xFFFFFFFFFFFFFFFCLL)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v12 = [lastMajorVersionUpdateDate dateByAddingTimeInterval:interval];
      v10 = [date compare:v12] == order;

      goto LABEL_11;
    }

    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
    {
      [TPSSystemVersionUpdateValidation validateLastMajorSystemVersionUpdateSinceTimeInterval:order desiredOrder:?];
    }
  }

  else
  {
    targeting2 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting2, OS_LOG_TYPE_ERROR))
    {
      [TPSSystemVersionUpdateValidation validateLastMajorSystemVersionUpdateSinceTimeInterval:targeting2 desiredOrder:?];
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
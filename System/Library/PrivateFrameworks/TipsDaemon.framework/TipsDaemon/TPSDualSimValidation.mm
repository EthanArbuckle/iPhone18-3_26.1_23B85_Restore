@interface TPSDualSimValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSDualSimValidation

- (void)validateWithCompletion:(id)completion
{
  v4 = MEMORY[0x277CC37B0];
  completionCopy = completion;
  v6 = [v4 alloc];
  v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
  v13 = 0;
  v8 = [v7 getDualSimCapability:&v13];
  v9 = v13;
  bOOLValue = [(TPSTargetingValidation *)self BOOLValue];
  v11 = v8 == 3;
  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:targeting];
  }

  (*(completionCopy + 2))(completionCopy, v11 ^ bOOLValue, 0);
}

@end
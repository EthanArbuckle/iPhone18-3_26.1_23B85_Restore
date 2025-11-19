@interface TPSDualSimValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSDualSimValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CC37B0];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithQueue:MEMORY[0x277D85CD0]];
  v13 = 0;
  v8 = [v7 getDualSimCapability:&v13];
  v9 = v13;
  v10 = [(TPSTargetingValidation *)self BOOLValue];
  v11 = v8 == 3;
  v12 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v12];
  }

  (*(v5 + 2))(v5, v11 ^ v10, 0);
}

@end
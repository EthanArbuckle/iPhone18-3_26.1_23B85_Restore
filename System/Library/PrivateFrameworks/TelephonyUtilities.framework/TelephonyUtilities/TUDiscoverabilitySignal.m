@interface TUDiscoverabilitySignal
+ (BOOL)isSeniorUser;
+ (void)logAnalyticsEventNamed:(id)a3;
@end

@implementation TUDiscoverabilitySignal

+ (void)logAnalyticsEventNamed:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 isSeniorUser];
  v10 = @"u65_flag";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = v7;
  AnalyticsSendEventLazy();

  v9 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isSeniorUser
{
  if (isSeniorUser_predicate != -1)
  {
    +[TUDiscoverabilitySignal isSeniorUser];
  }

  return isSeniorUser_kIsSeniorUser;
}

void __39__TUDiscoverabilitySignal_isSeniorUser__block_invoke()
{
  v1 = [MEMORY[0x1E698DC80] sharedInstance];
  v0 = [v1 primaryAuthKitAccount];
  isSeniorUser_kIsSeniorUser = [v1 userIsSeniorForAccount:v0];
}

@end
@interface WBSAnalyticsLogger(WBSAnalyticsLoggerExtras)
- (void)reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded:()WBSAnalyticsLoggerExtras;
@end

@implementation WBSAnalyticsLogger(WBSAnalyticsLoggerExtras)

- (void)reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded:()WBSAnalyticsLoggerExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 safari_dateForKey:@"WBSLastWeakPasswordReportTime"];

  if (!v6 || ([v6 safari_timeIntervalUntilNow], v7 <= 43200.0))
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [MEMORY[0x1E695DF00] date];
    [v8 safari_setDate:v9 forKey:@"WBSLastWeakPasswordReportTime"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __111__WBSAnalyticsLogger_WBSAnalyticsLoggerExtras__reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded___block_invoke;
    v10[3] = &unk_1E7FB68F8;
    v11 = v4;
    [a1 _sendEvent:@"com.apple.Safari.WeakPasswordReport" usingBlock:v10];
  }
}

@end
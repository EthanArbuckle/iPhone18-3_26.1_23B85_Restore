@interface WBSAnalyticsLogger(WBSAnalyticsLoggerExtras)
- (void)reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded:()WBSAnalyticsLoggerExtras;
@end

@implementation WBSAnalyticsLogger(WBSAnalyticsLoggerExtras)

- (void)reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded:()WBSAnalyticsLoggerExtras
{
  v4 = a3;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults safari_dateForKey:@"WBSLastWeakPasswordReportTime"];

  if (!v6 || ([v6 safari_timeIntervalUntilNow], v7 <= 43200.0))
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    date = [MEMORY[0x1E695DF00] date];
    [standardUserDefaults2 safari_setDate:date forKey:@"WBSLastWeakPasswordReportTime"];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __111__WBSAnalyticsLogger_WBSAnalyticsLoggerExtras__reportNumberOfFlaggedPasswordsUsingSavedAccountAuditorIfNeeded___block_invoke;
    v10[3] = &unk_1E7FB68F8;
    v11 = v4;
    [self _sendEvent:@"com.apple.Safari.WeakPasswordReport" usingBlock:v10];
  }
}

@end
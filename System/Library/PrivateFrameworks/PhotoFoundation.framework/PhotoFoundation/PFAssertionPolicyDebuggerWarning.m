@interface PFAssertionPolicyDebuggerWarning
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyDebuggerWarning

- (void)notifyAssertion:(id)a3
{
  v14 = a3;
  if (!+[PFAssertionHandler runningUnderDebugger](PFAssertionHandler, "runningUnderDebugger") || ![v14 isWarning])
  {
    goto LABEL_15;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v3 BOOLForKey:@"__skipWarningAssertions"])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];

    v7 = [v3 objectForKey:@"PFAssertSkipWarningExpirationDate"];
    if (!v7)
    {
      v7 = v6;
      [v3 setObject:v7 forKey:@"PFAssertSkipWarningExpirationDate"];
    }

    v8 = MEMORY[0x1E695DF00];
    [v7 doubleValue];
    v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
    [v9 timeIntervalSinceNow];
    if (v10 <= 86400.0)
    {
      if (v10 >= 0.0)
      {
LABEL_11:

        goto LABEL_12;
      }

      [v3 removeObjectForKey:@"PFAssertSkipWarningExpirationDate"];
      v13 = MEMORY[0x1E695E110];
      v11 = @"__skipWarningAssertions";
      v12 = v3;
    }

    else
    {
      v11 = @"PFAssertSkipWarningExpirationDate";
      v12 = v3;
      v13 = v6;
    }

    [v12 setObject:v13 forKey:v11];
    goto LABEL_11;
  }

LABEL_12:
  if (([v3 BOOLForKey:@"__skipWarningAssertions"] & 1) == 0)
  {
    __debugbreak();
  }

LABEL_15:
}

@end
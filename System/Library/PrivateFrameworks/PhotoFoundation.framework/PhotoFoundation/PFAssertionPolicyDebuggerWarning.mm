@interface PFAssertionPolicyDebuggerWarning
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyDebuggerWarning

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (!+[PFAssertionHandler runningUnderDebugger](PFAssertionHandler, "runningUnderDebugger") || ![assertionCopy isWarning])
  {
    goto LABEL_15;
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"__skipWarningAssertions"])
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:86400.0];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];

    v7 = [standardUserDefaults objectForKey:@"PFAssertSkipWarningExpirationDate"];
    if (!v7)
    {
      v7 = v6;
      [standardUserDefaults setObject:v7 forKey:@"PFAssertSkipWarningExpirationDate"];
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

      [standardUserDefaults removeObjectForKey:@"PFAssertSkipWarningExpirationDate"];
      v13 = MEMORY[0x1E695E110];
      v11 = @"__skipWarningAssertions";
      v12 = standardUserDefaults;
    }

    else
    {
      v11 = @"PFAssertSkipWarningExpirationDate";
      v12 = standardUserDefaults;
      v13 = v6;
    }

    [v12 setObject:v13 forKey:v11];
    goto LABEL_11;
  }

LABEL_12:
  if (([standardUserDefaults BOOLForKey:@"__skipWarningAssertions"] & 1) == 0)
  {
    __debugbreak();
  }

LABEL_15:
}

@end
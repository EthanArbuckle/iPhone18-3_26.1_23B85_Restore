@interface _PASCrashHelper
+ (void)optInCurrentProcessForLogFaultProbabalisticCrashesWithConfig:(id)a3;
+ (void)simulateCrashWithDescription:(id)a3;
@end

@implementation _PASCrashHelper

+ (void)optInCurrentProcessForLogFaultProbabalisticCrashesWithConfig:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"_PASCrashHelper.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"config"}];
  }

  if (+[_PASDeviceInfo isDNUEnabled])
  {
    v6 = [v5 oddsNumerator];
    if (v6 > [v5 oddsDenominator])
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:a1 file:@"_PASCrashHelper.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"config.oddsNumerator <= config.oddsDenominator"}];
    }

    if ([v5 oddsNumerator])
    {
      _PASLogFaultAndProbCrashWindowSize = [v5 uniqueCallsiteWindowSize];
      v7 = arc4random_uniform([v5 oddsDenominator]);
      if (v7 < [v5 oddsNumerator])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_PASLogFaultAndProbCrash will be armed for this process!", buf, 2u);
        }

        atomic_store(1u, _PASLogFaultAndProbCrashArmed);
      }
    }
  }
}

+ (void)simulateCrashWithDescription:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"No description";
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Simulating crash, reason: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end
@interface _PASCrashHelper
+ (void)optInCurrentProcessForLogFaultProbabalisticCrashesWithConfig:(id)config;
+ (void)simulateCrashWithDescription:(id)description;
@end

@implementation _PASCrashHelper

+ (void)optInCurrentProcessForLogFaultProbabalisticCrashesWithConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASCrashHelper.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"config"}];
  }

  if (+[_PASDeviceInfo isDNUEnabled])
  {
    oddsNumerator = [configCopy oddsNumerator];
    if (oddsNumerator > [configCopy oddsDenominator])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASCrashHelper.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"config.oddsNumerator <= config.oddsDenominator"}];
    }

    if ([configCopy oddsNumerator])
    {
      _PASLogFaultAndProbCrashWindowSize = [configCopy uniqueCallsiteWindowSize];
      v7 = arc4random_uniform([configCopy oddsDenominator]);
      if (v7 < [configCopy oddsNumerator])
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

+ (void)simulateCrashWithDescription:(id)description
{
  v8 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v4 = descriptionCopy;
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
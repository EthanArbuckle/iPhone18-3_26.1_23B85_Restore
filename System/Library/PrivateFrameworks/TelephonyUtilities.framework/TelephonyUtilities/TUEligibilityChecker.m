@interface TUEligibilityChecker
+ (BOOL)isCallRecordingEligible;
+ (void)isCallRecordingEligible;
@end

@implementation TUEligibilityChecker

+ (BOOL)isCallRecordingEligible
{
  v9 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  v3 = TUDefaultLog();
  v4 = v3;
  if (domain_answer)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[(TUEligibilityChecker *)domain_answer];
    }

    result = 0;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "os_eligibility for OS_ELIGIBILITY_DOMAIN_NICKEL: %llu", buf, 0xCu);
    }

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)isCallRecordingEligible
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "os_eligibility_get_domain_answer failed with error %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end
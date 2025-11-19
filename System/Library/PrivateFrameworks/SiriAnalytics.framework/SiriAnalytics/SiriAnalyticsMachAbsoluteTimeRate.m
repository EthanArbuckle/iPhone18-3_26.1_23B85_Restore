@interface SiriAnalyticsMachAbsoluteTimeRate
@end

@implementation SiriAnalyticsMachAbsoluteTimeRate

void ___SiriAnalyticsMachAbsoluteTimeRate_block_invoke()
{
  v16 = *MEMORY[0x1E69E9840];
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    v3 = v0;
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v4 = SiriAnalyticsLogContextUtility;
    if (os_log_type_enabled(SiriAnalyticsLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "_SiriAnalyticsMachAbsoluteTimeRate_block_invoke";
      v10 = 1024;
      numer = v3;
      _os_log_error_impl(&dword_1D9863000, v4, OS_LOG_TYPE_ERROR, "%s mach_timebase_info() failed with %d.", buf, 0x12u);
    }
  }

  else
  {
    LODWORD(v1) = info.numer;
    LODWORD(v2) = info.denom;
    *&_SiriAnalyticsMachAbsoluteTimeRate_rate = v1 / v2;
    if (SiriAnalyticsLoggingInit_once != -1)
    {
      dispatch_once(&SiriAnalyticsLoggingInit_once, &__block_literal_global_701);
    }

    v5 = SiriAnalyticsLogContextUtility;
    if (os_log_type_enabled(SiriAnalyticsLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v9 = "_SiriAnalyticsMachAbsoluteTimeRate_block_invoke";
      v10 = 1024;
      numer = info.numer;
      v12 = 1024;
      denom = info.denom;
      v14 = 2048;
      v15 = _SiriAnalyticsMachAbsoluteTimeRate_rate;
      _os_log_impl(&dword_1D9863000, v5, OS_LOG_TYPE_INFO, "%s machTimebaseInfo.numer = %u, machTimebaseInfo.denom = %u, rate = %f", buf, 0x22u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end
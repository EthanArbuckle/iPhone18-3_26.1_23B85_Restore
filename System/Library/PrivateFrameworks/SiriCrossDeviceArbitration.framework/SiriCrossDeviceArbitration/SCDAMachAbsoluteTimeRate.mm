@interface SCDAMachAbsoluteTimeRate
@end

@implementation SCDAMachAbsoluteTimeRate

void ___SCDAMachAbsoluteTimeRate_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  info = 0;
  v0 = mach_timebase_info(&info);
  if (v0)
  {
    v1 = v0;
    v2 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "_SCDAMachAbsoluteTimeRate_block_invoke";
      v11 = 1024;
      v12 = v1;
      _os_log_error_impl(&dword_1DA758000, v2, OS_LOG_TYPE_ERROR, "%s mach_timebase_info() failed with %d.", buf, 0x12u);
    }
  }

  else
  {
    numer = info.numer;
    denom = info.denom;
    v5 = info.numer / info.denom;
    *&_SCDAMachAbsoluteTimeRate_rate = v5;
    v6 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v10 = "_SCDAMachAbsoluteTimeRate_block_invoke";
      v11 = 1024;
      v12 = numer;
      v13 = 1024;
      v14 = denom;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1DA758000, v6, OS_LOG_TYPE_INFO, "%s machTimebaseInfo.numer = %u, machTimebaseInfo.denom = %u, rate = %f", buf, 0x22u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end
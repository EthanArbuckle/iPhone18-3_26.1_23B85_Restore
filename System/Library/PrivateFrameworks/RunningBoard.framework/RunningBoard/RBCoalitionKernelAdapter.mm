@interface RBCoalitionKernelAdapter
- (int64_t)coalitionInfoForPID:(int)d outCoalitionInfo:(coalition_info *)info;
@end

@implementation RBCoalitionKernelAdapter

- (int64_t)coalitionInfoForPID:(int)d outCoalitionInfo:(coalition_info *)info
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v19 = 0;
  memset(buffer, 0, sizeof(buffer));
  v6 = rbs_process_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "coalitionInfoForPID: Calling proc_pidinfo", buf, 2u);
  }

  v7 = proc_pidinfo(d, 20, 0, buffer, 40);
  if (v7 < 0)
  {
    v11 = v7;
    v12 = rbs_process_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(RBCoalitionKernelAdapter *)d coalitionInfoForPID:v11 outCoalitionInfo:v12];
    }

    result = -1;
  }

  else
  {
    v17 = 8;
    v8 = sysctlbyname("kern.coalition_roles", v31, &v17, &dCopy, 4uLL);
    if (v8 < 0 || v17 != 8)
    {
      v9 = rbs_process_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = dCopy;
        v15 = buffer[0];
        v16 = *__error();
        *buf = 67110144;
        v22 = v14;
        v23 = 2048;
        v24 = v15;
        v25 = 2048;
        v26 = *(&v15 + 1);
        v27 = 1024;
        v28 = v8;
        v29 = 1024;
        v30 = v16;
        _os_log_error_impl(&dword_262485000, v9, OS_LOG_TYPE_ERROR, "Kernel call to get coalition roles for PID %d, resource coalition id: %llu, jetsam coalition id: %llu, failed: ret %d, errno %d.", buf, 0x28u);
      }
    }

    result = 0;
    *&info->var0 = buffer[0];
    info->var2 = v32 == 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)coalitionInfoForPID:(NSObject *)a3 outCoalitionInfo:.cold.1(int a1, int a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = *__error();
  v8[0] = 67109632;
  v8[1] = a1;
  v9 = 1024;
  v10 = a2;
  v11 = 1024;
  v12 = v6;
  _os_log_error_impl(&dword_262485000, a3, OS_LOG_TYPE_ERROR, "Kernel call to get coalition info for PID %d failed: ret %d, errno %d.", v8, 0x14u);
  v7 = *MEMORY[0x277D85DE8];
}

@end
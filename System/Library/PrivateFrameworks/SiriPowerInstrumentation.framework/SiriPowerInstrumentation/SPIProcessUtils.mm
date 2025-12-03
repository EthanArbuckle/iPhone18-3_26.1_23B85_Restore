@interface SPIProcessUtils
+ (id)getProcessNameForPid:(int)pid;
+ (int)getUsageForPid:(int)pid withOutput:(SPIResourceUsage *)output;
@end

@implementation SPIProcessUtils

+ (id)getProcessNameForPid:(int)pid
{
  v7 = *MEMORY[0x277D85DE8];
  if (proc_name(pid, buffer, 0x400u) < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:buffer];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (int)getUsageForPid:(int)pid withOutput:(SPIResourceUsage *)output
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  result = proc_pid_rusage(pid, 5, v7);
  if (!result)
  {
    *&output->cpuCycles = vextq_s8(*(v19 + 8), *(v19 + 8), 8uLL);
    output->memPhysFootprint = *(&v8 + 1);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end
@interface RBMaxPendingProcessStates
@end

@implementation RBMaxPendingProcessStates

void ___RBMaxPendingProcessStates_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v2 = 4;
  if (!sysctlbyname("kern.maxproc", &v3, &v2, 0, 0) && v3 >= 0x4B0)
  {
    _RBMaxPendingProcessStates_maxPendingProcessStates = (v3 >> 1) + 100;
  }

  v0 = rbs_process_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v5 = _RBMaxPendingProcessStates_maxPendingProcessStates;
    _os_log_impl(&dword_262485000, v0, OS_LOG_TYPE_DEFAULT, "RBMaxPendingProcessStates is %u", buf, 8u);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end
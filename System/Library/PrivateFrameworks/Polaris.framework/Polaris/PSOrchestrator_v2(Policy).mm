@interface PSOrchestrator_v2(Policy)
@end

@implementation PSOrchestrator_v2(Policy)

- (uint64_t)updateGraphTargetState:()Policy fromPolicy:.cold.1(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Two policies are trying to set target strides. This is an invalid configuration! Aborting!");
  v2 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *a1;
    v10 = 136315650;
    v11 = "[PSOrchestrator_v2(Policy) updateGraphTargetState:fromPolicy:]";
    v12 = 1024;
    v13 = 85;
    v14 = 2080;
    v15 = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s", &v10, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[PSOrchestrator_v2(Policy) updateGraphTargetState:fromPolicy:]";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = *a1;
  v8 = abort_with_reason();
  return cvdataBufferAllocator_cold_1(v8);
}

@end
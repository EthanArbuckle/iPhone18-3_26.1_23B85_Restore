@interface PSOrchestrator(Policy)
@end

@implementation PSOrchestrator(Policy)

- (void)updateGraphTargetState:()Policy fromPolicy:.cold.1(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Two policies are trying to set target strides. This is an invalid configuration! Aborting!");
  v2 = _polarisdLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v3 = *a1;
    v9 = 136315650;
    v10 = "[PSOrchestrator(Policy) updateGraphTargetState:fromPolicy:]";
    v11 = 1024;
    v12 = 87;
    v13 = 2080;
    v14 = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s", &v9, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _polarisdLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PSOrchestrator(Policy) updateGraphTargetState:fromPolicy:]";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = *a1;
  v8 = abort_with_reason();
  __67__PSOrchestrator_v2_Listener__setupSupportedStridesForLocalReplay___block_invoke_cold_1(v8);
}

@end
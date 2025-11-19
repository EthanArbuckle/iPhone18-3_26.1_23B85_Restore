@interface BRCPipelineJob(InternalPipeline)
- (void)advanceJobToInitialStage;
- (void)advanceJobToNextStage;
@end

@implementation BRCPipelineJob(InternalPipeline)

- (void)setJobPlan:()InternalPipeline additionalToRequestingStageMap:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = v0;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v1, v2, "[CRIT] Assertion failed: !_jobPlan%@", &v4);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)advanceJobToInitialStage
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412290;
    v9 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: _jobPlan%@", &v8);
  }

  *a2 = *a1;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)advanceJobToNextStage
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = a1;
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, a2, a3, "[CRIT] UNREACHABLE: Can't advance job to next state when haven't started or already finished%@", &v4);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)completeWithError:()InternalPipeline .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't complete a job which has already completed %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)advanceToRecoveryStage:()InternalPipeline .cold.1(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  OUTLINED_FUNCTION_1_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v8 = 138412290;
    v9 = v4;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v5, v6, "[CRIT] Assertion failed: _currentStageID != BRCPipelineStageNone%@", &v8);
  }

  *a2 = *a1;
  v7 = *MEMORY[0x277D85DE8];
}

@end
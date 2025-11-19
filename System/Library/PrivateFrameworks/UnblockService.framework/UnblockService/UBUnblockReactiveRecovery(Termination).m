@interface UBUnblockReactiveRecovery(Termination)
@end

@implementation UBUnblockReactiveRecovery(Termination)

- (void)writeDiagnostics:()Termination terminatedProcBundleID:options:.cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 serviceProcessName];
  v5 = [a1 service];
  [v5 pid];
  v6 = [a1 service];
  [v6 threadID];
  v9[0] = 138543874;
  OUTLINED_FUNCTION_1();
  v10 = v7;
  _os_log_error_impl(&dword_270397000, a2, OS_LOG_TYPE_ERROR, "Service <%{public}@ [%d] tid[%llx]>: Failed to save diagnostics!", v9, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end
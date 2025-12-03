@interface RBSRunningReasonAttribute(RBProcessState)
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSRunningReasonAttribute(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([v7 runningReason] && (v9 = objc_msgSend(v7, "runningReason"), v9 != objc_msgSend(self, "runningReason")))
  {
    v10 = rbs_assertion_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      runningReason = [v7 runningReason];
      runningReason2 = [self runningReason];
      assertion = [v8 assertion];
      v15 = 134218498;
      v16 = runningReason;
      v17 = 2048;
      v18 = runningReason2;
      v19 = 2114;
      v20 = assertion;
      _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Multiple RBSRunningReasonAttribute provided: %lu vs %lu. First one wins, but client should be fixed for assertion %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    [v7 setRunningReason:{objc_msgSend(self, "runningReason")}];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end
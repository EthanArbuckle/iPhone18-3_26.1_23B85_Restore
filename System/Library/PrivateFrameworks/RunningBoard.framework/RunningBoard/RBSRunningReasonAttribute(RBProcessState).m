@interface RBSRunningReasonAttribute(RBProcessState)
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
@end

@implementation RBSRunningReasonAttribute(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  if ([v7 runningReason] && (v9 = objc_msgSend(v7, "runningReason"), v9 != objc_msgSend(a1, "runningReason")))
  {
    v10 = rbs_assertion_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 runningReason];
      v13 = [a1 runningReason];
      v14 = [v8 assertion];
      v15 = 134218498;
      v16 = v12;
      v17 = 2048;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Multiple RBSRunningReasonAttribute provided: %lu vs %lu. First one wins, but client should be fixed for assertion %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    [v7 setRunningReason:{objc_msgSend(a1, "runningReason")}];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end
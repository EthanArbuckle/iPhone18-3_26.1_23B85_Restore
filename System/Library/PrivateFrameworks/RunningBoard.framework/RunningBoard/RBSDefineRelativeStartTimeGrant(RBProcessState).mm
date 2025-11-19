@interface RBSDefineRelativeStartTimeGrant(RBProcessState)
- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:;
- (void)applyToProcessState:()RBProcessState attributePath:context:;
@end

@implementation RBSDefineRelativeStartTimeGrant(RBProcessState)

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:
{
  v6 = a3;
  v7 = a5;
  if ([v7 isActiveDueToInheritedEndowment])
  {
    v8 = rbs_assertion_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBSDefineRelativeStartTimeGrant(RBProcessState) applyToAssertionIntransientState:v7 attributePath:? context:?];
    }
  }

  else
  {
    [v6 setDefinesRelativeStartTime:1];
    [v6 setPreventsSuspension:1];
  }
}

- (void)applyToProcessState:()RBProcessState attributePath:context:
{
  v6 = a3;
  v7 = a5;
  if ([v7 isActiveDueToInheritedEndowment])
  {
    v8 = rbs_assertion_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RBSDefineRelativeStartTimeGrant(RBProcessState) applyToAssertionIntransientState:v7 attributePath:? context:?];
    }
  }

  else
  {
    [v6 setPreventSuspend:1];
    if ([v6 role] <= 1)
    {
      [v6 setRole:2];
    }
  }
}

- (void)applyToAssertionIntransientState:()RBProcessState attributePath:context:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 assertion];
  OUTLINED_FUNCTION_0(&dword_262485000, v2, v3, "Not applying RBSDefineRelativeStartTimeGrant as it is not permitted as the subattribute of a hereditary grant for assertion %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end
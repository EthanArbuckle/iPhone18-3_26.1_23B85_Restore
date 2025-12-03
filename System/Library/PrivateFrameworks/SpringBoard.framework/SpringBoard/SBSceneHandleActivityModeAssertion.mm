@interface SBSceneHandleActivityModeAssertion
- (SBSceneHandleActivityModeAssertion)initWithReason:(id)reason activityMode:(char)mode invalidationBlock:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBSceneHandleActivityModeAssertion

- (SBSceneHandleActivityModeAssertion)initWithReason:(id)reason activityMode:(char)mode invalidationBlock:(id)block
{
  reasonCopy = reason;
  blockCopy = block;
  if (!reasonCopy)
  {
    [SBSceneHandleActivityModeAssertion initWithReason:a2 activityMode:self invalidationBlock:?];
  }

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__SBSceneHandleActivityModeAssertion_initWithReason_activityMode_invalidationBlock___block_invoke;
  v17[3] = &unk_2783A8A70;
  v18 = blockCopy;
  v16.receiver = self;
  v16.super_class = SBSceneHandleActivityModeAssertion;
  v13 = blockCopy;
  v14 = [(BSSimpleAssertion *)&v16 initWithIdentifier:v12 forReason:reasonCopy invalidationBlock:v17];

  if (v14)
  {
    v14->_activityMode = mode;
  }

  return v14;
}

void __84__SBSceneHandleActivityModeAssertion_initWithReason_activityMode_invalidationBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = SBLogSceneRelevancy();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Scene handle assertion was invalidated: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBSceneHandleActivityModeAssertion;
  v4 = [(BSSimpleAssertion *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  [(SBSceneHandleActivityModeAssertion *)self activityMode];
  v5 = NSStringFromFBSSceneActivityMode();
  [v4 appendString:v5 withName:@"activityMode"];

  return v4;
}

- (void)initWithReason:(uint64_t)a1 activityMode:(uint64_t)a2 invalidationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneHandleActivityModeAssertion.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"updateActivityModeReason != nil"}];
}

@end
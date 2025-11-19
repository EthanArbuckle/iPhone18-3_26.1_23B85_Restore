@interface SBSceneHandleActiveAppearanceAssertion
- (SBSceneHandleActiveAppearanceAssertion)initWithReason:(id)a3 activeAppearance:(int64_t)a4 priority:(int64_t)a5 invalidationBlock:(id)a6;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBSceneHandleActiveAppearanceAssertion

- (SBSceneHandleActiveAppearanceAssertion)initWithReason:(id)a3 activeAppearance:(int64_t)a4 priority:(int64_t)a5 invalidationBlock:(id)a6
{
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    [SBSceneHandleActiveAppearanceAssertion initWithReason:a2 activeAppearance:self priority:? invalidationBlock:?];
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __101__SBSceneHandleActiveAppearanceAssertion_initWithReason_activeAppearance_priority_invalidationBlock___block_invoke;
  v19[3] = &unk_2783A8A70;
  v20 = v12;
  v18.receiver = self;
  v18.super_class = SBSceneHandleActiveAppearanceAssertion;
  v15 = v12;
  v16 = [(BSSimpleAssertion *)&v18 initWithIdentifier:v14 forReason:v11 invalidationBlock:v19];

  if (v16)
  {
    v16->_activeAppearance = a4;
    v16->_priority = a5;
  }

  return v16;
}

void __101__SBSceneHandleActiveAppearanceAssertion_initWithReason_activeAppearance_priority_invalidationBlock___block_invoke(uint64_t a1, void *a2)
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

  v8 = SBLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Scene handle active appearance assertion was invalidated: %{public}@", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBSceneHandleActiveAppearanceAssertion;
  v4 = [(BSSimpleAssertion *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = NSStringFromUIUserInterfaceActiveAppearance([(SBSceneHandleActiveAppearanceAssertion *)self activeAppearance]);
  [v4 appendString:v5 withName:@"activeAppearance"];

  v6 = [v4 appendInteger:-[SBSceneHandleActiveAppearanceAssertion priority](self withName:{"priority"), @"priority"}];

  return v4;
}

- (void)initWithReason:(uint64_t)a1 activeAppearance:(uint64_t)a2 priority:invalidationBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneHandleActiveAppearanceAssertion.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"updateActiveAppearanceReason != nil"}];
}

@end
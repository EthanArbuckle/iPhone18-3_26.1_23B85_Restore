@interface SBBlockSystemAction
+ (void)localActionWithConfiguredAction:(void *)a3 instanceIdentity:(void *)a4 actionBlock:;
+ (void)toggleSilentModeActionWithRingerControl:(void *)a3 instanceIdentity:(void *)a4 name:;
- (BOOL)isEqual:(id)a3;
- (SBSystemActionAnalyticsData)analyticsData;
- (id)newExecutor;
- (uint64_t)name;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)initWithConfiguredAction:(void *)a3 instanceIdentity:(void *)a4 name:(void *)a5 actionBlock:;
- (void)initWithIdentifier:(void *)a3 sectionIdentifier:(void *)a4 associatedBundleIdentifier:(void *)a5 instanceIdentity:(void *)a6 name:(void *)a7 actionBlock:;
@end

@implementation SBBlockSystemAction

- (void)initWithConfiguredAction:(void *)a3 instanceIdentity:(void *)a4 name:(void *)a5 actionBlock:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    if (![v11 length])
    {
      [SBBlockSystemAction initWithConfiguredAction:? instanceIdentity:? name:? actionBlock:?];
    }

    if (!v12)
    {
      [SBBlockSystemAction initWithConfiguredAction:? instanceIdentity:? name:? actionBlock:?];
    }

    v18.receiver = a1;
    v18.super_class = SBBlockSystemAction;
    a1 = objc_msgSendSuper2(&v18, sel_initWithConfiguredAction_instanceIdentity_, v9, v10);
    if (a1)
    {
      v13 = [v12 copy];
      v14 = a1[7];
      a1[7] = v13;

      v15 = [v11 copy];
      v16 = a1[8];
      a1[8] = v15;
    }
  }

  return a1;
}

- (SBSystemActionAnalyticsData)analyticsData
{
  v9.receiver = self;
  v9.super_class = SBBlockSystemAction;
  v3 = [(SBSystemAction *)&v9 analyticsData];
  v5 = v4;
  v6 = [v3 stringByAppendingFormat:@" (%@)", self->_name];

  v7 = v6;
  v8 = v5;
  result.parameterValueIdentifier = v8;
  result.actionIdentifier = v7;
  return result;
}

- (id)newExecutor
{
  v3 = [SBBlockSystemActionExecutor alloc];

  return [(SBBlockSystemActionExecutor *)v3 initWithSystemAction:self];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 appendString:name withName:@"name"];
  v6.receiver = self;
  v6.super_class = SBBlockSystemAction;
  [(SBSystemAction *)&v6 appendDescriptionToFormatter:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBBlockSystemAction;
  if ([(SBSystemAction *)&v9 isEqual:v4]&& (objc_opt_self(), v5 = objc_claimAutoreleasedReturnValue(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) != 0) && self->_actionBlock == v4[7])
  {
    v7 = BSEqualStrings();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)toggleSilentModeActionWithRingerControl:(void *)a3 instanceIdentity:(void *)a4 name:
{
  v6 = a2;
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_self();
  v10 = [v7 stringByAppendingString:@" Ringer Action"];
  v11 = [v9 alloc];
  v12 = *MEMORY[0x277D7A578];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __96__SBBlockSystemAction_Utilities__toggleSilentModeActionWithRingerControl_instanceIdentity_name___block_invoke;
  v17[3] = &unk_2783BD1A8;
  v18 = v6;
  v19 = v10;
  v13 = v10;
  v14 = v6;
  v15 = [(SBBlockSystemAction *)v11 initWithIdentifier:v12 sectionIdentifier:@"SilentMode" associatedBundleIdentifier:@"com.apple.springboard" instanceIdentity:v8 name:v7 actionBlock:v17];

  return v15;
}

void __96__SBBlockSystemAction_Utilities__toggleSilentModeActionWithRingerControl_instanceIdentity_name___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [*(a1 + 32) setRingerMuted:-[SBRingerControl isRingerMuted](v4) ^ 1 withFeedback:0 reason:*(a1 + 40) clientType:1];
  v5[2](v5, 0);
}

+ (void)localActionWithConfiguredAction:(void *)a3 instanceIdentity:(void *)a4 actionBlock:
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc(objc_opt_self());
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__SBBlockSystemAction_Utilities__localActionWithConfiguredAction_instanceIdentity_actionBlock___block_invoke;
  v13[3] = &unk_2783BD1D0;
  v14 = v6;
  v10 = v6;
  v11 = [(SBBlockSystemAction *)v9 initWithConfiguredAction:v8 instanceIdentity:v7 name:@"Local" actionBlock:v13];

  return v11;
}

void __95__SBBlockSystemAction_Utilities__localActionWithConfiguredAction_instanceIdentity_actionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277D66938];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v9 = [(SBCameraActivationManager *)v7 workspace];

  v10 = [v8 initWithPreciseTimestamp:v9 actionSource:1];
  (*(*(a1 + 32) + 16))();
}

- (void)initWithIdentifier:(void *)a3 sectionIdentifier:(void *)a4 associatedBundleIdentifier:(void *)a5 instanceIdentity:(void *)a6 name:(void *)a7 actionBlock:
{
  if (!a1)
  {
    return 0;
  }

  v13 = MEMORY[0x277D79E40];
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = a2;
  v20 = [[v13 alloc] initWithIdentifier:v19 sectionIdentifier:v18 associatedBundleIdentifier:v17 name:@"Block Action" systemImageName:0 shortcutsMetadata:0];

  v21 = [(SBBlockSystemAction *)a1 initWithConfiguredAction:v20 instanceIdentity:v16 name:v15 actionBlock:v14];
  v22 = v21;

  return v22;
}

- (uint64_t)name
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)initWithConfiguredAction:(const char *)a1 instanceIdentity:name:actionBlock:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"actionBlock != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBBlockSystemAction.m";
    v9 = 1024;
    v10 = 28;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguredAction:(const char *)a1 instanceIdentity:name:actionBlock:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[name length] > 0"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBBlockSystemAction.m";
    v9 = 1024;
    v10 = 27;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
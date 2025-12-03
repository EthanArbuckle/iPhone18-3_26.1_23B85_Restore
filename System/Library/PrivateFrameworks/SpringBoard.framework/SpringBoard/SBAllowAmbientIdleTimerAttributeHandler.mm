@interface SBAllowAmbientIdleTimerAttributeHandler
+ (id)attributeClasses;
- (id)countingTargetForEntry:(id)entry;
- (void)activateWithFirstEntry:(id)entry;
- (void)deactivateWithFinalEntry:(id)entry;
@end

@implementation SBAllowAmbientIdleTimerAttributeHandler

+ (id)attributeClasses
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)countingTargetForEntry:(id)entry
{
  entryCopy = entry;
  attribute = [entryCopy attribute];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBAllowAmbientIdleTimerAttributeHandler *)a2 countingTargetForEntry:?];
  }

  if ([attribute isForSleepFocus])
  {
    v7 = @"Sleep";
  }

  else
  {
    v7 = @"NotSleep";
  }

  v8 = v7;

  return v7;
}

- (void)activateWithFirstEntry:(id)entry
{
  entryCopy = entry;
  v3 = entryCopy;
  BSDispatchMain();
}

void __66__SBAllowAmbientIdleTimerAttributeHandler_activateWithFirstEntry___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) attribute];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [_allAmbientIdleTimerControllers allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _setIdleTimerAllowedForAssertions:1 forSleepFocus:{objc_msgSend(v1, "isForSleepFocus")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)deactivateWithFinalEntry:(id)entry
{
  entryCopy = entry;
  v3 = entryCopy;
  BSDispatchMain();
}

void __68__SBAllowAmbientIdleTimerAttributeHandler_deactivateWithFinalEntry___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) attribute];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [_allAmbientIdleTimerControllers allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) _setIdleTimerAllowedForAssertions:0 forSleepFocus:{objc_msgSend(v1, "isForSleepFocus")}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)countingTargetForEntry:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[attribute isKindOfClass:[AMAllowAmbientIdleTimerAttribute class]]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBAmbientIdleTimerController.m";
    v16 = 1024;
    v17 = 344;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
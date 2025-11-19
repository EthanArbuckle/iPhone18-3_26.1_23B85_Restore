@interface SBKeyboardFocusLockReason
+ (id)accessibility:(id)a3;
+ (id)activeTransientOverlay;
+ (id)addWidgetSheet;
+ (id)appSwitcher;
+ (id)commandTab;
+ (id)controlCenter;
+ (id)coverSheet;
+ (id)coverSheetHostingApp;
+ (id)floatingDock;
+ (id)menuBar;
+ (id)modalAppLibrary;
+ (id)modalBannerInLongLook;
+ (id)mostRecentReasonInSet:(id)a3 strength:(int64_t)a4;
+ (id)screenIsDim;
+ (id)systemModalAlert;
+ (id)universalControl;
+ (int64_t)maximumStrengthInSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isMoreRecentThanReason:(id)a3;
- (id)_initReasonWithName:(void *)a3 strength:;
- (id)_initReasonWithName:(void *)a3 strength:(char)a4 avoidOverridingAppFocusOnOtherDisplays:;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation SBKeyboardFocusLockReason

+ (id)coverSheet
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"coverSheet");
  }

  return v2;
}

+ (id)controlCenter
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"controlCenter");
  }

  return v2;
}

+ (id)modalBannerInLongLook
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"modalBannerInLongLook");
  }

  return v2;
}

+ (id)appSwitcher
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"appSwitcher");
  }

  return v2;
}

+ (id)systemModalAlert
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"systemModalAlert");
  }

  return v2;
}

+ (id)screenIsDim
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"screenIsDim");
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSString *)self->_name isEqual:v4[4]]&& self->_strength == v4[2];

  return v5;
}

+ (id)accessibility:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x277CCACA8];
  objc_opt_class();
  v7 = objc_opt_class();
  if (!v5)
  {
    v9 = NSStringFromClass(v7);
    v10 = [v6 stringWithFormat:@"Value for '%@' was unexpectedly nil. Expected %@.", @"subreason", v9];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(SBKeyboardFocusLockReason *)a2 accessibility:a1, v10];
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21F335F1CLL);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SBKeyboardFocusLockReason *)v5 accessibility:a2, a1];
  }

  [(SBKeyboardFocusLockReason *)v5 accessibility:?];
  return v11;
}

+ (int64_t)maximumStrengthInSet:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v11 + 1) + 8 * v8) strength];
      if (v9 > v6)
      {
        v6 = v9;
        if (v9 == 2)
        {
          break;
        }
      }

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isMoreRecentThanReason:(id)a3
{
  v4 = a3;
  v5 = [(SBKeyboardFocusLockReason *)self timestamp];
  v6 = [v4 timestamp];

  LOBYTE(v4) = [v5 compare:v6] == 1;
  return v4;
}

+ (id)mostRecentReasonInSet:(id)a3 strength:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 strength] == a4)
        {
          if (v8)
          {
            if ([v11 isMoreRecentThanReason:v8])
            {
              v12 = v11;

              v8 = v12;
            }
          }

          else
          {
            v8 = v11;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBKeyboardFocusLockReason_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:0 block:v6];
}

id __55__SBKeyboardFocusLockReason_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:0];
  v3 = *(a1 + 32);
  v4 = NSStringFromSBKeyboardFocusLockReasonStrength(*(*(a1 + 40) + 16));
  [v3 appendString:v4 withName:0];

  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 24) withName:@"date"];
}

- (id)_initReasonWithName:(void *)a3 strength:
{
  if (result)
  {
    return [(SBKeyboardFocusLockReason *)result _initReasonWithName:a2 strength:a3 avoidOverridingAppFocusOnOtherDisplays:0];
  }

  return result;
}

- (id)_initReasonWithName:(void *)a3 strength:(char)a4 avoidOverridingAppFocusOnOtherDisplays:
{
  v8 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = SBKeyboardFocusLockReason;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 4, a2);
      a1[2] = a3;
      *(a1 + 8) = a4;
      v10 = [MEMORY[0x277CBEAA8] date];
      v11 = a1[3];
      a1[3] = v10;
    }
  }

  return a1;
}

+ (id)commandTab
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"commandTab");
  }

  return v2;
}

+ (id)coverSheetHostingApp
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"coverSheetHostingApp");
  }

  return v2;
}

+ (id)universalControl
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_0_37(&v2->super.isa, @"universalControl");
  }

  return v2;
}

+ (id)activeTransientOverlay
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_1_19(&v2->super.isa, @"activeTransientOverlay");
  }

  return v2;
}

+ (id)addWidgetSheet
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_1_19(&v2->super.isa, @"addWidgetSheet");
  }

  return v2;
}

+ (id)floatingDock
{
  v2 = [[SBKeyboardFocusLockReason alloc] _initReasonWithName:1 strength:1 avoidOverridingAppFocusOnOtherDisplays:?];

  return v2;
}

+ (id)menuBar
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_1_19(&v2->super.isa, @"menuBar");
  }

  return v2;
}

+ (id)modalAppLibrary
{
  v2 = [SBKeyboardFocusLockReason alloc];
  if (v2)
  {
    v2 = OUTLINED_FUNCTION_1_19(&v2->super.isa, @"modalAppLibrary");
  }

  return v2;
}

+ (void)accessibility:(uint64_t)a3 .cold.1(void *a1, const char *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a1 classForCoder];
  if (!v6)
  {
    v6 = objc_opt_class();
  }

  v7 = NSStringFromClass(v6);
  objc_opt_class();
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v5 stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"subreason", v7, v9];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v11 = NSStringFromSelector(a2);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138544642;
    v15 = v11;
    v16 = 2114;
    v17 = v13;
    v18 = 2048;
    v19 = a3;
    v20 = 2114;
    v21 = @"SBKeyboardFocusLockReasons.m";
    v22 = 1024;
    v23 = 120;
    v24 = 2114;
    v25 = v10;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v10 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (SBKeyboardFocusLockReason)accessibility:(void *)a1 .cold.2(void *a1, SBKeyboardFocusLockReason **a2)
{
  v4 = [SBKeyboardFocusLockReason alloc];
  v5 = [@"accessibility-" stringByAppendingString:a1];
  if (v4)
  {
    v4 = OUTLINED_FUNCTION_0_37(&v4->super.isa, v5);
  }

  *a2 = v4;

  return v4;
}

+ (void)accessibility:(uint64_t)a3 .cold.3(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"SBKeyboardFocusLockReasons.m";
  v16 = 1024;
  v17 = 120;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end
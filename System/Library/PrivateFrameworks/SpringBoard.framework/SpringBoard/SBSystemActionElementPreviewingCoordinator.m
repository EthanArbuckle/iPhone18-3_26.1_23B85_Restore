@interface SBSystemActionElementPreviewingCoordinator
- (void)_updateAnimationAndPriorityAssertions;
- (void)elementInvalidatedProperties;
- (void)initWithElement:(void *)a1;
@end

@implementation SBSystemActionElementPreviewingCoordinator

- (void)_updateAnimationAndPriorityAssertions
{
  v66 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained platformElementHost];
    v4 = [WeakRetained layoutMode];
    v5 = [*(a1 + 24) isValid];
    if ([WeakRetained isExpanding] && v4 >= 1)
    {
      if (v4 > 2)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      if (!v5 || *(a1 + 32) != v6)
      {
        v7 = SBLogSystemActionPreviewing();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v36 = SBStringFromSBSADynamicPersistentAnimation(*(a1 + 32));
          v37 = SBStringFromSBSADynamicPersistentAnimation(v6);
          OUTLINED_FUNCTION_1_16();
          v62 = 2112;
          v63 = v36;
          v64 = 2112;
          v65 = v38;
          _os_log_debug_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEBUG, "(%@) Updating expansion animation style from %@ to %@", v61, 0x20u);
        }

        [*(a1 + 24) invalidateWithReason:@"Changing animation style"];
        v8 = [v3 elementRequestsPersistentAnimationOfType:v6];
        v9 = *(a1 + 24);
        *(a1 + 24) = v8;

        *(a1 + 32) = v6;
      }
    }

    else if (v5)
    {
      v10 = SBLogSystemActionPreviewing();
      if (OUTLINED_FUNCTION_2_22(v10))
      {
        v39 = SBStringFromSBSADynamicPersistentAnimation(*(a1 + 32));
        OUTLINED_FUNCTION_1_16();
        v62 = 2112;
        v63 = v40;
        OUTLINED_FUNCTION_0_32();
        _os_log_debug_impl(v41, v42, v43, v44, v45, 0x16u);
      }

      [*(a1 + 24) invalidateWithReason:@"Stopped expanding"];
      v11 = *(a1 + 24);
      *(a1 + 24) = 0;

      *(a1 + 32) = 0;
    }

    v12 = [WeakRetained isUrgent];
    v13 = [v3 urgentAndImportantAssertion];

    if (!v12 || v13)
    {
      if (v13)
      {
        v17 = v12;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
LABEL_29:
        if (SAHasActivityBehavior())
        {
          v19 = [WeakRetained isPreviewing];
          v20 = *(a1 + 16);
          if (!v19 || v20)
          {
            if (v20)
            {
              v29 = v19;
            }

            else
            {
              v29 = 1;
            }

            if (v29)
            {
              goto LABEL_47;
            }

            v30 = SBLogSystemActionPreviewing();
            if (OUTLINED_FUNCTION_2_22(v30))
            {
              OUTLINED_FUNCTION_1_16();
              OUTLINED_FUNCTION_0_32();
              _os_log_debug_impl(v56, v57, v58, v59, v60, 0xCu);
            }

            [*(a1 + 16) invalidateWithReason:@"Stopped previewing"];
            v22 = *(a1 + 16);
            *(a1 + 16) = 0;
          }

          else
          {
            v21 = SBLogSystemActionPreviewing();
            if (OUTLINED_FUNCTION_2_22(v21))
            {
              OUTLINED_FUNCTION_1_16();
              OUTLINED_FUNCTION_0_32();
              _os_log_debug_impl(v51, v52, v53, v54, v55, 0xCu);
            }

            v22 = [WeakRetained activityHost];
            if (objc_opt_respondsToSelector())
            {
              v23 = [WeakRetained layoutMode];
              if (v23 <= 2)
              {
                v24 = 2;
              }

              else
              {
                v24 = v23;
              }

              v25 = [v22 systemManagedAlertingActivityAssertionWithReason:@"Previewing" preferredLayoutMode:v24];
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              [v25 setAutomaticallyInvalidatable:0 lockingWithKey:v27 reason:@"Previewing"];

              v28 = *(a1 + 16);
              *(a1 + 16) = v25;
            }
          }
        }

LABEL_47:

        return;
      }

      v18 = SBLogSystemActionPreviewing();
      if (OUTLINED_FUNCTION_2_22(v18))
      {
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_0_32();
        _os_log_debug_impl(v46, v47, v48, v49, v50, 0xCu);
      }

      [*(a1 + 8) invalidateWithReason:@"Not urgent"];
      v16 = *(a1 + 8);
      *(a1 + 8) = 0;
    }

    else
    {
      v14 = SBLogSystemActionPreviewing();
      if (OUTLINED_FUNCTION_2_22(v14))
      {
        OUTLINED_FUNCTION_1_16();
        OUTLINED_FUNCTION_0_32();
        _os_log_debug_impl(v31, v32, v33, v34, v35, 0xCu);
      }

      v15 = [v3 requestUrgentAndImportantPriorityWithReason:@"Urgent"];
      v16 = *(a1 + 8);
      *(a1 + 8) = v15;
    }

    goto LABEL_29;
  }
}

- (void)elementInvalidatedProperties
{
  if (a1)
  {
    [(SBSystemActionElementPreviewingCoordinator *)a1 _updateAnimationAndPriorityAssertions];
  }
}

- (void)initWithElement:(void *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [(SBSystemActionElementPreviewingCoordinator *)sel_initWithElement_ initWithElement:a1];
    }

    v7.receiver = a1;
    v7.super_class = SBSystemActionElementPreviewingCoordinator;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeWeak(v5 + 5, v4);
      a1[4] = 0;
    }
  }

  return a1;
}

- (void)initWithElement:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"element != ((void *)0)"];
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
    v15 = @"SBSystemActionElementPreviewingCoordinator.m";
    v16 = 1024;
    v17 = 30;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
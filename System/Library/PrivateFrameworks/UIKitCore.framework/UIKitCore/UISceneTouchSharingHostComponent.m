@interface UISceneTouchSharingHostComponent
@end

@implementation UISceneTouchSharingHostComponent

void __73___UISceneTouchSharingHostComponent_cancelTouchesForCurrentEventInClient__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(__UILogGetCategoryCachedImpl("TouchDelivery", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_21) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@: Sending cancellation touch delivery policy failed with error: %@", &v8, 0x16u);
  }
}

void __73___UISceneTouchSharingHostComponent_cancelTouchesForCurrentEventInClient__block_invoke_9(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) > 0.0)
  {
    v4 = [MEMORY[0x1E698E438] policyCancelingTouchesDeliveredToContextId:a2 withInitialTouchTimestamp:?];
    [*(a1 + 32) addObject:v4];
  }

  if (*(a1 + 48) > 0.0)
  {
    v5 = [MEMORY[0x1E698E438] policyCancelingTouchesDeliveredToContextId:a2 withInitialTouchTimestamp:?];
    [*(a1 + 32) addObject:v5];
  }
}

void __75___UISceneTouchSharingHostComponent_configureTouchDeliveryPolicyIfRequired__block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if (!*(v2 + 24))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_hostContextId"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = NSStringFromSelector(sel_configureTouchSharingForClientContext_);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138544642;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v12;
        *&buf[22] = 2048;
        v22 = v2;
        LOWORD(v23) = 2114;
        *(&v23 + 2) = @"_UISceneTouchSharingHostComponent.m";
        WORD5(v23) = 1024;
        HIDWORD(v23) = 161;
        v24 = 2114;
        v25 = v9;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v9 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A2D2B30);
    }

    if (!*(v2 + 32))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_policyAssertions"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(sel_configureTouchSharingForClientContext_);
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 138544642;
        *&buf[4] = v14;
        *&buf[12] = 2114;
        *&buf[14] = v16;
        *&buf[22] = 2048;
        v22 = v2;
        LOWORD(v23) = 2114;
        *(&v23 + 2) = @"_UISceneTouchSharingHostComponent.m";
        WORD5(v23) = 1024;
        HIDWORD(v23) = 162;
        v24 = 2114;
        v25 = v13;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v13 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A2D2C28);
    }

    if (!a2)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"clientContextId"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(sel_configureTouchSharingForClientContext_);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        *&buf[4] = v18;
        *&buf[12] = 2114;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        v22 = v2;
        LOWORD(v23) = 2114;
        *(&v23 + 2) = @"_UISceneTouchSharingHostComponent.m";
        WORD5(v23) = 1024;
        HIDWORD(v23) = 163;
        v24 = 2114;
        v25 = v17;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18A2D2D20);
    }

    v4 = objc_alloc_init(MEMORY[0x1E698E440]);
    v5 = [MEMORY[0x1E698E438] policyRequiringSharingOfTouchesDeliveredToChildContextId:a2 withHostContextId:*(v2 + 24)];
    v6 = [v4 endpoint];
    [v5 setAssertionEndpoint:v6];

    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __75___UISceneTouchSharingHostComponent_configureTouchSharingForClientContext___block_invoke;
    v22 = &unk_1E7128750;
    *(&v23 + 1) = sel_configureTouchSharingForClientContext_;
    v7 = v5;
    *&v23 = v7;
    v8 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler();
    if (v8)
    {
      [*(v2 + 32) addObject:v4];
      [v8 ipc_addPolicy:v7];
    }
  }
}

void __75___UISceneTouchSharingHostComponent_configureTouchSharingForClientContext___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(__UILogGetCategoryCachedImpl("TouchDelivery", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_2___s_category_3) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v7 = NSStringFromSelector(v5);
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "%@: Sending touch delivery policy %@ failed with error: %@", &v9, 0x20u);
  }
}

void __63___UISceneTouchSharingHostComponent_appendDescriptionToStream___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"policyAssertions" skipIfNil:1];
  v3 = *(a1 + 32);
  v5 = [*(a1 + 40) targetView];
  v4 = [v3 appendObject:v5 withName:@"targetView"];
}

@end
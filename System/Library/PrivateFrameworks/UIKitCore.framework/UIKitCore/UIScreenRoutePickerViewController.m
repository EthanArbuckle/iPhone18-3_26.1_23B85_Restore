@interface UIScreenRoutePickerViewController
@end

@implementation UIScreenRoutePickerViewController

void __64___UIScreenRoutePickerViewController__commonInitWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained remoteViewController];
  v2 = [v1 serviceViewControllerProxy];
  [v2 _invalidate];
}

void __64___UIScreenRoutePickerViewController__commonInitWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v7 setPublicController:WeakRetained];
  v9 = [v7 serviceViewControllerProxy];

  (*(*(a1 + 32) + 16))();
  if (v6)
  {
    v10 = objc_opt_class();
    NSLog(&cfstr_RemoteViewCont.isa, v10, v6);
    [(dispatch_semaphore_t *)WeakRetained _endDelayingPresentation];
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64___UIScreenRoutePickerViewController__commonInitWithCompletion___block_invoke_3;
    v11[3] = &unk_1E710CB38;
    v11[4] = WeakRetained;
    [v9 _prepareForDisplayWithCompletion:v11];
  }

  dispatch_semaphore_signal(WeakRetained[126]);
}

uint64_t __64___UIScreenRoutePickerViewController__commonInitWithCompletion___block_invoke_3(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) modalPresentationStyle];
  v7 = 0.0;
  if (v6 == 7)
  {
    v7 = a2;
  }

  [*(a1 + 32) setPreferredContentSize:{v7, a3}];
  v8 = *(a1 + 32);

  return [v8 _endDelayingPresentation];
}

void __53___UIScreenRoutePickerViewController_disconnectRoute__block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 1008), 0xFFFFFFFFFFFFFFFFLL);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = [*(a1 + 32) remoteViewController];

  if (has_internal_diagnostics)
  {
    if (!v3)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Failed to get remote view controller for disconnect", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_1) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Failed to get remote view controller for disconnect", buf, 2u);
    }
  }

  v4 = [*(a1 + 32) remoteViewController];
  v5 = [v4 serviceViewControllerProxy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___UIScreenRoutePickerViewController_disconnectRoute__block_invoke_21;
  v8[3] = &unk_1E70F3590;
  v8[4] = *(a1 + 32);
  [v5 _disconnectRouteWithCompletion:v8];
}

void __68___UIScreenRoutePickerViewController_setCurrentOutputDeviceEnabled___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 1008), 0xFFFFFFFFFFFFFFFFLL);
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v3 = [*(a1 + 32) remoteViewController];

  if (has_internal_diagnostics)
  {
    if (!v3)
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Failed to get remote view controller for disconnect", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v8 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_VisualizeMaterials_block_invoke_2___s_category_1) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Failed to get remote view controller for disconnect", buf, 2u);
    }
  }

  v4 = [*(a1 + 32) remoteViewController];
  v5 = [v4 serviceViewControllerProxy];
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68___UIScreenRoutePickerViewController_setCurrentOutputDeviceEnabled___block_invoke_22;
  v9[3] = &unk_1E70F3590;
  v9[4] = *(a1 + 32);
  [v5 _setCurrentOutputDeviceEnabled:v6 completion:v9];
}

@end
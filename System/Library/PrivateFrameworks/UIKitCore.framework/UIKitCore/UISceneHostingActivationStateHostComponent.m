@interface UISceneHostingActivationStateHostComponent
@end

@implementation UISceneHostingActivationStateHostComponent

void __76___UISceneHostingActivationStateHostComponent_foregroundAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UISceneHostingActivationState", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_3);
  if (*CategoryCachedImpl)
  {
    v7 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Foreground assertion relinquished: %@", &v8, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    --WeakRetained[8];
    [WeakRetained evaluateActivationState];
  }
}

void __67___UISceneHostingActivationStateHostComponent_propagateForeground___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v9 = v4;
  if (v3 == 1)
  {
    [v4 addPropagatedProperty:sel_isForeground];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    v6 = [WeakRetained _childRemoteContentRegistry];
    v7 = [v6 parentSettings];
    [v9 setForeground:{objc_msgSend(v7, "isForeground")}];

    v8 = WeakRetained;
  }

  else
  {
    [v4 removePropagatedProperty:sel_isForeground];
    v8 = v9;
  }
}

void __56___UISceneHostingActivationStateHostComponent_activate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(__UILogGetCategoryCachedImpl("UISceneHosting", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_2___s_category_1) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v11 = v9;
      v12 = [v6 localizedDescription];
      *buf = 138412802;
      v20 = v9;
      v21 = 2048;
      v22 = v10;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "<%@: %p> Encountered an error while building user activity for scene: %@", buf, 0x20u);
    }
  }

  objc_initWeak(buf, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56___UISceneHostingActivationStateHostComponent_activate___block_invoke_22;
  block[3] = &unk_1E7103FA8;
  objc_copyWeak(&v18, buf);
  v13 = *(a1 + 40);
  v16 = v5;
  v17 = v13;
  v14 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

void __56___UISceneHostingActivationStateHostComponent_activate___block_invoke_22(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56___UISceneHostingActivationStateHostComponent_activate___block_invoke_2;
  v3[3] = &unk_1E7103F80;
  v5 = a1[5];
  v4 = a1[4];
  [WeakRetained _activate:v3];
}

void __56___UISceneHostingActivationStateHostComponent_activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = v3;
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v5;
  }

  if (*(a1 + 32))
  {
    [v3 addAction:?];
    v3 = v5;
  }
}

void __87___UISceneHostingActivationStateHostComponent_activationSuppressionAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    --WeakRetained[14];
    v6 = *(__UILogGetCategoryCachedImpl("UISceneHostingActivationState", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke_3___s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5[14];
      v8 = 138412546;
      v9 = v3;
      v10 = 1024;
      v11 = v7;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Activation suppression relinquished: %@, current count: %u", &v8, 0x12u);
    }

    [v5 evaluateActivationSuppression];
  }
}

@end
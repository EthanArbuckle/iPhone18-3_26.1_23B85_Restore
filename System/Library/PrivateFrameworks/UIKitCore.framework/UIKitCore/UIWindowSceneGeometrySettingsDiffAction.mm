@interface UIWindowSceneGeometrySettingsDiffAction
@end

@implementation UIWindowSceneGeometrySettingsDiffAction

uint64_t __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if ((![*(a1 + 32) activationState] || objc_msgSend(v4, "activationState") == 1) && (objc_msgSend(*(a1 + 32), "_isPerformingSystemSnapshot") & 1) == 0)
      {
        a2 = +[UIView areAnimationsEnabled]| a2;
      }
    }
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _computeMetricsAndCrossFadeInLiveResize:a2 withTransitionContext:v6];
}

void __121___UIWindowSceneGeometrySettingsDiffAction__updateSceneGeometryWithSettingObserverContext_windowScene_transitionContext___block_invoke_26(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Orientation", &_UILiveResizeQOSAnimation_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v3 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = MEMORY[0x1E696AEC0];
        v6 = v4;
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];

        v10 = *(a1 + 32);
      }

      else
      {
        v10 = 0;
        v9 = @"(nil)";
      }

      v11 = v9;
      v12 = v9;
      v13 = [v10 _persistenceIdentifier];
      [*(a1 + 32) _interfaceOrientation];
      v14 = BSInterfaceOrientationDescription();
      v15 = NSStringFromBOOL();
      *buf = 138544130;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "%{public}@ (%{public}@) Scene did change interface orientation: %{public}@; success=%{public}@", buf, 0x2Au);
    }
  }
}

@end
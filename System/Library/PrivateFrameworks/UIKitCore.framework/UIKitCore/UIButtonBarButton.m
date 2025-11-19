@interface UIButtonBarButton
@end

@implementation UIButtonBarButton

id __36___UIButtonBarButton_layoutSubviews__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = _UIButtonBarButton;
  return objc_msgSendSuper2(&v2, sel_layoutSubviews);
}

UISpringLoadedInteraction *__38___UIButtonBarButton_setSpringLoaded___block_invoke(uint64_t a1)
{
  v2 = [UISpringLoadedInteraction alloc];
  v3 = [*(a1 + 32) buttonSpringLoadedInteractionBehavior];
  v4 = [*(a1 + 32) buttonSpringLoadedInteractionEffect];
  v5 = [(UISpringLoadedInteraction *)v2 initWithInteractionBehavior:v3 interactionEffect:v4 activationHandler:&__block_literal_global_185];

  return v5;
}

void __38___UIButtonBarButton_setSpringLoaded___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 view];
  [v2 sendActionsForControlEvents:64];
}

uint64_t __76___UIButtonBarButton_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __49___UIButtonBarButton__applyDeferredSymbolEffects__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (a2 == 2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      if (v9)
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          v17 = 138412290;
          v18 = v9;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Deferred RemoveAll operation found non-nil effect %@", &v17, 0xCu);
        }
      }
    }

    else if (v9)
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B288) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Deferred RemoveAll operation found non-nil effect %@", &v17, 0xCu);
      }
    }

    [*(a1 + 32) removeAllSymbolEffectsWithOptions:v10 animated:a5];
  }

  else if (a2 == 1)
  {
    [*(a1 + 32) removeSymbolEffectOfType:v9 options:v10 animated:a5];
  }

  else if (a2)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v16 = "no";
        v17 = 134218754;
        v18 = a2;
        v19 = 2112;
        if (a5)
        {
          v16 = "yes";
        }

        v20 = v9;
        v21 = 2112;
        v22 = v10;
        v23 = 2080;
        v24 = v16;
        _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Operation %li encountered while trying to apply deferred symbol effects (effect=%@, options=%@, animated=%s)", &v17, 0x2Au);
      }
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B290) + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = "no";
        v17 = 134218754;
        v18 = a2;
        v19 = 2112;
        if (a5)
        {
          v12 = "yes";
        }

        v20 = v9;
        v21 = 2112;
        v22 = v10;
        v23 = 2080;
        v24 = v12;
        _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Operation %li encountered while trying to apply deferred symbol effects (effect=%@, options=%@, animated=%s)", &v17, 0x2Au);
      }
    }
  }

  else
  {
    [*(a1 + 32) addSymbolEffect:v9 options:v10 animated:a5];
  }
}

@end
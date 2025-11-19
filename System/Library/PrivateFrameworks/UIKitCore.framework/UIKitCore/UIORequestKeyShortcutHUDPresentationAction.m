@interface UIORequestKeyShortcutHUDPresentationAction
@end

@implementation UIORequestKeyShortcutHUDPresentationAction

void __85___UIORequestKeyShortcutHUDPresentationAction_initWithConfiguration_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];

  if (v3)
  {
    v3 = objc_opt_new();
    [v3 setAccepted:0];
  }

  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v7 response];

    v3 = v6;
  }

  (*(*(a1 + 32) + 16))();
}

void __75___UIORequestKeyShortcutHUDPresentationAction_performActionFromConnection___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) canSendResponse])
  {
    v3 = *(a1 + 32);
    v4 = [_UIORequestKeyShortcutHUDPresentationActionResponse _responseWithHUDPresentationResponse:v5];
    [v3 sendResponse:v4];
  }
}

void __75___UIORequestKeyShortcutHUDPresentationAction_performActionFromConnection___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 windowScene];
  if (v4)
  {
    v5 = +[_UIKeyShortcutHUDServer sharedHUDServer];
    v6 = [*(a1 + 32) configuration];
    v7 = [v3 windowScene];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75___UIORequestKeyShortcutHUDPresentationAction_performActionFromConnection___block_invoke_12;
    v12[3] = &unk_1E7123FD0;
    v8 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v5 presentHUDWithConfiguration:v6 inWindowScene:v7 forConnection:v8 completionHandler:v12];

    v9 = v13;
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "The keyboard shortcut HUD failed to find a window scene in OverlayUI to present in. displayDelegate = %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = *(__UILogGetCategoryCachedImpl("Assert", &_UIInternalPreference_KeyShortcutHUDEnhancedLogging_block_invoke___s_category) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v3;
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "The keyboard shortcut HUD failed to find a window scene in OverlayUI to present in. displayDelegate = %@", buf, 0xCu);
      }
    }

    v9 = objc_opt_new();
    [v9 setAccepted:0];
    (*(*(a1 + 48) + 16))();
  }
}

@end
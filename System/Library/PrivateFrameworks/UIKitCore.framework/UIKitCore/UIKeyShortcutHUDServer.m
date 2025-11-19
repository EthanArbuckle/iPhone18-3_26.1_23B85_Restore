@interface UIKeyShortcutHUDServer
@end

@implementation UIKeyShortcutHUDServer

void __42___UIKeyShortcutHUDServer_sharedHUDServer__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _MergedGlobals_1149;
  _MergedGlobals_1149 = v0;
}

uint64_t __101___UIKeyShortcutHUDServer_presentHUDWithConfiguration_inWindowScene_forConnection_completionHandler___block_invoke(uint64_t a1)
{
  v2 = _UIKeyShortcutHUDLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_DEFAULT, "Server did request keyboard focus to OverlayUI", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __101___UIKeyShortcutHUDServer_presentHUDWithConfiguration_inWindowScene_forConnection_completionHandler___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] &= ~1u;
  }
}

void __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_2;
  block[3] = &unk_1E70F6228;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setPasteAuthenticationMessage:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained setHudWindow:0];
    [v9 setSession:0];
    if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled]&& _UIApplicationProcessIsOverlayUI())
    {
      v3 = [v9 modifierKeyListener];
      [v3 setCurrentModifierFlags:0];
    }

    v4 = [*(a1 + 32) keyWindow];
    v5 = +[UIWindow _applicationKeyWindow];
    v6 = *(a1 + 40);

    if (v5 == v6)
    {
      if (v4)
      {
        [v4 makeKeyWindow];
        if (!+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
        {
          v7 = [*(a1 + 48) keyCommand];

          if (v7)
          {
            [v4 updateFocusIfNeeded];
          }
        }
      }
    }

    [*(a1 + 40) setHidden:1];
    v9[8] &= ~2u;
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"UIKeyShortcutHUDDidDismissNotification" object:*(a1 + 40)];

    dispatch_group_leave(*(a1 + 56));
    WeakRetained = v9;
  }
}

void __59___UIKeyShortcutHUDServer__dismissHUDWithSelectedShortcut___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _sendResponse:*(a1 + 40) withSession:*(a1 + 48)];
  if (+[UIKeyShortcutHUDService _isOOPFeatureEnabled])
  {
    getSBSKeyboardFocusServiceClass();
    v2 = objc_opt_new();
    v3 = [*(a1 + 56) windowScene];
    v4 = [*(a1 + 32) systemKeyCommandOverlayRulesToken];

    if (v4)
    {
      v5 = [*(a1 + 32) systemKeyCommandOverlayRulesToken];
      [v5 invalidate];

      [*(a1 + 32) setSystemKeyCommandOverlayRulesToken:0];
      v6 = _UIKeyShortcutHUDLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Server stopped pointing systemKeyCommandOverlay environment to OverlayUI", buf, 2u);
      }
    }

    v7 = [v3 _FBSScene];
    v8 = [v7 identityToken];
    [v2 removeKeyboardFocusFromSceneIdentity:v8 processID:getpid()];

    v9 = _UIKeyShortcutHUDLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Server stopped pointing keyboard focus to OverlayUI", v10, 2u);
    }
  }
}

void __79___UIKeyShortcutHUDServer_keyShortcutHUDViewControllerDidBeginTypeAheadSearch___block_invoke(uint64_t a1)
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 performDelete];
  [v2 handleKeyEvent:*(a1 + 32)];
}

@end
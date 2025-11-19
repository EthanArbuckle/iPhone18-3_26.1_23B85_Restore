@interface UIONavigationBarTitleRenamerConnectionAction
@end

@implementation UIONavigationBarTitleRenamerConnectionAction

void __88___UIONavigationBarTitleRenamerConnectionAction_initWithSession_action_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __88___UIONavigationBarTitleRenamerConnectionAction_initWithSession_action_responseHandler___block_invoke_2;
  v6[3] = &unk_1E70F4A50;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __90___UIONavigationBarTitleRenamerConnectionAction__setupKeyboardEventDeferralForConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 windowScene];
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v6 = _MergedGlobals_1374;
    v15 = _MergedGlobals_1374;
    if (!_MergedGlobals_1374)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __getSBSKeyboardFocusServiceClass_block_invoke_1;
      v11[3] = &unk_1E70F2F20;
      v11[4] = &v12;
      __getSBSKeyboardFocusServiceClass_block_invoke_1(v11);
      v6 = v13[3];
    }

    v7 = v6;
    _Block_object_dispose(&v12, 8);
    v8 = objc_opt_new();
    v9 = [v5 _FBSScene];
    v10 = [v9 identityToken];

    [v8 requestKeyboardFocusForSceneIdentity:v10 processID:getpid() completion:&__block_literal_global_680];
    [*(a1 + 32) setKfService:v8];
  }

  else
  {
    v5 = UIOLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "_UIONavigationBarTitleRenamerConnectionAction: No display delegate available to set up keyboard event deferral", v11, 2u);
    }
  }
}

void __90___UIONavigationBarTitleRenamerConnectionAction__addViewToHierarchyForConnection_session___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 rootViewController];
    v9 = [v3 view];

    [v9 addSubview:*(a1 + 48)];
    [*(a1 + 48) becomeFirstResponder];
  }

  else
  {
    v4 = UIOLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "_UIONavigationBarTitleRenamerConnectionAction No display delegate available for view hierarchy population.", buf, 2u);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB5E8B0 code:-1 userInfo:0];
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:0 error:v5];
    [v6 sendResponse:v7];

    v8 = +[_UINavigationBarTitleRenamer renameServer];
    [v8 endSession:*(a1 + 40)];
  }
}

@end
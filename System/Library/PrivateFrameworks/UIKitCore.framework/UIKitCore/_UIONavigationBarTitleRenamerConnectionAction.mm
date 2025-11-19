@interface _UIONavigationBarTitleRenamerConnectionAction
- (_UIONavigationBarTitleRenamerConnectionAction)initWithSession:(id)a3 action:(int64_t)a4 responseHandler:(id)a5;
- (void)_addViewToHierarchyForConnection:(id)a3 session:(id)a4;
- (void)_removeViewFromHierarchyForConnection:(id)a3 session:(id)a4;
- (void)_setupKeyboardEventDeferralForConnection:(id)a3;
- (void)_teardownKeyboardEventDeferralForConnection:(id)a3;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIONavigationBarTitleRenamerConnectionAction

- (_UIONavigationBarTitleRenamerConnectionAction)initWithSession:(id)a3 action:(int64_t)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v10 setObject:v11 forSetting:0];

  if ((a4 - 1) >= 2)
  {
    if (!a4)
    {
      [v10 setObject:v8 forSetting:1];
    }
  }

  else
  {
    v12 = [v8 sessionIdentifier];
    [v10 setObject:v12 forSetting:2];
  }

  v13 = MEMORY[0x1E698E5F8];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __88___UIONavigationBarTitleRenamerConnectionAction_initWithSession_action_responseHandler___block_invoke;
  v19[3] = &unk_1E7108B40;
  v20 = v9;
  v14 = v9;
  v15 = [v13 responderWithHandler:v19];
  v18.receiver = self;
  v18.super_class = _UIONavigationBarTitleRenamerConnectionAction;
  v16 = [(_UIOServerAction *)&v18 initWithOriginContext:0 info:v10 responder:v15];

  return v16;
}

- (void)_setupKeyboardEventDeferralForConnection:(id)a3
{
  v4 = [a3 server];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90___UIONavigationBarTitleRenamerConnectionAction__setupKeyboardEventDeferralForConnection___block_invoke;
  v5[3] = &unk_1E711AD28;
  v5[4] = self;
  [v4 awaitDisplayDelegateForAction:self sceneType:2 timeout:v5 completion:1.0];
}

- (void)_teardownKeyboardEventDeferralForConnection:(id)a3
{
  v4 = [a3 server];
  v5 = [v4 displayDelegateForAction:self sceneType:2];
  v9 = [v5 windowScene];

  v6 = [(_UIONavigationBarTitleRenamerConnectionAction *)self kfService];
  v7 = [v9 _FBSScene];
  v8 = [v7 identityToken];
  [v6 removeKeyboardFocusFromSceneIdentity:v8 processID:getpid()];

  [(_UIONavigationBarTitleRenamerConnectionAction *)self setKfService:0];
}

- (void)_addViewToHierarchyForConnection:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 renamerContentView];
  v9 = [v8 superview];

  if (!v9)
  {
    v10 = [v6 server];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90___UIONavigationBarTitleRenamerConnectionAction__addViewToHierarchyForConnection_session___block_invoke;
    v11[3] = &unk_1E71294B0;
    v11[4] = self;
    v12 = v7;
    v13 = v8;
    [v10 awaitDisplayDelegateForAction:self sceneType:2 timeout:v11 completion:1.0];
  }
}

- (void)_removeViewFromHierarchyForConnection:(id)a3 session:(id)a4
{
  v4 = [a4 existingRenamerContentView];
  [v4 removeFromSuperview];
}

- (void)performActionFromConnection:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIONavigationBarTitleRenamerConnectionAction *)self canSendResponse])
  {
    v5 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
    v6 = [v5 objectForSetting:0];
    v7 = [v6 intValue];

    v8 = +[_UINavigationBarTitleRenamer renameServer];
    if (v7 == 2)
    {
      v17 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
      v10 = [v17 objectForSetting:2];

      if (v10)
      {
        v16 = [v8 sessionWithIdentifier:v10];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v16 cancelSessionAndNotify:0];
            goto LABEL_16;
          }
        }

LABEL_19:
        v18 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB5E8B0 code:1 userInfo:0];
        v19 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:0 error:v18];
        [(_UIONavigationBarTitleRenamerConnectionAction *)self sendResponse:v19];

        goto LABEL_20;
      }
    }

    else
    {
      if (v7 != 1)
      {
        if (v7)
        {
LABEL_28:
          v10 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:0 error:0];
          [(_UIONavigationBarTitleRenamerConnectionAction *)self sendResponse:v10];
          goto LABEL_29;
        }

        v9 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
        v10 = [v9 objectForSetting:1];

        if (v10)
        {
          v25 = 0u;
          v26 = 0u;
          v11 = [v4 connection];
          v12 = [v11 remoteProcess];
          v13 = [v12 auditToken];
          v14 = v13;
          if (v13)
          {
            [v13 realToken];
          }

          else
          {
            v25 = 0u;
            v26 = 0u;
          }

          v20 = [v10 fileURL];
          v21 = [v20 fileSystemRepresentation];

          *buf = v25;
          v28 = v26;
          if (!sandbox_check_by_audit_token())
          {
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _setupKeyboardEventDeferralForConnection:v4, v21];
            [v10 setConnection:v4];
            [v8 startSession:v10];
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _addViewToHierarchyForConnection:v4 session:v10];
            goto LABEL_27;
          }

          CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &performActionFromConnection____s_category);
          if ((*CategoryCachedImpl & 1) == 0)
          {
            goto LABEL_27;
          }

          v23 = *(CategoryCachedImpl + 8);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_27;
          }

          v16 = v23;
          v24 = [v10 sessionIdentifier];
          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "[%@] Dropping connection due to failed sandbox validation.", buf, 0xCu);

LABEL_17:
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v15 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
      v10 = [v15 objectForSetting:2];

      if (v10)
      {
        v16 = [v8 sessionWithIdentifier:v10];
        if (v16)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 endSession:v16];
LABEL_16:
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _removeViewFromHierarchyForConnection:v4 session:v16];
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _teardownKeyboardEventDeferralForConnection:v4];
            goto LABEL_17;
          }
        }

        goto LABEL_19;
      }
    }

LABEL_18:
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1EFB5E8B0 code:-1 userInfo:0];
    v16 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:0 error:v10];
    [(_UIONavigationBarTitleRenamerConnectionAction *)self sendResponse:v16];
LABEL_20:

LABEL_29:
  }
}

@end
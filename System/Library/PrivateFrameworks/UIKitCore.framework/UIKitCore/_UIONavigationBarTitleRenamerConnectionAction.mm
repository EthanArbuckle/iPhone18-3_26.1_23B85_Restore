@interface _UIONavigationBarTitleRenamerConnectionAction
- (_UIONavigationBarTitleRenamerConnectionAction)initWithSession:(id)session action:(int64_t)action responseHandler:(id)handler;
- (void)_addViewToHierarchyForConnection:(id)connection session:(id)session;
- (void)_removeViewFromHierarchyForConnection:(id)connection session:(id)session;
- (void)_setupKeyboardEventDeferralForConnection:(id)connection;
- (void)_teardownKeyboardEventDeferralForConnection:(id)connection;
- (void)performActionFromConnection:(id)connection;
@end

@implementation _UIONavigationBarTitleRenamerConnectionAction

- (_UIONavigationBarTitleRenamerConnectionAction)initWithSession:(id)session action:(int64_t)action responseHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E698E700]);
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:action];
  [v10 setObject:v11 forSetting:0];

  if ((action - 1) >= 2)
  {
    if (!action)
    {
      [v10 setObject:sessionCopy forSetting:1];
    }
  }

  else
  {
    sessionIdentifier = [sessionCopy sessionIdentifier];
    [v10 setObject:sessionIdentifier forSetting:2];
  }

  v13 = MEMORY[0x1E698E5F8];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __88___UIONavigationBarTitleRenamerConnectionAction_initWithSession_action_responseHandler___block_invoke;
  v19[3] = &unk_1E7108B40;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = [v13 responderWithHandler:v19];
  v18.receiver = self;
  v18.super_class = _UIONavigationBarTitleRenamerConnectionAction;
  v16 = [(_UIOServerAction *)&v18 initWithOriginContext:0 info:v10 responder:v15];

  return v16;
}

- (void)_setupKeyboardEventDeferralForConnection:(id)connection
{
  server = [connection server];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __90___UIONavigationBarTitleRenamerConnectionAction__setupKeyboardEventDeferralForConnection___block_invoke;
  v5[3] = &unk_1E711AD28;
  v5[4] = self;
  [server awaitDisplayDelegateForAction:self sceneType:2 timeout:v5 completion:1.0];
}

- (void)_teardownKeyboardEventDeferralForConnection:(id)connection
{
  server = [connection server];
  v5 = [server displayDelegateForAction:self sceneType:2];
  windowScene = [v5 windowScene];

  kfService = [(_UIONavigationBarTitleRenamerConnectionAction *)self kfService];
  _FBSScene = [windowScene _FBSScene];
  identityToken = [_FBSScene identityToken];
  [kfService removeKeyboardFocusFromSceneIdentity:identityToken processID:getpid()];

  [(_UIONavigationBarTitleRenamerConnectionAction *)self setKfService:0];
}

- (void)_addViewToHierarchyForConnection:(id)connection session:(id)session
{
  connectionCopy = connection;
  sessionCopy = session;
  renamerContentView = [sessionCopy renamerContentView];
  superview = [renamerContentView superview];

  if (!superview)
  {
    server = [connectionCopy server];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90___UIONavigationBarTitleRenamerConnectionAction__addViewToHierarchyForConnection_session___block_invoke;
    v11[3] = &unk_1E71294B0;
    v11[4] = self;
    v12 = sessionCopy;
    v13 = renamerContentView;
    [server awaitDisplayDelegateForAction:self sceneType:2 timeout:v11 completion:1.0];
  }
}

- (void)_removeViewFromHierarchyForConnection:(id)connection session:(id)session
{
  existingRenamerContentView = [session existingRenamerContentView];
  [existingRenamerContentView removeFromSuperview];
}

- (void)performActionFromConnection:(id)connection
{
  v29 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if ([(_UIONavigationBarTitleRenamerConnectionAction *)self canSendResponse])
  {
    info = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
    v6 = [info objectForSetting:0];
    intValue = [v6 intValue];

    v8 = +[_UINavigationBarTitleRenamer renameServer];
    if (intValue == 2)
    {
      info2 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
      v10 = [info2 objectForSetting:2];

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
      if (intValue != 1)
      {
        if (intValue)
        {
LABEL_28:
          v10 = [objc_alloc(MEMORY[0x1E698E600]) initWithInfo:0 error:0];
          [(_UIONavigationBarTitleRenamerConnectionAction *)self sendResponse:v10];
          goto LABEL_29;
        }

        info3 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
        v10 = [info3 objectForSetting:1];

        if (v10)
        {
          v25 = 0u;
          v26 = 0u;
          connection = [connectionCopy connection];
          remoteProcess = [connection remoteProcess];
          auditToken = [remoteProcess auditToken];
          v14 = auditToken;
          if (auditToken)
          {
            [auditToken realToken];
          }

          else
          {
            v25 = 0u;
            v26 = 0u;
          }

          fileURL = [v10 fileURL];
          fileSystemRepresentation = [fileURL fileSystemRepresentation];

          *buf = v25;
          v28 = v26;
          if (!sandbox_check_by_audit_token())
          {
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _setupKeyboardEventDeferralForConnection:connectionCopy, fileSystemRepresentation];
            [v10 setConnection:connectionCopy];
            [v8 startSession:v10];
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _addViewToHierarchyForConnection:connectionCopy session:v10];
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
          sessionIdentifier = [v10 sessionIdentifier];
          *buf = 138412290;
          *&buf[4] = sessionIdentifier;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "[%@] Dropping connection due to failed sandbox validation.", buf, 0xCu);

LABEL_17:
LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_18;
      }

      info4 = [(_UIONavigationBarTitleRenamerConnectionAction *)self info];
      v10 = [info4 objectForSetting:2];

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
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _removeViewFromHierarchyForConnection:connectionCopy session:v16];
            [(_UIONavigationBarTitleRenamerConnectionAction *)self _teardownKeyboardEventDeferralForConnection:connectionCopy];
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
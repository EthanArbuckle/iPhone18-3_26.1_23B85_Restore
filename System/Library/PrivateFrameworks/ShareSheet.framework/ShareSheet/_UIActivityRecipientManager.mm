@interface _UIActivityRecipientManager
+ (id)createRemoteDataProxyWithErrorHandler:(id)handler;
+ (void)requestMessagesRecipientInfoForSessionID:(id)d completionHandler:(id)handler;
+ (void)requestRecipientsForSessionID:(id)d completionHandler:(id)handler;
+ (void)requestRecipientsV2ForSessionID:(id)d completionHandler:(id)handler;
@end

@implementation _UIActivityRecipientManager

+ (void)requestMessagesRecipientInfoForSessionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = _os_activity_create(&dword_18B359000, "Sharing/_UIActivityRecipientManager/requestMessagesRecipientInfoForSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __90___UIActivityRecipientManager_requestMessagesRecipientInfoForSessionID_completionHandler___block_invoke;
    v12[3] = &unk_1E71FAE50;
    v8 = handlerCopy;
    v13 = v8;
    v9 = [_UIActivityRecipientManager createRemoteDataProxyWithErrorHandler:v12];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __90___UIActivityRecipientManager_requestMessagesRecipientInfoForSessionID_completionHandler___block_invoke_2;
      v10[3] = &unk_1E71FB250;
      v11 = v8;
      [v9 requestMessagesRecipientInfoForSessionID:dCopy completionHandler:v10];
    }

    else
    {
      (*(v8 + 2))(v8, 0, 0, 0);
    }

    os_activity_scope_leave(&state);
  }
}

+ (void)requestRecipientsForSessionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = _os_activity_create(&dword_18B359000, "Sharing/_UIActivityRecipientManager/requestRecipientsForSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79___UIActivityRecipientManager_requestRecipientsForSessionID_completionHandler___block_invoke;
    v12[3] = &unk_1E71FAE50;
    v8 = handlerCopy;
    v13 = v8;
    v9 = [_UIActivityRecipientManager createRemoteDataProxyWithErrorHandler:v12];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __79___UIActivityRecipientManager_requestRecipientsForSessionID_completionHandler___block_invoke_4;
      v10[3] = &unk_1E71FB278;
      v11 = v8;
      [v9 requestRecipientsForSessionID:dCopy completionHandler:v10];
    }

    else
    {
      (*(v8 + 2))(v8, 0);
    }

    os_activity_scope_leave(&state);
  }
}

+ (void)requestRecipientsV2ForSessionID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v7 = _os_activity_create(&dword_18B359000, "Sharing/_UIActivityRecipientManager/requestRecipientsV2ForSessionID", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v7, &state);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81___UIActivityRecipientManager_requestRecipientsV2ForSessionID_completionHandler___block_invoke;
    v12[3] = &unk_1E71FAE50;
    v8 = handlerCopy;
    v13 = v8;
    v9 = [_UIActivityRecipientManager createRemoteDataProxyWithErrorHandler:v12];
    if (v9)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __81___UIActivityRecipientManager_requestRecipientsV2ForSessionID_completionHandler___block_invoke_7;
      v10[3] = &unk_1E71FB278;
      v11 = v8;
      [v9 requestRecipientsForSessionID:dCopy completionHandler:v10];
    }

    else
    {
      (*(v8 + 2))(v8, 0);
    }

    os_activity_scope_leave(&state);
  }
}

+ (id)createRemoteDataProxyWithErrorHandler:(id)handler
{
  v3 = MEMORY[0x1E696B0B8];
  handlerCopy = handler;
  v5 = [[v3 alloc] initWithMachServiceName:@"com.apple.sharing.sharesheetrecipients" options:0];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF363A8];
  [v6 setClass:objc_opt_class() forSelector:sel_requestMessagesRecipientInfoForSessionID_completionHandler_ argumentIndex:0 ofReply:1];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v6 setClasses:v9 forSelector:sel_requestRecipientsForSessionID_completionHandler_ argumentIndex:0 ofReply:1];

  [v5 setRemoteObjectInterface:v6];
  [v5 resume];
  v10 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v10;
}

@end
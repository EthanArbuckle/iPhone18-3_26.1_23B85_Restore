@interface _UIActivityUserDefaultsManager
+ (void)requestFavoritesForActivityCategory:(int64_t)category completionHandler:(id)handler;
@end

@implementation _UIActivityUserDefaultsManager

+ (void)requestFavoritesForActivityCategory:(int64_t)category completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    v6 = _os_activity_create(&dword_18B359000, "Sharing/_UIActivityUserDefaultsManager/requestFavoritesForActivityCategory", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v6, &state);
    if (requestFavoritesForActivityCategory_completionHandler__onceToken != -1)
    {
      +[_UIActivityUserDefaultsManager requestFavoritesForActivityCategory:completionHandler:];
    }

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.sharing.sharesheetuserdefaults" options:0];
    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EFF362E8];
    [v7 setRemoteObjectInterface:v8];

    [v7 _setQueue:requestFavoritesForActivityCategory_completionHandler__xpc_queue];
    [v7 resume];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88___UIActivityUserDefaultsManager_requestFavoritesForActivityCategory_completionHandler___block_invoke_2;
    v12[3] = &unk_1E71FAE50;
    v9 = handlerCopy;
    v13 = v9;
    v10 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v12];
    v11 = v10;
    if (v10)
    {
      [v10 requestFavoritesForActivityCategory:category completionHandler:v9];
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }

    os_activity_scope_leave(&state);
  }
}

@end
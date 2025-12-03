@interface SFCollaborationUserDefaultsManager
+ (id)_createRemoteDataProxyWithErrorHandler:(id)handler;
+ (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier;
@end

@implementation SFCollaborationUserDefaultsManager

+ (void)requestCollaborativeModeForContentIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFCollaborationUserDefaultsManager/requestCollaborativeModeForContentIdentifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v8, &state);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __101__SFCollaborationUserDefaultsManager_requestCollaborativeModeForContentIdentifier_completionHandler___block_invoke;
    v12[3] = &unk_1E788B6D8;
    v9 = handlerCopy;
    v13 = v9;
    v10 = [self _createRemoteDataProxyWithErrorHandler:v12];
    v11 = v10;
    if (v10)
    {
      [v10 requestCollaborativeModeForContentIdentifier:identifierCopy completionHandler:v9];
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }

    os_activity_scope_leave(&state);
  }
}

void __101__SFCollaborationUserDefaultsManager_requestCollaborativeModeForContentIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = share_sheet_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __101__SFCollaborationUserDefaultsManager_requestCollaborativeModeForContentIdentifier_completionHandler___block_invoke_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)saveCollaborativeMode:(id)mode forContentIdentifier:(id)identifier
{
  modeCopy = mode;
  identifierCopy = identifier;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFCollaborationUserDefaultsManager/saveCollaborativeMode", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v8, &v11);
  v9 = [self _createRemoteDataProxyWithErrorHandler:&__block_literal_global_8];
  v10 = v9;
  if (v9)
  {
    [v9 saveCollaborativeMode:modeCopy forContentIdentifier:identifierCopy];
  }

  os_activity_scope_leave(&v11);
}

void __81__SFCollaborationUserDefaultsManager_saveCollaborativeMode_forContentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = share_sheet_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __101__SFCollaborationUserDefaultsManager_requestCollaborativeModeForContentIdentifier_completionHandler___block_invoke_cold_1(v2, v3);
  }
}

+ (id)_createRemoteDataProxyWithErrorHandler:(id)handler
{
  v3 = MEMORY[0x1E696B0B8];
  handlerCopy = handler;
  v5 = [[v3 alloc] initWithMachServiceName:@"com.apple.sharing.collaborationuserdefaults" options:0];
  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE720];
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v7;
}

void __101__SFCollaborationUserDefaultsManager_requestCollaborativeModeForContentIdentifier_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Share Sheet User Defaults: Error getting synchronous remote object proxy %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
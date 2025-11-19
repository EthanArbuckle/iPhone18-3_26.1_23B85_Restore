@interface SBSFocusModesHomeScreenSettingsService
+ (id)activateConnection;
+ (void)addSuggestedHomeScreenPageWithRequest:(id)a3;
+ (void)homeScreenSnapshotsForSuggestedPagesWithRequest:(id)a3 completion:(id)a4;
+ (void)homeScreenSnapshotsWithRequest:(id)a3 completion:(id)a4;
+ (void)updateFocusModeHomeScreenSettingsWithRequest:(id)a3;
@end

@implementation SBSFocusModesHomeScreenSettingsService

+ (void)homeScreenSnapshotsWithRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() activateConnection];
  v8 = [v7 remoteTarget];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__SBSFocusModesHomeScreenSettingsService_homeScreenSnapshotsWithRequest_completion___block_invoke;
  v11[3] = &unk_1E7361A28;
  v12 = v7;
  v13 = v5;
  v9 = v7;
  v10 = v5;
  [v8 homeScreenSnapshotsWithRequest:v6 completion:v11];
}

void __84__SBSFocusModesHomeScreenSettingsService_homeScreenSnapshotsWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v10 = v7;
    v8 = v5;
    v9 = v6;
    BSDispatchMain();
  }

  [*(a1 + 32) invalidate];
}

+ (void)homeScreenSnapshotsForSuggestedPagesWithRequest:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() activateConnection];
  v8 = [v7 remoteTarget];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __101__SBSFocusModesHomeScreenSettingsService_homeScreenSnapshotsForSuggestedPagesWithRequest_completion___block_invoke;
  v11[3] = &unk_1E7361A28;
  v12 = v7;
  v13 = v5;
  v9 = v7;
  v10 = v5;
  [v8 homeScreenSnapshotsForSuggestedPagesWithRequest:v6 completion:v11];
}

void __101__SBSFocusModesHomeScreenSettingsService_homeScreenSnapshotsForSuggestedPagesWithRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v10 = v7;
    v8 = v5;
    v9 = v6;
    BSDispatchMain();
  }

  [*(a1 + 32) invalidate];
}

+ (void)updateFocusModeHomeScreenSettingsWithRequest:(id)a3
{
  v3 = a3;
  v5 = [objc_opt_class() activateConnection];
  v4 = [v5 remoteTarget];
  [v4 updateFocusModeHomeScreenSettingsWithRequest:v3];

  [v5 invalidate];
}

+ (void)addSuggestedHomeScreenPageWithRequest:(id)a3
{
  v3 = a3;
  v5 = [objc_opt_class() activateConnection];
  v4 = [v5 remoteTarget];
  [v4 addSuggestedHomeScreenPageWithRequest:v3];

  [v5 invalidate];
}

+ (id)activateConnection
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698F498];
  v4 = [MEMORY[0x1E698F498] defaultShellMachName];
  v5 = +[SBSFocusModesHomeScreenSettingsServiceInterfaceSpecification identifier];
  v6 = [v3 endpointForMachName:v4 service:v5 instance:0];

  v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.springboard.focus-modes-home-screen-settings-service.connectionQueue", v8);

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __60__SBSFocusModesHomeScreenSettingsService_activateConnection__block_invoke;
  v16 = &unk_1E7360370;
  v17 = v9;
  v18 = a1;
  v10 = v9;
  [v7 configureConnection:&v13];
  v11 = SBLogFocusModes();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_19169D000, v11, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
  }

  [v7 activate];

  return v7;
}

void __60__SBSFocusModesHomeScreenSettingsService_activateConnection__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSFocusModesHomeScreenSettingsServiceInterfaceSpecification interface];
  [v5 setInterface:v3];

  v4 = +[SBSFocusModesHomeScreenSettingsServiceInterfaceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setInterfaceTarget:*(a1 + 40)];
  [v5 setTargetQueue:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_53];
  [v5 setInterruptionHandler:&__block_literal_global_8_0];
  [v5 setInvalidationHandler:&__block_literal_global_11_0];
}

void __60__SBSFocusModesHomeScreenSettingsService_activateConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogFocusModes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __60__SBSFocusModesHomeScreenSettingsService_activateConnection__block_invoke_6(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogFocusModes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v4, 0xCu);
  }

  [v2 activate];
}

void __60__SBSFocusModesHomeScreenSettingsService_activateConnection__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogFocusModes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __76__SBSSystemNotesPresentationClientToServerProxy__setupAndActivateConnection__block_invoke_19_cold_1(v2, v3);
  }
}

@end
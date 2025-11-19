@interface SBSWebClipService
+ (id)_setupAndActivateServiceConnection;
+ (void)launchWebClipWithIdentifier:(id)a3 origin:(unint64_t)a4;
+ (void)updateWebClipPropertiesWithIdentifier:(id)a3;
@end

@implementation SBSWebClipService

+ (void)launchWebClipWithIdentifier:(id)a3 origin:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = SBLogWebClip();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = v9;
    if (a4 > 3)
    {
      v11 = @"Unknown";
    }

    else
    {
      v11 = off_1E73606F8[a4];
    }

    v15 = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v6;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_19169D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request to launch web clip with identifier: %{public}@ origin:%{public}@", &v15, 0x20u);
  }

  v12 = [a1 _setupAndActivateServiceConnection];
  v13 = [v12 remoteTarget];
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v13 launchWebClipWithIdentifier:v6 origin:v14];

  [v12 invalidate];
}

+ (void)updateWebClipPropertiesWithIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogWebClip();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_19169D000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request to update web clip properties with identifier: %{public}@", &v10, 0x16u);
  }

  v8 = [a1 _setupAndActivateServiceConnection];
  v9 = [v8 remoteTarget];
  [v9 updateWebClipPropertiesWithIdentifier:v4];

  [v8 invalidate];
}

+ (id)_setupAndActivateServiceConnection
{
  v3 = MEMORY[0x1E698F498];
  v4 = [MEMORY[0x1E698F498] defaultShellMachName];
  v5 = +[SBSWebClipServiceSessionSpecification identifier];
  v6 = [v3 endpointForMachName:v4 service:v5 instance:0];

  v7 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke;
  v9[3] = &__block_descriptor_40_e42_v16__0___BSServiceConnectionConfiguring__8l;
  v9[4] = a1;
  [v7 configureConnection:v9];
  [v7 activate];

  return v7;
}

void __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBSWebClipServiceSessionSpecification interface];
  [v2 setInterface:v3];

  v4 = +[SBSWebClipServiceSessionSpecification serviceQuality];
  [v2 setServiceQuality:v4];

  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke_2;
  v14[3] = &unk_1E73606B8;
  v7 = v6;
  v15 = v7;
  [v2 setActivationHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke_17;
  v12[3] = &unk_1E73606B8;
  v8 = v7;
  v13 = v8;
  [v2 setInterruptionHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke_18;
  v10[3] = &unk_1E73606B8;
  v11 = v8;
  v9 = v8;
  [v2 setInvalidationHandler:v10];
}

void __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogWebClip();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Received activation for connection: %{public}@", &v6, 0x16u);
  }
}

void __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke_17(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogWebClip();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Received interruption for connection: %{public}@", &v6, 0x16u);
  }
}

void __55__SBSWebClipService__setupAndActivateServiceConnection__block_invoke_18(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogWebClip();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Received invalidation for connection: %{public}@", &v6, 0x16u);
  }
}

@end
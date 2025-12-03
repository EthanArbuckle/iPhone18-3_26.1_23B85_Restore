@interface UISSceneHostingExternalSettingsModifierClient
+ (BSServiceConnectionEndpoint)defaultShellEndpoint;
- (UISSceneHostingExternalSettingsModifierClient)init;
- (UISSceneHostingExternalSettingsModifierClient)initWithServerEndpoint:(id)endpoint;
- (void)dealloc;
- (void)invalidate;
- (void)requestSettingsModifiersForProcessIdentity:(id)identity withCompletion:(id)completion;
@end

@implementation UISSceneHostingExternalSettingsModifierClient

- (UISSceneHostingExternalSettingsModifierClient)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on UISSceneHostingExternalSettingsModifierClient"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"UISSceneHostingExternalSettingsModifierClient.m";
    v17 = 1024;
    v18 = 27;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (UISSceneHostingExternalSettingsModifierClient)initWithServerEndpoint:(id)endpoint
{
  v29 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  v16.receiver = self;
  v16.super_class = UISSceneHostingExternalSettingsModifierClient;
  v7 = [(UISSceneHostingExternalSettingsModifierClient *)&v16 init];
  if (v7)
  {
    if (!endpointCopy)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"serverEndpoint"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544642;
        v18 = v13;
        v19 = 2114;
        v20 = v15;
        v21 = 2048;
        v22 = v7;
        v23 = 2114;
        v24 = @"UISSceneHostingExternalSettingsModifierClient.m";
        v25 = 1024;
        v26 = 33;
        v27 = 2114;
        v28 = v12;
        _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x19600D2D0);
    }

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.uikit.sceneHostingExternalSettingsModifierClient", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    objc_storeStrong(&v7->_endpoint, endpoint);
  }

  return v7;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self->_queue_invalidated)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UISSceneHostingExternalSettingsModifierClient must be invalidated before dealloc"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"UISSceneHostingExternalSettingsModifierClient.m";
      v17 = 1024;
      v18 = 41;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600D440);
  }

  v8.receiver = self;
  v8.super_class = UISSceneHostingExternalSettingsModifierClient;
  [(UISSceneHostingExternalSettingsModifierClient *)&v8 dealloc];
}

- (void)requestSettingsModifiersForProcessIdentity:(id)identity withCompletion:(id)completion
{
  v27[3] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  completionCopy = completion;
  if (!completionCopy)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"completion"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *block = 138544642;
      *&block[4] = v13;
      *&block[12] = 2114;
      *&block[14] = v15;
      *&block[22] = 2048;
      selfCopy = self;
      LOWORD(v26) = 2114;
      *(&v26 + 2) = @"UISSceneHostingExternalSettingsModifierClient.m";
      WORD5(v26) = 1024;
      HIDWORD(v26) = 48;
      LOWORD(v27[0]) = 2114;
      *(v27 + 2) = v12;
      _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", block, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x19600D6F4);
  }

  v9 = completionCopy;
  if (self)
  {
    BSDispatchQueueAssertNot();
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__2;
    v22 = __Block_byref_object_dispose__2;
    v23 = 0;
    queue = self->_queue;
    *block = MEMORY[0x1E69E9820];
    *&block[8] = 3221225472;
    *&block[16] = __62__UISSceneHostingExternalSettingsModifierClient__remoteTarget__block_invoke;
    selfCopy = &unk_1E7458EC0;
    *&v26 = self;
    *(&v26 + 1) = &v18;
    v27[0] = sel__remoteTarget;
    dispatch_sync(queue, block);
    self = v19[5];
    _Block_object_dispose(&v18, 8);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __107__UISSceneHostingExternalSettingsModifierClient_requestSettingsModifiersForProcessIdentity_withCompletion___block_invoke;
  v16[3] = &unk_1E7459500;
  v17 = v9;
  v11 = v9;
  [(UISSceneHostingExternalSettingsModifierClient *)self requestSettingsModifiersForProcessIdentity:identityCopy withCompletion:v16];
}

void __107__UISSceneHostingExternalSettingsModifierClient_requestSettingsModifiersForProcessIdentity_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v6 = v8;
  v7 = v5;
  BSDispatchMain();
}

+ (BSServiceConnectionEndpoint)defaultShellEndpoint
{
  v2 = MEMORY[0x1E698F498];
  defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
  v4 = [v2 endpointForMachName:defaultShellMachName service:0x1F0A7DEB8 instance:0];

  return v4;
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__UISSceneHostingExternalSettingsModifierClient_invalidate__block_invoke;
  block[3] = &unk_1E7458DB0;
  block[4] = self;
  dispatch_async(queue, block);
}

void __59__UISSceneHostingExternalSettingsModifierClient_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    [*(*(a1 + 32) + 32) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = 0;
  }
}

void __62__UISSceneHostingExternalSettingsModifierClient__remoteTarget__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if (v2 || ([MEMORY[0x1E698F470] interfaceWithIdentifier:0x1F0A7DEB8], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E698E710], "protocolForProtocol:", &unk_1F0A8A580), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "setServer:", v4), v4, objc_msgSend(MEMORY[0x1E698F490], "connectionWithEndpoint:clientContextBuilder:", *(*(a1 + 32) + 8), &__block_literal_global_11), v5 = objc_claimAutoreleasedReturnValue(), v6 = *(*(a1 + 32) + 32), *(*(a1 + 32) + 32) = v5, v6, objc_initWeak(location, *(a1 + 32)), v7 = *(*(a1 + 32) + 32), v23[0] = MEMORY[0x1E69E9820], v23[1] = 3221225472, v23[2] = __62__UISSceneHostingExternalSettingsModifierClient__remoteTarget__block_invoke_3, v23[3] = &unk_1E7459570, v8 = v3, v9 = *(a1 + 32), v24 = v8, v25 = v9, objc_copyWeak(&v26, location), objc_msgSend(v7, "configureConnection:", v23), objc_msgSend(*(*(a1 + 32) + 32), "activate"), objc_destroyWeak(&v26), v24, objc_destroyWeak(location), v8, (v2 = *(*(a1 + 32) + 32)) != 0))
  {
    v10 = [v2 remoteTarget];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      [*(*(a1 + 32) + 32) activate];
      v13 = [*(*(a1 + 32) + 32) remoteTarget];
      v14 = *(*(a1 + 40) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to create a remote target for %@", 0x1F0A7DEB8];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = NSStringFromSelector(*(a1 + 48));
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = *(a1 + 32);
          *location = 138544642;
          *&location[4] = v17;
          v28 = 2114;
          v29 = v19;
          v30 = 2048;
          v31 = v20;
          v32 = 2114;
          v33 = @"UISSceneHostingExternalSettingsModifierClient.m";
          v34 = 1024;
          v35 = 126;
          v36 = 2114;
          v37 = v16;
          v21 = v19;
          _os_log_error_impl(&dword_195FF3000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
        }

        v22 = v16;
        [v16 UTF8String];
        _bs_set_crash_log_message();
        __break(0);
        JUMPOUT(0x19600DC38);
      }
    }
  }
}

void __62__UISSceneHostingExternalSettingsModifierClient__remoteTarget__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E698F500] userInteractive];
  [v3 setServiceQuality:v4];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setTargetQueue:*(*(a1 + 40) + 16)];
  [v3 setInterruptionHandler:&__block_literal_global_75];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__UISSceneHostingExternalSettingsModifierClient__remoteTarget__block_invoke_5;
  v5[3] = &unk_1E7459548;
  objc_copyWeak(&v6, (a1 + 48));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
}

void __62__UISSceneHostingExternalSettingsModifierClient__remoteTarget__block_invoke_5(uint64_t a1, void *a2)
{
  [a2 invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    WeakRetained[4] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

@end
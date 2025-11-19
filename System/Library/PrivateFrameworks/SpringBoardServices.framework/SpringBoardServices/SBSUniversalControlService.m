@interface SBSUniversalControlService
+ (id)new;
+ (id)sharedInstance;
- (NSString)description;
- (SBSUniversalControlService)init;
- (id)_ownedRectEdgeMaskAsNumber;
- (id)acquireScreenEdgeOwnershipForPointerEvents:(unint64_t)a3 forReason:(id)a4;
- (uint64_t)screenEdgeOwnershipAssertion;
- (uint64_t)serverConnection;
- (void)_connectToServer;
- (void)_init;
- (void)setDisableKeyboardFocusAssertion:(uint64_t)a1;
- (void)setScreenEdgeOwnershipAssertion:(uint64_t)a1;
- (void)setServerConnection:(uint64_t)a1;
@end

@implementation SBSUniversalControlService

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[SBSUniversalControlService sharedInstance];
  }

  v3 = sharedInstance_service_2;

  return v3;
}

uint64_t __44__SBSUniversalControlService_sharedInstance__block_invoke()
{
  sharedInstance_service_2 = [[SBSUniversalControlService alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (void)_init
{
  if (!a1)
  {
    return 0;
  }

  v23.receiver = a1;
  v23.super_class = SBSUniversalControlService;
  v1 = objc_msgSendSuper2(&v23, sel_init);
  if (v1)
  {
    objc_initWeak(&location, v1);
    v2 = MEMORY[0x1E698E658];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __35__SBSUniversalControlService__init__block_invoke;
    v20[3] = &unk_1E735F778;
    objc_copyWeak(&v21, &location);
    v3 = [v2 assertionWithIdentifier:@"DisableDeviceKeyboardFocus" stateDidChangeHandler:v20];
    v4 = v1[3];
    v1[3] = v3;

    v5 = v1[3];
    v6 = SBLogKeyboardFocus();
    [v5 setLog:v6];

    v7 = MEMORY[0x1E698E658];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__SBSUniversalControlService__init__block_invoke_2;
    v17[3] = &unk_1E7361768;
    objc_copyWeak(&v19, &location);
    v1 = v1;
    v18 = v1;
    v8 = [v7 assertionWithIdentifier:@"ScreenEdgeOwnership" stateDidChangeHandler:v17];
    v9 = v1[4];
    v1[4] = v8;

    v10 = v1[4];
    v11 = SBLogKeyboardFocus();
    [v10 setLog:v11];

    v12 = dispatch_queue_create("com.apple.springboard.universal-control-client-queue", 0);
    v13 = v1[2];
    v1[2] = v12;

    objc_copyWeak(&v16, &location);
    v14 = BSLogAddStateCaptureBlockWithTitle();
    [(SBSUniversalControlService *)v1 _connectToServer];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v1;
}

+ (id)new
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot +new SBSUniversalControlService -- use +sharedInstance"];
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
    v14 = a1;
    v15 = 2114;
    v16 = @"SBSUniversalControlService.m";
    v17 = 1024;
    v18 = 51;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (SBSUniversalControlService)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot -init SBSUniversalControlService -- use +sharedInstance"];
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
    v14 = self;
    v15 = 2114;
    v16 = @"SBSUniversalControlService.m";
    v17 = 1024;
    v18 = 56;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_19169D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

void __35__SBSUniversalControlService__init__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained[5] remoteTarget];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v7, "isActive")}];
    [v5 setKeyboardFocusDisabled:v6 reason:@"wants it"];
  }
}

void __35__SBSUniversalControlService__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [(SBSUniversalControlService *)*(a1 + 32) _ownedRectEdgeMaskAsNumber];
    v4 = [v5[5] remoteTarget];
    [v4 setScreenEdgesOwned:v3 reason:@"wants it"];

    WeakRetained = v5;
  }
}

id __35__SBSUniversalControlService__init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  [v3 appendProem:self block:&__block_literal_global_28];
  v4 = [v3 appendObject:self->_disableKeyboardFocusAssertion withName:@"disableKeyboardFocusAssertion"];
  v5 = [v3 appendObject:self->_screenEdgeOwnershipAssertion withName:@"screenEdgeOwnershipAssertion"];
  v6 = [v3 description];

  return v6;
}

- (id)acquireScreenEdgeOwnershipForPointerEvents:(unint64_t)a3 forReason:(id)a4
{
  screenEdgeOwnershipAssertion = self->_screenEdgeOwnershipAssertion;
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  v9 = [(BSCompoundAssertion *)screenEdgeOwnershipAssertion acquireForReason:v7 withContext:v8];

  return v9;
}

uint64_t __56__SBSUniversalControlService__ownedRectEdgeMaskAsNumber__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = [v5 unsignedIntValue];

  return [v4 numberWithUnsignedInt:v7 | v6];
}

void __46__SBSUniversalControlService__connectToServer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSUniversalControlInterfaceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[SBSUniversalControlInterfaceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 16)];
  [v3 setActivationHandler:&__block_literal_global_44];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__SBSUniversalControlService__connectToServer__block_invoke_45;
  v6[3] = &unk_1E73606B8;
  v6[4] = *(a1 + 32);
  [v3 setInterruptionHandler:v6];
  [v3 setInvalidationHandler:&__block_literal_global_48_0];
}

void __46__SBSUniversalControlService__connectToServer__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Connection Activated: %{public}@", &v4, 0xCu);
  }
}

void __46__SBSUniversalControlService__connectToServer__block_invoke_46(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "Received invalidation for connection: %{public}@", &v4, 0xCu);
  }
}

- (id)_ownedRectEdgeMaskAsNumber
{
  if (a1)
  {
    v1 = [*(a1 + 32) context];
    v2 = [v1 bs_reduce:&unk_1F05B4EE0 block:&__block_literal_global_38];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_connectToServer
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = MEMORY[0x1E698F498];
    v3 = [MEMORY[0x1E698F498] defaultShellMachName];
    v4 = +[SBSUniversalControlInterfaceSpecification identifier];
    v5 = [v2 endpointForMachName:v3 service:v4 instance:0];

    v6 = [MEMORY[0x1E698F490] connectionWithEndpoint:v5];
    v7 = *(a1 + 40);
    *(a1 + 40) = v6;

    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SBSUniversalControlService__connectToServer__block_invoke;
    v11[3] = &unk_1E735ED88;
    v11[4] = a1;
    [v8 configureConnection:v11];
    v9 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19169D000, v9, OS_LOG_TYPE_DEFAULT, "Activating Connection: %{public}@", buf, 0xCu);
    }

    [*(a1 + 40) activate];
  }
}

void __46__SBSUniversalControlService__connectToServer__block_invoke_45(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SBLogKeyboardFocus();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v8, 0xCu);
  }

  [v3 activate];
  v5 = [v3 remoteTarget];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(a1 + 32) + 24), "isActive")}];
  [v5 setKeyboardFocusDisabled:v6 reason:@"wants it"];

  v7 = [(SBSUniversalControlService *)*(a1 + 32) _ownedRectEdgeMaskAsNumber];
  [v5 setScreenEdgesOwned:v7 reason:@"wants it"];
}

- (void)setDisableKeyboardFocusAssertion:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (uint64_t)screenEdgeOwnershipAssertion
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)setScreenEdgeOwnershipAssertion:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (uint64_t)serverConnection
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setServerConnection:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

@end
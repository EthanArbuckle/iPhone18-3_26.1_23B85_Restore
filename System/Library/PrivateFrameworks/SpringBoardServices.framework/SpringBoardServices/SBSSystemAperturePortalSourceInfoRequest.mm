@interface SBSSystemAperturePortalSourceInfoRequest
+ (SBSPortalSource)_portalSource;
+ (void)_setPortalSource:(id)source;
+ (void)rootWindowPortalSourceWithCompletion:(id)completion;
@end

@implementation SBSSystemAperturePortalSourceInfoRequest

+ (void)rootWindowPortalSourceWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&_RequestLock);
  _portalSource = [self _portalSource];

  if (_portalSource || ([MEMORY[0x1E696AAE8] mainBundle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "bundleIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.springboard"), v7, v6, (v8 & 1) != 0))
  {
    if (completionCopy)
    {
      _portalSource2 = [self _portalSource];
      completionCopy[2](completionCopy, _portalSource2);
    }
  }

  else
  {
    v10 = MEMORY[0x1E698F498];
    defaultShellMachName = [MEMORY[0x1E698F498] defaultShellMachName];
    v12 = +[SBSSystemAperturePortalSourceInfoRequestServiceSpecification identifier];
    v13 = [v10 endpointForMachName:defaultShellMachName service:v12 instance:0];

    if (v13)
    {
      v14 = [MEMORY[0x1E698F490] connectionWithEndpoint:v13];
    }

    else
    {
      v14 = 0;
    }

    [v14 configureConnection:&__block_literal_global_37];
    [v14 activate];
    remoteTarget = [v14 remoteTarget];

    if (remoteTarget)
    {
      v16 = SBLogSystemApertureHosting();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19169D000, v16, OS_LOG_TYPE_DEFAULT, "System Aperture Portal Source request connection handled-requested.", buf, 2u);
      }

      remoteTarget2 = [v14 remoteTarget];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke_8;
      v21 = &unk_1E73611A8;
      selfCopy = self;
      v22 = completionCopy;
      [remoteTarget2 rootWindowPortalSourceWithCompletion:&v18];
    }

    [v14 invalidate];
  }

  os_unfair_lock_unlock(&_RequestLock);
}

void __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = +[SBSSystemAperturePortalSourceInfoRequestServiceSpecification interface];
  [v4 setInterface:v2];

  v3 = +[SBSSystemAperturePortalSourceInfoRequestServiceSpecification serviceQuality];
  [v4 setServiceQuality:v3];

  [v4 setInvalidationHandler:&__block_literal_global_7_3];
}

void __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke_2()
{
  v0 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke_2_cold_1(v0);
  }
}

void __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = SBLogSystemApertureHosting();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v9 = "System Aperture Portal Source request connection handled succcessfully.";
    v10 = v7;
    v11 = 2;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v18 = v6;
    v9 = "System Aperture Portal Source request connection handled with failure. Error: %{public}@";
    v10 = v7;
    v11 = 12;
  }

  _os_log_impl(&dword_19169D000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  [*(a1 + 40) _setPortalSource:v5];
  if (*(a1 + 32))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke_9;
    v14[3] = &unk_1E735F868;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = v12;
    v16 = v13;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

void __81__SBSSystemAperturePortalSourceInfoRequest_rootWindowPortalSourceWithCompletion___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _portalSource];
  (*(v1 + 16))(v1, v2);
}

+ (SBSPortalSource)_portalSource
{
  os_unfair_lock_lock(&_PortalSourceLock);
  v2 = _PortalSourceLock_SBSSystemApertureRootWindowPortalSource;
  os_unfair_lock_unlock(&_PortalSourceLock);

  return v2;
}

+ (void)_setPortalSource:(id)source
{
  sourceCopy = source;
  os_unfair_lock_lock(&_PortalSourceLock);
  v4 = _PortalSourceLock_SBSSystemApertureRootWindowPortalSource;
  _PortalSourceLock_SBSSystemApertureRootWindowPortalSource = sourceCopy;

  os_unfair_lock_unlock(&_PortalSourceLock);
}

@end
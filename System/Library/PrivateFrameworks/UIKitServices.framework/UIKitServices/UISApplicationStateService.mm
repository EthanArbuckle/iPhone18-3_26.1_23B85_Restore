@interface UISApplicationStateService
- (BOOL)_isCurrentConnectionAuthorizedForApplicationBundleIdentifier:(id)a3 description:(id)a4 legacyEntitlement:(id)a5;
- (UISApplicationStateService)init;
- (UISApplicationStateService)initWithCalloutQueue:(id)a3;
- (UISApplicationStateServiceDelegate)delegate;
- (id)_dataSourceForApplicationBundleIdentifier:(id)a3;
- (id)_operatingBundleIdentifier;
- (void)badgeValueWithCompletion:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)nextWakeIntervalSinceReferenceDateWithCompletion:(id)a3;
- (void)setBadgeValue:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMinimumBackgroundFetchInterval:(id)a3;
- (void)setNextWakeIntervalSinceReferenceDate:(id)a3;
- (void)setUsesBackgroundNetwork:(id)a3;
- (void)usesBackgroundNetworkWithCompletion:(id)a3;
@end

@implementation UISApplicationStateService

- (id)_operatingBundleIdentifier
{
  v4 = [MEMORY[0x1E698F490] currentContext];
  v5 = [v4 userInfo];

  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E698F490] currentContext];
    [v7 handleFailureInMethod:a2 object:self file:@"UISApplicationStateService.m" lineNumber:320 description:{@"Must have a bundle identifier on the connection - userInfo: %@ (currentContext: %@)", 0, v8}];
  }

  return v5;
}

- (UISApplicationStateService)init
{
  v3 = MEMORY[0x1E698F4D0];
  v4 = [MEMORY[0x1E698F500] userInteractive];
  v5 = [v3 queueWithName:@"com.apple.uikit.applicationstateservice.server" serviceQuality:v4];

  v6 = [(UISApplicationStateService *)self initWithCalloutQueue:v5];
  return v6;
}

- (UISApplicationStateService)initWithCalloutQueue:(id)a3
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = UISApplicationStateService;
  v7 = [(UISApplicationStateService *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_calloutQueue, a3);
    v9 = MEMORY[0x1E698F4B8];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __51__UISApplicationStateService_initWithCalloutQueue___block_invoke;
    v17 = &unk_1E74590E0;
    v19 = a2;
    v10 = v8;
    v18 = v10;
    v11 = [v9 listenerWithConfigurator:&v14];
    v12 = v10[1];
    v10[1] = v11;

    [v10[1] activate];
  }

  return v8;
}

void __51__UISApplicationStateService_initWithCalloutQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E698F508];
  v4 = a2;
  v9 = [v3 bootstrapConfiguration];
  v5 = [v9 domainsContainingServiceIdentifier:0x1F0A7AD98];
  if ([v5 count] != 1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"UISApplicationStateService.m" lineNumber:65 description:{@"must have one and only one domain specify %@ : domains=%@", 0x1F0A7AD98, v5}];
  }

  v6 = [v5 anyObject];
  v7 = [v6 identifier];
  [v4 setDomain:v7];

  [v4 setService:0x1F0A7AD98];
  [v4 setDelegate:*(a1 + 32)];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a4;
  v8 = [a5 decodeStringForKey:0x1F0A7AD18];
  v9 = v8;
  if (v8 && [v8 length])
  {
    v10 = [MEMORY[0x1E698F470] interfaceWithIdentifier:0x1F0A7AD98];
    v11 = [MEMORY[0x1E698E710] protocolForProtocol:&unk_1F0A87568];
    [v10 setServer:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__UISApplicationStateService_listener_didReceiveConnection_withContext___block_invoke;
    v13[3] = &unk_1E7459108;
    v14 = v10;
    v15 = self;
    v16 = v9;
    v12 = v10;
    [v7 configureConnection:v13];
    [v7 activate];
  }

  else
  {
    [v7 invalidate];
  }
}

void __72__UISApplicationStateService_listener_didReceiveConnection_withContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setInterface:v3];
  [v4 setInterfaceTarget:a1[5]];
  [v4 setQueue:*(a1[5] + 16)];
  [v4 setInterruptionHandler:&__block_literal_global_4];
  [v4 setInvalidationHandler:&__block_literal_global_73];
  [v4 setUserInfo:a1[6]];
}

- (void)nextWakeIntervalSinceReferenceDateWithCompletion:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UISApplicationStateService.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v5 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v5 description:@"get next wake interval"])
  {
    v6 = [(UISApplicationStateService *)self _dataSourceForApplicationBundleIdentifier:v5];
    v7 = -1.0;
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v8 = [v6 nextWakeDate];
      v9 = v8;
      if (v8)
      {
        [v8 timeIntervalSinceReferenceDate];
        v7 = v10;
      }
    }

    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v13[2](v13, v11, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F0A7ADB8 code:0 userInfo:0];
    (v13)[2](v13, &unk_1F0A84388, v6);
  }
}

- (void)setNextWakeIntervalSinceReferenceDate:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v5 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v5 description:@"set next wake interval"])
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = BSFloatEqualToFloat();
    v9 = v8;
    if (v8 && (BSSelfTaskHasEntitlement() & 1) == 0)
    {
      v10 = _UISStateServiceLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v19 = objc_opt_class();
        v20 = 2112;
        v21 = @"aps-connection-initiate";
        v13 = v19;
        _os_log_error_impl(&dword_195FF3000, v10, OS_LOG_TYPE_ERROR, "%{public}@: The entitlement %@ is required to use the push keepalive interval", buf, 0x16u);
      }
    }

    v11 = [(UISApplicationStateService *)self _dataSourceForApplicationBundleIdentifier:v5];
    if (objc_opt_respondsToSelector())
    {
      v12 = dispatch_get_global_queue(21, 0);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __68__UISApplicationStateService_setNextWakeIntervalSinceReferenceDate___block_invoke;
      v14[3] = &unk_1E7459130;
      v16 = v7;
      v17 = v9;
      v14[4] = self;
      v15 = v11;
      dispatch_async(v12, v14);
    }
  }
}

void __68__UISApplicationStateService_setNextWakeIntervalSinceReferenceDate___block_invoke(uint64_t a1)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v2 = _MergedGlobals_7;
  v27 = _MergedGlobals_7;
  if (!_MergedGlobals_7)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getAPSConnectionClass_block_invoke;
    v22 = &unk_1E7459080;
    v23 = &v24;
    __getAPSConnectionClass_block_invoke(&v19);
    v2 = v25[3];
  }

  v3 = v2;
  _Block_object_dispose(&v24, 8);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v4 = qword_1ED51BF10;
  v27 = qword_1ED51BF10;
  if (!qword_1ED51BF10)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getAPSEnvironmentProductionSymbolLoc_block_invoke;
    v22 = &unk_1E7459080;
    v23 = &v24;
    v5 = ApplePushServiceLibrary();
    v6 = dlsym(v5, "APSEnvironmentProduction");
    *(v23[1] + 24) = v6;
    qword_1ED51BF10 = *(v23[1] + 24);
    v4 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (v4)
  {
    [v2 keepAliveIntervalForEnvironmentName:*v4];
    if (*(a1 + 48) == -1.0)
    {
      v11 = 0;
    }

    else
    {
      if (v7 <= 0.0)
      {
        v8 = 1740.0;
      }

      else
      {
        v8 = v7;
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v10 = v8 + v9;
      if ((*(a1 + 56) & 1) == 0 && *(a1 + 48) < v10)
      {
        v10 = *(a1 + 48);
      }

      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v10];
    }

    v12 = *(*(a1 + 32) + 16);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68__UISApplicationStateService_setNextWakeIntervalSinceReferenceDate___block_invoke_2;
    v16[3] = &unk_1E7458FE0;
    v17 = *(a1 + 40);
    v18 = v11;
    v13 = v11;
    [v12 performAsync:v16];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAPSEnvironmentProduction(void)"];
    [v14 handleFailureInFunction:v15 file:@"UISApplicationStateService.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)setMinimumBackgroundFetchInterval:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v5 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v5 description:@"set maximum background fetch interval"])
  {
    [v4 doubleValue];
    v7 = v6;
    v8 = _UISStateServiceLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_195FF3000, v8, OS_LOG_TYPE_INFO, "%{public}@ wants minFetchInterval: %f", buf, 0x16u);
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v9 = qword_1ED51BF18;
    v15 = qword_1ED51BF18;
    if (!qword_1ED51BF18)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __get_DASSchedulerClass_block_invoke;
      v17 = &unk_1E7459080;
      v18 = &v12;
      __get_DASSchedulerClass_block_invoke(buf);
      v9 = v13[3];
    }

    v10 = v9;
    _Block_object_dispose(&v12, 8);
    v11 = [v9 sharedScheduler];
    [v11 setMinimumBackgroundFetchInterval:v5 forApp:v7];
  }
}

- (void)usesBackgroundNetworkWithCompletion:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UISApplicationStateService.m" lineNumber:219 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v5 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v5 description:@"get uses background network"])
  {
    v6 = [(UISApplicationStateService *)self _dataSourceForApplicationBundleIdentifier:v5];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [v6 usesBackgroundNetwork];
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithBool:v7];
    v10[2](v10, v8, 0);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F0A7ADB8 code:0 userInfo:0];
    (v10)[2](v10, MEMORY[0x1E695E110], v6);
  }
}

- (void)setUsesBackgroundNetwork:(id)a3
{
  v7 = a3;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v4 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v4 description:@"set uses background network"])
  {
    v5 = [v7 BOOLValue];
    v6 = [(UISApplicationStateService *)self _dataSourceForApplicationBundleIdentifier:v4];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 setUsesBackgroundNetwork:v5];
    }
  }
}

- (void)badgeValueWithCompletion:(id)a3
{
  v13 = a3;
  if (!v13)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UISApplicationStateService.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v5 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v5 description:@"get badge value" legacyEntitlement:@"com.apple.frontboard.app-badge-value-access"])
  {
    v6 = [(UISApplicationStateService *)self _dataSourceForApplicationBundleIdentifier:v5];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v7 = [v6 badgeValue];
    }

    else
    {
      v7 = 0;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v13[2](v13, v10, v11, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:0x1F0A7ADB8 code:0 userInfo:0];
    (v13)[2](v13, 0, 0, v7);
  }
}

- (void)setBadgeValue:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v5 = [(UISApplicationStateService *)self _operatingBundleIdentifier];
  if ([(UISApplicationStateService *)self _isCurrentConnectionAuthorizedForApplicationBundleIdentifier:v5 description:@"set badge value" legacyEntitlement:@"com.apple.frontboard.app-badge-value-access"])
  {
    v6 = [(UISApplicationStateService *)self _dataSourceForApplicationBundleIdentifier:v5];
    if (v6)
    {
      if (objc_opt_respondsToSelector())
      {
        [v6 setBadgeValue:v4];
        v7 = _UISStateServiceLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [MEMORY[0x1E698F490] currentContext];
          v10 = 138543874;
          v11 = v8;
          v12 = 2114;
          v13 = v5;
          v14 = 2114;
          v15 = v4;
          v9 = "Client %{public}@ set the badge value of %{public}@ to %{public}@";
LABEL_10:
          _os_log_impl(&dword_195FF3000, v7, OS_LOG_TYPE_DEFAULT, v9, &v10, 0x20u);
        }
      }

      else
      {
        v7 = _UISStateServiceLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [MEMORY[0x1E698F490] currentContext];
          v10 = 138543874;
          v11 = v8;
          v12 = 2114;
          v13 = v5;
          v14 = 2114;
          v15 = v4;
          v9 = "Ignored client %{public}@ request to change the badge value of %{public}@ to %{public}@ because the server does not support setting badge values for this application.";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = _UISStateServiceLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [MEMORY[0x1E698F490] currentContext];
        v10 = 138543874;
        v11 = v8;
        v12 = 2114;
        v13 = v5;
        v14 = 2114;
        v15 = v4;
        v9 = "Ignored client %{public}@ request to change the badge value of %{public}@ to %{public}@ because the server reported no data source for the application.";
        goto LABEL_10;
      }
    }
  }
}

- (BOOL)_isCurrentConnectionAuthorizedForApplicationBundleIdentifier:(id)a3 description:(id)a4 legacyEntitlement:(id)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  v11 = [MEMORY[0x1E698F490] currentContext];
  v12 = [v11 remoteProcess];
  v13 = v12;
  if (!v12)
  {
    v17 = _UISStateServiceLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_195FF3000, v17, OS_LOG_TYPE_DEFAULT, "Client: %{public}@ unable to validate caller.", &v19, 0xCu);
    }

    goto LABEL_11;
  }

  v14 = [v12 bundleIdentifier];
  v15 = [v14 isEqualToString:v8];

  if ((v15 & 1) == 0 && ([v13 hasEntitlement:@"com.apple.uikitservices.app.value-access"] & 1) == 0 && (!v10 || (objc_msgSend(v13, "hasEntitlement:", v10) & 1) == 0))
  {
    v17 = _UISStateServiceLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543874;
      v20 = v11;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v8;
      _os_log_error_impl(&dword_195FF3000, v17, OS_LOG_TYPE_ERROR, "Client: %{public}@ not authorized to %{public}@ on behalf of application: %{public}@", &v19, 0x20u);
    }

LABEL_11:

    v16 = 0;
    goto LABEL_12;
  }

  v16 = 1;
LABEL_12:

  return v16;
}

- (id)_dataSourceForApplicationBundleIdentifier:(id)a3
{
  v4 = a3;
  [(BSServiceQueue *)self->_calloutQueue assertBarrierOnQueue];
  if (*&self->_delegateFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained dataSourceForApplicationBundleIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UISApplicationStateServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
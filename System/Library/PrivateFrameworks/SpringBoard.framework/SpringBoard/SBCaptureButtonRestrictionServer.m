@interface SBCaptureButtonRestrictionServer
- (SBCaptureButtonRestrictionServer)initWithDelegate:(id)a3;
- (id)_authorizedClientBundleIdentifiers;
- (uint64_t)_remoteProcessIsAuthorizedClient:(uint64_t)a1;
- (void)_addCaptureButtonInhibitActionAssertionForConnection:(uint64_t)a3 options:;
- (void)_removeCaptureButtonInhibitActionAssertionForConnection:(uint64_t)a1;
- (void)_removeCaptureButtonInhibitActionAssertionForVersionedPID:(void *)a3 reason:;
- (void)dealloc;
- (void)invalidate;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)setCaptureButtonActionInhibited:(id)a3 options:(id)a4;
@end

@implementation SBCaptureButtonRestrictionServer

- (SBCaptureButtonRestrictionServer)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBCaptureButtonRestrictionServer;
  v5 = [(SBCaptureButtonRestrictionServer *)&v18 init];
  if (v5)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v5->_isValid = 1;
    objc_storeWeak(&v5->_delegate, v4);
    v5->_clientServiceCollectionLock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connections = v5->_connections;
    v5->_connections = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v5->_connectionQueue;
    v5->_connectionQueue = v9;

    v11 = MEMORY[0x277CF32A0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__SBCaptureButtonRestrictionServer_initWithDelegate___block_invoke;
    v16[3] = &unk_2783A9A18;
    v12 = v5;
    v17 = v12;
    v13 = [v11 listenerWithConfigurator:v16];
    v14 = v12[5];
    v12[5] = v13;

    [v12[5] activate];
  }

  return v5;
}

void __53__SBCaptureButtonRestrictionServer_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66A38] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"must -invalidate before dealloc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBCaptureButtonRestrictionServer.m";
    v16 = 1024;
    v17 = 77;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)invalidate
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_isValid)
  {
    self->_isValid = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(NSMutableDictionary *)self->_versionedPIDToRemoteAssertion allValues];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v10 + 1) + 8 * v7) wrappedAssertion];
          [v8 invalidate];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    versionedPIDToRemoteAssertion = self->_versionedPIDToRemoteAssertion;
    self->_versionedPIDToRemoteAssertion = 0;

    [(BSServiceConnectionListener *)self->_connectionListener invalidate];
  }
}

void __70__SBCaptureButtonRestrictionServer__authorizedClientBundleIdentifiers__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.accessibility.AccessibilityUIServer", @"com.apple.Diagnostics", @"com.apple.Mica-Player", @"com.apple.Preferences", @"com.apple.purplebuddy", @"com.apple.VoiceOver", @"com.apple.Passbook", @"com.apple.PassbookUIService", @"com.apple.PassbookUISceneService", @"com.apple.passd", 0}];
  v1 = _MergedGlobals;
  _MergedGlobals = v0;
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogCameraCaptureRestriction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBCaptureButtonRestrictionServer received connection %{public}@", buf, 0xCu);
  }

  v8 = [v6 remoteProcess];
  v9 = [v8 auditToken];
  v10 = [v9 versionedPID];

  LODWORD(v9) = [v8 pid];
  if (v9 == getpid() || ![(SBCaptureButtonRestrictionServer *)self _remoteProcessIsAuthorizedClient:v8])
  {
    [v6 invalidate];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke;
    v11[3] = &unk_2783BF760;
    v11[4] = self;
    v11[5] = v10;
    [v6 configureConnection:v11];
    os_unfair_lock_lock(&self->_clientServiceCollectionLock);
    [(NSMutableSet *)self->_connections addObject:v6];
    os_unfair_lock_unlock(&self->_clientServiceCollectionLock);
    [v6 activate];
  }
}

void __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66A38] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66A38] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v9[3] = &unk_2783BF738;
  objc_copyWeak(v10, &location);
  v10[1] = *(a1 + 40);
  v6 = MEMORY[0x223D6F7F0](v9);
  [v3 setInterruptionHandler:v6];
  [v3 setInvalidationHandler:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_4;
  v7[3] = &unk_2783ABE18;
  objc_copyWeak(&v8, &location);
  [v3 setActivationHandler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_assert_queue_V2(*(WeakRetained + 4));
  os_unfair_lock_lock(WeakRetained + 2);
  [*(WeakRetained + 2) removeObject:v3];

  os_unfair_lock_unlock(WeakRetained + 2);
  v5 = WeakRetained;
  BSDispatchMain();
}

void __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [(SBCaptureButtonRestrictionServer *)v2 _removeCaptureButtonInhibitActionAssertionForVersionedPID:@"connection interrupted" reason:?];
  }
}

void __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_assert_queue_V2(WeakRetained[4]);
  v5 = SBLogCameraCaptureRestriction();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBCaptureButtonRestrictionServer activated connection %{public}@", &v6, 0xCu);
  }
}

- (void)setCaptureButtonActionInhibited:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CF3280] currentContext];
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  v10 = v5;
  BSDispatchMain();
}

void __76__SBCaptureButtonRestrictionServer_setCaptureButtonActionInhibited_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) BOOLValue];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v2)
  {
    v5 = [*(a1 + 56) unsignedIntegerValue];

    [(SBCaptureButtonRestrictionServer *)v3 _addCaptureButtonInhibitActionAssertionForConnection:v4 options:v5];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);

    [(SBCaptureButtonRestrictionServer *)v6 _removeCaptureButtonInhibitActionAssertionForConnection:v7];
  }
}

- (id)_authorizedClientBundleIdentifiers
{
  if (a1)
  {
    if (qword_281250818 != -1)
    {
      dispatch_once(&qword_281250818, &__block_literal_global_340);
    }

    a1 = _MergedGlobals;
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)_remoteProcessIsAuthorizedClient:(uint64_t)a1
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 auditToken];
    if (([v5 hasEntitlement:@"com.apple.springboard.capture-button-restriction"] & 1) != 0 || objc_msgSend(v5, "hasEntitlement:", @"com.apple.springboard.126E27E0-D025-4A46-B2F1-AF49D4E0B105"))
    {
      v6 = [v4 bundleIdentifier];
      v9 = [(SBCaptureButtonRestrictionServer *)a1 _authorizedClientBundleIdentifiers];
      a1 = [v9 containsObject:v6];

      if ((a1 & 1) == 0)
      {
        v10 = SBLogCameraCaptureRestriction();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = 138543618;
          v12 = v4;
          v13 = 2114;
          v14 = v6;
          _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "SBCaptureButtonRestrictionServer: process is not authorized to suppress the capture button %{public}@ -- %{public}@", &v11, 0x16u);
        }
      }

      goto LABEL_12;
    }

    if (([v5 hasEntitlement:@"com.apple.springboard.capture-button-restriction-internal"] & 1) != 0 || objc_msgSend(v5, "hasEntitlement:", @"com.apple.springboard.8CFFD00F-D62F-43B2-AA10-427657A783F4"))
    {
      if (os_variant_has_internal_content())
      {
        a1 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v6 = SBLogCameraCaptureRestriction();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v11 = 138543362;
      v12 = v4;
      v7 = "SBCaptureButtonRestrictionServer: process is not authorized to suppress the capture button on prod devices %{public}@";
    }

    else
    {
      v6 = SBLogCameraCaptureRestriction();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        a1 = 0;
LABEL_12:

        goto LABEL_13;
      }

      v11 = 138543362;
      v12 = v4;
      v7 = "SBCaptureButtonRestrictionServer: process is missing required entitlement %{public}@";
    }

    _os_log_error_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_ERROR, v7, &v11, 0xCu);
    goto LABEL_11;
  }

LABEL_14:

  return a1;
}

- (void)_removeCaptureButtonInhibitActionAssertionForVersionedPID:(void *)a3 reason:
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v7 = [*(a1 + 24) objectForKey:v6];
    if (v7)
    {
      v8 = SBLogCameraCaptureRestriction();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromBSVersionedPID();
        v11 = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = v5;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBCaptureButtonRestrictionServer invalidate remote assertion for %{public}@ for reason %{public}@", &v11, 0x16u);
      }

      v10 = [v7 wrappedAssertion];
      [v10 invalidate];

      [*(a1 + 24) removeObjectForKey:v6];
    }
  }
}

- (void)_removeCaptureButtonInhibitActionAssertionForConnection:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 remoteProcess];
    v4 = [v3 auditToken];

    -[SBCaptureButtonRestrictionServer _removeCaptureButtonInhibitActionAssertionForVersionedPID:reason:](a1, [v4 versionedPID], @"remote request");
  }
}

- (void)_addCaptureButtonInhibitActionAssertionForConnection:(uint64_t)a3 options:
{
  if (a1)
  {
    v5 = a2;
    v6 = [v5 remoteProcess];
    v18 = [v6 auditToken];

    v7 = [v18 versionedPID];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
    v9 = objc_alloc_init(_SBCaptureButtonRestrictionServerAssertionWrapper);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromBSVersionedPID();
    v13 = [v11 stringWithFormat:@"request from process %@", v12];

    v14 = [WeakRetained inhibitCaptureButtonActionAssertionWithReason:v13 options:a3];
    [(_SBCaptureButtonRestrictionServerAssertionWrapper *)v9 setWrappedAssertion:v14];
    [(_SBCaptureButtonRestrictionServerAssertionWrapper *)v9 setAssociatedConnection:v5];

    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = *(a1 + 24);
      *(a1 + 24) = v16;

      v15 = *(a1 + 24);
    }

    [v15 setObject:v9 forKey:v8];
  }
}

@end
@interface SBCaptureButtonRestrictionServer
- (SBCaptureButtonRestrictionServer)initWithDelegate:(id)delegate;
- (id)_authorizedClientBundleIdentifiers;
- (uint64_t)_remoteProcessIsAuthorizedClient:(uint64_t)client;
- (void)_addCaptureButtonInhibitActionAssertionForConnection:(uint64_t)connection options:;
- (void)_removeCaptureButtonInhibitActionAssertionForConnection:(uint64_t)connection;
- (void)_removeCaptureButtonInhibitActionAssertionForVersionedPID:(void *)d reason:;
- (void)dealloc;
- (void)invalidate;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setCaptureButtonActionInhibited:(id)inhibited options:(id)options;
@end

@implementation SBCaptureButtonRestrictionServer

- (SBCaptureButtonRestrictionServer)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = SBCaptureButtonRestrictionServer;
  v5 = [(SBCaptureButtonRestrictionServer *)&v18 init];
  if (v5)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v5->_isValid = 1;
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
    v5 = NSStringFromSelector(self);
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
    allValues = [(NSMutableDictionary *)self->_versionedPIDToRemoteAssertion allValues];
    v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(allValues);
          }

          wrappedAssertion = [*(*(&v10 + 1) + 8 * v7) wrappedAssertion];
          [wrappedAssertion invalidate];

          ++v7;
        }

        while (v5 != v7);
        v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = SBLogCameraCaptureRestriction();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = connectionCopy;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBCaptureButtonRestrictionServer received connection %{public}@", buf, 0xCu);
  }

  remoteProcess = [connectionCopy remoteProcess];
  auditToken = [remoteProcess auditToken];
  versionedPID = [auditToken versionedPID];

  LODWORD(auditToken) = [remoteProcess pid];
  if (auditToken == getpid() || ![(SBCaptureButtonRestrictionServer *)self _remoteProcessIsAuthorizedClient:remoteProcess])
  {
    [connectionCopy invalidate];
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __78__SBCaptureButtonRestrictionServer_listener_didReceiveConnection_withContext___block_invoke;
    v11[3] = &unk_2783BF760;
    v11[4] = self;
    v11[5] = versionedPID;
    [connectionCopy configureConnection:v11];
    os_unfair_lock_lock(&self->_clientServiceCollectionLock);
    [(NSMutableSet *)self->_connections addObject:connectionCopy];
    os_unfair_lock_unlock(&self->_clientServiceCollectionLock);
    [connectionCopy activate];
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

- (void)setCaptureButtonActionInhibited:(id)inhibited options:(id)options
{
  inhibitedCopy = inhibited;
  optionsCopy = options;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  v11 = inhibitedCopy;
  v12 = optionsCopy;
  v8 = optionsCopy;
  v9 = currentContext;
  v10 = inhibitedCopy;
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
  if (self)
  {
    if (qword_281250818 != -1)
    {
      dispatch_once(&qword_281250818, &__block_literal_global_340);
    }

    self = _MergedGlobals;
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_remoteProcessIsAuthorizedClient:(uint64_t)client
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (client)
  {
    auditToken = [v3 auditToken];
    if (([auditToken hasEntitlement:@"com.apple.springboard.capture-button-restriction"] & 1) != 0 || objc_msgSend(auditToken, "hasEntitlement:", @"com.apple.springboard.126E27E0-D025-4A46-B2F1-AF49D4E0B105"))
    {
      bundleIdentifier = [v4 bundleIdentifier];
      _authorizedClientBundleIdentifiers = [(SBCaptureButtonRestrictionServer *)client _authorizedClientBundleIdentifiers];
      client = [_authorizedClientBundleIdentifiers containsObject:bundleIdentifier];

      if ((client & 1) == 0)
      {
        v10 = SBLogCameraCaptureRestriction();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = 138543618;
          v12 = v4;
          v13 = 2114;
          v14 = bundleIdentifier;
          _os_log_error_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_ERROR, "SBCaptureButtonRestrictionServer: process is not authorized to suppress the capture button %{public}@ -- %{public}@", &v11, 0x16u);
        }
      }

      goto LABEL_12;
    }

    if (([auditToken hasEntitlement:@"com.apple.springboard.capture-button-restriction-internal"] & 1) != 0 || objc_msgSend(auditToken, "hasEntitlement:", @"com.apple.springboard.8CFFD00F-D62F-43B2-AA10-427657A783F4"))
    {
      if (os_variant_has_internal_content())
      {
        client = 1;
LABEL_13:

        goto LABEL_14;
      }

      bundleIdentifier = SBLogCameraCaptureRestriction();
      if (!os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v11 = 138543362;
      v12 = v4;
      v7 = "SBCaptureButtonRestrictionServer: process is not authorized to suppress the capture button on prod devices %{public}@";
    }

    else
    {
      bundleIdentifier = SBLogCameraCaptureRestriction();
      if (!os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        client = 0;
LABEL_12:

        goto LABEL_13;
      }

      v11 = 138543362;
      v12 = v4;
      v7 = "SBCaptureButtonRestrictionServer: process is missing required entitlement %{public}@";
    }

    _os_log_error_impl(&dword_21ED4E000, bundleIdentifier, OS_LOG_TYPE_ERROR, v7, &v11, 0xCu);
    goto LABEL_11;
  }

LABEL_14:

  return client;
}

- (void)_removeCaptureButtonInhibitActionAssertionForVersionedPID:(void *)d reason:
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (self)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v7 = [*(self + 24) objectForKey:v6];
    if (v7)
    {
      v8 = SBLogCameraCaptureRestriction();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = NSStringFromBSVersionedPID();
        v11 = 138543618;
        v12 = v9;
        v13 = 2114;
        v14 = dCopy;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "SBCaptureButtonRestrictionServer invalidate remote assertion for %{public}@ for reason %{public}@", &v11, 0x16u);
      }

      wrappedAssertion = [v7 wrappedAssertion];
      [wrappedAssertion invalidate];

      [*(self + 24) removeObjectForKey:v6];
    }
  }
}

- (void)_removeCaptureButtonInhibitActionAssertionForConnection:(uint64_t)connection
{
  if (connection)
  {
    remoteProcess = [a2 remoteProcess];
    auditToken = [remoteProcess auditToken];

    -[SBCaptureButtonRestrictionServer _removeCaptureButtonInhibitActionAssertionForVersionedPID:reason:](connection, [auditToken versionedPID], @"remote request");
  }
}

- (void)_addCaptureButtonInhibitActionAssertionForConnection:(uint64_t)connection options:
{
  if (self)
  {
    v5 = a2;
    remoteProcess = [v5 remoteProcess];
    auditToken = [remoteProcess auditToken];

    versionedPID = [auditToken versionedPID];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:versionedPID];
    v9 = objc_alloc_init(_SBCaptureButtonRestrictionServerAssertionWrapper);
    WeakRetained = objc_loadWeakRetained((self + 48));
    v11 = MEMORY[0x277CCACA8];
    v12 = NSStringFromBSVersionedPID();
    v13 = [v11 stringWithFormat:@"request from process %@", v12];

    v14 = [WeakRetained inhibitCaptureButtonActionAssertionWithReason:v13 options:connection];
    [(_SBCaptureButtonRestrictionServerAssertionWrapper *)v9 setWrappedAssertion:v14];
    [(_SBCaptureButtonRestrictionServerAssertionWrapper *)v9 setAssociatedConnection:v5];

    v15 = *(self + 24);
    if (!v15)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v17 = *(self + 24);
      *(self + 24) = v16;

      v15 = *(self + 24);
    }

    [v15 setObject:v9 forKey:v8];
  }
}

@end
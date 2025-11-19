@interface SBSystemApertureRestrictionServer
- (SBSystemApertureRestrictionServer)initWithDelegate:(id)a3;
- (id)acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason:(id)a3;
- (id)acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason:(id)a3;
- (id)acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason:(id)a3;
- (void)invalidateRestrictSystemApertureLayoutToInertAssertionWithIdentifier:(id)a3;
- (void)invalidateSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithIdentifier:(id)a3;
- (void)invalidateSystemApertureCompleteSuppressionAssertionWithIdentifier:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation SBSystemApertureRestrictionServer

- (SBSystemApertureRestrictionServer)initWithDelegate:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBSystemApertureRestrictionServer;
  v5 = [(SBSystemApertureRestrictionServer *)&v18 init];
  if (v5)
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
    v5->_isValid = 1;
    objc_storeWeak(&v5->_delegate, v4);
    v5->_clientServiceCollectionLock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x277CBEB18] array];
    connections = v5->_connections;
    v5->_connections = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v5->_connectionQueue;
    v5->_connectionQueue = v9;

    v11 = MEMORY[0x277CF32A0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__SBSystemApertureRestrictionServer_initWithDelegate___block_invoke;
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

void __54__SBSystemApertureRestrictionServer_initWithDelegate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66C78] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer received connection %@", buf, 0xCu);
  }

  v8 = [v6 remoteProcess];
  v9 = [v8 pid];
  if (v9 != getpid())
  {
    v11 = [v6 remoteProcess];
    v12 = [v11 auditToken];
    if (([v12 hasEntitlement:@"com.apple.springboard.system-component-restriction"] & 1) == 0)
    {
      v13 = [v6 remoteProcess];
      v14 = [v13 auditToken];
      if (([v14 hasEntitlement:@"com.apple.springboard.system-component-complete-suppression"] & 1) == 0)
      {
        v15 = [v6 remoteProcess];
        v16 = [v15 auditToken];
        v17 = [v16 hasEntitlement:@"com.apple.springboard.system-component-suppress-hide-empty-clone"];

        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_12:
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke;
        v18[3] = &unk_2783AB730;
        v18[4] = self;
        [v6 configureConnection:v18];
        os_unfair_lock_lock(&self->_clientServiceCollectionLock);
        [(NSMutableArray *)self->_connections addObject:v6];
        os_unfair_lock_unlock(&self->_clientServiceCollectionLock);
        [v6 activate];
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_5:
  v10 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer invalidating connection because client process is missing required entitlement %@ .", buf, 0xCu);
  }

  [v6 invalidate];
LABEL_13:
}

void __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66C78] serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = [MEMORY[0x277D66C78] interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 32)];
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v9[3] = &unk_2783AB6E0;
  objc_copyWeak(&v10, &location);
  v6 = MEMORY[0x223D6F7F0](v9);
  [v3 setInterruptionHandler:v6];
  [v3 setInvalidationHandler:v6];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_3;
  v7[3] = &unk_2783ABE18;
  objc_copyWeak(&v8, &location);
  [v3 setActivationHandler:v7];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_assert_queue_V2(*(WeakRetained + 4));
  v5 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer interrupted/invalidated connection %@", buf, 0xCu);
  }

  os_unfair_lock_lock(WeakRetained + 2);
  [*(WeakRetained + 2) removeObject:v3];
  os_unfair_lock_unlock(WeakRetained + 2);
  v8 = WeakRetained;
  v9 = v3;
  v6 = v3;
  v7 = WeakRetained;
  BSDispatchMain();
}

void __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_36(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 24);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_2_37;
    v13[3] = &unk_2783ABDF0;
    v14 = *(a1 + 40);
    v3 = [v2 bs_filter:v13];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          [v8 setInvalidationReason:@"connection invalidated"];
          [v8 invalidate];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v15 count:16];
      }

      while (v5);
    }
  }
}

BOOL __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_2_37(uint64_t a1, void *a2)
{
  v3 = [a2 associatedConnection];
  if (v3)
  {
    v4 = v3 == *(a1 + 32);
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __79__SBSystemApertureRestrictionServer_listener_didReceiveConnection_withContext___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_assert_queue_V2(WeakRetained[4]);
  v5 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer activated connection %@", &v6, 0xCu);
  }
}

- (id)acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [v4 remoteProcess];
  v6 = [v5 auditToken];

  if ([v6 hasEntitlement:@"com.apple.springboard.system-component-restriction"])
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = MEMORY[0x277CCACA8];
    v9 = [v7 UUIDString];
    v10 = [v8 stringWithFormat:@"%@: %@", v9, v3];

    v11 = [_SBSystemApertureRestrictionServerAssertionWrapper alloc];
    v12 = [v7 UUIDString];
    v13 = [(BSSimpleAssertion *)v11 initWithIdentifier:v12 forReason:v10 invalidationBlock:&__block_literal_global_19];

    v14 = [MEMORY[0x277CF3280] currentContext];
    [(_SBSystemApertureRestrictionServerAssertionWrapper *)v13 setAssociatedConnection:v14];

    v3 = v10;
    v15 = v13;
    BSDispatchMain();
  }

  else
  {
    v15 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer invalidating connection because client process is missing required entitlement %@ .", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void __109__SBSystemApertureRestrictionServer_acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  BSDispatchMain();
}

void __109__SBSystemApertureRestrictionServer_acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) wrappedAssertion];
  [*(a1 + 32) setWrappedAssertion:0];
  v2 = [*(a1 + 32) invalidationReason];
  [v3 invalidateWithReason:v2];
}

void __109__SBSystemApertureRestrictionServer_acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained restrictSystemApertureToInertWithReason:*(a1 + 40)];
  [*(a1 + 48) setWrappedAssertion:v3];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __109__SBSystemApertureRestrictionServer_acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason___block_invoke_4;
  v8[3] = &unk_2783ABE60;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 48);
  [v3 addInvalidationBlock:v8];
  v4 = *(*(a1 + 32) + 24);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    v4 = *(*(a1 + 32) + 24);
  }

  [v4 addObject:*(a1 + 48)];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __109__SBSystemApertureRestrictionServer_acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)invalidateRestrictSystemApertureLayoutToInertAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __106__SBSystemApertureRestrictionServer_invalidateRestrictSystemApertureLayoutToInertAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __106__SBSystemApertureRestrictionServer_invalidateRestrictSystemApertureLayoutToInertAssertionWithIdentifier___block_invoke_2;
  v3[3] = &unk_2783ABDF0;
  v4 = *(a1 + 40);
  v2 = [v1 bs_firstObjectPassingTest:v3];
  [v2 setInvalidationReason:@"restriction server client request"];
  [v2 invalidate];
}

uint64_t __106__SBSystemApertureRestrictionServer_invalidateRestrictSystemApertureLayoutToInertAssertionWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [v4 remoteProcess];
  v6 = [v5 auditToken];

  if ([v6 hasEntitlement:@"com.apple.springboard.system-component-complete-suppression"])
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = MEMORY[0x277CCACA8];
    v9 = [v7 UUIDString];
    v10 = [v8 stringWithFormat:@"%@: %@", v9, v3];

    v11 = [_SBSystemApertureRestrictionServerAssertionWrapper alloc];
    v12 = [v7 UUIDString];
    v13 = [(BSSimpleAssertion *)v11 initWithIdentifier:v12 forReason:v10 invalidationBlock:&__block_literal_global_59];

    v14 = [MEMORY[0x277CF3280] currentContext];
    [(_SBSystemApertureRestrictionServerAssertionWrapper *)v13 setAssociatedConnection:v14];

    v3 = v10;
    v15 = v13;
    BSDispatchMain();
  }

  else
  {
    v15 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer invalidating connection because client process is missing required entitlement %@ .", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void __107__SBSystemApertureRestrictionServer_acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  BSDispatchMain();
}

void __107__SBSystemApertureRestrictionServer_acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) wrappedAssertion];
  [*(a1 + 32) setWrappedAssertion:0];
  v2 = [*(a1 + 32) invalidationReason];
  [v3 invalidateWithReason:v2];
}

void __107__SBSystemApertureRestrictionServer_acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained suppressSystemApertureCompletelyWithReason:*(a1 + 40)];
  [*(a1 + 48) setWrappedAssertion:v3];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __107__SBSystemApertureRestrictionServer_acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason___block_invoke_4;
  v8[3] = &unk_2783ABE60;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 48);
  [v3 addInvalidationBlock:v8];
  v4 = *(*(a1 + 32) + 24);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    v4 = *(*(a1 + 32) + 24);
  }

  [v4 addObject:*(a1 + 48)];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __107__SBSystemApertureRestrictionServer_acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)invalidateSystemApertureCompleteSuppressionAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __104__SBSystemApertureRestrictionServer_invalidateSystemApertureCompleteSuppressionAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __104__SBSystemApertureRestrictionServer_invalidateSystemApertureCompleteSuppressionAssertionWithIdentifier___block_invoke_2;
  v3[3] = &unk_2783ABDF0;
  v4 = *(a1 + 40);
  v2 = [v1 bs_firstObjectPassingTest:v3];
  [v2 setInvalidationReason:@"restriction server client request"];
  [v2 invalidate];
}

uint64_t __104__SBSystemApertureRestrictionServer_invalidateSystemApertureCompleteSuppressionAssertionWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CF3280] currentContext];
  v5 = [v4 remoteProcess];
  v6 = [v5 auditToken];

  if ([v6 hasEntitlement:@"com.apple.springboard.system-component-suppress-hide-empty-clone"])
  {
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = MEMORY[0x277CCACA8];
    v9 = [v7 UUIDString];
    v10 = [v8 stringWithFormat:@"%@: %@", v9, v3];

    v11 = [_SBSystemApertureRestrictionServerAssertionWrapper alloc];
    v12 = [v7 UUIDString];
    v13 = [(BSSimpleAssertion *)v11 initWithIdentifier:v12 forReason:v10 invalidationBlock:&__block_literal_global_61_0];

    v14 = [MEMORY[0x277CF3280] currentContext];
    [(_SBSystemApertureRestrictionServerAssertionWrapper *)v13 setAssociatedConnection:v14];

    v3 = v10;
    v15 = v13;
    BSDispatchMain();
  }

  else
  {
    v15 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "SBSystemApertureRestrictionServer invalidating connection because client process is missing required entitlement %@ .", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void __123__SBSystemApertureRestrictionServer_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  BSDispatchMain();
}

void __123__SBSystemApertureRestrictionServer_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) wrappedAssertion];
  [*(a1 + 32) setWrappedAssertion:0];
  v2 = [*(a1 + 32) invalidationReason];
  [v3 invalidateWithReason:v2];
}

void __123__SBSystemApertureRestrictionServer_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  v3 = [WeakRetained suppressHidingOfEmptySystemApertureOnClonedDisplaysWithReason:*(a1 + 40)];
  [*(a1 + 48) setWrappedAssertion:v3];
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __123__SBSystemApertureRestrictionServer_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason___block_invoke_4;
  v8[3] = &unk_2783ABE60;
  objc_copyWeak(&v10, &location);
  v9 = *(a1 + 48);
  [v3 addInvalidationBlock:v8];
  v4 = *(*(a1 + 32) + 24);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;

    v4 = *(*(a1 + 32) + 24);
  }

  [v4 addObject:*(a1 + 48)];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __123__SBSystemApertureRestrictionServer_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[3] removeObject:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)invalidateSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v3 = v4;
  BSDispatchMain();
}

void __120__SBSystemApertureRestrictionServer_invalidateSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __120__SBSystemApertureRestrictionServer_invalidateSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithIdentifier___block_invoke_2;
  v3[3] = &unk_2783ABDF0;
  v4 = *(a1 + 40);
  v2 = [v1 bs_firstObjectPassingTest:v3];
  [v2 setInvalidationReason:@"restriction server client request"];
  [v2 invalidate];
}

uint64_t __120__SBSystemApertureRestrictionServer_invalidateSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

@end
@interface PSPointerClientController
- (PSPointerClientController)init;
- (PSPointerClientControllerDelegate)delegate;
- (id)_accessQueue_acquireServiceKeepAliveAssertion;
- (id)_connectionQueue_launchingConnection;
- (id)acquireOverridingHoverRegionAssertionForDisplay:(id)a3;
- (id)acquireServiceKeepAliveAssertion;
- (id)persistentlyHidePointerAssertionForReason:(unint64_t)a3;
- (id)persistentlyShowPointerAssertionForReason:(unint64_t)a3;
- (id)setSystemPointerInteractionContextID:(unsigned int)a3 displayUUID:(id)a4;
- (void)_connectionQueue_handleLaunchingConnectionInterruption;
- (void)_connectionQueue_handleNonLaunchingConnectionActivation;
- (void)_connectionQueue_handleNonLaunchingConnectionInterruption;
- (void)_createContentMatchMoveSourcesForDisplay:(id)a3 count:(unint64_t)a4 completion:(id)a5;
- (void)_createPointerPortalSourceCollectionForDisplay:(id)a3 completion:(id)a4;
- (void)_main_notifyDelegateOfInvalidatedRemoteSourcesSpecificallyThesePortalSourceCollections:(id)a3 matchMoveSources:(id)a4;
- (void)adjustedDecelerationTargetPointerPosition:(id)a3 velocity:(id)a4 inContextID:(id)a5 cursorRegionLookupRadius:(id)a6 cursorRegionLookupResolution:(id)a7 lookupConeAngle:(id)a8 completion:(id)a9;
- (void)autohidePointerForReason:(unint64_t)a3;
- (void)clientInteractionStateDidChange:(id)a3;
- (void)createContentMatchMoveSourcesForDisplayUUID:(id)a3 count:(unint64_t)a4 completion:(id)a5;
- (void)createPointerPortalSourceCollectionForDisplayUUID:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)invalidateContentMatchMoveSources:(id)a3 completion:(id)a4;
- (void)invalidatePointerPortalSourceCollection:(id)a3 completion:(id)a4;
- (void)invalidatedPortalSourceCollections:(id)a3 matchMoveSources:(id)a4;
- (void)pointerVisibilityStateDidChange:(id)a3;
- (void)setActiveHoverRegion:(id)a3 transitionCompletion:(id)a4;
- (void)sharedInit;
@end

@implementation PSPointerClientController

- (void)sharedInit
{
  if (dyld_program_sdk_at_least())
  {
    dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  }

  v3 = [MEMORY[0x277CBEB58] set];
  accessQueue_validPortalSourceCollections = self->_accessQueue_validPortalSourceCollections;
  self->_accessQueue_validPortalSourceCollections = v3;

  v5 = [MEMORY[0x277CBEB58] set];
  accessQueue_validMatchMoveSources = self->_accessQueue_validMatchMoveSources;
  self->_accessQueue_validMatchMoveSources = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  systemPointerInteractionContextIDs = self->_systemPointerInteractionContextIDs;
  self->_systemPointerInteractionContextIDs = v7;

  v9 = [MEMORY[0x277CBEB38] dictionary];
  hoverRegionOverridingAssertions = self->_hoverRegionOverridingAssertions;
  self->_hoverRegionOverridingAssertions = v9;

  Serial = BSDispatchQueueCreateSerial();
  accessQueue = self->_accessQueue;
  self->_accessQueue = Serial;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = BSDispatchQueueCreateWithQualityOfService();
  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = v14;

  self->_invalidationAndConfigurationLock._os_unfair_lock_opaque = 0;
  v16 = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PSPointerClientController_sharedInit__block_invoke;
  block[3] = &unk_27839D928;
  block[4] = self;
  dispatch_async(v16, block);
}

- (PSPointerClientController)init
{
  v5.receiver = self;
  v5.super_class = PSPointerClientController;
  v2 = [(PSPointerClientController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PSPointerClientController *)v2 sharedInit];
  }

  return v3;
}

void __39__PSPointerClientController_sharedInit__block_invoke_3(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = *(*(a1 + 32) + 16);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__PSPointerClientController_sharedInit__block_invoke_4;
  v11 = &unk_27839D900;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v12 = v3;
  v13 = v4;
  [v2 configureConnection:&v8];
  v5 = PSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(*(a1 + 32) + 16);
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_21ED3B000, v5, OS_LOG_TYPE_INFO, "Activating Connection: %{public}@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 16) activate];
  v7 = *MEMORY[0x277D85DE8];
}

void __39__PSPointerClientController_sharedInit__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PSPointerClientDefaultServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  [v3 setTargetQueue:*(*(a1 + 40) + 32)];
  objc_initWeak(&location, *(a1 + 40));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__PSPointerClientController_sharedInit__block_invoke_5;
  v9[3] = &unk_27839D860;
  objc_copyWeak(&v10, &location);
  [v3 setActivationHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PSPointerClientController_sharedInit__block_invoke_11;
  v7[3] = &unk_27839D860;
  objc_copyWeak(&v8, &location);
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__PSPointerClientController_sharedInit__block_invoke_12;
  v5[3] = &unk_27839D8D8;
  objc_copyWeak(&v6, &location);
  v5[4] = *(a1 + 40);
  [v3 setInvalidationHandler:v5];
  os_unfair_lock_unlock((*(a1 + 40) + 64));
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__PSPointerClientController_sharedInit__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CF3288];
  v3 = +[PSPointerClientDefaultServiceSpecification machName];
  v4 = +[PSPointerClientDefaultServiceSpecification serviceName];
  v5 = [v2 endpointForMachName:v3 service:v4 instance:0];

  v6 = [MEMORY[0x277CF3280] connectionWithEndpoint:v5];
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PSPointerClientController_sharedInit__block_invoke_2;
  block[3] = &unk_27839D7E0;
  block[4] = v7;
  v15 = v6;
  v9 = v6;
  dispatch_sync(v8, block);
  v10 = +[PSPointerClientDefaultServiceSpecification interface];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__PSPointerClientController_sharedInit__block_invoke_3;
  v12[3] = &unk_27839D7E0;
  v12[4] = *(a1 + 32);
  v13 = v10;
  v11 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __39__PSPointerClientController_sharedInit__block_invoke_5(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_INFO, "Connection Activated: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 2) == v3 && (*(WeakRetained + 69) & 1) == 0)
  {
    *(WeakRetained + 69) = 1;
    [WeakRetained _connectionQueue_handleNonLaunchingConnectionActivation];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__PSPointerClientController_sharedInit__block_invoke_11(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_INFO, "Received interruption for connection: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 2) == v3)
  {
    *(WeakRetained + 69) = 0;
    [WeakRetained _connectionQueue_handleNonLaunchingConnectionInterruption];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __39__PSPointerClientController_sharedInit__block_invoke_12(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_INFO, "Received invalidation for connection: %{public}@", &buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[2];
    if (v7 == v3)
    {
      WeakRetained[2] = 0;

      *&buf = 0;
      *(&buf + 1) = &buf;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy_;
      v20 = __Block_byref_object_dispose_;
      v21 = 0;
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = __Block_byref_object_copy_;
      v15[4] = __Block_byref_object_dispose_;
      v16 = 0;
      v8 = v6[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PSPointerClientController_sharedInit__block_invoke_13;
      block[3] = &unk_27839D888;
      block[4] = *(a1 + 32);
      block[5] = &buf;
      block[6] = v15;
      dispatch_sync(v8, block);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __39__PSPointerClientController_sharedInit__block_invoke_2_14;
      v10[3] = &unk_27839D8B0;
      v11 = v6;
      p_buf = &buf;
      v13 = v15;
      dispatch_async(MEMORY[0x277D85CD0], v10);

      _Block_object_dispose(v15, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __39__PSPointerClientController_sharedInit__block_invoke_13(void *a1)
{
  v2 = [*(a1[4] + 80) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 80) removeAllObjects];
  v5 = [*(a1[4] + 88) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1[4] + 88);

  return [v8 removeAllObjects];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_invalidationAndConfigurationLock);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__PSPointerClientController_invalidate__block_invoke;
  block[3] = &unk_27839D888;
  block[4] = self;
  block[5] = &v11;
  block[6] = &v5;
  dispatch_sync(accessQueue, block);
  [v12[5] invalidate];
  [v6[5] invalidate];
  os_unfair_lock_unlock(&self->_invalidationAndConfigurationLock);
  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(&v11, 8);
}

void __39__PSPointerClientController_invalidate__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 24));
  v2 = a1[4];
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = a1[4];
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

- (void)createPointerPortalSourceCollectionForDisplayUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [PSDisplay displayWithHardwareIdentifier:a3];
  [(PSPointerClientController *)self _createPointerPortalSourceCollectionForDisplay:v7 completion:v6];
}

- (void)invalidatePointerPortalSourceCollection:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  connectionQueue = self->_connectionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke;
  v12[3] = &unk_27839D9C8;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(connectionQueue, v12);
}

void __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[69] == 1)
  {
    objc_initWeak(&location, v2);
    v3 = [*(*(a1 + 32) + 16) remoteTarget];
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_2;
    v8[3] = &unk_27839D978;
    v9 = v4;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 48);
    [v3 invalidatePointerPortalSourceCollection:v9 completion:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = PSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_20;
      block[3] = &unk_27839D9A0;
      v7 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_2_cold_1(a1, v3);
    }

LABEL_4:

    goto LABEL_5;
  }

  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_17;
      block[3] = &unk_27839D7E0;
      block[4] = WeakRetained;
      v11 = a1[4];
      dispatch_sync(v6, block);
    }

    goto LABEL_4;
  }

LABEL_5:
  if (a1[5])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_2_18;
    v7[3] = &unk_27839D950;
    v9 = a1[5];
    v8 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

- (void)createContentMatchMoveSourcesForDisplayUUID:(id)a3 count:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [PSDisplay displayWithHardwareIdentifier:a3];
  [(PSPointerClientController *)self _createContentMatchMoveSourcesForDisplay:v9 count:a4 completion:v8];
}

- (void)invalidateContentMatchMoveSources:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  connectionQueue = self->_connectionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke;
  v12[3] = &unk_27839D9C8;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(connectionQueue, v12);
}

void __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[69] == 1)
  {
    objc_initWeak(&location, v2);
    v3 = [*(*(a1 + 32) + 16) remoteTarget];
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_2;
    v8[3] = &unk_27839D9F0;
    objc_copyWeak(&v11, &location);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    [v3 invalidateContentMatchMoveSources:v4 completion:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v5 = PSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_23;
      block[3] = &unk_27839D9A0;
      v7 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

void __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_2_cold_1(v3);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v4 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 1);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_21;
      block[3] = &unk_27839D7E0;
      v11 = a1[4];
      v12 = v4;
      dispatch_sync(v6, block);
    }
  }

  if (a1[5])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_2_22;
    v7[3] = &unk_27839D950;
    v9 = a1[5];
    v8 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

void __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_21(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 88) removeObject:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setActiveHoverRegion:(id)a3 transitionCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  connectionQueue = self->_connectionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke;
  v12[3] = &unk_27839D9C8;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(connectionQueue, v12);
}

void __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke_2;
  block[3] = &unk_27839DA18;
  block[4] = v2;
  block[5] = &v18;
  dispatch_sync(v3, block);
  v4 = *(a1 + 32);
  v5 = *(v4 + 69);
  if (v5 == 1 && (v19[3] || !*(a1 + 40)))
  {
    v6 = [*(v4 + 16) remoteTarget];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke_3;
    v15[3] = &unk_27839DA40;
    v7 = *(a1 + 40);
    v16 = *(a1 + 48);
    [v6 setActiveHoverRegion:v7 transitionCompletion:v15];

    v8 = &v16;
LABEL_9:

    goto LABEL_10;
  }

  v9 = PSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromSelector(*(a1 + 56));
    v11 = PSPointerClientInteractionStateToString(v19[3]);
    *buf = 138543874;
    v23 = v10;
    v24 = 1024;
    v25 = v5;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_21ED3B000, v9, OS_LOG_TYPE_INFO, "Unable to send message for %{public}@ with isConnectionActive: %{BOOL}u, clientInteractionState: %{public}@", buf, 0x1Cu);
  }

  if (*(a1 + 48))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke_24;
    v13[3] = &unk_27839D9A0;
    v8 = &v14;
    v14 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v13);
    goto LABEL_9;
  }

LABEL_10:
  _Block_object_dispose(&v18, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke_4;
    v4[3] = &unk_27839D950;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

void __71__PSPointerClientController_setActiveHoverRegion_transitionCompletion___block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSPointerClientControllerErrorDomain" code:-1003 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (id)acquireServiceKeepAliveAssertion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__PSPointerClientController_acquireServiceKeepAliveAssertion__block_invoke;
  v5[3] = &unk_27839DA18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __61__PSPointerClientController_acquireServiceKeepAliveAssertion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessQueue_acquireServiceKeepAliveAssertion];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)autohidePointerForReason:(unint64_t)a3
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__PSPointerClientController_autohidePointerForReason___block_invoke;
  block[3] = &unk_27839DA68;
  block[4] = self;
  block[5] = a3;
  block[6] = a2;
  dispatch_async(connectionQueue, block);
}

void __54__PSPointerClientController_autohidePointerForReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v5 = [*(v2 + 16) remoteTarget];
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
    [v5 autohidePointerForReason:v3];
  }

  else
  {
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__PSPointerClientController_autohidePointerForReason___block_invoke_cold_1(a1);
    }
  }
}

- (id)persistentlyHidePointerAssertionForReason:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke;
  v11[3] = &unk_27839DAB8;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v7 = [v6 initWithIdentifier:@"PSPointerHideAssertion" forReason:v5 invalidationBlock:v11];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_4;
  block[3] = &unk_27839DA90;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(accessQueue, block);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v7;
}

void __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_2;
    v7[3] = &unk_27839DA90;
    v5 = WeakRetained;
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_sync(v4, v7);
  }
}

void __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v2 removeObject:v3];

  if (![*(*(a1 + 32) + 40) count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = [*(*(a1 + 32) + 40) allObjects];
  v7 = *(a1 + 32);
  v8 = v7[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_3;
  v10[3] = &unk_27839D7E0;
  v11 = v7;
  v12 = v6;
  v9 = v6;
  dispatch_async(v8, v10);
}

void __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setPointerPersistentlyHiddenForReasons:*(a1 + 40)];
  }
}

void __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v2 addObject:v6];

  v7 = [*(*(a1 + 32) + 40) allObjects];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_5;
  v11[3] = &unk_27839D7E0;
  v11[4] = v8;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

void __71__PSPointerClientController_persistentlyHidePointerAssertionForReason___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setPointerPersistentlyHiddenForReasons:*(a1 + 40)];
  }
}

- (id)persistentlyShowPointerAssertionForReason:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", a3];
  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke;
  v11[3] = &unk_27839DAB8;
  objc_copyWeak(v12, &location);
  v12[1] = a3;
  v7 = [v6 initWithIdentifier:@"PSPointerShowAssertion" forReason:v5 invalidationBlock:v11];
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_4;
  block[3] = &unk_27839DA90;
  block[4] = self;
  block[5] = a3;
  dispatch_sync(accessQueue, block);
  objc_destroyWeak(v12);
  objc_destroyWeak(&location);

  return v7;
}

void __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_2;
    v7[3] = &unk_27839DA90;
    v5 = WeakRetained;
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_sync(v4, v7);
  }
}

void __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v2 removeObject:v3];

  if (![*(*(a1 + 32) + 48) count])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  v6 = [*(*(a1 + 32) + 48) allObjects];
  v7 = *(a1 + 32);
  v8 = v7[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_3;
  v10[3] = &unk_27839D7E0;
  v11 = v7;
  v12 = v6;
  v9 = v6;
  dispatch_async(v8, v10);
}

void __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setPointerPersistentlyVisibleForReasons:*(a1 + 40)];
  }
}

void __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCA940]) initWithCapacity:1];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(*(a1 + 32) + 48);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v2 addObject:v6];

  v7 = [*(*(a1 + 32) + 48) allObjects];
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_5;
  v11[3] = &unk_27839D7E0;
  v11[4] = v8;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

void __71__PSPointerClientController_persistentlyShowPointerAssertionForReason___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setPointerPersistentlyVisibleForReasons:*(a1 + 40)];
  }
}

- (id)setSystemPointerInteractionContextID:(unsigned int)a3 displayUUID:(id)a4
{
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  accessQueue = self->_accessQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke;
  v11[3] = &unk_27839DB30;
  v12 = v6;
  v13 = self;
  v15 = a3;
  v14 = &v16;
  v8 = v6;
  dispatch_sync(accessQueue, v11);
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [PSDisplay displayWithHardwareIdentifier:*(a1 + 32)];
  v3 = [*(*(a1 + 40) + 120) objectForKeyedSubscript:v2];
  if (v3)
  {
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 56);
      *buf = 67109634;
      v23 = v16;
      v24 = 2114;
      v25 = v2;
      v26 = 1024;
      v27 = [v3 unsignedIntValue];
      _os_log_error_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_ERROR, "Trying to set the systemPointerInteractionContextID to 0x%x for %{public}@ but we aleady have one: 0x%x ", buf, 0x18u);
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CF0CE8]);
    v6 = [v2 description];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_43;
    v20[3] = &unk_27839DAE0;
    v20[4] = *(a1 + 40);
    v7 = v2;
    v21 = v7;
    v8 = [v5 initWithIdentifier:@"PSSystemPointerInteraction" forReason:v6 invalidationBlock:v20];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 56)];
    [*(*(a1 + 40) + 120) setObject:v11 forKeyedSubscript:v7];
    v12 = *(a1 + 40);
    v13 = *(v12 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_4;
    block[3] = &unk_27839DB08;
    block[4] = v12;
    v18 = v11;
    v19 = v7;
    v14 = v11;
    dispatch_async(v13, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_43(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_2;
  block[3] = &unk_27839D7E0;
  block[4] = v3;
  v11 = v2;
  dispatch_sync(v4, block);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_3;
  v8[3] = &unk_27839D7E0;
  v8[4] = v6;
  v9 = v5;
  dispatch_async(v7, v8);
}

void __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setSystemPointerInteractionContextID:0 display:*(a1 + 40)];
  }
}

void __78__PSPointerClientController_setSystemPointerInteractionContextID_displayUUID___block_invoke_4(void *a1)
{
  v2 = a1[4];
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setSystemPointerInteractionContextID:a1[5] display:a1[6]];
  }
}

- (id)acquireOverridingHoverRegionAssertionForDisplay:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke;
  block[3] = &unk_27839DB58;
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke(void *a1)
{
  v2 = [PSDisplay displayWithHardwareIdentifier:a1[4]];
  v3 = [*(a1[5] + 128) objectForKeyedSubscript:v2];
  if (v3)
  {
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_cold_1();
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v3);
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CF0CE8]);
    v6 = [v2 description];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_47;
    v15[3] = &unk_27839DAE0;
    v15[4] = a1[5];
    v7 = v2;
    v16 = v7;
    v8 = [v5 initWithIdentifier:@"PSHoverRegionOverride" forReason:v6 invalidationBlock:v15];
    v9 = *(a1[6] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [*(a1[5] + 128) setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:v7];
    v11 = a1[5];
    v12 = *(v11 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_4;
    v13[3] = &unk_27839D7E0;
    v13[4] = v11;
    v14 = v7;
    dispatch_async(v12, v13);
  }
}

void __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_47(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_2;
  block[3] = &unk_27839D7E0;
  block[4] = v3;
  v11 = v2;
  dispatch_sync(v4, block);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_3;
  v8[3] = &unk_27839D7E0;
  v8[4] = v6;
  v9 = v5;
  dispatch_async(v7, v8);
}

void __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setOverridesHoverRegions:MEMORY[0x277CBEC28] display:*(a1 + 40)];
  }
}

void __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 69) == 1)
  {
    v4 = [*(v2 + 16) remoteTarget];
    [v4 setOverridesHoverRegions:MEMORY[0x277CBEC38] display:*(a1 + 40)];
  }
}

- (void)clientInteractionStateDidChange:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 integerValue];
  v5 = PSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PSPointerClientInteractionStateToString(v4);
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_21ED3B000, v5, OS_LOG_TYPE_DEFAULT, "clientInteractionStateDidChange: %{public}@", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__PSPointerClientController_clientInteractionStateDidChange___block_invoke;
  v9[3] = &unk_27839DA90;
  v9[4] = self;
  v9[5] = v4;
  dispatch_sync(accessQueue, v9);
  v8 = *MEMORY[0x277D85DE8];
}

void __61__PSPointerClientController_clientInteractionStateDidChange___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v3 + 104);
  if (v5 != v4)
  {
    v11 = v1;
    v12 = v2;
    *(v3 + 104) = v4;
    v6 = *(a1 + 32);
    v7 = *(v6 + 104) == 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__PSPointerClientController_clientInteractionStateDidChange___block_invoke_2;
    v8[3] = &unk_27839DB80;
    v8[4] = v6;
    v9 = (v5 == 1) ^ v7;
    v10 = 1;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

uint64_t __61__PSPointerClientController_clientInteractionStateDidChange___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  if (*(a1 + 40) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pointerClientControllerClientInteractionEnabledDidChange:*(a1 + 32)];
  }

  if (*(a1 + 41) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pointerClientControllerClientInteractionStateDidChange:*(a1 + 32)];
  }

  return MEMORY[0x2821F97C8]();
}

- (void)pointerVisibilityStateDidChange:(id)a3
{
  v4 = [a3 integerValue];
  accessQueue = self->_accessQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__PSPointerClientController_pointerVisibilityStateDidChange___block_invoke;
  v6[3] = &unk_27839DA90;
  v6[4] = self;
  v6[5] = v4;
  dispatch_sync(accessQueue, v6);
}

void __61__PSPointerClientController_pointerVisibilityStateDidChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 112) != v2)
  {
    *(v1 + 112) = v2;
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PSPointerVisibilityStateToString(*(a1 + 40));
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_DEFAULT, "pointerVisibilityStateDidChange: %{public}@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PSPointerClientController_pointerVisibilityStateDidChange___block_invoke_52;
    block[3] = &unk_27839D928;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __61__PSPointerClientController_pointerVisibilityStateDidChange___block_invoke_52(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained pointerClientControllerPointerVisibilityStateDidChange:*(a1 + 32)];
  }
}

- (void)adjustedDecelerationTargetPointerPosition:(id)a3 velocity:(id)a4 inContextID:(id)a5 cursorRegionLookupRadius:(id)a6 cursorRegionLookupResolution:(id)a7 lookupConeAngle:(id)a8 completion:(id)a9
{
  v16 = a9;
  if (v16)
  {
    v17 = a8;
    v18 = a7;
    v19 = a6;
    v20 = a5;
    v21 = a4;
    [a3 bs_CGPointValue];
    v23 = v22;
    v25 = v24;
    [v21 bs_CGPointValue];
    v27 = v26;
    v29 = v28;

    v30 = [v20 unsignedIntValue];
    [v19 doubleValue];
    v32 = v31;

    [v18 doubleValue];
    v34 = v33;

    [v17 doubleValue];
    v36 = v35;

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __173__PSPointerClientController_adjustedDecelerationTargetPointerPosition_velocity_inContextID_cursorRegionLookupRadius_cursorRegionLookupResolution_lookupConeAngle_completion___block_invoke;
    v37[3] = &unk_27839DBD0;
    v37[4] = self;
    v39 = v23;
    v40 = v25;
    v41 = v27;
    v42 = v29;
    v46 = v30;
    v43 = v32;
    v44 = v34;
    v45 = v36;
    v38 = v16;
    dispatch_async(MEMORY[0x277D85CD0], v37);
  }
}

void __173__PSPointerClientController_adjustedDecelerationTargetPointerPosition_velocity_inContextID_cursorRegionLookupRadius_cursorRegionLookupResolution_lookupConeAngle_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 104);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    v6 = *(a1 + 96);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __173__PSPointerClientController_adjustedDecelerationTargetPointerPosition_velocity_inContextID_cursorRegionLookupRadius_cursorRegionLookupResolution_lookupConeAngle_completion___block_invoke_2;
    v13[3] = &unk_27839DBA8;
    v7 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v2 pointerClientControllerWillDecelerate:v7 targetPointerPosition:v3 velocity:v13 inContextID:*(a1 + 48) cursorRegionLookupRadius:*(a1 + 56) cursorRegionLookupResolution:*(a1 + 64) lookupConeAngle:*(a1 + 72) resultHandler:{v4, v5, v6}];
  }

  else if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 48);
    [v2 pointerClientControllerWillDecelerate:*(a1 + 32) targetPointerPosition:&v12 velocity:*(a1 + 104) inContextID:*(a1 + 64) cursorRegionLookupRadius:*(a1 + 72) cursorRegionLookupResolution:*(a1 + 80) lookupConeAngle:{*(a1 + 88), *(a1 + 96)}];
    v8 = *(a1 + 40);
    v9 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:v12];
    (*(v8 + 16))(v8, v9, 0);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:{*(a1 + 48), *(a1 + 56)}];
    (*(v10 + 16))(v10, v11, 0);
  }
}

void __173__PSPointerClientController_adjustedDecelerationTargetPointerPosition_velocity_inContextID_cursorRegionLookupRadius_cursorRegionLookupResolution_lookupConeAngle_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCAE60] bs_valueWithCGPoint:?];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)invalidatedPortalSourceCollections:(id)a3 matchMoveSources:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = PSLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v23 = [v6 count];
    v24 = 2048;
    v25 = [v7 count];
    _os_log_impl(&dword_21ED3B000, v8, OS_LOG_TYPE_DEFAULT, "server invalidated %lu portalSourceCollections + %lu matchMoveSources", buf, 0x16u);
  }

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__PSPointerClientController_invalidatedPortalSourceCollections_matchMoveSources___block_invoke;
  block[3] = &unk_27839DB08;
  v10 = v6;
  v19 = v10;
  v20 = self;
  v11 = v7;
  v21 = v11;
  dispatch_sync(accessQueue, block);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__PSPointerClientController_invalidatedPortalSourceCollections_matchMoveSources___block_invoke_2;
  v15[3] = &unk_27839DB08;
  v15[4] = self;
  v16 = v10;
  v17 = v11;
  v12 = v11;
  v13 = v10;
  dispatch_async(MEMORY[0x277D85CD0], v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __81__PSPointerClientController_invalidatedPortalSourceCollections_matchMoveSources___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(a1 + 40) + 80) removeObject:*(*(&v17 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(a1 + 40) + 88) removeObject:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_createPointerPortalSourceCollectionForDisplay:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  connectionQueue = self->_connectionQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke;
  v12[3] = &unk_27839D9C8;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v15 = a2;
  v10 = v8;
  v11 = v7;
  dispatch_async(connectionQueue, v12);
}

void __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_2;
  block[3] = &unk_27839DA18;
  block[4] = v2;
  block[5] = &v18;
  dispatch_sync(v3, block);
  v4 = *(a1 + 32);
  v5 = v4[69];
  if (v5 == 1 && v19[3])
  {
    objc_initWeak(location, v4);
    v6 = [*(*(a1 + 32) + 16) remoteTarget];
    v7 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_3;
    v14[3] = &unk_27839DC20;
    objc_copyWeak(&v16, location);
    v15 = *(a1 + 48);
    [v6 createPointerPortalSourceCollectionForDisplay:v7 completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = PSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = PSPointerClientInteractionStateToString(v19[3]);
      *location = 138543874;
      *&location[4] = v10;
      v23 = 1024;
      v24 = v5;
      v25 = 2114;
      v26 = v11;
      _os_log_error_impl(&dword_21ED3B000, v8, OS_LOG_TYPE_ERROR, "Unable to send message for %{public}@ with isConnectionActive: %{BOOL}u, clientInteractionState: %{public}@", location, 0x1Cu);
    }

    if (*(a1 + 48))
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_64;
      v12[3] = &unk_27839D9A0;
      v13 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], v12);
    }
  }

  _Block_object_dispose(&v18, 8);
  v9 = *MEMORY[0x277D85DE8];
}

void __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_3_cold_1(v6);
    }
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = WeakRetained[1];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_61;
      block[3] = &unk_27839D7E0;
      block[4] = WeakRetained;
      v16 = v5;
      dispatch_sync(v10, block);
    }
  }

  if (*(a1 + 32))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_2_62;
    v11[3] = &unk_27839DBF8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSPointerClientControllerErrorDomain" code:-1003 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)_createContentMatchMoveSourcesForDisplay:(id)a3 count:(unint64_t)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a5;
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke;
  block[3] = &unk_27839DC70;
  block[4] = self;
  v15 = v9;
  v16 = v10;
  v17 = a4;
  v18 = a2;
  v12 = v10;
  v13 = v9;
  dispatch_async(connectionQueue, block);
}

void __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_2;
  block[3] = &unk_27839DA18;
  block[4] = v2;
  block[5] = &v19;
  dispatch_sync(v3, block);
  v4 = *(a1 + 32);
  v5 = v4[69];
  if (v5 == 1 && v20[3])
  {
    objc_initWeak(location, v4);
    v6 = [*(*(a1 + 32) + 16) remoteTarget];
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_3;
    v15[3] = &unk_27839DC48;
    objc_copyWeak(&v17, location);
    v16 = *(a1 + 48);
    [v6 createContentMatchMoveSourcesForDisplay:v7 countValue:v8 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = PSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(*(a1 + 64));
      v12 = PSPointerClientInteractionStateToString(v20[3]);
      *location = 138543874;
      *&location[4] = v11;
      v24 = 1024;
      v25 = v5;
      v26 = 2114;
      v27 = v12;
      _os_log_error_impl(&dword_21ED3B000, v9, OS_LOG_TYPE_ERROR, "Unable to send message for %{public}@ with isConnectionActive: %{BOOL}u, clientInteractionState: %{public}@", location, 0x1Cu);
    }

    if (*(a1 + 48))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_68;
      v13[3] = &unk_27839D9A0;
      v14 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }
  }

  _Block_object_dispose(&v19, 8);
  v10 = *MEMORY[0x277D85DE8];
}

void __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_3_cold_1(v6);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_65;
    block[3] = &unk_27839D7E0;
    block[4] = WeakRetained;
    v16 = v5;
    dispatch_sync(v10, block);
  }

  if (*(a1 + 32))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_2_66;
    v11[3] = &unk_27839DBF8;
    v14 = *(a1 + 32);
    v12 = v5;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PSPointerClientControllerErrorDomain" code:-1003 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)_accessQueue_acquireServiceKeepAliveAssertion
{
  dispatch_assert_queue_V2(self->_accessQueue);
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277CF0CE8]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke;
  v11[3] = &unk_27839DC98;
  objc_copyWeak(&v12, &location);
  v4 = [v3 initWithIdentifier:@"PSPointerServiceKeepAliveAssertion" forReason:@"ClientRequested" invalidationBlock:v11];
  serviceKeepAliveAssertions = self->_serviceKeepAliveAssertions;
  if (!serviceKeepAliveAssertions)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    v7 = self->_serviceKeepAliveAssertions;
    self->_serviceKeepAliveAssertions = v6;

    serviceKeepAliveAssertions = self->_serviceKeepAliveAssertions;
  }

  [(NSMutableArray *)serviceKeepAliveAssertions addObject:v4];
  if ([(NSMutableArray *)self->_serviceKeepAliveAssertions count]== 1)
  {
    connectionQueue = self->_connectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke_4;
    block[3] = &unk_27839D928;
    block[4] = self;
    dispatch_async(connectionQueue, block);
  }

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v4;
}

void __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke_2;
    v7[3] = &unk_27839D7E0;
    v8 = WeakRetained;
    v9 = v3;
    dispatch_sync(v6, v7);
  }
}

void __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke_2(uint64_t a1)
{
  if ([*(*(a1 + 32) + 56) containsObject:*(a1 + 40)])
  {
    [*(*(a1 + 32) + 56) removeObject:*(a1 + 40)];
    if (![*(*(a1 + 32) + 56) count])
    {
      v2 = *(a1 + 32);
      v3 = v2[4];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke_3;
      block[3] = &unk_27839D928;
      v5 = v2;
      dispatch_async(v3, block);
    }
  }
}

void __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 68) == 1)
  {
    v3 = [*(v2 + 24) remoteTarget];
    [v3 setWantsServiceKeepAlive:MEMORY[0x277CBEC28]];
  }
}

void __74__PSPointerClientController__accessQueue_acquireServiceKeepAliveAssertion__block_invoke_4(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _connectionQueue_launchingConnection];
  v3 = *(a1 + 32);
  if ((*(v3 + 68) & 1) == 0)
  {
    *(v3 + 68) = 1;
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138543362;
      v8 = v2;
      _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_INFO, "Activating Launching Connection: %{public}@", &v7, 0xCu);
    }

    [v2 activate];
  }

  v5 = [v2 remoteTarget];
  [v5 setWantsServiceKeepAlive:MEMORY[0x277CBEC38]];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_connectionQueue_handleNonLaunchingConnectionActivation
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionActivation__block_invoke;
  block[3] = &unk_27839DCC0;
  block[4] = self;
  block[5] = &v24;
  block[6] = &v18;
  block[7] = &v12;
  dispatch_sync(accessQueue, block);
  v4 = v19[5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionActivation__block_invoke_2;
  v10[3] = &unk_27839DCE8;
  v10[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];
  v5 = v13[5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionActivation__block_invoke_3;
  v9[3] = &unk_27839DD10;
  v9[4] = self;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  if ([v25[5] count])
  {
    v6 = [(BSServiceConnection *)self->_nonLaunchingConnection remoteTarget];
    [v6 setPointerPersistentlyHiddenForReasons:v25[5]];
  }

  if ([(NSCountedSet *)self->_persistentPointerShowReasons count])
  {
    v7 = [(NSCountedSet *)self->_persistentPointerShowReasons allObjects];
    v8 = [(BSServiceConnection *)self->_nonLaunchingConnection remoteTarget];
    [v8 setPointerPersistentlyVisibleForReasons:v7];
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
}

uint64_t __84__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionActivation__block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) allObjects];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 120) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1[4] + 128) copy];
  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  return MEMORY[0x2821F96F8]();
}

void __84__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionActivation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 16);
  v5 = a3;
  v6 = a2;
  v7 = [v4 remoteTarget];
  [v7 setSystemPointerInteractionContextID:v5 display:v6];
}

void __84__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionActivation__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 remoteTarget];
  [v4 setOverridesHoverRegions:MEMORY[0x277CBEC38] display:v3];
}

- (void)_connectionQueue_handleNonLaunchingConnectionInterruption
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionInterruption__block_invoke;
  block[3] = &unk_27839D928;
  block[4] = self;
  dispatch_sync(accessQueue, block);
  [(BSServiceConnection *)self->_nonLaunchingConnection activate];
}

void __86__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionInterruption__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = v3 == 1;
    *(v2 + 104) = 0;
    v2 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 != 0;
  v6 = [*(v2 + 80) copy];
  [*(*(a1 + 32) + 80) removeAllObjects];
  v7 = [*(*(a1 + 32) + 88) copy];
  [*(*(a1 + 32) + 88) removeAllObjects];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionInterruption__block_invoke_2;
  v10[3] = &unk_27839DD38;
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v4;
  v14 = v5;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __86__PSPointerClientController__connectionQueue_handleNonLaunchingConnectionInterruption__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _main_notifyDelegateOfInvalidatedRemoteSourcesSpecificallyThesePortalSourceCollections:*(a1 + 40) matchMoveSources:*(a1 + 48)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  if (*(a1 + 56) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pointerClientControllerClientInteractionEnabledDidChange:*(a1 + 32)];
  }

  if (*(a1 + 57) == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained pointerClientControllerClientInteractionStateDidChange:*(a1 + 32)];
  }

  return MEMORY[0x2821F97C8]();
}

- (void)_connectionQueue_handleLaunchingConnectionInterruption
{
  v15 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_connectionQueue);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__PSPointerClientController__connectionQueue_handleLaunchingConnectionInterruption__block_invoke;
  v8[3] = &unk_27839DA18;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(accessQueue, v8);
  if (*(v10 + 24) == 1)
  {
    v4 = [(PSPointerClientController *)self _connectionQueue_launchingConnection];
    if (!self->_hasActivatedLaunchingConnection)
    {
      self->_hasActivatedLaunchingConnection = 1;
      v5 = PSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v14 = v4;
        _os_log_impl(&dword_21ED3B000, v5, OS_LOG_TYPE_INFO, "Activating Launching Connection: %{public}@", buf, 0xCu);
      }

      [v4 activate];
    }

    v6 = [v4 remoteTarget];
    [v6 setWantsServiceKeepAlive:MEMORY[0x277CBEC38]];
  }

  _Block_object_dispose(&v9, 8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __83__PSPointerClientController__connectionQueue_handleLaunchingConnectionInterruption__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

- (id)_connectionQueue_launchingConnection
{
  dispatch_assert_queue_V2(self->_connectionQueue);
  launchingConnection = self->_launchingConnection;
  if (!launchingConnection)
  {
    v4 = MEMORY[0x277CF3288];
    v5 = +[PSPointerClientDefaultLaunchingServiceSpecification machName];
    v6 = +[PSPointerClientDefaultLaunchingServiceSpecification serviceName];
    v7 = [v4 endpointForMachName:v5 service:v6 instance:0];

    v8 = [MEMORY[0x277CF3280] connectionWithEndpoint:v7];
    v9 = self->_launchingConnection;
    self->_launchingConnection = v8;

    v10 = self->_launchingConnection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke;
    v12[3] = &unk_27839DD80;
    v12[4] = self;
    [(BSServiceConnection *)v10 configureConnection:v12];

    launchingConnection = self->_launchingConnection;
  }

  return launchingConnection;
}

void __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PSPointerClientDefaultLaunchingServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[PSPointerClientDefaultLaunchingServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  [v3 setTargetQueue:*(*(a1 + 32) + 32)];
  objc_initWeak(&location, *(a1 + 32));
  [v3 setActivationHandler:&__block_literal_global_0];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke_79;
  v8[3] = &unk_27839D860;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke_80;
  v6[3] = &unk_27839D860;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = PSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_21ED3B000, v3, OS_LOG_TYPE_INFO, "Launching Connection Activated: %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke_79(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_INFO, "Received interruption for launching connection: %{public}@", &v8, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 3) == v3)
  {
    *(WeakRetained + 68) = 0;
    [WeakRetained _connectionQueue_handleLaunchingConnectionInterruption];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __65__PSPointerClientController__connectionQueue_launchingConnection__block_invoke_80(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v3;
    _os_log_impl(&dword_21ED3B000, v4, OS_LOG_TYPE_INFO, "Received invalidation for launching connection: %{public}@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(WeakRetained + 3);
    if (v7 == v3)
    {
      *(WeakRetained + 68) = 0;
      *(WeakRetained + 3) = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_main_notifyDelegateOfInvalidatedRemoteSourcesSpecificallyThesePortalSourceCollections:(id)a3 matchMoveSources:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = [(PSPointerClientController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 pointerClientController:self didInvalidatePortalSourceCollections:v6 matchMoveSources:v7];
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy_;
    v34 = __Block_byref_object_dispose_;
    v35 = 0;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __133__PSPointerClientController__main_notifyDelegateOfInvalidatedRemoteSourcesSpecificallyThesePortalSourceCollections_matchMoveSources___block_invoke;
    block[3] = &unk_27839D888;
    block[4] = self;
    block[5] = &v30;
    block[6] = &v24;
    dispatch_sync(accessQueue, block);
    v10 = PSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v31[5] count];
      v12 = [v25[5] count];
      *buf = 134218240;
      v38 = v11;
      v39 = 2048;
      v40 = v12;
      _os_log_impl(&dword_21ED3B000, v10, OS_LOG_TYPE_DEFAULT, "delegate doesn't support individual source invalidation, invalidating %lu additional portalSourceCollections + %lu additional matchMoveSources", buf, 0x16u);
    }

    v13 = [v25[5] allObjects];
    [(PSPointerClientController *)self invalidateContentMatchMoveSources:v13 completion:0];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = v31[5];
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v36 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(PSPointerClientController *)self invalidatePointerPortalSourceCollection:*(*(&v19 + 1) + 8 * v17++) completion:0, v19];
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v19 objects:v36 count:16];
      }

      while (v15);
    }

    if (objc_opt_respondsToSelector())
    {
      [v8 pointerClientControllerDidInvalidateRemoteSources:self];
    }

    _Block_object_dispose(&v24, 8);

    _Block_object_dispose(&v30, 8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __133__PSPointerClientController__main_notifyDelegateOfInvalidatedRemoteSourcesSpecificallyThesePortalSourceCollections_matchMoveSources___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) copy];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 80) removeAllObjects];
  v5 = [*(a1[4] + 88) copy];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1[4] + 88);

  return [v8 removeAllObjects];
}

- (PSPointerClientControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

void __80__PSPointerClientController_invalidatePointerPortalSourceCollection_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  [a2 code];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 56));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

void __74__PSPointerClientController_invalidateContentMatchMoveSources_completion___block_invoke_2_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __54__PSPointerClientController_autohidePointerForReason___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(*(a1 + 48));
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

void __77__PSPointerClientController_acquireOverridingHoverRegionAssertionForDisplay___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_21ED3B000, v0, OS_LOG_TYPE_ERROR, "Trying to acquire an overriding hover region assertion but we already have one for this display %{public}@, returning the existing assertion.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __87__PSPointerClientController__createPointerPortalSourceCollectionForDisplay_completion___block_invoke_3_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __87__PSPointerClientController__createContentMatchMoveSourcesForDisplay_count_completion___block_invoke_3_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 code];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end
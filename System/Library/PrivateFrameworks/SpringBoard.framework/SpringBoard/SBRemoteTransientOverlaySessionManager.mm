@interface SBRemoteTransientOverlaySessionManager
- (BOOL)hasActiveSessionMatchingPredicate:(id)a3 options:(int64_t)a4;
- (BOOL)hasActiveSessionWithSceneIdentityTokenString:(id)a3 options:(int64_t)a4;
- (BOOL)hasSessionWithPendingButtonEvents:(unint64_t)a3 options:(int64_t)a4;
- (BOOL)hasSessionWithServiceProcessIdentifier:(int)a3 options:(int64_t)a4;
- (BOOL)remoteTransientOverlaySession:(id)a3 performDismissalRequest:(id)a4;
- (BOOL)remoteTransientOverlaySession:(id)a3 performPresentationRequest:(id)a4;
- (BOOL)remoteTransientOverlaySession:(id)a3 prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:(id)a4;
- (BOOL)remoteTransientOverlaySession:(id)a3 shouldActivateWithContext:(id)a4;
- (SBRemoteTransientOverlaySessionManager)init;
- (SBRemoteTransientOverlaySessionManagerDelegate)delegate;
- (id)_createSessionWithDefinition:(id)a3;
- (id)_existingSessionsWithDefinition:(id)a3 options:(int64_t)a4;
- (id)createSessionWithDefinition:(id)a3;
- (id)embeddedDisplayWindowSceneForRemoteTransientOverlaySession:(id)a3;
- (id)existingSessionWithSessionID:(id)a3 options:(int64_t)a4;
- (id)existingSessionsWithDefinition:(id)a3 options:(int64_t)a4;
- (id)sessionWithDefinition:(id)a3 options:(int64_t)a4;
- (id)sessionsWithDefinition:(id)a3 options:(int64_t)a4;
- (int64_t)activeWallpaperVariantForRemoteTransientOverlaySession:(id)a3;
- (void)addObserver:(id)a3;
- (void)remoteTransientOverlaySession:(id)a3 didInvalidateWithReason:(int64_t)a4 error:(id)a5;
- (void)remoteTransientOverlaySession:(id)a3 requestsHandlingForButtonEvents:(unint64_t)a4 viewController:(id)a5;
- (void)removeObserver:(id)a3;
@end

@implementation SBRemoteTransientOverlaySessionManager

- (SBRemoteTransientOverlaySessionManager)init
{
  v9.receiver = self;
  v9.super_class = SBRemoteTransientOverlaySessionManager;
  v2 = [(SBRemoteTransientOverlaySessionManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SpringBoard.SBRemoteTransientOverlaySessionManager.accessSerialQueue", v3);
    accessSerialQueue = v2->_accessSerialQueue;
    v2->_accessSerialQueue = v4;

    v6 = [objc_alloc(MEMORY[0x277D65F20]) initWithIdentifier:@"com.apple.SpringBoard.SceneWorkspace.RemoteAlert" delegate:v2];
    sceneWorkspaceController = v2->_sceneWorkspaceController;
    v2->_sceneWorkspaceController = v6;
  }

  return v2;
}

- (id)embeddedDisplayWindowSceneForRemoteTransientOverlaySession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained remoteTransientOverlaySessionManager:self embeddedDisplayWindowSceneForRemoteTransientOverlaySession:v4];

  return v6;
}

- (int64_t)activeWallpaperVariantForRemoteTransientOverlaySession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained remoteTransientOverlaySessionManager:self activeWallpaperVariantForSession:v4];

  return v6;
}

- (BOOL)remoteTransientOverlaySession:(id)a3 shouldActivateWithContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained remoteTransientOverlaySessionManager:self shouldActivateOverlayWithContext:v6 forSession:v7];

  return self;
}

- (BOOL)remoteTransientOverlaySession:(id)a3 performDismissalRequest:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained remoteTransientOverlaySessionManager:self performDismissalRequest:v6 forSession:v7];

  return self;
}

- (BOOL)remoteTransientOverlaySession:(id)a3 performPresentationRequest:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained remoteTransientOverlaySessionManager:self performPresentationRequest:v7 forSession:v6];

  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(NSHashTable *)self->_observers copy];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14++) remoteTransientOverlaySessionManager:self didActivateSession:v6];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  return v9;
}

- (BOOL)remoteTransientOverlaySession:(id)a3 prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained remoteTransientOverlaySessionManager:self prefersStatusBarActivityItemVisibleForServiceBundleIdentifier:v6 forSession:v7];

  return self;
}

- (void)remoteTransientOverlaySession:(id)a3 didInvalidateWithReason:(int64_t)a4 error:(id)a5
{
  v6 = [a3 sessionID];
  accessSerialQueue = self->_accessSerialQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__SBRemoteTransientOverlaySessionManager_remoteTransientOverlaySession_didInvalidateWithReason_error___block_invoke;
  v9[3] = &unk_2783A92D8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(accessSerialQueue, v9);
}

- (void)remoteTransientOverlaySession:(id)a3 requestsHandlingForButtonEvents:(unint64_t)a4 viewController:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained remoteTransientOverlaySessionManager:self requestsHandlingForButtonEvents:a4 forSession:v9 viewController:v8];
}

- (id)createSessionWithDefinition:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__21;
  v16 = __Block_byref_object_dispose__21;
  v17 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SBRemoteTransientOverlaySessionManager_createSessionWithDefinition___block_invoke;
  block[3] = &unk_2783AB258;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(accessSerialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __70__SBRemoteTransientOverlaySessionManager_createSessionWithDefinition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createSessionWithDefinition:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)existingSessionsWithDefinition:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__21;
  v19 = __Block_byref_object_dispose__21;
  v20 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SBRemoteTransientOverlaySessionManager_existingSessionsWithDefinition_options___block_invoke;
  v11[3] = &unk_2783AA668;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(accessSerialQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __81__SBRemoteTransientOverlaySessionManager_existingSessionsWithDefinition_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingSessionsWithDefinition:*(a1 + 40) options:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)existingSessionWithSessionID:(id)a3 options:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__SBRemoteTransientOverlaySessionManager_existingSessionWithSessionID_options___block_invoke;
  block[3] = &unk_2783AB258;
  v13 = &v14;
  block[4] = self;
  v8 = v6;
  v12 = v8;
  dispatch_sync(accessSerialQueue, block);
  if (_SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(v15[5], v4))
  {
    v9 = v15[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __79__SBRemoteTransientOverlaySessionManager_existingSessionWithSessionID_options___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasSessionWithPendingButtonEvents:(unint64_t)a3 options:(int64_t)a4
{
  v4 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__21;
  v23 = __Block_byref_object_dispose__21;
  v24 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SBRemoteTransientOverlaySessionManager_hasSessionWithPendingButtonEvents_options___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(accessSerialQueue, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v20[5];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (_SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(v11, v4) & 1) != 0 && ([v11 hasPendingButtonEvents:{a3, v14}])
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  _Block_object_dispose(&v19, 8);
  return v12;
}

void __84__SBRemoteTransientOverlaySessionManager_hasSessionWithPendingButtonEvents_options___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasSessionWithServiceProcessIdentifier:(int)a3 options:(int64_t)a4
{
  v4 = a4;
  v5 = *&a3;
  v26 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__21;
  v23 = __Block_byref_object_dispose__21;
  v24 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SBRemoteTransientOverlaySessionManager_hasSessionWithServiceProcessIdentifier_options___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(accessSerialQueue, block);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v20[5];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (_SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(v11, v4) & 1) != 0 && ([v11 hasServiceProcessIdentifier:{v5, v14}])
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  _Block_object_dispose(&v19, 8);
  return v12;
}

void __89__SBRemoteTransientOverlaySessionManager_hasSessionWithServiceProcessIdentifier_options___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasActiveSessionWithSceneIdentityTokenString:(id)a3 options:(int64_t)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__21;
  v24 = __Block_byref_object_dispose__21;
  v25 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SBRemoteTransientOverlaySessionManager_hasActiveSessionWithSceneIdentityTokenString_options___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(accessSerialQueue, block);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v21[5];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (_SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(v12, v4) & 1) != 0 && [v12 isActivated] && (objc_msgSend(v12, "isPresentedFromSceneWithIdentityTokenString:", v6))
        {
          v13 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __95__SBRemoteTransientOverlaySessionManager_hasActiveSessionWithSceneIdentityTokenString_options___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)hasActiveSessionMatchingPredicate:(id)a3 options:(int64_t)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__21;
  v24 = __Block_byref_object_dispose__21;
  v25 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SBRemoteTransientOverlaySessionManager_hasActiveSessionMatchingPredicate_options___block_invoke;
  block[3] = &unk_2783A8CE0;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(accessSerialQueue, block);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v21[5];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (_SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(v12, v4) & 1) != 0 && [v12 isActivated] && (v6[2](v6, v12))
        {
          v13 = 1;
          goto LABEL_13;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v26 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __84__SBRemoteTransientOverlaySessionManager_hasActiveSessionMatchingPredicate_options___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)sessionWithDefinition:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__21;
  v19 = __Block_byref_object_dispose__21;
  v20 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__SBRemoteTransientOverlaySessionManager_sessionWithDefinition_options___block_invoke;
  v11[3] = &unk_2783AA668;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(accessSerialQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __72__SBRemoteTransientOverlaySessionManager_sessionWithDefinition_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _existingSessionsWithDefinition:*(a1 + 40) options:*(a1 + 56)];
  v3 = [v2 firstObject];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) _createSessionWithDefinition:*(a1 + 40)];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (id)sessionsWithDefinition:(id)a3 options:(int64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__21;
  v19 = __Block_byref_object_dispose__21;
  v20 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SBRemoteTransientOverlaySessionManager_sessionsWithDefinition_options___block_invoke;
  v11[3] = &unk_2783AA668;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(accessSerialQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __73__SBRemoteTransientOverlaySessionManager_sessionsWithDefinition_options___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _existingSessionsWithDefinition:*(a1 + 40) options:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v5 = [*(a1 + 32) _createSessionWithDefinition:*(a1 + 40)];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v8 = v4;
    if (!observers)
    {
      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v8];
    v4 = v8;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    [(NSHashTable *)self->_observers removeObject:v4];
    v5 = [(NSHashTable *)self->_observers count];
    v4 = v7;
    if (!v5)
    {
      observers = self->_observers;
      self->_observers = 0;

      v4 = v7;
    }
  }
}

- (id)_createSessionWithDefinition:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_accessSerialQueue);
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  v7 = [[SBRemoteTransientOverlaySession alloc] _initWithSessionID:v6 definition:v4 sceneWorkspaceController:self->_sceneWorkspaceController];
  [v7 setHostDelegate:self];
  sessionIDToSession = self->_sessionIDToSession;
  if (!sessionIDToSession)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_sessionIDToSession;
    self->_sessionIDToSession = v9;

    sessionIDToSession = self->_sessionIDToSession;
  }

  [(NSMutableDictionary *)sessionIDToSession setObject:v7 forKey:v6];
  v11 = SBLogTransientOverlay();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v7;
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Created %{public}@ for definition: %{public}@", &v13, 0x16u);
  }

  return v7;
}

- (id)_existingSessionsWithDefinition:(id)a3 options:(int64_t)a4
{
  v36 = a4;
  v44 = *MEMORY[0x277D85DE8];
  v5 = a3;
  dispatch_assert_queue_V2(self->_accessSerialQueue);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(NSMutableDictionary *)self->_sessionIDToSession objectEnumerator];
  v6 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (!v6)
  {
    v37 = 0;
    goto LABEL_26;
  }

  v7 = v6;
  v37 = 0;
  v8 = *v40;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v40 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v39 + 1) + 8 * i);
      v11 = [v10 definition];
      v12 = v5;
      v13 = [v11 sceneProvidingProcess];

      v14 = [v12 sceneProvidingProcess];

      if ((v13 != 0) == (v14 == 0))
      {
LABEL_20:

LABEL_21:
        continue;
      }

      if (v13)
      {
        v15 = [v11 sceneProvidingProcess];
        v16 = [v12 sceneProvidingProcess];
        v17 = [v15 isEqual:v16];

        if (!v17)
        {
          goto LABEL_20;
        }

        v18 = [v11 configurationIdentifier];
        v19 = [v12 configurationIdentifier];
        v20 = BSEqualStrings();

        if (!v20)
        {
          goto LABEL_20;
        }

        v21 = [v11 secondaryConfigurationIdentifier];
        v22 = [v12 secondaryConfigurationIdentifier];
      }

      else
      {
        v23 = [v11 serviceName];
        v24 = [v12 serviceName];
        v25 = [v23 isEqualToString:v24];

        if (!v25)
        {
          goto LABEL_20;
        }

        v26 = [v11 viewControllerClassName];
        v27 = [v12 viewControllerClassName];
        v28 = [v26 isEqualToString:v27];

        if (!v28)
        {
          goto LABEL_20;
        }

        v21 = [v11 secondaryViewControllerClassName];
        v22 = [v12 secondaryViewControllerClassName];
      }

      v29 = v22;
      v30 = BSEqualStrings();

      if ((v30 & 1) == 0)
      {
        goto LABEL_20;
      }

      v31 = [v11 isForCarPlay];
      v32 = [v12 isForCarPlay];

      if (v31 != v32)
      {
        goto LABEL_21;
      }

      IsValidSessionForLookupOptions = _SBRemoteTransientOverlaySessionManagerIsValidSessionForLookupOptions(v10, v36);

      if (IsValidSessionForLookupOptions)
      {
        v34 = v37;
        if (!v37)
        {
          v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        }

        v37 = v34;
        [v34 addObject:v10];
      }
    }

    v7 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
  }

  while (v7);
LABEL_26:

  return v37;
}

- (SBRemoteTransientOverlaySessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
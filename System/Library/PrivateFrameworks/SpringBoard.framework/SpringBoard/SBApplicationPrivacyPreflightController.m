@interface SBApplicationPrivacyPreflightController
- (SBApplicationPrivacyPreflightController)initWithPreflightManager:(id)a3 applicationIdentity:(id)a4;
- (void)_notePreflightFinishedWithResult:(unint64_t)a3 cancelToken:(id)a4;
- (void)addPendingCompletion:(id)a3 forSceneIdentifier:(id)a4;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBApplicationPrivacyPreflightController

- (SBApplicationPrivacyPreflightController)initWithPreflightManager:(id)a3 applicationIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBApplicationPrivacyPreflightController;
  v9 = [(SBApplicationPrivacyPreflightController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_privacyPreflightManager, a3);
    objc_storeStrong(&v10->_applicationIdentity, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingCompletionsBySceneIdentifier = v10->_pendingCompletionsBySceneIdentifier;
    v10->_pendingCompletionsBySceneIdentifier = v11;
  }

  return v10;
}

- (void)addPendingCompletion:(id)a3 forSceneIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationPrivacyPreflightController addPendingCompletion:forSceneIdentifier:];
  }

  v8 = [(NSMutableDictionary *)self->_pendingCompletionsBySceneIdentifier objectForKey:v7];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NSMutableDictionary *)self->_pendingCompletionsBySceneIdentifier setObject:v8 forKey:v7];
  }

  v9 = MEMORY[0x223D6F7F0](v6);
  [v8 addObject:v9];

  preflightCancelToken = self->_preflightCancelToken;
  if (preflightCancelToken)
  {
    [(PDCPreflightRequestCanceling *)preflightCancelToken cancel];
    v11 = self->_preflightCancelToken;
    self->_preflightCancelToken = 0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3042000000;
  v21 = __Block_byref_object_copy__119;
  v22 = __Block_byref_object_dispose__119;
  v23 = 0;
  privacyPreflightManager = self->_privacyPreflightManager;
  applicationIdentity = self->_applicationIdentity;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__SBApplicationPrivacyPreflightController_addPendingCompletion_forSceneIdentifier___block_invoke;
  v17[3] = &unk_2783C1130;
  v17[4] = self;
  v17[5] = &v18;
  v14 = [(PDCPreflightManager *)privacyPreflightManager preflightLaunchForApplication:applicationIdentity withCompletionHandler:v17];
  objc_storeWeak(v19 + 5, v14);

  WeakRetained = objc_loadWeakRetained(v19 + 5);
  v16 = self->_preflightCancelToken;
  self->_preflightCancelToken = WeakRetained;

  _Block_object_dispose(&v18, 8);
  objc_destroyWeak(&v23);
}

void __83__SBApplicationPrivacyPreflightController_addPendingCompletion_forSceneIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a2 != 0);
  }

  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  [v3 _notePreflightFinishedWithResult:v2 cancelToken:WeakRetained];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __72__SBApplicationPrivacyPreflightController_appendDescriptionToFormatter___block_invoke;
  v10 = &unk_2783A92D8;
  v11 = v4;
  v12 = self;
  v5 = v4;
  [v5 appendProem:self block:&v7];
  v6 = [v5 appendObject:self->_pendingCompletionsBySceneIdentifier withName:{@"pendingCompletions", v7, v8, v9, v10}];
}

void __72__SBApplicationPrivacyPreflightController_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(a1 + 40) + 16) identityString];
  [v1 appendString:v2 withName:@"applicationIdentity"];
}

- (void)_notePreflightFinishedWithResult:(unint64_t)a3 cancelToken:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBApplicationPrivacyPreflightController _notePreflightFinishedWithResult:cancelToken:];
  }

  if (self->_preflightCancelToken == v6)
  {
    v22 = v6;
    v7 = [(NSMutableDictionary *)self->_pendingCompletionsBySceneIdentifier mutableCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = self;
    obj = self->_pendingCompletionsBySceneIdentifier;
    v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v25)
    {
      v24 = *v31;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v30 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)v7 objectForKey:v9];
          [(NSMutableDictionary *)v7 removeObjectForKey:v9];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = [v10 reverseObjectEnumerator];
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * j);
                v17 = [v10 lastObject];
                v16[2](v16, a3, v16 == v17);
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }
        }

        v25 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v25);
    }

    pendingCompletionsBySceneIdentifier = v21->_pendingCompletionsBySceneIdentifier;
    v21->_pendingCompletionsBySceneIdentifier = v7;
    v19 = v7;

    preflightCancelToken = v21->_preflightCancelToken;
    v21->_preflightCancelToken = 0;

    v6 = v22;
  }
}

- (void)addPendingCompletion:forSceneIdentifier:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplicationPrivacyPreflightController addPendingCompletion:forSceneIdentifier:]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplicationPrivacyPreflightController.m" lineNumber:35 description:@"this call must be made on the main thread"];
}

- (void)_notePreflightFinishedWithResult:cancelToken:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBApplicationPrivacyPreflightController _notePreflightFinishedWithResult:cancelToken:]"];
  [v1 handleFailureInFunction:v0 file:@"SBApplicationPrivacyPreflightController.m" lineNumber:89 description:@"this call must be made on the main thread"];
}

@end
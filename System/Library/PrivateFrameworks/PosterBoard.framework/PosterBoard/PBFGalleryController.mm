@interface PBFGalleryController
- (BOOL)_stateLock_executeEnqueuedPushToProactive:(id)a3;
- (BOOL)_stateLock_isGalleryStale;
- (BOOL)_stateLock_persistGalleryConfiguration:(id)a3 lastUpdateDate:(id *)a4 sessionId:(id)a5 error:(id *)a6;
- (PBFGalleryController)initWithGalleryCacheURL:(id)a3 galleryLayoutProvider:(id)a4 runtimeAssertionProvider:(id)a5;
- (PBFGalleryController)initWithGalleryCacheURL:(id)a3 runtimeAssertionProvider:(id)a4;
- (PBFRuntimeAssertionProviding)runtimeAssertionProvider;
- (PRSPosterGalleryLayout)currentGalleryConfiguration;
- (id)_enqueuedPushToProactive;
- (id)determineRefreshStateWithContext:(id)a3;
- (id)galleryLayoutProviderWithError:(id *)a3;
- (id)runtimeAssertionProviderWithError:(id *)a3;
- (void)_pushFaceGalleryConfigurationUpdate:(id)a3 options:(unint64_t)a4 fetchError:(id)a5 sessionId:(id)a6 completion:(id)a7;
- (void)_stateLock_enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)a3 powerLogReason:(int64_t)a4 sessionId:(id)a5 completion:(id)a6;
- (void)_stateLock_enqueuePushUpdatedPosterDescriptors:(id)a3 reason:(id)a4 force:(BOOL)a5 sessionId:(id)a6 completion:(id)a7;
- (void)_stateLock_flushProactiveUpdateQueue;
- (void)_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:(id *)a3 error:(id *)a4;
- (void)_stateLock_notifyGalleryControllerDidUpdateCurrentGalleryConfiguration:(id)a3;
- (void)_stateLock_notifyGalleryControllerWillUpdateGalleryConfiguration;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)a3 powerLogReason:(int64_t)a4 completion:(id)a5;
- (void)invalidate;
- (void)pushUpdatedPosterDescriptors:(id)a3 reason:(id)a4 force:(BOOL)a5 completion:(id)a6;
- (void)removeObserver:(id)a3;
- (void)updateGallery:(id)a3 completion:(id)a4;
@end

@implementation PBFGalleryController

- (PBFGalleryController)initWithGalleryCacheURL:(id)a3 runtimeAssertionProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(PBFProactivePosterGalleryLayoutProvider);
  v9 = [(PBFGalleryController *)self initWithGalleryCacheURL:v7 galleryLayoutProvider:v8 runtimeAssertionProvider:v6];

  return v9;
}

- (PBFGalleryController)initWithGalleryCacheURL:(id)a3 galleryLayoutProvider:(id)a4 runtimeAssertionProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v12 = v11;
  if (([v11 conformsToProtocol:&unk_282D45FB0] & 1) == 0)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v13 = v10;
  if (!v13)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v14 = v13;
  if (([v13 conformsToProtocol:&unk_282D3E100] & 1) == 0)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  if (([v9 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PBFGalleryController initWithGalleryCacheURL:a2 galleryLayoutProvider:? runtimeAssertionProvider:?];
  }

  v27.receiver = self;
  v27.super_class = PBFGalleryController;
  v15 = [(PBFGalleryController *)&v27 init];
  if (v15)
  {
    v16 = [v9 copy];
    galleryCacheURL = v15->_galleryCacheURL;
    v15->_galleryCacheURL = v16;

    v18 = objc_opt_new();
    fileManager = v15->_fileManager;
    v15->_fileManager = v18;

    objc_storeStrong(&v15->_galleryLayoutProvider, a4);
    v15->_stateLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v15->_runtimeAssertionProvider, v12);
    v20 = [MEMORY[0x277CBEAA8] distantPast];
    stateLock_timestampOfLastGalleryPushRequestFromProactive = v15->_stateLock_timestampOfLastGalleryPushRequestFromProactive;
    v15->_stateLock_timestampOfLastGalleryPushRequestFromProactive = v20;

    v22 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v15->_invalidationFlag;
    v15->_invalidationFlag = v22;

    v24 = [[_TtC11PosterBoard25PBFGalleryControllerState alloc] initWithLastUsefulGalleryConfigurationPersistDate:0 minimumIntervalBetweenProactivePush:0 maximumIntervalBetweenProactivePush:2.0 proactiveInfractionCount:60.0];
    state = v15->_state;
    v15->_state = v24;

    os_unfair_lock_lock(&v15->_stateLock);
    [(PBFGalleryController *)v15 _stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:0 error:0];
    os_unfair_lock_unlock(&v15->_stateLock);
  }

  return v15;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    v3 = PBFLogGallery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v6 = self;
      _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating gallery controller %p during dealloc", buf, 0xCu);
    }
  }

  v4.receiver = self;
  v4.super_class = PBFGalleryController;
  [(PBFGalleryController *)&v4 dealloc];
}

- (PRSPosterGalleryLayout)currentGalleryConfiguration
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_stateLock_lastUsefulGalleryConfiguration;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)_enqueuedPushToProactive
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = self->_stateLock_enqueuedPushToProactive;
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)runtimeAssertionProviderWithError:(id *)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_runtimeAssertionProvider);

  if (a3 && !WeakRetained)
  {
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA470];
    v11[0] = @"runtimeAssertionProvider was nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a3 = [v6 pbf_generalErrorWithCode:3 userInfo:v7];
  }

  v8 = objc_loadWeakRetained(&self->_runtimeAssertionProvider);

  return v8;
}

- (id)galleryLayoutProviderWithError:(id *)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  galleryLayoutProvider = self->_galleryLayoutProvider;
  if (a3 && !galleryLayoutProvider)
  {
    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA470];
    v10[0] = @"galleryProvider was nil";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *a3 = [v6 pbf_generalErrorWithCode:3 userInfo:v7];

    galleryLayoutProvider = self->_galleryLayoutProvider;
  }

  return galleryLayoutProvider;
}

- (void)enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)a3 powerLogReason:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:completion:", v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke;
  v13[3] = &unk_2782C9908;
  v13[4] = self;
  v14 = v9;
  v18 = (a3 & 4) != 0;
  v19 = (a3 & 8) != 0;
  v20 = (a3 & 2) != 0;
  v15 = v8;
  v16 = a3;
  v17 = a4;
  v11 = v8;
  v12 = v9;
  PBFDispatchAsyncWithString(v10, QOS_CLASS_DEFAULT, v13);
}

void __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(*(a1 + 32) + 104) lastUsefulGalleryConfigurationPersistDate];
  v4 = PBFLogGallery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 72);
    v7 = *(a1 + 73);
    v8 = *(a1 + 74);
    *buf = 138544386;
    v47 = v5;
    v48 = 1024;
    *v49 = v6;
    *&v49[4] = 1024;
    *&v49[6] = v7;
    v50 = 1024;
    v51 = v8;
    v52 = 2114;
    v53 = v3;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; dontQueryJustUseLocal:%{BOOL}u checkIfGalleryIsStale:%{BOOL}u persist:%{BOOL}u; lastHydrationDate %{public}@", buf, 0x28u);
  }

  if ([*(*(a1 + 32) + 32) getFlag])
  {
    v9 = PBFLogGallery();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138543362;
      v47 = v10;
      _os_log_impl(&dword_21B526000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; invalidated", buf, 0xCu);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_94;
      aBlock[3] = &unk_2782C6068;
      v12 = &v45;
      v45 = v11;
      v13 = _Block_copy(aBlock);
      goto LABEL_22;
    }

    goto LABEL_37;
  }

  if (*(a1 + 72) == 1)
  {
    v14 = PBFLogGallery();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138543618;
      v47 = v15;
      v48 = 2114;
      *v49 = v3;
      _os_log_impl(&dword_21B526000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; returning local gallery; last hydrated %{public}@", buf, 0x16u);
    }

    v16 = *(a1 + 48);
    if (!v16)
    {
      goto LABEL_37;
    }

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_96;
    v40[3] = &unk_2782C6180;
    v12 = &v43;
    v43 = v16;
    v41 = v2;
    v42 = v3;
    v13 = _Block_copy(v40);

    v17 = v41;
  }

  else
  {
    v18 = [*(a1 + 32) _stateLock_isGalleryStale];
    if (*(a1 + 73) != 1 || !v3 || !v2 || (v18 & 1) != 0)
    {
      v22 = *(*(a1 + 32) + 80);
      if (v22 && ([v22 isFinalized] & 1) == 0)
      {
        v23 = *(*(a1 + 32) + 80);
        v24 = 1;
      }

      else
      {
        v23 = [[_PBFGalleryEnqueuedRefreshGalleryRequest alloc] initWithOptions:*(a1 + 56) powerLogReason:*(a1 + 64) sessionId:*(a1 + 40)];
        v24 = 0;
      }

      if (*(a1 + 48))
      {
        [(_PBFGalleryEnqueuedRefreshGalleryRequest *)v23 addCompletionHandler:?];
      }

      v25 = PBFLogGallery();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        if (v26)
        {
          v27 = *(a1 + 40);
          *buf = 138543362;
          v47 = v27;
          _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; gallery request ongoing, tacking on completion handler", buf, 0xCu);
        }
      }

      else
      {
        if (v26)
        {
          v28 = *(a1 + 40);
          *buf = 138543362;
          v47 = v28;
          _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; kicking off new request", buf, 0xCu);
        }

        objc_storeStrong((*(a1 + 32) + 80), v23);
        v29 = *(a1 + 56);
        v30 = *(a1 + 64);
        v32 = *(a1 + 32);
        v31 = *(a1 + 40);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_99;
        v33[3] = &unk_2782C98E0;
        v34 = v31;
        v35 = v23;
        [v32 _stateLock_enqueueGalleryConfigurationUpdateWithOptions:v29 powerLogReason:v30 sessionId:v34 completion:v33];

        v25 = v34;
      }

      goto LABEL_37;
    }

    v19 = PBFLogGallery();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      *buf = 138543618;
      v47 = v20;
      v48 = 2114;
      *v49 = v3;
      _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; checked if gallery is stale, it is not stale, returning local gallery; last hydrated %{public}@", buf, 0x16u);
    }

    v21 = *(a1 + 48);
    if (!v21)
    {
LABEL_37:
      os_unfair_lock_unlock((*(a1 + 32) + 24));
      goto LABEL_38;
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_97;
    v36[3] = &unk_2782C6180;
    v12 = &v39;
    v39 = v21;
    v37 = v2;
    v38 = v3;
    v13 = _Block_copy(v36);

    v17 = v37;
  }

LABEL_22:
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if (v13)
  {
    v13[2](v13);
  }

LABEL_38:
}

void __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_99(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = PBFLogGallery();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __95__PBFGalleryController_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_completion___block_invoke_99_cold_1();
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = 138543874;
    v16 = v14;
    v17 = 2112;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] enqueueGalleryConfigurationUpdateWithOptions; update completed.  Gallery received: %@, newLastUpdateDate: %{public}@", &v15, 0x20u);
  }

  [*(a1 + 40) fireCompletionHandlersWithError:v11 faceGalleryConfiguration:v9 lastUpdateDate:v10 didUpdate:a4];
}

- (void)pushUpdatedPosterDescriptors:(id)a3 reason:(id)a4 force:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] pushUpdatedPosterDescriptors completion", v13];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PBFGalleryController_pushUpdatedPosterDescriptors_reason_force_completion___block_invoke;
  v19[3] = &unk_2782C9930;
  v20 = v13;
  v21 = self;
  v22 = v10;
  v23 = v11;
  v25 = a5;
  v24 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  PBFDispatchAsyncWithString(v14, QOS_CLASS_DEFAULT, v19);
}

void __77__PBFGalleryController_pushUpdatedPosterDescriptors_reason_force_completion___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PBFLogGallery();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors begin", &v4, 0xCu);
  }

  os_unfair_lock_lock((*(a1 + 40) + 24));
  [*(a1 + 40) _stateLock_enqueuePushUpdatedPosterDescriptors:*(a1 + 48) reason:*(a1 + 56) force:*(a1 + 72) sessionId:*(a1 + 32) completion:*(a1 + 64)];
  os_unfair_lock_unlock((*(a1 + 40) + 24));
}

- (void)updateGallery:(id)a3 completion:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PBFGalleryController updateGallery:a2 completion:?];
  }

  v9 = v8;
  if ([MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled])
  {
    v10 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA470];
    v21[0] = @"Keynote mode is enabled; we aren't going to accept gallery updates right now.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v10 pbf_generalErrorWithCode:6 userInfo:v11];
    (v9)[2](v9, v12);
  }

  else
  {
    if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
    {
      v13 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      (v9)[2](v9, v13);
    }

    else
    {
      v14 = [MEMORY[0x277CCAD78] UUID];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] updateGallery:completion:", v14];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __49__PBFGalleryController_updateGallery_completion___block_invoke;
      v16[3] = &unk_2782C6338;
      v16[4] = self;
      v17 = v14;
      v18 = v7;
      v19 = v9;
      v13 = v14;
      PBFDispatchAsyncWithString(v15, QOS_CLASS_DEFAULT, v16);
    }
  }
}

void __49__PBFGalleryController_updateGallery_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = *(*(a1 + 32) + 96);
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;
  objc_storeStrong((*(a1 + 32) + 96), v2);
  v6 = PBFLogGallery();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543618;
    v35 = v7;
    v36 = 2048;
    v37 = v5;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] updateGallery; time since last request: %f", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 32) getFlag])
  {
    v8 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    goto LABEL_7;
  }

  if ([*(*(a1 + 32) + 40) isEqual:*(a1 + 48)])
  {
    v9 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA470];
    v33 = @"Attempting to update gallery with the current gallery object";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v8 = [v9 pbf_generalErrorWithCode:1 userInfo:v10];

    [*(*(a1 + 32) + 104) setProactiveInfractionCount:{objc_msgSend(*(*(a1 + 32) + 104), "proactiveInfractionCount") + 1}];
    goto LABEL_7;
  }

  [*(*(a1 + 32) + 104) maximumIntervalBetweenProactivePush];
  if (v11 <= 0.0 || ([*(*(a1 + 32) + 104) minimumIntervalBetweenProactivePush], v13 = v12, objc_msgSend(*(*(a1 + 32) + 104), "maximumIntervalBetweenProactivePush"), v13 >= v14))
  {
    [*(*(a1 + 32) + 104) setProactiveInfractionCount:0];
LABEL_16:
    os_unfair_lock_unlock((*(a1 + 32) + 24));
    goto LABEL_17;
  }

  [*(*(a1 + 32) + 104) minimumIntervalBetweenProactivePush];
  v16 = pow(v15, [*(*(a1 + 32) + 104) proactiveInfractionCount]);
  [*(*(a1 + 32) + 104) maximumIntervalBetweenProactivePush];
  if (v16 >= v17)
  {
    v16 = v17;
  }

  if (v5 >= v16)
  {
    goto LABEL_16;
  }

  v30[0] = @"acceptableMinimumIntervalBetweenRequests";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
  v31[0] = v18;
  v30[1] = @"timeIntervalSinceLastRequest";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v20 = *MEMORY[0x277CCA470];
  v31[1] = v19;
  v31[2] = @"You have been rate limited! Please stop hammering this interface.";
  v30[2] = v20;
  v30[3] = @"numberOfRateLimitedAttempts";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*(a1 + 32) + 104), "proactiveInfractionCount")}];
  v31[3] = v21;
  v30[4] = @"timeWhenceRequestsWillBeAcceptedAgain";
  v22 = [v2 dateByAddingTimeInterval:v16];
  v31[4] = v22;
  v31[5] = v3;
  v30[5] = @"previousRequestDate";
  v30[6] = @"sessionId";
  v23 = [*(a1 + 40) UUIDString];
  v31[6] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];

  v8 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:9 userInfo:v24];
  [*(*(a1 + 32) + 104) setProactiveInfractionCount:{objc_msgSend(*(*(a1 + 32) + 104), "proactiveInfractionCount") + 1}];

LABEL_7:
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if (!v8)
  {
LABEL_17:
    [PBFPowerLogger logUpdate:3 reason:5];
    v26 = *(a1 + 40);
    v25 = *(a1 + 48);
    v27 = *(a1 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__PBFGalleryController_updateGallery_completion___block_invoke_140;
    v28[3] = &unk_2782C9958;
    v29 = *(a1 + 56);
    [v27 _pushFaceGalleryConfigurationUpdate:v25 options:2 fetchError:0 sessionId:v26 completion:v28];
    v8 = v29;
    goto LABEL_18;
  }

  (*(*(a1 + 56) + 16))();
LABEL_18:
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PBFGalleryController addObserver:a2];
  }

  v9 = v5;
  os_unfair_lock_lock(&self->_stateLock);
  stateLock_observers = self->_stateLock_observers;
  if (!stateLock_observers)
  {
    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v8 = self->_stateLock_observers;
    self->_stateLock_observers = v7;

    stateLock_observers = self->_stateLock_observers;
  }

  [(NSHashTable *)stateLock_observers addObject:v9];
  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  [(NSHashTable *)self->_stateLock_observers removeObject:v4];

  if (![(NSHashTable *)self->_stateLock_observers count])
  {
    stateLock_observers = self->_stateLock_observers;
    self->_stateLock_observers = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    galleryLayoutProvider = self->_galleryLayoutProvider;
    self->_galleryLayoutProvider = 0;

    objc_storeWeak(&self->_runtimeAssertionProvider, 0);
    v4 = PBFLogGallery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "PBFGalleryController Invalidated %p", &v5, 0xCu);
    }
  }
}

- (void)_stateLock_enqueuePushUpdatedPosterDescriptors:(id)a3 reason:(id)a4 force:(BOOL)a5 sessionId:(id)a6 completion:(id)a7
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      v15[2](v15, 0, v16);
    }

    v17 = PBFLogGallery();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      v40 = v14;
      _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; invalidated", &v39, 0xCu);
    }

    goto LABEL_32;
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v25 = PBFLogGallery();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138543362;
    v40 = v14;
    _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; checking if descriptors have already been sent", &v39, 0xCu);
  }

  stateLock_enqueuedPushToProactive = self->_stateLock_enqueuedPushToProactive;
  if (stateLock_enqueuedPushToProactive)
  {
    v27 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)stateLock_enqueuedPushToProactive updatedDescriptors];
    v28 = [v27 isEqual:v12];

    if (v28)
    {
      v29 = PBFLogGallery();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138543362;
        v40 = v14;
        _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; descriptors match already enqueued push to proactive.  Bailing.", &v39, 0xCu);
      }

      v30 = self->_stateLock_enqueuedPushToProactive;
LABEL_31:
      [(_PBFGalleryEnqueuedPushToProactiveRequest *)v30 addCompletionHandler:v15];
      goto LABEL_32;
    }
  }

  stateLock_activePushToProactive = self->_stateLock_activePushToProactive;
  if (stateLock_activePushToProactive)
  {
    v32 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)stateLock_activePushToProactive updatedDescriptors];
    v33 = [v32 isEqual:v12];

    if (v33)
    {
      v34 = PBFLogGallery();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138543362;
        v40 = v14;
        _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; descriptors match already active push to proactive.  Bailing.", &v39, 0xCu);
      }

      v30 = self->_stateLock_activePushToProactive;
      goto LABEL_31;
    }
  }

  stateLock_lastSuccessfulPushToProactive = self->_stateLock_lastSuccessfulPushToProactive;
  if (!stateLock_lastSuccessfulPushToProactive || (-[_PBFGalleryEnqueuedPushToProactiveRequest updatedDescriptors](stateLock_lastSuccessfulPushToProactive, "updatedDescriptors"), v36 = objc_claimAutoreleasedReturnValue(), v37 = [v36 isEqual:v12], v36, !v37))
  {
LABEL_8:
    v18 = PBFLogGallery();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      v40 = v14;
      _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; Crafting new _PBFGalleryEnqueuedPushToProactiveRequest", &v39, 0xCu);
    }

    v19 = [[_PBFGalleryEnqueuedPushToProactiveRequest alloc] initWithUpdatedDescriptors:v12 reason:v13 sessionId:v14];
    [(_PBFGalleryEnqueuedPushToProactiveRequest *)v19 addCompletionHandler:v15];
    if (self->_stateLock_enqueuedPushToProactive)
    {
      v20 = PBFLogGallery();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_enqueuedPushToProactive sessionId];
        v39 = 138543618;
        v40 = v14;
        v41 = 2114;
        v42 = v21;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; stealing completion handlers for existing enqueued request (sessionId %{public}@) and replacing.", &v39, 0x16u);
      }

      [(_PBFGalleryEnqueuedPushToProactiveRequest *)v19 addCompletionHandlersFromEnqueuedPushToProactive:self->_stateLock_enqueuedPushToProactive];
    }

    v22 = PBFLogGallery();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      v40 = v14;
      _os_log_impl(&dword_21B526000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; enqueuing", &v39, 0xCu);
    }

    v23 = self->_stateLock_enqueuedPushToProactive;
    self->_stateLock_enqueuedPushToProactive = v19;

    v24 = PBFLogGallery();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      v40 = v14;
      _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; flush", &v39, 0xCu);
    }

    [(PBFGalleryController *)self _stateLock_flushProactiveUpdateQueue];
    goto LABEL_32;
  }

  v38 = PBFLogGallery();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 138543362;
    v40 = v14;
    _os_log_impl(&dword_21B526000, v38, OS_LOG_TYPE_DEFAULT, "[%{public}@] pushUpdatedPosterDescriptors; descriptors have already been sent in prior send.  Bailing.", &v39, 0xCu);
  }

  if (v15)
  {
    v15[2](v15, 0, 0);
  }

LABEL_32:
}

- (void)_stateLock_flushProactiveUpdateQueue
{
  v13 = *MEMORY[0x277D85DE8];
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    if (self->_stateLock_activePushToProactive || !self->_stateLock_enqueuedPushToProactive)
    {
      v3 = PBFLogGallery();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_activePushToProactive sessionId];
        v5 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_enqueuedPushToProactive sessionId];
        v9 = 138543618;
        v10 = v4;
        v11 = 2114;
        v12 = v5;
        _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "_flushProactiveUpdateQueue; nothing to do; active session id %{public}@; enqueued session id %{public}@", &v9, 0x16u);
      }
    }

    else
    {
      v6 = PBFLogGallery();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(_PBFGalleryEnqueuedPushToProactiveRequest *)self->_stateLock_enqueuedPushToProactive sessionId];
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "_flushProactiveUpdateQueue; moving session id %{public}@ to active", &v9, 0xCu);
      }

      objc_storeStrong(&self->_stateLock_activePushToProactive, self->_stateLock_enqueuedPushToProactive);
      stateLock_enqueuedPushToProactive = self->_stateLock_enqueuedPushToProactive;
      self->_stateLock_enqueuedPushToProactive = 0;

      [(PBFGalleryController *)self _stateLock_executeEnqueuedPushToProactive:self->_stateLock_activePushToProactive];
    }
  }
}

- (BOOL)_stateLock_executeEnqueuedPushToProactive:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  v5 = [v4 sessionId];
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v66 = 0;
    v9 = [(PBFGalleryController *)self runtimeAssertionProviderWithError:&v66];
    v7 = v66;
    if (v7)
    {
      v10 = PBFLogGallery();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_executeEnqueuedPushToProactive:];
      }

      [v4 fireCompletionHandlersWithError:v7 didUpdate:0];
      v8 = 0;
      goto LABEL_35;
    }

    v65 = 0;
    v41 = [(PBFGalleryController *)self galleryLayoutProviderWithError:&v65];
    v42 = v65;
    if (v42)
    {
      v11 = PBFLogGallery();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_executeEnqueuedPushToProactive:];
      }

      [v4 fireCompletionHandlersWithError:v42 didUpdate:0];
      v8 = 0;
      goto LABEL_34;
    }

    v12 = [v4 reason];
    v13 = [v4 updatedDescriptors];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__13;
    v80 = __Block_byref_object_dispose__13;
    v14 = [MEMORY[0x277D47008] currentProcess];
    v81 = [v9 acquirePrewarmRuntimeAssertionForReason:@"Push To Proactive" target:v14 invalidationHandler:0];

    v15 = PBFLogGallery();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 138543618;
      *&v71[4] = v5;
      *&v71[12] = 2114;
      *&v71[14] = v12;
      _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:reason:'%{public}@'; begin", v71, 0x16u);
    }

    v16 = *MEMORY[0x277CCA470];
    v76[0] = @"Proactive indicated it was not successful in receiving our updatedPosterDescriptorsForExtensionBundleIdentifier";
    v75[0] = v16;
    v75[1] = @"updatedPosterDescriptorsForExtensionBundleIdentifier";
    v17 = [v13 description];
    v18 = v17;
    v19 = @"(NULL)";
    if (v17)
    {
      v19 = v17;
    }

    v75[2] = @"reason";
    v20 = @"(null)";
    if (v12)
    {
      v20 = v12;
    }

    v76[1] = v19;
    v76[2] = v20;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];

    v21 = v13;
    v22 = objc_opt_new();
    *v71 = 0;
    *&v71[8] = v71;
    *&v71[16] = 0x3032000000;
    v72 = __Block_byref_object_copy__166;
    v73 = __Block_byref_object_dispose__167;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke;
    aBlock[3] = &unk_2782C99A8;
    v36 = v5;
    v57 = v36;
    v37 = v22;
    v58 = v37;
    v39 = v12;
    v59 = v39;
    v60 = self;
    v61 = v4;
    v40 = v21;
    v62 = v40;
    p_buf = &buf;
    v23 = v41;
    v63 = v23;
    v74 = _Block_copy(aBlock);
    if ([v40 count])
    {
      stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier = self->_stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier;
      if (!stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier || ![(NSDictionary *)stateLock_lastSentPosterDescriptorsForExtensionBundleIdentifier isEqualToDictionary:v40])
      {
        v27 = PBFLogGallery();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *v67 = 138543618;
          v68 = v36;
          v69 = 2114;
          v70 = v39;
          _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@'; dumping payload...", v67, 0x16u);
        }

        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_173;
        v54[3] = &unk_2782C69B0;
        v28 = v36;
        v55 = v28;
        [v40 enumerateKeysAndObjectsUsingBlock:v54];
        v29 = PBFLogGallery();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *v67 = 138543618;
          v68 = v28;
          v69 = 2114;
          v70 = v39;
          _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@'; firing request...", v67, 0x16u);
        }

        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_177;
        v49[3] = &unk_2782C99F8;
        v30 = v28;
        v50 = v30;
        v31 = v39;
        v51 = v31;
        v53 = v71;
        v32 = v38;
        v52 = v32;
        [v23 handlePosterDescriptorsDidChange:v40 withCompletion:v49];
        v33 = dispatch_time(0, 10000000000);
        v34 = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178;
        block[3] = &unk_2782C9A20;
        v44 = v37;
        v45 = v30;
        v46 = v31;
        v48 = v71;
        v47 = v32;
        dispatch_after(v33, v34, block);

        v8 = 1;
        goto LABEL_33;
      }

      v25 = PBFLogGallery();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 138543618;
        v68 = v36;
        v69 = 2114;
        v70 = v39;
        v26 = "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Bailed; this has already been sent to proactive successfully.";
LABEL_31:
        _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, v26, v67, 0x16u);
      }
    }

    else
    {
      v25 = PBFLogGallery();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 138543618;
        v68 = v36;
        v69 = 2114;
        v70 = v39;
        v26 = "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Bailed; nothing to send.";
        goto LABEL_31;
      }
    }

    (*(*(*&v71[8] + 40) + 16))();
    v8 = 0;
LABEL_33:
    _Block_object_dispose(v71, 8);

    _Block_object_dispose(&buf, 8);
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v6 = PBFLogGallery();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive; invalidated", &buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  [v4 fireCompletionHandlersWithError:v7 didUpdate:0];
  v8 = 0;
LABEL_36:

  return v8;
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] _stateLock_executeEnqueuedPushToProactive completion", *(a1 + 32)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_2;
  v14[3] = &unk_2782C9980;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v8;
  v15 = v10;
  v16 = v9;
  v17 = v5;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = a2;
  v13 = *(a1 + 80);
  v11 = v13;
  v20 = v13;
  v12 = v5;
  PBFDispatchAsyncWithString(v6, QOS_CLASS_DEFAULT, v14);
}

uint64_t __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) signal];
  if (result)
  {
    v3 = PBFLogGallery();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v13 = 138543618;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@'; finished", &v13, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 56) + 24));
    if (!*(a1 + 64))
    {
      objc_storeStrong((*(a1 + 56) + 72), *(a1 + 72));
      v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:*(a1 + 80) copyItems:1];
      v7 = *(a1 + 56);
      v8 = *(v7 + 48);
      *(v7 + 48) = v6;
    }

    v9 = *(a1 + 56);
    v10 = *(v9 + 64);
    *(v9 + 64) = 0;

    [*(a1 + 56) _stateLock_flushProactiveUpdateQueue];
    os_unfair_lock_unlock((*(a1 + 56) + 24));
    [*(*(*(a1 + 96) + 8) + 40) invalidate];
    v11 = *(*(a1 + 96) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;

    [*(a1 + 72) fireCompletionHandlersWithError:*(a1 + 64) didUpdate:*(a1 + 104)];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      result = [*(a1 + 88) wantsFetchGalleryLayoutAfterHandlePosterDescriptorsDidChange];
      if (result)
      {
        return [*(a1 + 56) enqueueGalleryConfigurationUpdateWithOptions:2 powerLogReason:6 completion:0];
      }
    }
  }

  return result;
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_173(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PBFLogGallery();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] \textension '%{public}@'", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_174;
  v9[3] = &unk_2782C99D0;
  v10 = *(a1 + 32);
  [v6 enumerateObjectsUsingBlock:v9];
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_174(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PBFLogGallery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 identifier];
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] \t\tdescriptor identifier '%{public}@'", &v7, 0x16u);
  }
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_177(void *a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = PBFLogGallery();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    v13 = 1024;
    v14 = a2;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Success? %{BOOL}u", &v9, 0x1Cu);
  }

  v7 = *(*(a1[7] + 8) + 40);
  if (a2)
  {
    (*(v7 + 16))(v7, 1, 0);
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2222 userInfo:a1[6]];
    (*(v7 + 16))(v7, 0, v8);
  }
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178(uint64_t a1)
{
  if (([*(a1 + 32) hasBeenSignalled] & 1) == 0)
  {
    v2 = PBFLogGallery();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178_cold_1();
    }

    v3 = *(a1 + 56);
    v4 = *(*(*(a1 + 64) + 8) + 40);
    v5 = [MEMORY[0x277CCA9B8] pbf_dataStoreErrorWithCode:-2221 userInfo:v3];
    (*(v4 + 16))(v4, 0, v5);
  }
}

- (BOOL)_stateLock_isGalleryStale
{
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  v3 = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  return v6 >= 14400.0;
}

- (void)_stateLock_enqueueGalleryConfigurationUpdateWithOptions:(unint64_t)a3 powerLogReason:(int64_t)a4 sessionId:(id)a5 completion:(id)a6
{
  v73[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v65 = 0;
    v14 = [(PBFGalleryController *)self runtimeAssertionProviderWithError:&v65];
    v13 = v65;
    if (v13)
    {
      v15 = PBFLogGallery();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:sessionId:completion:];
      }

      if (v11)
      {
        (*(v11 + 2))(v11, 0, 0, 0, v13);
      }

      goto LABEL_47;
    }

    v64 = 0;
    v45 = [(PBFGalleryController *)self galleryLayoutProviderWithError:&v64];
    v46 = v64;
    if (v46)
    {
      v16 = PBFLogGallery();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PBFGalleryController _stateLock_enqueueGalleryConfigurationUpdateWithOptions:powerLogReason:sessionId:completion:];
      }

      if (v11)
      {
        (*(v11 + 2))(v11, 0, 0, 0, v46);
      }

      goto LABEL_46;
    }

    v44 = self->_stateLock_lastUsefulGalleryConfiguration;
    v43 = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
    [PBFPowerLogger logUpdate:3 reason:a4];
    v42 = objc_opt_new();
    v41 = objc_opt_new();
    v17 = PBFLogGallery();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; begin", buf, 0xCu);
    }

    if ((a3 & 8) == 0)
    {
      goto LABEL_35;
    }

    if (v43)
    {
      v18 = v44 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = !v18;
    v20 = PBFLogGallery();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        *buf = 138543362;
        *&buf[4] = v10;
        _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; Checking if gallery is stale... ", buf, 0xCu);
      }

      v22 = [MEMORY[0x277CBEAA8] date];
      [v22 timeIntervalSinceDate:v43];
      v24 = v23;

      v20 = PBFLogGallery();
      v25 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v24 < 14400.0)
      {
        if (v25)
        {
          *buf = 138543874;
          *&buf[4] = v42;
          *&buf[12] = 2114;
          *&buf[14] = v43;
          *&buf[22] = 2048;
          v69 = 0x40CC200000000000;
          _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; gallery was last refreshed at @ %{public}@, which means it is younger than %f seconds, so we're going to not update.", buf, 0x20u);
        }

        (*(v11 + 2))(v11, v44, v43, 0, 0);
        goto LABEL_45;
      }

      if (!v25)
      {
        goto LABEL_34;
      }

      *buf = 138543874;
      *&buf[4] = v10;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      *&buf[22] = 2048;
      v69 = 0x40CC200000000000;
      v26 = "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; gallery was last refreshed at @ %{public}@, which means it is OLDER than %f seconds, so we're going to proceed";
      v27 = v20;
      v28 = 32;
    }

    else
    {
      if (!v21)
      {
LABEL_34:

LABEL_35:
        if ([MEMORY[0x277CBEBD0] pbf_keynoteModeEnabled])
        {
          v29 = PBFLogGallery();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v10;
            _os_log_impl(&dword_21B526000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; not querying, just using local (keynote mode)", buf, 0xCu);
          }

          v30 = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
          v31 = MEMORY[0x277CCA9B8];
          v72 = *MEMORY[0x277CCA470];
          v73[0] = @"Keynote mode has been engaged; disabled fetching new gallery configuration.";
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
          v33 = [v31 pbf_generalErrorWithCode:6 userInfo:v32];
          (*(v11 + 2))(v11, v44, v30, 0, v33);
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v69 = __Block_byref_object_copy__13;
          v70 = __Block_byref_object_dispose__13;
          v34 = [MEMORY[0x277D47008] currentProcess];
          v71 = [v14 acquirePrewarmRuntimeAssertionForReason:@"Gallery Async Fetch" target:v34 invalidationHandler:0];

          v62[0] = 0;
          v62[1] = v62;
          v62[2] = 0x3032000000;
          v62[3] = __Block_byref_object_copy__166;
          v62[4] = __Block_byref_object_dispose__167;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke;
          aBlock[3] = &unk_2782C9A70;
          v35 = v10;
          v58 = v35;
          v36 = v41;
          v59 = v36;
          v60 = v11;
          v61 = buf;
          v63 = _Block_copy(aBlock);
          v37 = PBFLogGallery();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *v66 = 138543362;
            v67 = v35;
            _os_log_impl(&dword_21B526000, v37, OS_LOG_TYPE_DEFAULT, "(%{public}@)_stateLock_enqueueGalleryConfigurationUpdateWithOptions:; querying", v66, 0xCu);
          }

          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_188;
          v51[3] = &unk_2782C9AE8;
          v38 = v35;
          v52 = v38;
          v53 = v42;
          v54 = self;
          v55 = v62;
          v56 = a3;
          [v45 fetchGalleryLayoutWithCompletion:v51];
          v39 = dispatch_time(0, 10000000000);
          v40 = [MEMORY[0x277D3EBA8] sharedWorkloop];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_199;
          block[3] = &unk_2782C7340;
          v48 = v36;
          v49 = v38;
          v50 = v62;
          dispatch_after(v39, v40, block);

          _Block_object_dispose(v62, 8);
          _Block_object_dispose(buf, 8);
        }

LABEL_45:

LABEL_46:
LABEL_47:

        goto LABEL_48;
      }

      *buf = 138543362;
      *&buf[4] = v10;
      v26 = "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; Checked if gallery is stale... but we don't have a gallery, so we're going to proceed.";
      v27 = v20;
      v28 = 12;
    }

    _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    goto LABEL_34;
  }

  v12 = PBFLogGallery();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v10;
    _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions; invalidated", buf, 0xCu);
  }

  if (v11)
  {
    v13 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    (*(v11 + 2))(v11, 0, 0, 0, v13);
LABEL_48:
  }
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions completion", *(a1 + 32)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2;
  v17[3] = &unk_2782C9A48;
  v18 = *(a1 + 40);
  v13 = *(a1 + 48);
  v19 = v9;
  v20 = v10;
  v24 = a4;
  v21 = v11;
  v22 = v13;
  v23 = *(a1 + 56);
  v14 = v11;
  v15 = v10;
  v16 = v9;
  PBFDispatchAsyncWithString(v12, QOS_CLASS_DEFAULT, v17);
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) signal])
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 80), *(a1 + 56));
    }

    [*(*(*(a1 + 72) + 8) + 40) invalidate];
    v3 = *(*(a1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_188(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] _pushFaceGalleryConfigurationUpdate", *(a1 + 32)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_192;
  v13[3] = &unk_2782C9AC0;
  v14 = v6;
  v15 = *(a1 + 40);
  v16 = v5;
  v8 = *(a1 + 64);
  v17 = *(a1 + 48);
  v20 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 56);
  v18 = v9;
  v19 = v10;
  v11 = v5;
  v12 = v6;
  PBFDispatchAsyncWithString(v7, QOS_CLASS_DEFAULT, v13);
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_192(void *a1)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 4);
  v3 = a1[4];
  v4 = PBFLogGallery();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_192_cold_1();
    }

    v6 = [*v2 localizedFailureReason];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v11 = [*v2 localizedDescription];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [*v2 description];
      }

      v5 = v13;
    }

    v32 = *MEMORY[0x277CCA470];
    v14 = v32;
    v33[0] = v5;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v16 = MEMORY[0x277CCA9B8];
    v17 = [*v2 domain];
    v18 = [v16 errorWithDomain:v17 code:objc_msgSend(*v2 userInfo:{"code"), v15}];

    v19 = MEMORY[0x277CCA9B8];
    v30[0] = *MEMORY[0x277CCA7E8];
    v30[1] = v14;
    v31[0] = v18;
    v31[1] = @"Fetch from gallery service failed";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v10 = [v19 pbf_generalErrorWithCode:11 userInfo:v20];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = a1[6];
      *buf = 138543618;
      v27 = v8;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_enqueueGalleryConfigurationUpdateWithOptions:; received response '%@'", buf, 0x16u);
    }

    v10 = 0;
  }

  v22 = a1[6];
  v21 = a1[7];
  v23 = a1[8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_196;
  v25[3] = &unk_2782C9A98;
  v24 = a1[10];
  v25[4] = a1[9];
  [v21 _pushFaceGalleryConfigurationUpdate:v22 options:v24 fetchError:v10 sessionId:v23 completion:v25];
}

void __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_199(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) hasBeenSignalled] & 1) == 0)
  {
    v2 = PBFLogGallery();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __116__PBFGalleryController__stateLock_enqueueGalleryConfigurationUpdateWithOptions_powerLogReason_sessionId_completion___block_invoke_2_199_cold_1();
    }

    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA470];
    v8[0] = @"Proactive timed out calling fetchFaceGalleryConfigurationWithCompletion:";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = [v4 pbf_generalErrorWithCode:2 userInfo:v5];
    (*(v3 + 16))(v3, 0, 0, 0, v6);
  }
}

- (void)_pushFaceGalleryConfigurationUpdate:(id)a3 options:(unint64_t)a4 fetchError:(id)a5 sessionId:(id)a6 completion:(id)a7
{
  v10 = a4;
  v48[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = PBFLogGallery();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v13 locale];
    v19 = [v18 localeIdentifier];
    *buf = 138543618;
    v44 = v15;
    v45 = 2112;
    *v46 = v19;
    _os_log_impl(&dword_21B526000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: received gallery w/ locale %@", buf, 0x16u);
  }

  if (v13)
  {
    v20 = PBFLogGallery();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v44 = v15;
      v45 = 1024;
      *v46 = (v10 & 2) >> 1;
      *&v46[4] = 2114;
      *&v46[6] = v13;
      _os_log_impl(&dword_21B526000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: should Persist? %{BOOL}u '%{public}@'", buf, 0x1Cu);
    }

    os_unfair_lock_lock(&self->_stateLock);
    v21 = [(PRSPosterGalleryLayout *)self->_stateLock_lastUsefulGalleryConfiguration isEqual:v13];
    v40 = v14;
    v22 = v14;
    v23 = v22;
    v39 = v21;
    if (v10 & 2) == 0 || v22 || (v21)
    {
      v25 = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
      v24 = self->_stateLock_lastUsefulGalleryConfiguration;
      v35 = PBFLogGallery();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v44 = v15;
        v45 = 2114;
        *v46 = v13;
        *&v46[8] = 2114;
        *&v46[10] = v25;
        _os_log_impl(&dword_21B526000, v35, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: received new gallery but not persisting '%{public}@'/%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v24 = v13;
      v41 = 0;
      v42 = 0;
      [(PBFGalleryController *)self _stateLock_persistGalleryConfiguration:v24 lastUpdateDate:&v42 sessionId:v15 error:&v41];
      v25 = v42;
      v23 = v41;
      v26 = PBFLogGallery();
      v27 = v26;
      if (v23)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v44 = v15;
          v45 = 2114;
          *v46 = v24;
          *&v46[8] = 2114;
          *&v46[10] = v23;
          _os_log_error_impl(&dword_21B526000, v27, OS_LOG_TYPE_ERROR, "[%{public}@] _pushFaceGalleryConfigurationUpdate: persisting %{public}@ -- error: %{public}@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v44 = v15;
        v45 = 2114;
        *v46 = v24;
        *&v46[8] = 2114;
        *&v46[10] = v25;
        _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] _pushFaceGalleryConfigurationUpdate: persisting %{public}@ -- last update date? %{public}@", buf, 0x20u);
      }

      [(PBFGalleryController *)self _stateLock_notifyGalleryControllerWillUpdateGalleryConfiguration];
      [(PBFGalleryControllerState *)self->_state setLastUsefulGalleryConfigurationPersistDate:v25];
      objc_storeStrong(&self->_stateLock_lastUsefulGalleryConfiguration, a3);
      [(PBFGalleryController *)self _stateLock_notifyGalleryControllerDidUpdateCurrentGalleryConfiguration:v24];
    }

    os_unfair_lock_unlock(&self->_stateLock);
    if (v16)
    {
      v16[2](v16, v24, v25, v39 ^ 1u, v23);
    }

    v14 = v40;
  }

  else
  {
    v28 = PBFLogGallery();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(PBFGalleryController *)v15 _pushFaceGalleryConfigurationUpdate:v28 options:v29 fetchError:v30 sessionId:v31 completion:v32, v33, v34];
    }

    if (v16)
    {
      if (v14)
      {
        v16[2](v16, 0, 0, 0, v14);
      }

      else
      {
        v36 = MEMORY[0x277CCA9B8];
        v47 = *MEMORY[0x277CCA470];
        v48[0] = @"Nil gallery was rejected.";
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
        v38 = [v36 pbf_generalErrorWithCode:1 userInfo:v37];
        v16[2](v16, 0, 0, 0, v38);
      }
    }
  }
}

- (BOOL)_stateLock_persistGalleryConfiguration:(id)a3 lastUpdateDate:(id *)a4 sessionId:(id)a5 error:(id *)a6
{
  v42[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  v12 = [(PBFGalleryController *)self galleryCacheURL];
  if (!v12)
  {
    if (a6)
    {
      v25 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277CCA470];
      v42[0] = @"Gallery cache URL is invalid.  Bailing.";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      *a6 = [v25 pbf_dataStoreErrorWithCode:-2214 userInfo:v26];
    }

    v16 = PBFLogGallery();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PBFGalleryController *)v11 _stateLock_persistGalleryConfiguration:v16 lastUpdateDate:v27 sessionId:v28 error:v29, v30, v31, v32];
    }

    goto LABEL_19;
  }

  fileManager = self->_fileManager;
  v14 = PFFileProtectionNoneAttributes();
  v38 = 0;
  v15 = [(NSFileManager *)fileManager createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:v14 error:&v38];
  v16 = v38;

  if (!v15)
  {
    v33 = PBFLogGallery();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [PBFGalleryController _stateLock_persistGalleryConfiguration:lastUpdateDate:sessionId:error:];
    }

    if (a6)
    {
      v34 = v16;
      LOBYTE(v18) = 0;
      *a6 = v16;
      goto LABEL_23;
    }

LABEL_19:
    LOBYTE(v18) = 0;
    goto LABEL_23;
  }

  v17 = [[PBFPosterGalleryLayoutPersistence alloc] initWithURL:v12];
  v36 = 0;
  v37 = 0;
  v18 = [(PBFPosterGalleryLayoutPersistence *)v17 saveGalleryLayout:v10 returningPersistenceDate:&v37 error:&v36];
  v19 = v37;
  v20 = v36;
  if (a4 && v18)
  {
    v21 = v19;
    *a4 = v19;
  }

  if (a6)
  {
    v22 = v20;
    *a6 = v20;
  }

  v23 = PBFLogGallery();
  v24 = v23;
  if (v20)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PBFGalleryController _stateLock_persistGalleryConfiguration:lastUpdateDate:sessionId:error:];
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v11;
    _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] _stateLock_persistGalleryConfiguration: successfully persisted gallery", buf, 0xCu);
  }

LABEL_23:
  return v18;
}

- (void)_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:(id *)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  v6 = [(PBFGalleryController *)self galleryCacheURL];
  if (v6)
  {
    v7 = [[PBFPosterGalleryLayoutPersistence alloc] initWithURL:v6];
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v8 = [(PBFPosterGalleryLayoutPersistence *)v7 loadNewestUsableGalleryLayoutReturningPersistenceDate:&v38 purgeableGalleryLayoutURLs:&v37 error:&v36];
    v9 = v38;
    v10 = v37;
    v11 = v36;
    v28 = v8;
    objc_storeStrong(&self->_stateLock_lastUsefulGalleryConfiguration, v8);
    [(PBFGalleryControllerState *)self->_state setLastUsefulGalleryConfigurationPersistDate:v9];
    v30 = v7;
    v31 = v6;
    v29 = v9;
    if (v11)
    {
      if (a4)
      {
        v12 = v11;
        *a4 = v11;
      }

      v13 = PBFLogGallery();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(PBFGalleryController *)v11 _stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate:v13 error:v14, v15, v16, v17, v18, v19];
      }
    }

    else
    {
      v13 = PBFLogGallery();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "_stateLock_loadPersistedGalleryConfigurationWithLastUpdateDate successfully loaded gallery!", buf, 2u);
      }
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = v10;
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          v26 = PBFLogReaper();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v40 = v25;
            _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "Cleaning up old gallery configurations: %{public}@", buf, 0xCu);
          }

          v27 = [MEMORY[0x277CCAA00] defaultManager];
          [v27 removeItemAtURL:v25 error:a4];
        }

        v22 = [v20 countByEnumeratingWithState:&v32 objects:v41 count:16];
      }

      while (v22);
    }

    v6 = v31;
  }
}

- (void)_stateLock_notifyGalleryControllerWillUpdateGalleryConfiguration
{
  v14 = *MEMORY[0x277D85DE8];
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = self->_stateLock_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 galleryControllerWillUpdateGalleryConfiguration:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_stateLock_notifyGalleryControllerDidUpdateCurrentGalleryConfiguration:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  PBFDebug_os_unfair_lock_assert_owner(&self->_stateLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_stateLock_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 galleryController:self didUpdateCurrentGalleryConfiguration:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)determineRefreshStateWithContext:(id)a3
{
  v4 = a3;
  v5 = [v4 component];
  if ([v5 isEqual:@"PBFDataComponentGallery"])
  {
    v6 = [(PBFGalleryControllerState *)self->_state lastUsefulGalleryConfigurationPersistDate];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] distantPast];
    }

    v10 = v8;

    stateLock_lastUsefulGalleryConfiguration = self->_stateLock_lastUsefulGalleryConfiguration;
    if (stateLock_lastUsefulGalleryConfiguration)
    {
      v12 = stateLock_lastUsefulGalleryConfiguration;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB68] null];
    }

    v13 = v12;
    v14 = [PBFDataComponentObjectEntity alloc];
    v15 = [PBFDataRefreshContext alloc];
    v16 = [v4 now];
    v17 = [(PBFDataRefreshContext *)v15 initWithComponent:@"PBFDataComponentGallery" now:v16 lastRefreshDate:v10 userInfo:0];
    v18 = [(PBFDataComponentObjectEntity *)v14 initWithComponent:@"PBFDataComponentGallery" object:v13 context:v17];

    v9 = [(PBFDataComponentObjectEntity *)v18 determineRefreshState];
  }

  else
  {
    v9 = [[PBFDataRefreshState alloc] initWithNeedsRefresh:1 reason:@"Unable to ascertain status; just reload anyway..."];
  }

  return v9;
}

- (PBFRuntimeAssertionProviding)runtimeAssertionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_runtimeAssertionProvider);

  return WeakRetained;
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFRuntimeAssertionProviding)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterGalleryLayoutProviding)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[URL checkResourceIsReachableAndReturnError:((void*)0)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithGalleryCacheURL:(char *)a1 galleryLayoutProvider:runtimeAssertionProvider:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updateGallery:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"completion", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)addObserver:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"observer", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __66__PBFGalleryController__stateLock_executeEnqueuedPushToProactive___block_invoke_178_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_21B526000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] _stateLock_executeEnqueuedPushToProactive:'%{public}@' -- Failed; proactive timed out.  Please file a radar.", v2, 0x16u);
}

@end
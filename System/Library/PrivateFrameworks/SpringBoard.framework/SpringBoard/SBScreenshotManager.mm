@interface SBScreenshotManager
- (SBScreenshotManager)initWithDataSource:(id)a3;
- (id)_fetchEligibleScreenshotProvidersForSnapshotting;
- (id)_initWithDataSource:(id)a3 persistenceCoordinator:(id)a4 sceneManagerCoordinator:(id)a5;
- (id)_providerForScreen:(id)a3;
- (void)saveScreenshots;
- (void)saveScreenshotsWithCompletion:(id)a3;
@end

@implementation SBScreenshotManager

- (SBScreenshotManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_SBScreenshotPersistenceCoordinator);
  v6 = +[SBSceneManagerCoordinator sharedInstance];
  v7 = [(SBScreenshotManager *)self _initWithDataSource:v4 persistenceCoordinator:v5 sceneManagerCoordinator:v6];

  return v7;
}

- (id)_initWithDataSource:(id)a3 persistenceCoordinator:(id)a4 sceneManagerCoordinator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBScreenshotManager;
  v12 = [(SBScreenshotManager *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 1, a5);
  }

  return p_isa;
}

- (void)saveScreenshots
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBScreenshotManager saveScreenshots]"];
  [v1 handleFailureInFunction:v0 file:@"SBScreenshotManager.m" lineNumber:62 description:@"this call must be made on the main thread"];
}

- (void)saveScreenshotsWithCompletion:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBScreenshotManager saveScreenshotsWithCompletion:];
  }

  if (![(_SBScreenshotPersistenceCoordinator *)self->_persistenceCoordinator isSaving])
  {
    [(SBScreenshotManager *)self _fetchEligibleScreenshotProvidersForSnapshotting];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v50 = 0u;
    v7 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    if (v7)
    {
      v8 = v7;
      v36 = 0;
      v9 = 0;
      v10 = *v48;
      v32 = self;
      v33 = v4;
      v31 = *v48;
      do
      {
        v11 = 0;
        v34 = v8;
        do
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * v11);
          v13 = [v12 captureScreenshot];
          v14 = [v12 screen];
          v15 = [v14 displayIdentity];
          if (v13)
          {
            v16 = v15 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            v42 = v15;
            v17 = [v12 flasher];
            [v17 flashWhiteWithCompletion:0];

            if ((v9 & 1) == 0)
            {
              v9 = 1;
            }

            v41 = v9;
            v40 = v11;
            v38 = v14;
            if (v4)
            {
              v18 = v36;
              if (!v36)
              {
                v18 = [MEMORY[0x277CBEB38] dictionary];
              }

              v36 = v18;
              v19 = v42;
              [v18 setObject:v13 forKey:v42];
            }

            else
            {
              v19 = v42;
            }

            v39 = v13;
            [(_SBScreenshotPersistenceCoordinator *)self->_persistenceCoordinator saveScreenshot:v13 withCompletion:0];
            v37 = [(SBSceneManagerCoordinator *)self->_sceneManagerCoordinator sceneManagerForDisplayIdentity:v19];
            v20 = [v37 externalForegroundApplicationSceneHandles];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v21 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v44;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v44 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = *(*(&v43 + 1) + 8 * i);
                  v26 = [v25 sceneIfExists];
                  if (v26)
                  {
                    v27 = objc_alloc_init(MEMORY[0x277D75438]);
                    v28 = [MEMORY[0x277CBEB98] setWithObject:v27];
                    v29 = SBLogCommon();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543362;
                      v52 = v25;
                      _os_log_error_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_ERROR, "sending screenshot action to scene: %{public}@", buf, 0xCu);
                    }

                    [v26 sendActions:v28];
                  }
                }

                v22 = [v20 countByEnumeratingWithState:&v43 objects:v53 count:16];
              }

              while (v22);
            }

            self = v32;
            v4 = v33;
            v9 = v41;
            v10 = v31;
            v8 = v34;
            v13 = v39;
            v11 = v40;
            v14 = v38;
            v15 = v42;
          }

          ++v11;
        }

        while (v11 != v8);
        v8 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      }

      while (v8);
      if (v9)
      {
        AudioServicesPlaySystemSoundWithCompletion(0x454u, 0);
      }

      if (!v4)
      {
        goto LABEL_46;
      }

      if (v36)
      {
        (v4)[2](v4, v36);
LABEL_46:

        v6 = v36;
        goto LABEL_47;
      }
    }

    else if (!v4)
    {
LABEL_45:
      v36 = 0;
      goto LABEL_46;
    }

    v30 = [MEMORY[0x277CBEB38] dictionary];
    (v4)[2](v4, v30);

    goto LABEL_45;
  }

  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SBScreenshotManager saveScreenshotsWithCompletion:v5];
  }

  if (v4)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    (v4)[2](v4, v6);
LABEL_47:
  }
}

- (id)_fetchEligibleScreenshotProvidersForSnapshotting
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(SBScreenshotManagerDataSource *)self->_dataSource screenshotManagerScreensToScreenshot:self, 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(SBScreenshotManager *)self _providerForScreen:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          if (!v6)
          {
            v6 = [MEMORY[0x277CBEB18] array];
          }

          [v6 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_providerForScreen:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D759A0] mainScreen];

  v5 = off_2783A3038;
  if (v4 != v3)
  {
    v5 = off_2783A2E78;
  }

  v6 = [objc_alloc(*v5) initWithScreen:v3];

  return v6;
}

- (void)saveScreenshotsWithCompletion:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBScreenshotManager saveScreenshotsWithCompletion:]"];
  [v1 handleFailureInFunction:v0 file:@"SBScreenshotManager.m" lineNumber:68 description:@"this call must be made on the main thread"];
}

@end
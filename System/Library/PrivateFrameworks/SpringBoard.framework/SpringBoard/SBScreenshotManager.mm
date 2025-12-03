@interface SBScreenshotManager
- (SBScreenshotManager)initWithDataSource:(id)source;
- (id)_fetchEligibleScreenshotProvidersForSnapshotting;
- (id)_initWithDataSource:(id)source persistenceCoordinator:(id)coordinator sceneManagerCoordinator:(id)managerCoordinator;
- (id)_providerForScreen:(id)screen;
- (void)saveScreenshots;
- (void)saveScreenshotsWithCompletion:(id)completion;
@end

@implementation SBScreenshotManager

- (SBScreenshotManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc_init(_SBScreenshotPersistenceCoordinator);
  v6 = +[SBSceneManagerCoordinator sharedInstance];
  v7 = [(SBScreenshotManager *)self _initWithDataSource:sourceCopy persistenceCoordinator:v5 sceneManagerCoordinator:v6];

  return v7;
}

- (id)_initWithDataSource:(id)source persistenceCoordinator:(id)coordinator sceneManagerCoordinator:(id)managerCoordinator
{
  sourceCopy = source;
  coordinatorCopy = coordinator;
  managerCoordinatorCopy = managerCoordinator;
  v15.receiver = self;
  v15.super_class = SBScreenshotManager;
  v12 = [(SBScreenshotManager *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(p_isa + 2, coordinator);
    objc_storeStrong(p_isa + 1, managerCoordinator);
  }

  return p_isa;
}

- (void)saveScreenshots
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBScreenshotManager saveScreenshots]"];
  [currentHandler handleFailureInFunction:v0 file:@"SBScreenshotManager.m" lineNumber:62 description:@"this call must be made on the main thread"];
}

- (void)saveScreenshotsWithCompletion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
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
      selfCopy = self;
      v33 = completionCopy;
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
          captureScreenshot = [v12 captureScreenshot];
          screen = [v12 screen];
          displayIdentity = [screen displayIdentity];
          if (captureScreenshot)
          {
            v16 = displayIdentity == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            v42 = displayIdentity;
            flasher = [v12 flasher];
            [flasher flashWhiteWithCompletion:0];

            if ((v9 & 1) == 0)
            {
              v9 = 1;
            }

            v41 = v9;
            v40 = v11;
            v38 = screen;
            if (completionCopy)
            {
              dictionary = v36;
              if (!v36)
              {
                dictionary = [MEMORY[0x277CBEB38] dictionary];
              }

              v36 = dictionary;
              v19 = v42;
              [dictionary setObject:captureScreenshot forKey:v42];
            }

            else
            {
              v19 = v42;
            }

            v39 = captureScreenshot;
            [(_SBScreenshotPersistenceCoordinator *)self->_persistenceCoordinator saveScreenshot:captureScreenshot withCompletion:0];
            v37 = [(SBSceneManagerCoordinator *)self->_sceneManagerCoordinator sceneManagerForDisplayIdentity:v19];
            externalForegroundApplicationSceneHandles = [v37 externalForegroundApplicationSceneHandles];
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v21 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v43 objects:v53 count:16];
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
                    objc_enumerationMutation(externalForegroundApplicationSceneHandles);
                  }

                  v25 = *(*(&v43 + 1) + 8 * i);
                  sceneIfExists = [v25 sceneIfExists];
                  if (sceneIfExists)
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

                    [sceneIfExists sendActions:v28];
                  }
                }

                v22 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v43 objects:v53 count:16];
              }

              while (v22);
            }

            self = selfCopy;
            completionCopy = v33;
            v9 = v41;
            v10 = v31;
            v8 = v34;
            captureScreenshot = v39;
            v11 = v40;
            screen = v38;
            displayIdentity = v42;
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

      if (!completionCopy)
      {
        goto LABEL_46;
      }

      if (v36)
      {
        (completionCopy)[2](completionCopy, v36);
LABEL_46:

        dictionary3 = v36;
        goto LABEL_47;
      }
    }

    else if (!completionCopy)
    {
LABEL_45:
      v36 = 0;
      goto LABEL_46;
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    (completionCopy)[2](completionCopy, dictionary2);

    goto LABEL_45;
  }

  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [SBScreenshotManager saveScreenshotsWithCompletion:v5];
  }

  if (completionCopy)
  {
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    (completionCopy)[2](completionCopy, dictionary3);
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
    array = 0;
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
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_providerForScreen:(id)screen
{
  screenCopy = screen;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];

  v5 = off_2783A3038;
  if (mainScreen != screenCopy)
  {
    v5 = off_2783A2E78;
  }

  v6 = [objc_alloc(*v5) initWithScreen:screenCopy];

  return v6;
}

- (void)saveScreenshotsWithCompletion:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBScreenshotManager saveScreenshotsWithCompletion:]"];
  [v1 handleFailureInFunction:v0 file:@"SBScreenshotManager.m" lineNumber:68 description:@"this call must be made on the main thread"];
}

@end
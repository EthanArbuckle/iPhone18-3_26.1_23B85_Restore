@interface SBApplicationLaunchAlertService
- (SBApplicationLaunchAlertService)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initObservingSceneManagers:(id)a3 launchAlertEvaluators:(id)a4 applicationController:(id)a5 alertItemsController:(id)a6;
- (id)succinctDescription;
- (void)_invalidateAndDismissLaunchAlertsForLaunchAlertInfo:(id)a3;
- (void)_reallyShowLaunchAlertOfType:(unint64_t)a3 withLaunchAlertInfo:(id)a4 application:(id)a5;
- (void)_sceneDidBecomeForeground:(id)a3;
- (void)_sceneDidResignForeground:(id)a3;
- (void)_sceneWillBecomeForeground:(id)a3;
- (void)_tryShowLaunchAlertsForLaunchAlertInfo:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4;
- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4;
- (void)showLaunchAlertOfType:(unint64_t)a3 forApplication:(id)a4;
@end

@implementation SBApplicationLaunchAlertService

- (SBApplicationLaunchAlertService)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBApplicationLaunchAlertService.m" lineNumber:77 description:@"Init is unavailable."];

  return 0;
}

- (id)initObservingSceneManagers:(id)a3 launchAlertEvaluators:(id)a4 applicationController:(id)a5 alertItemsController:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBApplicationLaunchAlertService initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:];
    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_24:
      [SBApplicationLaunchAlertService initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:];
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }
  }

  [SBApplicationLaunchAlertService initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:];
  if (!v13)
  {
    goto LABEL_24;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_25:
  [SBApplicationLaunchAlertService initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:];
LABEL_5:
  v46.receiver = self;
  v46.super_class = SBApplicationLaunchAlertService;
  v15 = [(SBApplicationLaunchAlertService *)&v46 init];
  v16 = v15;
  if (v15)
  {
    v33 = v14;
    v34 = v13;
    v35 = v12;
    objc_storeStrong(&v15->_applicationController, a5);
    objc_storeStrong(&v16->_alertItemsController, a6);
    objc_storeStrong(&v16->_launchAlertEvaluators, a4);
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    foregroundingScenes = v16->_foregroundingScenes;
    v16->_foregroundingScenes = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mapBundleIDToLaunchAlertInfo = v16->_mapBundleIDToLaunchAlertInfo;
    v16->_mapBundleIDToLaunchAlertInfo = v19;

    objc_storeStrong(&v16->_sceneManagers, a3);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = v11;
    obj = v11;
    v21 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v43;
      do
      {
        v24 = 0;
        do
        {
          if (*v43 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v42 + 1) + 8 * v24);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v26 = [v25 externalForegroundApplicationSceneHandles];
          v27 = [v26 countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v39;
            do
            {
              v30 = 0;
              do
              {
                if (*v39 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = [*(*(&v38 + 1) + 8 * v30) scene];
                [(SBApplicationLaunchAlertService *)v16 _sceneWillBecomeForeground:v31];

                ++v30;
              }

              while (v28 != v30);
              v28 = [v26 countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v28);
          }

          [v25 addObserver:v16];
          ++v24;
        }

        while (v24 != v22);
        v22 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v22);
    }

    v12 = v35;
    v11 = v36;
    v14 = v33;
    v13 = v34;
  }

  return v16;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)showLaunchAlertOfType:(unint64_t)a3 forApplication:(id)a4
{
  v10 = a4;
  BSDispatchQueueAssertMain();
  v6 = v10;
  if (!v10)
  {
    [SBApplicationLaunchAlertService showLaunchAlertOfType:forApplication:];
    v6 = 0;
  }

  mapBundleIDToLaunchAlertInfo = self->_mapBundleIDToLaunchAlertInfo;
  v8 = [v6 bundleIdentifier];
  v9 = [(NSMutableDictionary *)mapBundleIDToLaunchAlertInfo objectForKey:v8];

  if (a3 && !self->_invalidated && v9)
  {
    [(SBApplicationLaunchAlertService *)self _reallyShowLaunchAlertOfType:a3 withLaunchAlertInfo:v9 application:v10];
  }
}

- (void)invalidate
{
  v36 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(NSMutableDictionary *)self->_mapBundleIDToLaunchAlertInfo copy];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(SBApplicationLaunchAlertService *)self _invalidateAndDismissLaunchAlertsForLaunchAlertInfo:*(*(&v29 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = self->_foregroundingScenes;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      v13 = 0;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v25 + 1) + 8 * v13++) removeObserver:self];
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v11);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_sceneManagers;
  v15 = [(NSSet *)v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v21 + 1) + 8 * v18++) removeObserver:{self, v21}];
      }

      while (v16 != v18);
      v16 = [(NSSet *)v14 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v16);
  }

  foregroundingScenes = self->_foregroundingScenes;
  self->_foregroundingScenes = 0;

  mapBundleIDToLaunchAlertInfo = self->_mapBundleIDToLaunchAlertInfo;
  self->_mapBundleIDToLaunchAlertInfo = 0;

  self->_invalidated = 1;
}

- (void)sceneManager:(id)a3 didAddExternalForegroundApplicationSceneHandle:(id)a4
{
  v5 = [a4 scene];
  [(SBApplicationLaunchAlertService *)self _sceneWillBecomeForeground:v5];
}

- (void)sceneManager:(id)a3 didRemoveExternalForegroundApplicationSceneHandle:(id)a4
{
  v5 = [a4 scene];
  [(SBApplicationLaunchAlertService *)self _sceneDidResignForeground:v5];
}

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  if (-[NSMutableSet containsObject:](self->_foregroundingScenes, "containsObject:") && [v4 contentState] == 2)
  {
    [(SBApplicationLaunchAlertService *)self _sceneDidBecomeForeground:v4];
  }
}

- (id)succinctDescription
{
  v2 = [(SBApplicationLaunchAlertService *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBApplicationLaunchAlertService *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBApplicationLaunchAlertService *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_mapBundleIDToLaunchAlertInfo withName:@"bundleIDsToLaunchAlertInfo" skipIfNil:1];
  v6 = [v4 appendObject:self->_foregroundingScenes withName:@"foregroundingScenes" skipIfNil:1];

  return v4;
}

- (void)_sceneWillBecomeForeground:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBApplicationLaunchAlertService _sceneWillBecomeForeground:];
  }

  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    if ([v4 contentState] == 2)
    {
      [(SBApplicationLaunchAlertService *)self _sceneDidBecomeForeground:v4];
    }

    else
    {
      [v4 addObserver:self];
      [(NSMutableSet *)self->_foregroundingScenes addObject:v4];
    }
  }
}

- (void)_sceneDidBecomeForeground:(id)a3
{
  v11 = a3;
  [v11 removeObserver:self];
  [(NSMutableSet *)self->_foregroundingScenes removeObject:v11];
  v4 = [v11 definition];
  v5 = [v4 clientIdentity];
  v6 = [v5 bundleIdentifier];

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [(NSMutableDictionary *)self->_mapBundleIDToLaunchAlertInfo objectForKey:v6];
  if (!v7)
  {
    if ([(SBApplicationLaunchAlertService *)v6 _sceneDidBecomeForeground:&v12])
    {
      v7 = 0;
      v8 = 0;
      goto LABEL_4;
    }

    v7 = v12;
  }

  v8 = v7[2];
LABEL_4:
  v9 = v8;
  v10 = [v9 count];
  [v9 addObject:v11];
  if (!v10)
  {
    [(SBApplicationLaunchAlertService *)self _tryShowLaunchAlertsForLaunchAlertInfo:v7];
  }

LABEL_7:
}

- (void)_sceneDidResignForeground:(id)a3
{
  v11 = a3;
  if (!v11)
  {
    [SBApplicationLaunchAlertService _sceneDidResignForeground:];
  }

  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    [v11 removeObserver:self];
    [(NSMutableSet *)self->_foregroundingScenes removeObject:v11];
    v4 = [v11 definition];
    v5 = [v4 clientIdentity];
    v6 = [v5 bundleIdentifier];

    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_mapBundleIDToLaunchAlertInfo objectForKey:v6];
      v8 = v7;
      if (v7)
      {
        v9 = *(v7 + 16);
        [v9 removeObject:v11];
        v10 = [v9 count];

        if (!v10)
        {
          [(SBApplicationLaunchAlertService *)self _invalidateAndDismissLaunchAlertsForLaunchAlertInfo:v8];
        }
      }
    }
  }
}

- (void)_reallyShowLaunchAlertOfType:(unint64_t)a3 withLaunchAlertInfo:(id)a4 application:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__40;
  v44 = __Block_byref_object_dispose__40;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__40;
  v38 = __Block_byref_object_dispose__40;
  v39 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v28 = __96__SBApplicationLaunchAlertService__reallyShowLaunchAlertOfType_withLaunchAlertInfo_application___block_invoke;
  v29 = &unk_2783B3778;
  v30 = self;
  v31 = &v34;
  v32 = &v40;
  v33 = a2;
  v11 = v27;
  if (a3)
  {
    v12 = 0;
    v46 = 0;
    v13 = vcnt_s8(a3);
    v13.i16[0] = vaddlv_u8(v13);
    v14 = v13.i32[0];
    do
    {
      if (((1 << v12) & a3) != 0)
      {
        v28(v11);
        if (v46)
        {
          break;
        }

        --v14;
      }

      if (v12 > 0x3E)
      {
        break;
      }

      ++v12;
    }

    while (v14 > 0);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v41[5];
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v47 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if (v9)
        {
          v19 = v9[3];
        }

        else
        {
          v19 = 0;
        }

        v20 = *(*(&v23 + 1) + 8 * v18);
        v21 = v19;
        [v21 addObject:{v20, v23}];

        [(SBAlertItemsController *)self->_alertItemsController activateAlertItem:v35[5]];
        [v10 setHasDisplayedLaunchAlert:1 forType:a3];
        ++v18;
      }

      while (v16 != v18);
      v22 = [v15 countByEnumeratingWithState:&v23 objects:v47 count:16];
      v16 = v22;
    }

    while (v22);
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v40, 8);
}

void __96__SBApplicationLaunchAlertService__reallyShowLaunchAlertOfType_withLaunchAlertInfo_application___block_invoke(void *a1, uint64_t a2)
{
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = SBApplicationLaunchNotifyAirplaneModeAlertItem;
    }

    else
    {
      if (a2 != 4)
      {
        goto LABEL_12;
      }

      v7 = SBApplicationLaunchNotifyInCallWithoutDataSwitchingAlertItem;
    }

LABEL_10:
    v8 = objc_alloc_init(v7);
    v9 = *(a1[5] + 8);
    v6 = *(v9 + 40);
    *(v9 + 40) = v8;
    goto LABEL_11;
  }

  if ((a2 + 1) >= 2)
  {
    if (a2 != 1)
    {
      goto LABEL_12;
    }

    v7 = SBApplicationLaunchNotifyInCallAlertItem;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1[7] object:a1[4] file:@"SBApplicationLaunchAlertService.m" lineNumber:291 description:@"Cannot show an application launch alert for All or None."];
LABEL_11:

LABEL_12:
  v10 = *(*(a1[5] + 8) + 40);
  if (v10)
  {
    v11 = *(*(a1[6] + 8) + 40);
    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *(a1[6] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      v11 = *(*(a1[6] + 8) + 40);
      v10 = *(*(a1[5] + 8) + 40);
    }

    [v11 addObject:v10];
  }
}

- (void)_tryShowLaunchAlertsForLaunchAlertInfo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SBApplicationController *)self->_applicationController applicationWithBundleIdentifier:v5];
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_launchAlertEvaluators;
    v8 = [(NSSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 |= [*(*(&v13 + 1) + 8 * i) shouldShowLaunchAlertForApplication:{v6, v13}];
        }

        v9 = [(NSSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);

      if (v10)
      {
        [(SBApplicationLaunchAlertService *)self _reallyShowLaunchAlertOfType:v10 withLaunchAlertInfo:v4 application:v6];
      }
    }

    else
    {
    }
  }
}

- (void)_invalidateAndDismissLaunchAlertsForLaunchAlertInfo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5[3];
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SBApplicationLaunchAlertService.m" lineNumber:322 description:{@"Invalid parameter not satisfying: %@", @"launchAlertInfo"}];

    v7 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  v8 = [v7 copy];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(SBAlertItemsController *)self->_alertItemsController deactivateAlertItem:*(*(&v15 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (v6)
  {
    v13 = v6[1];
  }

  else
  {
    v13 = 0;
  }

  [(NSMutableDictionary *)self->_mapBundleIDToLaunchAlertInfo removeObjectForKey:v13];
}

- (void)initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"sceneManagers" object:? file:? lineNumber:? description:?];
}

- (void)initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"launchAlertEvaluators" object:? file:? lineNumber:? description:?];
}

- (void)initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"applicationController" object:? file:? lineNumber:? description:?];
}

- (void)initObservingSceneManagers:launchAlertEvaluators:applicationController:alertItemsController:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"alertItemsController" object:? file:? lineNumber:? description:?];
}

- (void)showLaunchAlertOfType:forApplication:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"application" object:? file:? lineNumber:? description:?];
}

- (void)_sceneWillBecomeForeground:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (BOOL)_sceneDidBecomeForeground:(void *)a3 .cold.1(void *a1, id *a2, void *a3)
{
  v6 = [[_SBApplicationLaunchAlertInfo alloc] initWithBundleID:a1];
  *a3 = v6;
  [*a2 setObject:v6 forKey:a1];
  return v6 == 0;
}

- (void)_sceneDidResignForeground:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

@end
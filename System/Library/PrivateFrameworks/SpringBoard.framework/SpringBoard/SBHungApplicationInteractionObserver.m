@interface SBHungApplicationInteractionObserver
- (BOOL)_transitionContextRepresentsActivatingAppFromAppSwitcher:(id)a3;
- (BOOL)_transitionContextRepresentsActivatingDynamicIslandApp:(id)a3;
- (BOOL)_transitionContextRepresentsActivatingHomeScreen:(id)a3;
- (BOOL)_transitionContextRepresentsArcSwipingToPreviousApp:(id)a3;
- (BOOL)_transitionContextRepresentsTappingBreadcrumbToPreviousApp:(id)a3;
- (uint64_t)setPreviousLockState:(uint64_t)result;
- (void)_lockStateDidChange:(id)a3;
- (void)_notifyInteractionWithPossiblyHungApplicationSceneEntities:(id)a3 withInteractionType:(int64_t)a4;
- (void)activate;
- (void)observeBackgroundingApplicationSceneEntities:(id)a3 withTransitionContext:(id)a4;
- (void)observeRemovedApplicationSceneEntity:(id)a3;
@end

@implementation SBHungApplicationInteractionObserver

- (void)activate
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void soft_HTInitializeHangTracerMonitor(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBHungApplicationInteractionObserver.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)observeBackgroundingApplicationSceneEntities:(id)a3 withTransitionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBHungApplicationInteractionObserver *)self _transitionContextRepresentsActivatingAppFromAppSwitcher:v7])
  {
    v8 = 0;
    v9 = 1;
  }

  else if ([(SBHungApplicationInteractionObserver *)self _transitionContextRepresentsActivatingDynamicIslandApp:v7])
  {
    v8 = 1;
    v9 = 2;
  }

  else if ([(SBHungApplicationInteractionObserver *)self _transitionContextRepresentsActivatingHomeScreen:v7])
  {
    v8 = 0;
    v9 = 3;
  }

  else if ([(SBHungApplicationInteractionObserver *)self _transitionContextRepresentsArcSwipingToPreviousApp:v7])
  {
    v8 = 0;
    v9 = 4;
  }

  else
  {
    v10 = [(SBHungApplicationInteractionObserver *)self _transitionContextRepresentsTappingBreadcrumbToPreviousApp:v7];
    v8 = !v10;
    if (v10)
    {
      v9 = 5;
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = _NSStringFromHungApplicationInteractionObserverInteractionType(v9);
  v12 = SBLogHangTracer();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SBHungApplicationInteractionObserver observeBackgroundingApplicationSceneEntities:v11 withTransitionContext:v12];
  }

  if ((v8 & 1) == 0)
  {
    [(SBHungApplicationInteractionObserver *)self _notifyInteractionWithPossiblyHungApplicationSceneEntities:v6 withInteractionType:v9];
  }
}

- (void)observeRemovedApplicationSceneEntity:(id)a3
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(SBHungApplicationInteractionObserver *)self _notifyInteractionWithPossiblyHungApplicationSceneEntities:v4 withInteractionType:7];
}

- (void)_lockStateDidChange:(id)a3
{
  v3 = self;
  v38 = *MEMORY[0x277D85DE8];
  previousLockState = self->_previousLockState;
  v5 = [a3 userInfo];
  v6 = [v5 objectForKey:@"SBAggregateLockStateKey"];
  v7 = [v6 unsignedIntegerValue];

  if ((previousLockState & 2) == 0 && (v7 & 2) != 0)
  {
    v25 = v7;
    v26 = v3;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = [SBApp windowSceneManager];
    v10 = [v9 connectedWindowScenes];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        v14 = 0;
        do
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v32 + 1) + 8 * v14);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v16 = [v15 switcherController];
          v17 = [v16 layoutState];
          v18 = [v17 elements];

          v19 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v29;
            do
            {
              v22 = 0;
              do
              {
                if (*v29 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v28 + 1) + 8 * v22) workspaceEntity];
                v24 = [v23 applicationSceneEntity];

                [v8 bs_safeAddObject:v24];
                ++v22;
              }

              while (v20 != v22);
              v20 = [v18 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v20);
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v12);
    }

    v3 = v26;
    [(SBHungApplicationInteractionObserver *)v26 _notifyInteractionWithPossiblyHungApplicationSceneEntities:v8 withInteractionType:6];

    v7 = v25;
  }

  v3->_previousLockState = v7;
}

- (void)_notifyInteractionWithPossiblyHungApplicationSceneEntities:(id)a3 withInteractionType:(int64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _NSStringFromHungApplicationInteractionObserverInteractionType(a4);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v9 = *v24;
    v21 = &v33 + 8;
    *&v8 = 67109378;
    v20 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v23 + 1) + 8 * i) sceneHandle];
        v12 = [v11 application];
        v13 = [v12 processState];
        v14 = [v13 pid];

        v15 = SBLogHangTracer();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = v20;
          *&buf[4] = v14;
          LOWORD(v33) = 2112;
          *(&v33 + 2) = v6;
          _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "Calling HTUserSwitchedAwayFromApp with pid %d, reason %@", buf, 0x12u);
        }

        v16 = v6;
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v17 = getHTUserSwitchedAwayFromAppSymbolLoc_ptr;
        v30 = getHTUserSwitchedAwayFromAppSymbolLoc_ptr;
        if (!getHTUserSwitchedAwayFromAppSymbolLoc_ptr)
        {
          *buf = MEMORY[0x277D85DD0];
          *&v33 = 3221225472;
          *(&v33 + 1) = __getHTUserSwitchedAwayFromAppSymbolLoc_block_invoke;
          v34 = &unk_2783A9718;
          v35 = &v27;
          v18 = HangTracerLibrary();
          v19 = dlsym(v18, "HTUserSwitchedAwayFromApp");
          *(v35[1] + 24) = v19;
          getHTUserSwitchedAwayFromAppSymbolLoc_ptr = *(v35[1] + 24);
          v17 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (!v17)
        {
          [SBHungApplicationInteractionObserver _notifyInteractionWithPossiblyHungApplicationSceneEntities:withInteractionType:];
        }

        v17(v14, v16);
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }
}

- (BOOL)_transitionContextRepresentsActivatingAppFromAppSwitcher:(id)a3
{
  v3 = a3;
  v4 = [v3 previousLayoutState];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 layoutState];

  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v8 unlockedEnvironmentMode] == 2 && objc_msgSend(v13, "unlockedEnvironmentMode") == 3;
  return v14;
}

- (BOOL)_transitionContextRepresentsActivatingDynamicIslandApp:(id)a3
{
  v3 = a3;
  v4 = [v3 previousLayoutState];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 layoutState];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v3 request];
  v15 = [v14 source];

  v17 = [v8 unlockedEnvironmentMode] == 3 && objc_msgSend(v13, "unlockedEnvironmentMode") == 3 && v15 == 61;
  return v17;
}

- (BOOL)_transitionContextRepresentsArcSwipingToPreviousApp:(id)a3
{
  v3 = a3;
  v4 = [v3 previousLayoutState];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 layoutState];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v3 request];
  v15 = [v14 source];

  if ([v8 unlockedEnvironmentMode] == 3)
  {
    LOBYTE(v16) = 0;
    if ([v13 unlockedEnvironmentMode] == 3 && v15 == 11)
    {
      v17 = [v13 elements];
      v18 = [v8 elements];
      v16 = [v17 intersectsSet:v18] ^ 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)_transitionContextRepresentsActivatingHomeScreen:(id)a3
{
  v3 = [a3 layoutState];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 unlockedEnvironmentMode];
  return v8 == 1;
}

- (BOOL)_transitionContextRepresentsTappingBreadcrumbToPreviousApp:(id)a3
{
  v3 = a3;
  v4 = [v3 previousLayoutState];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v3 layoutState];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v3 request];
  v15 = [v14 source];

  v17 = [v8 unlockedEnvironmentMode] == 3 && objc_msgSend(v13, "unlockedEnvironmentMode") == 3 && v15 == 15;
  return v17;
}

- (uint64_t)setPreviousLockState:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (void)observeBackgroundingApplicationSceneEntities:(uint64_t)a1 withTransitionContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Observed backgrounding application scene(s) with interaction type %@", &v2, 0xCu);
}

- (void)_notifyInteractionWithPossiblyHungApplicationSceneEntities:withInteractionType:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void soft_HTUserSwitchedAwayFromApp(pid_t, NSString * _Nonnull __strong)"}];
  [v0 handleFailureInFunction:v1 file:@"SBHungApplicationInteractionObserver.m" lineNumber:29 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
@interface SBPIPSceneContentAdapter
- (BOOL)isPresentingPictureInPictureForPIPController:(id)a3 applicationBundleIdentifier:(id)a4;
- (BOOL)pipController:(id)a3 willBeginPIPInterruptionForAssertion:(id)a4;
- (SBPIPSceneContentAdapter)initWithPIPContentType:(int64_t)a3 windowScene:(id)a4;
- (void)_recalculateLevelAssertions;
- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4;
- (void)pipController:(id)a3 didAddContainerViewController:(id)a4;
- (void)pipController:(id)a3 didUpdateEnhancedWindowingModeEnabled:(BOOL)a4 windowScene:(id)a5;
- (void)pipController:(id)a3 willRemoveContainerViewController:(id)a4;
- (void)setPIPController:(id)a3;
@end

@implementation SBPIPSceneContentAdapter

- (SBPIPSceneContentAdapter)initWithPIPContentType:(int64_t)a3 windowScene:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = SBPIPSceneContentAdapter;
  v7 = [(SBPIPSceneContentAdapter *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_pipContentType = a3;
    WeakRetained = objc_loadWeakRetained(&v7->_sbWindowScene);
    v10 = [WeakRetained layoutStateTransitionCoordinator];
    [v10 addObserver:v8];

    v11 = [v6 layoutStateProvider];
    v12 = [v11 layoutState];
    v8->_effectiveEnvironmentMode = [v12 unlockedEnvironmentMode];
  }

  return v8;
}

- (BOOL)isPresentingPictureInPictureForPIPController:(id)a3 applicationBundleIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v7 = [WeakRetained hostedAppSceneHandles];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v16 + 1) + 8 * i) application];
        v13 = [v12 bundleIdentifier];
        v14 = [v13 isEqualToString:v5];

        if (v14)
        {
          LOBYTE(v9) = 1;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v9;
}

- (void)setPIPController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pipController, obj);
    v5 = obj;
  }
}

- (void)pipController:(id)a3 didAddContainerViewController:(id)a4
{
  v15 = a4;
  v5 = [v15 hostedAppSceneHandle];
  if (v5)
  {
    trackedPIPBundleIdentifiers = self->_trackedPIPBundleIdentifiers;
    if (!trackedPIPBundleIdentifiers)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v8 = self->_trackedPIPBundleIdentifiers;
      self->_trackedPIPBundleIdentifiers = v7;

      trackedPIPBundleIdentifiers = self->_trackedPIPBundleIdentifiers;
    }

    v9 = [v5 application];
    v10 = [v9 bundleIdentifier];
    [(NSMutableSet *)trackedPIPBundleIdentifiers addObject:v10];

    [(SBPIPSceneContentAdapter *)self _recalculateLevelAssertions];
    if ([v15 requiresMedusaKeyboard])
    {
      WeakRetained = objc_loadWeakRetained(&self->_pipController);
      v12 = [WeakRetained windowSceneManager];
      v13 = [v12 activeDisplayWindowScene];
      v14 = [v13 medusaHostedKeyboardWindowController];
      [v14 updateMedusaHostedKeyboardWindow];
    }
  }
}

- (void)pipController:(id)a3 willRemoveContainerViewController:(id)a4
{
  v10 = [a4 hostedAppSceneHandle];
  [(SBPIPSceneContentAdapter *)self _recalculateLevelAssertions];
  trackedPIPBundleIdentifiers = self->_trackedPIPBundleIdentifiers;
  v6 = [v10 application];
  v7 = [v6 bundleIdentifier];
  [(NSMutableSet *)trackedPIPBundleIdentifiers removeObject:v7];

  v8 = [v10 sceneIfExists];
  v9 = v8;
  if (v8)
  {
    [v8 updateSettingsWithBlock:&__block_literal_global_310];
  }
}

- (BOOL)pipController:(id)a3 willBeginPIPInterruptionForAssertion:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 cameraSensorAttributionBundleIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v8 = [WeakRetained layoutStateProvider];
  v9 = [v8 layoutState];

  v10 = [v5 reason];
  v11 = SBStringForPIPBehaviorOverrideReason(1uLL);
  LOBYTE(WeakRetained) = [v10 isEqualToString:v11];

  v37 = v9;
  v12 = [v9 elementWithRole:3];
  v13 = [v12 workspaceEntity];
  v14 = [v13 applicationSceneEntity];
  v15 = [v14 application];
  v16 = [v15 bundleIdentifier];
  v17 = [v16 isEqualToString:v6];

  if (WeakRetained)
  {
    if (v17)
    {
      v18 = SBLogPIP();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = _SBFLoggingMethodProem();
        *buf = 138543874;
        v44 = v19;
        v45 = 2114;
        v46 = v5;
        v47 = 2114;
        v48 = v6;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as it's within the floating app";
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x20u);
      }
    }

    else
    {
      if ([(NSMutableSet *)self->_interruptingBundleIdentifiersSinceLastTransition containsObject:v6])
      {
        v18 = SBLogPIP();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v19 = _SBFLoggingMethodProem();
        *buf = 138543874;
        v44 = v19;
        v45 = 2114;
        v46 = v5;
        v47 = 2114;
        v48 = v6;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as we were asked about it before";
        goto LABEL_7;
      }

      if ([(NSMutableSet *)self->_trackedPIPBundleIdentifiers containsObject:v6])
      {
        v18 = SBLogPIP();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        v19 = _SBFLoggingMethodProem();
        *buf = 138543874;
        v44 = v19;
        v45 = 2114;
        v46 = v5;
        v47 = 2114;
        v48 = v6;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as it's within PIP";
        goto LABEL_7;
      }

      v35 = v5;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      obj = [v37 elements];
      v23 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v39;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = [*(*(&v38 + 1) + 8 * i) workspaceEntity];
            v28 = [v27 applicationSceneEntity];
            v29 = [v28 application];
            v30 = [v29 bundleIdentifier];
            v31 = [v30 isEqual:v6];

            if (v31)
            {

              interruptingBundleIdentifiersSinceLastTransition = self->_interruptingBundleIdentifiersSinceLastTransition;
              if (!interruptingBundleIdentifiersSinceLastTransition)
              {
                v33 = [MEMORY[0x277CBEB58] setWithCapacity:1];
                v34 = self->_interruptingBundleIdentifiersSinceLastTransition;
                self->_interruptingBundleIdentifiersSinceLastTransition = v33;

                interruptingBundleIdentifiersSinceLastTransition = self->_interruptingBundleIdentifiersSinceLastTransition;
              }

              [(NSMutableSet *)interruptingBundleIdentifiersSinceLastTransition addObject:v6];
              v21 = 1;
              v5 = v35;
              goto LABEL_9;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }
      }

      v18 = SBLogPIP();
      v5 = v35;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = _SBFLoggingMethodProem();
        *buf = 138543874;
        v44 = v19;
        v45 = 2114;
        v46 = v35;
        v47 = 2114;
        v48 = v6;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as it isn't within the layout state or in PIP";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v18 = SBLogPIP();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = _SBFLoggingMethodProem();
      *buf = 138543874;
      v44 = v19;
      v45 = 2114;
      v46 = v5;
      v47 = 2114;
      v48 = v6;
      v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], because it's not due to camera usage";
      goto LABEL_7;
    }
  }

LABEL_8:

  v21 = 0;
LABEL_9:

  return v21;
}

- (void)pipController:(id)a3 didUpdateEnhancedWindowingModeEnabled:(BOOL)a4 windowScene:(id)a5
{
  v5 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v18 = v7;
  v9 = [WeakRetained containerViewControllersOnWindowScene:v7];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v21 + 1) + 8 * v13) hostedAppSceneHandle];
        v15 = v14;
        if (v14)
        {
          [v14 setWantsEnhancedWindowingEnabled:v5];
          v16 = [v15 sceneIfExists];
          v17 = v16;
          if (v16)
          {
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __92__SBPIPSceneContentAdapter_pipController_didUpdateEnhancedWindowingModeEnabled_windowScene___block_invoke;
            v19[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
            v20 = v5;
            [v16 updateSettingsWithBlock:v19];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

void __92__SBPIPSceneContentAdapter_pipController_didUpdateEnhancedWindowingModeEnabled_windowScene___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setEnhancedWindowingEnabled:*(a1 + 32)];
}

- (void)layoutStateTransitionCoordinator:(id)a3 transitionDidEndWithTransitionContext:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 toLayoutState];
  v7 = [v6 unlockedEnvironmentMode];
  if (self->_effectiveEnvironmentMode != v7)
  {
    self->_effectiveEnvironmentMode = v7;
    [(SBPIPSceneContentAdapter *)self _recalculateLevelAssertions];
  }

  v22 = v5;
  v8 = [v5 fromLayoutState];
  v9 = [v6 elements];
  v23 = [v9 bs_map:&__block_literal_global_4_1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = v8;
  v10 = [v8 elements];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 layoutRole] != 2)
        {
          v16 = [v15 workspaceEntity];
          v17 = [v16 applicationSceneEntity];
          v18 = [v17 application];
          v19 = [v18 bundleIdentifier];

          if (([v23 containsObject:v19] & 1) == 0)
          {
            [(NSMutableSet *)self->_interruptingBundleIdentifiersSinceLastTransition removeObject:v19];
            if (![(NSMutableSet *)self->_interruptingBundleIdentifiersSinceLastTransition count])
            {
              interruptingBundleIdentifiersSinceLastTransition = self->_interruptingBundleIdentifiersSinceLastTransition;
              self->_interruptingBundleIdentifiersSinceLastTransition = 0;
            }
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }
}

id __99__SBPIPSceneContentAdapter_layoutStateTransitionCoordinator_transitionDidEndWithTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 layoutRole];
  if (v3 == 1 || (SBLayoutRoleIsValidForSplitView(v3) & 1) == 0)
  {
    v5 = [v2 workspaceEntity];
    v6 = [v5 applicationSceneEntity];
    v7 = [v6 application];
    v4 = [v7 bundleIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_recalculateLevelAssertions
{
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  v3 = objc_loadWeakRetained(&self->_pipController);
  if ([v3 isPictureInPictureWindowVisibleOnWindowScene:WeakRetained] && self->_effectiveEnvironmentMode == 1)
  {
    [v3 windowLevelForWindowScene:WeakRetained];
    v5 = v4 + -1.0;
    dockWindowLevelAssertion = self->_dockWindowLevelAssertion;
    if (dockWindowLevelAssertion)
    {
      [(SBFloatingDockWindowLevelAssertion *)dockWindowLevelAssertion level];
      if (v7 == v5)
      {
        goto LABEL_9;
      }

      dockWindowLevelAssertion = self->_dockWindowLevelAssertion;
    }

    [(SBFloatingDockWindowLevelAssertion *)dockWindowLevelAssertion invalidate];
    v8 = [WeakRetained floatingDockController];
    v9 = [[SBFloatingDockWindowLevelAssertion alloc] initWithFloatingDockController:v8 priority:3 level:@"SBSystemNotesContentViewController" reason:v5];
    v10 = self->_dockWindowLevelAssertion;
    self->_dockWindowLevelAssertion = v9;
  }

  else
  {
    [(SBFloatingDockWindowLevelAssertion *)self->_dockWindowLevelAssertion invalidate];
    v8 = self->_dockWindowLevelAssertion;
    self->_dockWindowLevelAssertion = 0;
  }

LABEL_9:
}

@end
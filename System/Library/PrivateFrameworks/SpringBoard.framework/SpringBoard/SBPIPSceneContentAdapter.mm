@interface SBPIPSceneContentAdapter
- (BOOL)isPresentingPictureInPictureForPIPController:(id)controller applicationBundleIdentifier:(id)identifier;
- (BOOL)pipController:(id)controller willBeginPIPInterruptionForAssertion:(id)assertion;
- (SBPIPSceneContentAdapter)initWithPIPContentType:(int64_t)type windowScene:(id)scene;
- (void)_recalculateLevelAssertions;
- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context;
- (void)pipController:(id)controller didAddContainerViewController:(id)viewController;
- (void)pipController:(id)controller didUpdateEnhancedWindowingModeEnabled:(BOOL)enabled windowScene:(id)scene;
- (void)pipController:(id)controller willRemoveContainerViewController:(id)viewController;
- (void)setPIPController:(id)controller;
@end

@implementation SBPIPSceneContentAdapter

- (SBPIPSceneContentAdapter)initWithPIPContentType:(int64_t)type windowScene:(id)scene
{
  sceneCopy = scene;
  v14.receiver = self;
  v14.super_class = SBPIPSceneContentAdapter;
  v7 = [(SBPIPSceneContentAdapter *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_pipContentType = type;
    WeakRetained = objc_loadWeakRetained(&v7->_sbWindowScene);
    layoutStateTransitionCoordinator = [WeakRetained layoutStateTransitionCoordinator];
    [layoutStateTransitionCoordinator addObserver:v8];

    layoutStateProvider = [sceneCopy layoutStateProvider];
    layoutState = [layoutStateProvider layoutState];
    v8->_effectiveEnvironmentMode = [layoutState unlockedEnvironmentMode];
  }

  return v8;
}

- (BOOL)isPresentingPictureInPictureForPIPController:(id)controller applicationBundleIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  hostedAppSceneHandles = [WeakRetained hostedAppSceneHandles];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = hostedAppSceneHandles;
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

        application = [*(*(&v16 + 1) + 8 * i) application];
        bundleIdentifier = [application bundleIdentifier];
        v14 = [bundleIdentifier isEqualToString:identifierCopy];

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

- (void)setPIPController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_pipController, obj);
    v5 = obj;
  }
}

- (void)pipController:(id)controller didAddContainerViewController:(id)viewController
{
  viewControllerCopy = viewController;
  hostedAppSceneHandle = [viewControllerCopy hostedAppSceneHandle];
  if (hostedAppSceneHandle)
  {
    trackedPIPBundleIdentifiers = self->_trackedPIPBundleIdentifiers;
    if (!trackedPIPBundleIdentifiers)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v8 = self->_trackedPIPBundleIdentifiers;
      self->_trackedPIPBundleIdentifiers = v7;

      trackedPIPBundleIdentifiers = self->_trackedPIPBundleIdentifiers;
    }

    application = [hostedAppSceneHandle application];
    bundleIdentifier = [application bundleIdentifier];
    [(NSMutableSet *)trackedPIPBundleIdentifiers addObject:bundleIdentifier];

    [(SBPIPSceneContentAdapter *)self _recalculateLevelAssertions];
    if ([viewControllerCopy requiresMedusaKeyboard])
    {
      WeakRetained = objc_loadWeakRetained(&self->_pipController);
      windowSceneManager = [WeakRetained windowSceneManager];
      activeDisplayWindowScene = [windowSceneManager activeDisplayWindowScene];
      medusaHostedKeyboardWindowController = [activeDisplayWindowScene medusaHostedKeyboardWindowController];
      [medusaHostedKeyboardWindowController updateMedusaHostedKeyboardWindow];
    }
  }
}

- (void)pipController:(id)controller willRemoveContainerViewController:(id)viewController
{
  hostedAppSceneHandle = [viewController hostedAppSceneHandle];
  [(SBPIPSceneContentAdapter *)self _recalculateLevelAssertions];
  trackedPIPBundleIdentifiers = self->_trackedPIPBundleIdentifiers;
  application = [hostedAppSceneHandle application];
  bundleIdentifier = [application bundleIdentifier];
  [(NSMutableSet *)trackedPIPBundleIdentifiers removeObject:bundleIdentifier];

  sceneIfExists = [hostedAppSceneHandle sceneIfExists];
  v9 = sceneIfExists;
  if (sceneIfExists)
  {
    [sceneIfExists updateSettingsWithBlock:&__block_literal_global_310];
  }
}

- (BOOL)pipController:(id)controller willBeginPIPInterruptionForAssertion:(id)assertion
{
  v49 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  cameraSensorAttributionBundleIdentifier = [assertionCopy cameraSensorAttributionBundleIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_sbWindowScene);
  layoutStateProvider = [WeakRetained layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  reason = [assertionCopy reason];
  v11 = SBStringForPIPBehaviorOverrideReason(1uLL);
  LOBYTE(WeakRetained) = [reason isEqualToString:v11];

  v37 = layoutState;
  v12 = [layoutState elementWithRole:3];
  workspaceEntity = [v12 workspaceEntity];
  applicationSceneEntity = [workspaceEntity applicationSceneEntity];
  application = [applicationSceneEntity application];
  bundleIdentifier = [application bundleIdentifier];
  v17 = [bundleIdentifier isEqualToString:cameraSensorAttributionBundleIdentifier];

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
        v46 = assertionCopy;
        v47 = 2114;
        v48 = cameraSensorAttributionBundleIdentifier;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as it's within the floating app";
LABEL_7:
        _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0x20u);
      }
    }

    else
    {
      if ([(NSMutableSet *)self->_interruptingBundleIdentifiersSinceLastTransition containsObject:cameraSensorAttributionBundleIdentifier])
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
        v46 = assertionCopy;
        v47 = 2114;
        v48 = cameraSensorAttributionBundleIdentifier;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as we were asked about it before";
        goto LABEL_7;
      }

      if ([(NSMutableSet *)self->_trackedPIPBundleIdentifiers containsObject:cameraSensorAttributionBundleIdentifier])
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
        v46 = assertionCopy;
        v47 = 2114;
        v48 = cameraSensorAttributionBundleIdentifier;
        v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], as it's within PIP";
        goto LABEL_7;
      }

      v35 = assertionCopy;
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

            workspaceEntity2 = [*(*(&v38 + 1) + 8 * i) workspaceEntity];
            applicationSceneEntity2 = [workspaceEntity2 applicationSceneEntity];
            application2 = [applicationSceneEntity2 application];
            bundleIdentifier2 = [application2 bundleIdentifier];
            v31 = [bundleIdentifier2 isEqual:cameraSensorAttributionBundleIdentifier];

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

              [(NSMutableSet *)interruptingBundleIdentifiersSinceLastTransition addObject:cameraSensorAttributionBundleIdentifier];
              v21 = 1;
              assertionCopy = v35;
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
      assertionCopy = v35;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = _SBFLoggingMethodProem();
        *buf = 138543874;
        v44 = v19;
        v45 = 2114;
        v46 = v35;
        v47 = 2114;
        v48 = cameraSensorAttributionBundleIdentifier;
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
      v46 = assertionCopy;
      v47 = 2114;
      v48 = cameraSensorAttributionBundleIdentifier;
      v20 = "%{public}@ NOT stashing PIP for interruption assertion: [%{public}@] bundleIdentifier[%{public}@], because it's not due to camera usage";
      goto LABEL_7;
    }
  }

LABEL_8:

  v21 = 0;
LABEL_9:

  return v21;
}

- (void)pipController:(id)controller didUpdateEnhancedWindowingModeEnabled:(BOOL)enabled windowScene:(id)scene
{
  enabledCopy = enabled;
  v26 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  WeakRetained = objc_loadWeakRetained(&self->_pipController);
  v18 = sceneCopy;
  v9 = [WeakRetained containerViewControllersOnWindowScene:sceneCopy];

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

        hostedAppSceneHandle = [*(*(&v21 + 1) + 8 * v13) hostedAppSceneHandle];
        v15 = hostedAppSceneHandle;
        if (hostedAppSceneHandle)
        {
          [hostedAppSceneHandle setWantsEnhancedWindowingEnabled:enabledCopy];
          sceneIfExists = [v15 sceneIfExists];
          v17 = sceneIfExists;
          if (sceneIfExists)
          {
            v19[0] = MEMORY[0x277D85DD0];
            v19[1] = 3221225472;
            v19[2] = __92__SBPIPSceneContentAdapter_pipController_didUpdateEnhancedWindowingModeEnabled_windowScene___block_invoke;
            v19[3] = &__block_descriptor_33_e33_v16__0__FBSMutableSceneSettings_8l;
            v20 = enabledCopy;
            [sceneIfExists updateSettingsWithBlock:v19];
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

- (void)layoutStateTransitionCoordinator:(id)coordinator transitionDidEndWithTransitionContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  toLayoutState = [contextCopy toLayoutState];
  unlockedEnvironmentMode = [toLayoutState unlockedEnvironmentMode];
  if (self->_effectiveEnvironmentMode != unlockedEnvironmentMode)
  {
    self->_effectiveEnvironmentMode = unlockedEnvironmentMode;
    [(SBPIPSceneContentAdapter *)self _recalculateLevelAssertions];
  }

  v22 = contextCopy;
  fromLayoutState = [contextCopy fromLayoutState];
  elements = [toLayoutState elements];
  v23 = [elements bs_map:&__block_literal_global_4_1];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v21 = fromLayoutState;
  elements2 = [fromLayoutState elements];
  v11 = [elements2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(elements2);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 layoutRole] != 2)
        {
          workspaceEntity = [v15 workspaceEntity];
          applicationSceneEntity = [workspaceEntity applicationSceneEntity];
          application = [applicationSceneEntity application];
          bundleIdentifier = [application bundleIdentifier];

          if (([v23 containsObject:bundleIdentifier] & 1) == 0)
          {
            [(NSMutableSet *)self->_interruptingBundleIdentifiersSinceLastTransition removeObject:bundleIdentifier];
            if (![(NSMutableSet *)self->_interruptingBundleIdentifiersSinceLastTransition count])
            {
              interruptingBundleIdentifiersSinceLastTransition = self->_interruptingBundleIdentifiersSinceLastTransition;
              self->_interruptingBundleIdentifiersSinceLastTransition = 0;
            }
          }
        }
      }

      v12 = [elements2 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
    floatingDockController = [WeakRetained floatingDockController];
    v9 = [[SBFloatingDockWindowLevelAssertion alloc] initWithFloatingDockController:floatingDockController priority:3 level:@"SBSystemNotesContentViewController" reason:v5];
    v10 = self->_dockWindowLevelAssertion;
    self->_dockWindowLevelAssertion = v9;
  }

  else
  {
    [(SBFloatingDockWindowLevelAssertion *)self->_dockWindowLevelAssertion invalidate];
    floatingDockController = self->_dockWindowLevelAssertion;
    self->_dockWindowLevelAssertion = 0;
  }

LABEL_9:
}

@end
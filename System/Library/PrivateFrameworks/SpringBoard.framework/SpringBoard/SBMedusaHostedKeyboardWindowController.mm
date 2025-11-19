@interface SBMedusaHostedKeyboardWindowController
- (BOOL)isKeyboardVisibleForSpringBoard;
- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)a3;
- (SBMedusaHostedKeyboardWindowController)initWithWindowScene:(id)a3;
- (id)_keyboardLayersClientSettingsDiffInspector;
- (id)newMedusaHostedKeyboardWindowLevelAssertionWithPriority:(unint64_t)a3 windowLevel:(double)a4;
- (void)_doObserverCalloutWithBlock:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)a3;
- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)updateMedusaHostedKeyboardWindow;
- (void)updateMedusaHostedKeyboardWindowForScene:(id)a3 isForeground:(BOOL *)a4;
@end

@implementation SBMedusaHostedKeyboardWindowController

- (id)_keyboardLayersClientSettingsDiffInspector
{
  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    v3 = 0;
  }

  else
  {
    keyboardLayersClientSettingsDiffInspector = self->_keyboardLayersClientSettingsDiffInspector;
    if (!keyboardLayersClientSettingsDiffInspector)
    {
      v5 = objc_alloc_init(MEMORY[0x277D0ADB8]);
      v6 = self->_keyboardLayersClientSettingsDiffInspector;
      self->_keyboardLayersClientSettingsDiffInspector = v5;

      v7 = self->_keyboardLayersClientSettingsDiffInspector;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_4;
      v13[3] = &unk_2783B6D08;
      v13[4] = self;
      v14 = &__block_literal_global_7_3;
      v9 = __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke(v8, v13);
      [(FBSSceneClientSettingsDiffInspector *)v7 observeLayersWithBlock:v9];

      v10 = self->_keyboardLayersClientSettingsDiffInspector;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_6;
      v12[3] = &unk_2783B6D30;
      v12[4] = self;
      [(FBSSceneClientSettingsDiffInspector *)v10 observePreferredSceneHostIdentityWithBlock:v12];

      keyboardLayersClientSettingsDiffInspector = self->_keyboardLayersClientSettingsDiffInspector;
    }

    v3 = keyboardLayersClientSettingsDiffInspector;
  }

  return v3;
}

void __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
  v6 = *(a1 + 40);
  if (v3)
  {
    v7 = v3[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 clientSettings];
  v10 = (*(v6 + 16))(v6, v9);

  if ((BSEqualObjects() & 1) == 0)
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_5;
    v12[3] = &unk_2783B6CE0;
    v13 = v3;
    [v11 _doObserverCalloutWithBlock:v12];
    [*(a1 + 32) updateMedusaHostedKeyboardWindow];
  }
}

id __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 layers];
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

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isKeyboardLayer] & 1) != 0 || objc_msgSend(v9, "isKeyboardProxyLayer"))
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x277CBEB40]);
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

- (void)updateMedusaHostedKeyboardWindow
{
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    v3 = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [v3 sceneWithIdentifier:*MEMORY[0x277D22AC8]];

    v4 = v5;
    if (v5)
    {
      [(SBMedusaHostedKeyboardWindowController *)self updateMedusaHostedKeyboardWindowForScene:v5 isForeground:0];
      v4 = v5;
    }
  }
}

- (SBMedusaHostedKeyboardWindowController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBMedusaHostedKeyboardWindowController;
  v5 = [(SBMedusaHostedKeyboardWindowController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, v4);
  }

  return v6;
}

- (void)dealloc
{
  [(SBMedusaHostedKeyboardWindowController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBMedusaHostedKeyboardWindowController;
  [(SBMedusaHostedKeyboardWindowController *)&v3 dealloc];
}

- (void)invalidate
{
  [(UIWindow *)self->_medusaHostedKeyboardWindow invalidate];
  medusaHostedKeyboardWindow = self->_medusaHostedKeyboardWindow;
  self->_medusaHostedKeyboardWindow = 0;

  keyboardLayersClientSettingsDiffInspector = self->_keyboardLayersClientSettingsDiffInspector;

  [(FBSSceneClientSettingsDiffInspector *)keyboardLayersClientSettingsDiffInspector removeAllObservers];
}

id __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_2;
  v6[3] = &unk_2783B6C98;
  v7 = v2;
  v3 = v2;
  v4 = [v6 copy];

  return v4;
}

void __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_5_cold_1(a1, v3);
  }
}

- (id)newMedusaHostedKeyboardWindowLevelAssertionWithPriority:(unint64_t)a3 windowLevel:(double)a4
{
  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    return 0;
  }

  medusaHostedKeyboardWindow = self->_medusaHostedKeyboardWindow;

  return [(UIWindow *)medusaHostedKeyboardWindow newWindowLevelAssertionWithPriority:a3 windowLevel:a4];
}

- (BOOL)isKeyboardVisibleForSpringBoard
{
  if (![MEMORY[0x277D75658] usesInputSystemUI])
  {
    v2 = [MEMORY[0x277D0AAD8] sharedInstance];
    v3 = [v2 sceneWithIdentifier:*MEMORY[0x277D22AC8]];
    v6 = [v3 clientSettings];
    v7 = [v6 preferredSceneHostIdentifier];

    v8 = [v3 clientSettings];
    v9 = [v8 preferredSceneHostIdentity];

    if (v9)
    {
      v10 = [v2 sceneFromIdentityToken:v9];
    }

    else
    {
      if (![v7 length])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v10 = [v2 sceneWithIdentifier:v7];
    }

    v4 = v10;
LABEL_8:
    v11 = [v4 clientProcess];
    v5 = [v11 isCurrentProcess];

    goto LABEL_9;
  }

  v2 = +[SBWorkspace mainWorkspace];
  v3 = [v2 keyboardFocusController];
  v4 = [v3 inputUISceneController];
  v5 = [v4 isVisibleForSpringBoard];
LABEL_9:

  return v5;
}

- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [v4 sceneFromIdentityToken:v3];

    if (v5)
    {
      v6 = [v5 clientProcess];
      if ([v6 isApplicationProcess])
      {
        v7 = +[SBApplicationController sharedInstance];
        v8 = [v6 bundleIdentifier];
        v9 = [v7 applicationWithBundleIdentifier:v8];

        v10 = [v5 uiSettings];
        if ([v10 enhancedWindowingEnabled])
        {
          v11 = [v9 supportsChamoisSceneResizing];

          v12 = v11 - 1;
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

  return v12 & 1;
}

- (void)updateMedusaHostedKeyboardWindowForScene:(id)a3 isForeground:(BOOL *)a4
{
  v125 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v8 = [v6 settings];
    v9 = [v8 sb_displayIdentityForSceneManagers];

    v10 = [WeakRetained _fbsDisplayIdentity];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
LABEL_99:

      goto LABEL_100;
    }

    v12 = [v6 settings];
    v110 = [v12 isForeground];

    v13 = [v6 clientSettings];
    v14 = [v13 preferredSceneHostIdentifier];

    v15 = [v6 clientSettings];
    v16 = [v15 preferredSceneHostIdentity];

    v17 = +[SBSceneManagerCoordinator sharedInstance];
    v18 = [v17 sceneManagerForDisplayIdentity:v9];

    v108 = v9;
    v109 = WeakRetained;
    v102 = a4;
    v103 = v14;
    v104 = v18;
    if (v16)
    {
      v19 = [MEMORY[0x277D0AAD8] sharedInstance];
      v20 = [v19 sceneFromIdentityToken:v16];

      if (v20)
      {
        goto LABEL_30;
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v21 = [v18 externalForegroundApplicationSceneHandles];
      v22 = [v21 countByEnumeratingWithState:&v115 objects:v124 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v116;
        v100 = v21;
        v98 = *v116;
        do
        {
          v25 = 0;
          v99 = v23;
          do
          {
            if (*v116 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v115 + 1) + 8 * v25) sceneIfExists];
            if (v26)
            {
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v105 = v26;
              v27 = [v26 clientSettings];
              v28 = [v27 layers];

              v29 = [v28 countByEnumeratingWithState:&v111 objects:v123 count:16];
              if (v29)
              {
                v30 = v29;
                v31 = *v112;
                while (2)
                {
                  for (i = 0; i != v30; ++i)
                  {
                    if (*v112 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v111 + 1) + 8 * i);
                    if ([v33 isKeyboardProxyLayer])
                    {
                      v34 = [v33 keyboardOwner];
                      v35 = BSEqualObjects();

                      if (v35)
                      {

                        WeakRetained = v109;
                        v14 = v103;
                        v18 = v104;
                        v20 = v105;
                        v21 = v100;
                        goto LABEL_29;
                      }
                    }
                  }

                  v30 = [v28 countByEnumeratingWithState:&v111 objects:v123 count:16];
                  if (v30)
                  {
                    continue;
                  }

                  break;
                }
              }

              WeakRetained = v109;
              v18 = v104;
              v23 = v99;
              v21 = v100;
              v24 = v98;
            }

            ++v25;
          }

          while (v25 != v23);
          v23 = [v21 countByEnumeratingWithState:&v115 objects:v124 count:16];
          v20 = 0;
          v14 = v103;
        }

        while (v23);
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      if (![v14 length])
      {
        v20 = 0;
        goto LABEL_34;
      }

      v21 = [MEMORY[0x277D0AAD8] sharedInstance];
      v20 = [v21 sceneWithIdentifier:v14];
    }

LABEL_29:

    if (v20)
    {
LABEL_30:
      v36 = [v18 existingSceneHandleForScene:v20];
      v37 = [v18 externalForegroundApplicationSceneHandles];
      v38 = [v37 containsObject:v36];

      v101 = v36;
      if (v38)
      {
        v39 = 1;
      }

      else
      {
        v40 = [v36 sceneIfExists];
        v41 = [v40 workspaceIdentifier];

        if (v41)
        {
          v42 = [v36 scene];
          v43 = [v42 settings];
          v39 = [v43 isForeground];
        }

        else
        {
          v39 = 0;
        }
      }

      v45 = [v20 clientProcess];
      if ([v45 isApplicationProcess])
      {
        v46 = +[SBApplicationController sharedInstance];
        v47 = [v45 bundleIdentifier];
        v106 = [v46 applicationWithBundleIdentifier:v47];
      }

      else
      {
        v106 = 0;
      }

      v48 = [v20 uiPresentationManager];
      v49 = [v48 defaultPresentationContext];
      v50 = [v49 presentedLayerTypes];

      if ((v50 & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v51 = 0;
      }

      else
      {
        v51 = v39;
      }

      if (v51 == 1)
      {
        v52 = SBLogMedusaKeyboard();
        v44 = 1;
        WeakRetained = v109;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = _SBFLoggingMethodProem();
          *buf = 138543362;
          v120 = v53;
          _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_INFO, "%{public}@ keyboardIsForMedusa is YES because the scene is foreground and can't present the keyboard itself", buf, 0xCu);
        }

        v110 = 1;
LABEL_60:

LABEL_61:
        v63 = +[SBWorkspace mainWorkspace];
        v64 = [v63 pipCoordinator];
        v65 = [v64 isPresentingPictureInPictureRequiringMedusaKeyboard];

        if (v65)
        {
          v66 = SBLogMedusaKeyboard();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = _SBFLoggingMethodProem();
            *buf = 138543362;
            v120 = v67;
            _os_log_impl(&dword_21ED4E000, v66, OS_LOG_TYPE_INFO, "%{public}@ pipRequiresMedusaKeyboard is YES so keyboardIsForMedusa is YES", buf, 0xCu);
          }

          v44 = 1;
          v110 = 1;
        }

        v107 = v20;
        if (v16)
        {
          v68 = [SBApp systemUIScenesCoordinator];
          v69 = [v68 overlayUISceneController];
          v70 = [v69 sceneFromIdentityToken:v16];

          if (v70)
          {
            v71 = SBLogMedusaKeyboard();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = _SBFLoggingMethodProem();
              *buf = 138543362;
              v120 = v72;
              _os_log_impl(&dword_21ED4E000, v71, OS_LOG_TYPE_INFO, "%{public}@ host is OverlayUI scene so keyboardIsForMedusa is YES", buf, 0xCu);
            }

            v44 = 1;
            v110 = 1;
          }

          v73 = [v68 momentsUISceneController];
          v74 = [v73 sceneFromIdentityToken:v16];

          if (v74)
          {
            v75 = [v74 uiSettings];
            v76 = [v75 enhancedWindowingEnabled];

            if (v76)
            {
              v77 = SBLogMedusaKeyboard();
              if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
              {
                v78 = _SBFLoggingMethodProem();
                *buf = 138543362;
                v120 = v78;
                _os_log_impl(&dword_21ED4E000, v77, OS_LOG_TYPE_INFO, "%{public}@ host is Moments UI scene so keyboardIsForMedusa is YES", buf, 0xCu);
              }

              v44 = 1;
              v110 = 1;
            }
          }
        }

        v79 = [SBApp windowSceneManager];
        v80 = [v79 windowSceneForDisplayIdentity:v108];

        v81 = [WeakRetained switcherController];
        v82 = [v16 stringRepresentation];
        v83 = [v81 windowManagementContext];
        if ([v83 baseStyle]&& v82)
        {
          v84 = [SBApp remoteTransientOverlaySessionManager];
          v85 = [v84 hasActiveSessionWithSceneIdentityTokenString:v82 options:0];

          if (!v85)
          {
            goto LABEL_85;
          }

          v86 = [v80 transientOverlayPresenter];
          v87 = [v86 isTopmostPresentationFromSceneWithIdentityTokenString:v82];

          if ((v87 & 1) != 0 || [v81 unlockedEnvironmentMode] != 3)
          {
            goto LABEL_85;
          }

          v83 = SBLogMedusaKeyboard();
          v44 = 1;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
          {
            v88 = _SBFLoggingMethodProem();
            *buf = 138543362;
            v120 = v88;
            _os_log_impl(&dword_21ED4E000, v83, OS_LOG_TYPE_INFO, "%{public}@ host is embedded remote transient overlay scene so keyboardIsForMedusa is YES", buf, 0xCu);
          }

          v110 = 1;
        }

LABEL_85:
        if (!self->_medusaHostedKeyboardWindow)
        {
          v89 = [[SBMedusaHostedKeyboardWindow alloc] initWithWindowScene:v80 keyboardScene:v6];
          medusaHostedKeyboardWindow = self->_medusaHostedKeyboardWindow;
          self->_medusaHostedKeyboardWindow = &v89->super.super.super;
        }

        v91 = SBLogMedusaKeyboard();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          v92 = _SBFLoggingMethodProem();
          v93 = v92;
          v94 = "HIDING";
          if (v44)
          {
            v94 = "SHOWING";
          }

          *buf = 138543618;
          v120 = v92;
          v121 = 2082;
          v122 = v94;
          _os_log_impl(&dword_21ED4E000, v91, OS_LOG_TYPE_INFO, "%{public}@ %{public}s the medusa keyboard window", buf, 0x16u);
        }

        [(UIWindow *)self->_medusaHostedKeyboardWindow setHidden:!v44];
        v95 = +[SBMainSwitcherControllerCoordinator sharedInstance];
        v96 = v95;
        if (!v44)
        {
          [v95 noteKeyboardIsNotForMedusa];
          v97 = v107;
        }

        else
        {
          v97 = v107;
          [v95 noteKeyboardIsForMedusaWithOwningScene:v107];
        }

        if (self->_isUsingMedusaHostedKeyboardWindow != v44)
        {
          self->_isUsingMedusaHostedKeyboardWindow = v44;
          [(SBMedusaHostedKeyboardWindowController *)self _doObserverCalloutWithBlock:&__block_literal_global_22];
        }

        if (v102)
        {
          *v102 = v110;
        }

        v9 = v108;
        WeakRetained = v109;
        goto LABEL_99;
      }

      v54 = FBSystemAppBundleID();
      v55 = [v14 isEqualToString:v54];

      WeakRetained = v109;
      if (v55)
      {
        v52 = SBLogMedusaKeyboard();
        v110 = 1;
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v56 = _SBFLoggingMethodProem();
          *buf = 138543362;
          v120 = v56;
          _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_INFO, "%{public}@ preferredHostIdentifier is SpringBoard so keyboardIsForMedusa is NO", buf, 0xCu);
        }

        v44 = 0;
        goto LABEL_60;
      }

      v57 = [v109 switcherController];
      v58 = [v57 windowManagementContext];
      if ([v58 isChamoisOrFlexibleWindowing])
      {
        v59 = [v20 uiSettings];
        if ([v59 enhancedWindowingEnabled])
        {
          v60 = [v106 supportsChamoisSceneResizing];

          WeakRetained = v109;
          if (v60)
          {
            v52 = SBLogMedusaKeyboard();
            v44 = 1;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
            {
              v61 = _SBFLoggingMethodProem();
              *buf = 138543362;
              v120 = v61;
              _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_INFO, "%{public}@ Chamois or FlexibleWindowing window UI is enabled so keyboardIsForMedusa is YES", buf, 0xCu);
            }

            goto LABEL_60;
          }

LABEL_57:
          v52 = SBLogMedusaKeyboard();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v62 = _SBFLoggingMethodProem();
            *buf = 138543362;
            v120 = v62;
            _os_log_impl(&dword_21ED4E000, v52, OS_LOG_TYPE_INFO, "%{public}@ preferredHostIdentifier's scene can host keyboard itself so keyboardIsForMedusa is NO", buf, 0xCu);
          }

          v44 = 0;
          v110 = 0;
          goto LABEL_60;
        }

        WeakRetained = v109;
      }

      goto LABEL_57;
    }

LABEL_34:
    v44 = 0;
    goto LABEL_61;
  }

LABEL_100:
}

void __96__SBMedusaHostedKeyboardWindowController_updateMedusaHostedKeyboardWindowForScene_isForeground___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 usingMedusaHostedKeyboardWindowDidChange];
  }
}

- (void)addObserver:(id)a3
{
  v8 = a3;
  BSDispatchQueueAssertMain();
  v4 = v8;
  if (v8)
  {
    observers = self->_observers;
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
  v5 = a3;
  BSDispatchQueueAssertMain();
  v4 = v5;
  if (v5)
  {
    [(NSHashTable *)self->_observers removeObject:v5];
    v4 = v5;
  }
}

- (void)_doObserverCalloutWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_observers copy];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [v6 previousSettings];
  v9 = [v6 transitionContext];

  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    v10 = [v14 settings];
    v11 = [v10 isForeground];

    if (v11)
    {
      v12 = objc_alloc_init(SBKeyboardClientSettingObserverContext);
      [(SBKeyboardClientSettingObserverContext *)v12 setScene:v14];
      [(SBKeyboardClientSettingObserverContext *)v12 setOldClientSettings:v8];
      [(SBCameraHardwareButton *)v12 setDispatchingRuleAssertion:v9];
      v13 = [(SBMedusaHostedKeyboardWindowController *)self _keyboardLayersClientSettingsDiffInspector];
      [v7 evaluateWithInspector:v13 context:v12];
    }
  }
}

- (void)scene:(id)a3 didCompleteUpdateWithContext:(id)a4 error:(id)a5
{
  v6 = a3;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    v7 = [v6 identifier];
    v8 = [v7 isEqualToString:*MEMORY[0x277D22AC8]];

    if (v8)
    {
      v9 = [v6 settings];
      v10 = [v9 isForeground];

      v11 = v10;
      [(SBMedusaHostedKeyboardWindowController *)self updateMedusaHostedKeyboardWindowForScene:v6 isForeground:&v11];
    }
  }
}

uint64_t __84__SBMedusaHostedKeyboardWindowController__keyboardLayersClientSettingsDiffInspector__block_invoke_5_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  return [a2 keyboardLayersDidChange:v3];
}

@end
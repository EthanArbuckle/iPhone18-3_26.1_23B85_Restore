@interface SBMedusaHostedKeyboardWindowController
- (BOOL)isKeyboardVisibleForSpringBoard;
- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)identity;
- (SBMedusaHostedKeyboardWindowController)initWithWindowScene:(id)scene;
- (id)_keyboardLayersClientSettingsDiffInspector;
- (id)newMedusaHostedKeyboardWindowLevelAssertionWithPriority:(unint64_t)priority windowLevel:(double)level;
- (void)_doObserverCalloutWithBlock:(id)block;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)observer;
- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)updateMedusaHostedKeyboardWindow;
- (void)updateMedusaHostedKeyboardWindowForScene:(id)scene isForeground:(BOOL *)foreground;
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
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:*MEMORY[0x277D22AC8]];

    v4 = v5;
    if (v5)
    {
      [(SBMedusaHostedKeyboardWindowController *)self updateMedusaHostedKeyboardWindowForScene:v5 isForeground:0];
      v4 = v5;
    }
  }
}

- (SBMedusaHostedKeyboardWindowController)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = SBMedusaHostedKeyboardWindowController;
  v5 = [(SBMedusaHostedKeyboardWindowController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_windowScene, sceneCopy);
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

- (id)newMedusaHostedKeyboardWindowLevelAssertionWithPriority:(unint64_t)priority windowLevel:(double)level
{
  if ([MEMORY[0x277D75658] usesInputSystemUI])
  {
    return 0;
  }

  medusaHostedKeyboardWindow = self->_medusaHostedKeyboardWindow;

  return [(UIWindow *)medusaHostedKeyboardWindow newWindowLevelAssertionWithPriority:priority windowLevel:level];
}

- (BOOL)isKeyboardVisibleForSpringBoard
{
  if (![MEMORY[0x277D75658] usesInputSystemUI])
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    keyboardFocusController = [mEMORY[0x277D0AAD8] sceneWithIdentifier:*MEMORY[0x277D22AC8]];
    clientSettings = [keyboardFocusController clientSettings];
    preferredSceneHostIdentifier = [clientSettings preferredSceneHostIdentifier];

    clientSettings2 = [keyboardFocusController clientSettings];
    preferredSceneHostIdentity = [clientSettings2 preferredSceneHostIdentity];

    if (preferredSceneHostIdentity)
    {
      v10 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:preferredSceneHostIdentity];
    }

    else
    {
      if (![preferredSceneHostIdentifier length])
      {
        inputUISceneController = 0;
        goto LABEL_8;
      }

      v10 = [mEMORY[0x277D0AAD8] sceneWithIdentifier:preferredSceneHostIdentifier];
    }

    inputUISceneController = v10;
LABEL_8:
    clientProcess = [inputUISceneController clientProcess];
    isCurrentProcess = [clientProcess isCurrentProcess];

    goto LABEL_9;
  }

  mEMORY[0x277D0AAD8] = +[SBWorkspace mainWorkspace];
  keyboardFocusController = [mEMORY[0x277D0AAD8] keyboardFocusController];
  inputUISceneController = [keyboardFocusController inputUISceneController];
  isCurrentProcess = [inputUISceneController isVisibleForSpringBoard];
LABEL_9:

  return isCurrentProcess;
}

- (BOOL)shouldKeyboardBeWindowSizedForHostWithIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v5 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:identityCopy];

    if (v5)
    {
      clientProcess = [v5 clientProcess];
      if ([clientProcess isApplicationProcess])
      {
        v7 = +[SBApplicationController sharedInstance];
        bundleIdentifier = [clientProcess bundleIdentifier];
        v9 = [v7 applicationWithBundleIdentifier:bundleIdentifier];

        uiSettings = [v5 uiSettings];
        if ([uiSettings enhancedWindowingEnabled])
        {
          supportsChamoisSceneResizing = [v9 supportsChamoisSceneResizing];

          v12 = supportsChamoisSceneResizing - 1;
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

- (void)updateMedusaHostedKeyboardWindowForScene:(id)scene isForeground:(BOOL *)foreground
{
  v125 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    settings = [sceneCopy settings];
    sb_displayIdentityForSceneManagers = [settings sb_displayIdentityForSceneManagers];

    _fbsDisplayIdentity = [WeakRetained _fbsDisplayIdentity];
    v11 = [sb_displayIdentityForSceneManagers isEqual:_fbsDisplayIdentity];

    if (!v11)
    {
LABEL_99:

      goto LABEL_100;
    }

    settings2 = [sceneCopy settings];
    isForeground = [settings2 isForeground];

    clientSettings = [sceneCopy clientSettings];
    preferredSceneHostIdentifier = [clientSettings preferredSceneHostIdentifier];

    clientSettings2 = [sceneCopy clientSettings];
    preferredSceneHostIdentity = [clientSettings2 preferredSceneHostIdentity];

    v17 = +[SBSceneManagerCoordinator sharedInstance];
    v18 = [v17 sceneManagerForDisplayIdentity:sb_displayIdentityForSceneManagers];

    v108 = sb_displayIdentityForSceneManagers;
    v109 = WeakRetained;
    foregroundCopy = foreground;
    v103 = preferredSceneHostIdentifier;
    v104 = v18;
    if (preferredSceneHostIdentity)
    {
      mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
      v20 = [mEMORY[0x277D0AAD8] sceneFromIdentityToken:preferredSceneHostIdentity];

      if (v20)
      {
        goto LABEL_30;
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      externalForegroundApplicationSceneHandles = [v18 externalForegroundApplicationSceneHandles];
      v22 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v115 objects:v124 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v116;
        v100 = externalForegroundApplicationSceneHandles;
        v98 = *v116;
        do
        {
          v25 = 0;
          v99 = v23;
          do
          {
            if (*v116 != v24)
            {
              objc_enumerationMutation(externalForegroundApplicationSceneHandles);
            }

            sceneIfExists = [*(*(&v115 + 1) + 8 * v25) sceneIfExists];
            if (sceneIfExists)
            {
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v105 = sceneIfExists;
              clientSettings3 = [sceneIfExists clientSettings];
              layers = [clientSettings3 layers];

              v29 = [layers countByEnumeratingWithState:&v111 objects:v123 count:16];
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
                      objc_enumerationMutation(layers);
                    }

                    v33 = *(*(&v111 + 1) + 8 * i);
                    if ([v33 isKeyboardProxyLayer])
                    {
                      keyboardOwner = [v33 keyboardOwner];
                      v35 = BSEqualObjects();

                      if (v35)
                      {

                        WeakRetained = v109;
                        preferredSceneHostIdentifier = v103;
                        v18 = v104;
                        v20 = v105;
                        externalForegroundApplicationSceneHandles = v100;
                        goto LABEL_29;
                      }
                    }
                  }

                  v30 = [layers countByEnumeratingWithState:&v111 objects:v123 count:16];
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
              externalForegroundApplicationSceneHandles = v100;
              v24 = v98;
            }

            ++v25;
          }

          while (v25 != v23);
          v23 = [externalForegroundApplicationSceneHandles countByEnumeratingWithState:&v115 objects:v124 count:16];
          v20 = 0;
          preferredSceneHostIdentifier = v103;
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
      if (![preferredSceneHostIdentifier length])
      {
        v20 = 0;
        goto LABEL_34;
      }

      externalForegroundApplicationSceneHandles = [MEMORY[0x277D0AAD8] sharedInstance];
      v20 = [externalForegroundApplicationSceneHandles sceneWithIdentifier:preferredSceneHostIdentifier];
    }

LABEL_29:

    if (v20)
    {
LABEL_30:
      v36 = [v18 existingSceneHandleForScene:v20];
      externalForegroundApplicationSceneHandles2 = [v18 externalForegroundApplicationSceneHandles];
      v38 = [externalForegroundApplicationSceneHandles2 containsObject:v36];

      v101 = v36;
      if (v38)
      {
        isForeground2 = 1;
      }

      else
      {
        sceneIfExists2 = [v36 sceneIfExists];
        workspaceIdentifier = [sceneIfExists2 workspaceIdentifier];

        if (workspaceIdentifier)
        {
          scene = [v36 scene];
          settings3 = [scene settings];
          isForeground2 = [settings3 isForeground];
        }

        else
        {
          isForeground2 = 0;
        }
      }

      clientProcess = [v20 clientProcess];
      if ([clientProcess isApplicationProcess])
      {
        v46 = +[SBApplicationController sharedInstance];
        bundleIdentifier = [clientProcess bundleIdentifier];
        v106 = [v46 applicationWithBundleIdentifier:bundleIdentifier];
      }

      else
      {
        v106 = 0;
      }

      uiPresentationManager = [v20 uiPresentationManager];
      defaultPresentationContext = [uiPresentationManager defaultPresentationContext];
      presentedLayerTypes = [defaultPresentationContext presentedLayerTypes];

      if ((presentedLayerTypes & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        v51 = 0;
      }

      else
      {
        v51 = isForeground2;
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

        isForeground = 1;
LABEL_60:

LABEL_61:
        v63 = +[SBWorkspace mainWorkspace];
        pipCoordinator = [v63 pipCoordinator];
        isPresentingPictureInPictureRequiringMedusaKeyboard = [pipCoordinator isPresentingPictureInPictureRequiringMedusaKeyboard];

        if (isPresentingPictureInPictureRequiringMedusaKeyboard)
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
          isForeground = 1;
        }

        v107 = v20;
        if (preferredSceneHostIdentity)
        {
          systemUIScenesCoordinator = [SBApp systemUIScenesCoordinator];
          overlayUISceneController = [systemUIScenesCoordinator overlayUISceneController];
          v70 = [overlayUISceneController sceneFromIdentityToken:preferredSceneHostIdentity];

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
            isForeground = 1;
          }

          momentsUISceneController = [systemUIScenesCoordinator momentsUISceneController];
          v74 = [momentsUISceneController sceneFromIdentityToken:preferredSceneHostIdentity];

          if (v74)
          {
            uiSettings = [v74 uiSettings];
            enhancedWindowingEnabled = [uiSettings enhancedWindowingEnabled];

            if (enhancedWindowingEnabled)
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
              isForeground = 1;
            }
          }
        }

        windowSceneManager = [SBApp windowSceneManager];
        v80 = [windowSceneManager windowSceneForDisplayIdentity:v108];

        switcherController = [WeakRetained switcherController];
        stringRepresentation = [preferredSceneHostIdentity stringRepresentation];
        windowManagementContext = [switcherController windowManagementContext];
        if ([windowManagementContext baseStyle]&& stringRepresentation)
        {
          remoteTransientOverlaySessionManager = [SBApp remoteTransientOverlaySessionManager];
          v85 = [remoteTransientOverlaySessionManager hasActiveSessionWithSceneIdentityTokenString:stringRepresentation options:0];

          if (!v85)
          {
            goto LABEL_85;
          }

          transientOverlayPresenter = [v80 transientOverlayPresenter];
          v87 = [transientOverlayPresenter isTopmostPresentationFromSceneWithIdentityTokenString:stringRepresentation];

          if ((v87 & 1) != 0 || [switcherController unlockedEnvironmentMode] != 3)
          {
            goto LABEL_85;
          }

          windowManagementContext = SBLogMedusaKeyboard();
          v44 = 1;
          if (os_log_type_enabled(windowManagementContext, OS_LOG_TYPE_INFO))
          {
            v88 = _SBFLoggingMethodProem();
            *buf = 138543362;
            v120 = v88;
            _os_log_impl(&dword_21ED4E000, windowManagementContext, OS_LOG_TYPE_INFO, "%{public}@ host is embedded remote transient overlay scene so keyboardIsForMedusa is YES", buf, 0xCu);
          }

          isForeground = 1;
        }

LABEL_85:
        if (!self->_medusaHostedKeyboardWindow)
        {
          v89 = [[SBMedusaHostedKeyboardWindow alloc] initWithWindowScene:v80 keyboardScene:sceneCopy];
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

        if (foregroundCopy)
        {
          *foregroundCopy = isForeground;
        }

        sb_displayIdentityForSceneManagers = v108;
        WeakRetained = v109;
        goto LABEL_99;
      }

      v54 = FBSystemAppBundleID();
      v55 = [preferredSceneHostIdentifier isEqualToString:v54];

      WeakRetained = v109;
      if (v55)
      {
        v52 = SBLogMedusaKeyboard();
        isForeground = 1;
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

      switcherController2 = [v109 switcherController];
      windowManagementContext2 = [switcherController2 windowManagementContext];
      if ([windowManagementContext2 isChamoisOrFlexibleWindowing])
      {
        uiSettings2 = [v20 uiSettings];
        if ([uiSettings2 enhancedWindowingEnabled])
        {
          supportsChamoisSceneResizing = [v106 supportsChamoisSceneResizing];

          WeakRetained = v109;
          if (supportsChamoisSceneResizing)
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
          isForeground = 0;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = self->_observers;
      self->_observers = weakObjectsHashTable;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  BSDispatchQueueAssertMain();
  v4 = observerCopy;
  if (observerCopy)
  {
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    v4 = observerCopy;
  }
}

- (void)_doObserverCalloutWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
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

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  previousSettings = [settingsCopy previousSettings];
  transitionContext = [settingsCopy transitionContext];

  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    settings = [sceneCopy settings];
    isForeground = [settings isForeground];

    if (isForeground)
    {
      v12 = objc_alloc_init(SBKeyboardClientSettingObserverContext);
      [(SBKeyboardClientSettingObserverContext *)v12 setScene:sceneCopy];
      [(SBKeyboardClientSettingObserverContext *)v12 setOldClientSettings:previousSettings];
      [(SBCameraHardwareButton *)v12 setDispatchingRuleAssertion:transitionContext];
      _keyboardLayersClientSettingsDiffInspector = [(SBMedusaHostedKeyboardWindowController *)self _keyboardLayersClientSettingsDiffInspector];
      [settingsDiff evaluateWithInspector:_keyboardLayersClientSettingsDiffInspector context:v12];
    }
  }
}

- (void)scene:(id)scene didCompleteUpdateWithContext:(id)context error:(id)error
{
  sceneCopy = scene;
  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    identifier = [sceneCopy identifier];
    v8 = [identifier isEqualToString:*MEMORY[0x277D22AC8]];

    if (v8)
    {
      settings = [sceneCopy settings];
      isForeground = [settings isForeground];

      v11 = isForeground;
      [(SBMedusaHostedKeyboardWindowController *)self updateMedusaHostedKeyboardWindowForScene:sceneCopy isForeground:&v11];
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
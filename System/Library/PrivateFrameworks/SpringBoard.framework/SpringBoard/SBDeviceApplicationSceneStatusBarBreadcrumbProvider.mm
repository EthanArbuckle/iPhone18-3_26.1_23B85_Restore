@interface SBDeviceApplicationSceneStatusBarBreadcrumbProvider
+ (BOOL)_shouldAddBreadcrumbToActivatingSceneEntity:(id)a3 sceneHandle:(id)a4 withTransitionContext:(id)a5;
+ (id)_breadcrumbBundleIdForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4;
+ (id)_breadcrumbSceneIdForAppWithBundleID:(id)a3 activatingSceneEntity:(id)a4 withTransitionContext:(id)a5;
+ (id)_breadcrumbTitleForAppWithBundleID:(id)a3 sceneHandle:(id)a4 activatingSceneEntity:(id)a5 withTransitionContext:(id)a6;
+ (id)_destinationContextsForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4;
- (BOOL)_showTransientOverlayInPlace;
- (BOOL)activateBreadcrumbIfPossible;
- (BOOL)hasBreadcrumb;
- (NSString)breadcrumbTitle;
- (SBDeviceApplicationSceneStatusBarBreadcrumbProvider)initWithSceneHandle:(id)a3;
- (id)_breadcrumbNavigationActionContextForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_openStrategyForAppLinkState:(id)a3;
- (void)_activateBreadcrumbApplication:(id)a3 withSceneIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayConfiguration:(id)a6;
- (void)_handleBreadcrumbAction;
- (void)_installedApplicationsDidChange:(id)a3;
- (void)_presentAssistantFromBreadcrumb;
- (void)_presentSpotlightFromBreadcrumbInWindowScene:(id)a3;
- (void)_setCurrentBreadcrumbActionContext:(id)a3;
- (void)addObserver:(id)a3;
- (void)captureContextForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4;
- (void)noteDidUpdateDisplayProperties;
- (void)prepareForReuse;
- (void)removeObserver:(id)a3;
- (void)sceneHandle:(id)a3 didChangeEffectiveForegroundness:(BOOL)a4;
@end

@implementation SBDeviceApplicationSceneStatusBarBreadcrumbProvider

- (BOOL)hasBreadcrumb
{
  currentBreadcrumbActionContext = self->_currentBreadcrumbActionContext;
  if (currentBreadcrumbActionContext && currentBreadcrumbActionContext->_didCaptureContext && currentBreadcrumbActionContext->_breadcrumbAppBundleID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
    v4 = [WeakRetained application];
    v5 = [v4 bundleIdentifier];
    v6 = BSEqualStrings() ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (SBDeviceApplicationSceneStatusBarBreadcrumbProvider)initWithSceneHandle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBDeviceApplicationSceneStatusBarBreadcrumbProvider;
  v5 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneHandle, v4);
    [v4 addObserver:v6];
  }

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    v9 = v4;
    if (!observers)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    v8 = [(NSHashTable *)observers containsObject:v9];
    v4 = v9;
    if (!v8)
    {
      [(NSHashTable *)self->_observers addObject:v9];
      v4 = v9;
    }
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)captureContextForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4
{
  v23 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  v8 = [WeakRetained sceneIdentifier];
  v9 = [objc_opt_class() _breadcrumbBundleIdForActivatingSceneEntity:v23 withTransitionContext:v6];
  v10 = [v23 application];
  v11 = [v10 bundleIdentifier];
  v12 = [v9 isEqualToString:v11];

  v13 = [v23 layoutRole];
  if (v13 != 1 && (SBLayoutRoleIsValidForSplitView(v13) & v12) == 1)
  {
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _setCurrentBreadcrumbActionContext:0];
  }

  if ([objc_opt_class() _shouldAddBreadcrumbToActivatingSceneEntity:v23 sceneHandle:WeakRetained withTransitionContext:v6])
  {
    v14 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _breadcrumbNavigationActionContextForActivatingSceneEntity:v23 withTransitionContext:v6];
    v15 = [objc_opt_class() _breadcrumbTitleForAppWithBundleID:v9 sceneHandle:WeakRetained activatingSceneEntity:v23 withTransitionContext:v6];
    v16 = *(v14 + 64);
    *(v14 + 64) = v15;

    v17 = [v6 request];
    v18 = [v17 displayConfiguration];
    v19 = *(v14 + 72);
    *(v14 + 72) = v18;

    v20 = [SBApp windowSceneManager];
    v21 = [*(v14 + 72) identity];
    v22 = [v20 windowSceneForDisplayIdentity:v21];
    objc_storeWeak((v14 + 80), v22);

    if (v8)
    {
      [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _setCurrentBreadcrumbActionContext:v14];
    }
  }
}

- (NSString)breadcrumbTitle
{
  currentBreadcrumbActionContext = self->_currentBreadcrumbActionContext;
  if (currentBreadcrumbActionContext)
  {
    return currentBreadcrumbActionContext->_breadcrumbTitle;
  }

  else
  {
    return 0;
  }
}

- (BOOL)activateBreadcrumbIfPossible
{
  [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _handleBreadcrumbAction];

  return [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self hasBreadcrumb];
}

- (void)prepareForReuse
{
  [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _setCurrentBreadcrumbActionContext:0];

  [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self noteDidUpdateDisplayProperties];
}

- (void)noteDidUpdateDisplayProperties
{
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__SBDeviceApplicationSceneStatusBarBreadcrumbProvider_noteDidUpdateDisplayProperties__block_invoke;
  v4[3] = &unk_2783AF7C8;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __85__SBDeviceApplicationSceneStatusBarBreadcrumbProvider_noteDidUpdateDisplayProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 statusBarBreadcrumbProviderDidUpdateDisplayProperties:*(a1 + 32)];
  }
}

+ (BOOL)_shouldAddBreadcrumbToActivatingSceneEntity:(id)a3 sceneHandle:(id)a4 withTransitionContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 applicationSceneEntityForLayoutRole:1];
  v11 = [v10 application];
  v67 = [v11 bundleIdentifier];

  v12 = [v8 previousApplicationSceneEntityForLayoutRole:1];
  v13 = [v12 application];
  v14 = [v13 bundleIdentifier];

  v15 = [v8 previousApplicationSceneEntityForLayoutRole:2];
  v16 = [v15 application];
  v66 = [v16 bundleIdentifier];

  v17 = [v9 application];

  v68 = [v17 bundleIdentifier];

  v18 = [v8 request];
  v60 = [v18 source];
  v19 = [v18 originatingProcess];
  v20 = [v19 bundleIdentifier];

  v69 = v14;
  v62 = [v14 length];
  v21 = [v7 BOOLForActivationSetting:44];
  v22 = [v20 isEqualToString:@"com.apple.Spotlight"];
  v64 = [v7 BOOLForActivationSetting:26];
  v23 = objc_opt_class();
  v24 = [v8 previousApplicationSceneEntityForLayoutRole:1];
  v25 = [v24 sceneHandle];
  v26 = SBSafeCast(v23, v25);

  v27 = [v26 forbidsActivationByBreadcrumbAction];
  v28 = [v26 application];
  LOBYTE(v25) = [v28 isSetup];

  if (v25 & 1) != 0 || (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v29 = objc_claimAutoreleasedReturnValue(), [v29 workspaceDefaults], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isBreadcrumbDisabled") | v27, v30, v29, (v31))
  {
    LOBYTE(v21) = 0;
LABEL_4:
    v32 = v67;
LABEL_5:
    v33 = v68;
    v34 = v69;
    goto LABEL_6;
  }

  v32 = v67;
  v34 = v69;
  v33 = v68;
  if (([v67 isEqual:v69] & v22 & v64) == 1)
  {
    LOBYTE(v21) = +[SBHomeScreenReturnToSpotlightPolicy areSpotlightBreadcrumbsEnabled];
    goto LABEL_6;
  }

  if ([v67 isEqual:v68])
  {
    if (!(v21 & 1 | (([v69 isEqual:v68] & 1) == 0)))
    {
      goto LABEL_17;
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  if (![v18 isMainWorkspaceTransitionRequest])
  {
LABEL_17:
    LOBYTE(v21) = 0;
    goto LABEL_6;
  }

  v59 = [v7 BOOLForActivationSetting:42];
  v36 = [v7 BOOLForActivationSetting:40];
  v37 = [v20 isEqualToString:@"com.apple.camera"];
  if (v62)
  {
    v38 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v69];
    v39 = [v38 isHidden];

    v32 = v67;
    if (v39)
    {
      LOBYTE(v21) = 0;
      goto LABEL_5;
    }
  }

  if (v21)
  {
    v33 = v68;
    LOBYTE(v21) = [SBAssistantController shouldBreadcrumbLaunchedApplicationWithBundleIdentifier:v68];
LABEL_23:
    v34 = v69;
    goto LABEL_6;
  }

  v33 = v68;
  if (v60 == 45 || (v36 & v37 & 1) != 0)
  {
    LOBYTE(v21) = 1;
    goto LABEL_23;
  }

  v40 = v59;
  if (v60 == 6)
  {
    v40 = 1;
  }

  v34 = v69;
  if (v40 == 1)
  {
    LOBYTE(v21) = (v36 ^ 1) & ((v62 != 0) | v64);
    goto LABEL_6;
  }

  if ((v60 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    if (v62)
    {
      LOBYTE(v21) = v36 ^ 1;
    }

    else
    {
      LOBYTE(v21) = 0;
    }

    goto LABEL_6;
  }

  LOBYTE(v21) = 0;
  if (v60 <= 0x13 && ((1 << v60) & 0x8A004) != 0)
  {
    v41 = [v7 BOOLForActivationSetting:50];
    v42 = [v7 BOOLForActivationSetting:41];
    v43 = [v7 objectForActivationSetting:5];

    v61 = v42;
    if (v41)
    {
      v44 = [v7 objectForActivationSetting:14];
      v45 = v44;
      if (v62 && v44)
      {
        v46 = [v8 previousApplicationSceneEntityForBundleID:v44];

        if (v46)
        {
          v33 = v68;
LABEL_44:
          if (v64)
          {
            v65 = [v45 isEqual:v33];
            v49 = +[SBHomeScreenReturnToSpotlightPolicy areSpotlightBreadcrumbsEnabled];
            v50 = v61;
            if (v43)
            {
              v50 = 1;
            }

            if (v41 & 1 | !v49)
            {
              v51 = v49;
            }

            else
            {
              v51 = v50;
            }
          }

          else
          {
            v52 = v33;
            v53 = [v69 isEqual:v45];
            v54 = [v66 isEqual:v45];
            v65 = [v45 isEqual:v52];
            v51 = v53 | v54;
          }

          v63 = v51;
          v55 = +[SBApplicationController sharedInstance];
          v56 = [v55 applicationWithBundleIdentifier:v45];
          v57 = [v56 info];
          v58 = [v57 shouldLaunchSuspendedAlways];

          LOBYTE(v21) = v63 & ((v65 | v58) ^ 1);
          goto LABEL_4;
        }

        v48 = v69;

        v45 = v48;
        v33 = v68;
      }

      v47 = v69;
      if (v45)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v47 = v20;
      if (!v42)
      {
        v45 = 0;
        goto LABEL_44;
      }
    }

    v45 = v47;
    goto LABEL_44;
  }

LABEL_6:

  return v21 & 1;
}

- (id)_breadcrumbNavigationActionContextForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SBBreadcrumbActionContext);
  v7->_lastSource = SBSpotlightLastPresentationSource();
  v8 = [objc_opt_class() _breadcrumbBundleIdForActivatingSceneEntity:v5 withTransitionContext:v6];
  breadcrumbAppBundleID = v7->_breadcrumbAppBundleID;
  v7->_breadcrumbAppBundleID = v8;

  v10 = [objc_opt_class() _breadcrumbSceneIdForAppWithBundleID:v7->_breadcrumbAppBundleID activatingSceneEntity:v5 withTransitionContext:v6];
  breadcrumbSceneID = v7->_breadcrumbSceneID;
  v7->_breadcrumbSceneID = v10;

  if ([v5 BOOLForActivationSetting:26])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSString *)v7->_breadcrumbAppBundleID isEqualToString:@"com.apple.springboard.spotlight-placeholder"];
  }

  v7->_wasFromSpotlight = v12;
  if ([v5 BOOLForActivationSetting:44])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSString *)v7->_breadcrumbAppBundleID isEqualToString:@"com.apple.Siri"];
  }

  v7->_wasFromAssistant = v13;
  v14 = [v6 previousApplicationSceneEntityForLayoutRole:2];
  v15 = [v14 application];
  v16 = [v15 bundleIdentifier];
  previousSideBundleId = v7->_previousSideBundleId;
  v7->_previousSideBundleId = v16;

  if (v7->_wasFromSpotlight)
  {
    v18 = 1;
  }

  else if (v7->_wasFromAssistant)
  {
    v18 = 2;
  }

  else if ([(NSString *)v7->_breadcrumbAppBundleID length])
  {
    v18 = 3;
  }

  else
  {
    v18 = 5;
  }

  v7->_analyticsType = v18;
  v25 = *MEMORY[0x277D67610];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v26[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  v21 = MEMORY[0x277D65DD0];
  v22 = v20;
  v23 = [v21 sharedInstance];
  [v23 emitEvent:15 withPayload:v22];

  v7->_didCaptureContext = 1;

  return v7;
}

+ (id)_destinationContextsForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _breadcrumbBundleIdForActivatingSceneEntity:v7 withTransitionContext:v6];
  v9 = [a1 _breadcrumbSceneIdForAppWithBundleID:v8 activatingSceneEntity:v7 withTransitionContext:v6];
  v10 = [v6 previousApplicationSceneEntityForLayoutRole:1];
  v11 = [v10 sceneHandle];

  v12 = [a1 _breadcrumbTitleForAppWithBundleID:v8 sceneHandle:v11 activatingSceneEntity:v7 withTransitionContext:v6];

  v13 = [MEMORY[0x277CBEB38] dictionary];
  if (v9)
  {
    [MEMORY[0x277D75B00] systemNavigationActionContextWithTitle:v12 sceneIdentifier:v9];
  }

  else
  {
    [MEMORY[0x277D75B00] systemNavigationActionContextWithTitle:v12 bundleId:v8];
  }
  v14 = ;
  [v13 setObject:v14 forKeyedSubscript:&unk_2833704D8];

  return v13;
}

+ (id)_breadcrumbTitleForAppWithBundleID:(id)a3 sceneHandle:(id)a4 activatingSceneEntity:(id)a5 withTransitionContext:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = +[SBApplicationController sharedInstance];
  v13 = [v12 applicationWithBundleIdentifier:v9];

  if ([v10 BOOLForActivationSetting:26])
  {
    if (![v10 BOOLForActivationSetting:44])
    {
      goto LABEL_7;
    }

LABEL_5:
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = v15;
    v17 = @"SIRI";
LABEL_8:
    v18 = [v15 localizedStringForKey:v17 value:&stru_283094718 table:@"SpringBoard"];
LABEL_9:

    goto LABEL_10;
  }

  v14 = [v9 isEqualToString:@"com.apple.springboard.spotlight-placeholder"];
  if ([v10 BOOLForActivationSetting:44])
  {
    goto LABEL_5;
  }

  if (v14)
  {
LABEL_7:
    v15 = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = v15;
    v17 = @"SYSTEM_SEARCH_TITLE";
    goto LABEL_8;
  }

  if ([v9 isEqualToString:@"com.apple.webapp"])
  {
    v16 = [a1 _breadcrumbSceneIdForAppWithBundleID:v9 activatingSceneEntity:v10 withTransitionContext:v11];
    v20 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v16];
    v21 = [MEMORY[0x277D75D70] webClipWithIdentifier:v20];
    v18 = [v21 title];

    goto LABEL_9;
  }

  v18 = [v13 displayName];
LABEL_10:

  return v18;
}

+ (id)_breadcrumbBundleIdForActivatingSceneEntity:(id)a3 withTransitionContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 BOOLForActivationSetting:26];
  v8 = [v6 BOOLForActivationSetting:44];

  v9 = [v5 request];
  v10 = [v9 originatingProcess];
  v11 = [v10 bundleIdentifier];

  v12 = [v11 isEqualToString:@"com.apple.camera"];
  if (v8)
  {
    v13 = @"com.apple.Siri";
LABEL_3:
    v14 = v13;
    goto LABEL_9;
  }

  if (v7)
  {
    v14 = @"com.apple.springboard.spotlight-placeholder";
  }

  else
  {
    if (v12)
    {
      v13 = @"com.apple.camera";
      goto LABEL_3;
    }

    v15 = [v5 previousApplicationSceneEntityForLayoutRole:1];
    v16 = [v15 application];
    v14 = [v16 bundleIdentifier];
  }

LABEL_9:

  return v14;
}

+ (id)_breadcrumbSceneIdForAppWithBundleID:(id)a3 activatingSceneEntity:(id)a4 withTransitionContext:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = [v6 previousApplicationSceneEntityForLayoutRole:1];
  v9 = [v8 application];
  v10 = [v9 bundleIdentifier];

  LODWORD(v8) = [v10 isEqualToString:v7];
  if (v8)
  {
    v11 = [v6 previousApplicationSceneEntityForLayoutRole:1];
    v12 = [v11 sceneHandle];
    v13 = [v12 sceneIdentifier];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_setCurrentBreadcrumbActionContext:(id)a3
{
  v5 = a3;
  currentBreadcrumbActionContext = self->_currentBreadcrumbActionContext;
  if (currentBreadcrumbActionContext != v5)
  {
    v11 = v5;
    v7 = currentBreadcrumbActionContext;
    objc_storeStrong(&self->_currentBreadcrumbActionContext, a3);
    v8 = self->_currentBreadcrumbActionContext;
    if (v7)
    {
      if (!v8)
      {
        v9 = [MEMORY[0x277CCAB98] defaultCenter];
        v10 = +[SBApplicationController sharedInstance];
        [v9 removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:v10];
LABEL_7:
      }
    }

    else if (v8)
    {
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = +[SBApplicationController sharedInstance];
      [v9 addObserver:self selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:v10];
      goto LABEL_7;
    }

    v5 = v11;
  }
}

- (void)_installedApplicationsDidChange:(id)a3
{
  v9 = a3;
  currentBreadcrumbActionContext = self->_currentBreadcrumbActionContext;
  if (currentBreadcrumbActionContext)
  {
    v5 = currentBreadcrumbActionContext->_breadcrumbAppBundleID;
    v6 = v5;
    if (v5 && [(NSString *)v5 length])
    {
      v7 = +[SBApplicationController sharedInstance];
      v8 = [v7 applicationWithBundleIdentifier:v6];

      if (!v8)
      {
        [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self prepareForReuse];
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)_handleBreadcrumbAction
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = self->_currentBreadcrumbActionContext;
  v4 = v3;
  if (v3 && v3->_didCaptureContext)
  {
    WeakRetained = objc_loadWeakRetained(&v3->_windowScene);
    v14[0] = *MEMORY[0x277D675D8];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4->_analyticsType];
    v14[1] = *MEMORY[0x277D67458];
    v15[0] = v6;
    v15[1] = &unk_2833704F0;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = MEMORY[0x277D65DD0];
    v9 = v7;
    v10 = [v8 sharedInstance];
    [v10 emitEvent:16 withPayload:v9];

    if (v4->_wasFromAssistant)
    {
      [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _presentAssistantFromBreadcrumb];
    }

    else if (v4->_wasFromSpotlight)
    {
      [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _presentSpotlightFromBreadcrumbInWindowScene:WeakRetained];
    }

    else
    {
      v11 = SBWorkspaceApplicationForIdentifier(v4->_breadcrumbAppBundleID);
      breadcrumbSceneID = v4->_breadcrumbSceneID;
      v13 = [WeakRetained sceneManager];
      [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _activateBreadcrumbApplication:v11 withSceneIdentifier:breadcrumbSceneID sceneHandleProvider:v13 displayConfiguration:v4->_displayConfiguration];
    }
  }
}

- (void)_presentAssistantFromBreadcrumb
{
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v4 = [v3 policyAggregator];
  v5 = [v4 allowsCapability:4];

  if (v5)
  {
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self prepareForReuse];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentAssistantFromBreadcrumb__block_invoke;
    v9[3] = &unk_2783A8C18;
    v9[4] = self;
    v6 = [MEMORY[0x277D0AB18] eventWithName:@"SiriBreadcrumb" handler:v9];
    v7 = +[SBWorkspace mainWorkspace];
    v8 = [v7 eventQueue];
    [v8 executeOrAppendEvent:v6];
  }
}

uint64_t __86__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentAssistantFromBreadcrumb__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D551D8]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  return [v2 activate];
}

- (void)_presentSpotlightFromBreadcrumbInWindowScene:(id)a3
{
  v4 = a3;
  if ([(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _showTransientOverlayInPlace])
  {
    [SBApp toggleSearchOnWindowScene:v4 fromBreadcrumbSource:1 withWillBeginHandler:0 completionHandler:0];
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self prepareForReuse];
  }

  else
  {
    v5 = MEMORY[0x277D0AB18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __100__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentSpotlightFromBreadcrumbInWindowScene___block_invoke;
    v10[3] = &unk_2783A8C18;
    v11 = v4;
    v6 = [v5 eventWithName:@"presentSpotlight" handler:v10];
    v7 = +[SBWorkspace mainWorkspace];
    v8 = [v7 eventQueue];
    [v8 executeOrAppendEvent:v6];

    v9 = +[SBWorkspace mainWorkspace];
    [v9 requestTransitionWithBuilder:&__block_literal_global_59];
  }
}

void __100__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentSpotlightFromBreadcrumbInWindowScene___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) homeScreenController];
  v2 = [v1 iconManager];

  [v2 presentSpotlightFromSource:5 animated:0 completionHandler:0];
}

void __100__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentSpotlightFromBreadcrumbInWindowScene___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setEventLabel:@"SpotlightBreadcrumb"];
  [v2 setSource:15];
  [v2 modifyApplicationContext:&__block_literal_global_78];
}

void __100__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentSpotlightFromBreadcrumbInWindowScene___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  [v2 setActivatingEntity:v3];
}

- (BOOL)_showTransientOverlayInPlace
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (int64_t)_openStrategyForAppLinkState:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277D66E88]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_activateBreadcrumbApplication:(id)a3 withSceneIdentifier:(id)a4 sceneHandleProvider:(id)a5 displayConfiguration:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[(SBWorkspace *)SBMainWorkspace];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __147__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__activateBreadcrumbApplication_withSceneIdentifier_sceneHandleProvider_displayConfiguration___block_invoke;
  v18[3] = &unk_2783AF818;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v9;
  [v13 requestTransitionWithOptions:0 displayConfiguration:v14 builder:v18];
}

void __147__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__activateBreadcrumbApplication_withSceneIdentifier_sceneHandleProvider_displayConfiguration___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [v3 setSource:15];
  v4 = [a1[4] bundleIdentifier];
  [v3 setEventLabelWithFormat:@"ActivateFromBreadcrumb: %@", v4];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __147__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__activateBreadcrumbApplication_withSceneIdentifier_sceneHandleProvider_displayConfiguration___block_invoke_2;
  v11[3] = &unk_2783AF7F0;
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v12 = v10;
  v13 = v9;
  [v3 modifyApplicationContext:v11];
}

void __147__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__activateBreadcrumbApplication_withSceneIdentifier_sceneHandleProvider_displayConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SBDeviceApplicationSceneEntity alloc];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = [*(a1 + 56) identity];
  v9 = [(SBDeviceApplicationSceneEntity *)v4 initWithApplication:v5 uniqueIdentifier:v6 sceneHandleProvider:v7 displayIdentity:v8];

  [(SBWorkspaceEntity *)v9 setFlag:1 forActivationSetting:48];
  [v3 setActivatingEntity:v9];
}

- (void)sceneHandle:(id)a3 didChangeEffectiveForegroundness:(BOOL)a4
{
  if (!a4)
  {
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self prepareForReuse];
  }
}

- (id)succinctDescription
{
  v2 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self breadcrumbTitle];
  [v3 appendString:v4 withName:@"breadcrumbTitle" skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self succinctDescriptionBuilder];
  v5 = self->_currentBreadcrumbActionContext;
  if (v5 && [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self hasBreadcrumb])
  {
    v6 = v5->_breadcrumbAppBundleID;
  }

  else
  {
    v6 = 0;
  }

  [v4 appendString:v6 withName:@"breadcrumbAppBundleID" skipIfEmpty:1];

  return v4;
}

@end
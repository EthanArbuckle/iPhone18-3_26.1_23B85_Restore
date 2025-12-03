@interface SBDeviceApplicationSceneStatusBarBreadcrumbProvider
+ (BOOL)_shouldAddBreadcrumbToActivatingSceneEntity:(id)entity sceneHandle:(id)handle withTransitionContext:(id)context;
+ (id)_breadcrumbBundleIdForActivatingSceneEntity:(id)entity withTransitionContext:(id)context;
+ (id)_breadcrumbSceneIdForAppWithBundleID:(id)d activatingSceneEntity:(id)entity withTransitionContext:(id)context;
+ (id)_breadcrumbTitleForAppWithBundleID:(id)d sceneHandle:(id)handle activatingSceneEntity:(id)entity withTransitionContext:(id)context;
+ (id)_destinationContextsForActivatingSceneEntity:(id)entity withTransitionContext:(id)context;
- (BOOL)_showTransientOverlayInPlace;
- (BOOL)activateBreadcrumbIfPossible;
- (BOOL)hasBreadcrumb;
- (NSString)breadcrumbTitle;
- (SBDeviceApplicationSceneStatusBarBreadcrumbProvider)initWithSceneHandle:(id)handle;
- (id)_breadcrumbNavigationActionContextForActivatingSceneEntity:(id)entity withTransitionContext:(id)context;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)_openStrategyForAppLinkState:(id)state;
- (void)_activateBreadcrumbApplication:(id)application withSceneIdentifier:(id)identifier sceneHandleProvider:(id)provider displayConfiguration:(id)configuration;
- (void)_handleBreadcrumbAction;
- (void)_installedApplicationsDidChange:(id)change;
- (void)_presentAssistantFromBreadcrumb;
- (void)_presentSpotlightFromBreadcrumbInWindowScene:(id)scene;
- (void)_setCurrentBreadcrumbActionContext:(id)context;
- (void)addObserver:(id)observer;
- (void)captureContextForActivatingSceneEntity:(id)entity withTransitionContext:(id)context;
- (void)noteDidUpdateDisplayProperties;
- (void)prepareForReuse;
- (void)removeObserver:(id)observer;
- (void)sceneHandle:(id)handle didChangeEffectiveForegroundness:(BOOL)foregroundness;
@end

@implementation SBDeviceApplicationSceneStatusBarBreadcrumbProvider

- (BOOL)hasBreadcrumb
{
  currentBreadcrumbActionContext = self->_currentBreadcrumbActionContext;
  if (currentBreadcrumbActionContext && currentBreadcrumbActionContext->_didCaptureContext && currentBreadcrumbActionContext->_breadcrumbAppBundleID)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
    application = [WeakRetained application];
    bundleIdentifier = [application bundleIdentifier];
    v6 = BSEqualStrings() ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (SBDeviceApplicationSceneStatusBarBreadcrumbProvider)initWithSceneHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = SBDeviceApplicationSceneStatusBarBreadcrumbProvider;
  v5 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sceneHandle, handleCopy);
    [handleCopy addObserver:v6];
  }

  return v6;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    v9 = observerCopy;
    if (!observers)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:1];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    v8 = [(NSHashTable *)observers containsObject:v9];
    observerCopy = v9;
    if (!v8)
    {
      [(NSHashTable *)self->_observers addObject:v9];
      observerCopy = v9;
    }
  }
}

- (void)removeObserver:(id)observer
{
  if (observer)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)captureContextForActivatingSceneEntity:(id)entity withTransitionContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  WeakRetained = objc_loadWeakRetained(&self->_sceneHandle);
  sceneIdentifier = [WeakRetained sceneIdentifier];
  v9 = [objc_opt_class() _breadcrumbBundleIdForActivatingSceneEntity:entityCopy withTransitionContext:contextCopy];
  application = [entityCopy application];
  bundleIdentifier = [application bundleIdentifier];
  v12 = [v9 isEqualToString:bundleIdentifier];

  layoutRole = [entityCopy layoutRole];
  if (layoutRole != 1 && (SBLayoutRoleIsValidForSplitView(layoutRole) & v12) == 1)
  {
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _setCurrentBreadcrumbActionContext:0];
  }

  if ([objc_opt_class() _shouldAddBreadcrumbToActivatingSceneEntity:entityCopy sceneHandle:WeakRetained withTransitionContext:contextCopy])
  {
    v14 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _breadcrumbNavigationActionContextForActivatingSceneEntity:entityCopy withTransitionContext:contextCopy];
    v15 = [objc_opt_class() _breadcrumbTitleForAppWithBundleID:v9 sceneHandle:WeakRetained activatingSceneEntity:entityCopy withTransitionContext:contextCopy];
    v16 = *(v14 + 64);
    *(v14 + 64) = v15;

    request = [contextCopy request];
    displayConfiguration = [request displayConfiguration];
    v19 = *(v14 + 72);
    *(v14 + 72) = displayConfiguration;

    windowSceneManager = [SBApp windowSceneManager];
    identity = [*(v14 + 72) identity];
    v22 = [windowSceneManager windowSceneForDisplayIdentity:identity];
    objc_storeWeak((v14 + 80), v22);

    if (sceneIdentifier)
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
  allObjects = [(NSHashTable *)self->_observers allObjects];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __85__SBDeviceApplicationSceneStatusBarBreadcrumbProvider_noteDidUpdateDisplayProperties__block_invoke;
  v4[3] = &unk_2783AF7C8;
  v4[4] = self;
  [allObjects enumerateObjectsUsingBlock:v4];
}

void __85__SBDeviceApplicationSceneStatusBarBreadcrumbProvider_noteDidUpdateDisplayProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 statusBarBreadcrumbProviderDidUpdateDisplayProperties:*(a1 + 32)];
  }
}

+ (BOOL)_shouldAddBreadcrumbToActivatingSceneEntity:(id)entity sceneHandle:(id)handle withTransitionContext:(id)context
{
  entityCopy = entity;
  contextCopy = context;
  handleCopy = handle;
  v10 = [contextCopy applicationSceneEntityForLayoutRole:1];
  application = [v10 application];
  bundleIdentifier = [application bundleIdentifier];

  v12 = [contextCopy previousApplicationSceneEntityForLayoutRole:1];
  application2 = [v12 application];
  bundleIdentifier2 = [application2 bundleIdentifier];

  v15 = [contextCopy previousApplicationSceneEntityForLayoutRole:2];
  application3 = [v15 application];
  bundleIdentifier3 = [application3 bundleIdentifier];

  application4 = [handleCopy application];

  bundleIdentifier4 = [application4 bundleIdentifier];

  request = [contextCopy request];
  source = [request source];
  originatingProcess = [request originatingProcess];
  bundleIdentifier5 = [originatingProcess bundleIdentifier];

  v69 = bundleIdentifier2;
  v62 = [bundleIdentifier2 length];
  v21 = [entityCopy BOOLForActivationSetting:44];
  v22 = [bundleIdentifier5 isEqualToString:@"com.apple.Spotlight"];
  v64 = [entityCopy BOOLForActivationSetting:26];
  v23 = objc_opt_class();
  v24 = [contextCopy previousApplicationSceneEntityForLayoutRole:1];
  sceneHandle = [v24 sceneHandle];
  v26 = SBSafeCast(v23, sceneHandle);

  forbidsActivationByBreadcrumbAction = [v26 forbidsActivationByBreadcrumbAction];
  application5 = [v26 application];
  LOBYTE(sceneHandle) = [application5 isSetup];

  if (sceneHandle & 1) != 0 || (+[SBDefaults localDefaults](SBDefaults, "localDefaults"), v29 = objc_claimAutoreleasedReturnValue(), [v29 workspaceDefaults], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isBreadcrumbDisabled") | forbidsActivationByBreadcrumbAction, v30, v29, (v31))
  {
    LOBYTE(v21) = 0;
LABEL_4:
    v32 = bundleIdentifier;
LABEL_5:
    v33 = bundleIdentifier4;
    v34 = v69;
    goto LABEL_6;
  }

  v32 = bundleIdentifier;
  v34 = v69;
  v33 = bundleIdentifier4;
  if (([bundleIdentifier isEqual:v69] & v22 & v64) == 1)
  {
    LOBYTE(v21) = +[SBHomeScreenReturnToSpotlightPolicy areSpotlightBreadcrumbsEnabled];
    goto LABEL_6;
  }

  if ([bundleIdentifier isEqual:bundleIdentifier4])
  {
    if (!(v21 & 1 | (([v69 isEqual:bundleIdentifier4] & 1) == 0)))
    {
      goto LABEL_17;
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  if (![request isMainWorkspaceTransitionRequest])
  {
LABEL_17:
    LOBYTE(v21) = 0;
    goto LABEL_6;
  }

  v59 = [entityCopy BOOLForActivationSetting:42];
  v36 = [entityCopy BOOLForActivationSetting:40];
  v37 = [bundleIdentifier5 isEqualToString:@"com.apple.camera"];
  if (v62)
  {
    v38 = [MEMORY[0x277CEBE80] applicationWithBundleIdentifier:v69];
    isHidden = [v38 isHidden];

    v32 = bundleIdentifier;
    if (isHidden)
    {
      LOBYTE(v21) = 0;
      goto LABEL_5;
    }
  }

  if (v21)
  {
    v33 = bundleIdentifier4;
    LOBYTE(v21) = [SBAssistantController shouldBreadcrumbLaunchedApplicationWithBundleIdentifier:bundleIdentifier4];
LABEL_23:
    v34 = v69;
    goto LABEL_6;
  }

  v33 = bundleIdentifier4;
  if (source == 45 || (v36 & v37 & 1) != 0)
  {
    LOBYTE(v21) = 1;
    goto LABEL_23;
  }

  v40 = v59;
  if (source == 6)
  {
    v40 = 1;
  }

  v34 = v69;
  if (v40 == 1)
  {
    LOBYTE(v21) = (v36 ^ 1) & ((v62 != 0) | v64);
    goto LABEL_6;
  }

  if ((source & 0xFFFFFFFFFFFFFFFELL) == 4)
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
  if (source <= 0x13 && ((1 << source) & 0x8A004) != 0)
  {
    v41 = [entityCopy BOOLForActivationSetting:50];
    v42 = [entityCopy BOOLForActivationSetting:41];
    v43 = [entityCopy objectForActivationSetting:5];

    v61 = v42;
    if (v41)
    {
      v44 = [entityCopy objectForActivationSetting:14];
      v45 = v44;
      if (v62 && v44)
      {
        v46 = [contextCopy previousApplicationSceneEntityForBundleID:v44];

        if (v46)
        {
          v33 = bundleIdentifier4;
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
            v54 = [bundleIdentifier3 isEqual:v45];
            v65 = [v45 isEqual:v52];
            v51 = v53 | v54;
          }

          v63 = v51;
          v55 = +[SBApplicationController sharedInstance];
          v56 = [v55 applicationWithBundleIdentifier:v45];
          info = [v56 info];
          shouldLaunchSuspendedAlways = [info shouldLaunchSuspendedAlways];

          LOBYTE(v21) = v63 & ((v65 | shouldLaunchSuspendedAlways) ^ 1);
          goto LABEL_4;
        }

        v48 = v69;

        v45 = v48;
        v33 = bundleIdentifier4;
      }

      v47 = v69;
      if (v45)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v47 = bundleIdentifier5;
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

- (id)_breadcrumbNavigationActionContextForActivatingSceneEntity:(id)entity withTransitionContext:(id)context
{
  v26[1] = *MEMORY[0x277D85DE8];
  entityCopy = entity;
  contextCopy = context;
  v7 = objc_alloc_init(SBBreadcrumbActionContext);
  v7->_lastSource = SBSpotlightLastPresentationSource();
  v8 = [objc_opt_class() _breadcrumbBundleIdForActivatingSceneEntity:entityCopy withTransitionContext:contextCopy];
  breadcrumbAppBundleID = v7->_breadcrumbAppBundleID;
  v7->_breadcrumbAppBundleID = v8;

  v10 = [objc_opt_class() _breadcrumbSceneIdForAppWithBundleID:v7->_breadcrumbAppBundleID activatingSceneEntity:entityCopy withTransitionContext:contextCopy];
  breadcrumbSceneID = v7->_breadcrumbSceneID;
  v7->_breadcrumbSceneID = v10;

  if ([entityCopy BOOLForActivationSetting:26])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSString *)v7->_breadcrumbAppBundleID isEqualToString:@"com.apple.springboard.spotlight-placeholder"];
  }

  v7->_wasFromSpotlight = v12;
  if ([entityCopy BOOLForActivationSetting:44])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSString *)v7->_breadcrumbAppBundleID isEqualToString:@"com.apple.Siri"];
  }

  v7->_wasFromAssistant = v13;
  v14 = [contextCopy previousApplicationSceneEntityForLayoutRole:2];
  application = [v14 application];
  bundleIdentifier = [application bundleIdentifier];
  previousSideBundleId = v7->_previousSideBundleId;
  v7->_previousSideBundleId = bundleIdentifier;

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
  sharedInstance = [v21 sharedInstance];
  [sharedInstance emitEvent:15 withPayload:v22];

  v7->_didCaptureContext = 1;

  return v7;
}

+ (id)_destinationContextsForActivatingSceneEntity:(id)entity withTransitionContext:(id)context
{
  contextCopy = context;
  entityCopy = entity;
  v8 = [self _breadcrumbBundleIdForActivatingSceneEntity:entityCopy withTransitionContext:contextCopy];
  v9 = [self _breadcrumbSceneIdForAppWithBundleID:v8 activatingSceneEntity:entityCopy withTransitionContext:contextCopy];
  v10 = [contextCopy previousApplicationSceneEntityForLayoutRole:1];
  sceneHandle = [v10 sceneHandle];

  v12 = [self _breadcrumbTitleForAppWithBundleID:v8 sceneHandle:sceneHandle activatingSceneEntity:entityCopy withTransitionContext:contextCopy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v9)
  {
    [MEMORY[0x277D75B00] systemNavigationActionContextWithTitle:v12 sceneIdentifier:v9];
  }

  else
  {
    [MEMORY[0x277D75B00] systemNavigationActionContextWithTitle:v12 bundleId:v8];
  }
  v14 = ;
  [dictionary setObject:v14 forKeyedSubscript:&unk_2833704D8];

  return dictionary;
}

+ (id)_breadcrumbTitleForAppWithBundleID:(id)d sceneHandle:(id)handle activatingSceneEntity:(id)entity withTransitionContext:(id)context
{
  dCopy = d;
  entityCopy = entity;
  contextCopy = context;
  v12 = +[SBApplicationController sharedInstance];
  v13 = [v12 applicationWithBundleIdentifier:dCopy];

  if ([entityCopy BOOLForActivationSetting:26])
  {
    if (![entityCopy BOOLForActivationSetting:44])
    {
      goto LABEL_7;
    }

LABEL_5:
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = mainBundle;
    v17 = @"SIRI";
LABEL_8:
    title = [mainBundle localizedStringForKey:v17 value:&stru_283094718 table:@"SpringBoard"];
LABEL_9:

    goto LABEL_10;
  }

  v14 = [dCopy isEqualToString:@"com.apple.springboard.spotlight-placeholder"];
  if ([entityCopy BOOLForActivationSetting:44])
  {
    goto LABEL_5;
  }

  if (v14)
  {
LABEL_7:
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = mainBundle;
    v17 = @"SYSTEM_SEARCH_TITLE";
    goto LABEL_8;
  }

  if ([dCopy isEqualToString:@"com.apple.webapp"])
  {
    v16 = [self _breadcrumbSceneIdForAppWithBundleID:dCopy activatingSceneEntity:entityCopy withTransitionContext:contextCopy];
    v20 = [SBWebApplication _webClipIdentifierFromWebAppIdentifier:v16];
    v21 = [MEMORY[0x277D75D70] webClipWithIdentifier:v20];
    title = [v21 title];

    goto LABEL_9;
  }

  title = [v13 displayName];
LABEL_10:

  return title;
}

+ (id)_breadcrumbBundleIdForActivatingSceneEntity:(id)entity withTransitionContext:(id)context
{
  contextCopy = context;
  entityCopy = entity;
  v7 = [entityCopy BOOLForActivationSetting:26];
  v8 = [entityCopy BOOLForActivationSetting:44];

  request = [contextCopy request];
  originatingProcess = [request originatingProcess];
  bundleIdentifier = [originatingProcess bundleIdentifier];

  v12 = [bundleIdentifier isEqualToString:@"com.apple.camera"];
  if (v8)
  {
    v13 = @"com.apple.Siri";
LABEL_3:
    bundleIdentifier2 = v13;
    goto LABEL_9;
  }

  if (v7)
  {
    bundleIdentifier2 = @"com.apple.springboard.spotlight-placeholder";
  }

  else
  {
    if (v12)
    {
      v13 = @"com.apple.camera";
      goto LABEL_3;
    }

    v15 = [contextCopy previousApplicationSceneEntityForLayoutRole:1];
    application = [v15 application];
    bundleIdentifier2 = [application bundleIdentifier];
  }

LABEL_9:

  return bundleIdentifier2;
}

+ (id)_breadcrumbSceneIdForAppWithBundleID:(id)d activatingSceneEntity:(id)entity withTransitionContext:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [contextCopy previousApplicationSceneEntityForLayoutRole:1];
  application = [v8 application];
  bundleIdentifier = [application bundleIdentifier];

  LODWORD(v8) = [bundleIdentifier isEqualToString:dCopy];
  if (v8)
  {
    v11 = [contextCopy previousApplicationSceneEntityForLayoutRole:1];
    sceneHandle = [v11 sceneHandle];
    sceneIdentifier = [sceneHandle sceneIdentifier];
  }

  else
  {
    sceneIdentifier = 0;
  }

  return sceneIdentifier;
}

- (void)_setCurrentBreadcrumbActionContext:(id)context
{
  contextCopy = context;
  currentBreadcrumbActionContext = self->_currentBreadcrumbActionContext;
  if (currentBreadcrumbActionContext != contextCopy)
  {
    v11 = contextCopy;
    v7 = currentBreadcrumbActionContext;
    objc_storeStrong(&self->_currentBreadcrumbActionContext, context);
    v8 = self->_currentBreadcrumbActionContext;
    if (v7)
    {
      if (!v8)
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        v10 = +[SBApplicationController sharedInstance];
        [defaultCenter removeObserver:self name:@"SBInstalledApplicationsDidChangeNotification" object:v10];
LABEL_7:
      }
    }

    else if (v8)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v10 = +[SBApplicationController sharedInstance];
      [defaultCenter addObserver:self selector:sel__installedApplicationsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:v10];
      goto LABEL_7;
    }

    contextCopy = v11;
  }
}

- (void)_installedApplicationsDidChange:(id)change
{
  changeCopy = change;
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
    sharedInstance = [v8 sharedInstance];
    [sharedInstance emitEvent:16 withPayload:v9];

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
      sceneManager = [WeakRetained sceneManager];
      [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _activateBreadcrumbApplication:v11 withSceneIdentifier:breadcrumbSceneID sceneHandleProvider:sceneManager displayConfiguration:v4->_displayConfiguration];
    }
  }
}

- (void)_presentAssistantFromBreadcrumb
{
  v3 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  policyAggregator = [v3 policyAggregator];
  v5 = [policyAggregator allowsCapability:4];

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
    eventQueue = [v7 eventQueue];
    [eventQueue executeOrAppendEvent:v6];
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

- (void)_presentSpotlightFromBreadcrumbInWindowScene:(id)scene
{
  sceneCopy = scene;
  if ([(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self _showTransientOverlayInPlace])
  {
    [SBApp toggleSearchOnWindowScene:sceneCopy fromBreadcrumbSource:1 withWillBeginHandler:0 completionHandler:0];
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self prepareForReuse];
  }

  else
  {
    v5 = MEMORY[0x277D0AB18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __100__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__presentSpotlightFromBreadcrumbInWindowScene___block_invoke;
    v10[3] = &unk_2783A8C18;
    v11 = sceneCopy;
    v6 = [v5 eventWithName:@"presentSpotlight" handler:v10];
    v7 = +[SBWorkspace mainWorkspace];
    eventQueue = [v7 eventQueue];
    [eventQueue executeOrAppendEvent:v6];

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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (int64_t)_openStrategyForAppLinkState:(id)state
{
  v3 = [state objectForKeyedSubscript:*MEMORY[0x277D66E88]];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)_activateBreadcrumbApplication:(id)application withSceneIdentifier:(id)identifier sceneHandleProvider:(id)provider displayConfiguration:(id)configuration
{
  applicationCopy = application;
  identifierCopy = identifier;
  providerCopy = provider;
  configurationCopy = configuration;
  v13 = +[(SBWorkspace *)SBMainWorkspace];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __147__SBDeviceApplicationSceneStatusBarBreadcrumbProvider__activateBreadcrumbApplication_withSceneIdentifier_sceneHandleProvider_displayConfiguration___block_invoke;
  v18[3] = &unk_2783AF818;
  v19 = applicationCopy;
  v20 = identifierCopy;
  v21 = providerCopy;
  v22 = configurationCopy;
  v14 = configurationCopy;
  v15 = providerCopy;
  v16 = identifierCopy;
  v17 = applicationCopy;
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

- (void)sceneHandle:(id)handle didChangeEffectiveForegroundness:(BOOL)foregroundness
{
  if (!foregroundness)
  {
    [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self prepareForReuse];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  breadcrumbTitle = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self breadcrumbTitle];
  [v3 appendString:breadcrumbTitle withName:@"breadcrumbTitle" skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self succinctDescriptionBuilder];
  v5 = self->_currentBreadcrumbActionContext;
  if (v5 && [(SBDeviceApplicationSceneStatusBarBreadcrumbProvider *)self hasBreadcrumb])
  {
    v6 = v5->_breadcrumbAppBundleID;
  }

  else
  {
    v6 = 0;
  }

  [succinctDescriptionBuilder appendString:v6 withName:@"breadcrumbAppBundleID" skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

@end
@interface SBLayoutStateSceneIdentityProvider
- (SBLayoutStateSceneIdentityProvider)initWithDisplayIdentity:(id)identity;
- (SBLayoutStateSceneIdentityProviderDataSource)dataSource;
- (id)_sceneIdentityForApplication:(id)application uniqueIdentifier:(id)identifier targetContentIdentifier:(id)contentIdentifier allowCanMatches:(BOOL)matches preferNewScene:(BOOL)scene allowSceneCreation:(BOOL)creation visibleIdentifiers:(id)identifiers excludingIdentifiers:(id)self0 sceneSessionRole:(id)self1 preferredDisplay:(id)self2;
- (id)newSceneIdentityForApplication:(id)application;
- (id)sceneIdentityForApplication:(id)application createPrimaryIfRequired:(BOOL)required sceneSessionRole:(id)role;
@end

@implementation SBLayoutStateSceneIdentityProvider

- (SBLayoutStateSceneIdentityProvider)initWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v9.receiver = self;
  v9.super_class = SBLayoutStateSceneIdentityProvider;
  v6 = [(SBLayoutStateSceneIdentityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayIdentity, identity);
  }

  return v7;
}

- (id)newSceneIdentityForApplication:(id)application
{
  applicationCopy = application;
  bundleIdentifier = [applicationCopy bundleIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  info = [applicationCopy info];

  v8 = [WeakRetained newSceneIdentifierForBundleIdentifier:bundleIdentifier supportsMultiwindow:{objc_msgSend(info, "supportsMultiwindow")}];
  if ([bundleIdentifier isEqualToString:@"com.apple.LoginUI"])
  {
    v9 = @"LoginWorkspace";
  }

  else
  {
    v9 = 0;
  }

  v10 = [MEMORY[0x277D0ADC0] identityForIdentifier:v8 workspaceIdentifier:v9];

  return v10;
}

- (id)sceneIdentityForApplication:(id)application createPrimaryIfRequired:(BOOL)required sceneSessionRole:(id)role
{
  requiredCopy = required;
  applicationCopy = application;
  roleCopy = role;
  v9 = [(SBLayoutStateSceneIdentityProvider *)self _identifierForApplication:applicationCopy];
  dataSource = [(SBLayoutStateSceneIdentityProvider *)self dataSource];
  windowSceneManager = [SBApp windowSceneManager];
  v12 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  layoutStateProvider = [v12 layoutStateProvider];
  layoutState = [layoutStateProvider layoutState];

  appLayout = [layoutState appLayout];
  if ([layoutState unlockedEnvironmentMode] == 3)
  {
    v30 = v9;
    v16 = roleCopy;
    switcherController = [dataSource switcherController];
    displayItemLayoutAttributesProvider = [switcherController displayItemLayoutAttributesProvider];

    interfaceOrientation = [layoutState interfaceOrientation];
    v20 = (interfaceOrientation - 1) < 2 ? 1 : 2 * ((interfaceOrientation - 3) < 2);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __107__SBLayoutStateSceneIdentityProvider_sceneIdentityForApplication_createPrimaryIfRequired_sceneSessionRole___block_invoke;
    v32[3] = &unk_2783A8C90;
    v33 = applicationCopy;
    v21 = [displayItemLayoutAttributesProvider lastInteractedDisplayItemInAppLayout:appLayout orientation:v20 passingTest:v32];
    v22 = v21;
    if (v21)
    {
      uniqueIdentifier = [v21 uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = 0;
    }

    roleCopy = v16;
    v9 = v30;
    if (uniqueIdentifier)
    {
      goto LABEL_12;
    }
  }

  info = [applicationCopy info];
  supportsMultiwindow = [info supportsMultiwindow];

  if (supportsMultiwindow && requiredCopy)
  {
    layoutStateManager = [dataSource layoutStateManager];
    uniqueIdentifier = [layoutStateManager primarySceneIdentifierForBundleIdentifier:v9 sceneSessionRole:roleCopy displayIdentity:self->_displayIdentity];

    if (!uniqueIdentifier)
    {
      v27 = [(SBLayoutStateSceneIdentityProvider *)self newSceneIdentityForApplication:applicationCopy];
      goto LABEL_13;
    }

LABEL_12:
    v27 = [MEMORY[0x277D0ADC0] identityForIdentifier:uniqueIdentifier];
LABEL_13:
    v28 = v27;

    goto LABEL_15;
  }

  v28 = [(SBLayoutStateSceneIdentityProvider *)self sceneIdentityForApplication:applicationCopy];
LABEL_15:

  return v28;
}

uint64_t __107__SBLayoutStateSceneIdentityProvider_sceneIdentityForApplication_createPrimaryIfRequired_sceneSessionRole___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [*(a1 + 32) bundleIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)_sceneIdentityForApplication:(id)application uniqueIdentifier:(id)identifier targetContentIdentifier:(id)contentIdentifier allowCanMatches:(BOOL)matches preferNewScene:(BOOL)scene allowSceneCreation:(BOOL)creation visibleIdentifiers:(id)identifiers excludingIdentifiers:(id)self0 sceneSessionRole:(id)self1 preferredDisplay:(id)self2
{
  creationCopy = creation;
  sceneCopy = scene;
  matchesCopy = matches;
  v119 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  identifierCopy = identifier;
  contentIdentifierCopy = contentIdentifier;
  identifiersCopy = identifiers;
  v19 = applicationCopy;
  excludingIdentifiersCopy = excludingIdentifiers;
  roleCopy = role;
  selfCopy = self;
  displayCopy = display;
  v22 = [(SBLayoutStateSceneIdentityProvider *)self _identifierForApplication:applicationCopy];
  if (identifierCopy)
  {
    v23 = [MEMORY[0x277D0ADC0] identityForIdentifier:identifierCopy];
    if (!v23)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  v105 = sceneCopy;
  info = [applicationCopy info];
  supportsMultiwindow = [info supportsMultiwindow];

  if (!supportsMultiwindow)
  {
    v23 = 0;
    identifierCopy = 0;
    goto LABEL_102;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  layoutStateManager = [WeakRetained layoutStateManager];
  v28 = [layoutStateManager defaultSceneIdentifierForBundleIdentifier:v22 targetContentIdentifier:contentIdentifierCopy allowCanMatches:matchesCopy preferNewScene:sceneCopy visibleSceneIdentifiers:identifiersCopy excludingSceneIdentifiers:excludingIdentifiersCopy sceneSessionRole:roleCopy preferredDisplay:displayCopy];

  if (v28)
  {
    goto LABEL_100;
  }

  _dataStore = [v19 _dataStore];
  externalApplicationSceneHandles = [WeakRetained externalApplicationSceneHandles];
  v30 = [WeakRetained transientApplicationSceneHandlesForApplication:v19];
  v82 = externalApplicationSceneHandles;
  if (v30)
  {
    v31 = v30;
    v32 = [v30 setByAddingObjectsFromSet:externalApplicationSceneHandles];
  }

  else
  {
    v32 = externalApplicationSceneHandles;
  }

  v83 = WeakRetained;
  v84 = v22;
  v85 = displayCopy;
  selfCopy2 = self;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  obj = v32;
  v102 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
  if (!v102)
  {
    v101 = 0;
    v33 = 0;
    v103 = 0;
    v28 = 0;
    goto LABEL_99;
  }

  v101 = 0;
  v33 = 0;
  v103 = 0;
  v28 = 0;
  v87 = !matchesCopy;
  v100 = *v109;
  v93 = v19;
  while (2)
  {
    v34 = 0;
    v35 = v28;
    do
    {
      if (*v109 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v108 + 1) + 8 * v34);
      sceneIdentifier = [v36 sceneIdentifier];
      v38 = [excludingIdentifiersCopy containsObject:sceneIdentifier];
      v39 = [identifiersCopy containsObject:sceneIdentifier];
      application = [v36 application];
      v41 = [application isEqual:v19];

      if (!v41)
      {
        goto LABEL_77;
      }

      if (!__sb__runningInSpringBoard())
      {
        currentDevice = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom = [currentDevice userInterfaceIdiom];

        v46 = userInterfaceIdiom == 1;
        v43 = 0x277D75000uLL;
        if (!v46 || !contentIdentifierCopy)
        {
          goto LABEL_26;
        }

LABEL_23:
        sceneIdentifier2 = [v36 sceneIdentifier];
        v48 = [_dataStore sceneStoreForIdentifier:sceneIdentifier2 creatingIfNecessary:0];

        v49 = [v48 objectForKey:@"sceneSessionRole"];
        if (![v49 isEqual:roleCopy])
        {
LABEL_76:

LABEL_77:
          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            goto LABEL_80;
          }

          if ((v105 & 1) == 0)
          {
            goto LABEL_85;
          }

          goto LABEL_79;
        }

        v91 = v48;
        v90 = [v48 objectForKey:@"activationConditions"];
        v50 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v90 error:0];
        v96 = v50;
        v89 = v49;
        if (v50)
        {
          v51 = v50;
        }

        else
        {
          v51 = objc_alloc_init(*(v43 + 2376));
        }

        v95 = v51;
        v54 = contentIdentifierCopy;
        v55 = +[SBFocusAppConfigurationContextMonitor sharedInstance];
        bundleIdentifier = [v93 bundleIdentifier];
        v57 = [v55 targetContentIdentifierPrefixForBundleIdentifier:bundleIdentifier];

        v97 = v57;
        if (v57)
        {
          v58 = SBLogSceneResolution();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v113 = 0;
            v114 = 2114;
            v115 = v57;
            _os_log_impl(&dword_21ED4E000, v58, OS_LOG_TYPE_DEFAULT, "Found TCI Prefix for scene evaluation %{public}@:%{public}@", buf, 0x16u);
          }

          v59 = [v57 stringByAppendingString:v54];

          v60 = v59;
        }

        else
        {
          v60 = v54;
        }

        v61 = v95;
        v92 = v60;
        v62 = [v95 _suitabilityForTargetContentIdentifier:? errorString:?];
        v63 = 0;
        v64 = v63;
        if (v62 != 2)
        {
          if (v62 == 1)
          {
            if (((v38 | v39 | v87) & 1) == 0)
            {
              if (v103)
              {
                v69 = v103;
              }

              else
              {
                v69 = sceneIdentifier;
              }

              v70 = v69;

              v61 = v95;
              v103 = v70;
            }

            v66 = v92;
            v65 = SBLogSceneResolution();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v113 = 0;
              v114 = 2114;
              v115 = v96;
              v116 = 2114;
              v117 = v92;
              v67 = v65;
              v68 = "Scene is suitable for activationConditions %{public}@:%{public}@ %{public}@";
              goto LABEL_68;
            }
          }

          else
          {
            if (v62)
            {
              v66 = v92;
              if (v63)
              {
LABEL_71:
                v74 = SBLogSceneResolution();
                if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                {
                  bundleIdentifier2 = [v93 bundleIdentifier];
                  *buf = 138543619;
                  v113 = bundleIdentifier2;
                  v114 = 2113;
                  v115 = v64;
                  _os_log_error_impl(&dword_21ED4E000, v74, OS_LOG_TYPE_ERROR, "error evaluating UISceneActivationConditions for %{public}@: %{private}@", buf, 0x16u);

                  v66 = v92;
                }
              }

LABEL_74:

              if (v33)
              {

                v28 = v35;
                v19 = v93;
                goto LABEL_99;
              }

              v48 = v91;
              v49 = v89;
              v19 = v93;
              goto LABEL_76;
            }

            v65 = SBLogSceneResolution();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v113 = 0;
              v114 = 2114;
              v115 = v96;
              v116 = 2114;
              v66 = v92;
              v117 = v92;
              v67 = v65;
              v68 = "Scene is not suitable for activationConditions %{public}@:%{public}@ %{public}@";
LABEL_68:
              _os_log_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEFAULT, v68, buf, 0x20u);
              goto LABEL_70;
            }

            v66 = v92;
          }

LABEL_70:

          if (v64)
          {
            goto LABEL_71;
          }

          goto LABEL_74;
        }

        if ((v38 | v39))
        {
          if (v38 & 1 | ((v39 & 1) == 0))
          {
LABEL_66:
            v65 = SBLogSceneResolution();
            v66 = v92;
            if (!os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_70;
            }

            *buf = 138543874;
            v113 = 0;
            v114 = 2114;
            v115 = v96;
            v116 = 2114;
            v117 = v92;
            v67 = v65;
            v68 = "Scene is preferred for activationConditions %{public}@:%{public}@ %{public}@";
            goto LABEL_68;
          }

          v71 = v101;
          if (v101)
          {
            v72 = v101;
          }

          else
          {
            v72 = sceneIdentifier;
          }

          v101 = v72;
        }

        else
        {
          if (v33)
          {
            v72 = v33;
          }

          else
          {
            v72 = sceneIdentifier;
          }

          v71 = v33;
          v33 = v72;
        }

        v73 = v72;

        goto LABEL_66;
      }

      v42 = SBFEffectiveDeviceClass();
      v43 = 0x277D75000;
      if (contentIdentifierCopy && v42 == 2)
      {
        goto LABEL_23;
      }

LABEL_26:
      if ((v38 | v39))
      {
        goto LABEL_77;
      }

      if ((v105 & 1) == 0)
      {
        if (v33)
        {
          v52 = v33;
        }

        else
        {
          v52 = sceneIdentifier;
        }

        v53 = v52;

        v33 = v53;
        if ((_os_feature_enabled_impl() & 1) == 0)
        {
LABEL_80:
          v76 = v103;
          if (!v103)
          {
            v76 = v101;
          }

          if (v33)
          {
            v76 = v33;
          }

          goto LABEL_94;
        }

LABEL_85:
        v77 = [MEMORY[0x277CBEBC0] URLWithString:contentIdentifierCopy];
        isFileURL = [v77 isFileURL];

        goto LABEL_86;
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_79:
      isFileURL = 1;
LABEL_86:
      v105 = isFileURL;
      if (v33)
      {
        v78 = 1;
      }

      else
      {
        v78 = isFileURL;
      }

      v79 = v103;
      if (!v103)
      {
        v79 = v101;
      }

      if (v78)
      {
        v76 = v33;
      }

      else
      {
        v76 = v79;
      }

LABEL_94:
      v28 = v76;

      ++v34;
      v35 = v28;
    }

    while (v102 != v34);
    v102 = [obj countByEnumeratingWithState:&v108 objects:v118 count:16];
    if (v102)
    {
      continue;
    }

    break;
  }

LABEL_99:

  selfCopy = selfCopy2;
  v22 = v84;
  displayCopy = v85;
  WeakRetained = v83;
  if (v28)
  {
LABEL_100:
    v23 = [MEMORY[0x277D0ADC0] identityForIdentifier:v28];
  }

  else
  {
    v23 = 0;
  }

  identifierCopy = 0;

  if (!v23)
  {
LABEL_102:
    if (creationCopy)
    {
      v23 = [(SBLayoutStateSceneIdentityProvider *)selfCopy newSceneIdentityForApplication:v19];
    }
  }

LABEL_104:

  return v23;
}

- (SBLayoutStateSceneIdentityProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
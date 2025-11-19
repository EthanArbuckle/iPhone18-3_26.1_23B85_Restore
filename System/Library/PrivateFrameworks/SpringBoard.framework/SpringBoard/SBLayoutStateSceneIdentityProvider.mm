@interface SBLayoutStateSceneIdentityProvider
- (SBLayoutStateSceneIdentityProvider)initWithDisplayIdentity:(id)a3;
- (SBLayoutStateSceneIdentityProviderDataSource)dataSource;
- (id)_sceneIdentityForApplication:(id)a3 uniqueIdentifier:(id)a4 targetContentIdentifier:(id)a5 allowCanMatches:(BOOL)a6 preferNewScene:(BOOL)a7 allowSceneCreation:(BOOL)a8 visibleIdentifiers:(id)a9 excludingIdentifiers:(id)a10 sceneSessionRole:(id)a11 preferredDisplay:(id)a12;
- (id)newSceneIdentityForApplication:(id)a3;
- (id)sceneIdentityForApplication:(id)a3 createPrimaryIfRequired:(BOOL)a4 sceneSessionRole:(id)a5;
@end

@implementation SBLayoutStateSceneIdentityProvider

- (SBLayoutStateSceneIdentityProvider)initWithDisplayIdentity:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBLayoutStateSceneIdentityProvider;
  v6 = [(SBLayoutStateSceneIdentityProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayIdentity, a3);
  }

  return v7;
}

- (id)newSceneIdentityForApplication:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleIdentifier];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = [v4 info];

  v8 = [WeakRetained newSceneIdentifierForBundleIdentifier:v5 supportsMultiwindow:{objc_msgSend(v7, "supportsMultiwindow")}];
  if ([v5 isEqualToString:@"com.apple.LoginUI"])
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

- (id)sceneIdentityForApplication:(id)a3 createPrimaryIfRequired:(BOOL)a4 sceneSessionRole:(id)a5
{
  v31 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [(SBLayoutStateSceneIdentityProvider *)self _identifierForApplication:v7];
  v10 = [(SBLayoutStateSceneIdentityProvider *)self dataSource];
  v11 = [SBApp windowSceneManager];
  v12 = [v11 windowSceneForDisplayIdentity:self->_displayIdentity];

  v13 = [v12 layoutStateProvider];
  v14 = [v13 layoutState];

  v15 = [v14 appLayout];
  if ([v14 unlockedEnvironmentMode] == 3)
  {
    v30 = v9;
    v16 = v8;
    v17 = [v10 switcherController];
    v18 = [v17 displayItemLayoutAttributesProvider];

    v19 = [v14 interfaceOrientation];
    v20 = (v19 - 1) < 2 ? 1 : 2 * ((v19 - 3) < 2);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __107__SBLayoutStateSceneIdentityProvider_sceneIdentityForApplication_createPrimaryIfRequired_sceneSessionRole___block_invoke;
    v32[3] = &unk_2783A8C90;
    v33 = v7;
    v21 = [v18 lastInteractedDisplayItemInAppLayout:v15 orientation:v20 passingTest:v32];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 uniqueIdentifier];
    }

    else
    {
      v23 = 0;
    }

    v8 = v16;
    v9 = v30;
    if (v23)
    {
      goto LABEL_12;
    }
  }

  v24 = [v7 info];
  v25 = [v24 supportsMultiwindow];

  if (v25 && v31)
  {
    v26 = [v10 layoutStateManager];
    v23 = [v26 primarySceneIdentifierForBundleIdentifier:v9 sceneSessionRole:v8 displayIdentity:self->_displayIdentity];

    if (!v23)
    {
      v27 = [(SBLayoutStateSceneIdentityProvider *)self newSceneIdentityForApplication:v7];
      goto LABEL_13;
    }

LABEL_12:
    v27 = [MEMORY[0x277D0ADC0] identityForIdentifier:v23];
LABEL_13:
    v28 = v27;

    goto LABEL_15;
  }

  v28 = [(SBLayoutStateSceneIdentityProvider *)self sceneIdentityForApplication:v7];
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

- (id)_sceneIdentityForApplication:(id)a3 uniqueIdentifier:(id)a4 targetContentIdentifier:(id)a5 allowCanMatches:(BOOL)a6 preferNewScene:(BOOL)a7 allowSceneCreation:(BOOL)a8 visibleIdentifiers:(id)a9 excludingIdentifiers:(id)a10 sceneSessionRole:(id)a11 preferredDisplay:(id)a12
{
  v88 = a8;
  v12 = a7;
  v13 = a6;
  v119 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v104 = a5;
  v107 = a9;
  v19 = v17;
  v106 = a10;
  v98 = a11;
  v20 = self;
  v21 = a12;
  v22 = [(SBLayoutStateSceneIdentityProvider *)self _identifierForApplication:v17];
  if (v18)
  {
    v23 = [MEMORY[0x277D0ADC0] identityForIdentifier:v18];
    if (!v23)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  v105 = v12;
  v24 = [v17 info];
  v25 = [v24 supportsMultiwindow];

  if (!v25)
  {
    v23 = 0;
    v18 = 0;
    goto LABEL_102;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v27 = [WeakRetained layoutStateManager];
  v28 = [v27 defaultSceneIdentifierForBundleIdentifier:v22 targetContentIdentifier:v104 allowCanMatches:v13 preferNewScene:v12 visibleSceneIdentifiers:v107 excludingSceneIdentifiers:v106 sceneSessionRole:v98 preferredDisplay:v21];

  if (v28)
  {
    goto LABEL_100;
  }

  v94 = [v19 _dataStore];
  v29 = [WeakRetained externalApplicationSceneHandles];
  v30 = [WeakRetained transientApplicationSceneHandlesForApplication:v19];
  v82 = v29;
  if (v30)
  {
    v31 = v30;
    v32 = [v30 setByAddingObjectsFromSet:v29];
  }

  else
  {
    v32 = v29;
  }

  v83 = WeakRetained;
  v84 = v22;
  v85 = v21;
  v86 = self;
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
  v87 = !v13;
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
      v37 = [v36 sceneIdentifier];
      v38 = [v106 containsObject:v37];
      v39 = [v107 containsObject:v37];
      v40 = [v36 application];
      v41 = [v40 isEqual:v19];

      if (!v41)
      {
        goto LABEL_77;
      }

      if (!__sb__runningInSpringBoard())
      {
        v44 = [MEMORY[0x277D75418] currentDevice];
        v45 = [v44 userInterfaceIdiom];

        v46 = v45 == 1;
        v43 = 0x277D75000uLL;
        if (!v46 || !v104)
        {
          goto LABEL_26;
        }

LABEL_23:
        v47 = [v36 sceneIdentifier];
        v48 = [v94 sceneStoreForIdentifier:v47 creatingIfNecessary:0];

        v49 = [v48 objectForKey:@"sceneSessionRole"];
        if (![v49 isEqual:v98])
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
        v54 = v104;
        v55 = +[SBFocusAppConfigurationContextMonitor sharedInstance];
        v56 = [v93 bundleIdentifier];
        v57 = [v55 targetContentIdentifierPrefixForBundleIdentifier:v56];

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
                v69 = v37;
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
                  v80 = [v93 bundleIdentifier];
                  *buf = 138543619;
                  v113 = v80;
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
            v72 = v37;
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
            v72 = v37;
          }

          v71 = v33;
          v33 = v72;
        }

        v73 = v72;

        goto LABEL_66;
      }

      v42 = SBFEffectiveDeviceClass();
      v43 = 0x277D75000;
      if (v104 && v42 == 2)
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
          v52 = v37;
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
        v77 = [MEMORY[0x277CBEBC0] URLWithString:v104];
        v75 = [v77 isFileURL];

        goto LABEL_86;
      }

      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        goto LABEL_80;
      }

LABEL_79:
      v75 = 1;
LABEL_86:
      v105 = v75;
      if (v33)
      {
        v78 = 1;
      }

      else
      {
        v78 = v75;
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

  v20 = v86;
  v22 = v84;
  v21 = v85;
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

  v18 = 0;

  if (!v23)
  {
LABEL_102:
    if (v88)
    {
      v23 = [(SBLayoutStateSceneIdentityProvider *)v20 newSceneIdentityForApplication:v19];
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
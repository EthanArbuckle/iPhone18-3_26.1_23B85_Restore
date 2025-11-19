@interface SBMainDisplayLayoutStateManager
+ (id)_initialLayoutStateWithDisplayOrdinal:(int64_t)a3 isDisplayExternal:(BOOL)a4;
- (BOOL)_doesSceneIDSpecifyPrimaryScene:(id)a3 forApplicationIdentifier:(id)a4 sceneSessionRole:(id)a5;
- (BOOL)_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:(id)a3;
- (SBRecentAppLayouts)_recentAppLayouts;
- (id)_applicationSceneEntityFromApplicationBundleIdentifier:(id)a3 uniqueIdentifier:(id)a4 displayIdentity:(id)a5;
- (id)_displayItemLayoutAttributesProvider;
- (id)_layoutStateForApplicationTransitionContext:(id)a3;
- (id)_layoutStateForDisplayIdentity:(id)a3;
- (id)_mostRecentAppLayoutForBundleIdentifier:(id)a3 ignoringUniqueIdentifiers:(id)a4 inMedusaOnStageManagerCapableDevice:(BOOL)a5 multitaskingSupported:(BOOL)a6;
- (id)_mostRecentAppLayoutMatchingAnyUniqueIdentifier:(id)a3 inMedusaOnStageManagerCapableDevice:(BOOL)a4 multitaskingSupported:(BOOL)a5;
- (id)_sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:(id)a3 layoutState:(id)a4 bundleIdentifier:(id)a5 sceneSessionRole:(id)a6;
- (id)_sceneManagerForDisplayIdentity:(id)a3;
- (id)_switcherControllerForDisplayIdentity:(id)a3;
- (id)_zOrderComparatorFor:(id)a3;
- (id)defaultSceneIdentifierForBundleIdentifier:(id)a3 targetContentIdentifier:(id)a4 allowCanMatches:(BOOL)a5 preferNewScene:(BOOL)a6 visibleSceneIdentifiers:(id)a7 excludingSceneIdentifiers:(id)a8 sceneSessionRole:(id)a9 preferredDisplay:(id)a10;
- (id)layoutStateForApplicationTransitionContext:(id)a3;
- (id)primarySceneIdentifierForBundleIdentifier:(id)a3 sceneSessionRole:(id)a4 displayIdentity:(id)a5;
- (unint64_t)_autoLayoutOptionsForNewAppLayout:(id)a3 previousAppLayout:(id)a4 request:(id)a5;
- (void)_updateSceneRelevancyManager:(id)a3 forAppLayout:(id)a4 applicationTransitionContext:(id)a5 elementIdentifiersToLayoutAttributes:(id)a6 interfaceOrientation:(int64_t)a7 layoutAttributesProvider:(id)a8 layoutElements:(id)a9;
@end

@implementation SBMainDisplayLayoutStateManager

- (SBRecentAppLayouts)_recentAppLayouts
{
  v2 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v3 = [v2 _recentAppLayoutsController];

  return v3;
}

+ (id)_initialLayoutStateWithDisplayOrdinal:(int64_t)a3 isDisplayExternal:(BOOL)a4
{
  v6 = objc_alloc([a1 _layoutStateClass]);
  LOBYTE(v11) = a4;
  LOBYTE(v10) = 0;
  LOBYTE(v9) = 0;
  v7 = [v6 _initWithLayoutElements:0 interfaceOrientation:0 interfaceOrientationByLayoutElement:0 spaceConfiguration:0 elementIdentifiersToLayoutAttributes:MEMORY[0x277CBEC10] floatingConfiguration:0 unlockedEnvironmentMode:1 floatingSwitcherVisible:v9 centerConfiguration:0 centerEntityModal:v10 peekConfiguration:0 bundleIDShowingAppExpose:0 windowPickerRole:0 displayOrdinal:a3 isDisplayExternal:v11];

  return v7;
}

- (id)layoutStateForApplicationTransitionContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBMainDisplayLayoutStateManager;
  v3 = [(SBLayoutStateManager *)&v5 layoutStateForApplicationTransitionContext:a3];

  return v3;
}

- (id)defaultSceneIdentifierForBundleIdentifier:(id)a3 targetContentIdentifier:(id)a4 allowCanMatches:(BOOL)a5 preferNewScene:(BOOL)a6 visibleSceneIdentifiers:(id)a7 excludingSceneIdentifiers:(id)a8 sceneSessionRole:(id)a9 preferredDisplay:(id)a10
{
  v122 = a6;
  v12 = a5;
  v105 = a2;
  v157 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v134 = a7;
  v133 = a8;
  v140 = a9;
  v104 = a10;
  v136 = self;
  v103 = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v142 = v15;
  v17 = [v103 recentsForBundleIdentifier:v15 includingHiddenAppLayouts:0];
  v18 = [v17 count];
  v128 = v16;
  v131 = v18;
  if (v16 || !v18)
  {
    v19 = [v103 recentsForBundleIdentifier:v142 includingHiddenAppLayouts:1];

    v17 = v19;
  }

  if (v104)
  {
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = __216__SBMainDisplayLayoutStateManager_defaultSceneIdentifierForBundleIdentifier_targetContentIdentifier_allowCanMatches_preferNewScene_visibleSceneIdentifiers_excludingSceneIdentifiers_sceneSessionRole_preferredDisplay___block_invoke;
    v148[3] = &unk_2783A8CB8;
    v149 = v104;
    v20 = [v17 bs_filter:v148];

    v17 = v20;
  }

  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v109 = v17;
  v114 = [v109 countByEnumeratingWithState:&v144 objects:v156 count:16];
  if (v114)
  {
    v113 = 0;
    v22 = 0;
    v110 = !v12;
    v112 = *v145;
    v107 = 4;
    v108 = 1;
    v106 = 2;
    v132 = @"sceneSessionRole";
    v121 = @"activationConditions";
    *&v21 = 138543874;
    v115 = v21;
    *&v21 = 138543619;
    v102 = v21;
    *&v21 = 138543618;
    v111 = v21;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v145 != v112)
        {
          objc_enumerationMutation(v109);
        }

        v118 = v23;
        v24 = *(*(&v144 + 1) + 8 * v23);
        if (!v128 || ([MEMORY[0x277D75418] currentDevice], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "userInterfaceIdiom"), v25, (v26 & 0xFFFFFFFFFFFFFFFBLL) != 1))
        {
          if ([v24 isHidden] && -[SBMainDisplayLayoutStateManager _hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:](v136, "_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:", v24))
          {
            goto LABEL_104;
          }
        }

        v27 = SBLayoutRoleMax();
        v117 = &v102;
        MEMORY[0x28223BE20](v27);
        v29 = (&v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
        v30 = +[SBMainSwitcherControllerCoordinator sharedInstance];
        v31 = [v30 switcherControllerForAppLayout:v24];

        v119 = v31;
        v32 = [v31 windowManagementContext];
        if (![v32 baseStyle])
        {
          v116 = v32;
          v120 = v22;
          *v29 = v108;
          v34 = 1;
LABEL_34:
          v46 = v131;
          v129 = 0;
          v137 = v24;
          while (2)
          {
            v47 = *v29++;
            v48 = [v24 itemForLayoutRole:{v47, v102}];
            v49 = v48;
            if (v48)
            {
              v50 = [v48 uniqueIdentifier];
              v51 = [v133 containsObject:v50];
              v52 = [v134 containsObject:v50];
              v141 = v29;
              v139 = v52;
              if (v46)
              {
                v138 = [v24 isHidden];
              }

              else
              {
                v138 = 0;
              }

              v53 = [(SBMainDisplayLayoutStateManager *)v136 _applicationController];
              v54 = [v53 applicationWithBundleIdentifier:v142];

              v55 = [v54 _dataStore];
              v56 = [v49 uniqueIdentifier];
              v57 = [v55 sceneStoreForIdentifier:v56 creatingIfNecessary:0];

              v58 = [v57 objectForKey:v132];
              v59 = v58;
              if (!v140 || !v58 || [v58 isEqual:v140])
              {
                v135 = v51;
                v60 = [v49 bundleIdentifier];
                v61 = [v142 isEqualToString:v60];

                if (!v61)
                {
                  goto LABEL_95;
                }

                if (__sb__runningInSpringBoard())
                {
                  v62 = SBFEffectiveDeviceClass();
                  if (!v128 || v62 != 2)
                  {
                    goto LABEL_51;
                  }

LABEL_49:
                  v123 = v54;
                  v65 = [v57 objectForKey:v121];
                  v66 = MEMORY[0x277CCAAC8];
                  v67 = objc_opt_class();
                  v124 = v65;
                  v68 = [v66 unarchivedObjectOfClass:v67 fromData:v65 error:0];
                  v125 = v68;
                  if (v68)
                  {
                    v69 = v68;
                  }

                  else
                  {
                    v69 = objc_alloc_init(MEMORY[0x277D75948]);
                  }

                  v130 = v69;
                  v75 = v128;
                  v76 = +[SBFocusAppConfigurationContextMonitor sharedInstance];
                  v77 = [v76 targetContentIdentifierPrefixForBundleIdentifier:v142];

                  v54 = v123;
                  v126 = v77;
                  if (v77)
                  {
                    v78 = SBLogSceneResolution();
                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                    {
                      v150 = v111;
                      v151 = v142;
                      v152 = 2114;
                      v153 = v126;
                      _os_log_impl(&dword_21ED4E000, v78, OS_LOG_TYPE_DEFAULT, "Found TCI Prefix for scene evaluation %{public}@:%{public}@", &v150, 0x16u);
                    }

                    v79 = [v126 stringByAppendingString:v75];

                    v80 = v79;
                  }

                  else
                  {
                    v80 = v75;
                  }

                  v81 = v130;
                  v143 = 0;
                  v82 = v80;
                  v83 = [v130 _suitabilityForTargetContentIdentifier:? errorString:?];
                  v127 = v143;
                  v130 = v81;
                  if (v83 != 2)
                  {
                    if (v83 != 1)
                    {
                      if (!v83)
                      {
                        v84 = SBLogSceneResolution();
                        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                        {
                          v150 = v115;
                          v151 = v50;
                          v152 = 2114;
                          v153 = v125;
                          v154 = 2114;
                          v155 = v82;
                          v85 = v84;
                          v86 = "Scene is not suitable for activationConditions %{public}@:%{public}@ %{public}@";
                          goto LABEL_87;
                        }

LABEL_88:
                      }

                      v74 = v129;
                      if (v127)
                      {
                        v93 = SBLogSceneResolution();
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                        {
                          v150 = v102;
                          v151 = v142;
                          v152 = 2113;
                          v153 = v127;
                          _os_log_error_impl(&dword_21ED4E000, v93, OS_LOG_TYPE_ERROR, "error evaluating UISceneActivationConditions for %{public}@: %{private}@", &v150, 0x16u);
                        }
                      }

                      v73 = v124;
LABEL_94:

                      v129 = v74;
                      goto LABEL_95;
                    }

                    if (((v135 | v139 | v110 | v138) & 1) == 0)
                    {
                      v87 = v120;
                      if (v120)
                      {
                        v88 = v120;
                      }

                      else
                      {
                        v88 = v50;
                      }

                      v89 = v88;

                      v120 = v89;
                    }

                    v84 = SBLogSceneResolution();
                    if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_88;
                    }

                    v150 = v115;
                    v151 = v50;
                    v152 = 2114;
                    v153 = v125;
                    v154 = 2114;
                    v155 = v82;
                    v85 = v84;
                    v86 = "Scene is suitable for activationConditions %{public}@:%{public}@ %{public}@";
LABEL_87:
                    _os_log_impl(&dword_21ED4E000, v85, OS_LOG_TYPE_DEFAULT, v86, &v150, 0x20u);
                    goto LABEL_88;
                  }

                  v90 = v113;
                  if ((v135 | v139))
                  {
                    if (!(v135 & 1 | ((v139 & 1) == 0)))
                    {
                      if (v113)
                      {
                        v91 = v113;
                      }

                      else
                      {
                        v91 = v50;
                      }

                      v113 = v91;
                      goto LABEL_84;
                    }
                  }

                  else
                  {
                    v90 = v129;
                    if (v129)
                    {
                      v91 = v129;
                    }

                    else
                    {
                      v91 = v50;
                    }

                    v129 = v91;
LABEL_84:
                    v92 = v91;
                  }

                  v84 = SBLogSceneResolution();
                  if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_88;
                  }

                  v150 = v115;
                  v151 = v50;
                  v152 = 2114;
                  v153 = v125;
                  v154 = 2114;
                  v155 = v82;
                  v85 = v84;
                  v86 = "Scene is preferred for activationConditions %{public}@:%{public}@ %{public}@";
                  goto LABEL_87;
                }

                v63 = [MEMORY[0x277D75418] currentDevice];
                v64 = [v63 userInterfaceIdiom];

                if (v64 == 1 && v128)
                {
                  goto LABEL_49;
                }

LABEL_51:
                if (((v135 | v139 | v122 | v138) & 1) == 0)
                {
                  v70 = v129;
                  if (v129)
                  {
                    v71 = v129;
                  }

                  else
                  {
                    v71 = v50;
                  }

                  v72 = v71;
                  v73 = v70;
                  v74 = v72;
                  goto LABEL_94;
                }

LABEL_95:
                v46 = v131;
              }

              v24 = v137;
              v29 = v141;
            }

            if (!--v34)
            {
              goto LABEL_100;
            }

            continue;
          }
        }

        if ([v32 isMedusaEnabled])
        {
          v116 = v32;
          v120 = v22;
          v33 = v108;
          *v29 = v107;
          v29[1] = v33;
          v34 = 3;
          v29[2] = v106;
          goto LABEL_34;
        }

        if ([v32 isChamoisOrFlexibleWindowing])
        {
          v120 = v22;
          v116 = v32;
          if (v122)
          {
            v122 = 1;
          }

          else
          {
            v36 = [MEMORY[0x277CBEBC0] URLWithString:v128];
            v122 = [v36 isFileURL];
          }

          v37 = v119;
          v38 = [v119 displayItemLayoutAttributesProvider];
          v39 = [v37 interfaceOrientation];
          if ((v39 - 1) < 2)
          {
            v40 = 1;
          }

          else
          {
            v40 = 2 * ((v39 - 3) < 2);
          }

          v41 = [v38 lastInteractedDisplayItemsInAppLayout:v24 orientation:v40];

          v42 = [v41 count];
          v34 = v42;
          if (v42 >= v27)
          {
            v43 = v27;
          }

          else
          {
            v43 = v42;
          }

          if (v43 >= 1)
          {
            for (i = 0; i != v43; ++i)
            {
              v45 = [v41 objectAtIndex:i];
              v29[i] = [v24 layoutRoleForItem:v45];
            }
          }

          if (v34 >= 1)
          {
            goto LABEL_34;
          }

          v129 = 0;
LABEL_100:
          v22 = v120;
          v32 = v116;
        }

        else
        {
          v35 = [MEMORY[0x277CCA890] currentHandler];
          [v35 handleFailureInMethod:v105 object:v136 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:148 description:@"Unexpected window management context"];

          v129 = 0;
        }

        if (v129)
        {
          goto LABEL_106;
        }

        v23 = v118 + 1;
      }

      while (v118 + 1 != v114);
      v114 = [v109 countByEnumeratingWithState:&v144 objects:v156 count:16];
      if (!v114)
      {
LABEL_104:
        v129 = 0;
        goto LABEL_106;
      }
    }
  }

  v113 = 0;
  v129 = 0;
  v22 = 0;
LABEL_106:

  if (_os_feature_enabled_impl())
  {
    if (v122)
    {
      v94 = SBLogSceneResolution();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        v150 = 138543618;
        v151 = v128;
        v152 = 2114;
        v153 = v129;
        _os_log_impl(&dword_21ED4E000, v94, OS_LOG_TYPE_DEFAULT, "Mapping TCI to prefersScene %{public}@:%{public}@", &v150, 0x16u);
      }

      v95 = v129;
      v96 = v129;
      v97 = v113;
    }

    else
    {
      v97 = v113;
      if (v22)
      {
        v99 = v22;
      }

      else
      {
        v99 = v113;
      }

      v95 = v129;
      if (v129)
      {
        v96 = v129;
      }

      else
      {
        v96 = v99;
      }
    }
  }

  else
  {
    v97 = v113;
    if (v22)
    {
      v98 = v22;
    }

    else
    {
      v98 = v113;
    }

    v95 = v129;
    if (v129)
    {
      v96 = v129;
    }

    else
    {
      v96 = v98;
    }
  }

  v100 = v96;

  return v96;
}

uint64_t __216__SBMainDisplayLayoutStateManager_defaultSceneIdentifierForBundleIdentifier_targetContentIdentifier_allowCanMatches_preferNewScene_visibleSceneIdentifiers_excludingSceneIdentifiers_sceneSessionRole_preferredDisplay___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 preferredDisplayIdentity];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (id)primarySceneIdentifierForBundleIdentifier:(id)a3 sceneSessionRole:(id)a4 displayIdentity:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v51 = a4;
  v8 = a5;
  v9 = [(SBMainDisplayLayoutStateManager *)self _layoutStateForDisplayIdentity:v8];
  v53 = self;
  v10 = [(SBMainDisplayLayoutStateManager *)self _switcherControllerForDisplayIdentity:v8];
  v11 = [v10 windowManagementContext];
  LODWORD(a5) = [v11 isFlexibleWindowingEnabled];
  v12 = SBPeekConfigurationIsValid([v9 peekConfiguration]) & (a5 ^ 1);
  v48 = v9;
  [v9 appLayout];
  v49 = v13 = 0;
  if (v49 && (v12 & 1) == 0)
  {
    v13 = [(SBMainDisplayLayoutStateManager *)v53 _sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:v49 layoutState:v9 bundleIdentifier:v52 sceneSessionRole:v51];
  }

  v14 = [v9 floatingAppLayout];
  v15 = v14;
  if (!v13)
  {
    v18 = v14 ? v12 : 1;
    if ((v18 & 1) != 0 || ([(SBMainDisplayLayoutStateManager *)v53 _sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:v14 layoutState:v9 bundleIdentifier:v52 sceneSessionRole:v51], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v19 = [(SBMainDisplayLayoutStateManager *)v53 _recentAppLayouts];
      v20 = [v19 recentsForBundleIdentifier:v52 includingHiddenAppLayouts:0];
      v46 = v11;
      v47 = v10;
      if (![v20 count])
      {
        v21 = [v19 recentsForBundleIdentifier:v52 includingHiddenAppLayouts:1];

        v20 = v21;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v22 = v20;
      v23 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
      v50 = v15;
      if (v23)
      {
        v24 = v23;
        v25 = v8;
        v26 = *v59;
        while (2)
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v59 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v58 + 1) + 8 * i);
            if ([v28 isHidden])
            {
              v29 = [(SBMainDisplayLayoutStateManager *)v53 _hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:v28];
            }

            else
            {
              v29 = 0;
            }

            if ([v49 isOrContainsAppLayout:v28])
            {
              v30 = 1;
            }

            else
            {
              v30 = [v50 isOrContainsAppLayout:v28];
            }

            if (((v29 | v12 & v30) & 1) == 0)
            {
              v31 = [(SBMainDisplayLayoutStateManager *)v53 _sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:v28 layoutState:v48 bundleIdentifier:v52 sceneSessionRole:v51];
              if (v31)
              {
                v13 = v31;
                goto LABEL_30;
              }
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
          if (v24)
          {
            continue;
          }

          break;
        }

        v13 = 0;
LABEL_30:
        v8 = v25;
        v15 = v50;
      }

      else
      {
        v13 = 0;
      }

      v11 = v46;
      v10 = v47;
      if (!((v13 != 0) | v12 & 1))
      {
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v45 = v8;
        v32 = [(SBMainDisplayLayoutStateManager *)v53 _sceneManagerForDisplayIdentity:v8];
        v33 = [v32 externalApplicationSceneHandles];

        v34 = v33;
        v35 = [v33 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (!v35)
        {
          v13 = 0;
          goto LABEL_48;
        }

        v36 = v35;
        v13 = 0;
        v37 = *v55;
        v38 = v52;
        while (1)
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v55 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v40 = *(*(&v54 + 1) + 8 * j);
            v41 = [v40 application];
            v42 = [v41 bundleIdentifier];
            if (([v42 isEqual:v38] & 1) == 0)
            {

              goto LABEL_42;
            }

            v43 = [v40 sceneIdentifier];
            v44 = [(SBMainDisplayLayoutStateManager *)v53 _doesSceneIDSpecifyPrimaryScene:v43 forApplicationIdentifier:v38 sceneSessionRole:v51];

            if (v44)
            {
              [v40 sceneIdentifier];
              v13 = v41 = v13;
              v15 = v50;
              v38 = v52;
LABEL_42:

              continue;
            }

            v15 = v50;
            v38 = v52;
          }

          v36 = [v34 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (!v36)
          {
LABEL_48:

            v8 = v45;
            v11 = v46;
            v10 = v47;
            break;
          }
        }
      }
    }
  }

  v16 = v13;

  return v13;
}

- (BOOL)_doesSceneIDSpecifyPrimaryScene:(id)a3 forApplicationIdentifier:(id)a4 sceneSessionRole:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SBMainDisplayLayoutStateManager *)self _applicationController];
  v12 = [v11 applicationWithBundleIdentifier:v9];

  v13 = [v12 _dataStore];
  v14 = [v13 sceneStoreForIdentifier:v8 creatingIfNecessary:0];

  v15 = [v14 objectForKey:@"activationConditions"];
  v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:0];
  if (!v16)
  {
    v21 = 1;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v30 = v8;
  v17 = +[SBFocusAppConfigurationContextMonitor sharedInstance];
  v18 = [v17 targetContentIdentifierPrefixForBundleIdentifier:v9];

  v29 = v12;
  if (v18)
  {
    v19 = v18;
    v20 = SBLogSceneResolution();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = v19;
      _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Found TCI Prefix for primary scene evaluation %{public}@:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    v19 = &stru_283094718;
  }

  v31 = 0;
  v22 = [v16 _suitabilityForTargetContentIdentifier:v19 errorString:&v31];
  v23 = v31;
  v21 = v22 != 0;
  if (!v22)
  {
    v24 = SBLogSceneResolution();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v33 = v9;
      v34 = 2114;
      v35 = v30;
      v36 = 2114;
      v37 = v16;
      _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Scene is not suitable for primary role %{public}@:%{public}@ %{public}@", buf, 0x20u);
    }
  }

  if (v23)
  {
    v25 = SBLogSceneResolution();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [SBMainDisplayLayoutStateManager _doesSceneIDSpecifyPrimaryScene:v9 forApplicationIdentifier:v23 sceneSessionRole:v25];
    }
  }

  v12 = v29;
  v8 = v30;
  if (v10)
  {
LABEL_18:
    if (v21)
    {
      v26 = [v14 objectForKey:@"sceneSessionRole"];
      v27 = v26;
      if (v26)
      {
        LOBYTE(v21) = [v26 isEqualToString:v10];
      }

      else
      {
        LOBYTE(v21) = 1;
      }
    }
  }

LABEL_23:

  return v21;
}

- (id)_sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier:(id)a3 layoutState:(id)a4 bundleIdentifier:(id)a5 sceneSessionRole:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [(SBMainDisplayLayoutStateManager *)self _displayItemLayoutAttributesProvider];
  v15 = [v12 interfaceOrientation];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __142__SBMainDisplayLayoutStateManager__sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier_layoutState_bundleIdentifier_sceneSessionRole___block_invoke;
  v22[3] = &unk_2783B9418;
  if ((v15 - 1) < 2)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2 * ((v15 - 3) < 2);
  }

  v23 = v10;
  v24 = self;
  v25 = v11;
  v17 = v11;
  v18 = v10;
  v19 = [v14 lastInteractedDisplayItemInAppLayout:v13 orientation:v16 passingTest:v22];

  v20 = [v19 uniqueIdentifier];

  return v20;
}

uint64_t __142__SBMainDisplayLayoutStateManager__sceneIDIfAppLayoutContainsPrimarySceneIDForBundleIdentifier_layoutState_bundleIdentifier_sceneSessionRole___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 bundleIdentifier];
  if ([v4 isEqualToString:v5])
  {
    v6 = a1[5];
    v7 = [v3 uniqueIdentifier];
    v8 = [v6 _doesSceneIDSpecifyPrimaryScene:v7 forApplicationIdentifier:a1[4] sceneSessionRole:a1[6]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_mostRecentAppLayoutMatchingAnyUniqueIdentifier:(id)a3 inMedusaOnStageManagerCapableDevice:(BOOL)a4 multitaskingSupported:(BOOL)a5
{
  v5 = a5;
  v44 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v42 = self;
  v8 = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v9 = [v8 recentsIncludingHiddenAppLayouts:1];

  v10 = [v9 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v38 = v5;
    v12 = *v60;
    v46 = v9;
    v40 = *v60;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v59 + 1) + 8 * i);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v15 = [v14 allItems];
        v16 = [v15 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v56;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v56 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [*(*(&v55 + 1) + 8 * j) uniqueIdentifier];
              v21 = [v7 containsObject:v20];

              if (v21)
              {

                v22 = v14;
                if (v44)
                {
                  v23 = [(SBMainDisplayLayoutStateManager *)v42 _applicationController];
                  v24 = [v22 appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:v23 multitaskingSupported:v38];

                  if (v24)
                  {
                    v53 = 0u;
                    v54 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v25 = v24;
                    v41 = [v25 countByEnumeratingWithState:&v51 objects:v64 count:16];
                    if (v41)
                    {
                      v26 = *v52;
                      v45 = v25;
                      v39 = *v52;
                      do
                      {
                        for (k = 0; k != v41; ++k)
                        {
                          if (*v52 != v26)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v28 = *(*(&v51 + 1) + 8 * k);
                          v47 = 0u;
                          v48 = 0u;
                          v49 = 0u;
                          v50 = 0u;
                          v43 = v28;
                          v29 = [v28 allItems];
                          v30 = [v29 countByEnumeratingWithState:&v47 objects:v63 count:16];
                          if (v30)
                          {
                            v31 = v30;
                            v32 = *v48;
                            while (2)
                            {
                              for (m = 0; m != v31; ++m)
                              {
                                if (*v48 != v32)
                                {
                                  objc_enumerationMutation(v29);
                                }

                                v34 = [*(*(&v47 + 1) + 8 * m) uniqueIdentifier];
                                v35 = [v7 containsObject:v34];

                                if (v35)
                                {

                                  v36 = v43;
                                  v22 = v36;
                                  v25 = v45;
                                  v9 = v46;
                                  goto LABEL_38;
                                }
                              }

                              v31 = [v29 countByEnumeratingWithState:&v47 objects:v63 count:16];
                              if (v31)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          v26 = v39;
                          v25 = v45;
                        }

                        v41 = [v45 countByEnumeratingWithState:&v51 objects:v64 count:16];
                      }

                      while (v41);
                    }

                    v9 = v46;
LABEL_38:
                  }

                  else
                  {
                    v9 = v46;
                  }
                }

                else
                {
                  v9 = v46;
                }

                goto LABEL_41;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v55 objects:v65 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v9 = v46;
        v12 = v40;
      }

      v11 = [v46 countByEnumeratingWithState:&v59 objects:v66 count:16];
      v22 = 0;
    }

    while (v11);
  }

  else
  {
    v22 = 0;
  }

LABEL_41:

  return v22;
}

- (id)_mostRecentAppLayoutForBundleIdentifier:(id)a3 ignoringUniqueIdentifiers:(id)a4 inMedusaOnStageManagerCapableDevice:(BOOL)a5 multitaskingSupported:(BOOL)a6
{
  v6 = a6;
  v52 = a5;
  v77 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v11 = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v12 = [v11 recentsIncludingHiddenAppLayouts:0];

  v50 = [v12 countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v50)
  {
    v44 = self;
    v46 = v6;
    v13 = *v70;
    v56 = v12;
    v48 = *v70;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v70 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v69 + 1) + 8 * i);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v54 = v15;
        v16 = [v15 allItems];
        v17 = [v16 countByEnumeratingWithState:&v65 objects:v75 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v66;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v66 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v65 + 1) + 8 * j);
              v22 = [v21 bundleIdentifier];
              if ([v9 isEqualToString:v22])
              {
                v23 = [v21 uniqueIdentifier];
                v24 = [v10 containsObject:v23];

                if (!v24)
                {

                  v26 = v54;
                  v25 = v26;
                  if (v52)
                  {
                    v27 = [(SBMainDisplayLayoutStateManager *)v44 _applicationController];
                    v28 = [v25 appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:v27 multitaskingSupported:v46];

                    v12 = v56;
                    if (v28)
                    {
                      v63 = 0u;
                      v64 = 0u;
                      v61 = 0u;
                      v62 = 0u;
                      v29 = v28;
                      v47 = [v29 countByEnumeratingWithState:&v61 objects:v74 count:16];
                      if (v47)
                      {
                        v30 = *v62;
                        v53 = v29;
                        v55 = v28;
                        v45 = *v62;
                        do
                        {
                          v31 = 0;
                          do
                          {
                            if (*v62 != v30)
                            {
                              objc_enumerationMutation(v29);
                            }

                            v32 = *(*(&v61 + 1) + 8 * v31);
                            v57 = 0u;
                            v58 = 0u;
                            v59 = 0u;
                            v60 = 0u;
                            v49 = v31;
                            v51 = v32;
                            v33 = [v32 allItems];
                            v34 = [v33 countByEnumeratingWithState:&v57 objects:v73 count:16];
                            if (v34)
                            {
                              v35 = v34;
                              v36 = *v58;
                              do
                              {
                                for (k = 0; k != v35; ++k)
                                {
                                  if (*v58 != v36)
                                  {
                                    objc_enumerationMutation(v33);
                                  }

                                  v38 = *(*(&v57 + 1) + 8 * k);
                                  v39 = [v38 bundleIdentifier];
                                  if ([v9 isEqualToString:v39])
                                  {
                                    v40 = [v38 uniqueIdentifier];
                                    v41 = [v10 containsObject:v40];

                                    if ((v41 & 1) == 0)
                                    {

                                      v42 = v51;
                                      v25 = v42;
                                      v28 = v55;
                                      v12 = v56;
                                      v29 = v53;
                                      goto LABEL_43;
                                    }
                                  }

                                  else
                                  {
                                  }
                                }

                                v35 = [v33 countByEnumeratingWithState:&v57 objects:v73 count:16];
                              }

                              while (v35);
                            }

                            v31 = v49 + 1;
                            v28 = v55;
                            v12 = v56;
                            v29 = v53;
                            v30 = v45;
                          }

                          while (v49 + 1 != v47);
                          v47 = [v53 countByEnumeratingWithState:&v61 objects:v74 count:16];
                        }

                        while (v47);
                      }

LABEL_43:
                    }
                  }

                  else
                  {
                    v12 = v56;
                  }

                  goto LABEL_45;
                }
              }

              else
              {
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v65 objects:v75 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v13 = v48;
        v12 = v56;
      }

      v25 = 0;
      v50 = [v56 countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v50);
  }

  else
  {
    v25 = 0;
  }

LABEL_45:

  return v25;
}

- (id)_zOrderComparatorFor:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__SBMainDisplayLayoutStateManager__zOrderComparatorFor___block_invoke;
  v7[3] = &unk_2783B9CF8;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x223D6F7F0](v7);

  return v5;
}

uint64_t __56__SBMainDisplayLayoutStateManager__zOrderComparatorFor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uniqueIdentifier];
  v8 = [v5 objectForKey:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uniqueIdentifier];

  v11 = [v9 objectForKey:v10];

  v12 = [(SBHomeScreenConfigurationServer *)v8 queue];
  v13 = [(SBHomeScreenConfigurationServer *)v11 queue];
  [(SBDisplayItemLayoutAttributes *)v8 slideOverConfiguration];
  IsValid = SBDisplayItemSlideOverConfigurationIsValid(v19);
  [(SBDisplayItemLayoutAttributes *)v11 slideOverConfiguration];
  v15 = SBDisplayItemSlideOverConfigurationIsValid(v19);
  if (!IsValid || v15)
  {
    v17 = -1;
    if (v12 <= v13)
    {
      v17 = v12 < v13;
    }

    if (IsValid & 1 | ((v15 & 1) == 0))
    {
      v16 = v17;
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = -1;
  }

  return v16;
}

- (unint64_t)_autoLayoutOptionsForNewAppLayout:(id)a3 previousAppLayout:(id)a4 request:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 source] != 3 && objc_msgSend(v9, "source") != 63)
  {
    goto LABEL_6;
  }

  v10 = [v7 allItems];
  v11 = [v10 count];
  v12 = [v8 allItems];
  if (v11 <= [v12 count])
  {

LABEL_6:
    v14 = 0;
    goto LABEL_7;
  }

  v13 = [v7 containsAnyItemFromAppLayout:v8];

  v14 = v13 & 1;
LABEL_7:

  return v14;
}

- (void)_updateSceneRelevancyManager:(id)a3 forAppLayout:(id)a4 applicationTransitionContext:(id)a5 elementIdentifiersToLayoutAttributes:(id)a6 interfaceOrientation:(int64_t)a7 layoutAttributesProvider:(id)a8 layoutElements:(id)a9
{
  v58 = *MEMORY[0x277D85DE8];
  v43 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v49 = a8;
  v18 = a9;
  v42 = v17;
  v19 = [(SBMainDisplayLayoutStateManager *)self _zOrderComparatorFor:v17];
  v41 = v18;
  v20 = [v18 bs_array];
  v40 = v19;
  v21 = [v20 sortedArrayUsingComparator:v19];

  v22 = [v21 count];
  v48 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:5 valueOptions:0 capacity:v22];
  v52 = [MEMORY[0x277CBEB18] arrayWithCapacity:v22];
  v45 = v16;
  v23 = [v16 displayIdentity];
  v24 = [(SBMainDisplayLayoutStateManager *)self _switcherControllerForDisplayIdentity:v23];

  v47 = v24;
  v50 = v15;
  v46 = [v24 _autoLayoutSpaceForAppLayout:v15];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v21;
  v25 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v54;
    if ((a7 - 1) < 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2 * ((a7 - 3) < 2);
    }

    v44 = v29;
    v30 = v45;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = [v30 entityForLayoutRole:{objc_msgSend(*(*(&v53 + 1) + 8 * i), "layoutRole")}];
        v33 = [v32 deviceApplicationSceneEntity];
        if (v33)
        {
          [v52 addObject:v33];
          v34 = [v33 displayItemRepresentation];
          if (v34)
          {
            v35 = [v49 layoutAttributesForDisplayItem:v34 inAppLayout:v50 displayOrdinal:objc_msgSend(v50 orientation:{"preferredDisplayOrdinal"), v44}];
            v36 = [v46 flexibleAutoLayoutItemForDisplayItem:v34];
            v37 = [v36 sceneRelevancyHint];

            v38 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
            [v48 setObject:v38 forKey:v33];

            if ([v47 _isDisplayItemFullScreen:v34 preferredAttributes:v35])
            {
              v39 = v27 == 0;
            }

            else
            {
              v39 = 0;
            }

            if (v39)
            {
              v27 = v33;
            }

            v30 = v45;
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
    v30 = v45;
  }

  [v43 configureWithZOrderedDeviceApplicationSceneEntities:v52 deviceApplicationSceneEntitiesToOcclusionStates:v48 firstMaximizedDeviceApplicationSceneEntity:v27 isStageInPeek:{SBPeekConfigurationIsValid(objc_msgSend(v30, "requestedPeekConfiguration"))}];
}

- (id)_layoutStateForApplicationTransitionContext:(id)a3
{
  v3 = MEMORY[0x28223BE20](self);
  v1017 = v4;
  v1043 = v3;
  v1254 = *MEMORY[0x277D85DE8];
  v1029 = v5;
  v964 = [v1029 request];
  v975 = [v964 source];
  rect_16 = [v1029 previousLayoutState];
  v951 = [v964 displayIdentity];
  rect_24 = [v1043 _switcherControllerForDisplayIdentity:v951];
  v952 = [v1029 isBackground];
  v6 = [v1029 isContingencyPlan];
  v1034 = [rect_24 displayItemLayoutAttributesProvider];
  v1002 = [rect_24 windowManagementContext];
  v949 = [v1002 isChamoisOrFlexibleWindowing];
  v1011 = [v1002 isFlexibleWindowingEnabled];
  v946 = [v1002 isAutomaticStageCreationEnabled];
  v7 = [rect_24 backgroundNethermostWindows];
  v943 = SBLayoutSupportsManyForegroundWindows();
  v1046 = [v1002 restoresPreviouslyOpenWindows];
  v950 = [MEMORY[0x277CBEB98] set];
  v942 = v7 & (v952 ^ 1);
  if (v942)
  {
    v8 = [v1029 entities];
    [v8 enumerateObjectsUsingBlock:&__block_literal_global_27];

    v9 = [v1029 previousEntities];
    [v9 enumerateObjectsUsingBlock:&__block_literal_global_29_1];
  }

  v1045 = [MEMORY[0x277CBEB38] dictionary];
  v1044 = [MEMORY[0x277CBEB38] dictionary];
  v1003 = [rect_24 _desktopSpaceItems];
  if (v952)
  {
    v10 = [v1029 applicationSceneEntityForLayoutRole:4];
    v1047 = rect_16;
    if (v10)
    {
      v11 = [v10 activationSettings];
      if ([v11 _settingsAreValidToMoveContentToNewScene])
      {
        v1030 = [SBMainDisplayLayoutState alloc];
        v1035 = [v1047 elements];
        v1024 = [v1047 spaceConfiguration];
        v12 = [v1047 elementIdentifiersToLayoutAttributes];
        v1018 = [v1047 floatingConfiguration];
        v13 = [v1047 unlockedEnvironmentMode];
        v14 = [v1047 isFloatingSwitcherVisible];
        v15 = [v1047 peekConfiguration];
        v16 = [v1047 bundleIDShowingAppExpose];
        v17 = [v1047 windowPickerRole];
        v18 = [v1047 displayOrdinal];
        LOBYTE(v900) = [v1047 isDisplayExternal];
        LOBYTE(v897) = 1;
        v19 = [(SBMainDisplayLayoutState *)v1030 _initWithLayoutElements:v1035 spaceConfiguration:v1024 elementIdentifiersToLayoutAttributes:v12 floatingConfiguration:v1018 unlockedEnvironmentMode:v13 floatingSwitcherVisible:v14 centerConfiguration:1 centerEntityModal:v897 peekConfiguration:v15 bundleIDShowingAppExpose:v16 windowPickerRole:v17 displayOrdinal:v18 isDisplayExternal:v900];

        v1047 = v19;
      }
    }

    goto LABEL_1108;
  }

  if (!((v975 != 14) | v6 & 1))
  {
    v1047 = [[SBMainDisplayLayoutState alloc] _initWithLayoutState:rect_16];
    v1070 = 0u;
    v1071 = 0u;
    v1072 = 0u;
    v1073 = 0u;
    v22 = [v1029 previousEntities];
    v23 = [v22 countByEnumeratingWithState:&v1070 objects:v1233 count:16];
    if (v23)
    {
      v24 = *v1071;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v1071 != v24)
          {
            objc_enumerationMutation(v22);
          }

          [v1029 setEntity:*(*(&v1070 + 1) + 8 * i) forLayoutRole:{objc_msgSend(*(*(&v1070 + 1) + 8 * i), "layoutRole")}];
        }

        v23 = [v22 countByEnumeratingWithState:&v1070 objects:v1233 count:16];
      }

      while (v23);
    }

    goto LABEL_1108;
  }

  v905 = [v964 displayIdentity];
  v20 = [rect_24 windowScene];
  v21 = [v20 supportsMultitasking];

  v997 = [v1002 baseStyle];
  if ([v1002 isMedusaEnabled])
  {
    v994 = SBFIsChamoisWindowingUIAvailable();
  }

  else
  {
    v994 = 0;
  }

  v26 = [v1029 activatingEntity];
  v27 = [v1029 entityForLayoutRole:?];
  v28 = [v1029 entityForLayoutRole:?];
  v29 = [v1029 entityForLayoutRole:?];
  v30 = [v1029 entityForLayoutRole:?];
  if (!v26 && v27 && !v28 && !v29)
  {
    v26 = v27;

    v27 = 0;
  }

  v936 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  rect = [v1029 requestedSpaceConfiguration];
  v947 = [v1029 requestedCenterConfiguration];
  v926 = [v1029 requestedFloatingConfiguration];
  v1012 = [v1029 requestedPeekConfiguration];
  v1036 = [v1029 requestedUnlockedEnvironmentMode];
  [v1029 requestedFloatingSwitcherVisible];
  [v1029 requestedCenterEntityModal];
  rect_8 = [v1029 requestedAppExposeBundleID];
  v924 = [v1029 requestedWindowPickerRole];
  v910 = [v1029 previousEntityForLayoutRole:1];
  v907 = [v1029 previousEntityForLayoutRole:2];
  v908 = [v1029 previousEntityForLayoutRole:3];
  v906 = [v1029 previousEntityForLayoutRole:4];
  v965 = [rect_16 interfaceOrientation];
  v953 = [rect_16 spaceConfiguration];
  v961 = [rect_16 floatingConfiguration];
  v944 = [rect_16 centerConfiguration];
  v937 = [rect_16 peekConfiguration];
  v934 = [rect_16 unlockedEnvironmentMode];
  v1223[0] = MEMORY[0x277D85DD0];
  v1223[1] = 3221225472;
  v1223[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_4;
  v1223[3] = &unk_2783B9D60;
  v992 = v1029;
  v1224 = v992;
  v920 = v31;
  v1225 = v920;
  v921 = v32;
  v1226 = v921;
  v923 = v33;
  v1227 = v923;
  v918 = v34;
  v1228 = v918;
  v919 = MEMORY[0x223D6F7F0](v1223);
  v35 = [v992 entitiesWithRemovalContexts];
  v931 = [v35 bs_compactMap:&__block_literal_global_35_1];

  v927 = [v992 itemsCrossingToOtherDisplay];
  v915 = [v992 minimizingDisplayItem];
  [rect_24 _slideOverDisplayItem];
  v1217 = 0;
  v1218 = &v1217;
  v1219 = 0x3032000000;
  v1220 = __Block_byref_object_copy__77;
  v902 = v1221 = __Block_byref_object_dispose__77;
  v1222 = v902;
  if ([v964 isCrossingDisplays])
  {
    v36 = [v992 entities];
    v37 = [v36 objectsPassingTest:&__block_literal_global_39_2];

    v1216 = 0u;
    v1215 = 0u;
    v1214 = 0u;
    v1213 = 0u;
    v38 = v37;
    v39 = [v38 countByEnumeratingWithState:&v1213 objects:v1251 count:16];
    if (v39)
    {
      v40 = *v1214;
      while (2)
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v1214 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = [SBDisplayItem displayItemForWorkspaceEntity:*(*(&v1213 + 1) + 8 * j)];
          if (v42)
          {
            v43 = [rect_16 appLayout];
            v44 = [v43 containsItem:v42];

            if ((v44 & 1) == 0)
            {
              v45 = [v42 uniqueIdentifier];
              v46 = [v992 requestedEntityIdentifierToLayoutAttributes];
              v47 = [v46 objectForKey:v45];

              memset(&v1252, 0, 40);
              v48 = [rect_24 switcherCoordinator];
              v49 = v48;
              if (v48)
              {
                [v48 slideOverConfigurationOnAnySwitcherForDisplayItem:v42];
              }

              else
              {
                memset(&v1252, 0, 40);
              }

              *&v1229.a = *&v1252.a;
              *&v1229.c = *&v1252.c;
              v1229.tx = v1252.tx;
              if (SBDisplayItemSlideOverConfigurationIsValid(&v1229))
              {
                [(SBDisplayItemLayoutAttributes *)v47 slideOverConfiguration];
                if ((SBDisplayItemSlideOverConfigurationIsValid(&v1229) & 1) == 0)
                {
                  *&v1229.a = *&v1252.a;
                  *&v1229.c = *&v1252.c;
                  v1229.tx = v1252.tx;
                  v50 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v47];

                  v51 = [v992 entityForIdentifier:v45];
                  [v992 setRequestedLayoutAttributes:v50 forEntity:v51];

                  objc_storeStrong(v1218 + 5, v42);
                  goto LABEL_46;
                }
              }

              [(SBDisplayItemLayoutAttributes *)v47 slideOverConfiguration];
              if (SBDisplayItemSlideOverConfigurationIsValid(&v1229))
              {
                objc_storeStrong(v1218 + 5, v42);
              }
            }
          }
        }

        v39 = [v38 countByEnumeratingWithState:&v1213 objects:v1251 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:
  }

  if (v1218[5] && ([v931 count] && (objc_msgSend(v931, "containsObject:", v1218[5]) & 1) != 0 || objc_msgSend(v927, "count") && objc_msgSend(v927, "containsObject:", v1218[5])))
  {
    v52 = v1218[5];
    v1218[5] = 0;
  }

  v941 = objc_opt_new();
  if ([v931 count])
  {
    [v941 addObjectsFromArray:v931];
  }

  if ([v927 count])
  {
    [v941 unionSet:v927];
  }

  [v941 bs_safeAddObject:v915];
  if ([v941 count])
  {
    v1212 = 0u;
    v1211 = 0u;
    v1210 = 0u;
    v1209 = 0u;
    v53 = v941;
    v54 = [v53 countByEnumeratingWithState:&v1209 objects:v1250 count:16];
    if (!v54)
    {
LABEL_72:

      goto LABEL_73;
    }

    v55 = 0;
    v56 = *v1210;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v1210 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = *(*(&v1209 + 1) + 8 * k);
        if (v58 && [v1003 containsObject:*(*(&v1209 + 1) + 8 * k)])
        {
          if (!v55)
          {
            v55 = [v1003 mutableCopy];
          }

          [v55 removeObject:v58];
        }
      }

      v54 = [v53 countByEnumeratingWithState:&v1209 objects:v1250 count:16];
    }

    while (v54);

    if (v55)
    {
      v53 = v55;

      v1003 = v53;
      goto LABEL_72;
    }
  }

LABEL_73:
  if (v1218[5])
  {
    v59 = [v1043 _displayItemLayoutAttributesProvider];
    v60 = v1218[5];
    v61 = [rect_16 appLayout];
    v62 = [rect_16 displayOrdinal];
    v63 = [rect_16 interfaceOrientation];
    if ((v63 - 1) < 2)
    {
      v64 = 1;
    }

    else
    {
      v64 = 2 * ((v63 - 3) < 2);
    }

    v65 = [v59 layoutAttributesForDisplayItem:v60 inAppLayout:v61 displayOrdinal:v62 orientation:v64];
    [(SBDisplayItemLayoutAttributes *)v65 slideOverConfiguration];
    v66 = v1208[33];

    if (v66)
    {
      v938 = 1;
    }

    else
    {
      v67 = [v992 requestedEntityIdentifierToLayoutAttributes];
      v68 = [v1218[5] uniqueIdentifier];
      v69 = [v67 objectForKey:v68];

      if (v69)
      {
        [(SBDisplayItemLayoutAttributes *)v69 slideOverConfiguration];
        v938 = v1207[33];
      }

      else
      {
        v938 = 0;
      }
    }
  }

  else
  {
    v938 = 0;
  }

  if (!v21)
  {

    v71 = v920;
    if (!v920)
    {
      v71 = v936;
      if (!v71)
      {
        v71 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        if (!v71)
        {
          v888 = [MEMORY[0x277CCA890] currentHandler];
          [v888 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1856 description:@"Primary workspace entity may not be nil at this point!"];

          v71 = 0;
        }
      }
    }

    v1147[0] = MEMORY[0x277D85DD0];
    v1147[1] = 3221225472;
    v1147[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_15;
    v1147[3] = &unk_2783B9E68;
    v72 = v910;
    v1148 = v72;
    v73 = MEMORY[0x223D6F7F0](v1147);
    if ([v71 isPreviousWorkspaceEntity])
    {
      v74 = (v73)[2](v73, v71, v72);

      v71 = v74;
    }

    if ([v71 isEmptyWorkspaceEntity])
    {
    }

    else
    {
      v78 = v71;
      if (v71)
      {
        goto LABEL_105;
      }
    }

    v78 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
    if (!v78)
    {
      v955 = 0;
      v904 = 0;
      goto LABEL_107;
    }

LABEL_105:
    v955 = v78;
    v904 = [v78 isHomeScreenEntity] ^ 1;
LABEL_107:

    v969 = 0;
    v956 = 0;
    v957 = 0;
    v932 = 0;
    v926 = 0;
    v922 = v936;

LABEL_769:
    v958 = 0;
    v912 = 0;
    goto LABEL_770;
  }

  v70 = v1036;
  if (v920 || v921 || v923 || v918)
  {
    v75 = [MEMORY[0x277CBEB58] set];
    if (v920)
    {
      v76 = [v920 uniqueIdentifier];

      v954 = v920;
      if (v76)
      {
        v77 = [v920 uniqueIdentifier];
        [v75 addObject:v77];

        v954 = v920;
      }
    }

    else
    {
      v954 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    }

    if (v921)
    {
      v79 = [v921 uniqueIdentifier];

      v957 = v921;
      if (v79)
      {
        v80 = [v921 uniqueIdentifier];
        [v75 addObject:v80];

        v957 = v921;
      }
    }

    else
    {
      v957 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    }

    if (v923)
    {
      v81 = [v923 uniqueIdentifier];

      v956 = v923;
      if (v81)
      {
        v82 = [v923 uniqueIdentifier];
        [v75 addObject:v82];

        v956 = v923;
      }
    }

    else
    {
      v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    }

    if (v918)
    {
      v83 = [v918 uniqueIdentifier];

      v958 = v918;
      if (v83)
      {
        v84 = [v918 uniqueIdentifier];
        [v75 addObject:v84];

        v958 = v918;
      }
    }

    else
    {
      v958 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    }

    if ([v75 count] >= 2 && !rect)
    {
      v85 = [v1043 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v75 inMedusaOnStageManagerCapableDevice:v994 multitaskingSupported:v997 != 0];
      v86 = v85;
      if (v85)
      {
        v87 = [v85 configuration];
        if ((v87 - 2) >= 3)
        {
          v88 = 0;
        }

        else
        {
          v88 = v87;
        }

        rect = v88;
      }

      else
      {
        rect = 0;
      }
    }

    goto LABEL_146;
  }

  if (!v936)
  {
    v954 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v957 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v958 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    goto LABEL_147;
  }

  if ([v936 isHomeScreenEntity])
  {
    v954 = v936;
    v957 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    v956 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    v958 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    goto LABEL_147;
  }

  if (SBWorkspaceEntitiesAreAnalagous(v936, v908) && ([v936 isEmptyWorkspaceEntity] & 1) == 0)
  {
    v954 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v957 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v956 = v936;
    v958 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  }

  else if (SBWorkspaceEntitiesAreAnalagous(v936, v910) && ([v936 isEmptyWorkspaceEntity] & 1) == 0)
  {
    v954 = v936;
    v957 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v958 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  }

  else if (SBWorkspaceEntitiesAreAnalagous(v936, v907) && ([v936 isEmptyWorkspaceEntity] & 1) == 0)
  {
    v954 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v957 = v936;
    v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v958 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
  }

  else
  {
    if (!SBWorkspaceEntitiesAreAnalagous(v936, v906) || ([v936 isEmptyWorkspaceEntity] & 1) != 0)
    {
      v1004 = [MEMORY[0x277CBEB58] set];
      v89 = [v936 uniqueIdentifier];

      if (v89)
      {
        v90 = [v936 uniqueIdentifier];
        [v1004 addObject:v90];
      }

      v91 = [v1043 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v1004 inMedusaOnStageManagerCapableDevice:v994 multitaskingSupported:v997 != 0];
      v92 = v91;
      if (((v1218[5] != 0) & v938) == 1 && [v91 containsItem:?])
      {
        v93 = [v936 uniqueIdentifier];
        v94 = [v1218[5] uniqueIdentifier];
        v95 = [v93 isEqualToString:v94];

        if (v95)
        {
          v96 = [rect_16 appLayout];
          v97 = [v96 appLayoutByInsertingItem:v1218[5]];

          v92 = v96;
        }

        else
        {
          v97 = [v92 appLayoutByRemovingItemInLayoutRole:{objc_msgSend(v92, "layoutRoleForItem:", v1218[5])}];
        }
      }

      else
      {
        v97 = v92;
      }

      if (!v97)
      {
        v954 = v936;
        v957 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
        v958 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_410:

LABEL_146:
        v70 = v1036;
        goto LABEL_147;
      }

      if (SBPeekConfigurationIsValid(v937) && [v1002 isFlexibleWindowingEnabled] && objc_msgSend(v1002, "isAutomaticStageCreationEnabled"))
      {
        v194 = [rect_16 appLayout];
        if ([v194 isOrContainsAppLayout:v97])
        {
        }

        else
        {
          v201 = [v936 isDeviceApplicationSceneEntity];

          if (v201)
          {
            v202 = [v936 uniqueIdentifier];
            v203 = [v97 allItems];
            v1205[0] = MEMORY[0x277D85DD0];
            v1205[1] = 3221225472;
            v1205[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_43;
            v1205[3] = &unk_2783A8C90;
            v933 = v202;
            v1206 = v933;
            v204 = [v203 bs_firstObjectPassingTest:v1205];

            v205 = [v204 bundleIdentifier];
            v206 = [v204 uniqueIdentifier];
            v207 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v205 uniqueIdentifier:v206 displayIdentity:v905];
            v1249 = v207;
            v208 = [MEMORY[0x277CBEA60] arrayWithObjects:&v1249 count:1];
            [v992 setEntities:v208 withPolicy:1 centerEntity:0 floatingEntity:0];

            v957 = 0;
            v958 = 0;
            v954 = 0;
            v956 = 0;

LABEL_408:
            v232 = v933;
LABEL_409:

            goto LABEL_410;
          }
        }
      }

      if ([v97 environment] != 2 || (objc_msgSend(v910, "isHomeScreenEntity") & 1) != 0)
      {
        v209 = [v97 itemForLayoutRole:1];
        v933 = v209;
        if (!v209)
        {
          v889 = [MEMORY[0x277CCA890] currentHandler];
          [v889 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:951 description:@"App layout should always have primary display item!"];

          v209 = 0;
        }

        v210 = [v936 uniqueIdentifier];
        v211 = [v209 uniqueIdentifier];
        v212 = [v210 isEqualToString:v211];

        if (v212)
        {
          v954 = v936;
        }

        else
        {
          v213 = [v933 bundleIdentifier];
          v214 = [v933 uniqueIdentifier];
          v954 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v213 uniqueIdentifier:v214 displayIdentity:v905];

          if (!v954)
          {
            v890 = [MEMORY[0x277CCA890] currentHandler];
            [v890 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:957 description:@"Failed to create primary workspace entity from app layout's primary display item!"];

            v954 = 0;
          }
        }

        v971 = [v97 itemForLayoutRole:2];
        if (v971)
        {
          v215 = [v936 uniqueIdentifier];
          v216 = [v971 uniqueIdentifier];
          v217 = [v215 isEqualToString:v216];

          if (v217)
          {
            v957 = v936;
          }

          else
          {
            v223 = [v971 bundleIdentifier];
            v224 = [v971 uniqueIdentifier];
            v957 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v223 uniqueIdentifier:v224 displayIdentity:v905];

            if (!v957)
            {
              v891 = [MEMORY[0x277CCA890] currentHandler];
              [v891 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:966 description:@"Failed to create side workspace entity from app layout's side display item!"];

              v957 = 0;
            }
          }

          v225 = [v97 configuration];
          if (v225 > 2)
          {
            if (v225 != 3 && v225 != 4)
            {
              goto LABEL_377;
            }
          }

          else
          {
            if (v225 < 2)
            {
              v226 = [MEMORY[0x277CCA890] currentHandler];
              [v226 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:971 description:@"Unexpected app layout configuration!"];

              goto LABEL_377;
            }

            if (v225 != 2)
            {
              goto LABEL_377;
            }
          }

          rect = v225;
          goto LABEL_377;
        }

        v957 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_377:
        if (v949)
        {
          v960 = [v97 itemsWithoutCenterOrFloatingItems];
          v233 = [v960 count];
          if (v233 <= 2)
          {
            v234 = 0;
          }

          else
          {
            v234 = [v960 subarrayWithRange:{2, v233 - 2}];
          }

          v235 = [v234 count];
          v236 = v235;
          if (v235 >= 1)
          {
            v237 = 0;
            v238 = 5;
            v239 = v235;
            do
            {
              v240 = [v234 objectAtIndex:v237];
              v241 = [v936 uniqueIdentifier];
              v242 = [v240 uniqueIdentifier];
              v243 = [v241 isEqualToString:v242];

              if (v243)
              {
                v244 = v936;
              }

              else
              {
                v245 = [v240 bundleIdentifier];
                v246 = [v240 uniqueIdentifier];
                v244 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v245 uniqueIdentifier:v246 displayIdentity:v905];

                if (!v244)
                {
                  v249 = [MEMORY[0x277CCA890] currentHandler];
                  v250 = SBLayoutRoleDescription(v238);
                  [v249 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1009 description:{@"Failed to create additional side workspace entity from app layout's role: %@!", v250}];

                  v244 = 0;
                }
              }

              if ((v1011 & 1) == 0 || ([v1002 isAutomaticStageCreationEnabled] & 1) != 0 || (objc_msgSend(v244, "uniqueIdentifier"), v247 = objc_claimAutoreleasedReturnValue(), objc_msgSend(rect_16, "elementWithIdentifier:", v247), v248 = objc_claimAutoreleasedReturnValue(), v248, v247, v248))
              {
                [v992 setEntity:v244 forLayoutRole:v238];
              }

              ++v237;
              ++v238;
              --v239;
            }

            while (v239);
          }

          v251 = [rect_16 appLayout];
          v252 = [v251 itemsWithoutCenterOrFloatingItems];

          v253 = [v252 count];
          v254 = (v253 - 2) & ~((v253 - 2) >> 31);
          v255 = v236;
          v462 = v236 < v254;
          v256 = v236 - v254;
          if (v462)
          {
            v257 = v255 + 5;
            if (v255 + 5 < v254 + 5)
            {
              do
              {
                v258 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                [v992 setEntity:v258 forLayoutRole:v257];

                ++v257;
              }

              while (!__CFADD__(v256++, 1));
            }
          }
        }

        v260 = [v97 itemForLayoutRole:4];
        if (v260)
        {
          v261 = [v936 uniqueIdentifier];
          v262 = [v260 uniqueIdentifier];
          v263 = [v261 isEqualToString:v262];

          if (v263)
          {
            v264 = v936;
          }

          else
          {
            v265 = [v260 bundleIdentifier];
            v266 = [v260 uniqueIdentifier];
            v267 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v265 uniqueIdentifier:v266 displayIdentity:v905];

            v264 = v267;
          }

          v958 = v264;
          if (!v264)
          {
            v892 = [MEMORY[0x277CCA890] currentHandler];
            [v892 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1042 description:@"Failed to create center workspace entity from app layout's center display item!"];
          }

          if (!v947)
          {
            v947 = SBMainDisplayLayoutStateCenterConfigurationFromAppLayoutCenterConfiguration([v97 centerConfiguration]);
          }
        }

        else
        {
          v958 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        }

        v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];

        goto LABEL_408;
      }

      if (v949)
      {
        v218 = [v97 itemForLayoutRole:1];
        v219 = v218;
        if (!v218)
        {
          v893 = [MEMORY[0x277CCA890] currentHandler];
          [v893 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:923 description:@"App layout should always have primary display item!"];

          v218 = 0;
        }

        v220 = [v936 uniqueIdentifier];
        v221 = [v218 uniqueIdentifier];
        v222 = [v220 isEqualToString:v221];

        if (v222)
        {
          v954 = v936;
        }

        else
        {
          v268 = [v219 bundleIdentifier];
          v269 = [v219 uniqueIdentifier];
          v954 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v268 uniqueIdentifier:v269 displayIdentity:v905];
        }

        v232 = v219;
        v957 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v956 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        v958 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
        goto LABEL_409;
      }

      v227 = [v97 itemForLayoutRole:1];
      v228 = v227;
      if (!v227)
      {
        v894 = [MEMORY[0x277CCA890] currentHandler];
        [v894 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:937 description:@"App layout should always have primary display item!"];

        v227 = 0;
      }

      v229 = [v936 uniqueIdentifier];
      v230 = [v227 uniqueIdentifier];
      v231 = [v229 isEqualToString:v230];

      if (v231)
      {
        v956 = v936;
      }

      else
      {
        v270 = [v228 bundleIdentifier];
        v271 = [v228 uniqueIdentifier];
        v956 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v270 uniqueIdentifier:v271 displayIdentity:v905];

        v232 = v228;
        if (v956)
        {
          goto LABEL_414;
        }

        v895 = [MEMORY[0x277CCA890] currentHandler];
        [v895 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:943 description:@"Failed to create primary workspace entity from app layout's primary display item!"];

        v956 = 0;
      }

      v232 = v228;
LABEL_414:
      v954 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      v957 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      v958 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
      goto LABEL_409;
    }

    v954 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v957 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v956 = +[(SBWorkspaceEntity *)SBPreviousWorkspaceEntity];
    v958 = v936;
  }

LABEL_147:
  if (!v949)
  {
    v932 = 1;
    v922 = v936;
    v98 = v954;
    goto LABEL_454;
  }

  if (![v958 isPreviousWorkspaceEntity])
  {
    if ([v958 isEmptyWorkspaceEntity])
    {
      v928 = v958;
      goto LABEL_154;
    }

    for (m = 2; m <= SBLayoutRoleMax(); ++m)
    {
      if (SBLayoutRoleIsValidForSplitView(m))
      {
        v101 = [v992 entityForLayoutRole:m];
        if (!v101)
        {
          v101 = [v992 previousEntityForLayoutRole:m];
          if (!v101)
          {
            goto LABEL_176;
          }
        }

        v102 = [v101 isEmptyWorkspaceEntity];

        if (v102)
        {
          goto LABEL_176;
        }
      }
    }

    m = 0;
LABEL_176:
    if (!m)
    {
      v928 = v958;
      goto LABEL_150;
    }

    [v992 setEntity:v958 forLayoutRole:m];
    if (m == 2)
    {
      v114 = v958;

      v957 = v114;
    }
  }

  v928 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

LABEL_150:
  v70 = v1036;
LABEL_154:
  v1005 = [rect_24 windowManagementContext];
  if (![v1005 isFlexibleWindowingEnabled] || (objc_msgSend(v1005, "isAutomaticStageCreationEnabled") & 1) != 0)
  {
    v99 = v957;
    v970 = v954;
    v922 = v936;
    goto LABEL_222;
  }

  v103 = [v992 previousEntities];
  v104 = [v103 bs_compactMap:&__block_literal_global_65_0];

  if ([v936 isApplicationSceneEntity])
  {
    v105 = [v936 uniqueIdentifier];
    v106 = [v104 containsObject:v105];

    if ((v106 & 1) == 0)
    {
      v922 = v936;
      if (([v936 isEmptyWorkspaceEntity] & 1) == 0)
      {
        v922 = v936;
        if (([v936 isPreviousWorkspaceEntity] & 1) == 0)
        {
          [v992 setEntity:v936 forLayoutRole:1];

          v922 = 0;
        }
      }

      v1204 = 0u;
      v1203 = 0u;
      v1202 = 0u;
      v1201 = 0u;
      v115 = [v992 previousEntities];
      v116 = [v115 countByEnumeratingWithState:&v1201 objects:v1248 count:16];
      if (v116)
      {
        v117 = *v1202;
        do
        {
          for (n = 0; n != v116; ++n)
          {
            if (*v1202 != v117)
            {
              objc_enumerationMutation(v115);
            }

            v119 = *(*(&v1201 + 1) + 8 * n);
            if (([v119 isHomeScreenEntity] & 1) == 0 && (objc_msgSend(v119, "isPreviousWorkspaceEntity") & 1) == 0 && (objc_msgSend(v119, "isEmptyWorkspaceEntity") & 1) == 0)
            {
              v120 = [v992 entities];
              v121 = [v120 containsObject:v119];

              if ((v121 & 1) == 0)
              {
                for (ii = 1; ii <= SBLayoutRoleMax(); ++ii)
                {
                  if (SBLayoutRoleIsValidForSplitView(ii))
                  {
                    v123 = [v992 entityForLayoutRole:ii];
                    v124 = v123;
                    if (!v123)
                    {
                      goto LABEL_202;
                    }

                    v125 = [v123 isEmptyWorkspaceEntity];

                    if (v125)
                    {
                      goto LABEL_202;
                    }
                  }
                }

                ii = 0;
LABEL_202:
                if (ii)
                {
                  [v992 setEntity:v119 forLayoutRole:ii];
                }
              }
            }
          }

          v116 = [v115 countByEnumeratingWithState:&v1201 objects:v1248 count:16];
        }

        while (v116);
      }

      v126 = [v992 entityForLayoutRole:1];
      v127 = v126;
      if (v126)
      {
        v970 = v126;
        v128 = v954;
      }

      else
      {
        v970 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v128 = v970;
      }

      v129 = [v992 entityForLayoutRole:2];
      v130 = v129;
      if (v129)
      {
        v99 = v129;
        v131 = v957;
      }

      else
      {
        v99 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v131 = v99;
      }

      v132 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v133 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v134 = [v970 isEmptyWorkspaceEntity];
      v135 = 3;
      if (v134)
      {
        v135 = 1;
      }

      v1036 = v135;
      v928 = v132;
      v956 = v133;
      goto LABEL_221;
    }
  }

  if (v936)
  {
    v99 = v957;
    v970 = v954;
  }

  else
  {
    if (v954)
    {
      if ([v954 isDeviceApplicationSceneEntity])
      {
        v107 = [v954 uniqueIdentifier];
        v108 = [v104 containsObject:v107];

        if ((v108 & 1) == 0)
        {
          v109 = [v954 displayItemRepresentation];
          if (v109)
          {
            v110 = [v1043 _recentAppLayouts];
            v111 = [v109 bundleIdentifier];
            v112 = [v110 recentDisplayItemsForBundleIdentifier:v111 includingHiddenAppLayouts:0];
            v113 = [v112 containsObject:v109];

            if ((v113 & 1) == 0)
            {
              [v992 _setRequestedFrontmostEntity:v954];
            }
          }
        }
      }

      v922 = 0;
      v99 = v957;
      v970 = v954;
      goto LABEL_221;
    }

    v99 = v957;
    v970 = 0;
  }

  v922 = v936;
LABEL_221:

  v70 = v1036;
LABEL_222:
  if (v1046 && [rect_16 unlockedEnvironmentMode] == 3 && v1012 != 1 && (v975 - 52) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v136 = v99;
    if (v70 == 1)
    {
      goto LABEL_230;
    }

    if (!v70)
    {
      v137 = [v992 entities];
      if (![v137 count])
      {
        v70 = 0;
LABEL_249:

        v99 = v136;
        goto LABEL_250;
      }

      v138 = [v992 entities];
      v139 = [v138 bs_containsObjectPassingTest:&__block_literal_global_69_0];

      if (v139)
      {
LABEL_230:
        if (v1218[5])
        {
          if (v938)
          {
            v140 = v1003;
          }

          else
          {
            v140 = [v1003 setByAddingObject:?];
          }

          v146 = [rect_16 appLayout];
          v147 = [v146 allItems];
          v1199[0] = MEMORY[0x277D85DD0];
          v1199[1] = 3221225472;
          v1199[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_5_70;
          v1199[3] = &unk_2783A8C90;
          v142 = v140;
          v1200 = v142;
          v143 = [v147 bs_filter:v1199];

          v148 = [v142 count];
          if (v148 != [v143 count])
          {
            v149 = [v142 mutableCopy];
            v150 = [v143 bs_set];
            [v149 minusSet:v150];

            v151 = [v149 bs_array];
            v152 = [v143 arrayByAddingObjectsFromArray:v151];

            v143 = v152;
          }

          v1197[0] = MEMORY[0x277D85DD0];
          v1197[1] = 3221225472;
          v1197[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_6;
          v1197[3] = &unk_2783B9DC8;
          v1197[4] = v1043;
          v1198 = v905;
          v137 = [v143 bs_compactMap:v1197];
          v144 = &v1200;
          v145 = &v1198;
        }

        else
        {
          v141 = [rect_16 appLayout];
          v142 = [v141 allItems];

          v1195[0] = MEMORY[0x277D85DD0];
          v1195[1] = 3221225472;
          v1195[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_7;
          v1195[3] = &unk_2783A8C90;
          v1196 = v1003;
          v143 = [v142 bs_filter:v1195];
          v1193[0] = MEMORY[0x277D85DD0];
          v1193[1] = 3221225472;
          v1193[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_8;
          v1193[3] = &unk_2783B9DC8;
          v1193[4] = v1043;
          v1194 = v905;
          v137 = [v143 bs_compactMap:v1193];
          v144 = &v1196;
          v145 = &v1194;
        }

        if ([v137 count])
        {
          [v992 setEntities:v137 withPolicy:0 centerEntity:0 floatingEntity:0];
          v153 = [v992 entityForLayoutRole:1];
          v154 = v153;
          if (v153)
          {
            v155 = v153;
            v156 = v970;
          }

          else
          {
            v155 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

            v156 = v155;
          }

          v157 = [v992 entityForLayoutRole:2];
          v158 = v157;
          if (v157)
          {
            v159 = v157;
          }

          else
          {
            v159 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

            v136 = v159;
          }

          v1012 = 2;
          v70 = 1;
          v136 = v159;
          v970 = v155;
        }

        else
        {
          v70 = 1;
        }

        goto LABEL_249;
      }

      v99 = v136;
      v70 = 0;
    }
  }

LABEL_250:
  v1048 = v99;
  if (SBPeekConfigurationIsValid(v1012) && !SBPeekConfigurationIsValid(v937))
  {
    v161 = [v1005 isFlexibleWindowingEnabled];
    if (v70)
    {
      v162 = v161;
    }

    else
    {
      v162 = 0;
    }

    if (v162)
    {
      v1037 = v70;
    }

    else
    {
      v172 = [v1043 _recentAppLayouts];
      v173 = [v172 recentsIncludingHiddenAppLayouts:0];
      v174 = [v173 count] < 2;

      v175 = 1;
      if (!v174)
      {
        v175 = 2;
      }

      v1037 = v175;
    }

    goto LABEL_451;
  }

  v932 = 1;
  v1037 = v70;
  if (v1012 == 1 || v70 == 2)
  {
    goto LABEL_259;
  }

  if (v1012)
  {
    goto LABEL_255;
  }

  if (SBPeekConfigurationIsValid(v937))
  {
    v163 = [v992 entities];
    v959 = [v163 objectsPassingTest:&__block_literal_global_73];

    v164 = [v992 previousEntities];
    if (BSEqualSets())
    {
      v165 = [v992 previousEntities];
      v166 = [v992 activatingEntity];
      v167 = [v165 containsObject:v166];

      if ((v167 & 1) == 0)
      {
        v1192 = 0u;
        v1191 = 0u;
        v1190 = 0u;
        v1189 = 0u;
        v168 = [v992 previousEntities];
        v169 = [v168 countByEnumeratingWithState:&v1189 objects:v1247 count:16];
        if (v169)
        {
          v170 = *v1190;
          do
          {
            for (jj = 0; jj != v169; ++jj)
            {
              if (*v1190 != v170)
              {
                objc_enumerationMutation(v168);
              }

              [v992 setEntity:*(*(&v1189 + 1) + 8 * jj) forLayoutRole:{objc_msgSend(*(*(&v1189 + 1) + 8 * jj), "layoutRole")}];
            }

            v169 = [v168 countByEnumeratingWithState:&v1189 objects:v1247 count:16];
          }

          while (v169);
        }

LABEL_300:
        v1012 = v937;
LABEL_442:

        v282 = [v992 entityForLayoutRole:1];
        v283 = v282;
        if (v282)
        {
          v284 = v282;
          v285 = v970;
        }

        else
        {
          v284 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

          v285 = v284;
        }

        v286 = [v992 entityForLayoutRole:2];
        v287 = v1048;
        v288 = v286;
        if (v286)
        {
          v289 = v286;
        }

        else
        {
          v289 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

          v287 = v289;
        }

        v290 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v291 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

        v292 = [v284 isEmptyWorkspaceEntity];
        v293 = v1037;
        if (v292)
        {
          v293 = 1;
        }

        v1037 = v293;

        v922 = 0;
        v928 = v290;
        v956 = v291;
        v1048 = v289;
        v970 = v284;
        goto LABEL_451;
      }
    }

    else
    {
    }

    if ((!v970 || [v970 isPreviousWorkspaceEntity]) && (!v922 || objc_msgSend(v922, "isPreviousWorkspaceEntity")))
    {
      v1188 = 0u;
      v1187 = 0u;
      v1186 = 0u;
      v1185 = 0u;
      v168 = [v992 previousEntities];
      v181 = [v168 countByEnumeratingWithState:&v1185 objects:v1246 count:16];
      if (v181)
      {
        v182 = *v1186;
        do
        {
          for (kk = 0; kk != v181; ++kk)
          {
            if (*v1186 != v182)
            {
              objc_enumerationMutation(v168);
            }

            [v992 setEntity:*(*(&v1185 + 1) + 8 * kk) forLayoutRole:{objc_msgSend(*(*(&v1185 + 1) + 8 * kk), "layoutRole")}];
          }

          v181 = [v168 countByEnumeratingWithState:&v1185 objects:v1246 count:16];
        }

        while (v181);
      }

      goto LABEL_300;
    }

    if ([v922 isHomeScreenEntity])
    {
      if (v934 == 1)
      {
        if (([rect_24 _homeScreenIsOnFirstPage] & 1) == 0)
        {
          v1180 = 0u;
          v1179 = 0u;
          v1178 = 0u;
          v1177 = 0u;
          v184 = [v992 previousEntities];
          v272 = [v184 countByEnumeratingWithState:&v1177 objects:v1244 count:16];
          if (v272)
          {
            v273 = *v1178;
            do
            {
              for (mm = 0; mm != v272; ++mm)
              {
                if (*v1178 != v273)
                {
                  objc_enumerationMutation(v184);
                }

                [v992 setEntity:*(*(&v1177 + 1) + 8 * mm) forLayoutRole:{objc_msgSend(*(*(&v1177 + 1) + 8 * mm), "layoutRole")}];
              }

              v272 = [v184 countByEnumeratingWithState:&v1177 objects:v1244 count:16];
            }

            while (v272);
          }

          goto LABEL_422;
        }
      }

      else if (v934 == 2)
      {
        v1184 = 0u;
        v1183 = 0u;
        v1182 = 0u;
        v1181 = 0u;
        v184 = [v992 previousEntities];
        v185 = [v184 countByEnumeratingWithState:&v1181 objects:v1245 count:16];
        if (v185)
        {
          v186 = *v1182;
          do
          {
            for (nn = 0; nn != v185; ++nn)
            {
              if (*v1182 != v186)
              {
                objc_enumerationMutation(v184);
              }

              [v992 setEntity:*(*(&v1181 + 1) + 8 * nn) forLayoutRole:{objc_msgSend(*(*(&v1181 + 1) + 8 * nn), "layoutRole")}];
            }

            v185 = [v184 countByEnumeratingWithState:&v1181 objects:v1245 count:16];
          }

          while (v185);
        }

LABEL_422:

        [v992 setActivatingEntity:0];
        v1037 = 1;
        v168 = v922;
        v200 = v937;
        goto LABEL_423;
      }

      v1037 = 1;
      v168 = v922;
      v200 = 1;
LABEL_423:
      v1012 = v200;
      v922 = 0;
      goto LABEL_442;
    }

    v188 = [rect_16 appLayout];
    v189 = [v188 allItems];
    if ([v189 count] == 1)
    {
      v190 = [rect_16 appLayout];
      v191 = [v190 allItems];
      v192 = [v191 firstObject];
      v193 = BSEqualObjects();

      if (v193)
      {
        if (([v970 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v970, "isPreviousWorkspaceEntity") & 1) == 0)
        {
          [v992 setEntity:v970 forLayoutRole:1];
        }

        if (([v1048 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v1048, "isPreviousWorkspaceEntity") & 1) == 0)
        {
          [v992 setEntity:v1048 forLayoutRole:2];
        }

        goto LABEL_426;
      }
    }

    else
    {
    }

    if (!v922 || ([v922 isEmptyWorkspaceEntity] & 1) != 0 || (objc_msgSend(v922, "isPreviousWorkspaceEntity") & 1) != 0)
    {
      if (!v970)
      {
        goto LABEL_426;
      }

      v195 = [v970 displayItemRepresentation];
      if (v195)
      {
        v196 = [v1043 _recentAppLayouts];
        v197 = [v195 bundleIdentifier];
        v198 = [v196 recentDisplayItemsForBundleIdentifier:v197 includingHiddenAppLayouts:0];
        v199 = [v198 containsObject:v195];

        if ((v199 & 1) == 0)
        {
          [v992 _setRequestedFrontmostEntity:v970];
        }
      }
    }

    else
    {
      [v992 setEntity:v922 forLayoutRole:1];
      v195 = v922;
      v922 = 0;
    }

LABEL_426:
    v1176 = 0u;
    v1175 = 0u;
    v1174 = 0u;
    v1173 = 0u;
    v168 = [v992 previousEntities];
    v275 = [v168 countByEnumeratingWithState:&v1173 objects:v1243 count:16];
    if (v275)
    {
      v276 = *v1174;
      v1012 = 1;
      v1037 = 3;
      do
      {
        for (i1 = 0; i1 != v275; ++i1)
        {
          if (*v1174 != v276)
          {
            objc_enumerationMutation(v168);
          }

          v278 = *(*(&v1173 + 1) + 8 * i1);
          if (([v278 isHomeScreenEntity] & 1) == 0 && (objc_msgSend(v278, "isPreviousWorkspaceEntity") & 1) == 0 && (objc_msgSend(v278, "isEmptyWorkspaceEntity") & 1) == 0)
          {
            v279 = [v992 entities];
            v280 = [v279 containsObject:v278];

            if ((v280 & 1) == 0)
            {
              v1252.a = 0.0;
              *&v1252.b = &v1252;
              *&v1252.c = 0x2020000000uLL;
              v1170[0] = MEMORY[0x277D85DD0];
              v1170[1] = 3221225472;
              v1170[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_10;
              v1170[3] = &unk_2783B9DF0;
              v1172 = &v1252;
              v281 = v992;
              v1171 = v281;
              SBLayoutRoleEnumerateValidRoles(v1170);
              if (*(*&v1252.b + 24))
              {
                [v281 setEntity:v278 forLayoutRole:?];
              }

              _Block_object_dispose(&v1252, 8);
            }
          }
        }

        v275 = [v168 countByEnumeratingWithState:&v1173 objects:v1243 count:16];
      }

      while (v275);
    }

    else
    {
      v1012 = 1;
      v1037 = 3;
    }

    goto LABEL_442;
  }

  if (!SBPeekConfigurationIsValid(v937))
  {
    if (([v970 isHomeScreenEntity] & 1) != 0 || ((v176 = objc_msgSend(v970, "isEmptyWorkspaceEntity"), v934 != 1) ? (v177 = v176) : (v177 = 0), v177 == 1))
    {
      if ([v1005 restoresPreviouslyOpenWindows])
      {
        if (v1218[5])
        {
          v178 = [rect_16 appLayout];
          v179 = [v178 containsItem:v1218[5]];

          v180 = v179 & (v938 ^ 1);
        }

        else
        {
          v180 = 0;
        }

        v932 = 1;
        if (!(([v1003 count] != 0) | v180 & 1) || (v934 & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          goto LABEL_259;
        }

        [v992 setRestoresDesktopSpacesImmediately:1];
        v160 = 3;
        goto LABEL_258;
      }
    }
  }

LABEL_255:
  if (!SBPeekConfigurationIsValid(v1012) || !SBPeekConfigurationIsValid(v937))
  {
    v160 = 1;
LABEL_258:
    v932 = v160;
    goto LABEL_259;
  }

LABEL_451:

  if (v1012)
  {
    v932 = v1012;
    goto LABEL_453;
  }

  v1005 = [MEMORY[0x277CCA890] currentHandler];
  [v1005 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1345 description:@"Peek configuration should not be undefined at this point"];
  v932 = 0;
LABEL_259:

LABEL_453:
  v98 = v970;
  v957 = v1048;
  v958 = v928;
  v70 = v1037;
LABEL_454:
  v1038 = v70;
  v955 = v98;
  if (!v98)
  {
    v868 = [MEMORY[0x277CCA890] currentHandler];
    [v868 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1349 description:@"Primary workspace entity may not be nil at this point!"];
  }

  if (!v957)
  {
    v869 = [MEMORY[0x277CCA890] currentHandler];
    [v869 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1350 description:@"Side workspace entity may not be nil at this point!"];
  }

  if (!v956)
  {
    v870 = [MEMORY[0x277CCA890] currentHandler];
    [v870 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1351 description:@"Floating workspace entity may not be nil at this point!"];
  }

  if (!v958)
  {
    v871 = [MEMORY[0x277CCA890] currentHandler];
    [v871 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1352 description:@"Center workspace entity may not be nil at this point!"];
  }

  if ([v955 isPreviousWorkspaceEntity])
  {
    v294 = (v919)[2](v919, v955, v910);

    v955 = v294;
  }

  if ([v957 isPreviousWorkspaceEntity])
  {
    v295 = (v919)[2](v919, v957, v907);

    v957 = v295;
  }

  if ([v956 isPreviousWorkspaceEntity])
  {
    v296 = (v919)[2](v919, v956, v908);

    v956 = v296;
  }

  if ([v958 isPreviousWorkspaceEntity])
  {
    v297 = (v919)[2](v919, v958, v906);

    v958 = v297;
  }

  v298 = [v992 entityForLayoutRole:1];
  v299 = v298 == v955;

  if (!v299)
  {
    [v992 setEntity:v955 forLayoutRole:1];
  }

  v300 = [v992 entityForLayoutRole:2];
  v301 = v300 == v957;

  if (!v301)
  {
    [v992 setEntity:v957 forLayoutRole:2];
  }

  v302 = [v992 entityForLayoutRole:3];
  v303 = v302 == v956;

  if (!v303)
  {
    [v992 setEntity:v956 forLayoutRole:3];
  }

  v304 = [v992 entityForLayoutRole:4];
  v305 = v304 == v958;

  if (!v305)
  {
    [v992 setEntity:v958 forLayoutRole:4];
  }

  if (!v936)
  {
    v306 = SBLayoutRoleSetAll();
    v1167[0] = MEMORY[0x277D85DD0];
    v1167[1] = 3221225472;
    v1167[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_11;
    v1167[3] = &unk_2783B9E18;
    v1168 = v992;
    v1169 = v919;
    [v306 enumerateRolesUsingBlock:v1167];
  }

  if ((v1011 & 1) == 0 || (v946 & 1) != 0 || ![v1003 count])
  {
    v969 = 0;
    goto LABEL_489;
  }

  v1252.a = 0.0;
  *&v1252.b = &v1252;
  *&v1252.c = 0x2020000000;
  LOBYTE(v1252.d) = 0;
  v1164[0] = MEMORY[0x277D85DD0];
  v1164[1] = 3221225472;
  v1164[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_12;
  v1164[3] = &unk_2783B9E40;
  v307 = v992;
  v1165 = v307;
  v1166 = &v1252;
  v1049 = MEMORY[0x223D6F7F0](v1164);
  v308 = [v307 restoresDesktopSpacesImmediately];
  if ([rect_24 _restoreDesktopSpaceAfterClosingFullScreenSpace] && objc_msgSend(v1003, "count"))
  {
    if ([v955 isHomeScreenEntity])
    {
      if (v934 != 3)
      {
        goto LABEL_550;
      }
    }

    else
    {
      v339 = [v955 isEmptyWorkspaceEntity];
      if (v934 == 3)
      {
        v340 = v339;
      }

      else
      {
        v340 = 0;
      }

      if ((v340 & 1) == 0)
      {
        goto LABEL_550;
      }
    }

    v341 = [rect_16 appLayout];
    if (([v341 containsAnyItemFromSet:v1003] & 1) == 0)
    {
      v783 = [v307 previousEntities];
      v1162[0] = MEMORY[0x277D85DD0];
      v1162[1] = 3221225472;
      v1162[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_13;
      v1162[3] = &unk_2783B65A8;
      v1163 = v307;
      v784 = [v783 bs_containsObjectPassingTest:v1162];

      if (v915)
      {
        v785 = [v341 containsItem:?];
      }

      else
      {
        v785 = 0;
      }

      v797 = v784 | v785;
      v798 = v932;
      if ((v784 | v785))
      {
        v798 = 1;
      }

      v932 = v798;

      if ((v797 | v308))
      {
        goto LABEL_584;
      }

      goto LABEL_551;
    }
  }

LABEL_550:
  if (v308)
  {
LABEL_584:
    v1152 = 0u;
    v1151 = 0u;
    v1150 = 0u;
    v1149 = 0u;
    v363 = v1003;
    v364 = [v363 countByEnumeratingWithState:&v1149 objects:v1240 count:16];
    if (v364)
    {
      v969 = 0;
      v365 = *v1150;
      do
      {
        for (i2 = 0; i2 != v364; ++i2)
        {
          if (*v1150 != v365)
          {
            objc_enumerationMutation(v363);
          }

          v367 = *(*(&v1149 + 1) + 8 * i2);
          v368 = [v367 bundleIdentifier];
          v369 = [v367 uniqueIdentifier];
          v370 = [rect_24 displayIdentity];
          v371 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v368 uniqueIdentifier:v369 displayIdentity:v370];

          if (v371)
          {
            v372 = [v307 entities];
            v373 = [v372 containsObject:v371];

            if ((v373 & 1) == 0)
            {
              (v1049)[2](v1049, v371);
              v374 = v969;
              if (!v969)
              {
                v374 = objc_opt_new();
              }

              v969 = v374;
              [v374 addObject:v371];
            }
          }
        }

        v364 = [v363 countByEnumeratingWithState:&v1149 objects:v1240 count:16];
      }

      while (v364);
    }

    else
    {
      v969 = 0;
    }

    goto LABEL_599;
  }

LABEL_551:
  v1013 = [rect_16 layoutAttributesMap];
  v342 = [rect_16 appLayout];
  v916 = [v342 allItems];

  v1161 = 0u;
  v1160 = 0u;
  v1159 = 0u;
  v1158 = 0u;
  obj = [v307 entities];
  v343 = [obj countByEnumeratingWithState:&v1158 objects:v1242 count:16];
  v344 = obj;
  v345 = v343;
  if (v343)
  {
    v913 = *v1159;
    while (2)
    {
      v346 = 0;
      v911 = v345;
      do
      {
        if (*v1159 != v913)
        {
          objc_enumerationMutation(obj);
        }

        v929 = v346;
        v347 = *(*(&v1158 + 1) + 8 * v346);
        v348 = [v347 deviceApplicationSceneEntity];
        if (v348)
        {
          v349 = [v307 requestedLayoutAttributesForEntity:v347];
          v1157[0] = MEMORY[0x277D85DD0];
          v1157[1] = 3221225472;
          v1157[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_14;
          v1157[3] = &unk_2783A8C90;
          v1157[4] = v347;
          if ([v916 bs_containsObjectPassingTest:v1157])
          {
            v1156 = 0u;
            v1155 = 0u;
            v1154 = 0u;
            v1153 = 0u;
            v350 = v916;
            v351 = [v350 countByEnumeratingWithState:&v1153 objects:v1241 count:16];
            v1006 = v349;
            v972 = v348;
            if (v351)
            {
              v352 = *v1154;
              while (2)
              {
                for (i3 = 0; i3 != v351; ++i3)
                {
                  if (*v1154 != v352)
                  {
                    objc_enumerationMutation(v350);
                  }

                  v354 = *(*(&v1153 + 1) + 8 * i3);
                  v355 = [v347 uniqueIdentifier];
                  v356 = [v354 uniqueIdentifier];
                  v357 = [v355 isEqual:v356];

                  if (v357)
                  {
                    v358 = [v1013 objectForKey:v354];
                    if ([rect_24 _isDisplayItemFullScreen:v354 preferredAttributes:v358])
                    {
                      v359 = [SBDisplayItem displayItemForWorkspaceEntity:v972];
                      if (v1006 && ([rect_24 _isDisplayItemFullScreen:v359 preferredAttributes:v1006] & 1) == 0)
                      {

                        v348 = v972;
                        goto LABEL_583;
                      }
                    }
                  }
                }

                v351 = [v350 countByEnumeratingWithState:&v1153 objects:v1241 count:16];
                if (v351)
                {
                  continue;
                }

                break;
              }
            }

            v348 = v972;
          }

          else
          {
            v360 = [SBDisplayItem displayItemForWorkspaceEntity:v348];
            v361 = v360;
            if (v349)
            {
              v362 = [rect_24 _isDisplayItemFullScreen:v360 preferredAttributes:v349];

              if ((v362 & 1) == 0)
              {
LABEL_583:

                goto LABEL_584;
              }
            }

            else
            {
            }
          }
        }

        v346 = v929 + 1;
      }

      while (v929 + 1 != v911);
      v345 = [obj countByEnumeratingWithState:&v1158 objects:v1242 count:16];
      v344 = obj;
      if (v345)
      {
        continue;
      }

      break;
    }
  }

  if (!SBPeekConfigurationIsValid(v937) && ([v955 isHomeScreenEntity] & 1) == 0 && !((v934 != 1) | SBPeekConfigurationIsValid(v932)))
  {
    [v307 setSettlesMultiAppFullScreenSpacesImmediately:1];
    goto LABEL_584;
  }

  v969 = 0;
LABEL_599:
  if (*(*&v1252.b + 24) == 1)
  {
    v375 = [v307 entityForLayoutRole:1];
    v376 = v375;
    if (v375)
    {
      v377 = v375;
      v378 = v955;
    }

    else
    {
      v377 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v378 = v377;
    }

    v380 = [v307 entityForLayoutRole:2];
    v381 = v380;
    if (v380)
    {
      v379 = v380;
      v382 = v957;
    }

    else
    {
      v379 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v382 = v379;
    }

    v383 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v384 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v385 = [v377 isEmptyWorkspaceEntity];
    if (v932 == 1)
    {
      v386 = v385;
    }

    else
    {
      v386 = 1;
    }

    v327 = v386 == 0;
    v387 = 3;
    if (!v327)
    {
      v387 = 1;
    }

    v1038 = v387;
    v958 = v383;
    v956 = v384;
  }

  else
  {
    v379 = v957;
    v377 = v955;
  }

  _Block_object_dispose(&v1252, 8);
  v957 = v379;
  v955 = v377;
  v70 = v1038;
LABEL_489:
  v309 = v1218[5];
  v1036 = v70;
  if (v309)
  {
    v310 = [v309 uniqueIdentifier];
    v311 = v70;
    if (!v70)
    {
      if (([v955 isHomeScreenEntity] & 1) != 0 || SBPeekConfigurationIsValid(v932))
      {
        v311 = 1;
      }

      else
      {
        v311 = 3;
      }
    }

    if ([rect_16 unlockedEnvironmentMode] == 3 && v311 == 3)
    {
      v312 = [v992 entityForIdentifier:v310];
      if (v312)
      {
        goto LABEL_619;
      }

      v312 = [rect_16 elementWithIdentifier:v310];
      if ((v312 == 0) | v938 & 1)
      {
        goto LABEL_619;
      }

      v313 = BSEqualObjects();

      if ((v313 & 1) == 0)
      {
        for (i4 = 1; i4 <= SBLayoutRoleMax(); ++i4)
        {
          IsValidForSplitView = SBLayoutRoleIsValidForSplitView(i4);
          if (i4 == 3)
          {
            v316 = 0;
          }

          else
          {
            v316 = IsValidForSplitView;
          }

          if (v316 == 1)
          {
            v317 = [v992 entityForLayoutRole:i4];
            v318 = v317;
            if (!v317)
            {
              goto LABEL_615;
            }

            v319 = [v317 isEmptyWorkspaceEntity];

            if (v319)
            {
              goto LABEL_615;
            }
          }
        }

        i4 = 0;
LABEL_615:
        v312 = [v992 previousEntityForIdentifier:v310];
        if (i4)
        {
          [v992 setEntity:v312 forLayoutRole:i4];
          goto LABEL_617;
        }

        goto LABEL_619;
      }

      goto LABEL_620;
    }

    if ([rect_16 unlockedEnvironmentMode] == 2 && v311 == 3)
    {
      v320 = [v992 entityForIdentifier:v310];
      v321 = v320 != 0;

      if (((v321 | v938) & 1) == 0)
      {
        for (i4 = 1; i4 <= SBLayoutRoleMax(); ++i4)
        {
          v322 = SBLayoutRoleIsValidForSplitView(i4);
          if (i4 == 3)
          {
            v323 = 0;
          }

          else
          {
            v323 = v322;
          }

          if (v323 == 1)
          {
            v324 = [v992 entityForLayoutRole:i4];
            v325 = v324;
            if (!v324)
            {
              goto LABEL_542;
            }

            v326 = [v324 isEmptyWorkspaceEntity];

            if (v326)
            {
              goto LABEL_542;
            }
          }
        }

        i4 = 0;
LABEL_542:
        if (i4)
        {
          v337 = [v1218[5] bundleIdentifier];
          v338 = [rect_24 displayIdentity];
          v312 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v337 uniqueIdentifier:v310 displayIdentity:v338];

          [v992 setEntity:v312 forLayoutRole:i4];
          goto LABEL_617;
        }
      }

      goto LABEL_620;
    }

    v327 = [rect_16 unlockedEnvironmentMode] == 2 && v311 == 1;
    v328 = !v327;
    if (((v328 | v938) & 1) == 0)
    {
      v312 = [rect_16 appLayout];
      if (![v312 containsItem:v1218[5]])
      {
        goto LABEL_619;
      }

      IsValid = SBPeekConfigurationIsValid(v932);

      if (IsValid)
      {
        v330 = [v992 entityForIdentifier:v310];
        v331 = v330 == 0;

        if (v331)
        {
          for (i4 = 1; ; ++i4)
          {
            if (i4 > SBLayoutRoleMax())
            {
              i4 = 0;
              goto LABEL_1246;
            }

            v332 = SBLayoutRoleIsValidForSplitView(i4);
            if (i4 == 3)
            {
              v333 = 0;
            }

            else
            {
              v333 = v332;
            }

            if (v333 == 1)
            {
              v334 = [v992 entityForLayoutRole:i4];
              v335 = v334;
              if (!v334 || ([v334 isEmptyWorkspaceEntity] & 1) != 0)
              {

LABEL_1246:
                v312 = [v992 previousEntityForIdentifier:v310];
                if (i4)
                {
                  [v992 setEntity:v312 forLayoutRole:i4];
                  if (i4 == 1)
                  {
                    v859 = v312;

                    v955 = v859;
                  }

LABEL_617:
                  if (i4 == 2)
                  {
                    v388 = v312;

                    v957 = v388;
                  }
                }

LABEL_619:

                break;
              }

              v336 = [v335 isHomeScreenEntity];

              if (v336)
              {
                goto LABEL_1246;
              }
            }
          }
        }
      }
    }

LABEL_620:

    v70 = v1036;
  }

  if (!v955)
  {
    v872 = [MEMORY[0x277CCA890] currentHandler];
    [v872 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1605 description:@"Primary workspace entity may not be nil at this point!"];

    v70 = v1036;
  }

  if (!v957)
  {
    v873 = [MEMORY[0x277CCA890] currentHandler];
    [v873 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1606 description:@"Side workspace entity may not be nil at this point!"];

    v70 = v1036;
  }

  if (!v956)
  {
    v874 = [MEMORY[0x277CCA890] currentHandler];
    [v874 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1607 description:@"Floating workspace entity may not be nil at this point!"];

    v70 = v1036;
  }

  if (!v958)
  {
    v875 = [MEMORY[0x277CCA890] currentHandler];
    [v875 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1608 description:@"Center workspace entity may not be nil at this point!"];

    v70 = v1036;
  }

  if ([v955 isPreviousWorkspaceEntity])
  {
    v876 = [MEMORY[0x277CCA890] currentHandler];
    [v876 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1610 description:@"Primary workspace entity may not be previous entity at this point!"];

    v70 = v1036;
  }

  if ([v957 isPreviousWorkspaceEntity])
  {
    v877 = [MEMORY[0x277CCA890] currentHandler];
    [v877 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1611 description:@"Side workspace entity may not be previous entity at this point!"];

    v70 = v1036;
  }

  if ([v956 isPreviousWorkspaceEntity])
  {
    v878 = [MEMORY[0x277CCA890] currentHandler];
    [v878 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1612 description:@"Floating workspace entity may not be previous entity at this point!"];

    v70 = v1036;
  }

  if ([v958 isPreviousWorkspaceEntity])
  {
    v879 = [MEMORY[0x277CCA890] currentHandler];
    [v879 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1613 description:@"Center workspace entity may not be previous entity at this point!"];

    v70 = v1036;
  }

  if ([v958 isApplicationSceneEntity] && objc_msgSend(v955, "isEmptyWorkspaceEntity") && objc_msgSend(v957, "isEmptyWorkspaceEntity"))
  {
    v389 = [v958 applicationSceneEntity];
    v390 = [v389 application];
    v391 = [v390 bundleIdentifier];

    v392 = MEMORY[0x277CBEB98];
    v393 = [v958 uniqueIdentifier];
    v394 = [v392 setWithObject:v393];
    v395 = [v1043 _mostRecentAppLayoutForBundleIdentifier:v391 ignoringUniqueIdentifiers:v394 inMedusaOnStageManagerCapableDevice:v994 multitaskingSupported:v997 != 0];

    if (v395)
    {
      v396 = [v395 itemForLayoutRole:1];
      v397 = [v396 bundleIdentifier];
      v398 = [v396 uniqueIdentifier];
      v399 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v397 uniqueIdentifier:v398 displayIdentity:v905];

      v955 = v399;
    }

    else
    {
      v400 = [v1043 _sceneManagerForDisplayIdentity:v905];
      v396 = [v400 newSceneIdentifierForBundleIdentifier:v391];

      [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v391 uniqueIdentifier:v396 displayIdentity:v905];
      v955 = v397 = v955;
    }

    v401 = [v395 itemForLayoutRole:2];
    v402 = [v401 bundleIdentifier];
    v403 = [v401 uniqueIdentifier];
    v404 = [v1043 _applicationSceneEntityFromApplicationBundleIdentifier:v402 uniqueIdentifier:v403 displayIdentity:v905];

    SBMainDisplayLayoutStateSpaceConfigurationFromAppLayoutConfiguration([v395 configuration]);
    v957 = v404;
    v70 = v1036;
  }

  if (([v955 isEmptyWorkspaceEntity] & 1) != 0 || objc_msgSend(v955, "isHomeScreenEntity"))
  {
    if (!SBPeekConfigurationIsValid(v932))
    {
      v405 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v406 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v957 = v405;
      v958 = v406;
      v70 = v1036;
    }

    if (v70 != 2 && !SBPeekConfigurationIsValid(v932))
    {
      if ([rect_16 unlockedEnvironmentMode] == 2 && (objc_msgSend(v956, "isEmptyWorkspaceEntity") & 1) == 0 && (objc_msgSend(v956, "isHomeScreenEntity") & 1) == 0)
      {
        v407 = v956;

        v955 = v407;
      }

      v408 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

      v956 = v408;
    }
  }

  if (([v958 isEmptyWorkspaceEntity] & 1) == 0 && ((SBWorkspaceEntitiesAreAnalagous(v958, v955) & 1) != 0 || (SBWorkspaceEntitiesAreAnalagous(v958, v957) & 1) != 0 || SBWorkspaceEntitiesAreAnalagous(v958, v956)))
  {
    v409 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v958 = v409;
  }

  if (([v957 isEmptyWorkspaceEntity] & 1) == 0 && SBWorkspaceEntitiesAreAnalagous(v957, v955))
  {
    v410 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v957 = v410;
  }

  if (([v956 isEmptyWorkspaceEntity] & 1) == 0 && ((SBWorkspaceEntitiesAreAnalagous(v956, v955) & 1) != 0 || SBWorkspaceEntitiesAreAnalagous(v956, v957)))
  {
    v411 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v956 = v411;
  }

  if (([v957 isEmptyWorkspaceEntity] & 1) == 0 && (!objc_msgSend(v955, "supportsSplitView") || (objc_msgSend(v957, "supportsSplitView") & 1) == 0))
  {
    if ([v957 isEqual:v936])
    {
      v412 = v957;

      v955 = v412;
    }

    v413 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v957 = v413;
  }

  if (([v956 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v956, "supportsPresentationAtAnySize") & 1) == 0)
  {
    v414 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v956 = v414;
  }

  if (([v958 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v958, "supportsPresentationAtAnySize") & 1) == 0)
  {
    v415 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v958 = v415;
  }

  v416 = [v957 isEmptyWorkspaceEntity];
  if (v997)
  {
    v417 = 1;
  }

  else
  {
    v417 = v416;
  }

  if ((v417 & 1) == 0)
  {
    v418 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v957 = v418;
  }

  v419 = [v956 isEmptyWorkspaceEntity];
  if (v997)
  {
    v420 = 1;
  }

  else
  {
    v420 = v419;
  }

  if ((v420 & 1) == 0)
  {
    v421 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];

    v956 = v421;
  }

  if (!v955)
  {
    v880 = [MEMORY[0x277CCA890] currentHandler];
    [v880 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1699 description:@"Primary workspace entity may not be nil at this point!"];
  }

  if (!v957)
  {
    v881 = [MEMORY[0x277CCA890] currentHandler];
    [v881 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1700 description:@"Side workspace entity may not be nil at this point!"];
  }

  if (!v956)
  {
    v882 = [MEMORY[0x277CCA890] currentHandler];
    [v882 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1701 description:@"Floating workspace entity may not be nil at this point!"];
  }

  if (!v958)
  {
    v883 = [MEMORY[0x277CCA890] currentHandler];
    [v883 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1702 description:@"Center workspace entity may not be nil at this point!"];
  }

  if ([v955 isPreviousWorkspaceEntity])
  {
    v884 = [MEMORY[0x277CCA890] currentHandler];
    [v884 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1704 description:@"Primary workspace entity may not be previous entity at this point!"];
  }

  if ([v957 isPreviousWorkspaceEntity])
  {
    v885 = [MEMORY[0x277CCA890] currentHandler];
    [v885 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1705 description:@"Side workspace entity may not be previous entity at this point!"];
  }

  if ([v956 isPreviousWorkspaceEntity])
  {
    v886 = [MEMORY[0x277CCA890] currentHandler];
    [v886 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1706 description:@"Floating workspace entity may not be previous entity at this point!"];
  }

  if ([v958 isPreviousWorkspaceEntity])
  {
    v887 = [MEMORY[0x277CCA890] currentHandler];
    [v887 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:1707 description:@"Center workspace entity may not be previous entity at this point!"];
  }

  if ([v955 isEmptyWorkspaceEntity])
  {

    v955 = 0;
  }

  if ([v957 isEmptyWorkspaceEntity])
  {

    v957 = 0;
  }

  if ([v956 isEmptyWorkspaceEntity])
  {

    v956 = 0;
  }

  if ([v958 isEmptyWorkspaceEntity])
  {

    v958 = 0;
  }

  if (!v955)
  {
    v955 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
  }

  if (v957)
  {
    if (SBSpaceConfigurationIsSplitView(rect))
    {
      v422 = rect;
    }

    else
    {
      v422 = v953;
    }

    IsSplitView = SBSpaceConfigurationIsSplitView(v422);
    v424 = 3;
    if (IsSplitView)
    {
      v424 = v422;
    }

    goto LABEL_721;
  }

  if (v955 && ([v955 isHomeScreenEntity] & 1) == 0)
  {
    if (SBPeekConfigurationIsValid(v932))
    {
      if (SBSpaceConfigurationIsValid(rect))
      {
        v670 = rect;
      }

      else
      {
        v670 = v953;
      }

      if (SBSpaceConfigurationIsValid(v670))
      {
        v424 = v670;
      }

      else
      {
        v424 = 1;
      }
    }

    else
    {
      v424 = 1;
    }

LABEL_721:
    v904 = v424;
    goto LABEL_725;
  }

  v904 = 0;
LABEL_725:
  v425 = v961;
  if (v956)
  {
    if (SBFloatingConfigurationIsValid(v926))
    {
      v425 = v926;
    }

    if (v956 == v922 || v956 == v923)
    {
      v426 = SBFloatingConfigurationIsValid(v425);
      if (v425 != 4 && v426)
      {
        if (v425 == 3)
        {
          v425 = 1;
        }
      }

      else
      {
        v425 = 2;
      }
    }

    v429 = SBFloatingConfigurationIsValid(v425);
    v430 = 4;
    if (v429)
    {
      v430 = v425;
    }

    v926 = v430;
    if (SBPeekConfigurationIsValid(v932) && ([v955 isHomeScreenEntity] & 1) == 0)
    {
      IsLeft = SBFloatingConfigurationIsLeft(v926);
      goto LABEL_749;
    }
  }

  else
  {
    if (SBFloatingConfigurationIsStashed(v961) && SBFloatingConfigurationIsValid(v961))
    {
      v926 = v961;
      goto LABEL_752;
    }

    if ([v922 isHomeScreenEntity] && SBFloatingConfigurationIsValid(v961))
    {
      IsLeft = SBFloatingConfigurationIsLeft(v961);
LABEL_749:
      v431 = 3;
      if (!IsLeft)
      {
        v431 = 4;
      }

      v926 = v431;
    }
  }

LABEL_752:
  if (([v956 isEmptyWorkspaceEntity] & 1) == 0 && SBFloatingConfigurationIsStashed(v926))
  {

    v956 = 0;
  }

  if (v958)
  {
    if (SBCenterConfigurationIsValid(v947))
    {
      v432 = v947;
    }

    else
    {
      v432 = v944;
    }

    v912 = v432;
    if (!SBCenterConfigurationIsValid(v432))
    {
      v433 = [v992 request];
      v434 = [v433 centerConfiguration];
      v435 = 1;
      if (v434 == 2)
      {
        v435 = 2;
      }

      v912 = v435;
    }
  }

  else
  {
    v912 = 0;
  }

  v436 = [v958 isEmptyWorkspaceEntity];
  if (v912)
  {
    v437 = 1;
  }

  else
  {
    v437 = v436;
  }

  if ((v437 & 1) == 0)
  {

    goto LABEL_769;
  }

LABEL_770:
  v930 = v1036;
  if (!v1036)
  {
    if (([v955 isHomeScreenEntity] & 1) != 0 || SBPeekConfigurationIsValid(v932))
    {
      v438 = 1;
    }

    else
    {
      v438 = 3;
    }

    v930 = v438;
  }

  IsYes = BSSettingFlagIsYes();
  if (v958)
  {
    v903 = BSSettingFlagIsYes();
  }

  else
  {
    v903 = 0;
  }

  v914 = rect_8;
  v439 = SBPeekConfigurationIsValid([rect_16 peekConfiguration]);
  v440 = [rect_16 unlockedEnvironmentMode];
  v945 = v914;
  if (!v914)
  {
    v441 = v440;
    v442 = v949;
    if (v440 != 2)
    {
      v442 = 0;
    }

    if (((v442 | v439) & 1) != 0 || ![v922 isApplicationSceneEntity])
    {
      v945 = 0;
    }

    else
    {
      v443 = v922;
      v1014 = [v443 application];
      v1050 = [v1014 bundleIdentifier];
      v988 = v441;
      v1007 = v443;
      v444 = [v443 activationSettings];
      v445 = [v444 objectForActivationSetting:46];

      LODWORD(v444) = [v443 BOOLForActivationSetting:41];
      if (!((v445 == 0) | (v444 | [v1014 isWebApplication]) & 1) && (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v446 = objc_claimAutoreleasedReturnValue(), v447 = objc_msgSend(v446, "userInterfaceIdiom"), v446, (v447 & 0xFFFFFFFFFFFFFFFBLL) == 1) && (objc_msgSend(v1014, "info"), v448 = objc_claimAutoreleasedReturnValue(), v449 = objc_msgSend(v448, "supportsMultiwindow"), v448, v449))
      {
        if (v949)
        {
          v1146 = 0u;
          v1145 = 0u;
          v1144 = 0u;
          v1143 = 0u;
          v450 = [rect_16 elements];
          v451 = 0;
          v452 = [v450 countByEnumeratingWithState:&v1143 objects:v1239 count:16];
          if (v452)
          {
            v453 = 0;
            v454 = *v1144;
            do
            {
              for (i5 = 0; i5 != v452; ++i5)
              {
                if (*v1144 != v454)
                {
                  objc_enumerationMutation(v450);
                }

                v456 = *(*(&v1143 + 1) + 8 * i5);
                v457 = [rect_16 layoutAttributesForElement:v456];
                v458 = [v456 workspaceEntity];
                v459 = [v458 applicationSceneEntity];

                v460 = [(SBHomeScreenConfigurationServer *)v457 queue];
                v461 = v460;
                if (v459)
                {
                  v462 = v460 <= v453;
                }

                else
                {
                  v462 = 1;
                }

                if (!v462)
                {
                  v463 = v459;

                  v453 = v461;
                  v451 = v463;
                }
              }

              v452 = [v450 countByEnumeratingWithState:&v1143 objects:v1239 count:16];
            }

            while (v452);
          }

          v464 = [v451 application];
          v465 = [v464 bundleIdentifier];
          v466 = [v465 isEqualToString:v1050];

          v467 = v466 ^ 1;
        }

        else
        {
          v1142 = 0u;
          v1141 = 0u;
          v1140 = 0u;
          v1139 = 0u;
          v451 = [v992 previousEntities];
          v786 = [v451 countByEnumeratingWithState:&v1139 objects:v1238 count:16];
          if (v786)
          {
            v787 = *v1140;
            while (2)
            {
              for (i6 = 0; i6 != v786; ++i6)
              {
                if (*v1140 != v787)
                {
                  objc_enumerationMutation(v451);
                }

                v789 = *(*(&v1139 + 1) + 8 * i6);
                v790 = objc_opt_class();
                v791 = v789;
                if (v790)
                {
                  if (objc_opt_isKindOfClass())
                  {
                    v792 = v791;
                  }

                  else
                  {
                    v792 = 0;
                  }
                }

                else
                {
                  v792 = 0;
                }

                v793 = v792;

                if (v793)
                {
                  v794 = [v793 application];
                  v795 = [v794 bundleIdentifier];
                  v796 = [v795 isEqualToString:v1050];

                  if (v796)
                  {

                    v467 = 0;
                    goto LABEL_1210;
                  }
                }
              }

              v786 = [v451 countByEnumeratingWithState:&v1139 objects:v1238 count:16];
              v467 = 1;
              if (v786)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v467 = 1;
          }
        }

LABEL_1210:

        v799 = [rect_16 bundleIDShowingAppExpose];
        v800 = v799;
        if (v988 != 2 || v799 == 0)
        {
          v802 = v467;
        }

        else
        {
          v802 = 1;
        }

        if (v802 & 1) != 0 || (BSEqualStrings())
        {
          v945 = 0;
        }

        else
        {
          v945 = v1050;
        }
      }

      else
      {
        v945 = 0;
      }
    }
  }

  v468 = 0;
  if (v949)
  {
    v469 = 0;
  }

  else
  {
    v470 = [v922 applicationSceneEntity];
    v471 = [v1043 _recentAppLayouts];
    v472 = [v471 _transitionContextRepresentsAmbiguousLaunch:v992 forApplicationSceneEntity:v470];

    if (v472)
    {
      v473 = SBPeekConfigurationIsValid([rect_16 peekConfiguration]);
      if (v956)
      {
        v474 = 0;
      }

      else
      {
        v474 = v473;
      }

      v475 = v924;
      if (v474)
      {
        v476 = 2;
        if (v922 != v957)
        {
          v476 = 0;
        }

        if (v922 == v955)
        {
          v476 = 1;
        }

        if (v476)
        {
          v475 = v476;
        }

        v924 = v475;
      }

      else
      {
        v477 = [v470 application];
        v478 = [v477 bundleIdentifier];

        v945 = v478;
      }
    }

    v469 = v924;
  }

  if (v945)
  {
    v479 = [v1043 _applicationController];
    v480 = [v479 applicationWithBundleIdentifier:v945];

    if ((v949 & 1) == 0 && ([v480 supportsMultitaskingShelf] & 1) == 0)
    {

      v945 = 0;
    }
  }

  else
  {
    v945 = 0;
  }

  if (v469)
  {
    v481 = v955;
    if (v469 == 1 || (v481 = v957, v469 == 2) || (v481 = v956, v469 == 3) || (v481 = v958, v469 == 4))
    {
      v482 = v481;
    }

    else
    {
      v482 = 0;
    }

    v483 = v469;
    v484 = [v482 applicationSceneEntity];
    v485 = [v484 application];

    if (!v485 || ([v485 supportsMultitaskingShelf] & 1) == 0)
    {
      v483 = 0;
    }

    v468 = v483;
  }

  v925 = v468;
  v486 = v1036;
  if (v945)
  {
LABEL_837:
    v487 = v486 - 1;
    if ([rect_16 unlockedEnvironmentMode] == 3)
    {
      if (v1011 & 1 | (v487 < 2))
      {
LABEL_853:
        v493 = 2;
        goto LABEL_854;
      }
    }

    else
    {
      v492 = [v922 isApplicationSceneEntity];
      if (v487 < 2 || ((v492 ^ 1 | v1011) & 1) != 0)
      {
        goto LABEL_853;
      }
    }

    v493 = 3;
LABEL_854:
    v930 = v493;
    IsYes = 0;
    v494 = v932;
    if (v1011)
    {
      v494 = 1;
    }

    v932 = v494;
    goto LABEL_858;
  }

  v488 = [rect_16 bundleIDShowingAppExpose];
  if (v488 && ((v489 = [rect_16 unlockedEnvironmentMode], v930 == 2) ? (v490 = v489 == 2) : (v490 = 0), !v490 ? (v491 = 0) : (v491 = 1), v488, v491))
  {
    v945 = [rect_16 bundleIDShowingAppExpose];
    v486 = v1036;
    if (v945)
    {
      goto LABEL_837;
    }

    v945 = 0;
    v930 = 2;
  }

  else
  {
    v945 = 0;
  }

LABEL_858:
  if ([v955 isPreviousWorkspaceEntity])
  {
    v860 = [MEMORY[0x277CCA890] currentHandler];
    [v860 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2060 description:@"Primary workspace entity may not be previous entity at this point!"];
  }

  if ([v957 isPreviousWorkspaceEntity])
  {
    v861 = [MEMORY[0x277CCA890] currentHandler];
    [v861 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2061 description:@"Side workspace entity may not be previous entity at this point!"];
  }

  if ([v956 isPreviousWorkspaceEntity])
  {
    v862 = [MEMORY[0x277CCA890] currentHandler];
    [v862 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2062 description:@"Floating workspace entity may not be previous entity at this point!"];
  }

  if ([v958 isPreviousWorkspaceEntity])
  {
    v863 = [MEMORY[0x277CCA890] currentHandler];
    [v863 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2063 description:@"Center workspace entity may not be previous entity at this point!"];
  }

  if ([v955 isEmptyWorkspaceEntity])
  {
    v864 = [MEMORY[0x277CCA890] currentHandler];
    [v864 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2065 description:@"Primary workspace entity may not be empty entity at this point!"];
  }

  if ([v957 isEmptyWorkspaceEntity])
  {
    v865 = [MEMORY[0x277CCA890] currentHandler];
    [v865 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2066 description:@"Side workspace entity may not be empty entity at this point!"];
  }

  if ([v956 isEmptyWorkspaceEntity])
  {
    v866 = [MEMORY[0x277CCA890] currentHandler];
    [v866 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2067 description:@"Floating workspace entity may not be empty entity at this point!"];
  }

  if ([v958 isEmptyWorkspaceEntity])
  {
    v867 = [MEMORY[0x277CCA890] currentHandler];
    [v867 handleFailureInMethod:v1017 object:v1043 file:@"SBMainDisplayLayoutStateManager.m" lineNumber:2068 description:@"Center workspace entity may not be empty entity at this point!"];
  }

  [v992 setActivatingEntity:0];
  [v992 setEntity:v955 forLayoutRole:1];
  [v992 setEntity:v957 forLayoutRole:2];
  [v992 setEntity:v956 forLayoutRole:3];
  [v992 setEntity:v958 forLayoutRole:4];
  v495 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v935 = v495;
  if (v955)
  {
    v496 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v495, v955);
    if (v496)
    {
      [v935 addObject:v496];
    }
  }

  if (v957)
  {
    v497 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v495, v957);
    if (v497)
    {
      [v935 addObject:v497];
      v1252.a = 0.0;
      *&v1252.b = &v1252;
      *&v1252.c = 0x2020000000;
      *&v1252.d = 5;
      v1129[0] = MEMORY[0x277D85DD0];
      v1129[1] = 3221225472;
      v1129[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_16;
      v1129[3] = &unk_2783B9E90;
      v1130 = v992;
      v1136 = v919;
      v1131 = v955;
      v1132 = v957;
      v1133 = v958;
      v1138 = &v1252;
      v1134 = v956;
      v1137 = &__block_literal_global_216;
      v1135 = v935;
      SBLayoutRoleEnumerateValidRoles(v1129);

      _Block_object_dispose(&v1252, 8);
    }
  }

  if (v956)
  {
    v498 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v495, v956);
    if (v498)
    {
      [v935 addObject:v498];
    }
  }

  if (v958)
  {
    v499 = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(v495, v958);
    if (v499)
    {
      [v935 addObject:v499];
    }
  }

  if ([v935 count])
  {
    v500 = v935;
  }

  else
  {
    v500 = 0;
  }

  v501 = v500;
  v502 = objc_opt_class();
  v503 = SBSafeCast(v502, rect_16);
  v1008 = [v503 elementIdentifiersToLayoutAttributes];

  v1039 = [v992 requestedEntityIdentifierToLayoutAttributes];
  v1025 = objc_opt_new();
  v1128 = 0u;
  v1127 = 0u;
  v1126 = 0u;
  v1125 = 0u;
  v1031 = v501;
  v504 = [v1031 countByEnumeratingWithState:&v1125 objects:v1237 count:16];
  if (v504)
  {
    v1019 = *v1126;
    if ((v965 - 1) < 2)
    {
      v505 = 1;
    }

    else
    {
      v505 = 2 * ((v965 - 3) < 2);
    }

    v962 = v505;
    do
    {
      v1051 = v504;
      for (i7 = 0; i7 != v1051; ++i7)
      {
        if (*v1126 != v1019)
        {
          objc_enumerationMutation(v1031);
        }

        v507 = *(*(&v1125 + 1) + 8 * i7);
        v508 = [v507 uniqueIdentifier];
        v509 = [v1039 objectForKey:v508];
        if (v509)
        {
          goto LABEL_940;
        }

        v510 = [v1008 objectForKey:v508];
        v511 = v510;
        if (!((v510 == 0) | v1011 & (v975 == 64)))
        {
          v509 = v510;
          v519 = MEMORY[0x277CBEB98];
          v520 = [v507 uniqueIdentifier];
          v521 = [v519 setWithObject:v520];
          v522 = [v1043 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v521 inMedusaOnStageManagerCapableDevice:v994 multitaskingSupported:v997 != 0];

          v523 = [v522 allItems];
          v1124[0] = MEMORY[0x277D85DD0];
          v1124[1] = 3221225472;
          v1124[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_17;
          v1124[3] = &unk_2783A8C90;
          v1124[4] = v507;
          v524 = [v523 bs_firstObjectPassingTest:v1124];

          if (v524)
          {
            [v1045 setObject:v507 forKey:v524];
            [v1044 setObject:v509 forKey:v524];
          }

          goto LABEL_940;
        }

        v512 = MEMORY[0x277CBEB98];
        v513 = [v507 uniqueIdentifier];
        v514 = [v512 setWithObject:v513];
        v515 = [v1043 _mostRecentAppLayoutMatchingAnyUniqueIdentifier:v514 inMedusaOnStageManagerCapableDevice:v994 multitaskingSupported:v997 != 0];

        if (v515)
        {
          v516 = [v515 allItems];
          v1123[0] = MEMORY[0x277D85DD0];
          v1123[1] = 3221225472;
          v1123[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_18;
          v1123[3] = &unk_2783A8C90;
          v1123[4] = v507;
          v517 = [v516 bs_firstObjectPassingTest:v1123];

          if (v975 != 11 && v975 != 50)
          {
            v518 = [v1034 layoutAttributesForDisplayItem:v517 inAppLayout:v515 displayOrdinal:objc_msgSend(rect_16 orientation:{"displayOrdinal"), v962}];

            if (v517 && v518)
            {
              [v1045 setObject:v507 forKey:v517];
              [v1044 setObject:v518 forKey:v517];
LABEL_931:
              v511 = v518;

              v509 = v511;
              goto LABEL_939;
            }

            v511 = v518;
          }

          v518 = v511;
          if (!v511)
          {
            v539 = 1;
            if (v517)
            {
              v539 = [v515 layoutRoleForItem:v517];
            }

            v540 = [v515 itemForLayoutRole:v539];
            v541 = [v515 preferredDisplayOrdinal];
            v542 = [rect_16 interfaceOrientation];
            if ((v542 - 1) < 2)
            {
              v543 = 1;
            }

            else
            {
              v543 = 2 * ((v542 - 3) < 2);
            }

            v518 = [v1034 layoutAttributesForDisplayItem:v540 inAppLayout:v515 displayOrdinal:v541 orientation:v543];
          }

          goto LABEL_931;
        }

        v525 = [v507 workspaceEntity];
        v526 = [v525 applicationSceneEntity];
        v527 = [v526 application];
        v528 = [v527 bundleIdentifier];

        if (v528)
        {
          v529 = [v1043 _recentAppLayouts];
          v1121[0] = MEMORY[0x277D85DD0];
          v1121[1] = 3221225472;
          v1121[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_19;
          v1121[3] = &unk_2783A8CB8;
          v530 = v528;
          v1122 = v530;
          rect_8a = [v529 mostRecentAppLayoutIncludingHiddenAppLayouts:1 passingTest:v1121];

          if (rect_8a)
          {
            v531 = [0 interfaceOrientation];
            if ((v531 - 1) < 2)
            {
              v532 = 1;
            }

            else
            {
              v532 = 2 * ((v531 - 3) < 2);
            }

            v1119[0] = MEMORY[0x277D85DD0];
            v1119[1] = 3221225472;
            v1119[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_20;
            v1119[3] = &unk_2783A8C90;
            v1120 = v530;
            v533 = [v1034 lastInteractedDisplayItemInAppLayout:rect_8a orientation:v532 passingTest:v1119];
            if (v533)
            {
              v534 = [rect_8a preferredDisplayOrdinal];
              v535 = [0 interfaceOrientation];
              if ((v535 - 1) < 2)
              {
                v536 = 1;
              }

              else
              {
                v536 = 2 * ((v535 - 3) < 2);
              }

              v537 = [v1034 layoutAttributesForDisplayItem:v533 inAppLayout:rect_8a displayOrdinal:v534 orientation:v536];
              [(SBDisplayItemLayoutAttributes *)v537 attributedSize];
              v538 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:?];
              [(SBHomeScreenConfigurationServer *)v537 connections];
              v509 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v538];
            }

            else
            {
              v509 = 0;
            }
          }

          else
          {
            v509 = 0;
          }

          v544 = [v992 entityForLayoutRole:4];
          v545 = v544 == 0;

          if (!v545)
          {
            SBDisplayItemAttributedSizeUnspecified(&v1252);
            v546 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v509];

            v509 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v546];
          }
        }

        else
        {
          v509 = 0;
        }

LABEL_939:
        if (!v509)
        {
          v547 = objc_alloc_init(SBDisplayItemLayoutAttributes);
          goto LABEL_944;
        }

LABEL_940:
        if ((v1011 & 1) != 0 && ([v1002 isAutomaticStageCreationEnabled] & 1) == 0)
        {
          v561 = [(SBCameraHardwareButton *)v509 allCameraShutterButtonPIDs];
          if (SBDisplayItemLayoutAttributesVersionIsCurrent(v561))
          {
            v547 = v509;
            goto LABEL_944;
          }

          v562 = objc_alloc_init(SBDisplayItemLayoutAttributes);

          v563 = [v1039 objectForKey:v508];
          v509 = v563;
          if (v563)
          {
            [(SBHomeScreenConfigurationServer *)v563 queue];
            v547 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v562];

            v564 = [v507 workspaceEntity];
            [v992 setRequestedLayoutAttributes:v547 forEntity:v564];
          }

          else
          {
            v547 = v562;
          }
        }

        else
        {
          v547 = [SBDisplayItemLayoutAttributes attributesByModifyingVersion:v509];
        }

LABEL_944:
        if (SBDisplayItemSizeIsUnspecified(v547) && ((SBFIsChamoisWindowingUIAvailable() & 1) != 0 || SBFIsFlexibleWindowingUIAvailable()))
        {
          v548 = [v507 workspaceEntity];
          v549 = [v548 deviceApplicationSceneEntity];
          v550 = [v549 sceneHandle];

          if (v550 && ([v550 supportsCenterWindow] & 1) == 0)
          {
            v551 = [v550 application];
            v552 = v551;
            if (v551)
            {
              v553 = [v551 bundleIdentifier];
              v554 = [MEMORY[0x277CBEB98] set];
              v555 = [v1043 _mostRecentAppLayoutForBundleIdentifier:v553 ignoringUniqueIdentifiers:v554 inMedusaOnStageManagerCapableDevice:v994 multitaskingSupported:v997 != 0];

              if (!v555)
              {
                v556 = [v552 lastWindowLayoutAttributesForDisplayOrdinal:{objc_msgSend(rect_16, "displayOrdinal")}];
                v557 = v556;
                if (!v556)
                {
                  v560 = [(SBDisplayItemLayoutAttributes *)v547 attributesByModifyingPositionIsSystemManaged:?];

                  goto LABEL_965;
                }

                rect_8d = [(SBHomeScreenConfigurationServer *)v556 connections];
                v1253 = 0;
                memset(&v1252, 0, sizeof(v1252));
                [(SBDisplayItemLayoutAttributes *)v557 attributedSize];
                v1117 = 0uLL;
                v1118 = 0;
                [(SBDisplayItemLayoutAttributes *)v557 tileConfiguration];
                v1116 = 0;
                v1115 = 0u;
                v1114 = 0u;
                [(SBDisplayItemLayoutAttributes *)v557 slideOverConfiguration];
                SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(&v1229, &v1114);
                [(SBDisplayItemLayoutAttributes *)v557 normalizedCenter];
                v558 = [(SBDisplayItemLayoutAttributes *)v557 isPositionSystemManaged];
                v559 = [(SBDisplayItemLayoutAttributes *)v557 isCascaded];
                if (SBDisplayItemSizingPolicyIsValid(rect_8d) && (v1229 = v1252, *&v1230 = v1253, SBDisplayItemAttributedSizeIsValid(&v1229)))
                {
                  v948 = [(SBHomeScreenConfigurationServer *)v557 authenticator];
                  if (v948)
                  {
                    v939 = +[SBMainSwitcherControllerCoordinator sharedInstance];
                    [v939 _setInterfaceOrientationFromUserResizingIfSupported:v948 forSceneHandle:v550];
                  }

                  v940 = [SBDisplayItemLayoutAttributes alloc];
                  [(SBHomeScreenConfigurationServer *)v547 queue];
                  SBDisplayItemAttributedSizeUnspecified(&v1229);
                  v1112 = v1252;
                  v1113 = v1253;
                  v1110 = v1117;
                  v1111 = v1118;
                  v1107 = v1114;
                  v1108 = v1115;
                  v1109 = v1116;
                  LOBYTE(v898) = v558;
                  v896 = 0;
                  v897 = &v1229;
                  v560 = [SBDisplayItemLayoutAttributes initWithContentOrientation:v940 lastInteractionTime:? sizingPolicy:? attributedSize:? tileConfiguration:? slideOverConfiguration:? normalizedCenter:? cascaded:? occlusionState:? attributedUserSizeBeforeOverlapping:? unoccludedPeekingCenter:? positionIsSystemManaged:?];

LABEL_965:
                  v547 = v560;
                }

                else
                {
                  v565 = [(SBDisplayItemLayoutAttributes *)v547 attributesByModifyingCascaded:v559];
                }
              }
            }
          }
        }

        if ((v1011 & (v930 == 3)) != 0 && [v1031 count] == 1)
        {
          v566 = [v1008 objectForKey:v508];
          if (!v566)
          {
            v571 = [(SBDisplayItemLayoutAttributes *)v547 normalizedCenter];
            if (SBDisplayItemCenterIsUnspecified(v571, v572))
            {
              goto LABEL_974;
            }

            v566 = [rect_24 _windowingConfiguration];
            [rect_24 containerBoundsForInterfaceOrientation:{objc_msgSend(rect_16, "interfaceOrientation")}];
            v574 = v573;
            v576 = v575;
            v578 = v577;
            v580 = v579;
            [(SBDisplayItemLayoutAttributes *)v547 centerInBounds:v573, v575, v577];
            [v566 defaultWindowSize];
            [v566 screenEdgePadding];
            [SBDisplayItemLayoutAttributes sizeInBounds:v547 defaultSize:? screenEdgePadding:?];
            SBRectWithSize();
            UIRectCenteredAboutPoint();
            v582 = v581;
            v584 = v583;
            v586 = v585;
            v588 = v587;
            v1256.origin.x = v574;
            v1256.origin.y = v576;
            v1256.size.width = v578;
            v1256.size.height = v580;
            v1267.origin.x = v582;
            v1267.origin.y = v584;
            v1267.size.width = v586;
            v1267.size.height = v588;
            if (!CGRectContainsRect(v1256, v1267))
            {
              UIRectGetCenter();
              v591 = [(SBDisplayItemLayoutAttributes *)v589 normalizedPointForPoint:v590 inBounds:v574, v576, v578, v580];
              v593 = [(SBDisplayItemLayoutAttributes *)v547 attributesByModifyingNormalizedCenter:v591, v592];

              v547 = v593;
            }
          }
        }

LABEL_974:
        memset(&v1252, 0, 40);
        [(SBDisplayItemLayoutAttributes *)v547 slideOverConfiguration];
        *&v1229.a = *&v1252.a;
        *&v1229.c = *&v1252.c;
        v1229.tx = v1252.tx;
        if (SBDisplayItemSlideOverConfigurationIsValid(&v1229) && BYTE1(v1252.tx) == 1)
        {
          BYTE1(v1252.tx) = 0;
          *&v1229.a = *&v1252.a;
          *&v1229.c = *&v1252.c;
          v1229.tx = v1252.tx;
          v567 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v547];
        }

        else
        {
          *&v1229.a = *&v1252.a;
          *&v1229.c = *&v1252.c;
          v1229.tx = v1252.tx;
          if (!SBDisplayItemSlideOverConfigurationIsValid(&v1229) || ([SBDisplayItem displayItemForLayoutElement:v507], v568 = objc_claimAutoreleasedReturnValue(), v569 = BSEqualObjects(), v568, (v569 & 1) != 0))
          {
            v570 = v547;
            goto LABEL_982;
          }

          [(SBDisplayItemLayoutAttributes *)v547 slideOverConfiguration];
          SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(&v1112, &v1229);
          v567 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v547];
        }

        v570 = v567;

LABEL_982:
        [v1025 setObject:v570 forKey:{v508, v896, v897, v898}];
      }

      v504 = [v1031 countByEnumeratingWithState:&v1125 objects:v1237 count:16];
    }

    while (v504);
  }

  if ((v1011 & 1) == 0)
  {
    v614 = 0;
    goto LABEL_1107;
  }

  v594 = [v1031 allObjects];
  v1105[0] = MEMORY[0x277D85DD0];
  v1105[1] = 3221225472;
  v1105[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_21;
  v1105[3] = &unk_2783B9CF8;
  v998 = v1025;
  v1106 = v998;
  v1052 = [v594 sortedArrayUsingComparator:v1105];

  v595 = [v969 count];
  if (!v969 || [v1031 count] <= v595)
  {
    goto LABEL_1010;
  }

  v596 = [v1052 firstObject];
  v597 = [v596 uniqueIdentifier];
  v598 = [v998 objectForKey:v597];
  v599 = [(SBHomeScreenConfigurationServer *)v598 queue];

  v1104 = 0u;
  v1103 = 0u;
  v1102 = 0u;
  v1101 = 0u;
  v600 = [v1052 reverseObjectEnumerator];
  v601 = [v600 countByEnumeratingWithState:&v1101 objects:v1236 count:16];
  if (!v601)
  {
LABEL_1009:

    goto LABEL_1010;
  }

  LOBYTE(v602) = 0;
  v603 = 0;
  v604 = *v1102;
  while (2)
  {
    for (i8 = 0; i8 != v601; ++i8)
    {
      if (*v1102 != v604)
      {
        objc_enumerationMutation(v600);
      }

      v606 = *(*(&v1101 + 1) + 8 * i8);
      v607 = [v606 workspaceEntity];
      v608 = [v607 deviceApplicationSceneEntity];

      if (v608 && ([v969 containsObject:v608] & 1) == 0)
      {
        v609 = [v606 uniqueIdentifier];
        v610 = [v998 objectForKey:v609];
        ++v599;
        v611 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v610];

        [v998 setObject:v611 forKey:v609];
        ++v603;
LABEL_1002:
        v602 = 1;
        goto LABEL_1003;
      }

      ++v603;
      if (v602)
      {
        goto LABEL_1002;
      }

      if (v603 == [v969 count])
      {

        goto LABEL_1009;
      }

      v602 = 0;
LABEL_1003:
    }

    v601 = [v600 countByEnumeratingWithState:&v1101 objects:v1236 count:16];
    if (v601)
    {
      continue;
    }

    break;
  }

  if (v602)
  {
    v612 = [v1031 allObjects];
    v1099[0] = MEMORY[0x277D85DD0];
    v1099[1] = 3221225472;
    v1099[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_22;
    v1099[3] = &unk_2783B9CF8;
    v1100 = v998;
    v613 = [v612 sortedArrayUsingComparator:v1099];

    v600 = v1100;
    v1052 = v613;
    goto LABEL_1009;
  }

LABEL_1010:
  v1026 = [rect_24 maximumNumberOfScenesOnStage];
  v1015 = objc_opt_new();
  v989 = [v992 settlesMultiAppFullScreenSpacesImmediately];
  v1020 = [v1052 count];
  if (v1020 < 1)
  {
    goto LABEL_1030;
  }

  v615 = 0;
  v995 = 0;
  v616 = 0;
  v617 = 1;
  while (2)
  {
    v618 = [v1052 objectAtIndex:v615];
    if (!SBLayoutRoleIsValidForSplitView([v618 layoutRole]))
    {
      [v1015 addObject:v618];
      goto LABEL_1029;
    }

    if (v946)
    {
      goto LABEL_1026;
    }

    v619 = [v618 uniqueIdentifier];
    v620 = [v998 objectForKey:v619];

    v621 = [v618 workspaceEntity];
    v622 = [v621 deviceApplicationSceneEntity];

    if (!v622)
    {

LABEL_1026:
      if (v616 < v1026)
      {
        [v1015 addObject:v618];
      }

      ++v616;
LABEL_1029:

      v617 = 0;
      if (v1020 == ++v615)
      {
        goto LABEL_1030;
      }

      continue;
    }

    break;
  }

  v623 = [SBDisplayItem displayItemForLayoutElement:v618];
  v624 = [rect_24 _isDisplayItemFullScreen:v623 preferredAttributes:v620];
  v625 = v624;
  if ((v617 & v624) != 1)
  {
    v631 = v624 & v995 ^ 1;
LABEL_1025:

    v995 |= v625;
    if (!v631)
    {
      goto LABEL_1029;
    }

    goto LABEL_1026;
  }

  [v1015 addObject:v618];
  if (v989)
  {
    goto LABEL_1184;
  }

  if (v615 >= v1020 - 1)
  {
LABEL_1021:
    v631 = 1;
    goto LABEL_1025;
  }

  recta = [v1052 objectAtIndex:v615 + 1];
  v626 = [recta workspaceEntity];
  v973 = [v626 deviceApplicationSceneEntity];

  if (!v973 || ([recta uniqueIdentifier], v627 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v998, "objectForKey:", v627), v628 = objc_claimAutoreleasedReturnValue(), v627, +[SBDisplayItem displayItemForLayoutElement:](SBDisplayItem, "displayItemForLayoutElement:", recta), v629 = objc_claimAutoreleasedReturnValue(), v630 = objc_msgSend(rect_24, "_isDisplayItemFullScreen:preferredAttributes:", v629, v628), v629, v628, (v630 & 1) == 0))
  {

    goto LABEL_1021;
  }

LABEL_1184:
LABEL_1030:
  v632 = [v1015 count];
  if (v632 == [v1052 count])
  {
    v1025 = v998;
    v999 = v1052;
  }

  else
  {
    if (v1218[5])
    {
      v1098[0] = MEMORY[0x277D85DD0];
      v1098[1] = 3221225472;
      v1098[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_23;
      v1098[3] = &unk_2783B9EB8;
      v1098[4] = &v1217;
      v633 = [v1052 bs_firstObjectPassingTest:v1098];
      if (v633)
      {
        [v1015 addObject:v633];
      }
    }

    v634 = [v992 entities];
    v1096[0] = MEMORY[0x277D85DD0];
    v1096[1] = 3221225472;
    v1096[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_24;
    v1096[3] = &unk_2783B9EE0;
    v635 = v634;
    v1097 = v635;
    v636 = MEMORY[0x223D6F7F0](v1096);
    v1094[0] = MEMORY[0x277D85DD0];
    v1094[1] = 3221225472;
    v1094[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_26;
    v1094[3] = &unk_2783B9F08;
    v637 = v636;
    v1095 = v637;
    v638 = [v1015 bs_map:v1094];
    v639 = [v638 allObjects];
    v1092[0] = MEMORY[0x277D85DD0];
    v1092[1] = 3221225472;
    v1092[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_27;
    v1092[3] = &unk_2783B9F08;
    v640 = v637;
    v1093 = v640;
    v641 = [v1015 bs_compactMap:v1092];
    v642 = [v641 anyObject];
    v1090[0] = MEMORY[0x277D85DD0];
    v1090[1] = 3221225472;
    v1090[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_28;
    v1090[3] = &unk_2783B9F08;
    v643 = v640;
    v1091 = v643;
    v644 = [v1015 bs_compactMap:v1090];
    v645 = [v644 anyObject];
    [v992 setEntities:v639 withPolicy:0 centerEntity:v642 floatingEntity:v645];

    v1089 = 0u;
    v1088 = 0u;
    v1087 = 0u;
    v1086 = 0u;
    v646 = [v992 entities];
    v647 = [v646 copy];

    v648 = [v647 countByEnumeratingWithState:&v1086 objects:v1235 count:16];
    if (v648)
    {
      v649 = *v1087;
      do
      {
        for (i9 = 0; i9 != v648; ++i9)
        {
          if (*v1087 != v649)
          {
            objc_enumerationMutation(v647);
          }

          v651 = *(*(&v1086 + 1) + 8 * i9);
          if (([v651 isEmptyWorkspaceEntity] & 1) != 0 || objc_msgSend(v651, "isPreviousWorkspaceEntity"))
          {
            [v992 setEntity:0 forLayoutRole:{objc_msgSend(v651, "layoutRole")}];
          }
        }

        v648 = [v647 countByEnumeratingWithState:&v1086 objects:v1235 count:16];
      }

      while (v648);
    }

    v652 = [v992 entities];
    v1084[0] = MEMORY[0x277D85DD0];
    v1084[1] = 3221225472;
    v1084[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_29;
    v1084[3] = &unk_2783B9F30;
    v1085 = &__block_literal_global_216;
    v653 = [v652 bs_map:v1084];

    v1082[0] = MEMORY[0x277D85DD0];
    v1082[1] = 3221225472;
    v1082[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_30;
    v1082[3] = &unk_2783B9F58;
    v1031 = v653;
    v1083 = v1031;
    v654 = [v998 bs_filter:v1082];
    v1025 = [v654 mutableCopy];

    v655 = [v1043 _zOrderComparatorFor:v1025];
    v656 = [v1031 bs_array];
    v999 = [v656 sortedArrayUsingComparator:v655];

    v1020 = [v999 count];
  }

  if (v930 == 3)
  {
    v657 = [v1008 count];
    if (v657 < [v1025 count])
    {
      v658 = [v1008 allKeys];
      v659 = [v658 bs_set];

      v660 = [v1025 allKeys];
      v1080[0] = MEMORY[0x277D85DD0];
      v1080[1] = 3221225472;
      v1080[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_32;
      v1080[3] = &unk_2783A8B78;
      v661 = v659;
      v1081 = v661;
      v662 = [v660 bs_containsObjectPassingTest:v1080];

      if (v662)
      {
        v1078[0] = MEMORY[0x277D85DD0];
        v1078[1] = 3221225472;
        v1078[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_33;
        v1078[3] = &unk_2783B9F80;
        v1079 = v1008;
        v663 = [v999 bs_compactMap:v1078];
        v664 = [v663 bs_set];

        v950 = v664;
      }
    }
  }

  v665 = [v999 firstObject];
  v666 = v665;
  if (!v665)
  {
    v614 = 0;
    goto LABEL_1106;
  }

  v667 = [v665 uniqueIdentifier];
  v996 = [v1025 objectForKey:v667];
  v1053 = v667;
  if (![(SBDisplayItemLayoutAttributes *)v996 isPositionSystemManaged])
  {
    v614 = 0;
    goto LABEL_1105;
  }

  v668 = [(SBDisplayItemLayoutAttributes *)v996 isCascaded];
  v993 = [rect_16 elements];
  if ([v993 count])
  {
    v669 = 0;
  }

  else
  {
    v669 = [v1031 count] == 1;
  }

  v991 = [v1031 bs_compactMap:&__block_literal_global_125_0];
  v990 = [v993 bs_compactMap:&__block_literal_global_127];
  if ([v991 isSubsetOfSet:?])
  {
    v671 = 0;
    v672 = 1;
  }

  else
  {
    v673 = [v1031 bs_map:&__block_literal_global_129];
    rectb = v669;
    rect_8b = v668;
    v1077 = 0u;
    v1076 = 0u;
    v1074 = 0u;
    v1075 = 0u;
    v674 = [v1043 _recentAppLayouts];
    v675 = [v674 recentsIncludingHiddenAppLayouts:0];

    v676 = 0;
    v677 = [v675 countByEnumeratingWithState:&v1074 objects:v1234 count:16];
    if (v677)
    {
      v678 = *v1075;
      while (2)
      {
        for (i10 = 0; i10 != v677; ++i10)
        {
          if (*v1075 != v678)
          {
            objc_enumerationMutation(v675);
          }

          v680 = *(*(&v1074 + 1) + 8 * i10);
          if (v676)
          {
            v676 = 1;
          }

          else if ([*(*(&v1074 + 1) + 8 * i10) containsItemWithUniqueIdentifier:v1053])
          {
            v681 = [v680 preferredDisplayIdentity];
            v682 = [rect_24 displayIdentity];
            v683 = [v681 isEqual:v682];

            v676 = v683 ^ 1;
          }

          else
          {
            v676 = 0;
          }

          v684 = [v680 allItems];
          v685 = [v684 bs_set];
          v686 = [v673 isEqual:v685];

          if (v686)
          {
            v671 = 0;
            goto LABEL_1083;
          }
        }

        v677 = [v675 countByEnumeratingWithState:&v1074 objects:v1234 count:16];
        if (v677)
        {
          continue;
        }

        break;
      }
    }

    v671 = 1;
LABEL_1083:

    v672 = v676 ^ 1;
    v668 = rect_8b;
    v669 = rectb;
  }

  if ((v668 & (v671 | v669)) == 1)
  {
    v687 = [(SBDisplayItemLayoutAttributes *)v996 attributesByModifyingCascaded:?];

    v996 = [(SBDisplayItemLayoutAttributes *)v687 attributesByModifyingNormalizedCenter:0.0];

    [v1025 setObject:v996 forKey:v1053];
  }

  if ((v671 & [rect_16 isDisplayExternal]) != 1 || objc_msgSend(v1031, "count") < 2)
  {
    v614 = 0;
    goto LABEL_1104;
  }

  v688 = [SBDisplayItem displayItemForLayoutElement:v666];
  if ([rect_24 _isDisplayItemFullScreen:v688 preferredAttributes:v996] & v672)
  {
    v614 = 0;
    goto LABEL_1103;
  }

  if (v1020 < 2)
  {
LABEL_1101:
    v696 = 0;
    v697 = 0;
    v614 = 0;
    goto LABEL_1102;
  }

  v689 = 1;
  while (2)
  {
    v690 = [v999 objectAtIndex:v689];
    v691 = [v690 workspaceEntity];
    v692 = [v691 isDeviceApplicationSceneEntity];

    if (!v692)
    {
LABEL_1100:

      if (v1020 == ++v689)
      {
        goto LABEL_1101;
      }

      continue;
    }

    break;
  }

  v693 = [SBDisplayItem displayItemForLayoutElement:v690];
  v694 = [v690 uniqueIdentifier];
  v695 = [v1025 objectForKey:v694];

  if (([rect_24 _isDisplayItemFullScreen:v693 preferredAttributes:v695] & 1) == 0)
  {
    if (([(SBDisplayItemLayoutAttributes *)v695 isCascaded]& 1) != 0 || [(SBDisplayItemLayoutAttributes *)v695 isPositionSystemManaged])
    {
      v697 = v690;
      v696 = v693;
      goto LABEL_1222;
    }

    goto LABEL_1100;
  }

  v697 = 0;
  v696 = 0;
LABEL_1222:

  v614 = 0;
  if (v697 && v696)
  {
    rect_8c = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    v1023 = [rect_24 windowScene];
    v803 = [SBMainDisplayLayoutState alloc];
    v804 = [rect_16 displayOrdinal];
    LOBYTE(v900) = [rect_16 isDisplayExternal];
    LOBYTE(v897) = v903;
    v614 = [(SBMainDisplayLayoutState *)v803 _initWithLayoutElements:v1031 spaceConfiguration:v904 elementIdentifiersToLayoutAttributes:v1025 floatingConfiguration:v926 unlockedEnvironmentMode:v930 floatingSwitcherVisible:IsYes centerConfiguration:v912 centerEntityModal:v897 peekConfiguration:v932 bundleIDShowingAppExpose:v945 windowPickerRole:v925 displayOrdinal:v804 isDisplayExternal:v900];
    v805 = [v614 interfaceOrientation];
    v806 = [v614 appLayout];
    v807 = [v614 layoutAttributesMap];
    v808 = [rect_16 appLayout];
    v809 = -[SBDisplayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:](rect_8c, "appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:", v806, v808, v807, [v1043 _autoLayoutOptionsForNewAppLayout:v806 previousAppLayout:v808 request:v964], v805, v1023, objc_msgSend(v964, "source"), v950, 0);
    v963 = v808;

    -[SBDisplayItemLayoutAttributesCalculator frameForLayoutRole:inAppLayout:containerOrientation:windowScene:](rect_8c, "frameForLayoutRole:inAppLayout:containerOrientation:windowScene:", [v809 layoutRoleForItem:v688], v809, v805, v1023);
    v811 = v810;
    v813 = v812;
    -[SBDisplayItemLayoutAttributesCalculator frameForLayoutRole:inAppLayout:containerOrientation:windowScene:](rect_8c, "frameForLayoutRole:inAppLayout:containerOrientation:windowScene:", [v809 layoutRoleForItem:v696], v809, v805, v1023);
    v815 = v814;
    v817 = v816;
    [rect_24 containerBoundsForInterfaceOrientation:v805];
    v974 = v818;
    v966 = v819;
    v967 = v820;
    v968 = v821;
    v822 = [rect_24 _windowingConfiguration];
    v823 = [rect_24 _prefersDockHidden];
    [v822 floatingDockHeightWithTopAndBottomPadding];
    v825 = v824;
    rectc = v815;
    v826 = [rect_24 _autoLayoutSpaceForAppLayout:v809];
    [v826 boundingBox];
    v828 = v827;
    v830 = v829;

    [v822 statusBarHeight];
    v832 = v831;
    v833 = v828 + v830;
    if (v828 + v830 > v967 - v825)
    {
      v834 = 1;
    }

    else
    {
      v834 = v823;
    }

    if (v834)
    {
      v835 = v967;
    }

    else
    {
      v835 = v967 - v825;
    }

    v836 = v974;
    v837 = v968;
    if ([v1002 isAutomaticStageCreationEnabled])
    {
      v836 = v974;
      v837 = v968;
      if (([rect_24 _prefersStripHiddenAndDisabled] & 1) == 0)
      {
        v836 = v974;
        v837 = v968;
        if ([rect_24 _areContinuousExposeStripsUnoccluded])
        {
          [v822 stripWidth];
          v836 = v974 + v838;
          v837 = v968 - v838;
        }
      }
    }

    v839 = v966 + v832;
    v840 = v835 - v832;
    v841 = v840;
    v842 = v837;
    v843 = atan2f(v841, v842);
    v844 = __sincosf_stret(v843);
    memset(&v1252, 0, sizeof(v1252));
    v845 = *(MEMORY[0x277CBF2C0] + 16);
    *&v1229.a = *MEMORY[0x277CBF2C0];
    *&v1229.c = v845;
    *&v1229.tx = *(MEMORY[0x277CBF2C0] + 32);
    CGAffineTransformTranslate(&v1252, &v1229, (v844.__cosval * ((v832 + v832) / v844.__sinval)), v832 + v832);
    v1229 = v1252;
    v1257.origin.x = rectc;
    v1257.origin.y = v817;
    v1257.size.width = v811;
    v1257.size.height = v813;
    v1258 = CGRectApplyAffineTransform(v1257, &v1229);
    x = v1258.origin.x;
    y = v1258.origin.y;
    width = v1258.size.width;
    height = v1258.size.height;
    rectd = v836;
    v1258.origin.x = v836;
    v850 = v839;
    v1258.origin.y = v839;
    v1258.size.width = v837;
    v1258.size.height = v840;
    v1268.origin.x = x;
    v1268.origin.y = y;
    v1268.size.width = width;
    v1268.size.height = height;
    if (!CGRectContainsRect(v1258, v1268))
    {
      v1259.origin.x = x;
      v1259.origin.y = y;
      v1259.size.width = width;
      v1259.size.height = height;
      MaxX = CGRectGetMaxX(v1259);
      v1260.origin.x = rectd;
      v1260.origin.y = v850;
      v1260.size.width = v837;
      v1260.size.height = v840;
      if (MaxX > CGRectGetMaxX(v1260))
      {
        v1261.origin.x = rectd;
        v1261.origin.y = v850;
        v1261.size.width = v837;
        v1261.size.height = v840;
        x = CGRectGetMinX(v1261);
      }
    }

    v1262.origin.x = rectd;
    v1262.origin.y = v850;
    v1262.size.width = v837;
    v1262.size.height = v840;
    v1269.origin.x = x;
    v1269.origin.y = y;
    v1269.size.width = width;
    v1269.size.height = height;
    if (!CGRectContainsRect(v1262, v1269))
    {
      v1263.origin.x = x;
      v1263.origin.y = y;
      v1263.size.width = width;
      v1263.size.height = height;
      MaxY = CGRectGetMaxY(v1263);
      v1264.origin.x = rectd;
      v1264.origin.y = v850;
      v1264.size.width = v837;
      v1264.size.height = v840;
      if (MaxY > CGRectGetMaxY(v1264))
      {
        v1265.origin.x = rectd;
        v1265.origin.y = v850;
        v1265.size.width = v837;
        v1265.size.height = v840;
        y = CGRectGetMinY(v1265);
      }
    }

    v1266.origin.x = rectd;
    v1266.origin.y = v850;
    v1266.size.width = v837;
    v1266.size.height = v840;
    v1270.origin.x = x;
    v1270.origin.y = y;
    v1270.size.width = width;
    v1270.size.height = height;
    v853 = CGRectContainsRect(v1266, v1270);
    v854 = 0.5;
    v855 = 0.5;
    if (v853)
    {
      UIRectGetCenter();
      v854 = [(SBDisplayItemLayoutAttributes *)v856 normalizedPointForPoint:v857 inBounds:v974, v966, v968, v967];
    }

    v858 = [(SBDisplayItemLayoutAttributes *)v996 attributesByModifyingNormalizedCenter:v854, v855];

    v996 = [(SBDisplayItemLayoutAttributes *)v858 attributesByModifyingCascaded:?];

    [v1025 setObject:v996 forKey:v1053];
  }

LABEL_1102:

LABEL_1103:
LABEL_1104:

LABEL_1105:
LABEL_1106:

LABEL_1107:
  v698 = [SBMainDisplayLayoutState alloc];
  v699 = [rect_16 displayOrdinal];
  LOBYTE(v900) = [rect_16 isDisplayExternal];
  LOBYTE(v897) = v903;
  v1047 = [(SBMainDisplayLayoutState *)v698 _initWithLayoutElements:v1031 spaceConfiguration:v904 elementIdentifiersToLayoutAttributes:v1025 floatingConfiguration:v926 unlockedEnvironmentMode:v930 floatingSwitcherVisible:IsYes centerConfiguration:v912 centerEntityModal:v897 peekConfiguration:v932 bundleIDShowingAppExpose:v945 windowPickerRole:v925 displayOrdinal:v699 isDisplayExternal:v900];

  _Block_object_dispose(&v1217, 8);
LABEL_1108:
  *&v1112.a = [v1047 interfaceOrientation];
  v700 = SBLogCommon();
  if (os_log_type_enabled(v700, OS_LOG_TYPE_DEFAULT))
  {
    v701 = SBStringForUnlockedEnvironmentMode([v1047 unlockedEnvironmentMode]);
    LODWORD(v1252.a) = 138543362;
    *(&v1252.a + 4) = v701;
    _os_log_impl(&dword_21ED4E000, v700, OS_LOG_TYPE_DEFAULT, "[92869424] unlockedEnvironmentMode: %{public}@", &v1252, 0xCu);
  }

  v1069 = 0;
  [rect_24 switcherOrientation:&v1112 elementsOrientations:&v1069 forTransitionRequest:v964 previousLayoutState:rect_16 layoutState:v1047];
  v1016 = v1069;
  [v1047 setInterfaceOrientation:*&v1112.a];
  [v1047 setInterfaceOrientationByLayoutElementIdentifier:v1016];
  v702 = [rect_24 layoutElementSizingPoliciesForLayoutState:v1047];
  [v1047 _updateSizingPoliciesForLayoutElements:v702];

  if (v975 == 14)
  {
    v703 = [v1047 interfaceOrientation];
    v704 = v703 == [rect_16 interfaceOrientation] ? 1 : v952;
    if ((v704 & 1) == 0)
    {
      v705 = [rect_16 appLayout];
      v706 = [v1047 displayOrdinal];
      if ((*&v1112.a - 1) < 2)
      {
        v707 = 1;
      }

      else
      {
        v707 = 2 * ((*&v1112.a - 3) < 2);
      }

      v708 = [v1034 layoutAttributesMapForAppLayout:v705 displayOrdinal:v706 orientation:v707];

      v709 = [v708 mutableCopy];
      v1066[0] = MEMORY[0x277D85DD0];
      v1066[1] = 3221225472;
      v1066[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_131;
      v1066[3] = &unk_2783B9FA8;
      v1032 = v1016;
      v1067 = v1032;
      v710 = v709;
      v1068 = v710;
      [v708 enumerateKeysAndObjectsUsingBlock:v1066];
      v711 = v710;

      v1027 = [SBMainDisplayLayoutState alloc];
      v1040 = [v1047 elements];
      v1021 = [v1047 interfaceOrientation];
      v1009 = [v1047 spaceConfiguration];
      v712 = v711;
      v713 = [MEMORY[0x277CBEB38] dictionary];
      v1230 = 0u;
      memset(&v1229, 0, sizeof(v1229));
      v714 = [v712 allKeys];
      v715 = [v714 countByEnumeratingWithState:&v1229 objects:&v1252 count:16];
      if (v715)
      {
        v716 = **&v1229.c;
        do
        {
          for (i11 = 0; i11 != v715; ++i11)
          {
            if (**&v1229.c != v716)
            {
              objc_enumerationMutation(v714);
            }

            v718 = *(*&v1229.b + 8 * i11);
            v719 = [v712 objectForKey:v718];
            v720 = [v718 uniqueIdentifier];
            [v713 setObject:v719 forKey:v720];
          }

          v715 = [v714 countByEnumeratingWithState:&v1229 objects:&v1252 count:16];
        }

        while (v715);
      }

      v721 = [v713 copy];
      v1000 = [v1047 floatingConfiguration];
      v722 = [v1047 unlockedEnvironmentMode];
      v723 = [v1047 isFloatingSwitcherVisible];
      v724 = [v1047 centerConfiguration];
      v725 = [v1047 isCenterEntityModal];
      v726 = [v1047 peekConfiguration];
      v727 = [v1047 bundleIDShowingAppExpose];
      v728 = [v1047 windowPickerRole];
      v729 = [v1047 displayOrdinal];
      LOBYTE(v901) = [v1047 isDisplayExternal];
      LOBYTE(v899) = v725;
      LOBYTE(v897) = v723;
      v730 = [(SBMainDisplayLayoutState *)v1027 _initWithLayoutElements:v1040 interfaceOrientation:v1021 interfaceOrientationByLayoutElement:v1032 spaceConfiguration:v1009 elementIdentifiersToLayoutAttributes:v721 floatingConfiguration:v1000 unlockedEnvironmentMode:v722 floatingSwitcherVisible:v897 centerConfiguration:v724 centerEntityModal:v899 peekConfiguration:v726 bundleIDShowingAppExpose:v727 windowPickerRole:v728 displayOrdinal:v729 isDisplayExternal:v901];

      v1047 = v730;
    }
  }

  v1064 = 0u;
  v1065 = 0u;
  v1062 = 0u;
  v1063 = 0u;
  v1041 = [v1045 allKeys];
  v731 = [v1041 countByEnumeratingWithState:&v1062 objects:v1232 count:16];
  if (v731)
  {
    v732 = *v1063;
    do
    {
      for (i12 = 0; i12 != v731; ++i12)
      {
        if (*v1063 != v732)
        {
          objc_enumerationMutation(v1041);
        }

        v734 = *(*(&v1062 + 1) + 8 * i12);
        v735 = [v1045 objectForKey:v734];
        v736 = [v1044 objectForKey:v734];
        v737 = [v1047 elementIdentifiersToLayoutAttributes];
        v738 = [v735 uniqueIdentifier];
        v739 = [v737 objectForKey:v738];
        v740 = [v736 isEqual:v739];

        if (*&v1112.a)
        {
          v741 = v740;
        }

        else
        {
          v741 = 0;
        }

        if (v741 == 1)
        {
          v742 = [v1047 appLayout];
          v743 = [v1047 displayOrdinal];
          if ((*&v1112.a - 1) < 2)
          {
            v744 = 1;
          }

          else
          {
            v744 = 2 * ((*&v1112.a - 3) < 2);
          }

          v745 = [v1034 layoutAttributesForDisplayItem:v734 inAppLayout:v742 displayOrdinal:v743 orientation:v744];

          [v1047 _setLayoutAttributes:v745 forLayoutElement:v735];
        }
      }

      v731 = [v1041 countByEnumeratingWithState:&v1062 objects:v1232 count:16];
    }

    while (v731);
  }

  v746 = [v1047 appLayout];
  v1022 = [rect_24 windowScene];
  if (v1022)
  {
    v747 = v746 == 0;
  }

  else
  {
    v747 = 1;
  }

  v748 = !v747;
  if ((v748 & v949) == 1)
  {
    v1001 = objc_alloc_init(SBDisplayItemLayoutAttributesCalculator);
    v1010 = [rect_16 appLayout];
    v749 = [v1043 _autoLayoutOptionsForNewAppLayout:v746 previousAppLayout:v1010 request:v964];
    if ((v943 | v942 & v1011) & (v952 ^ 1))
    {
      v750 = [v1047 layoutAttributesMap];
      v751 = -[SBDisplayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:](v1001, "appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:", v746, v1010, v750, v749, [v1047 interfaceOrientation], v1022, objc_msgSend(v964, "source"), v950, 0);

      v752 = [rect_24 sceneRelevancyManager];
      v753 = [v1047 elementIdentifiersToLayoutAttributes];
      a = v1112.a;
      v755 = [v1047 elements];
      [v1043 _updateSceneRelevancyManager:v752 forAppLayout:v751 applicationTransitionContext:v1029 elementIdentifiersToLayoutAttributes:v753 interfaceOrientation:*&a layoutAttributesProvider:v1034 layoutElements:v755];

      if ((v942 & v1011) != 0)
      {
        v756 = [v752 zOrderedDeviceApplicationSceneEntities];
        v1058[0] = MEMORY[0x277D85DD0];
        v1058[1] = 3221225472;
        v1058[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_133;
        v1058[3] = &unk_2783B9FD0;
        v1059 = v752;
        v1060 = v1003;
        v1061 = v1047;
        [v756 enumerateObjectsUsingBlock:v1058];
      }
    }

    else
    {
      v751 = v746;
    }

    v757 = [v1047 layoutAttributesMap];
    v746 = -[SBDisplayItemLayoutAttributesCalculator appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:](v1001, "appLayoutByPerformingAutoLayoutForAppLayout:previousAppLayout:usingLayoutAttributes:options:containerOrientation:windowScene:source:itemsNeedingPositionSnapping:itemsNeedingSizeSnapping:", v751, v1010, v757, v749, [v1047 interfaceOrientation], v1022, objc_msgSend(v964, "source"), v950, 0);

    v1056 = 0u;
    v1057 = 0u;
    v1054 = 0u;
    v1055 = 0u;
    v1028 = [v746 allItems];
    v1042 = [v1028 countByEnumeratingWithState:&v1054 objects:v1231 count:16];
    if (v1042)
    {
      v1033 = *v1055;
      do
      {
        for (i13 = 0; i13 != v1042; i13 = i13 + 1)
        {
          if (*v1055 != v1033)
          {
            objc_enumerationMutation(v1028);
          }

          v759 = *(*(&v1054 + 1) + 8 * i13);
          v760 = [v1043 _displayItemLayoutAttributesProvider];
          v761 = [v1047 displayOrdinal];
          v762 = [v1047 interfaceOrientation];
          if ((v762 - 1) < 2)
          {
            v763 = 1;
          }

          else
          {
            v763 = 2 * ((v762 - 3) < 2);
          }

          v764 = [v760 layoutAttributesForDisplayItem:v759 inAppLayout:v746 displayOrdinal:v761 orientation:v763];

          v765 = [v1047 elementWithRole:{objc_msgSend(v746, "layoutRoleForItem:", v759)}];
          [v1047 _setLayoutAttributes:v764 forLayoutElement:v765];
          v766 = [v765 workspaceEntity];
          v767 = [v766 deviceApplicationSceneEntity];
          v768 = [v767 sceneHandle];

          if (v768 && ([v768 supportsCenterWindow] & 1) == 0)
          {
            v769 = [v768 application];
            if (v769)
            {
              v770 = [v769 lastWindowLayoutAttributesForDisplayOrdinal:{objc_msgSend(v1047, "displayOrdinal")}];
              v771 = v770;
              if (!v770 || (v772 = [(SBHomeScreenConfigurationServer *)v770 connections], v772 != [(SBHomeScreenConfigurationServer *)v764 connections]) || ([(SBDisplayItemLayoutAttributes *)v771 attributedSize], [(SBDisplayItemLayoutAttributes *)v764 attributedSize], !SBEqualDisplayItemAttributedSizes(&v1252, &v1229)) || (v773 = [(SBDisplayItemLayoutAttributes *)v771 normalizedCenter], v775 = v774, v773 != [(SBDisplayItemLayoutAttributes *)v764 normalizedCenter]) || v775 != v776 || (v777 = [(SBDisplayItemLayoutAttributes *)v771 isPositionSystemManaged], v777 != [(SBDisplayItemLayoutAttributes *)v764 isPositionSystemManaged]) || ([(SBDisplayItemLayoutAttributes *)v771 slideOverConfiguration], [(SBDisplayItemLayoutAttributes *)v764 slideOverConfiguration], !SBEqualDisplayItemSlideOverConfigurations(&v1252, &v1229)))
              {
                v778 = v764;
                v779 = [v768 _interfaceOrientationFromUserResizing];
                if (!v779 || v779 != [(SBHomeScreenConfigurationServer *)v778 authenticator])
                {
                  v780 = [SBDisplayItemLayoutAttributes attributesByModifyingContentOrientation:v778];

                  v778 = v780;
                }

                [v769 setLastWindowLayoutAttributes:v778 forDisplayOrdinal:{objc_msgSend(v1047, "displayOrdinal")}];
              }
            }
          }
        }

        v1042 = [v1028 countByEnumeratingWithState:&v1054 objects:v1231 count:16];
      }

      while (v1042);
    }
  }

  v781 = v1047;

  return v781;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHomeScreenEntity] & 1) != 0 || (objc_msgSend(v2, "isEmptyWorkspaceEntity"))
  {
    v3 = 0;
  }

  else
  {
    v3 = [SBLayoutElement elementWithDescriptor:v2];
  }

  return v3;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntity];
  [v2 setFrozen:0];
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntity];
  [v2 setFrozen:0];
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isPreviousWorkspaceEntity])
  {
    goto LABEL_22;
  }

  v7 = [v5 previousLayoutRole];
  if (v7)
  {
    v9 = [a1[4] previousEntityForLayoutRole:v7];
    v8 = [v9 copy];

    if (!v8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v8 = [v6 copy];
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  v10 = [v8 layoutRole];
  if ([a1[5] isAnalogousToEntity:v8])
  {
    v11 = [a1[5] layoutRole] != v10;
  }

  else
  {
    v11 = 0;
  }

  if ([a1[6] isAnalogousToEntity:v8])
  {
    v12 = [a1[6] layoutRole] != v10;
  }

  else
  {
    v12 = 0;
  }

  if ([a1[7] isAnalogousToEntity:v8])
  {
    v13 = [a1[7] layoutRole] != v10;
  }

  else
  {
    v13 = 0;
  }

  if ([a1[8] isAnalogousToEntity:v8])
  {
    v14 = [a1[8] layoutRole] != v10;
  }

  else
  {
    v14 = 0;
  }

  if (!v11 && !v12 && !v13 && !v14)
  {
    [v8 clearActivationSettings];
    v15 = [v5 activationSettings];
    [v8 applyActivationSettings:v15];

    [v8 clearDeactivationSettings];
    v16 = [v5 deactivationSettings];
    [v8 applyDeactivationSettings:v16];

    goto LABEL_23;
  }

LABEL_22:
  v8 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_23:

  return v8;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmptyWorkspaceEntity])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isPreviousWorkspaceEntity] ^ 1;
  }

  return v3;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_43(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v3 _applicationSceneEntityFromApplicationBundleIdentifier:v5 uniqueIdentifier:v6 displayIdentity:*(a1 + 40)];

  return v7;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 bundleIdentifier];
  v6 = [v4 uniqueIdentifier];

  v7 = [v3 _applicationSceneEntityFromApplicationBundleIdentifier:v5 uniqueIdentifier:v6 displayIdentity:*(a1 + 40)];

  return v7;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEmptyWorkspaceEntity])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isPreviousWorkspaceEntity] ^ 1;
  }

  return v3;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_10(uint64_t a1, uint64_t a2)
{
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = 0;
  }

  else
  {
    v2 = a2 >= 1;
  }

  if (v2 && SBLayoutRoleIsValidForSplitView(a2))
  {
    v5 = [*(a1 + 32) entityForLayoutRole:a2];
    v6 = v5;
    if (!v5 || (v8 = v5, v7 = [v5 isEmptyWorkspaceEntity], v6 = v8, v7))
    {
      *(*(*(a1 + 40) + 8) + 24) = a2;
    }
  }
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_11(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 5)
  {
    v7 = [*(a1 + 32) entityForLayoutRole:a2];
    if (v7)
    {
      v11 = v7;
      if ([v7 isPreviousWorkspaceEntity])
      {
        v8 = [*(a1 + 32) previousEntityForLayoutRole:a2];
        v9 = (*(*(a1 + 40) + 16))();

        v11 = v9;
      }

      v10 = [*(a1 + 32) entityForLayoutRole:a2];

      v7 = v11;
      if (v10 != v11)
      {
        [*(a1 + 32) setEntity:v11 forLayoutRole:a2];
        v7 = v11;
      }
    }

    else
    {
      *a3 = 1;
    }
  }
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_12(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = 1;
  v4 = SBLayoutRoleMax();
  v5 = v10;
  if (v4 < 1)
  {
    goto LABEL_11;
  }

  while (!SBLayoutRoleIsValidForSplitView(v3))
  {
LABEL_6:
    if (v3++ >= SBLayoutRoleMax())
    {
      v3 = 0;
      goto LABEL_9;
    }
  }

  v6 = [*(a1 + 32) entityForLayoutRole:v3];
  v7 = v6;
  if (v6 && ![v6 isEmptyWorkspaceEntity])
  {
    v8 = [v7 isHomeScreenEntity];

    if (v8)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_9:
  v5 = v10;
  if (v3)
  {
    [*(a1 + 32) setEntity:v10 forLayoutRole:v3];
    v5 = v10;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

LABEL_11:
}

BOOL __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) removalContextForEntity:a2];
  v3 = v2 != 0;

  return v3;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 uniqueIdentifier];

  v6 = [v4 isEqual:v5];
  return v6;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (![v5 isPreviousWorkspaceEntity])
  {
    goto LABEL_7;
  }

  v7 = [v5 previousLayoutRole];
  v8 = v6;
  if (v7)
  {
    if (v7 != 1)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 32);
  }

  v9 = [v8 copy];
  if (v9)
  {
    v10 = v9;
    [v9 clearActivationSettings];
    v11 = [v5 activationSettings];
    [v10 applyActivationSettings:v11];

    [v10 clearDeactivationSettings];
    v12 = [v5 deactivationSettings];
    [v10 applyDeactivationSettings:v12];

    goto LABEL_8;
  }

LABEL_7:
  v10 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
LABEL_8:

  return v10;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_16(uint64_t a1, uint64_t a2)
{
  if (a2 < 5)
  {
    return;
  }

  v4 = [*(a1 + 32) entityForLayoutRole:a2];
  if (!v4)
  {
    v5 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:a2];
LABEL_7:
    v8 = *(a1 + 80);
    v9 = [*(a1 + 32) previousEntityForLayoutRole:a2];
    v21 = (*(v8 + 16))(v8, v5, v9);

    v10 = [*(a1 + 32) entities];
    LODWORD(v8) = [v10 containsObject:v21];

    if (v8)
    {

      v7 = 0;
    }

    else
    {
      v7 = v21;
    }

    goto LABEL_10;
  }

  v5 = v4;
  v6 = [v4 isPreviousWorkspaceEntity];
  v7 = v5;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_10:
  v22 = v7;
  if (([v7 isEmptyWorkspaceEntity] & 1) == 0 && (objc_msgSend(v22, "isHomeScreenEntity") & 1) == 0)
  {
    v11 = v22;
    if (!v22)
    {
      return;
    }

    v12 = *(a1 + 40);
    if (v12 && (v13 = [v12 isAnalogousToEntity:v22], v11 = v22, (v13 & 1) != 0) || (v14 = *(a1 + 48)) != 0 && (v15 = objc_msgSend(v14, "isAnalogousToEntity:", v22), v11 = v22, (v15 & 1) != 0) || (v16 = *(a1 + 56)) != 0 && (v17 = objc_msgSend(v16, "isAnalogousToEntity:", v22), v11 = v22, (v17 & 1) != 0) || (v18 = *(a1 + 64)) != 0 && (v19 = objc_msgSend(v18, "isAnalogousToEntity:", v22), v11 = v22, (v19 & 1) != 0))
    {
      [*(a1 + 32) setEntity:0 forLayoutRole:a2];
    }

    else
    {
      [*(a1 + 32) setEntity:v11 forLayoutRole:*(*(*(a1 + 96) + 8) + 24)];
      v20 = (*(*(a1 + 88) + 16))();
      if (v20)
      {
        [*(a1 + 72) addObject:v20];
        ++*(*(*(a1 + 96) + 8) + 24);
      }
    }
  }
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 containsItemWithBundleIdentifier:*(a1 + 32)];
  }

  return v4;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uniqueIdentifier];
  v8 = [v5 objectForKey:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uniqueIdentifier];

  v11 = [v9 objectForKey:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v11)];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v8)];
  v14 = [v12 compare:v13];

  return v14;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uniqueIdentifier];
  v8 = [v5 objectForKey:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uniqueIdentifier];

  v11 = [v9 objectForKey:v10];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v11)];
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:-[SBHomeScreenConfigurationServer queue](v8)];
  v14 = [v12 compare:v13];

  return v14;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(*(*(a1 + 32) + 8) + 40) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_25;
  v11[3] = &unk_2783B65A8;
  v5 = v3;
  v12 = v5;
  v6 = [v4 bs_firstObjectPassingTest:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 workspaceEntity];
  }

  v9 = v8;

  return v9;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 layoutRole] == 4)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 layoutRole] == 3)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_31;
  v8[3] = &unk_2783AC4F8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 bs_containsObjectPassingTest:v8];

  return v6;
}

uint64_t __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  v6 = [v4 objectForKey:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [SBDisplayItem displayItemForLayoutElement:v3];
  }

  return v7;
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_131(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v11 uniqueIdentifier];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 integerValue];

  v10 = v5;
  if (v9)
  {
    v10 = [SBDisplayItemLayoutAttributes attributesByModifyingContentOrientation:v5];

    [*(a1 + 40) setObject:v10 forKey:v11];
  }
}

void __79__SBMainDisplayLayoutStateManager__layoutStateForApplicationTransitionContext___block_invoke_2_133(id *a1, void *a2)
{
  v5 = a2;
  if ([a1[4] shouldFreezeSceneEntity:?])
  {
    v3 = 1;
  }

  else if ([a1[5] count])
  {
    v4 = [v5 displayItemRepresentation];
    v3 = v4 && [a1[5] containsObject:v4] && objc_msgSend(a1[6], "peekConfiguration") == 3 && objc_msgSend(a1[6], "unlockedEnvironmentMode") == 1;
  }

  else
  {
    v3 = 0;
  }

  [v5 setFrozen:v3];
}

- (id)_displayItemLayoutAttributesProvider
{
  v2 = [(SBMainDisplayLayoutStateManager *)self _recentAppLayouts];
  v3 = [v2 layoutAttributesProvider];

  return v3;
}

- (id)_layoutStateForDisplayIdentity:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 windowSceneManager];
  v6 = [v5 windowSceneForDisplayIdentity:v4];

  v7 = [v6 layoutStateProvider];
  v8 = [v7 layoutState];

  return v8;
}

- (id)_sceneManagerForDisplayIdentity:(id)a3
{
  v3 = a3;
  v4 = +[SBSceneManagerCoordinator sharedInstance];
  v5 = [v4 sceneManagerForDisplayIdentity:v3];

  return v5;
}

- (id)_switcherControllerForDisplayIdentity:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 windowSceneManager];
  v6 = [v5 windowSceneForDisplayIdentity:v4];

  v7 = [v6 switcherController];

  return v7;
}

- (BOOL)_hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:(id)a3
{
  v3 = a3;
  v4 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v5 = [v4 _hasAppLayoutBeenUserKilledWithinThresholdToCreateNewScene:v3];

  return v5;
}

- (id)_applicationSceneEntityFromApplicationBundleIdentifier:(id)a3 uniqueIdentifier:(id)a4 displayIdentity:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(SBMainDisplayLayoutStateManager *)self _applicationController];
  v12 = [v11 applicationWithBundleIdentifier:v10];

  if (v12)
  {
    v13 = [SBDeviceApplicationSceneEntity alloc];
    v14 = [(SBMainDisplayLayoutStateManager *)self _sceneManagerForDisplayIdentity:v9];
    v15 = [(SBDeviceApplicationSceneEntity *)v13 initWithApplication:v12 uniqueIdentifier:v8 sceneHandleProvider:v14 displayIdentity:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_doesSceneIDSpecifyPrimaryScene:(uint64_t)a1 forApplicationIdentifier:(uint64_t)a2 sceneSessionRole:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Error decoding activation conditions for %{public}@:%{public}@", &v3, 0x16u);
}

@end
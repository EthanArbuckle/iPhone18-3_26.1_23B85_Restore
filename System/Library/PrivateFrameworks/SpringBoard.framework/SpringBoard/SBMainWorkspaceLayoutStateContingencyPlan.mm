@interface SBMainWorkspaceLayoutStateContingencyPlan
- (id)transitionContextForLayoutContext:(id)context failedEntities:(id)entities;
@end

@implementation SBMainWorkspaceLayoutStateContingencyPlan

- (id)transitionContextForLayoutContext:(id)context failedEntities:(id)entities
{
  v98 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  entitiesCopy = entities;
  layoutState = [contextCopy layoutState];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v8 = entitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v92 objects:v97 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v93;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v93 != v11)
        {
          objc_enumerationMutation(v8);
        }

        uniqueIdentifier = [*(*(&v92 + 1) + 8 * i) uniqueIdentifier];
        v14 = [layoutState elementWithIdentifier:uniqueIdentifier];

        if (v14)
        {

          v15 = +[(SBWorkspaceTransitionContext *)SBWorkspaceApplicationSceneTransitionContext];
          [v15 setContingencyPlan:1];
          [v15 setAnimationDisabled:1];
          displayIdentity = [contextCopy displayIdentity];
          if ([displayIdentity sb_displayWindowingMode] == 1)
          {
            v82 = v8;
            v79 = contextCopy;
            windowSceneManager = [SBApp windowSceneManager];
            v18 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

            switcherController = [v18 switcherController];
            unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];
            if (unlockedEnvironmentMode == 2)
            {
              [v15 setRequestedUnlockedEnvironmentMode:2];
            }

            windowManagementContext = [switcherController windowManagementContext];
            isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

            v80 = layoutState;
            if (isChamoisOrFlexibleWindowing)
            {
              v22 = v8;
              v23 = [v8 bs_compactMap:&__block_literal_global_404];
              v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v88[0] = MEMORY[0x277D85DD0];
              v88[1] = 3221225472;
              v88[2] = __94__SBMainWorkspaceLayoutStateContingencyPlan_transitionContextForLayoutContext_failedEntities___block_invoke_2;
              v88[3] = &unk_2783B5080;
              v89 = layoutState;
              v90 = v23;
              v91 = v24;
              v25 = v24;
              v26 = v23;
              SBLayoutRoleEnumerateValidRoles(v88);
              [v15 setEntities:v25 withPolicy:0 centerEntity:0 floatingEntity:0];
            }

            else if (unlockedEnvironmentMode == 2)
            {
              v28 = [layoutState elementWithRole:?];
              v29 = [layoutState elementWithRole:?];
              v30 = [v8 bs_map:&__block_literal_global_10_1];
              uniqueIdentifier2 = [v28 uniqueIdentifier];
              v32 = [v30 containsObject:uniqueIdentifier2];

              if (v32)
              {
                +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
              }

              else
              {
                [v28 workspaceEntity];
              }
              v41 = ;
              [v15 setEntity:v41 forLayoutRole:1];

              if (v29 && ([v29 uniqueIdentifier], v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v30, "containsObject:", v42), v42, (v43 & 1) == 0))
              {
                workspaceEntity = [v29 workspaceEntity];
                uniqueIdentifier3 = [v28 uniqueIdentifier];
                v46 = [v30 containsObject:uniqueIdentifier3];

                if (v46)
                {
                  [v15 setEntity:workspaceEntity forLayoutRole:1];
                  v47 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                  [v15 setEntity:v47 forLayoutRole:2];
                }

                else
                {
                  [v15 setEntity:workspaceEntity forLayoutRole:2];
                }

                layoutState = v80;
              }

              else
              {
                workspaceEntity = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                [v15 setEntity:workspaceEntity forLayoutRole:2];
              }

              v22 = v8;
            }

            else
            {
              v33 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
              v34 = +[SBSetupManager sharedInstance];
              if ([v34 isInSetupMode] && objc_msgSend(v34, "updateInSetupMode"))
              {
                v35 = v18;
                v36 = layoutState;
                v37 = [v82 objectsPassingTest:&__block_literal_global_7_7];
                anyObject = [v37 anyObject];

                if (anyObject)
                {
                  v39 = anyObject;

                  v33 = v39;
                }

                layoutState = v36;

                v18 = v35;
              }

              [v15 setEntity:v33 forLayoutRole:1];
              v40 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
              [v15 setEntity:v40 forLayoutRole:2];

              v22 = v82;
            }

            v48 = [v15 entityForLayoutRole:1];
            isApplicationSceneEntity = [v48 isApplicationSceneEntity];

            v77 = v18;
            v78 = displayIdentity;
            if (isApplicationSceneEntity)
            {
              v50 = objc_opt_class();
              v51 = layoutState;
              if (v50)
              {
                if (objc_opt_isKindOfClass())
                {
                  v52 = v51;
                }

                else
                {
                  v52 = 0;
                }
              }

              else
              {
                v52 = 0;
              }

              v53 = v52;

              if (v53)
              {
                [v15 setRequestedPeekConfiguration:{objc_msgSend(v53, "peekConfiguration")}];
              }
            }

            else
            {
              [v15 setRequestedPeekConfiguration:1];
            }

            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v54 = v22;
            v55 = [v54 countByEnumeratingWithState:&v84 objects:v96 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v85;
              v83 = v15;
              do
              {
                for (j = 0; j != v56; ++j)
                {
                  if (*v85 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = *(*(&v84 + 1) + 8 * j);
                  if ([v59 isApplicationSceneEntity])
                  {
                    application = [v59 application];
                    if ([application failedLaunchCount] > 1 || (objc_msgSend(SBApp, "privacyPreflightController"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(application, "info"), v62 = v57, v63 = v54, v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "applicationIdentity"), v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v61, "requiresPreflightForApplication:", v65), v65, v64, v54 = v63, v57 = v62, v61, v15 = v83, v66))
                    {
                      v67 = [[SBWorkspaceEntityRemovalContext alloc] initWithAnimationStyle:0 removalActionType:1];
                      [v15 setRemovalContext:v67 forEntity:v59];
                    }
                  }
                }

                v56 = [v54 countByEnumeratingWithState:&v84 objects:v96 count:16];
              }

              while (v56);
            }

            layoutState = v80;
            v27 = v77;
            displayIdentity = v78;
            if ([v54 count] == 1)
            {
              layoutStateProvider = [v77 layoutStateProvider];
              layoutState2 = [layoutStateProvider layoutState];

              anyObject2 = [v54 anyObject];
              uniqueIdentifier4 = [anyObject2 uniqueIdentifier];
              v72 = [layoutState2 elementWithIdentifier:uniqueIdentifier4];
              layoutRole = [v72 layoutRole];

              if (layoutRole == 3)
              {
                [v15 setEntity:0 forLayoutRole:v76];
                [v15 setEntity:0 forLayoutRole:2];
                v74 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                [v15 setEntity:v74 forLayoutRole:3];

                if ([v80 isFloatingSwitcherVisible])
                {
                  [v15 setRequestedFloatingSwitcherVisible:1];
                }
              }
            }

            contextCopy = v79;
            v8 = v82;
          }

          else
          {
            v27 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
            [v15 setEntity:v27 forLayoutRole:1];
          }

          goto LABEL_63;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v92 objects:v97 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
  displayIdentity = v8;
LABEL_63:

  return v15;
}

void __94__SBMainWorkspaceLayoutStateContingencyPlan_transitionContextForLayoutContext_failedEntities___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (SBLayoutRoleIsValidForSplitView(a2))
  {
    v4 = [*(a1 + 32) elementWithRole:a2];
    if (v4)
    {
      v5 = *(a1 + 40);
      v9 = v4;
      v6 = [v4 uniqueIdentifier];
      LOBYTE(v5) = [v5 containsObject:v6];

      v4 = v9;
      if ((v5 & 1) == 0)
      {
        v7 = *(a1 + 48);
        v8 = [v9 workspaceEntity];
        [v7 addObject:v8];

        v4 = v9;
      }
    }
  }
}

uint64_t __94__SBMainWorkspaceLayoutStateContingencyPlan_transitionContextForLayoutContext_failedEntities___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 applicationSceneEntity];
  v3 = [v2 application];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.purplebuddy"];

  return v5;
}

@end
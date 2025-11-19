@interface SBMainWorkspaceLayoutStateContingencyPlan
- (id)transitionContextForLayoutContext:(id)a3 failedEntities:(id)a4;
@end

@implementation SBMainWorkspaceLayoutStateContingencyPlan

- (id)transitionContextForLayoutContext:(id)a3 failedEntities:(id)a4
{
  v98 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 layoutState];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v8 = v6;
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

        v13 = [*(*(&v92 + 1) + 8 * i) uniqueIdentifier];
        v14 = [v7 elementWithIdentifier:v13];

        if (v14)
        {

          v15 = +[(SBWorkspaceTransitionContext *)SBWorkspaceApplicationSceneTransitionContext];
          [v15 setContingencyPlan:1];
          [v15 setAnimationDisabled:1];
          v16 = [v5 displayIdentity];
          if ([v16 sb_displayWindowingMode] == 1)
          {
            v82 = v8;
            v79 = v5;
            v17 = [SBApp windowSceneManager];
            v18 = [v17 windowSceneForDisplayIdentity:v16];

            v81 = [v18 switcherController];
            v19 = [v7 unlockedEnvironmentMode];
            if (v19 == 2)
            {
              [v15 setRequestedUnlockedEnvironmentMode:2];
            }

            v20 = [v81 windowManagementContext];
            v21 = [v20 isChamoisOrFlexibleWindowing];

            v80 = v7;
            if (v21)
            {
              v22 = v8;
              v23 = [v8 bs_compactMap:&__block_literal_global_404];
              v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v88[0] = MEMORY[0x277D85DD0];
              v88[1] = 3221225472;
              v88[2] = __94__SBMainWorkspaceLayoutStateContingencyPlan_transitionContextForLayoutContext_failedEntities___block_invoke_2;
              v88[3] = &unk_2783B5080;
              v89 = v7;
              v90 = v23;
              v91 = v24;
              v25 = v24;
              v26 = v23;
              SBLayoutRoleEnumerateValidRoles(v88);
              [v15 setEntities:v25 withPolicy:0 centerEntity:0 floatingEntity:0];
            }

            else if (v19 == 2)
            {
              v28 = [v7 elementWithRole:?];
              v29 = [v7 elementWithRole:?];
              v30 = [v8 bs_map:&__block_literal_global_10_1];
              v31 = [v28 uniqueIdentifier];
              v32 = [v30 containsObject:v31];

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
                v44 = [v29 workspaceEntity];
                v45 = [v28 uniqueIdentifier];
                v46 = [v30 containsObject:v45];

                if (v46)
                {
                  [v15 setEntity:v44 forLayoutRole:1];
                  v47 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                  [v15 setEntity:v47 forLayoutRole:2];
                }

                else
                {
                  [v15 setEntity:v44 forLayoutRole:2];
                }

                v7 = v80;
              }

              else
              {
                v44 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
                [v15 setEntity:v44 forLayoutRole:2];
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
                v36 = v7;
                v37 = [v82 objectsPassingTest:&__block_literal_global_7_7];
                v38 = [v37 anyObject];

                if (v38)
                {
                  v39 = v38;

                  v33 = v39;
                }

                v7 = v36;

                v18 = v35;
              }

              [v15 setEntity:v33 forLayoutRole:1];
              v40 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
              [v15 setEntity:v40 forLayoutRole:2];

              v22 = v82;
            }

            v48 = [v15 entityForLayoutRole:1];
            v49 = [v48 isApplicationSceneEntity];

            v77 = v18;
            v78 = v16;
            if (v49)
            {
              v50 = objc_opt_class();
              v51 = v7;
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
                    v60 = [v59 application];
                    if ([v60 failedLaunchCount] > 1 || (objc_msgSend(SBApp, "privacyPreflightController"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "info"), v62 = v57, v63 = v54, v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v64, "applicationIdentity"), v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v61, "requiresPreflightForApplication:", v65), v65, v64, v54 = v63, v57 = v62, v61, v15 = v83, v66))
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

            v7 = v80;
            v27 = v77;
            v16 = v78;
            if ([v54 count] == 1)
            {
              v68 = [v77 layoutStateProvider];
              v69 = [v68 layoutState];

              v70 = [v54 anyObject];
              v71 = [v70 uniqueIdentifier];
              v72 = [v69 elementWithIdentifier:v71];
              v73 = [v72 layoutRole];

              if (v73 == 3)
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

            v5 = v79;
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
  v16 = v8;
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
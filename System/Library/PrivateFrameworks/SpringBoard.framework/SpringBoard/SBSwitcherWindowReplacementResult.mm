@interface SBSwitcherWindowReplacementResult
+ (id)defaultWindowReplacementResult;
+ (id)windowReplacementResultByRemovingLayoutElements:(id)a3 fromLayoutState:(id)a4 withPrecedingLayoutState:(id)a5 recentAppLayouts:(id)a6 windowManagementContext:(id)a7;
- (SBSwitcherWindowReplacementResult)initWithPrimaryElement:(id)a3 sideElement:(id)a4 activatingEntity:(id)a5 requestedUnlockedEnvironmentMode:(int64_t)a6;
@end

@implementation SBSwitcherWindowReplacementResult

+ (id)defaultWindowReplacementResult
{
  v2 = [[a1 alloc] initWithPrimaryElement:0 sideElement:0 activatingEntity:0 requestedUnlockedEnvironmentMode:0];

  return v2;
}

+ (id)windowReplacementResultByRemovingLayoutElements:(id)a3 fromLayoutState:(id)a4 withPrecedingLayoutState:(id)a5 recentAppLayouts:(id)a6 windowManagementContext:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke;
  v72[3] = &unk_2783AC4F8;
  v16 = v14;
  v73 = v16;
  v17 = MEMORY[0x223D6F7F0](v72);
  if ([v11 count] != 1)
  {
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  v18 = [v11 firstObject];
  v19 = [v12 elements];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke_2;
  v70[3] = &unk_2783AC4F8;
  v20 = v18;
  v71 = v20;
  v21 = [v19 bs_filter:v70];

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke_3;
  v68[3] = &unk_2783C0C48;
  v22 = v12;
  v69 = v22;
  v65 = v21;
  v66 = v20;
  if (![v11 bs_containsObjectPassingTest:v68])
  {
    if ([v21 count])
    {
      if ([v21 count] != 1)
      {
        v25 = 0;
        v26 = 0;
        v24 = 0;
        v23 = 0;
        goto LABEL_42;
      }

      v63 = v15;
      v27 = [v20 uniqueIdentifier];
      v28 = [v22 elementWithIdentifier:v27];

      if (!v28)
      {
        v24 = 0;
        v23 = 0;
LABEL_35:

        v25 = 0;
        v26 = 0;
        v15 = v63;
        goto LABEL_42;
      }

      v59 = [v22 elementWithRole:1];
      v57 = [v22 elementWithRole:2];
      v29 = [v13 elementWithRole:1];
      v61 = [v13 elementWithRole:2];
      v30 = [v28 layoutRole];
      if (v30 == 1)
      {
        v54 = v28;
        v31 = [v29 uniqueIdentifier];
        [v20 uniqueIdentifier];
        v33 = v32 = v29;
        v53 = v31;
        v34 = [v33 isEqualToString:v31];

        v55 = v32;
        v35 = (v17)[2](v17, v32);
        v36 = v57;
        v24 = 0;
        if (![v57 isEqual:v61] || v34)
        {
          v23 = v57;
        }

        else
        {
          v23 = v57;
          if (v35)
          {
            v23 = v55;
            v24 = v57;
          }
        }

        v49 = v57;
      }

      else
      {
        if (v30 != 2)
        {
          if (v30 == 4)
          {
            v23 = v59;
            v36 = v57;
            v24 = v57;
          }

          else
          {
            v24 = 0;
            v23 = 0;
            v36 = v57;
          }

          goto LABEL_34;
        }

        v54 = v28;
        v44 = [v61 uniqueIdentifier];
        [v20 uniqueIdentifier];
        v46 = v45 = v29;
        v53 = v44;
        v52 = [v46 isEqualToString:v44];

        v47 = (v17)[2](v17, v61);
        v55 = v45;
        LODWORD(v45) = [v59 isEqual:v45];
        v23 = v59;
        v24 = 0;
        if (!v45 || v52)
        {
          v36 = v57;
        }

        else
        {
          v36 = v57;
          if (v47)
          {
            v24 = v61;
          }
        }
      }

      v28 = v54;
      v29 = v55;
LABEL_34:

      goto LABEL_35;
    }

    if ([v15 isFlexibleWindowingEnabled] || objc_msgSend(v13, "unlockedEnvironmentMode") != 3)
    {
      v26 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
      v24 = 0;
      v23 = 0;
      v25 = 1;
      goto LABEL_42;
    }

    v64 = [v13 elementWithRole:1];
    v62 = [v13 elementWithRole:2];
    v37 = [v64 uniqueIdentifier];
    v38 = [v62 uniqueIdentifier];
    v39 = [v20 uniqueIdentifier];
    v60 = v37;
    v56 = [v39 isEqualToString:v37];

    v40 = [v20 uniqueIdentifier];
    v58 = v38;
    LODWORD(v37) = [v40 isEqualToString:v38];

    LODWORD(v40) = (v17)[2](v17, v64);
    v41 = (v17)[2](v17, v62);
    v42 = (v56 ^ 1) & v40;
    v43 = (v37 ^ 1) & v41;
    if (v42 == 1 && v43)
    {
      v23 = v64;
      v24 = v62;
      v25 = 0;
      v26 = 0;
    }

    else
    {
      if (v42)
      {
        v48 = v64;
      }

      else
      {
        if (!v43)
        {
          v26 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
          v24 = 0;
          v23 = 0;
          v25 = 1;
          goto LABEL_41;
        }

        v48 = v62;
      }

      v23 = v48;
      v25 = 0;
      v26 = 0;
      v24 = 0;
    }

LABEL_41:

    goto LABEL_42;
  }

  v23 = [v22 elementWithRole:1];
  v24 = [v22 elementWithRole:2];
  v25 = 0;
  v26 = 0;
LABEL_42:

LABEL_43:
  v50 = [[a1 alloc] initWithPrimaryElement:v23 sideElement:v24 activatingEntity:v26 requestedUnlockedEnvironmentMode:v25];

  return v50;
}

uint64_t __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 workspaceEntity];
  if ([v3 isApplicationSceneEntity])
  {
    v4 = [v3 displayItemRepresentation];
    v5 = *(a1 + 32);
    v6 = [v4 bundleIdentifier];
    v7 = [v5 recentDisplayItemsForBundleIdentifier:v6 includingHiddenAppLayouts:0];
    v8 = [v7 containsObject:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SBLayoutRoleIsValidForSplitView([v3 layoutRole]))
  {
    v4 = [v3 representsSameLayoutElementAsDescriptor:*(a1 + 32)] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) elementWithRole:4];
  v5 = [v4 uniqueIdentifier];
  v6 = BSEqualStrings();

  return v6;
}

- (SBSwitcherWindowReplacementResult)initWithPrimaryElement:(id)a3 sideElement:(id)a4 activatingEntity:(id)a5 requestedUnlockedEnvironmentMode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SBSwitcherWindowReplacementResult;
  v14 = [(SBSwitcherWindowReplacementResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_primaryElement, a3);
    objc_storeStrong(&v15->_sideElement, a4);
    objc_storeStrong(&v15->_activatingEntity, a5);
    v15->_requestedUnlockedEnvironmentMode = a6;
  }

  return v15;
}

@end
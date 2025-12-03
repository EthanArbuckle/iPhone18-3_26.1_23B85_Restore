@interface SBSwitcherWindowReplacementResult
+ (id)defaultWindowReplacementResult;
+ (id)windowReplacementResultByRemovingLayoutElements:(id)elements fromLayoutState:(id)state withPrecedingLayoutState:(id)layoutState recentAppLayouts:(id)layouts windowManagementContext:(id)context;
- (SBSwitcherWindowReplacementResult)initWithPrimaryElement:(id)element sideElement:(id)sideElement activatingEntity:(id)entity requestedUnlockedEnvironmentMode:(int64_t)mode;
@end

@implementation SBSwitcherWindowReplacementResult

+ (id)defaultWindowReplacementResult
{
  v2 = [[self alloc] initWithPrimaryElement:0 sideElement:0 activatingEntity:0 requestedUnlockedEnvironmentMode:0];

  return v2;
}

+ (id)windowReplacementResultByRemovingLayoutElements:(id)elements fromLayoutState:(id)state withPrecedingLayoutState:(id)layoutState recentAppLayouts:(id)layouts windowManagementContext:(id)context
{
  elementsCopy = elements;
  stateCopy = state;
  layoutStateCopy = layoutState;
  layoutsCopy = layouts;
  contextCopy = context;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke;
  v72[3] = &unk_2783AC4F8;
  v16 = layoutsCopy;
  v73 = v16;
  v17 = MEMORY[0x223D6F7F0](v72);
  if ([elementsCopy count] != 1)
  {
    v25 = 0;
    v26 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  firstObject = [elementsCopy firstObject];
  elements = [stateCopy elements];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke_2;
  v70[3] = &unk_2783AC4F8;
  v20 = firstObject;
  v71 = v20;
  v21 = [elements bs_filter:v70];

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __167__SBSwitcherWindowReplacementResult_windowReplacementResultByRemovingLayoutElements_fromLayoutState_withPrecedingLayoutState_recentAppLayouts_windowManagementContext___block_invoke_3;
  v68[3] = &unk_2783C0C48;
  v22 = stateCopy;
  v69 = v22;
  v65 = v21;
  v66 = v20;
  if (![elementsCopy bs_containsObjectPassingTest:v68])
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

      v63 = contextCopy;
      uniqueIdentifier = [v20 uniqueIdentifier];
      v28 = [v22 elementWithIdentifier:uniqueIdentifier];

      if (!v28)
      {
        v24 = 0;
        v23 = 0;
LABEL_35:

        v25 = 0;
        v26 = 0;
        contextCopy = v63;
        goto LABEL_42;
      }

      v59 = [v22 elementWithRole:1];
      v57 = [v22 elementWithRole:2];
      v29 = [layoutStateCopy elementWithRole:1];
      v61 = [layoutStateCopy elementWithRole:2];
      layoutRole = [v28 layoutRole];
      if (layoutRole == 1)
      {
        v54 = v28;
        uniqueIdentifier2 = [v29 uniqueIdentifier];
        [v20 uniqueIdentifier];
        v33 = v32 = v29;
        v53 = uniqueIdentifier2;
        v34 = [v33 isEqualToString:uniqueIdentifier2];

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
        if (layoutRole != 2)
        {
          if (layoutRole == 4)
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
        uniqueIdentifier3 = [v61 uniqueIdentifier];
        [v20 uniqueIdentifier];
        v46 = v45 = v29;
        v53 = uniqueIdentifier3;
        v52 = [v46 isEqualToString:uniqueIdentifier3];

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

    if ([contextCopy isFlexibleWindowingEnabled] || objc_msgSend(layoutStateCopy, "unlockedEnvironmentMode") != 3)
    {
      v26 = +[(SBWorkspaceEntity *)SBHomeScreenEntity];
      v24 = 0;
      v23 = 0;
      v25 = 1;
      goto LABEL_42;
    }

    v64 = [layoutStateCopy elementWithRole:1];
    v62 = [layoutStateCopy elementWithRole:2];
    uniqueIdentifier4 = [v64 uniqueIdentifier];
    uniqueIdentifier5 = [v62 uniqueIdentifier];
    uniqueIdentifier6 = [v20 uniqueIdentifier];
    v60 = uniqueIdentifier4;
    v56 = [uniqueIdentifier6 isEqualToString:uniqueIdentifier4];

    uniqueIdentifier7 = [v20 uniqueIdentifier];
    v58 = uniqueIdentifier5;
    LODWORD(uniqueIdentifier4) = [uniqueIdentifier7 isEqualToString:uniqueIdentifier5];

    LODWORD(uniqueIdentifier7) = (v17)[2](v17, v64);
    v41 = (v17)[2](v17, v62);
    v42 = (v56 ^ 1) & uniqueIdentifier7;
    v43 = (uniqueIdentifier4 ^ 1) & v41;
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
  v50 = [[self alloc] initWithPrimaryElement:v23 sideElement:v24 activatingEntity:v26 requestedUnlockedEnvironmentMode:v25];

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

- (SBSwitcherWindowReplacementResult)initWithPrimaryElement:(id)element sideElement:(id)sideElement activatingEntity:(id)entity requestedUnlockedEnvironmentMode:(int64_t)mode
{
  elementCopy = element;
  sideElementCopy = sideElement;
  entityCopy = entity;
  v17.receiver = self;
  v17.super_class = SBSwitcherWindowReplacementResult;
  v14 = [(SBSwitcherWindowReplacementResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_primaryElement, element);
    objc_storeStrong(&v15->_sideElement, sideElement);
    objc_storeStrong(&v15->_activatingEntity, entity);
    v15->_requestedUnlockedEnvironmentMode = mode;
  }

  return v15;
}

@end
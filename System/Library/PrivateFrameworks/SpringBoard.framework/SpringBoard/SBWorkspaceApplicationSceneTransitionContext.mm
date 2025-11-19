@interface SBWorkspaceApplicationSceneTransitionContext
- (CGRect)frameForApplicationSceneEntity:(id)a3;
- (FBSDisplayIdentity)displayIdentity;
- (NSArray)entitiesWithRemovalContexts;
- (NSDictionary)requestedEntityIdentifierToLayoutAttributes;
- (NSSet)applicationSceneEntities;
- (NSSet)previousApplicationSceneEntities;
- (SBLayoutState)layoutState;
- (SBLayoutState)previousLayoutState;
- (SBWorkspaceApplicationSceneTransitionContext)init;
- (SBWorkspaceApplicationSceneTransitionContextDelegate)delegate;
- (SBWorkspaceEntity)resolvedActivatingWorkspaceEntity;
- (double)watchdogScaleFactor;
- (id)_displayConfiguration;
- (id)appClipPlaceholderEntities;
- (id)appClipPlaceholderEntityForBundleID:(id)a3;
- (id)applicationSceneEntityForBundleID:(id)a3;
- (id)applicationSceneEntityForLayoutRole:(int64_t)a3;
- (id)compactDescriptionBuilderWithMultilinePrefix:(id)a3;
- (id)entityForLayoutRole:(int64_t)a3;
- (id)previousAppClipPlaceholderEntities;
- (id)previousAppClipPlaceholderEntityForBundleID:(id)a3;
- (id)previousApplicationSceneEntityForBundleID:(id)a3;
- (id)previousApplicationSceneEntityForLayoutRole:(int64_t)a3;
- (id)previousEntityForLayoutRole:(int64_t)a3;
- (id)requestedLayoutAttributesForEntity:(id)a3;
- (id)requestedWorkspaceEntityForLayoutRole:(int64_t)a3;
- (id)succinctDescriptionBuilder;
- (int64_t)_lockedInterfaceOrientation;
- (int64_t)interfaceOrientationOrPreferredOrientation;
- (void)_displayConfiguration;
- (void)_setRequestedFrontmostEntity:(id)a3;
- (void)_setRequestedWorkspaceEntity:(id)a3 forLayoutRole:(int64_t)a4;
- (void)dealloc;
- (void)displayIdentity;
- (void)finalize;
- (void)sendActivationResultError:(id)a3;
- (void)setEntities:(id)a3 startingAtLayoutRole:(int64_t)a4 withPolicy:(int64_t)a5 centerEntity:(id)a6 floatingEntity:(id)a7;
- (void)setEntity:(id)a3 forLayoutRole:(int64_t)a4;
- (void)setPreviousEntity:(id)a3 forLayoutRole:(int64_t)a4;
- (void)setRemovalContext:(id)a3 forEntity:(id)a4;
- (void)setRequestedAppExposeBundleID:(id)a3;
- (void)setRequestedCenterConfiguration:(int64_t)a3;
- (void)setRequestedEntityIdentifierToLayoutAttributes:(id)a3;
- (void)setRequestedFloatingConfiguration:(int64_t)a3;
- (void)setRequestedFloatingSwitcherVisible:(int64_t)a3;
- (void)setRequestedLayoutAttributes:(id)a3 forEntity:(id)a4;
- (void)setRequestedSpaceConfiguration:(int64_t)a3;
- (void)setRequestedUnlockedEnvironmentMode:(int64_t)a3;
@end

@implementation SBWorkspaceApplicationSceneTransitionContext

- (NSSet)applicationSceneEntities
{
  v2 = [(SBWorkspaceTransitionContext *)self entities];
  v3 = [v2 objectsPassingTest:&__block_literal_global_185];

  return v3;
}

- (SBWorkspaceEntity)resolvedActivatingWorkspaceEntity
{
  v3 = [(SBWorkspaceApplicationSceneTransitionContext *)self activatingEntity];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SBWorkspaceApplicationSceneTransitionContext *)self entityForLayoutRole:1];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(SBWorkspaceApplicationSceneTransitionContext *)self entityForLayoutRole:2];
    }

    v5 = v8;
  }

  return v5;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBWorkspaceApplicationSceneTransitionContext)init
{
  v7.receiver = self;
  v7.super_class = SBWorkspaceApplicationSceneTransitionContext;
  v2 = [(SBWorkspaceTransitionContext *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_fencesAnimations = 0;
    v2->_inLiveResize = 0;
    v2->_alwaysRunsWatchdog = 0;
    v2->_waitsForSceneUpdates = 1;
    v2->_sceneless = 0;
    v2->_requestedSpaceConfiguration = 0;
    v2->_requestedFloatingConfiguration = 0;
    v2->_requestedCenterConfiguration = 0;
    v2->_requestedUnlockedEnvironmentMode = 0;
    v2->_requestedFloatingSwitcherVisible = 0x7FFFFFFFFFFFFFFFLL;
    v2->_requestedCenterEntityModal = 0x7FFFFFFFFFFFFFFFLL;
    v2->_transitioningToLessRecentSpace = 0x7FFFFFFFFFFFFFFFLL;
    v2->_settlesMultiAppFullScreenSpacesImmediately = 1;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestedWorkspaceEntityForLayoutRoleMutableDictionary = v3->_requestedWorkspaceEntityForLayoutRoleMutableDictionary;
    v3->_requestedWorkspaceEntityForLayoutRoleMutableDictionary = v4;
  }

  return v3;
}

- (NSArray)entitiesWithRemovalContexts
{
  v2 = [(NSMapTable *)self->_entityToRemovalContext keyEnumerator];
  v3 = [v2 allObjects];

  return v3;
}

- (NSDictionary)requestedEntityIdentifierToLayoutAttributes
{
  v2 = [(NSMutableDictionary *)self->_requestedEntityIdentifierToLayoutAttributes copy];

  return v2;
}

- (SBWorkspaceApplicationSceneTransitionContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = [(SBWorkspaceTransitionContext *)self request];
  }

  v6 = v5;

  return v6;
}

- (void)finalize
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBLayoutState)previousLayoutState
{
  previousLayoutState = self->_previousLayoutState;
  if (!previousLayoutState)
  {
    v4 = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
    v5 = [v4 previousLayoutStateForApplicationTransitionContext:self];
    v6 = self->_previousLayoutState;
    self->_previousLayoutState = v5;

    previousLayoutState = self->_previousLayoutState;
  }

  return previousLayoutState;
}

- (SBLayoutState)layoutState
{
  layoutState = self->_layoutState;
  if (!layoutState)
  {
    v4 = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
    v5 = [v4 layoutStateForApplicationTransitionContext:self];
    v6 = self->_layoutState;
    self->_layoutState = v5;

    layoutState = self->_layoutState;
  }

  return layoutState;
}

- (NSSet)previousApplicationSceneEntities
{
  v2 = [(SBWorkspaceTransitionContext *)self previousEntities];
  v3 = [v2 objectsPassingTest:&__block_literal_global_42_1];

  return v3;
}

- (double)watchdogScaleFactor
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(SBWorkspaceApplicationSceneTransitionContext *)self applicationSceneEntities];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {

    goto LABEL_11;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v17 + 1) + 8 * i) application];
      v10 = [v9 processState];
      v11 = [v10 isRunning];

      v6 += v11 ^ 1u;
    }

    v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);

  if (v6 <= 1)
  {
LABEL_11:
    v12 = [(SBWorkspaceTransitionContext *)self request];
    v13 = [v12 workspace];
    v14 = [v13 pipCoordinator];
    v15 = [v14 isAnyPictureInPictureWindowVisible];

    result = 1.0;
    if (!v15)
    {
      return result;
    }
  }

  return 2.0;
}

- (FBSDisplayIdentity)displayIdentity
{
  v2 = [(SBWorkspaceTransitionContext *)self request];
  if (!v2)
  {
    [SBWorkspaceApplicationSceneTransitionContext displayIdentity];
  }

  v3 = [v2 displayIdentity];

  return v3;
}

- (int64_t)interfaceOrientationOrPreferredOrientation
{
  result = [(SBWorkspaceApplicationSceneTransitionContext *)self interfaceOrientation];
  if (!result)
  {

    return [(SBWorkspaceApplicationSceneTransitionContext *)self preferredInterfaceOrientation];
  }

  return result;
}

- (void)sendActivationResultError:(id)a3
{
  v4 = a3;
  if (!self->_sentActivationResult)
  {
    self->_sentActivationResult = 1;
    resultBlock = self->_resultBlock;
    if (resultBlock)
    {
      v7 = v4;
      resultBlock[2]();
      v6 = self->_resultBlock;
      self->_resultBlock = 0;

      v4 = v7;
    }
  }
}

- (id)entityForLayoutRole:(int64_t)a3
{
  v4 = SBLayoutRoleIdentifierForRole(a3);
  v5 = [(SBWorkspaceTransitionContext *)self entityForKey:v4];

  return v5;
}

- (void)setEntity:(id)a3 forLayoutRole:(int64_t)a4
{
  v10 = a3;
  v6 = SBLayoutRoleIdentifierForRole(a4);
  v7 = v10;
  v8 = v6;
  if (v10)
  {
    [v10 setLayoutRole:a4];
    v9 = [(SBWorkspaceApplicationSceneTransitionContext *)self activatingEntity];

    v7 = v10;
    if (v9 == v10)
    {
      [(SBWorkspaceApplicationSceneTransitionContext *)self setActivatingEntity:0];
      v7 = v10;
    }
  }

  [(SBWorkspaceTransitionContext *)self setEntity:v7 forKey:v8];
}

- (void)setEntities:(id)a3 startingAtLayoutRole:(int64_t)a4 withPolicy:(int64_t)a5 centerEntity:(id)a6 floatingEntity:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  if (SBLayoutRoleIsValidForSplitView(a4))
  {
    if (v13)
    {
LABEL_3:
      [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:v13 forLayoutRole:4];
      [v12 sb_arrayByRemovingObject:v13];
      v12 = v15 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    [SBWorkspaceApplicationSceneTransitionContext setEntities:a4 startingAtLayoutRole:? withPolicy:? centerEntity:? floatingEntity:?];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v15 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:v15 forLayoutRole:4];
LABEL_6:

  if (v14)
  {
    [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:v14 forLayoutRole:3];
    [v12 sb_arrayByRemovingObject:v14];
    v12 = v16 = v12;
  }

  else
  {
    v16 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
    [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:v16 forLayoutRole:3];
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __120__SBWorkspaceApplicationSceneTransitionContext_setEntities_startingAtLayoutRole_withPolicy_centerEntity_floatingEntity___block_invoke;
  v18[3] = &unk_2783B7950;
  v22 = a5;
  v23 = a4;
  v18[4] = self;
  v20 = v25;
  v17 = v12;
  v19 = v17;
  v21 = v24;
  SBLayoutRoleEnumerateValidRoles(v18);

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v25, 8);
}

void __120__SBWorkspaceApplicationSceneTransitionContext_setEntities_startingAtLayoutRole_withPolicy_centerEntity_floatingEntity___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!SBLayoutRoleIsValidForSplitView(a2))
  {
    return;
  }

  if (*(a1 + 64) == 1 && *(a1 + 72) > a2)
  {
    v4 = *(a1 + 32);
    v5 = SBPreviousWorkspaceEntity;
LABEL_15:
    v15 = [(__objc2_class *)v5 entity];
    [v4 setEntity:v15 forLayoutRole:a2];
LABEL_16:

    return;
  }

  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 < [*(a1 + 40) count])
  {
    v15 = [*(a1 + 40) objectAtIndex:*(*(*(a1 + 48) + 8) + 24)];
    v7 = [*(a1 + 32) entityForLayoutRole:a2];
    if (!v7 || !*(a1 + 64))
    {
      v8 = [*(a1 + 32) entityForLayoutRole:{objc_msgSend(v15, "layoutRole")}];
      v9 = [v15 isEqual:v8];

      if (v9)
      {
        [*(a1 + 32) setEntity:0 forLayoutRole:{objc_msgSend(v15, "layoutRole")}];
      }

      [v7 setLayoutRole:0];
      [*(a1 + 32) setEntity:v15 forLayoutRole:a2];
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    goto LABEL_16;
  }

  v10 = *(a1 + 64);
  if (v10 != 1)
  {
    if (v10)
    {
      return;
    }

    v4 = *(a1 + 32);
    v5 = SBEmptyWorkspaceEntity;
    goto LABEL_15;
  }

  v11 = *(a1 + 32);
  v12 = [SBPreviousWorkspaceEntity entityWithPreviousLayoutRole:*(*(*(a1 + 56) + 8) + 24)];
  [v11 setEntity:v12 forLayoutRole:a2];

  do
  {
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 24) + 1;
    *(v13 + 24) = v14;
  }

  while ((SBLayoutRoleIsValidForSplitView(v14) & 1) == 0 && SBLayoutRoleIsValid(*(*(*(a1 + 56) + 8) + 24)));
}

- (id)previousEntityForLayoutRole:(int64_t)a3
{
  v4 = SBLayoutRoleIdentifierForRole(a3);
  v5 = [(SBWorkspaceTransitionContext *)self previousEntityForKey:v4];

  return v5;
}

- (void)setPreviousEntity:(id)a3 forLayoutRole:(int64_t)a4
{
  v8 = a3;
  v6 = SBLayoutRoleIdentifierForRole(a4);
  [(SBWorkspaceTransitionContext *)self setPreviousEntity:v8 forKey:v6];
  v7 = [(SBWorkspaceTransitionContext *)self previousEntityForKey:v6];
  if (v7)
  {
    if (v7 == v8)
    {
      [SBWorkspaceApplicationSceneTransitionContext setPreviousEntity:forLayoutRole:];
    }

    [v7 setLayoutRole:a4];
    if ([v7 isApplicationSceneEntity])
    {
      [v7 clearProcessSettings];
    }
  }
}

- (void)setRequestedSpaceConfiguration:(int64_t)a3
{
  if ([(SBWorkspaceTransitionContext *)self isFinalized])
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedSpaceConfiguration:];
  }

  if (self->_requestedSpaceConfiguration != a3)
  {
    self->_requestedSpaceConfiguration = a3;
  }
}

- (void)setRequestedEntityIdentifierToLayoutAttributes:(id)a3
{
  v8 = a3;
  if ([(SBWorkspaceTransitionContext *)self isFinalized])
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedEntityIdentifierToLayoutAttributes:];
  }

  v4 = v8;
  if (self->_requestedEntityIdentifierToLayoutAttributes != v8)
  {
    v5 = v8;
    if (!v8)
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v6 = [(NSMutableDictionary *)v5 mutableCopy];
    requestedEntityIdentifierToLayoutAttributes = self->_requestedEntityIdentifierToLayoutAttributes;
    self->_requestedEntityIdentifierToLayoutAttributes = v6;

    v4 = v8;
  }
}

- (id)requestedLayoutAttributesForEntity:(id)a3
{
  requestedEntityIdentifierToLayoutAttributes = self->_requestedEntityIdentifierToLayoutAttributes;
  v4 = [a3 uniqueIdentifier];
  v5 = [(NSMutableDictionary *)requestedEntityIdentifierToLayoutAttributes objectForKey:v4];

  return v5;
}

- (void)setRequestedLayoutAttributes:(id)a3 forEntity:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedLayoutAttributes:forEntity:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [SBWorkspaceApplicationSceneTransitionContext setRequestedLayoutAttributes:forEntity:];
LABEL_3:
  if ([(SBWorkspaceTransitionContext *)self isFinalized])
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedLayoutAttributes:forEntity:];
  }

  requestedEntityIdentifierToLayoutAttributes = self->_requestedEntityIdentifierToLayoutAttributes;
  if (!requestedEntityIdentifierToLayoutAttributes)
  {
    v8 = objc_opt_new();
    v9 = self->_requestedEntityIdentifierToLayoutAttributes;
    self->_requestedEntityIdentifierToLayoutAttributes = v8;

    requestedEntityIdentifierToLayoutAttributes = self->_requestedEntityIdentifierToLayoutAttributes;
  }

  v10 = [v6 uniqueIdentifier];
  [(NSMutableDictionary *)requestedEntityIdentifierToLayoutAttributes setObject:v11 forKey:v10];
}

- (void)_setRequestedFrontmostEntity:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationSceneEntity];
  if (!v5)
  {
    goto LABEL_62;
  }

  v59 = [SBLayoutElement elementWithDescriptor:v4];
  v6 = [v59 uniqueIdentifier];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke;
  v78[3] = &unk_2783A8C90;
  v62 = v6;
  v79 = v62;
  v7 = MEMORY[0x223D6F7F0](v78);
  v8 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v9 = [v8 _recentAppLayoutsController];

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_2;
  v76[3] = &unk_2783B7978;
  v60 = v7;
  v77 = v60;
  v10 = [v9 mostRecentAppLayoutIncludingHiddenAppLayouts:1 passingTest:v76];
  v63 = [v9 layoutAttributesProvider];
  v11 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousLayoutState];
  v12 = [v11 interfaceOrientation];

  v13 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousLayoutState];
  v14 = objc_opt_class();
  v15 = v13;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v61 = [v17 elementIdentifiersToLayoutAttributes];

  v18 = [(SBWorkspaceApplicationSceneTransitionContext *)self requestedLayoutAttributesForEntity:v4];
  if (v18)
  {
    goto LABEL_30;
  }

  v18 = [v61 objectForKey:v62];
  if (!v18 && v10)
  {
    v19 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousLayoutState];
    v20 = objc_opt_class();
    v21 = v19;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v23 && (v24 = [v23 displayOrdinal], objc_msgSend(v10, "preferredDisplayOrdinal") != v24))
    {
      v25 = [v10 allItems];
      v26 = [v25 bs_firstObjectPassingTest:v60];

      if ((v12 - 1) < 2)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * ((v12 - 3) < 2);
      }

      v18 = [v63 layoutAttributesForDisplayItem:v26 inAppLayout:v10 displayOrdinal:v24 orientation:v27];
    }

    else
    {
      v18 = 0;
    }
  }

  if (!v18 && v10)
  {
    v28 = [v10 allItems];
    v29 = [v28 bs_firstObjectPassingTest:v60];
    v30 = [v10 preferredDisplayOrdinal];
    if ((v12 - 1) < 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * ((v12 - 3) < 2);
    }

    v18 = [v63 layoutAttributesForDisplayItem:v29 inAppLayout:v10 displayOrdinal:v30 orientation:v31];
  }

  if (v18)
  {
LABEL_30:
    if (v10)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v18 = objc_alloc_init(SBDisplayItemLayoutAttributes);
    if (v10)
    {
      goto LABEL_53;
    }
  }

  v32 = [v5 application];
  v33 = [v32 bundleIdentifier];

  if (v33)
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_3;
    v74[3] = &unk_2783A8CB8;
    v34 = v33;
    v75 = v34;
    v35 = [v9 mostRecentAppLayoutIncludingHiddenAppLayouts:1 passingTest:v74];
    if (!v35)
    {
LABEL_49:
      if ([v4 layoutRole] == 4)
      {
        SBDisplayItemAttributedSizeUnspecified(&v68);
        v46 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v18];

        v18 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v46];
      }

      goto LABEL_52;
    }

    v57 = v12;
    v58 = v33;
    if ((v12 - 1) < 2)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2 * ((v12 - 3) < 2);
    }

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_4;
    v72[3] = &unk_2783A8C90;
    v73 = v34;
    v37 = [v63 lastInteractedDisplayItemInAppLayout:v35 orientation:v36 passingTest:v72];
    if (!v37)
    {
      v33 = v58;
LABEL_48:

      v12 = v57;
      goto LABEL_49;
    }

    v55 = v35;
    v53 = [v63 layoutAttributesForDisplayItem:v37 inAppLayout:v35 displayOrdinal:objc_msgSend(v35 orientation:{"preferredDisplayOrdinal"), v36}];
    v38 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v39 = [v38 switcherControllerForDisplayItem:v37];

    v40 = [v5 deviceApplicationSceneEntity];
    v41 = [v40 sceneHandle];
    v54 = v37;
    v56 = v39;
    if ([v41 supportsCenterWindow])
    {
      v42 = v37;
      v43 = v53;
      v52 = [v39 _isDisplayItemFullScreen:v42 preferredAttributes:v53];

      v33 = v58;
      if (v52)
      {
        v71 = 0;
        v70 = 0u;
        v68 = 0u;
        v69 = 0u;
        v35 = v55;
        if (v56)
        {
          [v56 _centerWindowSizeForPreviousFullscreenWindow];
        }

        v66[0] = v68;
        v66[1] = v69;
        v66[2] = v70;
        v67 = v71;
        v44 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v18];

        v18 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v44];

        goto LABEL_47;
      }
    }

    else
    {

      v33 = v58;
      v43 = v53;
    }

    [(SBDisplayItemLayoutAttributes *)v43 attributedSize];
    v45 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v18];

    [(SBHomeScreenConfigurationServer *)v43 connections];
    v18 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v45];

    v35 = v55;
LABEL_47:

    v37 = v54;
    goto LABEL_48;
  }

LABEL_52:

LABEL_53:
  v47 = [v4 displayItemRepresentation];
  if (v47)
  {
    [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
    if (SBDisplayItemSlideOverConfigurationIsValid(&v68))
    {
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_5;
      v64[3] = &unk_2783A8CB8;
      v65 = v47;
      v48 = [v9 mostRecentAppLayoutIncludingHiddenAppLayouts:0 passingTest:v64];
      if (!v48)
      {
        [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
        SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v66, &v68);
        v49 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v18];

        v18 = v49;
      }
    }
  }

  if ((v12 - 1) < 2)
  {
    v50 = 1;
  }

  else
  {
    v50 = 2 * ((v12 - 3) < 2);
  }

  [v9 _nextInteractionTimeInOrientation:v50];
  v51 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v18];

  [(SBWorkspaceApplicationSceneTransitionContext *)self setRequestedLayoutAttributes:v51 forEntity:v4];
LABEL_62:
}

uint64_t __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  v4 = [v3 bs_containsObjectPassingTest:*(a1 + 32)];

  return v4;
}

uint64_t __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_3(uint64_t a1, void *a2)
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

uint64_t __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 allItems];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_6;
  v6[3] = &unk_2783A8C90;
  v7 = *(a1 + 32);
  v4 = [v3 bs_containsObjectPassingTest:v6];

  return v4;
}

- (void)setRequestedCenterConfiguration:(int64_t)a3
{
  if (self->_requestedCenterConfiguration != a3)
  {
    self->_requestedCenterConfiguration = a3;
  }
}

- (void)setRequestedFloatingConfiguration:(int64_t)a3
{
  if (self->_requestedFloatingConfiguration != a3)
  {
    self->_requestedFloatingConfiguration = a3;
  }
}

- (void)setRequestedUnlockedEnvironmentMode:(int64_t)a3
{
  if (self->_requestedUnlockedEnvironmentMode != a3)
  {
    self->_requestedUnlockedEnvironmentMode = a3;
  }
}

- (void)setRequestedFloatingSwitcherVisible:(int64_t)a3
{
  if (self->_requestedFloatingSwitcherVisible != a3)
  {
    self->_requestedFloatingSwitcherVisible = a3;
  }
}

- (void)setRequestedAppExposeBundleID:(id)a3
{
  if (self->_requestedAppExposeBundleID != a3)
  {
    v4 = [a3 copy];
    requestedAppExposeBundleID = self->_requestedAppExposeBundleID;
    self->_requestedAppExposeBundleID = v4;
  }
}

- (id)applicationSceneEntityForLayoutRole:(int64_t)a3
{
  v3 = [(SBWorkspaceApplicationSceneTransitionContext *)self entityForLayoutRole:a3];
  if ([v3 isApplicationSceneEntity])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)applicationSceneEntityForBundleID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SBWorkspaceApplicationSceneTransitionContext *)self applicationSceneEntities];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 application];
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)previousApplicationSceneEntityForLayoutRole:(int64_t)a3
{
  v3 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousEntityForLayoutRole:a3];
  if ([v3 isApplicationSceneEntity])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)previousApplicationSceneEntityForBundleID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousApplicationSceneEntities];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 application];
        v11 = [v10 bundleIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)appClipPlaceholderEntities
{
  v2 = [(SBWorkspaceTransitionContext *)self entities];
  v3 = [v2 objectsPassingTest:&__block_literal_global_44_0];

  return v3;
}

- (id)previousAppClipPlaceholderEntities
{
  v2 = [(SBWorkspaceTransitionContext *)self previousEntities];
  v3 = [v2 objectsPassingTest:&__block_literal_global_46];

  return v3;
}

- (id)appClipPlaceholderEntityForBundleID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBWorkspaceApplicationSceneTransitionContext *)self appClipPlaceholderEntities];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)previousAppClipPlaceholderEntityForBundleID:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousAppClipPlaceholderEntities];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)requestedWorkspaceEntityForLayoutRole:(int64_t)a3
{
  requestedWorkspaceEntityForLayoutRoleMutableDictionary = self->_requestedWorkspaceEntityForLayoutRoleMutableDictionary;
  v4 = SBLayoutRoleIdentifierForRole(a3);
  v5 = [(NSMutableDictionary *)requestedWorkspaceEntityForLayoutRoleMutableDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setRequestedWorkspaceEntity:(id)a3 forLayoutRole:(int64_t)a4
{
  requestedWorkspaceEntityForLayoutRoleMutableDictionary = self->_requestedWorkspaceEntityForLayoutRoleMutableDictionary;
  v6 = a3;
  v7 = SBLayoutRoleIdentifierForRole(a4);
  [(NSMutableDictionary *)requestedWorkspaceEntityForLayoutRoleMutableDictionary setObject:v6 forKeyedSubscript:v7];
}

- (int64_t)_lockedInterfaceOrientation
{
  v2 = [(SBWorkspaceApplicationSceneTransitionContext *)self displayIdentity];
  v3 = [v2 isMainDisplay];

  if (!v3)
  {
    return 0;
  }

  v4 = +[SBOrientationLockManager sharedInstance];
  v5 = [v4 userLockOrientation];

  return v5;
}

- (CGRect)frameForApplicationSceneEntity:(id)a3
{
  v4 = a3;
  v5 = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
  [v5 applicationTransitionContext:self frameForApplicationSceneEntity:v4];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)setRemovalContext:(id)a3 forEntity:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v13;
  v8 = v6;
  entityToRemovalContext = self->_entityToRemovalContext;
  if (v13)
  {
    if (!entityToRemovalContext)
    {
      v10 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v11 = self->_entityToRemovalContext;
      self->_entityToRemovalContext = v10;

      v7 = v13;
      entityToRemovalContext = self->_entityToRemovalContext;
    }

    [(NSMapTable *)entityToRemovalContext setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMapTable *)entityToRemovalContext removeObjectForKey:v8];
    if (![(NSMapTable *)self->_entityToRemovalContext count])
    {
      v12 = self->_entityToRemovalContext;
      self->_entityToRemovalContext = 0;
    }
  }
}

- (id)_displayConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->super._request);
  if (!WeakRetained)
  {
    [SBWorkspaceApplicationSceneTransitionContext _displayConfiguration];
  }

  v3 = [WeakRetained displayConfiguration];

  return v3;
}

- (id)compactDescriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBWorkspaceApplicationSceneTransitionContext;
  v4 = [(SBWorkspaceTransitionContext *)&v9 compactDescriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_background withName:@"background"];
  if ([(SBWorkspaceApplicationSceneTransitionContext *)self interfaceOrientation])
  {
    v6 = [MEMORY[0x277D75128] stringForInterfaceOrientation:{-[SBWorkspaceApplicationSceneTransitionContext interfaceOrientation](self, "interfaceOrientation")}];
    v7 = [v4 appendObject:v6 withName:@"interfaceOrientation"];
  }

  return v4;
}

- (id)succinctDescriptionBuilder
{
  v24.receiver = self;
  v24.super_class = SBWorkspaceApplicationSceneTransitionContext;
  v3 = [(SBWorkspaceTransitionContext *)&v24 succinctDescriptionBuilder];
  v4 = [v3 appendBool:self->_background withName:@"background"];
  v5 = [v3 appendBool:self->_fencesAnimations withName:@"fenceAnimations" ifEqualTo:1];
  v6 = [v3 appendBool:self->_inLiveResize withName:@"isInLiveResize" ifEqualTo:1];
  v7 = [v3 appendBool:self->_alwaysRunsWatchdog withName:@"alwaysWatchdog" ifEqualTo:1];
  v8 = [v3 appendBool:self->_waitsForSceneUpdates withName:@"waitForScenes"];
  v9 = [(SBWorkspaceApplicationSceneTransitionContext *)self displayIdentity];
  v10 = [v3 appendObject:v9 withName:@"display"];

  if ([(SBWorkspaceApplicationSceneTransitionContext *)self interfaceOrientation])
  {
    v11 = [MEMORY[0x277D75128] stringForInterfaceOrientation:{-[SBWorkspaceApplicationSceneTransitionContext interfaceOrientation](self, "interfaceOrientation")}];
    v12 = [v3 appendObject:v11 withName:@"interfaceOrientation"];
  }

  if ([(SBWorkspaceApplicationSceneTransitionContext *)self requestedUnlockedEnvironmentMode])
  {
    v13 = SBStringForUnlockedEnvironmentMode([(SBWorkspaceApplicationSceneTransitionContext *)self requestedUnlockedEnvironmentMode]);
    v14 = [v3 appendObject:v13 withName:@"unlockedEnvironmentMode"];
  }

  v15 = [(SBWorkspaceApplicationSceneTransitionContext *)self requestedAppExposeBundleID];

  if (v15)
  {
    v16 = [(SBWorkspaceApplicationSceneTransitionContext *)self requestedAppExposeBundleID];
    v17 = [v3 appendObject:v16 withName:@"appExposeBundleID"];
  }

  v18 = [v3 appendObject:self->_layoutState withName:@"layoutState"];
  v19 = [v3 appendObject:self->_previousLayoutState withName:@"previousLayoutState"];
  v20 = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
  if (v20)
  {
    v21 = [MEMORY[0x277CF0C00] descriptionForObject:v20];
    v22 = [v3 appendObject:v21 withName:@"delegate"];
  }

  return v3;
}

- (void)displayIdentity
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (void)setEntities:(void *)a1 startingAtLayoutRole:withPolicy:centerEntity:floatingEntity:.cold.1(void *a1)
{
  v3 = [MEMORY[0x277CCA890] currentHandler];
  SBLayoutRoleIdentifierForRole(a1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setPreviousEntity:forLayoutRole:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setRequestedSpaceConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_17();
  [OUTLINED_FUNCTION_2_21(v2 v3];
}

- (void)setRequestedEntityIdentifierToLayoutAttributes:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_17();
  [OUTLINED_FUNCTION_2_21(v2 v3];
}

- (void)setRequestedLayoutAttributes:forEntity:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"layoutAttributes" object:? file:? lineNumber:? description:?];
}

- (void)setRequestedLayoutAttributes:forEntity:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"entity" object:? file:? lineNumber:? description:?];
}

- (void)setRequestedLayoutAttributes:forEntity:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_17();
  [OUTLINED_FUNCTION_2_21(v2 v3];
}

- (void)_displayConfiguration
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end
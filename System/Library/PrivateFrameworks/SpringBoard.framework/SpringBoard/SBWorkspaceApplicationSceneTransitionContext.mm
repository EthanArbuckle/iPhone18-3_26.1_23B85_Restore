@interface SBWorkspaceApplicationSceneTransitionContext
- (CGRect)frameForApplicationSceneEntity:(id)entity;
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
- (id)appClipPlaceholderEntityForBundleID:(id)d;
- (id)applicationSceneEntityForBundleID:(id)d;
- (id)applicationSceneEntityForLayoutRole:(int64_t)role;
- (id)compactDescriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)entityForLayoutRole:(int64_t)role;
- (id)previousAppClipPlaceholderEntities;
- (id)previousAppClipPlaceholderEntityForBundleID:(id)d;
- (id)previousApplicationSceneEntityForBundleID:(id)d;
- (id)previousApplicationSceneEntityForLayoutRole:(int64_t)role;
- (id)previousEntityForLayoutRole:(int64_t)role;
- (id)requestedLayoutAttributesForEntity:(id)entity;
- (id)requestedWorkspaceEntityForLayoutRole:(int64_t)role;
- (id)succinctDescriptionBuilder;
- (int64_t)_lockedInterfaceOrientation;
- (int64_t)interfaceOrientationOrPreferredOrientation;
- (void)_displayConfiguration;
- (void)_setRequestedFrontmostEntity:(id)entity;
- (void)_setRequestedWorkspaceEntity:(id)entity forLayoutRole:(int64_t)role;
- (void)dealloc;
- (void)displayIdentity;
- (void)finalize;
- (void)sendActivationResultError:(id)error;
- (void)setEntities:(id)entities startingAtLayoutRole:(int64_t)role withPolicy:(int64_t)policy centerEntity:(id)entity floatingEntity:(id)floatingEntity;
- (void)setEntity:(id)entity forLayoutRole:(int64_t)role;
- (void)setPreviousEntity:(id)entity forLayoutRole:(int64_t)role;
- (void)setRemovalContext:(id)context forEntity:(id)entity;
- (void)setRequestedAppExposeBundleID:(id)d;
- (void)setRequestedCenterConfiguration:(int64_t)configuration;
- (void)setRequestedEntityIdentifierToLayoutAttributes:(id)attributes;
- (void)setRequestedFloatingConfiguration:(int64_t)configuration;
- (void)setRequestedFloatingSwitcherVisible:(int64_t)visible;
- (void)setRequestedLayoutAttributes:(id)attributes forEntity:(id)entity;
- (void)setRequestedSpaceConfiguration:(int64_t)configuration;
- (void)setRequestedUnlockedEnvironmentMode:(int64_t)mode;
@end

@implementation SBWorkspaceApplicationSceneTransitionContext

- (NSSet)applicationSceneEntities
{
  entities = [(SBWorkspaceTransitionContext *)self entities];
  v3 = [entities objectsPassingTest:&__block_literal_global_185];

  return v3;
}

- (SBWorkspaceEntity)resolvedActivatingWorkspaceEntity
{
  activatingEntity = [(SBWorkspaceApplicationSceneTransitionContext *)self activatingEntity];
  v4 = activatingEntity;
  if (activatingEntity)
  {
    v5 = activatingEntity;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  keyEnumerator = [(NSMapTable *)self->_entityToRemovalContext keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
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
    request = WeakRetained;
  }

  else
  {
    request = [(SBWorkspaceTransitionContext *)self request];
  }

  v6 = request;

  return v6;
}

- (void)finalize
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (SBLayoutState)previousLayoutState
{
  previousLayoutState = self->_previousLayoutState;
  if (!previousLayoutState)
  {
    delegate = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
    v5 = [delegate previousLayoutStateForApplicationTransitionContext:self];
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
    delegate = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
    v5 = [delegate layoutStateForApplicationTransitionContext:self];
    v6 = self->_layoutState;
    self->_layoutState = v5;

    layoutState = self->_layoutState;
  }

  return layoutState;
}

- (NSSet)previousApplicationSceneEntities
{
  previousEntities = [(SBWorkspaceTransitionContext *)self previousEntities];
  v3 = [previousEntities objectsPassingTest:&__block_literal_global_42_1];

  return v3;
}

- (double)watchdogScaleFactor
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  applicationSceneEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self applicationSceneEntities];
  v4 = [applicationSceneEntities countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(applicationSceneEntities);
      }

      application = [*(*(&v17 + 1) + 8 * i) application];
      processState = [application processState];
      isRunning = [processState isRunning];

      v6 += isRunning ^ 1u;
    }

    v5 = [applicationSceneEntities countByEnumeratingWithState:&v17 objects:v21 count:16];
  }

  while (v5);

  if (v6 <= 1)
  {
LABEL_11:
    request = [(SBWorkspaceTransitionContext *)self request];
    workspace = [request workspace];
    pipCoordinator = [workspace pipCoordinator];
    isAnyPictureInPictureWindowVisible = [pipCoordinator isAnyPictureInPictureWindowVisible];

    result = 1.0;
    if (!isAnyPictureInPictureWindowVisible)
    {
      return result;
    }
  }

  return 2.0;
}

- (FBSDisplayIdentity)displayIdentity
{
  request = [(SBWorkspaceTransitionContext *)self request];
  if (!request)
  {
    [SBWorkspaceApplicationSceneTransitionContext displayIdentity];
  }

  displayIdentity = [request displayIdentity];

  return displayIdentity;
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

- (void)sendActivationResultError:(id)error
{
  errorCopy = error;
  if (!self->_sentActivationResult)
  {
    self->_sentActivationResult = 1;
    resultBlock = self->_resultBlock;
    if (resultBlock)
    {
      v7 = errorCopy;
      resultBlock[2]();
      v6 = self->_resultBlock;
      self->_resultBlock = 0;

      errorCopy = v7;
    }
  }
}

- (id)entityForLayoutRole:(int64_t)role
{
  v4 = SBLayoutRoleIdentifierForRole(role);
  v5 = [(SBWorkspaceTransitionContext *)self entityForKey:v4];

  return v5;
}

- (void)setEntity:(id)entity forLayoutRole:(int64_t)role
{
  entityCopy = entity;
  v6 = SBLayoutRoleIdentifierForRole(role);
  v7 = entityCopy;
  v8 = v6;
  if (entityCopy)
  {
    [entityCopy setLayoutRole:role];
    activatingEntity = [(SBWorkspaceApplicationSceneTransitionContext *)self activatingEntity];

    v7 = entityCopy;
    if (activatingEntity == entityCopy)
    {
      [(SBWorkspaceApplicationSceneTransitionContext *)self setActivatingEntity:0];
      v7 = entityCopy;
    }
  }

  [(SBWorkspaceTransitionContext *)self setEntity:v7 forKey:v8];
}

- (void)setEntities:(id)entities startingAtLayoutRole:(int64_t)role withPolicy:(int64_t)policy centerEntity:(id)entity floatingEntity:(id)floatingEntity
{
  entitiesCopy = entities;
  entityCopy = entity;
  floatingEntityCopy = floatingEntity;
  if (SBLayoutRoleIsValidForSplitView(role))
  {
    if (entityCopy)
    {
LABEL_3:
      [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:entityCopy forLayoutRole:4];
      [entitiesCopy sb_arrayByRemovingObject:entityCopy];
      entitiesCopy = v15 = entitiesCopy;
      goto LABEL_6;
    }
  }

  else
  {
    [SBWorkspaceApplicationSceneTransitionContext setEntities:role startingAtLayoutRole:? withPolicy:? centerEntity:? floatingEntity:?];
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  v15 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:v15 forLayoutRole:4];
LABEL_6:

  if (floatingEntityCopy)
  {
    [(SBWorkspaceApplicationSceneTransitionContext *)self setEntity:floatingEntityCopy forLayoutRole:3];
    [entitiesCopy sb_arrayByRemovingObject:floatingEntityCopy];
    entitiesCopy = v16 = entitiesCopy;
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
  v24[3] = role;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __120__SBWorkspaceApplicationSceneTransitionContext_setEntities_startingAtLayoutRole_withPolicy_centerEntity_floatingEntity___block_invoke;
  v18[3] = &unk_2783B7950;
  policyCopy = policy;
  roleCopy = role;
  v18[4] = self;
  v20 = v25;
  v17 = entitiesCopy;
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

- (id)previousEntityForLayoutRole:(int64_t)role
{
  v4 = SBLayoutRoleIdentifierForRole(role);
  v5 = [(SBWorkspaceTransitionContext *)self previousEntityForKey:v4];

  return v5;
}

- (void)setPreviousEntity:(id)entity forLayoutRole:(int64_t)role
{
  entityCopy = entity;
  v6 = SBLayoutRoleIdentifierForRole(role);
  [(SBWorkspaceTransitionContext *)self setPreviousEntity:entityCopy forKey:v6];
  v7 = [(SBWorkspaceTransitionContext *)self previousEntityForKey:v6];
  if (v7)
  {
    if (v7 == entityCopy)
    {
      [SBWorkspaceApplicationSceneTransitionContext setPreviousEntity:forLayoutRole:];
    }

    [v7 setLayoutRole:role];
    if ([v7 isApplicationSceneEntity])
    {
      [v7 clearProcessSettings];
    }
  }
}

- (void)setRequestedSpaceConfiguration:(int64_t)configuration
{
  if ([(SBWorkspaceTransitionContext *)self isFinalized])
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedSpaceConfiguration:];
  }

  if (self->_requestedSpaceConfiguration != configuration)
  {
    self->_requestedSpaceConfiguration = configuration;
  }
}

- (void)setRequestedEntityIdentifierToLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([(SBWorkspaceTransitionContext *)self isFinalized])
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedEntityIdentifierToLayoutAttributes:];
  }

  v4 = attributesCopy;
  if (self->_requestedEntityIdentifierToLayoutAttributes != attributesCopy)
  {
    v5 = attributesCopy;
    if (!attributesCopy)
    {
      v5 = MEMORY[0x277CBEC10];
    }

    v6 = [(NSMutableDictionary *)v5 mutableCopy];
    requestedEntityIdentifierToLayoutAttributes = self->_requestedEntityIdentifierToLayoutAttributes;
    self->_requestedEntityIdentifierToLayoutAttributes = v6;

    v4 = attributesCopy;
  }
}

- (id)requestedLayoutAttributesForEntity:(id)entity
{
  requestedEntityIdentifierToLayoutAttributes = self->_requestedEntityIdentifierToLayoutAttributes;
  uniqueIdentifier = [entity uniqueIdentifier];
  v5 = [(NSMutableDictionary *)requestedEntityIdentifierToLayoutAttributes objectForKey:uniqueIdentifier];

  return v5;
}

- (void)setRequestedLayoutAttributes:(id)attributes forEntity:(id)entity
{
  attributesCopy = attributes;
  entityCopy = entity;
  if (attributesCopy)
  {
    if (entityCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBWorkspaceApplicationSceneTransitionContext setRequestedLayoutAttributes:forEntity:];
    if (entityCopy)
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

  uniqueIdentifier = [entityCopy uniqueIdentifier];
  [(NSMutableDictionary *)requestedEntityIdentifierToLayoutAttributes setObject:attributesCopy forKey:uniqueIdentifier];
}

- (void)_setRequestedFrontmostEntity:(id)entity
{
  entityCopy = entity;
  applicationSceneEntity = [entityCopy applicationSceneEntity];
  if (!applicationSceneEntity)
  {
    goto LABEL_62;
  }

  v59 = [SBLayoutElement elementWithDescriptor:entityCopy];
  uniqueIdentifier = [v59 uniqueIdentifier];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke;
  v78[3] = &unk_2783A8C90;
  v62 = uniqueIdentifier;
  v79 = v62;
  v7 = MEMORY[0x223D6F7F0](v78);
  v8 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  _recentAppLayoutsController = [v8 _recentAppLayoutsController];

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_2;
  v76[3] = &unk_2783B7978;
  v60 = v7;
  v77 = v60;
  v10 = [_recentAppLayoutsController mostRecentAppLayoutIncludingHiddenAppLayouts:1 passingTest:v76];
  layoutAttributesProvider = [_recentAppLayoutsController layoutAttributesProvider];
  previousLayoutState = [(SBWorkspaceApplicationSceneTransitionContext *)self previousLayoutState];
  interfaceOrientation = [previousLayoutState interfaceOrientation];

  previousLayoutState2 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousLayoutState];
  v14 = objc_opt_class();
  v15 = previousLayoutState2;
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

  elementIdentifiersToLayoutAttributes = [v17 elementIdentifiersToLayoutAttributes];

  v18 = [(SBWorkspaceApplicationSceneTransitionContext *)self requestedLayoutAttributesForEntity:entityCopy];
  if (v18)
  {
    goto LABEL_30;
  }

  v18 = [elementIdentifiersToLayoutAttributes objectForKey:v62];
  if (!v18 && v10)
  {
    previousLayoutState3 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousLayoutState];
    v20 = objc_opt_class();
    v21 = previousLayoutState3;
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
      allItems = [v10 allItems];
      v26 = [allItems bs_firstObjectPassingTest:v60];

      if ((interfaceOrientation - 1) < 2)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2 * ((interfaceOrientation - 3) < 2);
      }

      v18 = [layoutAttributesProvider layoutAttributesForDisplayItem:v26 inAppLayout:v10 displayOrdinal:v24 orientation:v27];
    }

    else
    {
      v18 = 0;
    }
  }

  if (!v18 && v10)
  {
    allItems2 = [v10 allItems];
    v29 = [allItems2 bs_firstObjectPassingTest:v60];
    preferredDisplayOrdinal = [v10 preferredDisplayOrdinal];
    if ((interfaceOrientation - 1) < 2)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v18 = [layoutAttributesProvider layoutAttributesForDisplayItem:v29 inAppLayout:v10 displayOrdinal:preferredDisplayOrdinal orientation:v31];
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

  application = [applicationSceneEntity application];
  bundleIdentifier = [application bundleIdentifier];

  if (bundleIdentifier)
  {
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_3;
    v74[3] = &unk_2783A8CB8;
    v34 = bundleIdentifier;
    v75 = v34;
    v35 = [_recentAppLayoutsController mostRecentAppLayoutIncludingHiddenAppLayouts:1 passingTest:v74];
    if (!v35)
    {
LABEL_49:
      if ([entityCopy layoutRole] == 4)
      {
        SBDisplayItemAttributedSizeUnspecified(&v68);
        v46 = [SBDisplayItemLayoutAttributes attributesByModifyingAttributedSize:v18];

        v18 = [SBDisplayItemLayoutAttributes attributesByModifyingSizingPolicy:v46];
      }

      goto LABEL_52;
    }

    v57 = interfaceOrientation;
    v58 = bundleIdentifier;
    if ((interfaceOrientation - 1) < 2)
    {
      v36 = 1;
    }

    else
    {
      v36 = 2 * ((interfaceOrientation - 3) < 2);
    }

    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_4;
    v72[3] = &unk_2783A8C90;
    v73 = v34;
    v37 = [layoutAttributesProvider lastInteractedDisplayItemInAppLayout:v35 orientation:v36 passingTest:v72];
    if (!v37)
    {
      bundleIdentifier = v58;
LABEL_48:

      interfaceOrientation = v57;
      goto LABEL_49;
    }

    v55 = v35;
    v53 = [layoutAttributesProvider layoutAttributesForDisplayItem:v37 inAppLayout:v35 displayOrdinal:objc_msgSend(v35 orientation:{"preferredDisplayOrdinal"), v36}];
    v38 = +[SBMainSwitcherControllerCoordinator sharedInstance];
    v39 = [v38 switcherControllerForDisplayItem:v37];

    deviceApplicationSceneEntity = [applicationSceneEntity deviceApplicationSceneEntity];
    sceneHandle = [deviceApplicationSceneEntity sceneHandle];
    v54 = v37;
    v56 = v39;
    if ([sceneHandle supportsCenterWindow])
    {
      v42 = v37;
      v43 = v53;
      v52 = [v39 _isDisplayItemFullScreen:v42 preferredAttributes:v53];

      bundleIdentifier = v58;
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

      bundleIdentifier = v58;
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
  displayItemRepresentation = [entityCopy displayItemRepresentation];
  if (displayItemRepresentation)
  {
    [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
    if (SBDisplayItemSlideOverConfigurationIsValid(&v68))
    {
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __77__SBWorkspaceApplicationSceneTransitionContext__setRequestedFrontmostEntity___block_invoke_5;
      v64[3] = &unk_2783A8CB8;
      v65 = displayItemRepresentation;
      v48 = [_recentAppLayoutsController mostRecentAppLayoutIncludingHiddenAppLayouts:0 passingTest:v64];
      if (!v48)
      {
        [(SBDisplayItemLayoutAttributes *)v18 slideOverConfiguration];
        SBInactiveDisplayItemSlideOverConfigurationFromSlideOverConfiguration(v66, &v68);
        v49 = [SBDisplayItemLayoutAttributes attributesByModifyingSlideOverConfiguration:v18];

        v18 = v49;
      }
    }
  }

  if ((interfaceOrientation - 1) < 2)
  {
    v50 = 1;
  }

  else
  {
    v50 = 2 * ((interfaceOrientation - 3) < 2);
  }

  [_recentAppLayoutsController _nextInteractionTimeInOrientation:v50];
  v51 = [SBDisplayItemLayoutAttributes attributesByModifyingLastInteractionTime:v18];

  [(SBWorkspaceApplicationSceneTransitionContext *)self setRequestedLayoutAttributes:v51 forEntity:entityCopy];
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

- (void)setRequestedCenterConfiguration:(int64_t)configuration
{
  if (self->_requestedCenterConfiguration != configuration)
  {
    self->_requestedCenterConfiguration = configuration;
  }
}

- (void)setRequestedFloatingConfiguration:(int64_t)configuration
{
  if (self->_requestedFloatingConfiguration != configuration)
  {
    self->_requestedFloatingConfiguration = configuration;
  }
}

- (void)setRequestedUnlockedEnvironmentMode:(int64_t)mode
{
  if (self->_requestedUnlockedEnvironmentMode != mode)
  {
    self->_requestedUnlockedEnvironmentMode = mode;
  }
}

- (void)setRequestedFloatingSwitcherVisible:(int64_t)visible
{
  if (self->_requestedFloatingSwitcherVisible != visible)
  {
    self->_requestedFloatingSwitcherVisible = visible;
  }
}

- (void)setRequestedAppExposeBundleID:(id)d
{
  if (self->_requestedAppExposeBundleID != d)
  {
    v4 = [d copy];
    requestedAppExposeBundleID = self->_requestedAppExposeBundleID;
    self->_requestedAppExposeBundleID = v4;
  }
}

- (id)applicationSceneEntityForLayoutRole:(int64_t)role
{
  v3 = [(SBWorkspaceApplicationSceneTransitionContext *)self entityForLayoutRole:role];
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

- (id)applicationSceneEntityForBundleID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  applicationSceneEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self applicationSceneEntities];
  v6 = [applicationSceneEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(applicationSceneEntities);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        application = [v9 application];
        bundleIdentifier = [application bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [applicationSceneEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)previousApplicationSceneEntityForLayoutRole:(int64_t)role
{
  v3 = [(SBWorkspaceApplicationSceneTransitionContext *)self previousEntityForLayoutRole:role];
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

- (id)previousApplicationSceneEntityForBundleID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  previousApplicationSceneEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self previousApplicationSceneEntities];
  v6 = [previousApplicationSceneEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(previousApplicationSceneEntities);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        application = [v9 application];
        bundleIdentifier = [application bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:dCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [previousApplicationSceneEntities countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  entities = [(SBWorkspaceTransitionContext *)self entities];
  v3 = [entities objectsPassingTest:&__block_literal_global_44_0];

  return v3;
}

- (id)previousAppClipPlaceholderEntities
{
  previousEntities = [(SBWorkspaceTransitionContext *)self previousEntities];
  v3 = [previousEntities objectsPassingTest:&__block_literal_global_46];

  return v3;
}

- (id)appClipPlaceholderEntityForBundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  appClipPlaceholderEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self appClipPlaceholderEntities];
  v6 = [appClipPlaceholderEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(appClipPlaceholderEntities);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [appClipPlaceholderEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)previousAppClipPlaceholderEntityForBundleID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  previousAppClipPlaceholderEntities = [(SBWorkspaceApplicationSceneTransitionContext *)self previousAppClipPlaceholderEntities];
  v6 = [previousAppClipPlaceholderEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(previousAppClipPlaceholderEntities);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        bundleIdentifier = [v9 bundleIdentifier];
        v11 = [bundleIdentifier isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [previousAppClipPlaceholderEntities countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)requestedWorkspaceEntityForLayoutRole:(int64_t)role
{
  requestedWorkspaceEntityForLayoutRoleMutableDictionary = self->_requestedWorkspaceEntityForLayoutRoleMutableDictionary;
  v4 = SBLayoutRoleIdentifierForRole(role);
  v5 = [(NSMutableDictionary *)requestedWorkspaceEntityForLayoutRoleMutableDictionary objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setRequestedWorkspaceEntity:(id)entity forLayoutRole:(int64_t)role
{
  requestedWorkspaceEntityForLayoutRoleMutableDictionary = self->_requestedWorkspaceEntityForLayoutRoleMutableDictionary;
  entityCopy = entity;
  v7 = SBLayoutRoleIdentifierForRole(role);
  [(NSMutableDictionary *)requestedWorkspaceEntityForLayoutRoleMutableDictionary setObject:entityCopy forKeyedSubscript:v7];
}

- (int64_t)_lockedInterfaceOrientation
{
  displayIdentity = [(SBWorkspaceApplicationSceneTransitionContext *)self displayIdentity];
  isMainDisplay = [displayIdentity isMainDisplay];

  if (!isMainDisplay)
  {
    return 0;
  }

  v4 = +[SBOrientationLockManager sharedInstance];
  userLockOrientation = [v4 userLockOrientation];

  return userLockOrientation;
}

- (CGRect)frameForApplicationSceneEntity:(id)entity
{
  entityCopy = entity;
  delegate = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
  [delegate applicationTransitionContext:self frameForApplicationSceneEntity:entityCopy];
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

- (void)setRemovalContext:(id)context forEntity:(id)entity
{
  contextCopy = context;
  entityCopy = entity;
  v7 = contextCopy;
  v8 = entityCopy;
  entityToRemovalContext = self->_entityToRemovalContext;
  if (contextCopy)
  {
    if (!entityToRemovalContext)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v11 = self->_entityToRemovalContext;
      self->_entityToRemovalContext = strongToStrongObjectsMapTable;

      v7 = contextCopy;
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

  displayConfiguration = [WeakRetained displayConfiguration];

  return displayConfiguration;
}

- (id)compactDescriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = SBWorkspaceApplicationSceneTransitionContext;
  v4 = [(SBWorkspaceTransitionContext *)&v9 compactDescriptionBuilderWithMultilinePrefix:prefix];
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
  succinctDescriptionBuilder = [(SBWorkspaceTransitionContext *)&v24 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:self->_background withName:@"background"];
  v5 = [succinctDescriptionBuilder appendBool:self->_fencesAnimations withName:@"fenceAnimations" ifEqualTo:1];
  v6 = [succinctDescriptionBuilder appendBool:self->_inLiveResize withName:@"isInLiveResize" ifEqualTo:1];
  v7 = [succinctDescriptionBuilder appendBool:self->_alwaysRunsWatchdog withName:@"alwaysWatchdog" ifEqualTo:1];
  v8 = [succinctDescriptionBuilder appendBool:self->_waitsForSceneUpdates withName:@"waitForScenes"];
  displayIdentity = [(SBWorkspaceApplicationSceneTransitionContext *)self displayIdentity];
  v10 = [succinctDescriptionBuilder appendObject:displayIdentity withName:@"display"];

  if ([(SBWorkspaceApplicationSceneTransitionContext *)self interfaceOrientation])
  {
    v11 = [MEMORY[0x277D75128] stringForInterfaceOrientation:{-[SBWorkspaceApplicationSceneTransitionContext interfaceOrientation](self, "interfaceOrientation")}];
    v12 = [succinctDescriptionBuilder appendObject:v11 withName:@"interfaceOrientation"];
  }

  if ([(SBWorkspaceApplicationSceneTransitionContext *)self requestedUnlockedEnvironmentMode])
  {
    v13 = SBStringForUnlockedEnvironmentMode([(SBWorkspaceApplicationSceneTransitionContext *)self requestedUnlockedEnvironmentMode]);
    v14 = [succinctDescriptionBuilder appendObject:v13 withName:@"unlockedEnvironmentMode"];
  }

  requestedAppExposeBundleID = [(SBWorkspaceApplicationSceneTransitionContext *)self requestedAppExposeBundleID];

  if (requestedAppExposeBundleID)
  {
    requestedAppExposeBundleID2 = [(SBWorkspaceApplicationSceneTransitionContext *)self requestedAppExposeBundleID];
    v17 = [succinctDescriptionBuilder appendObject:requestedAppExposeBundleID2 withName:@"appExposeBundleID"];
  }

  v18 = [succinctDescriptionBuilder appendObject:self->_layoutState withName:@"layoutState"];
  v19 = [succinctDescriptionBuilder appendObject:self->_previousLayoutState withName:@"previousLayoutState"];
  delegate = [(SBWorkspaceApplicationSceneTransitionContext *)self delegate];
  if (delegate)
  {
    v21 = [MEMORY[0x277CF0C00] descriptionForObject:delegate];
    v22 = [succinctDescriptionBuilder appendObject:v21 withName:@"delegate"];
  }

  return succinctDescriptionBuilder;
}

- (void)displayIdentity
{
  OUTLINED_FUNCTION_1_2();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end
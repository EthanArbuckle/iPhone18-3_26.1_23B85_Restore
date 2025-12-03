@interface SBSwitcherCoordinatedLayoutStateTransitionContext
+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)items fromSwitcherController:(id)controller fromAppLayout:(id)layout toAppLayout:(id)appLayout toSwitcherController:(id)switcherController withApplicationController:(id)applicationController;
+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)items toSwitcherController:(id)controller toAppLayout:(id)layout withApplicationController:(id)applicationController;
- (BOOL)hasTransitioningDisplayItemsForSwitcherController:(id)controller;
- (BOOL)isEqual:(id)equal;
- (CGRect)fromFrameInFromSwitcherForDisplayItem:(id)item;
- (CGRect)fromFrameInToSwitcherForDisplayItem:(id)item;
- (CGRect)toFrameInFromSwitcherForDisplayItem:(id)item;
- (CGRect)toFrameInToSwitcherForDisplayItem:(id)item;
- (SBSwitcherCoordinatedLayoutStateTransitionContext)initWithDisplayItems:(id)items fromSwitcherController:(id)controller toSwitcherController:(id)switcherController fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBSwitcherCoordinatedLayoutStateTransitionContext

+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)items toSwitcherController:(id)controller toAppLayout:(id)layout withApplicationController:(id)applicationController
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controllerCopy = controller;
  layoutCopy = layout;
  applicationControllerCopy = applicationController;
  _managedMainDisplayItems = [controllerCopy _managedMainDisplayItems];
  v40 = itemsCopy;
  v12 = [itemsCopy mutableCopy];
  v37 = _managedMainDisplayItems;
  [v12 minusSet:_managedMainDisplayItems];
  switcherCoordinator = [controllerCopy switcherCoordinator];
  coordinatedSwitcherControllers = [switcherCoordinator coordinatedSwitcherControllers];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = coordinatedSwitcherControllers;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v16)
  {
    v24 = 0;
    v20 = 0;
    goto LABEL_15;
  }

  v17 = v16;
  v18 = *v43;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v43 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v42 + 1) + 8 * i);
      _managedMainDisplayItems2 = [v20 _managedMainDisplayItems];
      if ([v12 isSubsetOfSet:_managedMainDisplayItems2])
      {
        _currentMainAppLayout = [v20 _currentMainAppLayout];
LABEL_14:
        v24 = _currentMainAppLayout;

        goto LABEL_15;
      }

      _currentFloatingAppLayout = [v20 _currentFloatingAppLayout];
      v23 = [_currentFloatingAppLayout containsAllItemsFromSet:v12];

      if (v23)
      {
        _currentMainAppLayout = [v20 _currentFloatingAppLayout];
        goto LABEL_14;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    v24 = 0;
    v20 = 0;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if (!controllerCopy || !v20 || !v24 || ![v40 count])
  {
    bs_array = [v40 bs_array];
    v36 = [bs_array bs_map:&__block_literal_global_86];

    v27 = [v15 bs_compactMap:&__block_literal_global_3];
    succinctDescription = [v24 succinctDescription];
    succinctDescription2 = [layoutCopy succinctDescription];
    v30 = SBLogAppSwitcher();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v30 toSwitcherController:? toAppLayout:? withApplicationController:?];
    }

    v31 = SBLogAppSwitcher();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v36 toSwitcherController:v31 toAppLayout:? withApplicationController:?];
    }

    v32 = SBLogAppSwitcher();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v27 toSwitcherController:v32 toAppLayout:? withApplicationController:?];
    }

    v33 = SBLogAppSwitcher();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:succinctDescription toSwitcherController:succinctDescription2 toAppLayout:v33 withApplicationController:?];
    }
  }

  v34 = [self coordinatedLayoutStateTransitionContextForMovingDisplayItems:v40 fromSwitcherController:v20 fromAppLayout:v24 toAppLayout:layoutCopy toSwitcherController:controllerCopy withApplicationController:{applicationControllerCopy, v36}];

  return v34;
}

id __173__SBSwitcherCoordinatedLayoutStateTransitionContext_coordinatedLayoutStateTransitionContextForMovingDisplayItems_toSwitcherController_toAppLayout_withApplicationController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _currentMainAppLayout];
  v3 = [v2 succinctDescription];

  return v3;
}

+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)items fromSwitcherController:(id)controller fromAppLayout:(id)layout toAppLayout:(id)appLayout toSwitcherController:(id)switcherController withApplicationController:(id)applicationController
{
  appLayoutCopy = appLayout;
  switcherControllerCopy = switcherController;
  applicationControllerCopy = applicationController;
  layoutCopy = layout;
  controllerCopy = controller;
  itemsCopy = items;
  displayItemLayoutAttributesProvider = [switcherControllerCopy displayItemLayoutAttributesProvider];
  preferredDisplayOrdinal = [appLayoutCopy preferredDisplayOrdinal];
  interfaceOrientation = [switcherControllerCopy interfaceOrientation];
  if ((interfaceOrientation - 1) < 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * ((interfaceOrientation - 3) < 2);
  }

  v23 = [displayItemLayoutAttributesProvider layoutAttributesMapForAppLayout:appLayoutCopy displayOrdinal:preferredDisplayOrdinal orientation:{v22, self}];
  windowManagementContext = [switcherControllerCopy windowManagementContext];
  if ([windowManagementContext isChamoisOrFlexibleWindowing])
  {
    appLayoutByAdjustingFloatingItemsForFlexibleWindowing = [appLayoutCopy appLayoutByAdjustingFloatingItemsForFlexibleWindowing];

    appLayoutCopy = [appLayoutByAdjustingFloatingItemsForFlexibleWindowing appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];

    preferredDisplayOrdinal2 = [appLayoutCopy preferredDisplayOrdinal];
    interfaceOrientation2 = [switcherControllerCopy interfaceOrientation];
    if ((interfaceOrientation2 - 1) < 2)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2 * ((interfaceOrientation2 - 3) < 2);
    }

    [displayItemLayoutAttributesProvider updateLayoutAttributesMap:v23 forAppLayout:appLayoutCopy displayOrdinal:preferredDisplayOrdinal2 orientation:v28];
  }

  else if ([windowManagementContext isMedusaEnabled])
  {
    v29 = [appLayoutCopy appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:applicationControllerCopy multitaskingSupported:1];
    if ([v29 count])
    {
      firstObject = [v29 firstObject];
    }

    else
    {
      firstObject = appLayoutCopy;
    }

    v32 = firstObject;

    appLayoutCopy = v32;
  }

  else if ([windowManagementContext baseStyle])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v39 file:@"SBSwitcherCoordinatedLayoutStateTransitionContext.m" lineNumber:100 description:@"Unexpected window management context"];
  }

  else
  {
    v33 = [appLayoutCopy leafAppLayoutForRole:1];

    appLayoutCopy = v33;
  }

  layoutState = [switcherControllerCopy layoutState];
  v35 = [appLayoutCopy appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(layoutState, "displayOrdinal")}];

  v36 = [[v39 alloc] initWithDisplayItems:itemsCopy fromSwitcherController:controllerCopy toSwitcherController:switcherControllerCopy fromAppLayout:layoutCopy toAppLayout:v35];

  return v36;
}

- (SBSwitcherCoordinatedLayoutStateTransitionContext)initWithDisplayItems:(id)items fromSwitcherController:(id)controller toSwitcherController:(id)switcherController fromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  itemsCopy = items;
  controllerCopy = controller;
  switcherControllerCopy = switcherController;
  layoutCopy = layout;
  obj = appLayout;
  appLayoutCopy = appLayout;
  v23 = itemsCopy;
  if ([itemsCopy count])
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
    if (controllerCopy)
    {
LABEL_3:
      if (switcherControllerCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
  if (switcherControllerCopy)
  {
LABEL_4:
    if (layoutCopy)
    {
      goto LABEL_5;
    }

LABEL_12:
    [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
    if (appLayoutCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
  if (!layoutCopy)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (appLayoutCopy)
  {
    goto LABEL_6;
  }

LABEL_13:
  [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
LABEL_6:
  v24.receiver = self;
  v24.super_class = SBSwitcherCoordinatedLayoutStateTransitionContext;
  v18 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_displayItems, items);
    objc_storeStrong(&v19->_fromSwitcherController, controller);
    objc_storeStrong(&v19->_toSwitcherController, switcherController);
    objc_storeStrong(&v19->_fromAppLayout, layout);
    objc_storeStrong(&v19->_toAppLayout, obj);
    layoutState = [controllerCopy layoutState];
    v19->_fromFloatingConfiguration = [layoutState floatingConfiguration];
    v19->_fromCenterConfiguration = [layoutState centerConfiguration];
  }

  return v19;
}

- (BOOL)hasTransitioningDisplayItemsForSwitcherController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy isEqual:self->_fromSwitcherController])
  {
    v5 = 1;
  }

  else
  {
    v5 = [controllerCopy isEqual:self->_toSwitcherController];
  }

  return v5;
}

- (CGRect)fromFrameInFromSwitcherForDisplayItem:(id)item
{
  v32[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  windowManagementContext = [(SBSwitcherController *)self->_fromSwitcherController windowManagementContext];
  if (![windowManagementContext isFlexibleWindowingEnabled] || (objc_msgSend(windowManagementContext, "isAutomaticStageCreationEnabled") & 1) != 0 || -[SBAppLayout containsItem:](self->_fromAppLayout, "containsItem:", itemCopy))
  {
    environment = [(SBAppLayout *)self->_fromAppLayout environment];
    v7 = [(SBAppLayout *)self->_fromAppLayout layoutRoleForItem:itemCopy];
    interfaceOrientation = [(SBSwitcherController *)self->_fromSwitcherController interfaceOrientation];
    switch(environment)
    {
      case 3:
        goto LABEL_13;
      case 2:
        goto LABEL_11;
      case 1:
        if (SBLayoutRoleIsValidForSplitView(v7))
        {
          [(SBSwitcherController *)self->_fromSwitcherController frameForItemWithRole:v7 inMainAppLayout:self->_fromAppLayout interfaceOrientation:interfaceOrientation];
LABEL_14:
          v20 = v9;
          v22 = v10;
          v24 = v11;
          v26 = v12;
          goto LABEL_16;
        }

        if (v7 == 3)
        {
LABEL_11:
          [(SBSwitcherController *)self->_fromSwitcherController frameForFloatingAppLayoutInInterfaceOrientation:interfaceOrientation floatingConfiguration:self->_fromFloatingConfiguration];
          goto LABEL_14;
        }

        if (v7 == 4)
        {
LABEL_13:
          [(SBSwitcherController *)self->_fromSwitcherController frameForCenterItemWithConfiguration:self->_fromCenterConfiguration interfaceOrientation:interfaceOrientation];
          goto LABEL_14;
        }

        break;
    }

    v20 = *MEMORY[0x277CBF3A0];
    v22 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v26 = *(MEMORY[0x277CBF3A0] + 24);
    goto LABEL_16;
  }

  v13 = [SBAppLayout alloc];
  v32[0] = itemCopy;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  LOBYTE(v31) = 0;
  v15 = [(SBAppLayout *)v13 initWithItems:v14 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v31 preferredDisplayOrdinal:[(SBAppLayout *)self->_fromAppLayout preferredDisplayOrdinal]];

  fromSwitcherController = self->_fromSwitcherController;
  v17 = [(SBAppLayout *)v15 layoutRoleForItem:itemCopy];
  layoutState = [(SBSwitcherController *)self->_fromSwitcherController layoutState];
  -[SBSwitcherController frameForItemWithRole:inMainAppLayout:interfaceOrientation:](fromSwitcherController, "frameForItemWithRole:inMainAppLayout:interfaceOrientation:", v17, v15, [layoutState interfaceOrientation]);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

LABEL_16:
  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)fromFrameInToSwitcherForDisplayItem:(id)item
{
  fromSwitcherController = self->_fromSwitcherController;
  itemCopy = item;
  windowScene = [(SBSwitcherController *)fromSwitcherController windowScene];
  windowScene2 = [(SBSwitcherController *)self->_toSwitcherController windowScene];
  [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self fromFrameInFromSwitcherForDisplayItem:itemCopy];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [windowScene convertRect:windowScene2 toNeighboringDisplayWindowScene:{v9, v11, v13, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)toFrameInFromSwitcherForDisplayItem:(id)item
{
  fromSwitcherController = self->_fromSwitcherController;
  itemCopy = item;
  windowScene = [(SBSwitcherController *)fromSwitcherController windowScene];
  windowScene2 = [(SBSwitcherController *)self->_toSwitcherController windowScene];
  [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self toFrameInToSwitcherForDisplayItem:itemCopy];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [windowScene2 convertRect:windowScene toNeighboringDisplayWindowScene:{v9, v11, v13, v15}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)toFrameInToSwitcherForDisplayItem:(id)item
{
  toSwitcherController = self->_toSwitcherController;
  v5 = [(SBAppLayout *)self->_toAppLayout layoutRoleForItem:item];
  toAppLayout = self->_toAppLayout;
  interfaceOrientation = [(SBSwitcherController *)self->_toSwitcherController interfaceOrientation];

  [(SBSwitcherController *)toSwitcherController frameForItemWithRole:v5 inMainAppLayout:toAppLayout interfaceOrientation:interfaceOrientation];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x277D85DE8];
  builder = [MEMORY[0x277CF0C40] builder];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_displayItems;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [builder appendObject:{*(*(&v16 + 1) + 8 * v8++), v16}];
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = [builder appendObject:self->_fromSwitcherController];
  v11 = [builder appendObject:self->_toSwitcherController];
  v12 = [builder appendObject:self->_fromAppLayout];
  v13 = [builder appendObject:self->_toAppLayout];
  v14 = [builder hash];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [equalCopy hash];
    v6 = v5 == [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_displayItems withName:@"displayItems"];
  v6 = [succinctDescriptionBuilder appendObject:self->_fromSwitcherController withName:@"fromSwitcherController"];
  v7 = [succinctDescriptionBuilder appendObject:self->_toSwitcherController withName:@"toSwitcherController"];
  v8 = [succinctDescriptionBuilder appendObject:self->_fromAppLayout withName:@"fromAppLayout"];
  v9 = [succinctDescriptionBuilder appendObject:self->_toAppLayout withName:@"toAppLayout"];

  return succinctDescriptionBuilder;
}

+ (void)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(uint64_t)a1 toSwitcherController:(NSObject *)a2 toAppLayout:withApplicationController:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Moving displayItems: %{public}@", &v2, 0xCu);
}

+ (void)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(uint64_t)a1 toSwitcherController:(NSObject *)a2 toAppLayout:withApplicationController:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Between switcher controllers: %{public}@", &v2, 0xCu);
}

+ (void)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(os_log_t)log toSwitcherController:toAppLayout:withApplicationController:.cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "fromAppLayout: %{public}@, toAppLayout: %{public}@", &v3, 0x16u);
}

- (void)initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
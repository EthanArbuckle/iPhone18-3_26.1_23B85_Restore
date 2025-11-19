@interface SBSwitcherCoordinatedLayoutStateTransitionContext
+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)a3 fromSwitcherController:(id)a4 fromAppLayout:(id)a5 toAppLayout:(id)a6 toSwitcherController:(id)a7 withApplicationController:(id)a8;
+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)a3 toSwitcherController:(id)a4 toAppLayout:(id)a5 withApplicationController:(id)a6;
- (BOOL)hasTransitioningDisplayItemsForSwitcherController:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGRect)fromFrameInFromSwitcherForDisplayItem:(id)a3;
- (CGRect)fromFrameInToSwitcherForDisplayItem:(id)a3;
- (CGRect)toFrameInFromSwitcherForDisplayItem:(id)a3;
- (CGRect)toFrameInToSwitcherForDisplayItem:(id)a3;
- (SBSwitcherCoordinatedLayoutStateTransitionContext)initWithDisplayItems:(id)a3 fromSwitcherController:(id)a4 toSwitcherController:(id)a5 fromAppLayout:(id)a6 toAppLayout:(id)a7;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
@end

@implementation SBSwitcherCoordinatedLayoutStateTransitionContext

+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)a3 toSwitcherController:(id)a4 toAppLayout:(id)a5 withApplicationController:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v41 = a5;
  v39 = a6;
  v11 = [v10 _managedMainDisplayItems];
  v40 = v9;
  v12 = [v9 mutableCopy];
  v37 = v11;
  [v12 minusSet:v11];
  v13 = [v10 switcherCoordinator];
  v14 = [v13 coordinatedSwitcherControllers];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v15 = v14;
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
      v21 = [v20 _managedMainDisplayItems];
      if ([v12 isSubsetOfSet:v21])
      {
        v25 = [v20 _currentMainAppLayout];
LABEL_14:
        v24 = v25;

        goto LABEL_15;
      }

      v22 = [v20 _currentFloatingAppLayout];
      v23 = [v22 containsAllItemsFromSet:v12];

      if (v23)
      {
        v25 = [v20 _currentFloatingAppLayout];
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

  if (!v10 || !v20 || !v24 || ![v40 count])
  {
    v26 = [v40 bs_array];
    v36 = [v26 bs_map:&__block_literal_global_86];

    v27 = [v15 bs_compactMap:&__block_literal_global_3];
    v28 = [v24 succinctDescription];
    v29 = [v41 succinctDescription];
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
      [SBSwitcherCoordinatedLayoutStateTransitionContext coordinatedLayoutStateTransitionContextForMovingDisplayItems:v28 toSwitcherController:v29 toAppLayout:v33 withApplicationController:?];
    }
  }

  v34 = [a1 coordinatedLayoutStateTransitionContextForMovingDisplayItems:v40 fromSwitcherController:v20 fromAppLayout:v24 toAppLayout:v41 toSwitcherController:v10 withApplicationController:{v39, v36}];

  return v34;
}

id __173__SBSwitcherCoordinatedLayoutStateTransitionContext_coordinatedLayoutStateTransitionContextForMovingDisplayItems_toSwitcherController_toAppLayout_withApplicationController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 _currentMainAppLayout];
  v3 = [v2 succinctDescription];

  return v3;
}

+ (id)coordinatedLayoutStateTransitionContextForMovingDisplayItems:(id)a3 fromSwitcherController:(id)a4 fromAppLayout:(id)a5 toAppLayout:(id)a6 toSwitcherController:(id)a7 withApplicationController:(id)a8
{
  v14 = a6;
  v15 = a7;
  v40 = a8;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v15 displayItemLayoutAttributesProvider];
  v20 = [v14 preferredDisplayOrdinal];
  v21 = [v15 interfaceOrientation];
  if ((v21 - 1) < 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = 2 * ((v21 - 3) < 2);
  }

  v23 = [v19 layoutAttributesMapForAppLayout:v14 displayOrdinal:v20 orientation:{v22, a1}];
  v24 = [v15 windowManagementContext];
  if ([v24 isChamoisOrFlexibleWindowing])
  {
    v25 = [v14 appLayoutByAdjustingFloatingItemsForFlexibleWindowing];

    v14 = [v25 appLayoutByAdjustingCenterWindowItemsForFlexibleWindowing];

    v26 = [v14 preferredDisplayOrdinal];
    v27 = [v15 interfaceOrientation];
    if ((v27 - 1) < 2)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2 * ((v27 - 3) < 2);
    }

    [v19 updateLayoutAttributesMap:v23 forAppLayout:v14 displayOrdinal:v26 orientation:v28];
  }

  else if ([v24 isMedusaEnabled])
  {
    v29 = [v14 appLayoutsBySplittingMedusaIncompatibleItemsWithApplicationController:v40 multitaskingSupported:1];
    if ([v29 count])
    {
      v30 = [v29 firstObject];
    }

    else
    {
      v30 = v14;
    }

    v32 = v30;

    v14 = v32;
  }

  else if ([v24 baseStyle])
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:v39 file:@"SBSwitcherCoordinatedLayoutStateTransitionContext.m" lineNumber:100 description:@"Unexpected window management context"];
  }

  else
  {
    v33 = [v14 leafAppLayoutForRole:1];

    v14 = v33;
  }

  v34 = [v15 layoutState];
  v35 = [v14 appLayoutByModifyingPreferredDisplayOrdinal:{objc_msgSend(v34, "displayOrdinal")}];

  v36 = [[v39 alloc] initWithDisplayItems:v18 fromSwitcherController:v17 toSwitcherController:v15 fromAppLayout:v16 toAppLayout:v35];

  return v36;
}

- (SBSwitcherCoordinatedLayoutStateTransitionContext)initWithDisplayItems:(id)a3 fromSwitcherController:(id)a4 toSwitcherController:(id)a5 fromAppLayout:(id)a6 toAppLayout:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  obj = a7;
  v17 = a7;
  v23 = v13;
  if ([v13 count])
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
    if (v14)
    {
LABEL_3:
      if (v15)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
  if (v15)
  {
LABEL_4:
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_12:
    [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [SBSwitcherCoordinatedLayoutStateTransitionContext initWithDisplayItems:fromSwitcherController:toSwitcherController:fromAppLayout:toAppLayout:];
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17)
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
    objc_storeStrong(&v18->_displayItems, a3);
    objc_storeStrong(&v19->_fromSwitcherController, a4);
    objc_storeStrong(&v19->_toSwitcherController, a5);
    objc_storeStrong(&v19->_fromAppLayout, a6);
    objc_storeStrong(&v19->_toAppLayout, obj);
    v20 = [v14 layoutState];
    v19->_fromFloatingConfiguration = [v20 floatingConfiguration];
    v19->_fromCenterConfiguration = [v20 centerConfiguration];
  }

  return v19;
}

- (BOOL)hasTransitioningDisplayItemsForSwitcherController:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_fromSwitcherController])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqual:self->_toSwitcherController];
  }

  return v5;
}

- (CGRect)fromFrameInFromSwitcherForDisplayItem:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSwitcherController *)self->_fromSwitcherController windowManagementContext];
  if (![v5 isFlexibleWindowingEnabled] || (objc_msgSend(v5, "isAutomaticStageCreationEnabled") & 1) != 0 || -[SBAppLayout containsItem:](self->_fromAppLayout, "containsItem:", v4))
  {
    v6 = [(SBAppLayout *)self->_fromAppLayout environment];
    v7 = [(SBAppLayout *)self->_fromAppLayout layoutRoleForItem:v4];
    v8 = [(SBSwitcherController *)self->_fromSwitcherController interfaceOrientation];
    switch(v6)
    {
      case 3:
        goto LABEL_13;
      case 2:
        goto LABEL_11;
      case 1:
        if (SBLayoutRoleIsValidForSplitView(v7))
        {
          [(SBSwitcherController *)self->_fromSwitcherController frameForItemWithRole:v7 inMainAppLayout:self->_fromAppLayout interfaceOrientation:v8];
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
          [(SBSwitcherController *)self->_fromSwitcherController frameForFloatingAppLayoutInInterfaceOrientation:v8 floatingConfiguration:self->_fromFloatingConfiguration];
          goto LABEL_14;
        }

        if (v7 == 4)
        {
LABEL_13:
          [(SBSwitcherController *)self->_fromSwitcherController frameForCenterItemWithConfiguration:self->_fromCenterConfiguration interfaceOrientation:v8];
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
  v32[0] = v4;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  LOBYTE(v31) = 0;
  v15 = [(SBAppLayout *)v13 initWithItems:v14 centerItem:0 floatingItem:0 configuration:1 centerConfiguration:0 environment:1 hidden:v31 preferredDisplayOrdinal:[(SBAppLayout *)self->_fromAppLayout preferredDisplayOrdinal]];

  fromSwitcherController = self->_fromSwitcherController;
  v17 = [(SBAppLayout *)v15 layoutRoleForItem:v4];
  v18 = [(SBSwitcherController *)self->_fromSwitcherController layoutState];
  -[SBSwitcherController frameForItemWithRole:inMainAppLayout:interfaceOrientation:](fromSwitcherController, "frameForItemWithRole:inMainAppLayout:interfaceOrientation:", v17, v15, [v18 interfaceOrientation]);
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

- (CGRect)fromFrameInToSwitcherForDisplayItem:(id)a3
{
  fromSwitcherController = self->_fromSwitcherController;
  v5 = a3;
  v6 = [(SBSwitcherController *)fromSwitcherController windowScene];
  v7 = [(SBSwitcherController *)self->_toSwitcherController windowScene];
  [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self fromFrameInFromSwitcherForDisplayItem:v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v6 convertRect:v7 toNeighboringDisplayWindowScene:{v9, v11, v13, v15}];
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

- (CGRect)toFrameInFromSwitcherForDisplayItem:(id)a3
{
  fromSwitcherController = self->_fromSwitcherController;
  v5 = a3;
  v6 = [(SBSwitcherController *)fromSwitcherController windowScene];
  v7 = [(SBSwitcherController *)self->_toSwitcherController windowScene];
  [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self toFrameInToSwitcherForDisplayItem:v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v7 convertRect:v6 toNeighboringDisplayWindowScene:{v9, v11, v13, v15}];
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

- (CGRect)toFrameInToSwitcherForDisplayItem:(id)a3
{
  toSwitcherController = self->_toSwitcherController;
  v5 = [(SBAppLayout *)self->_toAppLayout layoutRoleForItem:a3];
  toAppLayout = self->_toAppLayout;
  v7 = [(SBSwitcherController *)self->_toSwitcherController interfaceOrientation];

  [(SBSwitcherController *)toSwitcherController frameForItemWithRole:v5 inMainAppLayout:toAppLayout interfaceOrientation:v7];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF0C40] builder];
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

        v9 = [v3 appendObject:{*(*(&v16 + 1) + 8 * v8++), v16}];
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = [v3 appendObject:self->_fromSwitcherController];
  v11 = [v3 appendObject:self->_toSwitcherController];
  v12 = [v3 appendObject:self->_fromAppLayout];
  v13 = [v3 appendObject:self->_toAppLayout];
  v14 = [v3 hash];

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 hash];
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
  v2 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSwitcherCoordinatedLayoutStateTransitionContext *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_displayItems withName:@"displayItems"];
  v6 = [v4 appendObject:self->_fromSwitcherController withName:@"fromSwitcherController"];
  v7 = [v4 appendObject:self->_toSwitcherController withName:@"toSwitcherController"];
  v8 = [v4 appendObject:self->_fromAppLayout withName:@"fromAppLayout"];
  v9 = [v4 appendObject:self->_toAppLayout withName:@"toAppLayout"];

  return v4;
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
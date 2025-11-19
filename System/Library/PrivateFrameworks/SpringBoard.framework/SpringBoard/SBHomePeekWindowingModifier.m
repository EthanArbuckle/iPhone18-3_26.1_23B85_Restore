@interface SBHomePeekWindowingModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3;
- (CGPoint)_perspectiveAngleForPeekingEdge:(unint64_t)a3;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5;
- (CGRect)_frameForContinuousExposePeekingDisplayItem:(id)a3 inAppLayout:(id)a4 bounds:(CGRect)a5;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBHomePeekWindowingModifier)initWithPeekingAppLayout:(id)a3 configuration:(int64_t)a4;
- (SBWindowingItemCorners)cornersForItem:(SEL)a3;
- (SBWindowingItemFrame)frameForItem:(SEL)a3;
- (SBWindowingItemShadow)shadowForItem:(id)a3;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3;
- (double)opacityForItem:(id)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)keyboardSuppressionMode;
- (id)topMostItems;
- (id)visibleItems;
- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)a3 inAppLayout:(id)a4 bounds:(CGRect)a5;
- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)a3 peekingOnEdge:(unint64_t)a4 autoLayoutSpace:(id)a5 zOrderedItems:(id)a6 bounds:(CGRect)a7;
- (unint64_t)_peekEdgeForDisplayItem:(id)a3 withZOrderedItems:(id)a4 autoLayoutSpace:(id)a5 bounds:(CGRect)a6;
- (unint64_t)transactionCompletionOptions;
- (void)_configureAndAddDismissalTransitionRequest:(id)a3;
- (void)_updateForcePeekingEdgeIfNeeded;
- (void)appLayoutTapped:(id)a3;
- (void)layoutViewModelsIfNeeded;
- (void)tappedOutsideToDismiss:(id)a3;
- (void)transitionDidUpdate:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBHomePeekWindowingModifier

- (SBHomePeekWindowingModifier)initWithPeekingAppLayout:(id)a3 configuration:(int64_t)a4
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = SBHomePeekWindowingModifier;
  v9 = [(SBWindowingModifier *)&v12 init];
  if (v9)
  {
    if (!v8)
    {
      [SBHomePeekWindowingModifier initWithPeekingAppLayout:a2 configuration:v9];
    }

    if (!SBPeekConfigurationIsValid(a4))
    {
      [SBHomePeekWindowingModifier initWithPeekingAppLayout:a2 configuration:v9];
    }

    objc_storeStrong(&v9->_peekingAppLayout, a3);
    v9->_configuration = a4;
    v10 = objc_opt_new();
    [(SBChainableModifier *)v9 addChildModifier:v10];
  }

  return v9;
}

- (void)layoutViewModelsIfNeeded
{
  v3.receiver = self;
  v3.super_class = SBHomePeekWindowingModifier;
  [(SBWindowingModifier *)&v3 layoutViewModelsIfNeeded];
  [(SBHomePeekWindowingModifier *)self _updateForcePeekingEdgeIfNeeded];
}

- (void)_updateForcePeekingEdgeIfNeeded
{
  if (!self->_hasUpdatedForcePeekingEdge)
  {
    self->_hasUpdatedForcePeekingEdge = 1;
    v4 = [(SBHomePeekWindowingModifier *)self windowManagementContext];
    if (([v4 isAutomaticStageCreationEnabled] & 1) == 0 && objc_msgSend(v4, "restoresPreviouslyOpenWindows") && !self->_forcePeekingTrailingEdge)
    {
      self->_forcePeekingTrailingEdge = self->_configuration == 3;
    }
  }
}

- (void)transitionWillBegin:(id)a3
{
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)transitionDidUpdate:(id)a3
{
  v7 = a3;
  IsValid = SBPeekConfigurationIsValid([v7 fromPeekConfiguration]);
  if (IsValid != SBPeekConfigurationIsValid([v7 toPeekConfiguration]))
  {
    v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v5];
    v6 = -[SBRequestDismissalForHomeScreenBackgroundTapsEventResponse initWithDismissalRequested:]([SBRequestDismissalForHomeScreenBackgroundTapsEventResponse alloc], "initWithDismissalRequested:", SBPeekConfigurationIsValid([v7 toPeekConfiguration]));
    [(SBWindowingModifier *)self appendResponse:v6];
  }
}

- (void)appLayoutTapped:(id)a3
{
  v6 = a3;
  v4 = [v6 appLayout];
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v4])
  {
    v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:v6];
    [(SBHomePeekWindowingModifier *)self _configureAndAddDismissalTransitionRequest:v5];
  }
}

- (void)tappedOutsideToDismiss:(id)a3
{
  v4 = [(SBHomePeekWindowingModifier *)self peekingAppLayout];
  v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:v4];

  [(SBHomePeekWindowingModifier *)self _configureAndAddDismissalTransitionRequest:v5];
}

- (void)_configureAndAddDismissalTransitionRequest:(id)a3
{
  v4 = a3;
  [v4 setPeekConfiguration:1];
  [v4 setRetainsSiri:{-[SBHomePeekWindowingModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v5 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v4 gestureInitiated:0];

  [(SBWindowingModifier *)self appendResponse:v5];
}

- (id)visibleItems
{
  v6.receiver = self;
  v6.super_class = SBHomePeekWindowingModifier;
  v3 = [(SBWindowingModifier *)&v6 visibleItems];
  v4 = [v3 setByAddingObject:self->_peekingAppLayout];

  return v4;
}

- (id)topMostItems
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:self->_peekingAppLayout];
  v7.receiver = self;
  v7.super_class = SBHomePeekWindowingModifier;
  v4 = [(SBWindowingModifier *)&v7 topMostItems];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (SBWindowingItemFrame)frameForItem:(SEL)a3
{
  v6 = a4;
  v7 = [v6 appLayout];
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v7])
  {
    [(SBHomePeekWindowingModifier *)self containerViewBounds];
    SBWindowingItemFrameMakeWithBounds(retstr, v8, v9, v10, v11);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHomePeekWindowingModifier;
    [(SBWindowingItemFrame *)&v13 frameForItem:v6];
  }

  return result;
}

- (id)keyboardSuppressionMode
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(SBHomePeekWindowingModifier *)self appLayouts];
  v4 = [v2 setWithArray:v3];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  return v5;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v11])
  {
    v12 = [v11 itemForLayoutRole:a3];
    [(SBHomePeekWindowingModifier *)self _frameForContinuousExposePeekingDisplayItem:v12 inAppLayout:v11 bounds:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = SBHomePeekWindowingModifier;
    [(SBHomePeekWindowingModifier *)&v29 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  v25 = v14;
  v26 = v16;
  v27 = v18;
  v28 = v20;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (SBWindowingItemCorners)cornersForItem:(SEL)a3
{
  v6 = a4;
  v7 = [v6 appLayout];
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v7])
  {
    [(SBHomePeekWindowingModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:v7];
    [(SBHomePeekWindowingModifier *)self frameForItem:v6];
    SBRectCornerRadiiForRadius();
    SBWindowingItemCornersMake(15, retstr, v8, v9, v10, v11);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHomePeekWindowingModifier;
    [(SBWindowingItemCorners *)&v13 cornersForItem:v6];
  }

  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)a3
{
  v5 = [(SBHomePeekWindowingModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBHomePeekWindowingModifier;
    v7 = [(SBHomePeekWindowingModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:a3];
  }

  return v7;
}

- (SBWindowingItemShadow)shadowForItem:(id)a3
{
  v4 = a3;
  peekingAppLayout = self->_peekingAppLayout;
  v6 = [v4 appLayout];
  LODWORD(peekingAppLayout) = [(SBAppLayout *)peekingAppLayout isOrContainsAppLayout:v6];

  if (peekingAppLayout)
  {
    SBWindowingItemShadowMake();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHomePeekWindowingModifier;
    v7 = [(SBWindowingModifier *)&v13 shadowForItem:v4];
  }

  v9 = *&v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.shadowStyle = v12;
  result.shadowOpacity = v11;
  return result;
}

- (double)opacityForItem:(id)a3
{
  peekingAppLayout = self->_peekingAppLayout;
  v4 = [a3 appLayout];
  LODWORD(peekingAppLayout) = [(SBAppLayout *)peekingAppLayout isOrContainsAppLayout:v4];

  result = 0.0;
  if (peekingAppLayout)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withPerspectiveAngle:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a4;
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v9])
  {
    v10 = [v9 itemForLayoutRole:a3];
    v11 = [(SBHomePeekWindowingModifier *)self zOrderedItemsInAppLayout:v9];
    v12 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v9];
    [(SBHomePeekWindowingModifier *)self containerViewBounds];
    [(SBHomePeekWindowingModifier *)self _perspectiveAngleForPeekingEdge:[(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v10 withZOrderedItems:v11 autoLayoutSpace:v12 bounds:?]];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SBHomePeekWindowingModifier;
    [(SBHomePeekWindowingModifier *)&v21 perspectiveAngleForLayoutRole:a3 inAppLayout:v9 withPerspectiveAngle:x, y];
    v14 = v17;
    v16 = v18;
  }

  v19 = v14;
  v20 = v16;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_perspectiveAngleForPeekingEdge:(unint64_t)a3
{
  v4 = [(SBHomePeekWindowingModifier *)self switcherSettings];
  [v4 peekingAbsolutePerspectiveAngle];

  if (a3 == 8 || a3 == 2)
  {
    BSDegreesToRadians();
    v6 = v5;
    v7 = 0.0;
  }

  else
  {
    v7 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v6;
  result.x = v7;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v6])
  {
    v7 = [(SBHomePeekWindowingModifier *)self switcherSettings];
    [v7 peekingCardScale];
    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHomePeekWindowingModifier;
    [(SBHomePeekWindowingModifier *)&v12 scaleForLayoutRole:a3 inAppLayout:v6];
    v9 = v10;
  }

  return v9;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)a3
{
  v6 = a4;
  if ([v6 isAppLayout] && (peekingAppLayout = self->_peekingAppLayout, objc_msgSend(v6, "appLayout"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(peekingAppLayout) = -[SBAppLayout isOrContainsAppLayout:](peekingAppLayout, "isOrContainsAppLayout:", v8), v8, peekingAppLayout))
  {
    SBWindowingItemTitleStyleMake(1, 0, retstr, 0.0, 0.0, 0.0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBHomePeekWindowingModifier;
    [(SBWindowingItemTitleStyle *)&v10 titleStyleForItem:v6];
  }

  return result;
}

- (unint64_t)transactionCompletionOptions
{
  if ([(SBHomePeekWindowingModifier *)self isReduceMotionEnabled])
  {
    return 6;
  }

  else
  {
    return 2;
  }
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SBHomePeekWindowingModifier;
  v5 = [(SBHomePeekWindowingModifier *)&v21 adjustedAppLayoutsForAppLayouts:v4];
  if ([v5 containsObject:self->_peekingAppLayout])
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 mutableCopy];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__33;
    v19 = __Block_byref_object_dispose__33;
    v20 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__33;
    v13 = __Block_byref_object_dispose__33;
    v14 = MEMORY[0x277CBEBF8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__SBHomePeekWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v8[3] = &unk_2783B1D88;
    v8[4] = self;
    v8[5] = &v15;
    v8[6] = &v9;
    [v6 enumerateObjectsUsingBlock:v8];
    [v6 removeObject:v16[5]];
    [v6 addObjectsFromArray:v10[5]];
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
  }

  return v6;
}

void __63__SBHomePeekWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  if ([v4 isOrContainsAppLayout:*(a1[4] + 184)])
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__SBHomePeekWindowingModifier_adjustedAppLayoutsForAppLayouts___block_invoke_2;
    v13[3] = &unk_2783A8C90;
    v13[4] = a1[4];
    v5 = [v4 appLayoutWithItemsPassingTest:v13];
    v6 = v5;
    if (v5)
    {
      v14[0] = v5;
      v14[1] = *(a1[4] + 184);
      v7 = MEMORY[0x277CBEA60];
      v8 = v14;
      v9 = 2;
    }

    else
    {
      v15[0] = *(a1[4] + 184);
      v7 = MEMORY[0x277CBEA60];
      v8 = v15;
      v9 = 1;
    }

    v10 = [v7 arrayWithObjects:v8 count:v9];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (CGRect)_frameForContinuousExposePeekingDisplayItem:(id)a3 inAppLayout:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v12];
  v14 = [(SBHomePeekWindowingModifier *)self zOrderedItemsInAppLayout:v12];
  v15 = [(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v11 withZOrderedItems:v14 autoLayoutSpace:v13 bounds:x, y, width, height];
  v16 = [v13 flexibleAutoLayoutItemForDisplayItem:v11];
  -[SBHomePeekWindowingModifier scaleForLayoutRole:inAppLayout:](self, "scaleForLayoutRole:inAppLayout:", [v12 layoutRoleForItem:v11], v12);
  v18 = v17;
  [v16 exposePosition];
  [v16 size];
  v20 = v19;
  v44 = v21;
  v22 = [(SBHomePeekWindowingModifier *)self switcherSettings];
  [v22 peekInsetWidth];
  v24 = v23;

  if (v15 == 8 || (v25 = v24, v15 == 2))
  {
    v26 = [(SBHomePeekWindowingModifier *)self _numberOfPeekingItemsAboveDisplayItem:v11 inAppLayout:v12 bounds:x, y, width, height];
    v27 = [(SBHomePeekWindowingModifier *)self switcherSettings];
    [v27 peekCascadingOffset];
    v25 = v24 - v26 * v28;
  }

  v29 = [(SBHomePeekWindowingModifier *)self switcherSettings];
  [v29 minPeekDistance];
  v31 = v30;

  if (v25 >= v31)
  {
    v32 = v25;
  }

  else
  {
    v32 = v31;
  }

  if (v32 < v24)
  {
    v24 = v32;
  }

  [(SBHomePeekWindowingModifier *)self _perspectiveAngleForPeekingEdge:v15];
  v34 = cos(v33);
  v35 = x + width + v34 * v20 * ((1.0 - v18) * -0.5) - v24;
  v36 = v24 + (v18 + 1.0) * (v20 * v34) * -0.5;
  if (v15 == 2)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

  [v16 frame];
  v39 = v38;

  v40 = v37;
  v41 = v39;
  v42 = v20;
  v43 = v44;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)a3 inAppLayout:(id)a4 bounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = a4;
  v13 = [(SBHomePeekWindowingModifier *)self zOrderedItemsInAppLayout:v12];
  v14 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:v12];

  v15 = [(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v11 withZOrderedItems:v13 autoLayoutSpace:v14 bounds:x, y, width, height];
  if (v15 == 8 || v15 == 2)
  {
    v16 = [(SBHomePeekWindowingModifier *)self _numberOfPeekingItemsAboveDisplayItem:v11 peekingOnEdge:v15 autoLayoutSpace:v14 zOrderedItems:v13 bounds:x, y, width, height];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)a3 peekingOnEdge:(unint64_t)a4 autoLayoutSpace:(id)a5 zOrderedItems:(id)a6 bounds:(CGRect)a7
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v15 = a5;
  v16 = a6;
  v17 = [v16 indexOfObject:a3];
  if (v17 > 0x7FFFFFFFFFFFFFFELL)
  {
    v19 = 0;
  }

  else
  {
    v18 = v17;
    v19 = 0;
    do
    {
      v20 = [v16 objectAtIndex:v18];
      if ([(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v20 withZOrderedItems:v16 autoLayoutSpace:v15 bounds:x, y, width, height]== a4)
      {
        ++v19;
      }

      --v18;
    }

    while (v18 != -1);
  }

  return v19;
}

- (unint64_t)_peekEdgeForDisplayItem:(id)a3 withZOrderedItems:(id)a4 autoLayoutSpace:(id)a5 bounds:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = v15;
  if (self->_forcePeekingTrailingEdge)
  {
    v17 = 8;
  }

  else
  {
    v18 = [v15 flexibleAutoLayoutItemForDisplayItem:v13];
    [v18 position];
    v20 = v19;
    v21 = [v16 configuration];
    [v21 containerBounds];
    UIRectGetCenter();
    v23 = v22;

    if (v20 == v23)
    {
      v24 = [v14 indexOfObject:v13];
      v25 = [v14 count];
      v17 = 8;
      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v24 != v25 - 1)
      {
        v26 = [v14 objectAtIndex:v24 + 1];
        if ([(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v26 withZOrderedItems:v14 autoLayoutSpace:v16 bounds:x, y, width, height]== 8)
        {
          v17 = 2;
        }

        else
        {
          v17 = 8;
        }
      }
    }

    else
    {
      v27 = [v16 configuration];
      [v27 containerBounds];
      UIRectGetCenter();
      v29 = v28;

      if (v20 >= v29)
      {
        v17 = 8;
      }

      else
      {
        v17 = 2;
      }
    }
  }

  return v17;
}

- (void)initWithPeekingAppLayout:(uint64_t)a1 configuration:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomePeekWindowingModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

- (void)initWithPeekingAppLayout:(uint64_t)a1 configuration:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomePeekWindowingModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"SBPeekConfigurationIsValid(configuration)"}];
}

@end
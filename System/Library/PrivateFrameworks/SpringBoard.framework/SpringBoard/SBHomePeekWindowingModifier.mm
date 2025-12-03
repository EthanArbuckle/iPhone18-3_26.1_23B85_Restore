@interface SBHomePeekWindowingModifier
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)_perspectiveAngleForPeekingEdge:(unint64_t)edge;
- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle;
- (CGRect)_frameForContinuousExposePeekingDisplayItem:(id)item inAppLayout:(id)layout bounds:(CGRect)bounds;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBHomePeekWindowingModifier)initWithPeekingAppLayout:(id)layout configuration:(int64_t)configuration;
- (SBWindowingItemCorners)cornersForItem:(SEL)item;
- (SBWindowingItemFrame)frameForItem:(SEL)item;
- (SBWindowingItemShadow)shadowForItem:(id)item;
- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item;
- (double)opacityForItem:(id)item;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)keyboardSuppressionMode;
- (id)topMostItems;
- (id)visibleItems;
- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)item inAppLayout:(id)layout bounds:(CGRect)bounds;
- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)item peekingOnEdge:(unint64_t)edge autoLayoutSpace:(id)space zOrderedItems:(id)items bounds:(CGRect)bounds;
- (unint64_t)_peekEdgeForDisplayItem:(id)item withZOrderedItems:(id)items autoLayoutSpace:(id)space bounds:(CGRect)bounds;
- (unint64_t)transactionCompletionOptions;
- (void)_configureAndAddDismissalTransitionRequest:(id)request;
- (void)_updateForcePeekingEdgeIfNeeded;
- (void)appLayoutTapped:(id)tapped;
- (void)layoutViewModelsIfNeeded;
- (void)tappedOutsideToDismiss:(id)dismiss;
- (void)transitionDidUpdate:(id)update;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBHomePeekWindowingModifier

- (SBHomePeekWindowingModifier)initWithPeekingAppLayout:(id)layout configuration:(int64_t)configuration
{
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = SBHomePeekWindowingModifier;
  v9 = [(SBWindowingModifier *)&v12 init];
  if (v9)
  {
    if (!layoutCopy)
    {
      [SBHomePeekWindowingModifier initWithPeekingAppLayout:a2 configuration:v9];
    }

    if (!SBPeekConfigurationIsValid(configuration))
    {
      [SBHomePeekWindowingModifier initWithPeekingAppLayout:a2 configuration:v9];
    }

    objc_storeStrong(&v9->_peekingAppLayout, layout);
    v9->_configuration = configuration;
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
    windowManagementContext = [(SBHomePeekWindowingModifier *)self windowManagementContext];
    if (([windowManagementContext isAutomaticStageCreationEnabled] & 1) == 0 && objc_msgSend(windowManagementContext, "restoresPreviouslyOpenWindows") && !self->_forcePeekingTrailingEdge)
    {
      self->_forcePeekingTrailingEdge = self->_configuration == 3;
    }
  }
}

- (void)transitionWillBegin:(id)begin
{
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  [(SBWindowingModifier *)self appendResponse:v4];
}

- (void)transitionDidUpdate:(id)update
{
  updateCopy = update;
  IsValid = SBPeekConfigurationIsValid([updateCopy fromPeekConfiguration]);
  if (IsValid != SBPeekConfigurationIsValid([updateCopy toPeekConfiguration]))
  {
    v5 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    [(SBWindowingModifier *)self appendResponse:v5];
    v6 = -[SBRequestDismissalForHomeScreenBackgroundTapsEventResponse initWithDismissalRequested:]([SBRequestDismissalForHomeScreenBackgroundTapsEventResponse alloc], "initWithDismissalRequested:", SBPeekConfigurationIsValid([updateCopy toPeekConfiguration]));
    [(SBWindowingModifier *)self appendResponse:v6];
  }
}

- (void)appLayoutTapped:(id)tapped
{
  tappedCopy = tapped;
  appLayout = [tappedCopy appLayout];
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:appLayout])
  {
    v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForTapAppLayoutEvent:tappedCopy];
    [(SBHomePeekWindowingModifier *)self _configureAndAddDismissalTransitionRequest:v5];
  }
}

- (void)tappedOutsideToDismiss:(id)dismiss
{
  peekingAppLayout = [(SBHomePeekWindowingModifier *)self peekingAppLayout];
  v5 = [(SBSwitcherTransitionRequest *)SBMutableSwitcherTransitionRequest requestForActivatingAppLayout:peekingAppLayout];

  [(SBHomePeekWindowingModifier *)self _configureAndAddDismissalTransitionRequest:v5];
}

- (void)_configureAndAddDismissalTransitionRequest:(id)request
{
  requestCopy = request;
  [requestCopy setPeekConfiguration:1];
  [requestCopy setRetainsSiri:{-[SBHomePeekWindowingModifier isSystemAssistantExperiencePersistentSiriEnabled](self, "isSystemAssistantExperiencePersistentSiriEnabled")}];
  v5 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:requestCopy gestureInitiated:0];

  [(SBWindowingModifier *)self appendResponse:v5];
}

- (id)visibleItems
{
  v6.receiver = self;
  v6.super_class = SBHomePeekWindowingModifier;
  visibleItems = [(SBWindowingModifier *)&v6 visibleItems];
  v4 = [visibleItems setByAddingObject:self->_peekingAppLayout];

  return v4;
}

- (id)topMostItems
{
  v3 = [MEMORY[0x277CBEA60] arrayWithObject:self->_peekingAppLayout];
  v7.receiver = self;
  v7.super_class = SBHomePeekWindowingModifier;
  topMostItems = [(SBWindowingModifier *)&v7 topMostItems];
  v5 = [v3 arrayByAddingObjectsFromArray:topMostItems];

  return v5;
}

- (SBWindowingItemFrame)frameForItem:(SEL)item
{
  v6 = a4;
  appLayout = [v6 appLayout];
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:appLayout])
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
  appLayouts = [(SBHomePeekWindowingModifier *)self appLayouts];
  v4 = [v2 setWithArray:appLayouts];
  v5 = [SBSwitcherKeyboardSuppressionMode newSuppressionModeForSwitcherScenesFromAppLayouts:v4];

  return v5;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v12 = [layoutCopy itemForLayoutRole:role];
    [(SBHomePeekWindowingModifier *)self _frameForContinuousExposePeekingDisplayItem:v12 inAppLayout:layoutCopy bounds:x, y, width, height];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v29.receiver = self;
    v29.super_class = SBHomePeekWindowingModifier;
    [(SBHomePeekWindowingModifier *)&v29 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
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

- (SBWindowingItemCorners)cornersForItem:(SEL)item
{
  v6 = a4;
  appLayout = [v6 appLayout];
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:appLayout])
  {
    [(SBHomePeekWindowingModifier *)self bestSupportedDefaultCornerRadiusForAppLayout:appLayout];
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

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBHomePeekWindowingModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBHomePeekWindowingModifier;
    v7 = [(SBHomePeekWindowingModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (SBWindowingItemShadow)shadowForItem:(id)item
{
  itemCopy = item;
  peekingAppLayout = self->_peekingAppLayout;
  appLayout = [itemCopy appLayout];
  LODWORD(peekingAppLayout) = [(SBAppLayout *)peekingAppLayout isOrContainsAppLayout:appLayout];

  if (peekingAppLayout)
  {
    SBWindowingItemShadowMake();
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBHomePeekWindowingModifier;
    v7 = [(SBWindowingModifier *)&v13 shadowForItem:itemCopy];
  }

  v9 = *&v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.shadowStyle = v12;
  result.shadowOpacity = v11;
  return result;
}

- (double)opacityForItem:(id)item
{
  peekingAppLayout = self->_peekingAppLayout;
  appLayout = [item appLayout];
  LODWORD(peekingAppLayout) = [(SBAppLayout *)peekingAppLayout isOrContainsAppLayout:appLayout];

  result = 0.0;
  if (peekingAppLayout)
  {
    return 1.0;
  }

  return result;
}

- (CGPoint)perspectiveAngleForLayoutRole:(int64_t)role inAppLayout:(id)layout withPerspectiveAngle:(CGPoint)angle
{
  y = angle.y;
  x = angle.x;
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v10 = [layoutCopy itemForLayoutRole:role];
    v11 = [(SBHomePeekWindowingModifier *)self zOrderedItemsInAppLayout:layoutCopy];
    v12 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
    [(SBHomePeekWindowingModifier *)self containerViewBounds];
    [(SBHomePeekWindowingModifier *)self _perspectiveAngleForPeekingEdge:[(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v10 withZOrderedItems:v11 autoLayoutSpace:v12 bounds:?]];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = SBHomePeekWindowingModifier;
    [(SBHomePeekWindowingModifier *)&v21 perspectiveAngleForLayoutRole:role inAppLayout:layoutCopy withPerspectiveAngle:x, y];
    v14 = v17;
    v16 = v18;
  }

  v19 = v14;
  v20 = v16;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)_perspectiveAngleForPeekingEdge:(unint64_t)edge
{
  switcherSettings = [(SBHomePeekWindowingModifier *)self switcherSettings];
  [switcherSettings peekingAbsolutePerspectiveAngle];

  if (edge == 8 || edge == 2)
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

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([(SBAppLayout *)self->_peekingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    switcherSettings = [(SBHomePeekWindowingModifier *)self switcherSettings];
    [switcherSettings peekingCardScale];
    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBHomePeekWindowingModifier;
    [(SBHomePeekWindowingModifier *)&v12 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v9 = v10;
  }

  return v9;
}

- (SBWindowingItemTitleStyle)titleStyleForItem:(SEL)item
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

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v21.receiver = self;
  v21.super_class = SBHomePeekWindowingModifier;
  v5 = [(SBHomePeekWindowingModifier *)&v21 adjustedAppLayoutsForAppLayouts:layoutsCopy];
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

- (CGRect)_frameForContinuousExposePeekingDisplayItem:(id)item inAppLayout:(id)layout bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  itemCopy = item;
  layoutCopy = layout;
  v13 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];
  v14 = [(SBHomePeekWindowingModifier *)self zOrderedItemsInAppLayout:layoutCopy];
  height = [(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:itemCopy withZOrderedItems:v14 autoLayoutSpace:v13 bounds:x, y, width, height];
  v16 = [v13 flexibleAutoLayoutItemForDisplayItem:itemCopy];
  -[SBHomePeekWindowingModifier scaleForLayoutRole:inAppLayout:](self, "scaleForLayoutRole:inAppLayout:", [layoutCopy layoutRoleForItem:itemCopy], layoutCopy);
  v18 = v17;
  [v16 exposePosition];
  [v16 size];
  v20 = v19;
  v44 = v21;
  switcherSettings = [(SBHomePeekWindowingModifier *)self switcherSettings];
  [switcherSettings peekInsetWidth];
  v24 = v23;

  if (height == 8 || (v25 = v24, height == 2))
  {
    height2 = [(SBHomePeekWindowingModifier *)self _numberOfPeekingItemsAboveDisplayItem:itemCopy inAppLayout:layoutCopy bounds:x, y, width, height];
    switcherSettings2 = [(SBHomePeekWindowingModifier *)self switcherSettings];
    [switcherSettings2 peekCascadingOffset];
    v25 = v24 - height2 * v28;
  }

  switcherSettings3 = [(SBHomePeekWindowingModifier *)self switcherSettings];
  [switcherSettings3 minPeekDistance];
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

  [(SBHomePeekWindowingModifier *)self _perspectiveAngleForPeekingEdge:height];
  v34 = cos(v33);
  v35 = x + width + v34 * v20 * ((1.0 - v18) * -0.5) - v24;
  v36 = v24 + (v18 + 1.0) * (v20 * v34) * -0.5;
  if (height == 2)
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

- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)item inAppLayout:(id)layout bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  itemCopy = item;
  layoutCopy = layout;
  v13 = [(SBHomePeekWindowingModifier *)self zOrderedItemsInAppLayout:layoutCopy];
  v14 = [(SBWindowingModifier *)self flexibleAutoLayoutSpaceForAppLayout:layoutCopy];

  height = [(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:itemCopy withZOrderedItems:v13 autoLayoutSpace:v14 bounds:x, y, width, height];
  if (height == 8 || height == 2)
  {
    height2 = [(SBHomePeekWindowingModifier *)self _numberOfPeekingItemsAboveDisplayItem:itemCopy peekingOnEdge:height autoLayoutSpace:v14 zOrderedItems:v13 bounds:x, y, width, height];
  }

  else
  {
    height2 = 0;
  }

  return height2;
}

- (int64_t)_numberOfPeekingItemsAboveDisplayItem:(id)item peekingOnEdge:(unint64_t)edge autoLayoutSpace:(id)space zOrderedItems:(id)items bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  spaceCopy = space;
  itemsCopy = items;
  v17 = [itemsCopy indexOfObject:item];
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
      v20 = [itemsCopy objectAtIndex:v18];
      if ([(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v20 withZOrderedItems:itemsCopy autoLayoutSpace:spaceCopy bounds:x, y, width, height]== edge)
      {
        ++v19;
      }

      --v18;
    }

    while (v18 != -1);
  }

  return v19;
}

- (unint64_t)_peekEdgeForDisplayItem:(id)item withZOrderedItems:(id)items autoLayoutSpace:(id)space bounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  itemCopy = item;
  itemsCopy = items;
  spaceCopy = space;
  v16 = spaceCopy;
  if (self->_forcePeekingTrailingEdge)
  {
    v17 = 8;
  }

  else
  {
    v18 = [spaceCopy flexibleAutoLayoutItemForDisplayItem:itemCopy];
    [v18 position];
    v20 = v19;
    configuration = [v16 configuration];
    [configuration containerBounds];
    UIRectGetCenter();
    v23 = v22;

    if (v20 == v23)
    {
      v24 = [itemsCopy indexOfObject:itemCopy];
      v25 = [itemsCopy count];
      v17 = 8;
      if (v24 != 0x7FFFFFFFFFFFFFFFLL && v24 != v25 - 1)
      {
        v26 = [itemsCopy objectAtIndex:v24 + 1];
        if ([(SBHomePeekWindowingModifier *)self _peekEdgeForDisplayItem:v26 withZOrderedItems:itemsCopy autoLayoutSpace:v16 bounds:x, y, width, height]== 8)
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
      configuration2 = [v16 configuration];
      [configuration2 containerBounds];
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
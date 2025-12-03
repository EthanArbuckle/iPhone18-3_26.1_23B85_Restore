@interface SBMedusaWindowDragTransitionSwitcherModifier
- (BOOL)_minimizingCenterWindow;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBMedusaWindowDragTransitionSwitcherModifier)initWithTransitionID:(id)d selectedAppLayout:(id)layout fromAppLayout:(id)appLayout toAppLayout:(id)toAppLayout toFloatingAppLayout:(id)floatingAppLayout toHomeScreenPeek:(BOOL)peek toAppExposeBundleIdentifier:(id)identifier initiallyBlurredDisplayItems:(id)self0 windowDragDestination:(unint64_t)self1;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (double)homeScreenDimmingAlpha;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)handleSceneReadyEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBMedusaWindowDragTransitionSwitcherModifier

- (SBMedusaWindowDragTransitionSwitcherModifier)initWithTransitionID:(id)d selectedAppLayout:(id)layout fromAppLayout:(id)appLayout toAppLayout:(id)toAppLayout toFloatingAppLayout:(id)floatingAppLayout toHomeScreenPeek:(BOOL)peek toAppExposeBundleIdentifier:(id)identifier initiallyBlurredDisplayItems:(id)self0 windowDragDestination:(unint64_t)self1
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  toAppLayoutCopy = toAppLayout;
  floatingAppLayoutCopy = floatingAppLayout;
  identifierCopy = identifier;
  itemsCopy = items;
  v41.receiver = self;
  v41.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  v20 = [(SBTransitionSwitcherModifier *)&v41 initWithTransitionID:dCopy];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_selectedAppLayout, layout);
    objc_storeStrong(&v21->_fromAppLayout, appLayout);
    objc_storeStrong(&v21->_toAppLayout, toAppLayout);
    objc_storeStrong(&v21->_toFloatingAppLayout, floatingAppLayout);
    v21->_isGoingToHomeScreenPeek = peek;
    v21->_finalWindowDragDestination = destination;
    if (identifierCopy)
    {
      v22 = [(SBAppLayout *)v21->_fromAppLayout itemForLayoutRole:4];

      if (v22)
      {
        v23 = [[SBSwitcherShelf alloc] initWithBundleIdentifier:identifierCopy layoutRole:0 displayMode:0];
        v24 = [[SBShelfZoomTransitionModifier alloc] initWithTransitionID:dCopy direction:0 fromAppLayout:appLayoutCopy toAppLayout:toAppLayoutCopy shelf:v23];
        [(SBChainableModifier *)v21 addChildModifier:v24];
      }
    }

    objc_storeStrong(&v21->_initiallyBlurredDisplayItems, items);
    v25 = [itemsCopy mutableCopy];
    waitingForSceneUpdateForDisplayItems = v21->_waitingForSceneUpdateForDisplayItems;
    v21->_waitingForSceneUpdateForDisplayItems = v25;

    fromAppLayout = v21->_fromAppLayout;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __229__SBMedusaWindowDragTransitionSwitcherModifier_initWithTransitionID_selectedAppLayout_fromAppLayout_toAppLayout_toFloatingAppLayout_toHomeScreenPeek_toAppExposeBundleIdentifier_initiallyBlurredDisplayItems_windowDragDestination___block_invoke;
    v39[3] = &unk_2783A8C90;
    v28 = v21;
    v40 = v28;
    v29 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v39];
    discardedAppLayout = v28->_discardedAppLayout;
    v28->_discardedAppLayout = v29;

    v31 = v28->_discardedAppLayout;
    if (v31)
    {
      v32 = v21->_fromAppLayout;
      v33 = [(SBAppLayout *)v31 itemForLayoutRole:1];
      v28->_discardedLayoutRole = [(SBAppLayout *)v32 layoutRoleForItem:v33];
    }

    else
    {
      v28->_discardedLayoutRole = 0;
    }
  }

  return v21;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v7.receiver = self;
  v7.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  [(SBChainableModifier *)&v7 didMoveToParentModifier:?];
  if (modifier)
  {
    if (!self->_hasAddedChildTransitionModifiers)
    {
      self->_hasAddedChildTransitionModifiers = 1;
      v5 = [(SBAppLayout *)self->_selectedAppLayout itemForLayoutRole:1];
      v6 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v5];
      [(SBChainableModifier *)self addChildModifier:v6];
    }
  }
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = layoutCopy;
  if (self->_isGoingToHomeScreenPeek && [layoutCopy isEqual:self->_selectedAppLayout])
  {
    v6 = self->_fromAppLayout;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
    v6 = [(SBMedusaWindowDragTransitionSwitcherModifier *)&v9 appLayoutContainingAppLayout:v5];
  }

  v7 = v6;

  return v7;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v27.receiver = self;
  v27.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  [(SBMedusaWindowDragTransitionSwitcherModifier *)&v27 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (self->_finalWindowDragDestination - 11 <= 1)
  {
    appLayouts = [(SBMedusaWindowDragTransitionSwitcherModifier *)self appLayouts];
    v14 = [appLayouts objectAtIndex:index];

    if (![v14 isOrContainsAppLayout:self->_discardedAppLayout])
    {
      v20 = v10;
LABEL_12:

      v10 = v20;
      goto LABEL_13;
    }

    [(SBMedusaWindowDragTransitionSwitcherModifier *)self switcherViewBounds];
    v16 = v15;
    [(SBMedusaWindowDragTransitionSwitcherModifier *)self separatorViewWidth];
    v18 = v17 * 0.5;
    SBRectWithSize();
    v20 = v19;
    v12 = v21;
    discardedLayoutRole = self->_discardedLayoutRole;
    if (discardedLayoutRole == 1)
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
      {
        goto LABEL_8;
      }

      discardedLayoutRole = self->_discardedLayoutRole;
    }

    if (discardedLayoutRole != 2 || [*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
    {
      v6 = v16 + v18;
      goto LABEL_11;
    }

LABEL_8:
    v6 = -(v10 + v18);
LABEL_11:
    v8 = 0.0;
    goto LABEL_12;
  }

LABEL_13:
  v23 = v6;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  topMostLayoutElements = [(SBMedusaWindowDragTransitionSwitcherModifier *)&v6 topMostLayoutElements];
  if ([(SBAppLayout *)self->_fromAppLayout containsAnyItemFromAppLayout:self->_selectedAppLayout]&& ![(SBAppLayout *)self->_toAppLayout containsAnyItemFromAppLayout:self->_selectedAppLayout]&& !self->_isGoingToHomeScreenPeek)
  {
    v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_selectedAppLayout toIndex:0];

    topMostLayoutElements = v4;
  }

  return topMostLayoutElements;
}

- (id)transitionDidEnd
{
  v11.receiver = self;
  v11.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v11 transitionDidEnd];
  if (self->_isGoingToHomeScreenPeek && !self->_toFloatingAppLayout)
  {
    v4 = [SBAddModifierSwitcherEventResponse alloc];
    v5 = objc_alloc_init(SBSlideOverAppsInFullScreenSwitcherSwitcherModifier);
    v6 = [(SBAddModifierSwitcherEventResponse *)v4 initWithModifier:v5 level:3];

    v7 = SBAppendSwitcherModifierResponse(v6, transitionDidEnd);

    transitionDidEnd = v7;
  }

  v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v9 = SBAppendSwitcherModifierResponse(v8, transitionDidEnd);

  return v9;
}

- (id)handleSceneReadyEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  v7 = [appLayout itemForLayoutRole:1];
  if ([(NSMutableSet *)self->_waitingForSceneUpdateForDisplayItems containsObject:v7])
  {
    if ([(SBMedusaWindowDragTransitionSwitcherModifier *)self isLayoutRoleContentReady:1 inAppLayout:appLayout])
    {
      [(NSMutableSet *)self->_waitingForSceneUpdateForDisplayItems removeObject:v7];
      if (![(NSMutableSet *)self->_waitingForSceneUpdateForDisplayItems count])
      {
        v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
        v9 = SBAppendSwitcherModifierResponse(v8, v5);

        v5 = v9;
      }
    }
  }

  return v5;
}

- (double)homeScreenDimmingAlpha
{
  if (self->_isGoingToHomeScreenPeek || (-[SBAppLayout allItems](self->_toAppLayout, "allItems"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, result = 1.0, !v4))
  {
    v6.receiver = self;
    v6.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
    [(SBMedusaWindowDragTransitionSwitcherModifier *)&v6 homeScreenDimmingAlpha];
  }

  return result;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  v5 = [layout itemForLayoutRole:blurred];
  v6 = [(NSMutableSet *)self->_waitingForSceneUpdateForDisplayItems count]&& [(NSSet *)self->_initiallyBlurredDisplayItems containsObject:v5];

  return v6;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  appLayouts = [(SBMedusaWindowDragTransitionSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  v9 = 1.0;
  if (![(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:v8]&& ![(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v8])
  {
    v12.receiver = self;
    v12.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
    [(SBMedusaWindowDragTransitionSwitcherModifier *)&v12 shadowOpacityForLayoutRole:role atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  if (![(SBMedusaWindowDragTransitionSwitcherModifier *)self _goingToHomeScreenPeekFromSplitView]&& ![(SBMedusaWindowDragTransitionSwitcherModifier *)self _minimizingCenterWindow])
  {
    v5 = [v4 mutableCopy];
    medusaSettings = [(SBMedusaWindowDragTransitionSwitcherModifier *)self medusaSettings];
    dropAnimationSettings = [medusaSettings dropAnimationSettings];
    [v5 setLayoutSettings:dropAnimationSettings];

    v4 = v5;
  }

  return v4;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  if (-[SBMedusaWindowDragTransitionSwitcherModifier _minimizingCenterWindow](self, "_minimizingCenterWindow") && [layoutCopy isEqual:self->_toAppLayout])
  {
    v5 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBMedusaWindowDragTransitionSwitcherModifier;
    v5 = [(SBTransitionSwitcherModifier *)&v8 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_minimizingCenterWindow
{
  v3 = [(SBAppLayout *)self->_selectedAppLayout itemForLayoutRole:1];
  v4 = [(SBAppLayout *)self->_fromAppLayout itemForLayoutRole:4];
  v5 = [(SBDisplayItem *)v3 isEqualToItem:v4];

  if (v5 && ![(SBAppLayout *)self->_toAppLayout containsItem:v3])
  {
    v6 = ![(SBAppLayout *)self->_toFloatingAppLayout containsItem:v3];
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end
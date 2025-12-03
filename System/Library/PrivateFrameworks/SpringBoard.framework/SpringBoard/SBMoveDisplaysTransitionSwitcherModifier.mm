@interface SBMoveDisplaysTransitionSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBMoveDisplaysTransitionSwitcherModifier)initWithTransitionEvent:(id)event;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)_appLayoutsContainingMovingDisplayItems;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)handleSceneReadyEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBMoveDisplaysTransitionSwitcherModifier

- (SBMoveDisplaysTransitionSwitcherModifier)initWithTransitionEvent:(id)event
{
  v31 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  transitionID = [eventCopy transitionID];
  v29.receiver = self;
  v29.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v6 = [(SBTransitionSwitcherModifier *)&v29 initWithTransitionID:transitionID];

  if (v6)
  {
    moveDisplaysContext = [eventCopy moveDisplaysContext];
    fromAppLayout = [eventCopy fromAppLayout];
    toAppLayout = [eventCopy toAppLayout];
    if ([toAppLayout containsAnyItemFromAppLayout:fromAppLayout] && (v10 = toAppLayout) != 0)
    {
      v24 = v10;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      movingDisplayItems = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext movingDisplayItems];
      v12 = [movingDisplayItems countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(movingDisplayItems);
            }

            v14 |= SBLayoutRoleIsValidForSplitView([(SBAppLayout *)fromAppLayout layoutRoleForItem:*(*(&v25 + 1) + 8 * i)]);
          }

          v13 = [movingDisplayItems countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v13);
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      v17 = v24;
    }

    else
    {
      v17 = 0;
      LOBYTE(v14) = 0;
    }

    moveDisplaysContext = v6->_moveDisplaysContext;
    v6->_moveDisplaysContext = moveDisplaysContext;
    v19 = moveDisplaysContext;

    fromAppLayout = v6->_fromAppLayout;
    v6->_fromAppLayout = fromAppLayout;
    v21 = fromAppLayout;

    remainingAppLayout = v6->_remainingAppLayout;
    v6->_remainingAppLayout = v17;

    v6->_remainingAppLayoutNeedsLayout = v14 & 1;
  }

  return v6;
}

- (id)transitionWillBegin
{
  v8.receiver = self;
  v8.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v8 transitionWillBegin];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  return v6;
}

- (id)transitionWillUpdate
{
  v6.receiver = self;
  v6.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v6 transitionWillUpdate];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillUpdate);

  return v4;
}

- (id)transitionDidEnd
{
  v6.receiver = self;
  v6.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v6 transitionDidEnd];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, transitionDidEnd);

  return v4;
}

- (id)handleSceneReadyEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:eventCopy];
  moveDisplaysContext = self->_moveDisplaysContext;
  appLayout = [eventCopy appLayout];

  LODWORD(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToAppLayout:appLayout];
  if (moveDisplaysContext)
  {
    v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:0];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v20 = *MEMORY[0x277D85DE8];
  layoutsCopy = layouts;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = layoutsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v11, v15])
        {
          leafAppLayouts = [v11 leafAppLayouts];
          [v5 addObjectsFromArray:leafAppLayouts];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  array = [v5 array];

  return array;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v7 = [v6 itemForLayoutRole:1];
    transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
    moveDisplaysContext = self->_moveDisplaysContext;
    if (transitionPhase > 1)
    {
      [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext toFrameForDisplayItem:v7];
    }

    else
    {
      [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext fromFrameForDisplayItem:v7];
    }

    v15 = v10;
    v17 = v11;
    v19 = v12;
    v21 = v13;
  }

  else
  {
    v26.receiver = self;
    v26.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v26 frameForIndex:index];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  moveDisplaysContext = self->_moveDisplaysContext;
  v13 = [layoutCopy itemForLayoutRole:role];
  LODWORD(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v13];

  if (!moveDisplaysContext)
  {
    v22.receiver = self;
    v22.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v22 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    x = v14;
    y = v15;
    width = v16;
    height = v17;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = 1.0;
  if (![(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v10.receiver = self;
    v10.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v10 scaleForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = 1.0;
  if (![(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:layoutCopy])
  {
    v10.receiver = self;
    v10.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v10 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v7 = v8;
  }

  return v7;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  moveDisplaysContext = self->_moveDisplaysContext;
  v10 = [layoutCopy itemForLayoutRole:role];
  LOBYTE(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v10];

  v11 = 1.0;
  if ((moveDisplaysContext & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v11 = v12;
  }

  return v11;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  appLayouts = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = 0.5;
  v8 = 0.5;
  if (![(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v13.receiver = self;
    v13.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v13 anchorPointForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  appLayouts = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ([(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v13 perspectiveAngleForIndex:index];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  moveDisplaysContext = self->_moveDisplaysContext;
  v8 = [layoutCopy itemForLayoutRole:blurred];
  LOBYTE(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v8];

  if (moveDisplaysContext)
  {
    remainingAppLayoutNeedsLayout = 1;
  }

  else if ([(SBAppLayout *)self->_remainingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    remainingAppLayoutNeedsLayout = self->_remainingAppLayoutNeedsLayout;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    remainingAppLayoutNeedsLayout = [(SBMoveDisplaysTransitionSwitcherModifier *)&v11 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  }

  return remainingAppLayoutNeedsLayout;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  moveDisplaysContext = self->_moveDisplaysContext;
  v8 = [layoutCopy itemForLayoutRole:scene];
  LOBYTE(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v8];

  if (moveDisplaysContext)
  {
    remainingAppLayoutNeedsLayout = 1;
  }

  else if ([(SBAppLayout *)self->_remainingAppLayout isOrContainsAppLayout:layoutCopy])
  {
    remainingAppLayoutNeedsLayout = self->_remainingAppLayoutNeedsLayout;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    remainingAppLayoutNeedsLayout = [(SBMoveDisplaysTransitionSwitcherModifier *)&v11 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return remainingAppLayoutNeedsLayout;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  visibleAppLayouts = [(SBMoveDisplaysTransitionSwitcherModifier *)&v7 visibleAppLayouts];
  _appLayoutsContainingMovingDisplayItems = [(SBMoveDisplaysTransitionSwitcherModifier *)self _appLayoutsContainingMovingDisplayItems];
  v5 = [visibleAppLayouts setByAddingObjectsFromArray:_appLayoutsContainingMovingDisplayItems];

  return v5;
}

- (id)topMostLayoutElements
{
  _appLayoutsContainingMovingDisplayItems = [(SBMoveDisplaysTransitionSwitcherModifier *)self _appLayoutsContainingMovingDisplayItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBMoveDisplaysTransitionSwitcherModifier_topMostLayoutElements__block_invoke;
  v9[3] = &unk_2783A8CB8;
  v9[4] = self;
  v4 = [_appLayoutsContainingMovingDisplayItems bs_filter:v9];

  v8.receiver = self;
  v8.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  topMostLayoutElements = [(SBMoveDisplaysTransitionSwitcherModifier *)&v8 topMostLayoutElements];
  v6 = [v4 arrayByAddingObjectsFromArray:topMostLayoutElements];

  return v6;
}

- (id)_appLayoutsContainingMovingDisplayItems
{
  appLayouts = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__SBMoveDisplaysTransitionSwitcherModifier__appLayoutsContainingMovingDisplayItems__block_invoke;
  v8[3] = &unk_2783A8CB8;
  v8[4] = self;
  v4 = [appLayouts bs_filter:v8];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__SBMoveDisplaysTransitionSwitcherModifier__appLayoutsContainingMovingDisplayItems__block_invoke_2;
  v7[3] = &unk_2783B4C28;
  v7[4] = self;
  v5 = [v4 sortedArrayUsingComparator:v7];

  return v5;
}

BOOL __83__SBMoveDisplaysTransitionSwitcherModifier__appLayoutsContainingMovingDisplayItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v7 itemForLayoutRole:1];
  v9 = [v5 layoutAttributesForDisplayItem:v8 inAppLayout:v7];

  v10 = [(SBHomeScreenConfigurationServer *)v9 queue];
  v11 = *(a1 + 32);
  v12 = [v6 itemForLayoutRole:1];
  v13 = [v11 layoutAttributesForDisplayItem:v12 inAppLayout:v6];

  v14 = v10 < [(SBHomeScreenConfigurationServer *)v13 queue];
  return v14;
}

@end
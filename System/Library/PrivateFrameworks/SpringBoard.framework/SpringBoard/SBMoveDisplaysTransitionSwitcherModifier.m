@interface SBMoveDisplaysTransitionSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (CGPoint)anchorPointForIndex:(unint64_t)a3;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBMoveDisplaysTransitionSwitcherModifier)initWithTransitionEvent:(id)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)_appLayoutsContainingMovingDisplayItems;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBMoveDisplaysTransitionSwitcherModifier

- (SBMoveDisplaysTransitionSwitcherModifier)initWithTransitionEvent:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 transitionID];
  v29.receiver = self;
  v29.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v6 = [(SBTransitionSwitcherModifier *)&v29 initWithTransitionID:v5];

  if (v6)
  {
    v7 = [v4 moveDisplaysContext];
    v8 = [v4 fromAppLayout];
    v9 = [v4 toAppLayout];
    if ([v9 containsAnyItemFromAppLayout:v8] && (v10 = v9) != 0)
    {
      v24 = v10;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [(SBTransitionSwitcherModifierMoveDisplaysContext *)v7 movingDisplayItems];
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
              objc_enumerationMutation(v11);
            }

            v14 |= SBLayoutRoleIsValidForSplitView([(SBAppLayout *)v8 layoutRoleForItem:*(*(&v25 + 1) + 8 * i)]);
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
    v6->_moveDisplaysContext = v7;
    v19 = v7;

    fromAppLayout = v6->_fromAppLayout;
    v6->_fromAppLayout = v8;
    v21 = v8;

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
  v2 = [(SBTransitionSwitcherModifier *)&v8 transitionWillBegin];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  v5 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  v6 = SBAppendSwitcherModifierResponse(v5, v4);

  return v6;
}

- (id)transitionWillUpdate
{
  v6.receiver = self;
  v6.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillUpdate];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:3];
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)transitionDidEnd
{
  v6.receiver = self;
  v6.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionDidEnd];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v11 handleSceneReadyEvent:v4];
  moveDisplaysContext = self->_moveDisplaysContext;
  v7 = [v4 appLayout];

  LODWORD(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToAppLayout:v7];
  if (moveDisplaysContext)
  {
    v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:0];
    v9 = SBAppendSwitcherModifierResponse(v8, v5);

    v5 = v9;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
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
          v12 = [v11 leafAppLayouts];
          [v5 addObjectsFromArray:v12];
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

  v13 = [v5 array];

  return v13;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v7 = [v6 itemForLayoutRole:1];
    v8 = [(SBTransitionSwitcherModifier *)self transitionPhase];
    moveDisplaysContext = self->_moveDisplaysContext;
    if (v8 > 1)
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
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v26 frameForIndex:a3];
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

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  moveDisplaysContext = self->_moveDisplaysContext;
  v13 = [v11 itemForLayoutRole:a3];
  LODWORD(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v13];

  if (!moveDisplaysContext)
  {
    v22.receiver = self;
    v22.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v22 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
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

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 1.0;
  if (![(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v10.receiver = self;
    v10.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v10 scaleForIndex:a3];
    v7 = v8;
  }

  return v7;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v7 = 1.0;
  if (![(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v10.receiver = self;
    v10.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v10 scaleForLayoutRole:a3 inAppLayout:v6];
    v7 = v8;
  }

  return v7;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  moveDisplaysContext = self->_moveDisplaysContext;
  v10 = [v8 itemForLayoutRole:a3];
  LOBYTE(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v10];

  v11 = 1.0;
  if ((moveDisplaysContext & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v14 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v11 = v12;
  }

  return v11;
}

- (CGPoint)anchorPointForIndex:(unint64_t)a3
{
  v5 = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = 0.5;
  v8 = 0.5;
  if (![(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v13.receiver = self;
    v13.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v13 anchorPointForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)a3
{
  v5 = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ([(SBTransitionSwitcherModifierMoveDisplaysContext *)self->_moveDisplaysContext pertainsToAppLayout:v6])
  {
    v7 = *MEMORY[0x277CBF348];
    v8 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    [(SBMoveDisplaysTransitionSwitcherModifier *)&v13 perspectiveAngleForIndex:a3];
    v7 = v9;
    v8 = v10;
  }

  v11 = v7;
  v12 = v8;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  moveDisplaysContext = self->_moveDisplaysContext;
  v8 = [v6 itemForLayoutRole:a3];
  LOBYTE(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v8];

  if (moveDisplaysContext)
  {
    remainingAppLayoutNeedsLayout = 1;
  }

  else if ([(SBAppLayout *)self->_remainingAppLayout isOrContainsAppLayout:v6])
  {
    remainingAppLayoutNeedsLayout = self->_remainingAppLayoutNeedsLayout;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    remainingAppLayoutNeedsLayout = [(SBMoveDisplaysTransitionSwitcherModifier *)&v11 isLayoutRoleBlurred:a3 inAppLayout:v6];
  }

  return remainingAppLayoutNeedsLayout;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  moveDisplaysContext = self->_moveDisplaysContext;
  v8 = [v6 itemForLayoutRole:a3];
  LOBYTE(moveDisplaysContext) = [(SBTransitionSwitcherModifierMoveDisplaysContext *)moveDisplaysContext pertainsToDisplayItem:v8];

  if (moveDisplaysContext)
  {
    remainingAppLayoutNeedsLayout = 1;
  }

  else if ([(SBAppLayout *)self->_remainingAppLayout isOrContainsAppLayout:v6])
  {
    remainingAppLayoutNeedsLayout = self->_remainingAppLayoutNeedsLayout;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBMoveDisplaysTransitionSwitcherModifier;
    remainingAppLayoutNeedsLayout = [(SBMoveDisplaysTransitionSwitcherModifier *)&v11 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  }

  return remainingAppLayoutNeedsLayout;
}

- (id)visibleAppLayouts
{
  v7.receiver = self;
  v7.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v3 = [(SBMoveDisplaysTransitionSwitcherModifier *)&v7 visibleAppLayouts];
  v4 = [(SBMoveDisplaysTransitionSwitcherModifier *)self _appLayoutsContainingMovingDisplayItems];
  v5 = [v3 setByAddingObjectsFromArray:v4];

  return v5;
}

- (id)topMostLayoutElements
{
  v3 = [(SBMoveDisplaysTransitionSwitcherModifier *)self _appLayoutsContainingMovingDisplayItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__SBMoveDisplaysTransitionSwitcherModifier_topMostLayoutElements__block_invoke;
  v9[3] = &unk_2783A8CB8;
  v9[4] = self;
  v4 = [v3 bs_filter:v9];

  v8.receiver = self;
  v8.super_class = SBMoveDisplaysTransitionSwitcherModifier;
  v5 = [(SBMoveDisplaysTransitionSwitcherModifier *)&v8 topMostLayoutElements];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)_appLayoutsContainingMovingDisplayItems
{
  v3 = [(SBMoveDisplaysTransitionSwitcherModifier *)self appLayouts];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__SBMoveDisplaysTransitionSwitcherModifier__appLayoutsContainingMovingDisplayItems__block_invoke;
  v8[3] = &unk_2783A8CB8;
  v8[4] = self;
  v4 = [v3 bs_filter:v8];

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
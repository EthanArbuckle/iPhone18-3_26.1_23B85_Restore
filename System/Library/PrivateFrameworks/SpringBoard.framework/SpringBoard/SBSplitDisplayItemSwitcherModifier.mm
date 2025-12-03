@interface SBSplitDisplayItemSwitcherModifier
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBSplitDisplayItemSwitcherModifier)initWithDisplayItem:(id)item wrappingModifier:(id)modifier;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout;
- (id)topMostLayoutElements;
- (void)_performOverrideAndPromoteChildAppLayoutToParent:(id)parent withBlock:(id)block;
@end

@implementation SBSplitDisplayItemSwitcherModifier

- (SBSplitDisplayItemSwitcherModifier)initWithDisplayItem:(id)item wrappingModifier:(id)modifier
{
  itemCopy = item;
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBSplitDisplayItemSwitcherModifier;
  v9 = [(SBSwitcherModifier *)&v11 init];
  if (v9)
  {
    if (!itemCopy)
    {
      [SBSplitDisplayItemSwitcherModifier initWithDisplayItem:a2 wrappingModifier:v9];
    }

    v9->_displayItem = itemCopy;
    objc_storeStrong(&v9->_wrappingModifier, modifier);
    if (v9->_wrappingModifier)
    {
      [(SBChainableModifier *)v9 addChildModifier:?];
    }

    v9->_completesWhenGesturePossible = 0;
  }

  return v9;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  if (self->_hasInvalidatedAppLayoutsForInsertion || [(SBChainableModifier *)self state]== 1)
  {
    v5 = 0;
  }

  else
  {
    self->_hasInvalidatedAppLayoutsForInsertion = 1;
    v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v5 = SBAppendSwitcherModifierResponse(v6, 0);
  }

  v12.receiver = self;
  v12.super_class = SBSplitDisplayItemSwitcherModifier;
  v7 = [(SBChainableModifier *)&v12 handleEvent:eventCopy];
  v8 = SBAppendSwitcherModifierResponse(v7, v5);

  if (!self->_hasInvalidatedAppLayoutsForRemoval && [(SBChainableModifier *)self state]== 1)
  {
    self->_hasInvalidatedAppLayoutsForRemoval = 1;
    v9 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
    v10 = SBAppendSwitcherModifierResponse(v9, v8);

    v8 = v10;
  }

  return v8;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleGestureEvent:eventCopy];
  if (-[SBSplitDisplayItemSwitcherModifier completesWhenGesturePossible](self, "completesWhenGesturePossible") && ![eventCopy phase])
  {
    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemSwitcherModifier;
  v4 = [(SBSplitDisplayItemSwitcherModifier *)&v7 appLayoutsToEnsureExistForMainTransitionEvent:event];
  v5 = [(SBSplitDisplayItemSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:v4];

  return v5;
}

- (id)appLayoutContainingAppLayout:(id)layout
{
  overrideAndPromoteChildAppLayout = self->_overrideAndPromoteChildAppLayout;
  if (overrideAndPromoteChildAppLayout == layout)
  {
    v4 = overrideAndPromoteChildAppLayout;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBSplitDisplayItemSwitcherModifier;
    v4 = [(SBSplitDisplayItemSwitcherModifier *)&v6 appLayoutContainingAppLayout:?];
  }

  return v4;
}

- (id)topMostLayoutElements
{
  v25 = *MEMORY[0x277D85DE8];
  displayItemInSlideOver = [(SBSplitDisplayItemSwitcherModifier *)self displayItemInSlideOver];
  if (displayItemInSlideOver)
  {
    v23.receiver = self;
    v23.super_class = SBSplitDisplayItemSwitcherModifier;
    [(SBSplitDisplayItemSwitcherModifier *)&v23 topMostLayoutElements];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    topMostLayoutElements = v22 = 0u;
    v5 = [topMostLayoutElements countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(topMostLayoutElements);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        if ([v9 isAppLayout])
        {
          appLayout = [v9 appLayout];
          v11 = [appLayout containsItem:displayItemInSlideOver];

          if (v11)
          {
            break;
          }
        }

        if (v6 == ++v8)
        {
          v6 = [topMostLayoutElements countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      appLayout2 = [v9 appLayout];

      if (!appLayout2)
      {
        goto LABEL_19;
      }

      v14 = [topMostLayoutElements indexOfObjectPassingTest:&__block_literal_global_111];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      v16 = [appLayout2 leafAppLayoutForItem:displayItemInSlideOver];
      v12 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v16 toIndex:v15];

      topMostLayoutElements = appLayout2;
    }

    else
    {
LABEL_11:
      v12 = topMostLayoutElements;
    }

    topMostLayoutElements = v12;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = SBSplitDisplayItemSwitcherModifier;
    topMostLayoutElements = [(SBSplitDisplayItemSwitcherModifier *)&v18 topMostLayoutElements];
  }

LABEL_19:

  return topMostLayoutElements;
}

BOOL __59__SBSplitDisplayItemSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isAppLayout] & 1) != 0 || objc_msgSend(v2, "switcherLayoutElementType") == 10;

  return v3;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SBSplitDisplayItemSwitcherModifier;
  v4 = [(SBSplitDisplayItemSwitcherModifier *)&v15 adjustedAppLayoutsForAppLayouts:layouts];
  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 objectAtIndex:v5];
      if ([v6 containsItem:self->_displayItem])
      {
        allItems = [v6 allItems];
        v8 = [allItems count];

        if (v8 >= 2)
        {
          break;
        }
      }

      if (++v5 >= [v4 count])
      {
        goto LABEL_8;
      }
    }

    v9 = [v4 mutableCopy];
    v10 = [v6 leafAppLayoutForItem:self->_displayItem];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__SBSplitDisplayItemSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
    v14[3] = &unk_2783A8C90;
    v14[4] = self;
    v11 = [v6 appLayoutWithItemsPassingTest:v14];
    v16[0] = v10;
    v16[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    [v9 replaceObjectsInRange:v5 withObjectsFromArray:{1, v12}];

    v4 = v9;
  }

LABEL_8:

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  windowManagementContext = [(SBSplitDisplayItemSwitcherModifier *)self windowManagementContext];
  isChamoisOrFlexibleWindowing = [windowManagementContext isChamoisOrFlexibleWindowing];

  if (isChamoisOrFlexibleWindowing)
  {
    v34.receiver = self;
    v34.super_class = SBSplitDisplayItemSwitcherModifier;
    [(SBSplitDisplayItemSwitcherModifier *)&v34 frameForIndex:index];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    appLayouts = [(SBSplitDisplayItemSwitcherModifier *)self appLayouts];
    v16 = [appLayouts objectAtIndex:index];

    v17 = [(SBSplitDisplayItemSwitcherModifier *)self appLayoutContainingAppLayout:v16];
    if (([v16 containsItem:self->_displayItem] & 1) != 0 || !objc_msgSend(v17, "containsItem:", self->_displayItem))
    {
      v26.receiver = self;
      v26.super_class = SBSplitDisplayItemSwitcherModifier;
      [(SBSplitDisplayItemSwitcherModifier *)&v26 frameForIndex:index];
      v8 = v18;
      v10 = v19;
      v12 = v20;
      v14 = v21;
    }

    else
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x4010000000;
      v31 = &unk_21F9DA6A3;
      v32 = 0u;
      v33 = 0u;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __52__SBSplitDisplayItemSwitcherModifier_frameForIndex___block_invoke;
      v27[3] = &unk_2783AA618;
      v27[5] = &v28;
      v27[6] = index;
      v27[4] = self;
      [(SBSplitDisplayItemSwitcherModifier *)self _performOverrideAndPromoteChildAppLayoutToParent:v16 withBlock:v27];
      v8 = v29[4];
      v10 = v29[5];
      v12 = v29[6];
      v14 = v29[7];
      _Block_object_dispose(&v28, 8);
    }
  }

  v22 = v8;
  v23 = v10;
  v24 = v12;
  v25 = v14;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

id __52__SBSplitDisplayItemSwitcherModifier_frameForIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9.receiver = *(a1 + 32);
  v9.super_class = SBSplitDisplayItemSwitcherModifier;
  result = objc_msgSendSuper2(&v9, sel_frameForIndex_, v2);
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  windowManagementContext = [(SBSplitDisplayItemSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if (!isFlexibleWindowingEnabled)
  {
    v49.receiver = self;
    v49.super_class = SBSplitDisplayItemSwitcherModifier;
    v14 = [(SBSplitDisplayItemSwitcherModifier *)&v49 appLayoutContainingAppLayout:layoutCopy];
    if (([layoutCopy containsItem:self->_displayItem] & 1) == 0 && objc_msgSend(v14, "containsItem:", self->_displayItem))
    {
      v15 = [layoutCopy itemForLayoutRole:role];
      v48.receiver = self;
      v48.super_class = SBSplitDisplayItemSwitcherModifier;
      -[SBSplitDisplayItemSwitcherModifier frameForLayoutRole:inAppLayout:withBounds:](&v48, sel_frameForLayoutRole_inAppLayout_withBounds_, [v14 layoutRoleForItem:v15], v14, x, y, width, height);
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;
      if (![layoutCopy isSplitConfiguration])
      {
        v47.receiver = self;
        v47.super_class = SBSplitDisplayItemSwitcherModifier;
        [(SBSplitDisplayItemSwitcherModifier *)&v47 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:v27, v29, v31, v33];
        v19 = v42;
        v21 = v43;
        v23 = v44;
        v25 = v45;
        goto LABEL_3;
      }
    }

    v46.receiver = self;
    v46.super_class = SBSplitDisplayItemSwitcherModifier;
    [(SBSplitDisplayItemSwitcherModifier *)&v46 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v19 = v34;
    v21 = v35;
    v23 = v36;
    v25 = v37;
    goto LABEL_9;
  }

  v51.receiver = self;
  v51.super_class = SBSplitDisplayItemSwitcherModifier;
  v14 = [(SBSplitDisplayItemSwitcherModifier *)&v51 appLayoutContainingAppLayout:layoutCopy];
  v15 = [(SBSwitcherModifier *)self flexibleAutoLayoutSpaceForAppLayout:v14];
  v16 = [layoutCopy itemForLayoutRole:role];
  v17 = [v14 layoutRoleForItem:v16];
  [v15 boundingBox];
  SBRectWithSize();
  v50.receiver = self;
  v50.super_class = SBSplitDisplayItemSwitcherModifier;
  [(SBSplitDisplayItemSwitcherModifier *)&v50 frameForLayoutRole:v17 inAppLayout:v14 withBounds:?];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

LABEL_3:
LABEL_9:

  v38 = v19;
  v39 = v21;
  v40 = v23;
  v41 = v25;
  result.size.height = v41;
  result.size.width = v40;
  result.origin.y = v39;
  result.origin.x = v38;
  return result;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy containsItem:self->_displayItem])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(SBSplitDisplayItemSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];
    v8.receiver = self;
    v8.super_class = SBSplitDisplayItemSwitcherModifier;
    v5 = [(SBSplitDisplayItemSwitcherModifier *)&v8 isResizeGrabberVisibleForAppLayout:v6];
  }

  return v5;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v18.receiver = self;
  v18.super_class = SBSplitDisplayItemSwitcherModifier;
  v5 = [(SBSplitDisplayItemSwitcherModifier *)&v18 resizeGrabberLayoutAttributesForAppLayout:layoutCopy];
  leafAppLayout = [v5 leafAppLayout];
  if ([leafAppLayout containsItem:self->_displayItem])
  {
    v7 = [(SBSplitDisplayItemSwitcherModifier *)self appLayoutContainingAppLayout:layoutCopy];
    v8 = v7;
    if (v7 != layoutCopy)
    {
      v9 = [v7 layoutRoleForItem:self->_displayItem];
      if (v9 == 1)
      {
        v10 = [v8 itemForLayoutRole:2];

        if (v10)
        {
          v11 = [v8 leafAppLayoutForRole:2];
          [v5 setLeafAppLayout:v11];

          v12 = [(SBSplitDisplayItemSwitcherModifier *)self isRTLEnabled]== 0;
          v13 = 2;
          v14 = 8;
LABEL_8:
          if (v12)
          {
            v16 = v13;
          }

          else
          {
            v16 = v14;
          }

          [v5 setEdge:v16];
          goto LABEL_12;
        }
      }

      if (v9 == 2)
      {
        v15 = [v8 leafAppLayoutForRole:1];
        [v5 setLeafAppLayout:v15];

        v12 = [(SBSplitDisplayItemSwitcherModifier *)self isRTLEnabled]== 0;
        v13 = 8;
        v14 = 2;
        goto LABEL_8;
      }
    }

LABEL_12:
  }

  return v5;
}

- (id)preferredAppLayoutToReuseAccessoryForAppLayout:(id)layout fromAppLayouts:(id)layouts
{
  layoutCopy = layout;
  layoutsCopy = layouts;
  v8 = layoutsCopy;
  if ([layoutsCopy count] >= 2)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__SBSplitDisplayItemSwitcherModifier_preferredAppLayoutToReuseAccessoryForAppLayout_fromAppLayouts___block_invoke;
    v12[3] = &unk_2783A8CB8;
    v12[4] = self;
    v8 = [layoutsCopy bs_filter:v12];
  }

  v11.receiver = self;
  v11.super_class = SBSplitDisplayItemSwitcherModifier;
  v9 = [(SBSplitDisplayItemSwitcherModifier *)&v11 preferredAppLayoutToReuseAccessoryForAppLayout:layoutCopy fromAppLayouts:v8];

  return v9;
}

- (void)_performOverrideAndPromoteChildAppLayoutToParent:(id)parent withBlock:(id)block
{
  parentCopy = parent;
  v7 = self->_overrideAndPromoteChildAppLayout;
  overrideAndPromoteChildAppLayout = self->_overrideAndPromoteChildAppLayout;
  self->_overrideAndPromoteChildAppLayout = parentCopy;
  v11 = parentCopy;
  blockCopy = block;

  blockCopy[2](blockCopy);
  v10 = self->_overrideAndPromoteChildAppLayout;
  self->_overrideAndPromoteChildAppLayout = v7;
}

- (void)initWithDisplayItem:(uint64_t)a1 wrappingModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitDisplayItemSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"displayItem"}];
}

@end
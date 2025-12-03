@interface SBSplitDisplayItemPulseTransitionSwitcherModifier
- (CGRect)frameForShelf:(id)shelf;
- (SBSplitDisplayItemPulseTransitionSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout layoutRole:(int64_t)role chamoisWindowingUIEnabled:(BOOL)enabled;
- (double)backgroundOpacityForIndex:(unint64_t)index;
- (id)_previousHomeAffordanceAppLayout;
- (id)appLayoutsToResignActive;
- (id)containerLeafAppLayoutForShelf:(id)shelf;
- (id)handleTransitionEvent:(id)event;
- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf;
- (id)topMostLayoutElements;
- (id)visibleHomeAffordanceLayoutElements;
@end

@implementation SBSplitDisplayItemPulseTransitionSwitcherModifier

- (SBSplitDisplayItemPulseTransitionSwitcherModifier)initWithTransitionID:(id)d appLayout:(id)layout layoutRole:(int64_t)role chamoisWindowingUIEnabled:(BOOL)enabled
{
  dCopy = d;
  layoutCopy = layout;
  v19.receiver = self;
  v19.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
  v13 = [(SBSwitcherModifier *)&v19 init];
  if (v13)
  {
    if (!layoutCopy)
    {
      [SBSplitDisplayItemPulseTransitionSwitcherModifier initWithTransitionID:a2 appLayout:v13 layoutRole:? chamoisWindowingUIEnabled:?];
    }

    if (!role)
    {
      [SBSplitDisplayItemPulseTransitionSwitcherModifier initWithTransitionID:a2 appLayout:v13 layoutRole:? chamoisWindowingUIEnabled:?];
    }

    objc_storeStrong(&v13->_appLayout, layout);
    v13->_layoutRole = role;
    v13->_isChamoisWindowingUIEnabled = enabled;
    v14 = [layoutCopy leafAppLayoutForRole:role];
    v15 = [layoutCopy itemForLayoutRole:role];
    v16 = [[SBPulseTransitionSwitcherModifier alloc] initWithTransitionID:dCopy appLayout:v14];
    v17 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v15 wrappingModifier:v16];
    [(SBSplitDisplayItemSwitcherModifier *)v17 setCompletesWhenGesturePossible:1];
    [(SBChainableModifier *)v13 addChildModifier:v17];
  }

  return v13;
}

- (id)handleTransitionEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleTransitionEvent:eventCopy];
  self->_floatingConfiguration = [eventCopy toFloatingConfiguration];
  phase = [eventCopy phase];

  if (phase == 1)
  {
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:8 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
  visibleHomeAffordanceLayoutElements = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)&v7 visibleHomeAffordanceLayoutElements];
  _previousHomeAffordanceAppLayout = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)self _previousHomeAffordanceAppLayout];
  v5 = [visibleHomeAffordanceLayoutElements setByAddingObject:_previousHomeAffordanceAppLayout];

  return v5;
}

- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf
{
  shelfCopy = shelf;
  if ([shelfCopy layoutRole] == 3)
  {
    _previousHomeAffordanceAppLayout = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)self _previousHomeAffordanceAppLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
    _previousHomeAffordanceAppLayout = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)&v8 homeAffordanceLayoutElementToPortalIntoShelf:shelfCopy];
  }

  v6 = _previousHomeAffordanceAppLayout;

  return v6;
}

- (id)_previousHomeAffordanceAppLayout
{
  appLayout = self->_appLayout;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __85__SBSplitDisplayItemPulseTransitionSwitcherModifier__previousHomeAffordanceAppLayout__block_invoke;
  v6[3] = &unk_2783A8C90;
  v6[4] = self;
  v4 = [(SBAppLayout *)appLayout appLayoutWithItemsPassingTest:v6];
  if (!v4)
  {
    v4 = self->_appLayout;
  }

  return v4;
}

uint64_t __85__SBSplitDisplayItemPulseTransitionSwitcherModifier__previousHomeAffordanceAppLayout__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = a2;
  v6 = [v3 itemForLayoutRole:v4];
  LODWORD(v4) = [v6 isEqual:v5];

  return v4 ^ 1;
}

- (id)containerLeafAppLayoutForShelf:(id)shelf
{
  if ([shelf layoutRole] == 3)
  {
    v4 = 0;
  }

  else
  {
    appLayout = self->_appLayout;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__SBSplitDisplayItemPulseTransitionSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke;
    v7[3] = &unk_2783A8C90;
    v7[4] = self;
    v4 = [(SBAppLayout *)appLayout appLayoutWithItemsPassingTest:v7];
  }

  return v4;
}

uint64_t __84__SBSplitDisplayItemPulseTransitionSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = a2;
  v6 = [v3 itemForLayoutRole:v4];
  LODWORD(v4) = [(SBDisplayItem *)v6 isEqualToItem:v5];

  return v4 ^ 1;
}

- (CGRect)frameForShelf:(id)shelf
{
  v20.receiver = self;
  v20.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
  shelfCopy = shelf;
  [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)&v20 frameForShelf:shelfCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layoutRole = [shelfCopy layoutRole];

  if (layoutRole == 3)
  {
    [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:[(SBSplitDisplayItemPulseTransitionSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:self->_floatingConfiguration];
    v6 = v6 + v14;
    v8 = v8 + v15;
  }

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)topMostLayoutElements
{
  v14.receiver = self;
  v14.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
  topMostLayoutElements = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)&v14 topMostLayoutElements];
  appLayout = self->_appLayout;
  if (self->_layoutRole == 4)
  {
    v5 = [(SBAppLayout *)appLayout leafAppLayoutForRole:?];
    v6 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v5 toIndex:0];

    topMostLayoutElements = v6;
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__SBSplitDisplayItemPulseTransitionSwitcherModifier_topMostLayoutElements__block_invoke;
    v13[3] = &unk_2783A8C90;
    v13[4] = self;
    v7 = [(SBAppLayout *)appLayout appLayoutWithItemsPassingTest:v13];
    if (v7)
    {
      v8 = [topMostLayoutElements indexOfObjectPassingTest:&__block_literal_global_299];
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 + 1;
      }

      v10 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v7 toIndex:v9];

      v11 = [(SBAppLayout *)self->_appLayout leafAppLayoutForRole:self->_layoutRole];
      topMostLayoutElements = [v10 sb_arrayByInsertingOrMovingObject:v11 toIndex:v9];
    }
  }

  return topMostLayoutElements;
}

uint64_t __74__SBSplitDisplayItemPulseTransitionSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  v5 = a2;
  v6 = [v3 itemForLayoutRole:v4];
  LODWORD(v4) = [(SBDisplayItem *)v6 isEqualToItem:v5];

  return v4 ^ 1;
}

- (double)backgroundOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  v7 = 0.0;
  if (![(SBAppLayout *)self->_appLayout isOrContainsAppLayout:v6])
  {
    v10.receiver = self;
    v10.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
    [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)&v10 backgroundOpacityForIndex:index];
    v7 = v8;
  }

  return v7;
}

- (id)appLayoutsToResignActive
{
  if (self->_isChamoisWindowingUIEnabled)
  {
    appLayoutsToResignActive = MEMORY[0x277CBEC10];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SBSplitDisplayItemPulseTransitionSwitcherModifier;
    appLayoutsToResignActive = [(SBSplitDisplayItemPulseTransitionSwitcherModifier *)&v6 appLayoutsToResignActive];
  }

  return appLayoutsToResignActive;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 layoutRole:chamoisWindowingUIEnabled:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitDisplayItemPulseTransitionSwitcherModifier.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 layoutRole:chamoisWindowingUIEnabled:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitDisplayItemPulseTransitionSwitcherModifier.m" lineNumber:26 description:@"layoutRole must not be undefined"];
}

@end
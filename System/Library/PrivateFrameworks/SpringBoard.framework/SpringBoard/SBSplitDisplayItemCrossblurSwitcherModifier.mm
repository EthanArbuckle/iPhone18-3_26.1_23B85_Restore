@interface SBSplitDisplayItemCrossblurSwitcherModifier
- (CGRect)frameForShelf:(id)shelf;
- (SBSplitDisplayItemCrossblurSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout layoutRole:(int64_t)role;
- (id)_previousHomeAffordanceAppLayout;
- (id)appLayoutContainingAppLayout:(id)layout;
- (id)containerLeafAppLayoutForShelf:(id)shelf;
- (id)handleEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf;
- (id)topMostLayoutElements;
- (id)visibleHomeAffordanceLayoutElements;
@end

@implementation SBSplitDisplayItemCrossblurSwitcherModifier

- (SBSplitDisplayItemCrossblurSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout layoutRole:(int64_t)role
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v24.receiver = self;
  v24.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v14 = [(SBSwitcherModifier *)&v24 init];
  if (v14)
  {
    if (!layoutCopy)
    {
      [SBSplitDisplayItemCrossblurSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? layoutRole:?];
    }

    if (!appLayoutCopy)
    {
      [SBSplitDisplayItemCrossblurSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? layoutRole:?];
    }

    objc_storeStrong(&v14->_fromAppLayout, layout);
    objc_storeStrong(&v14->_toAppLayout, appLayout);
    v14->_layoutRole = role;
    v15 = [(SBAppLayout *)v14->_fromAppLayout itemForLayoutRole:role];
    v16 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v15];
    [(SBChainableModifier *)v14 addChildModifier:v16];
    v17 = [(SBAppLayout *)v14->_fromAppLayout leafAppLayoutForRole:v14->_layoutRole];
    v18 = [(SBAppLayout *)v14->_toAppLayout leafAppLayoutForRole:v14->_layoutRole];
    v19 = [[SBCrossblurDosidoSwitcherModifier alloc] initWithTransitionID:dCopy fromAppLayout:v17 toAppLayout:v18 direction:0];
    v20 = [(SBAppLayout *)v14->_toAppLayout itemForLayoutRole:v14->_layoutRole];
    v21 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v20 wrappingModifier:v19];
    toSplitDisplayItemModifier = v14->_toSplitDisplayItemModifier;
    v14->_toSplitDisplayItemModifier = v21;

    [(SBChainableModifier *)v14 addChildModifier:v14->_toSplitDisplayItemModifier];
  }

  return v14;
}

- (id)handleEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v4 = [(SBChainableModifier *)&v6 handleEvent:event];
  [(SBChainableModifier *)self setState:[(SBChainableModifier *)self->_toSplitDisplayItemModifier state]];

  return v4;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  self->_floatingConfiguration = [eventCopy toFloatingConfiguration];
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleTransitionEvent:eventCopy];

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  visibleHomeAffordanceLayoutElements = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v7 visibleHomeAffordanceLayoutElements];
  _previousHomeAffordanceAppLayout = [(SBSplitDisplayItemCrossblurSwitcherModifier *)self _previousHomeAffordanceAppLayout];
  v5 = [visibleHomeAffordanceLayoutElements setByAddingObject:_previousHomeAffordanceAppLayout];

  return v5;
}

- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)shelf
{
  shelfCopy = shelf;
  if ([shelfCopy layoutRole] == 3)
  {
    _previousHomeAffordanceAppLayout = [(SBSplitDisplayItemCrossblurSwitcherModifier *)self _previousHomeAffordanceAppLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
    _previousHomeAffordanceAppLayout = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v8 homeAffordanceLayoutElementToPortalIntoShelf:shelfCopy];
  }

  v6 = _previousHomeAffordanceAppLayout;

  return v6;
}

- (id)_previousHomeAffordanceAppLayout
{
  fromAppLayout = self->_fromAppLayout;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SBSplitDisplayItemCrossblurSwitcherModifier__previousHomeAffordanceAppLayout__block_invoke;
  v6[3] = &unk_2783A8C90;
  v6[4] = self;
  v4 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v6];
  if (!v4)
  {
    v4 = self->_fromAppLayout;
  }

  return v4;
}

uint64_t __79__SBSplitDisplayItemCrossblurSwitcherModifier__previousHomeAffordanceAppLayout__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 160);
  v5 = a2;
  v6 = [v3 itemForLayoutRole:v4];
  LODWORD(v4) = [(SBDisplayItem *)v6 isEqualToItem:v5];

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
    fromAppLayout = self->_fromAppLayout;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __78__SBSplitDisplayItemCrossblurSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke;
    v7[3] = &unk_2783A8C90;
    v7[4] = self;
    v4 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v7];
  }

  return v4;
}

uint64_t __78__SBSplitDisplayItemCrossblurSwitcherModifier_containerLeafAppLayoutForShelf___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 160);
  v5 = a2;
  v6 = [v3 itemForLayoutRole:v4];
  LODWORD(v4) = [(SBDisplayItem *)v6 isEqualToItem:v5];

  return v4 ^ 1;
}

- (CGRect)frameForShelf:(id)shelf
{
  v20.receiver = self;
  v20.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  shelfCopy = shelf;
  [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v20 frameForShelf:shelfCopy];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  layoutRole = [shelfCopy layoutRole];

  if (layoutRole == 3)
  {
    [(SBSplitDisplayItemCrossblurSwitcherModifier *)self floatingApplicationFrameInInterfaceOrientation:[(SBSplitDisplayItemCrossblurSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:self->_floatingConfiguration];
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

- (id)appLayoutContainingAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = 152;
  if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:layoutCopy]|| (v5 = 144, [(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:layoutCopy]))
  {
    v6 = *(&self->super.super.super.super.isa + v5);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
    v6 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v9 appLayoutContainingAppLayout:layoutCopy];
  }

  v7 = v6;

  return v7;
}

- (id)topMostLayoutElements
{
  v10.receiver = self;
  v10.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  topMostLayoutElements = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v10 topMostLayoutElements];
  fromAppLayout = self->_fromAppLayout;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__SBSplitDisplayItemCrossblurSwitcherModifier_topMostLayoutElements__block_invoke;
  v9[3] = &unk_2783A8C90;
  v9[4] = self;
  v5 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v9];
  if (v5)
  {
    v6 = [(SBAppLayout *)self->_toAppLayout leafAppLayoutForRole:self->_layoutRole];
    v7 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:v6 toIndex:0];

    topMostLayoutElements = [v7 sb_arrayByInsertingOrMovingObject:v5 toIndex:0];
  }

  return topMostLayoutElements;
}

uint64_t __68__SBSplitDisplayItemCrossblurSwitcherModifier_topMostLayoutElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 144);
  v4 = *(v2 + 160);
  v5 = a2;
  v6 = [v3 itemForLayoutRole:v4];
  LODWORD(v4) = [(SBDisplayItem *)v6 isEqualToItem:v5];

  return v4 ^ 1;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:layoutRole:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitDisplayItemCrossblurSwitcherModifier.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:layoutRole:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitDisplayItemCrossblurSwitcherModifier.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end
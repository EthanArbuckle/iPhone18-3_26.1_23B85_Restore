@interface SBSplitDisplayItemCrossblurSwitcherModifier
- (CGRect)frameForShelf:(id)a3;
- (SBSplitDisplayItemCrossblurSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 layoutRole:(int64_t)a6;
- (id)_previousHomeAffordanceAppLayout;
- (id)appLayoutContainingAppLayout:(id)a3;
- (id)containerLeafAppLayoutForShelf:(id)a3;
- (id)handleEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)a3;
- (id)topMostLayoutElements;
- (id)visibleHomeAffordanceLayoutElements;
@end

@implementation SBSplitDisplayItemCrossblurSwitcherModifier

- (SBSplitDisplayItemCrossblurSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 layoutRole:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v14 = [(SBSwitcherModifier *)&v24 init];
  if (v14)
  {
    if (!v12)
    {
      [SBSplitDisplayItemCrossblurSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? layoutRole:?];
    }

    if (!v13)
    {
      [SBSplitDisplayItemCrossblurSwitcherModifier initWithTransitionID:a2 fromAppLayout:v14 toAppLayout:? layoutRole:?];
    }

    objc_storeStrong(&v14->_fromAppLayout, a4);
    objc_storeStrong(&v14->_toAppLayout, a5);
    v14->_layoutRole = a6;
    v15 = [(SBAppLayout *)v14->_fromAppLayout itemForLayoutRole:a6];
    v16 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v15];
    [(SBChainableModifier *)v14 addChildModifier:v16];
    v17 = [(SBAppLayout *)v14->_fromAppLayout leafAppLayoutForRole:v14->_layoutRole];
    v18 = [(SBAppLayout *)v14->_toAppLayout leafAppLayoutForRole:v14->_layoutRole];
    v19 = [[SBCrossblurDosidoSwitcherModifier alloc] initWithTransitionID:v11 fromAppLayout:v17 toAppLayout:v18 direction:0];
    v20 = [(SBAppLayout *)v14->_toAppLayout itemForLayoutRole:v14->_layoutRole];
    v21 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v20 wrappingModifier:v19];
    toSplitDisplayItemModifier = v14->_toSplitDisplayItemModifier;
    v14->_toSplitDisplayItemModifier = v21;

    [(SBChainableModifier *)v14 addChildModifier:v14->_toSplitDisplayItemModifier];
  }

  return v14;
}

- (id)handleEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v4 = [(SBChainableModifier *)&v6 handleEvent:a3];
  [(SBChainableModifier *)self setState:[(SBChainableModifier *)self->_toSplitDisplayItemModifier state]];

  return v4;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  self->_floatingConfiguration = [v4 toFloatingConfiguration];
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleTransitionEvent:v4];

  return v5;
}

- (id)visibleHomeAffordanceLayoutElements
{
  v7.receiver = self;
  v7.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v3 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v7 visibleHomeAffordanceLayoutElements];
  v4 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)self _previousHomeAffordanceAppLayout];
  v5 = [v3 setByAddingObject:v4];

  return v5;
}

- (id)homeAffordanceLayoutElementToPortalIntoShelf:(id)a3
{
  v4 = a3;
  if ([v4 layoutRole] == 3)
  {
    v5 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)self _previousHomeAffordanceAppLayout];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
    v5 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v8 homeAffordanceLayoutElementToPortalIntoShelf:v4];
  }

  v6 = v5;

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

- (id)containerLeafAppLayoutForShelf:(id)a3
{
  if ([a3 layoutRole] == 3)
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

- (CGRect)frameForShelf:(id)a3
{
  v20.receiver = self;
  v20.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v4 = a3;
  [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v20 frameForShelf:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 layoutRole];

  if (v13 == 3)
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

- (id)appLayoutContainingAppLayout:(id)a3
{
  v4 = a3;
  v5 = 152;
  if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v4]|| (v5 = 144, [(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:v4]))
  {
    v6 = *(&self->super.super.super.super.isa + v5);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
    v6 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v9 appLayoutContainingAppLayout:v4];
  }

  v7 = v6;

  return v7;
}

- (id)topMostLayoutElements
{
  v10.receiver = self;
  v10.super_class = SBSplitDisplayItemCrossblurSwitcherModifier;
  v3 = [(SBSplitDisplayItemCrossblurSwitcherModifier *)&v10 topMostLayoutElements];
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
    v7 = [v3 sb_arrayByInsertingOrMovingObject:v6 toIndex:0];

    v3 = [v7 sb_arrayByInsertingOrMovingObject:v5 toIndex:0];
  }

  return v3;
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
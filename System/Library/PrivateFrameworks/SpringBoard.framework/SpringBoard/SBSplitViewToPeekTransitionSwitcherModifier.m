@interface SBSplitViewToPeekTransitionSwitcherModifier
- (SBSplitViewToPeekTransitionSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBSplitViewToPeekTransitionSwitcherModifier

- (SBSplitViewToPeekTransitionSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBSplitViewToPeekTransitionSwitcherModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fromAppLayout, a4);
  }

  return v9;
}

- (void)didMoveToParentModifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBSplitViewToPeekTransitionSwitcherModifier;
  [(SBChainableModifier *)&v8 didMoveToParentModifier:?];
  if (a3)
  {
    v5 = [(SBSplitViewToPeekTransitionSwitcherModifier *)self zOrderedItemsInAppLayout:self->_fromAppLayout];
    v6 = [v5 firstObject];

    v7 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:v6];
    [(SBChainableModifier *)self addChildModifier:v7];
  }
}

@end
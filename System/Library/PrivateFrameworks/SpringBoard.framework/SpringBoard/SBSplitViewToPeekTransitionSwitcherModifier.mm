@interface SBSplitViewToPeekTransitionSwitcherModifier
- (SBSplitViewToPeekTransitionSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBSplitViewToPeekTransitionSwitcherModifier

- (SBSplitViewToPeekTransitionSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBSplitViewToPeekTransitionSwitcherModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fromAppLayout, layout);
  }

  return v9;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v8.receiver = self;
  v8.super_class = SBSplitViewToPeekTransitionSwitcherModifier;
  [(SBChainableModifier *)&v8 didMoveToParentModifier:?];
  if (modifier)
  {
    v5 = [(SBSplitViewToPeekTransitionSwitcherModifier *)self zOrderedItemsInAppLayout:self->_fromAppLayout];
    firstObject = [v5 firstObject];

    v7 = [[SBSplitDisplayItemSwitcherModifier alloc] initWithDisplayItem:firstObject];
    [(SBChainableModifier *)self addChildModifier:v7];
  }
}

@end
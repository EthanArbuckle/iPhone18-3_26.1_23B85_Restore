@interface SBScrollingSwitcherModifier
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleRemovalEvent:(id)event;
- (id)handleScrollEvent:(id)event;
@end

@implementation SBScrollingSwitcherModifier

- (id)handleScrollEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy phase] == 1)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v7.receiver = self;
  v7.super_class = SBScrollingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleScrollEvent:eventCopy];

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v6.receiver = self;
  v6.super_class = SBScrollingSwitcherModifier;
  v3 = [(SBScrollingSwitcherModifier *)&v6 animationAttributesForLayoutElement:element];
  if (([v3 updateMode] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = [v3 mutableCopy];
    [v4 setUpdateMode:2];

    v3 = v4;
  }

  return v3;
}

- (id)handleRemovalEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBScrollingSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleRemovalEvent:event];
  [(SBChainableModifier *)self setState:1];

  return v4;
}

@end
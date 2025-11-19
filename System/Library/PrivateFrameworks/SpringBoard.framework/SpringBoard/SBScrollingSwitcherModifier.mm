@interface SBScrollingSwitcherModifier
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleRemovalEvent:(id)a3;
- (id)handleScrollEvent:(id)a3;
@end

@implementation SBScrollingSwitcherModifier

- (id)handleScrollEvent:(id)a3
{
  v4 = a3;
  if ([v4 phase] == 1)
  {
    [(SBChainableModifier *)self setState:1];
  }

  v7.receiver = self;
  v7.super_class = SBScrollingSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v7 handleScrollEvent:v4];

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBScrollingSwitcherModifier;
  v3 = [(SBScrollingSwitcherModifier *)&v6 animationAttributesForLayoutElement:a3];
  if (([v3 updateMode] - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = [v3 mutableCopy];
    [v4 setUpdateMode:2];

    v3 = v4;
  }

  return v3;
}

- (id)handleRemovalEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBScrollingSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleRemovalEvent:a3];
  [(SBChainableModifier *)self setState:1];

  return v4;
}

@end
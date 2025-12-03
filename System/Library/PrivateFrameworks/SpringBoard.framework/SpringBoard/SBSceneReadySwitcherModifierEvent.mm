@interface SBSceneReadySwitcherModifierEvent
- (SBSceneReadySwitcherModifierEvent)initWithAppLayout:(id)layout;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBSceneReadySwitcherModifierEvent

- (SBSceneReadySwitcherModifierEvent)initWithAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBSceneReadySwitcherModifierEvent;
  v6 = [(SBWindowingModifierActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, layout);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSceneReadySwitcherModifierEvent alloc];
  appLayout = self->_appLayout;

  return [(SBSceneReadySwitcherModifierEvent *)v4 initWithAppLayout:appLayout];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBSceneReadySwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_appLayout withName:@"appLayout"];

  return v4;
}

@end
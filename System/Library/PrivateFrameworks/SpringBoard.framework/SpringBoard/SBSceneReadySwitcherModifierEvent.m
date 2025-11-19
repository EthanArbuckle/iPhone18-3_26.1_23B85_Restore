@interface SBSceneReadySwitcherModifierEvent
- (SBSceneReadySwitcherModifierEvent)initWithAppLayout:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBSceneReadySwitcherModifierEvent

- (SBSceneReadySwitcherModifierEvent)initWithAppLayout:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBSceneReadySwitcherModifierEvent;
  v6 = [(SBWindowingModifierActivity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appLayout, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBSceneReadySwitcherModifierEvent alloc];
  appLayout = self->_appLayout;

  return [(SBSceneReadySwitcherModifierEvent *)v4 initWithAppLayout:appLayout];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBSceneReadySwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_appLayout withName:@"appLayout"];

  return v4;
}

@end
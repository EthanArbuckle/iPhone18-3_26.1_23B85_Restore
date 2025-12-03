@interface SBInsertionSwitcherModifierEvent
- (SBInsertionSwitcherModifierEvent)initWithAppLayout:(id)layout intoIndex:(unint64_t)index phase:(unint64_t)phase;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBInsertionSwitcherModifierEvent

- (SBInsertionSwitcherModifierEvent)initWithAppLayout:(id)layout intoIndex:(unint64_t)index phase:(unint64_t)phase
{
  layoutCopy = layout;
  v13.receiver = self;
  v13.super_class = SBInsertionSwitcherModifierEvent;
  v10 = [(SBWindowingModifierActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, layout);
    v11->_index = index;
    v11->_phase = phase;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBInsertionSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[5] = self->_index;
  v4[6] = self->_phase;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBInsertionSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendInteger:self->_index withName:@"intoIndex"];
  v6 = self->_phase - 1;
  if (v6 > 3)
  {
    v7 = @"Possible";
  }

  else
  {
    v7 = off_2783B7780[v6];
  }

  [v4 appendString:v7 withName:@"phase"];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v9 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  return v4;
}

@end
@interface SBInsertionSwitcherModifierEvent
- (SBInsertionSwitcherModifierEvent)initWithAppLayout:(id)a3 intoIndex:(unint64_t)a4 phase:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBInsertionSwitcherModifierEvent

- (SBInsertionSwitcherModifierEvent)initWithAppLayout:(id)a3 intoIndex:(unint64_t)a4 phase:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = SBInsertionSwitcherModifierEvent;
  v10 = [(SBWindowingModifierActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_appLayout, a3);
    v11->_index = a4;
    v11->_phase = a5;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBInsertionSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[5] = self->_index;
  v4[6] = self->_phase;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBInsertionSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:a3];
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
  v8 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v9 = [v4 appendObject:v8 withName:@"appLayout"];

  return v4;
}

@end
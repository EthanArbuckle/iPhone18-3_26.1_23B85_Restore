@interface SBRemovalSwitcherModifierEvent
- (SBRemovalSwitcherModifierEvent)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 reason:(int64_t)a5 phase:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBRemovalSwitcherModifierEvent

- (SBRemovalSwitcherModifierEvent)initWithLayoutRole:(int64_t)a3 inAppLayout:(id)a4 reason:(int64_t)a5 phase:(unint64_t)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = SBRemovalSwitcherModifierEvent;
  v12 = [(SBWindowingModifierActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_layoutRole = a3;
    objc_storeStrong(&v12->_appLayout, a4);
    v13->_reason = a5;
    v13->_phase = a6;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBRemovalSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v4[4] = self->_layoutRole;
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[5];
  v4[5] = v5;

  v4[6] = self->_reason;
  v4[7] = self->_phase;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBRemovalSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v13 descriptionBuilderWithMultilinePrefix:a3];
  v5 = v4;
  v6 = self->_phase - 1;
  if (v6 > 2)
  {
    v7 = @"Possible";
  }

  else
  {
    v7 = off_2783AD158[v6];
  }

  [v4 appendString:v7 withName:@"phase"];
  v8 = SBLayoutRoleDescription(self->_layoutRole);
  [v5 appendString:v8 withName:@"role"];

  v9 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v10 = [v5 appendObject:v9 withName:@"appLayout"];

  v11 = SBStringFromSwitcherMutationReason(self->_reason);
  [v5 appendString:v11 withName:@"reason"];

  return v5;
}

@end
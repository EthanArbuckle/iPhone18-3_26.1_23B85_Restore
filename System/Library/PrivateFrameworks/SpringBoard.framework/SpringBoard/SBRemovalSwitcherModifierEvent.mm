@interface SBRemovalSwitcherModifierEvent
- (SBRemovalSwitcherModifierEvent)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout reason:(int64_t)reason phase:(unint64_t)phase;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBRemovalSwitcherModifierEvent

- (SBRemovalSwitcherModifierEvent)initWithLayoutRole:(int64_t)role inAppLayout:(id)layout reason:(int64_t)reason phase:(unint64_t)phase
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = SBRemovalSwitcherModifierEvent;
  v12 = [(SBWindowingModifierActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_layoutRole = role;
    objc_storeStrong(&v12->_appLayout, layout);
    v13->_reason = reason;
    v13->_phase = phase;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBRemovalSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
  v4[4] = self->_layoutRole;
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[5];
  v4[5] = v5;

  v4[6] = self->_reason;
  v4[7] = self->_phase;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v13.receiver = self;
  v13.super_class = SBRemovalSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v13 descriptionBuilderWithMultilinePrefix:prefix];
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

  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v10 = [v5 appendObject:succinctDescription withName:@"appLayout"];

  v11 = SBStringFromSwitcherMutationReason(self->_reason);
  [v5 appendString:v11 withName:@"reason"];

  return v5;
}

@end
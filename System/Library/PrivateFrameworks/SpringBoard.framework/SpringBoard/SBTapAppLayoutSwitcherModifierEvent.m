@interface SBTapAppLayoutSwitcherModifierEvent
- (SBTapAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)a3 layoutRole:(int64_t)a4 modifierFlags:(int64_t)a5 source:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBTapAppLayoutSwitcherModifierEvent

- (SBTapAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)a3 layoutRole:(int64_t)a4 modifierFlags:(int64_t)a5 source:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = SBTapAppLayoutSwitcherModifierEvent;
  v12 = [(SBWindowingModifierActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appLayout, a3);
    v13->_layoutRole = a4;
    v13->_modifierFlags = a5;
    v13->_source = a6;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBTapAppLayoutSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[5] = self->_layoutRole;
  v4[6] = self->_modifierFlags;
  v4[7] = self->_source;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBTapAppLayoutSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"appLayout"];

  v7 = SBLayoutRoleDescription(self->_layoutRole);
  [v4 appendString:v7 withName:@"layoutRole"];

  v8 = [v4 appendInteger:self->_modifierFlags withName:@"modifierFlags"];
  v9 = [v4 appendInteger:self->_source withName:@"source"];

  return v4;
}

@end
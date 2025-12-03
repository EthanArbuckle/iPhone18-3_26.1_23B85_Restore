@interface SBTapAppLayoutSwitcherModifierEvent
- (SBTapAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)layout layoutRole:(int64_t)role modifierFlags:(int64_t)flags source:(int64_t)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBTapAppLayoutSwitcherModifierEvent

- (SBTapAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)layout layoutRole:(int64_t)role modifierFlags:(int64_t)flags source:(int64_t)source
{
  layoutCopy = layout;
  v15.receiver = self;
  v15.super_class = SBTapAppLayoutSwitcherModifierEvent;
  v12 = [(SBWindowingModifierActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appLayout, layout);
    v13->_layoutRole = role;
    v13->_modifierFlags = flags;
    v13->_source = source;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBTapAppLayoutSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
  v5 = [(SBAppLayout *)self->_appLayout copy];
  v6 = v4[4];
  v4[4] = v5;

  v4[5] = self->_layoutRole;
  v4[6] = self->_modifierFlags;
  v4[7] = self->_source;
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v11.receiver = self;
  v11.super_class = SBTapAppLayoutSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v11 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  v7 = SBLayoutRoleDescription(self->_layoutRole);
  [v4 appendString:v7 withName:@"layoutRole"];

  v8 = [v4 appendInteger:self->_modifierFlags withName:@"modifierFlags"];
  v9 = [v4 appendInteger:self->_source withName:@"source"];

  return v4;
}

@end
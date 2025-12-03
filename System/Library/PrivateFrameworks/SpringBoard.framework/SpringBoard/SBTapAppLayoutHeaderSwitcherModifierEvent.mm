@interface SBTapAppLayoutHeaderSwitcherModifierEvent
- (SBTapAppLayoutHeaderSwitcherModifierEvent)initWithAppLayout:(id)layout layoutRole:(int64_t)role;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBTapAppLayoutHeaderSwitcherModifierEvent

- (SBTapAppLayoutHeaderSwitcherModifierEvent)initWithAppLayout:(id)layout layoutRole:(int64_t)role
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBTapAppLayoutHeaderSwitcherModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, layout);
    v9->_layoutRole = role;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBTapAppLayoutHeaderSwitcherModifierEvent alloc];
  appLayout = self->_appLayout;
  layoutRole = self->_layoutRole;

  return [(SBTapAppLayoutHeaderSwitcherModifierEvent *)v4 initWithAppLayout:appLayout layoutRole:layoutRole];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v9.receiver = self;
  v9.super_class = SBTapAppLayoutHeaderSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v9 descriptionBuilderWithMultilinePrefix:prefix];
  succinctDescription = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:succinctDescription withName:@"appLayout"];

  v7 = SBLayoutRoleDescription(self->_layoutRole);
  [v4 appendString:v7 withName:@"layoutRole"];

  return v4;
}

@end
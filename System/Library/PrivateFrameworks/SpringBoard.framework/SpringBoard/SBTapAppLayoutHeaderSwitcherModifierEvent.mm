@interface SBTapAppLayoutHeaderSwitcherModifierEvent
- (SBTapAppLayoutHeaderSwitcherModifierEvent)initWithAppLayout:(id)a3 layoutRole:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBTapAppLayoutHeaderSwitcherModifierEvent

- (SBTapAppLayoutHeaderSwitcherModifierEvent)initWithAppLayout:(id)a3 layoutRole:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBTapAppLayoutHeaderSwitcherModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, a3);
    v9->_layoutRole = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBTapAppLayoutHeaderSwitcherModifierEvent alloc];
  appLayout = self->_appLayout;
  layoutRole = self->_layoutRole;

  return [(SBTapAppLayoutHeaderSwitcherModifierEvent *)v4 initWithAppLayout:appLayout layoutRole:layoutRole];
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBTapAppLayoutHeaderSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v9 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [(SBAppLayout *)self->_appLayout succinctDescription];
  v6 = [v4 appendObject:v5 withName:@"appLayout"];

  v7 = SBLayoutRoleDescription(self->_layoutRole);
  [v4 appendString:v7 withName:@"layoutRole"];

  return v4;
}

@end
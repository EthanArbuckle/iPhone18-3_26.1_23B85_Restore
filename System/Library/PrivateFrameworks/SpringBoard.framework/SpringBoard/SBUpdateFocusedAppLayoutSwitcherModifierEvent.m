@interface SBUpdateFocusedAppLayoutSwitcherModifierEvent
- (SBUpdateFocusedAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)a3 focused:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBUpdateFocusedAppLayoutSwitcherModifierEvent

- (SBUpdateFocusedAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)a3 focused:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = SBUpdateFocusedAppLayoutSwitcherModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, a3);
    v9->_focused = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SBUpdateFocusedAppLayoutSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:a3];
  v5 = [(SBUpdateFocusedAppLayoutSwitcherModifierEvent *)self appLayout];
  v6 = v4[5];
  v4[5] = v5;

  *(v4 + 32) = [(SBUpdateFocusedAppLayoutSwitcherModifierEvent *)self isFocused];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBUpdateFocusedAppLayoutSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendObject:self->_appLayout withName:@"appLayout"];
  v6 = [v4 appendBool:self->_focused withName:@"focused"];

  return v4;
}

@end
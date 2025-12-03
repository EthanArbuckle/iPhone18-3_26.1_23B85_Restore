@interface SBUpdateFocusedAppLayoutSwitcherModifierEvent
- (SBUpdateFocusedAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)layout focused:(BOOL)focused;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBUpdateFocusedAppLayoutSwitcherModifierEvent

- (SBUpdateFocusedAppLayoutSwitcherModifierEvent)initWithAppLayout:(id)layout focused:(BOOL)focused
{
  layoutCopy = layout;
  v11.receiver = self;
  v11.super_class = SBUpdateFocusedAppLayoutSwitcherModifierEvent;
  v8 = [(SBWindowingModifierActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appLayout, layout);
    v9->_focused = focused;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = SBUpdateFocusedAppLayoutSwitcherModifierEvent;
  v4 = [(SBChainableModifierEvent *)&v8 copyWithZone:zone];
  appLayout = [(SBUpdateFocusedAppLayoutSwitcherModifierEvent *)self appLayout];
  v6 = v4[5];
  v4[5] = appLayout;

  *(v4 + 32) = [(SBUpdateFocusedAppLayoutSwitcherModifierEvent *)self isFocused];
  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v8.receiver = self;
  v8.super_class = SBUpdateFocusedAppLayoutSwitcherModifierEvent;
  v4 = [(SBSwitcherModifierEvent *)&v8 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendObject:self->_appLayout withName:@"appLayout"];
  v6 = [v4 appendBool:self->_focused withName:@"focused"];

  return v4;
}

@end
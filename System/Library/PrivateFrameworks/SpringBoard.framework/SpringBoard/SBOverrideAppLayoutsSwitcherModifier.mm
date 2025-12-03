@interface SBOverrideAppLayoutsSwitcherModifier
- (SBOverrideAppLayoutsSwitcherModifier)initWithAppLayouts:(id)layouts;
- (void)didMoveToParentModifier:(id)modifier;
- (void)setState:(int64_t)state;
@end

@implementation SBOverrideAppLayoutsSwitcherModifier

- (SBOverrideAppLayoutsSwitcherModifier)initWithAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v9.receiver = self;
  v9.super_class = SBOverrideAppLayoutsSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v9 init];
  if (v5)
  {
    v6 = [layoutsCopy copy];
    appLayouts = v5->_appLayouts;
    v5->_appLayouts = v6;

    v5->_appLayoutsGenerationCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBOverrideAppLayoutsSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    self->_appLayoutsGenerationCount = [(SBOverrideAppLayoutsSwitcherModifier *)self newAppLayoutsGenCount];
  }
}

- (void)setState:(int64_t)state
{
  state = [(SBChainableModifier *)self state];
  if (state == 1 && state != 1)
  {
    [(SBOverrideAppLayoutsSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBOverrideAppLayoutsSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:state];
}

@end
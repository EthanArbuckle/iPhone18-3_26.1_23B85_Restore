@interface SBOverrideAppLayoutsSwitcherModifier
- (SBOverrideAppLayoutsSwitcherModifier)initWithAppLayouts:(id)a3;
- (void)didMoveToParentModifier:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation SBOverrideAppLayoutsSwitcherModifier

- (SBOverrideAppLayoutsSwitcherModifier)initWithAppLayouts:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBOverrideAppLayoutsSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    appLayouts = v5->_appLayouts;
    v5->_appLayouts = v6;

    v5->_appLayoutsGenerationCount = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBOverrideAppLayoutsSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    self->_appLayoutsGenerationCount = [(SBOverrideAppLayoutsSwitcherModifier *)self newAppLayoutsGenCount];
  }
}

- (void)setState:(int64_t)a3
{
  v5 = [(SBChainableModifier *)self state];
  if (a3 == 1 && v5 != 1)
  {
    [(SBOverrideAppLayoutsSwitcherModifier *)self newAppLayoutsGenCount];
  }

  v6.receiver = self;
  v6.super_class = SBOverrideAppLayoutsSwitcherModifier;
  [(SBChainableModifier *)&v6 setState:a3];
}

@end
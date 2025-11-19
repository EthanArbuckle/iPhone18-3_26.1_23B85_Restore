@interface SBFullScreenAppLayoutSwitcherModifier
- (CGRect)fullScreenFrameForAppLayout:(id)a3;
- (SBFullScreenAppLayoutSwitcherModifier)initWithActiveAppLayout:(id)a3 homeAffordanceReuseIdentifier:(id)a4;
- (id)handleAssistantPresentationChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (void)_addAssistantModifierIfNeededForInterfaceOrientation:(int64_t)a3;
- (void)didMoveToParentModifier:(id)a3;
@end

@implementation SBFullScreenAppLayoutSwitcherModifier

- (SBFullScreenAppLayoutSwitcherModifier)initWithActiveAppLayout:(id)a3 homeAffordanceReuseIdentifier:(id)a4
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = SBFullScreenAppLayoutSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v18 init];
  if (v10)
  {
    if (!v8)
    {
      [SBFullScreenAppLayoutSwitcherModifier initWithActiveAppLayout:a2 homeAffordanceReuseIdentifier:v10];
    }

    v11 = v9;
    if (!v9)
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v10->_homeAffordanceReuseIdentifier, v11);
    if (!v9)
    {
    }

    v10->_handlesAssistantPresentationEvents = 1;
    objc_storeStrong(&v10->_appLayout, a3);
    v12 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:v8];
    coplanarModifier = v10->_coplanarModifier;
    v10->_coplanarModifier = v12;

    [(SBChainableModifier *)v10 addChildModifier:v10->_coplanarModifier atLevel:0 key:0];
    v14 = [[_SBFullScreenAppFloorSwitcherModifier alloc] initWithActiveAppLayout:v8 homeAffordanceReuseIdentifier:v10->_homeAffordanceReuseIdentifier];
    floorModifier = v10->_floorModifier;
    v10->_floorModifier = v14;

    [(SBChainableModifier *)v10 addChildModifier:v10->_floorModifier atLevel:2 key:0];
    v16 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v10 addChildModifier:v16 atLevel:3 key:0];
  }

  return v10;
}

- (CGRect)fullScreenFrameForAppLayout:(id)a3
{
  [(_SBFullScreenAppFloorSwitcherModifier *)self->_floorModifier frameForAppLayout:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)didMoveToParentModifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBFullScreenAppLayoutSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (a3)
  {
    [(SBFullScreenAppLayoutSwitcherModifier *)self _addAssistantModifierIfNeededForInterfaceOrientation:[(SBFullScreenAppLayoutSwitcherModifier *)self switcherInterfaceOrientation]];
  }
}

- (id)handleAssistantPresentationChangedEvent:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBFullScreenAppLayoutSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleAssistantPresentationChangedEvent:a3];
  [(SBFullScreenAppLayoutSwitcherModifier *)self _addAssistantModifierIfNeededForInterfaceOrientation:[(SBFullScreenAppLayoutSwitcherModifier *)self switcherInterfaceOrientation]];

  return v4;
}

- (id)handleTransitionEvent:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBFullScreenAppLayoutSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:v4];
  v6 = [v4 fromInterfaceOrientation];
  v7 = [v4 toInterfaceOrientation];

  if (v7 != v6 && (v7 - 1) <= 1)
  {
    [(SBFullScreenAppLayoutSwitcherModifier *)self _addAssistantModifierIfNeededForInterfaceOrientation:v7];
  }

  return v5;
}

- (void)_addAssistantModifierIfNeededForInterfaceOrientation:(int64_t)a3
{
  if ([(SBFullScreenAppLayoutSwitcherModifier *)self handlesAssistantPresentationEvents])
  {
    if (([(SBFullScreenAppLayoutSwitcherModifier *)self isDevicePad]& 1) == 0)
    {
      v5 = [(SBSwitcherModifier *)self assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop];
      v6 = [(SBChainableModifier *)self childModifierByKey:@"SBFullScreenAppLayoutSwitcherModifierAssistantModifierKey"];

      if ((a3 - 1) <= 1 && v5 && !v6)
      {
        v7 = [(SBFullScreenAppLayoutSwitcherModifier *)self switcherSettings];
        [v7 effectiveSwitcherStyle];

        [(SBFullScreenAppLayoutSwitcherModifier *)self isReduceMotionEnabled];
        v9 = objc_alloc_init(objc_opt_class());
        v8 = [[SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier alloc] initWithAppLayout:self->_appLayout interfaceOrientation:a3 multitaskingModifier:v9];
        [(SBChainableModifier *)self addChildModifier:v8 atLevel:1 key:@"SBFullScreenAppLayoutSwitcherModifierAssistantModifierKey"];
      }
    }
  }
}

- (void)initWithActiveAppLayout:(uint64_t)a1 homeAffordanceReuseIdentifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenAppLayoutSwitcherModifier.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end
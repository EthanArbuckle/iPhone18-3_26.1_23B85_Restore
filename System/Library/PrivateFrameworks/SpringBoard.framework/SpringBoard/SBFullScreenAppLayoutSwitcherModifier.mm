@interface SBFullScreenAppLayoutSwitcherModifier
- (CGRect)fullScreenFrameForAppLayout:(id)layout;
- (SBFullScreenAppLayoutSwitcherModifier)initWithActiveAppLayout:(id)layout homeAffordanceReuseIdentifier:(id)identifier;
- (id)handleAssistantPresentationChangedEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (void)_addAssistantModifierIfNeededForInterfaceOrientation:(int64_t)orientation;
- (void)didMoveToParentModifier:(id)modifier;
@end

@implementation SBFullScreenAppLayoutSwitcherModifier

- (SBFullScreenAppLayoutSwitcherModifier)initWithActiveAppLayout:(id)layout homeAffordanceReuseIdentifier:(id)identifier
{
  layoutCopy = layout;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = SBFullScreenAppLayoutSwitcherModifier;
  v10 = [(SBSwitcherModifier *)&v18 init];
  if (v10)
  {
    if (!layoutCopy)
    {
      [SBFullScreenAppLayoutSwitcherModifier initWithActiveAppLayout:a2 homeAffordanceReuseIdentifier:v10];
    }

    uUID = identifierCopy;
    if (!identifierCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    objc_storeStrong(&v10->_homeAffordanceReuseIdentifier, uUID);
    if (!identifierCopy)
    {
    }

    v10->_handlesAssistantPresentationEvents = 1;
    objc_storeStrong(&v10->_appLayout, layout);
    v12 = [[SBCoplanarSwitcherModifier alloc] initWithActiveAppLayout:layoutCopy];
    coplanarModifier = v10->_coplanarModifier;
    v10->_coplanarModifier = v12;

    [(SBChainableModifier *)v10 addChildModifier:v10->_coplanarModifier atLevel:0 key:0];
    v14 = [[_SBFullScreenAppFloorSwitcherModifier alloc] initWithActiveAppLayout:layoutCopy homeAffordanceReuseIdentifier:v10->_homeAffordanceReuseIdentifier];
    floorModifier = v10->_floorModifier;
    v10->_floorModifier = v14;

    [(SBChainableModifier *)v10 addChildModifier:v10->_floorModifier atLevel:2 key:0];
    v16 = objc_alloc_init(SBDefaultImplementationsSwitcherModifier);
    [(SBChainableModifier *)v10 addChildModifier:v16 atLevel:3 key:0];
  }

  return v10;
}

- (CGRect)fullScreenFrameForAppLayout:(id)layout
{
  [(_SBFullScreenAppFloorSwitcherModifier *)self->_floorModifier frameForAppLayout:layout];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)didMoveToParentModifier:(id)modifier
{
  v5.receiver = self;
  v5.super_class = SBFullScreenAppLayoutSwitcherModifier;
  [(SBChainableModifier *)&v5 didMoveToParentModifier:?];
  if (modifier)
  {
    [(SBFullScreenAppLayoutSwitcherModifier *)self _addAssistantModifierIfNeededForInterfaceOrientation:[(SBFullScreenAppLayoutSwitcherModifier *)self switcherInterfaceOrientation]];
  }
}

- (id)handleAssistantPresentationChangedEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = SBFullScreenAppLayoutSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v6 handleAssistantPresentationChangedEvent:event];
  [(SBFullScreenAppLayoutSwitcherModifier *)self _addAssistantModifierIfNeededForInterfaceOrientation:[(SBFullScreenAppLayoutSwitcherModifier *)self switcherInterfaceOrientation]];

  return v4;
}

- (id)handleTransitionEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBFullScreenAppLayoutSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v9 handleTransitionEvent:eventCopy];
  fromInterfaceOrientation = [eventCopy fromInterfaceOrientation];
  toInterfaceOrientation = [eventCopy toInterfaceOrientation];

  if (toInterfaceOrientation != fromInterfaceOrientation && (toInterfaceOrientation - 1) <= 1)
  {
    [(SBFullScreenAppLayoutSwitcherModifier *)self _addAssistantModifierIfNeededForInterfaceOrientation:toInterfaceOrientation];
  }

  return v5;
}

- (void)_addAssistantModifierIfNeededForInterfaceOrientation:(int64_t)orientation
{
  if ([(SBFullScreenAppLayoutSwitcherModifier *)self handlesAssistantPresentationEvents])
  {
    if (([(SBFullScreenAppLayoutSwitcherModifier *)self isDevicePad]& 1) == 0)
    {
      assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop = [(SBSwitcherModifier *)self assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop];
      v6 = [(SBChainableModifier *)self childModifierByKey:@"SBFullScreenAppLayoutSwitcherModifierAssistantModifierKey"];

      if ((orientation - 1) <= 1 && assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop && !v6)
      {
        switcherSettings = [(SBFullScreenAppLayoutSwitcherModifier *)self switcherSettings];
        [switcherSettings effectiveSwitcherStyle];

        [(SBFullScreenAppLayoutSwitcherModifier *)self isReduceMotionEnabled];
        v9 = objc_alloc_init(objc_opt_class());
        v8 = [[SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier alloc] initWithAppLayout:self->_appLayout interfaceOrientation:orientation multitaskingModifier:v9];
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
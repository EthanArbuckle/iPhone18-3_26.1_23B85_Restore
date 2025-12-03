@interface SBMixedGridHomeGestureRootSwitcherModifier
- (SBMixedGridHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode selectedAppLayout:(id)layout mixedGridModifier:(id)modifier;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)handleEvent:(id)event;
- (id)handleGestureEvent:(id)event;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBMixedGridHomeGestureRootSwitcherModifier

- (SBMixedGridHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode selectedAppLayout:(id)layout mixedGridModifier:(id)modifier
{
  layoutCopy = layout;
  modifierCopy = modifier;
  v14.receiver = self;
  v14.super_class = SBMixedGridHomeGestureRootSwitcherModifier;
  v12 = [(SBGestureRootSwitcherModifier *)&v14 initWithStartingEnvironmentMode:mode];
  if (v12)
  {
    if (!modifierCopy)
    {
      [SBMixedGridHomeGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 selectedAppLayout:v12 mixedGridModifier:?];
    }

    objc_storeStrong(&v12->_selectedAppLayout, layout);
    objc_storeStrong(&v12->_mixedGridModifier, modifier);
  }

  return v12;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  if (modifier)
  {
    self->_continuingGesture = 1;
    modifierCopy = modifier;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    self->_lastGestureWasAnArcSwipe = isKindOfClass & 1;
  }

  return 0;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  transitionID = [eventCopy transitionID];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  fromFloatingAppLayout = [eventCopy fromFloatingAppLayout];
  fromFloatingConfiguration = [eventCopy fromFloatingConfiguration];

  v11 = self->_selectedAppLayout;
  currentEnvironmentMode = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
  if (([(SBMixedGridHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled]& 1) != 0)
  {
    v13 = *MEMORY[0x277CBF348];
    v14 = *(MEMORY[0x277CBF348] + 8);
    v15 = v14;
    v16 = *MEMORY[0x277CBF348];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [SBMixedGridHomeGestureRootSwitcherModifier transitionChildModifierForMainTransitionEvent:a2 activeGestureModifier:self];
    }

    [(SBGestureSwitcherModifier *)self->_gestureModifier isShowingOrAnimatingCardsForFlyIn];
    [(SBGestureSwitcherModifier *)self->_gestureModifier liftOffVelocityForGestureEnd];
    v16 = v17;
    v15 = v18;
    [(SBGestureSwitcherModifier *)self->_gestureModifier liftOffTranslationForGestureEnd];
    v13 = v19;
    v14 = v20;
  }

  if (toEnvironmentMode == 2)
  {
    _newMultitaskingModifier = [(SBMixedGridHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v22 = [[SBHomeGestureToMixedGridSwitcherSwitcherModifier alloc] initWithTransitionID:transitionID mixedGridModifier:_newMultitaskingModifier selectedAppLayout:v11 startingEnvironmentMode:currentEnvironmentMode liftOfVelocity:fromFloatingAppLayout liftOffTranslation:fromFloatingConfiguration floatingAppLayout:v16 floatingConfiguration:v15, v13, v14];
    [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)v22 setHidEventSenderID:[(SBGestureSwitcherModifierEvent *)self->_lastGestureEvent hidEventSenderID]];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)handleEvent:(id)event
{
  eventCopy = event;
  v16.receiver = self;
  v16.super_class = SBMixedGridHomeGestureRootSwitcherModifier;
  v5 = [(SBGestureRootSwitcherModifier *)&v16 handleEvent:eventCopy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  gestureModifier = self->_gestureModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__SBMixedGridHomeGestureRootSwitcherModifier_handleEvent___block_invoke;
  v9[3] = &unk_2783AEA70;
  v9[4] = self;
  v7 = eventCopy;
  v10 = v7;
  v11 = &v12;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gestureModifier usingBlock:v9];
  [(SBChainableModifier *)self->_gestureModifier setState:v13[3]];
  if (![(SBChainableModifier *)self childModifierCount]&& [(SBChainableModifier *)self->_gestureModifier state]== 1)
  {
    [(SBChainableModifier *)self setState:1];
  }

  _Block_object_dispose(&v12, 8);

  return v5;
}

uint64_t __58__SBMixedGridHomeGestureRootSwitcherModifier_handleEvent___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 176) handleEvent:a1[5]];
  result = [*(a1[4] + 176) state];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  objc_storeStrong(&self->_lastGestureEvent, event);
  v22.receiver = self;
  v22.super_class = SBMixedGridHomeGestureRootSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v22 handleGestureEvent:eventCopy];
  if ([eventCopy phase] == 1)
  {
    gestureType = [eventCopy gestureType];
    if (gestureType == [(SBMixedGridHomeGestureRootSwitcherModifier *)self gestureType])
    {
      v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
      v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v8];

      v10 = self->_selectedAppLayout;
      currentEnvironmentMode = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
      type = [eventCopy type];
      gestureID = [eventCopy gestureID];
      if ([(SBMixedGridHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled])
      {
        v14 = [[SBReduceMotionHomeGestureSwitcherModifier alloc] initWithGestureID:gestureID selectedAppLayout:v10 startingEnvironmentMode:currentEnvironmentMode scrunchInitiated:type == 3 continuingGesture:self->_continuingGesture lastGestureWasAnArcSwipe:self->_lastGestureWasAnArcSwipe];
        windowManagementContext = [(SBMixedGridHomeGestureRootSwitcherModifier *)self windowManagementContext];
        -[SBReduceMotionHomeGestureSwitcherModifier setShouldProvideBlur:](v14, "setShouldProvideBlur:", [windowManagementContext isChamoisOrFlexibleWindowing] ^ 1);

        windowManagementContext2 = [(SBMixedGridHomeGestureRootSwitcherModifier *)self windowManagementContext];
        -[SBReduceMotionHomeGestureSwitcherModifier setLaysOutNeighboringCards:](v14, "setLaysOutNeighboringCards:", [windowManagementContext2 isChamoisOrFlexibleWindowing] ^ 1);
      }

      else
      {
        v17 = type == 3;
        windowManagementContext2 = [(SBMixedGridHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
        v18 = [SBHomeGestureSwitcherModifier alloc];
        LOBYTE(v21) = self->_lastGestureWasAnArcSwipe;
        v14 = [(SBHomeGestureSwitcherModifier *)v18 initWithGestureID:gestureID selectedAppLayout:v10 startingEnvironmentMode:currentEnvironmentMode multitaskingModifier:windowManagementContext2 scrunchInitiated:v17 continuingGesture:self->_continuingGesture lastGestureWasAnArcSwipe:v21];
      }

      [(SBChainableModifier *)v14 setDelegate:self];
      gestureModifier = self->_gestureModifier;
      self->_gestureModifier = &v14->super;

      v6 = v9;
    }
  }

  return v6;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 selectedAppLayout:(uint64_t)a2 mixedGridModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridHomeGestureRootSwitcherModifier.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"mixedGridModifier"}];
}

- (void)transitionChildModifierForMainTransitionEvent:(uint64_t)a1 activeGestureModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBMixedGridHomeGestureRootSwitcherModifier.m" lineNumber:88 description:{@"If reduce motion is disabled, the gesture modifier should be an instance of SBHomeGestureSwitcherModifier"}];
}

@end
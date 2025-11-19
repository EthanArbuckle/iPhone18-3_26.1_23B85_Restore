@interface SBMixedGridHomeGestureRootSwitcherModifier
- (SBMixedGridHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 selectedAppLayout:(id)a4 mixedGridModifier:(id)a5;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)handleEvent:(id)a3;
- (id)handleGestureEvent:(id)a3;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBMixedGridHomeGestureRootSwitcherModifier

- (SBMixedGridHomeGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 selectedAppLayout:(id)a4 mixedGridModifier:(id)a5
{
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = SBMixedGridHomeGestureRootSwitcherModifier;
  v12 = [(SBGestureRootSwitcherModifier *)&v14 initWithStartingEnvironmentMode:a3];
  if (v12)
  {
    if (!v11)
    {
      [SBMixedGridHomeGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 selectedAppLayout:v12 mixedGridModifier:?];
    }

    objc_storeStrong(&v12->_selectedAppLayout, a4);
    objc_storeStrong(&v12->_mixedGridModifier, a5);
  }

  return v12;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  if (a4)
  {
    self->_continuingGesture = 1;
    v5 = a4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    self->_lastGestureWasAnArcSwipe = isKindOfClass & 1;
  }

  return 0;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v6 = a3;
  v7 = [v6 transitionID];
  v8 = [v6 toEnvironmentMode];
  v9 = [v6 fromFloatingAppLayout];
  v10 = [v6 fromFloatingConfiguration];

  v11 = self->_selectedAppLayout;
  v12 = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
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

  if (v8 == 2)
  {
    v21 = [(SBMixedGridHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v22 = [[SBHomeGestureToMixedGridSwitcherSwitcherModifier alloc] initWithTransitionID:v7 mixedGridModifier:v21 selectedAppLayout:v11 startingEnvironmentMode:v12 liftOfVelocity:v9 liftOffTranslation:v10 floatingAppLayout:v16 floatingConfiguration:v15, v13, v14];
    [(SBHomeGestureToMixedGridSwitcherSwitcherModifier *)v22 setHidEventSenderID:[(SBGestureSwitcherModifierEvent *)self->_lastGestureEvent hidEventSenderID]];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)handleEvent:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SBMixedGridHomeGestureRootSwitcherModifier;
  v5 = [(SBGestureRootSwitcherModifier *)&v16 handleEvent:v4];
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
  v7 = v4;
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

- (id)handleGestureEvent:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_lastGestureEvent, a3);
  v22.receiver = self;
  v22.super_class = SBMixedGridHomeGestureRootSwitcherModifier;
  v6 = [(SBGestureRootSwitcherModifier *)&v22 handleGestureEvent:v5];
  if ([v5 phase] == 1)
  {
    v7 = [v5 gestureType];
    if (v7 == [(SBMixedGridHomeGestureRootSwitcherModifier *)self gestureType])
    {
      v8 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
      v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v8];

      v10 = self->_selectedAppLayout;
      v11 = [(SBGestureRootSwitcherModifier *)self currentEnvironmentMode];
      v12 = [v5 type];
      v13 = [v5 gestureID];
      if ([(SBMixedGridHomeGestureRootSwitcherModifier *)self isReduceMotionEnabled])
      {
        v14 = [[SBReduceMotionHomeGestureSwitcherModifier alloc] initWithGestureID:v13 selectedAppLayout:v10 startingEnvironmentMode:v11 scrunchInitiated:v12 == 3 continuingGesture:self->_continuingGesture lastGestureWasAnArcSwipe:self->_lastGestureWasAnArcSwipe];
        v15 = [(SBMixedGridHomeGestureRootSwitcherModifier *)self windowManagementContext];
        -[SBReduceMotionHomeGestureSwitcherModifier setShouldProvideBlur:](v14, "setShouldProvideBlur:", [v15 isChamoisOrFlexibleWindowing] ^ 1);

        v16 = [(SBMixedGridHomeGestureRootSwitcherModifier *)self windowManagementContext];
        -[SBReduceMotionHomeGestureSwitcherModifier setLaysOutNeighboringCards:](v14, "setLaysOutNeighboringCards:", [v16 isChamoisOrFlexibleWindowing] ^ 1);
      }

      else
      {
        v17 = v12 == 3;
        v16 = [(SBMixedGridHomeGestureRootSwitcherModifier *)self _newMultitaskingModifier];
        v18 = [SBHomeGestureSwitcherModifier alloc];
        LOBYTE(v21) = self->_lastGestureWasAnArcSwipe;
        v14 = [(SBHomeGestureSwitcherModifier *)v18 initWithGestureID:v13 selectedAppLayout:v10 startingEnvironmentMode:v11 multitaskingModifier:v16 scrunchInitiated:v17 continuingGesture:self->_continuingGesture lastGestureWasAnArcSwipe:v21];
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
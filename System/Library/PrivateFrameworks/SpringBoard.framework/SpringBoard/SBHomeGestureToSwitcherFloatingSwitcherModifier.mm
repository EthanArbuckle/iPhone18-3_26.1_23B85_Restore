@interface SBHomeGestureToSwitcherFloatingSwitcherModifier
- (SBHomeGestureToSwitcherFloatingSwitcherModifier)initWithTransitionID:(id)a3 multitaskingModifier:(id)a4 selectedAppLayout:(id)a5;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBHomeGestureToSwitcherFloatingSwitcherModifier

- (SBHomeGestureToSwitcherFloatingSwitcherModifier)initWithTransitionID:(id)a3 multitaskingModifier:(id)a4 selectedAppLayout:(id)a5
{
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SBHomeGestureToSwitcherFloatingSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_multitaskingModifier, a4);
    objc_storeStrong(&v12->_selectedAppLayout, a5);
    v13 = +[SBAppSwitcherDomain rootSettings];
    v14 = [v13 animationSettings];
    animationSettings = v12->_animationSettings;
    v12->_animationSettings = v14;
  }

  return v12;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBHomeGestureToSwitcherFloatingSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [SBScrollToAppLayoutSwitcherEventResponse alloc];
  v6 = [(SBHomeGestureToSwitcherFloatingSwitcherModifier *)self selectedAppLayout];
  v7 = [(SBScrollToAppLayoutSwitcherEventResponse *)v5 initWithAppLayout:v6 alignment:0 animated:0];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v7];

  v8 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v8];

  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v9;
}

- (id)visibleAppLayouts
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__142;
    v12 = __Block_byref_object_dispose__142;
    v13 = 0;
    multitaskingModifier = self->_multitaskingModifier;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __68__SBHomeGestureToSwitcherFloatingSwitcherModifier_visibleAppLayouts__block_invoke;
    v7[3] = &unk_2783A8CE0;
    v7[4] = self;
    v7[5] = &v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v7];
    v4 = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHomeGestureToSwitcherFloatingSwitcherModifier;
    v4 = [(SBHomeGestureToSwitcherFloatingSwitcherModifier *)&v6 visibleAppLayouts];
  }

  return v4;
}

void __68__SBHomeGestureToSwitcherFloatingSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureToSwitcherFloatingSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBHomeGestureToSwitcherFloatingSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v3 = SBReduceMotion();
  animationSettings = self->_animationSettings;
  if (v3)
  {
    [(SBFluidSwitcherAnimationSettings *)animationSettings reduceMotionAppToSwitcherSettings];
  }

  else
  {
    [(SBFluidSwitcherAnimationSettings *)animationSettings gestureInitiatedAppToSwitcherSettings];
  }
  v5 = ;

  return v5;
}

@end
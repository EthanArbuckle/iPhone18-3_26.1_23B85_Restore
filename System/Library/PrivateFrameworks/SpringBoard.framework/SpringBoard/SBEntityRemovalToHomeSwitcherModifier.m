@interface SBEntityRemovalToHomeSwitcherModifier
- (SBEntityRemovalToHomeSwitcherModifier)initWithTransitionID:(id)a3 homeAnimationDelay:(double)a4 multitaskingModifier:(id)a5;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)wallpaperScale;
- (id)_cornerRadiusSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBEntityRemovalToHomeSwitcherModifier

- (SBEntityRemovalToHomeSwitcherModifier)initWithTransitionID:(id)a3 homeAnimationDelay:(double)a4 multitaskingModifier:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SBEntityRemovalToHomeSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v13 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_multitaskingModifier, a5);
    v11->_homeAnimationDelay = a4;
    v11->_canAnimateHomeScreenStyle = a4 <= 0.0;
  }

  return v11;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBEntityRemovalToHomeSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:2];
  v4 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v2];

  return v4;
}

- (id)transitionWillUpdate
{
  v15.receiver = self;
  v15.super_class = SBEntityRemovalToHomeSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v15 transitionWillUpdate];
  if (!self->_canAnimateHomeScreenStyle)
  {
    objc_initWeak(&location, self);
    v4 = [SBTimerEventSwitcherEventResponse alloc];
    homeAnimationDelay = self->_homeAnimationDelay;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __61__SBEntityRemovalToHomeSwitcherModifier_transitionWillUpdate__block_invoke;
    v12 = &unk_2783AD4A0;
    objc_copyWeak(&v13, &location);
    v6 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:&v9 validator:@"kSBEntityRemovalToHomeSwitcherModifierHomeScreenLayoutReason" reason:homeAnimationDelay];
    v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v3, v9, v10, v11, v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    v3 = v7;
  }

  return v3;
}

BOOL __61__SBEntityRemovalToHomeSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalToHomeSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"kSBEntityRemovalToHomeSwitcherModifierHomeScreenLayoutReason"];
  if (v4)
  {
    self->_canAnimateHomeScreenStyle = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v7 toResponse:v5];

    v5 = v8;
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBEntityRemovalToHomeSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:v4];
  v6 = [v4 switcherLayoutElementType];

  if (!v6)
  {
    v7 = [v5 mutableCopy];
    v8 = [(SBEntityRemovalToHomeSwitcherModifier *)self _cornerRadiusSettings];
    [v7 setCornerRadiusSettings:v8];

    v5 = v7;
  }

  return v5;
}

- (id)_cornerRadiusSettings
{
  v2 = objc_alloc_init(MEMORY[0x277D65E60]);
  [v2 setResponse:0.0];

  return v2;
}

- (double)homeScreenScale
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]|| !self->_canAnimateHomeScreenStyle)
  {
    multitaskingModifier = self->_multitaskingModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__SBEntityRemovalToHomeSwitcherModifier_homeScreenScale__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v8];
    v4 = v10[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBEntityRemovalToHomeSwitcherModifier;
    [(SBEntityRemovalToHomeSwitcherModifier *)&v7 homeScreenScale];
    v4 = v3;
    v10[3] = v3;
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __56__SBEntityRemovalToHomeSwitcherModifier_homeScreenScale__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) homeScreenScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)wallpaperScale
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]|| !self->_canAnimateHomeScreenStyle)
  {
    multitaskingModifier = self->_multitaskingModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__SBEntityRemovalToHomeSwitcherModifier_wallpaperScale__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v8];
    v4 = v10[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBEntityRemovalToHomeSwitcherModifier;
    [(SBEntityRemovalToHomeSwitcherModifier *)&v7 wallpaperScale];
    v4 = v3;
    v10[3] = v3;
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __55__SBEntityRemovalToHomeSwitcherModifier_wallpaperScale__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) wallpaperScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  if ([(SBEntityRemovalToHomeSwitcherModifier *)self hasHomeButton])
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

- (double)homeScreenBackdropBlurProgress
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]|| !self->_canAnimateHomeScreenStyle)
  {
    multitaskingModifier = self->_multitaskingModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __71__SBEntityRemovalToHomeSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v8];
    v4 = v10[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBEntityRemovalToHomeSwitcherModifier;
    [(SBEntityRemovalToHomeSwitcherModifier *)&v7 homeScreenBackdropBlurProgress];
    v4 = v3;
    v10[3] = v3;
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __71__SBEntityRemovalToHomeSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) homeScreenBackdropBlurProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)homeScreenAlpha
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]|| !self->_canAnimateHomeScreenStyle)
  {
    multitaskingModifier = self->_multitaskingModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__SBEntityRemovalToHomeSwitcherModifier_homeScreenAlpha__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v8];
    v4 = v10[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBEntityRemovalToHomeSwitcherModifier;
    [(SBEntityRemovalToHomeSwitcherModifier *)&v7 homeScreenAlpha];
    v4 = v3;
    v10[3] = v3;
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __56__SBEntityRemovalToHomeSwitcherModifier_homeScreenAlpha__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) homeScreenAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)homeScreenDimmingAlpha
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout]|| !self->_canAnimateHomeScreenStyle)
  {
    multitaskingModifier = self->_multitaskingModifier;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __63__SBEntityRemovalToHomeSwitcherModifier_homeScreenDimmingAlpha__block_invoke;
    v8[3] = &unk_2783A8CE0;
    v8[4] = self;
    v8[5] = &v9;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v8];
    v4 = v10[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBEntityRemovalToHomeSwitcherModifier;
    [(SBEntityRemovalToHomeSwitcherModifier *)&v7 homeScreenDimmingAlpha];
    v4 = v3;
    v10[3] = v3;
  }

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __63__SBEntityRemovalToHomeSwitcherModifier_homeScreenDimmingAlpha__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) homeScreenDimmingAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

@end
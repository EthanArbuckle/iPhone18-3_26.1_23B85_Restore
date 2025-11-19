@interface SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier
- (BOOL)_assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait;
- (BOOL)_isAppLayoutAtIndex:(unint64_t)a3;
- (BOOL)isContainerStatusBarVisible;
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3;
- (BOOL)isHomeScreenContentRequired;
- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3;
- (BOOL)isWallpaperRequiredForSwitcher;
- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier)initWithAppLayout:(id)a3 interfaceOrientation:(int64_t)a4 multitaskingModifier:(id)a5;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)backgroundOpacityForIndex:(unint64_t)a3;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenDimmingAlpha;
- (double)homeScreenScale;
- (double)scaleForIndex:(unint64_t)a3;
- (double)shadowOffsetForIndex:(unint64_t)a3;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (double)wallpaperScale;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleAssistantPresentationChangedEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)visibleHomeAffordanceLayoutElements;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (int64_t)wallpaperStyle;
- (unint64_t)maskedCornersForIndex:(unint64_t)a3;
@end

@implementation SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier

- (SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier)initWithAppLayout:(id)a3 interfaceOrientation:(int64_t)a4 multitaskingModifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
  v11 = [(SBSwitcherModifier *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appLayout, a3);
    v12->_interfaceOrientation = a4;
    objc_storeStrong(&v12->_multitaskingModifier, a5);
  }

  return v12;
}

- (id)handleAssistantPresentationChangedEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
  v4 = [(SBSwitcherModifier *)&v10 handleAssistantPresentationChangedEvent:a3];
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait])
  {
    v5 = [SBUpdateLayoutSwitcherEventResponse alloc];
LABEL_4:
    v7 = [(SBUpdateLayoutSwitcherEventResponse *)v5 initWithOptions:28 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v4);

    goto LABEL_5;
  }

  v6 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self assistantPresentationState];
  v5 = [SBUpdateLayoutSwitcherEventResponse alloc];
  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [(SBUpdateLayoutSwitcherEventResponse *)v5 initWithOptions:8 updateMode:2];
  v8 = SBAppendSwitcherModifierResponse(v7, v4);

  [(SBChainableModifier *)self setState:1];
LABEL_5:

  return v8;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v10 handleTransitionEvent:v4];
  v6 = [v4 fromInterfaceOrientation];
  v7 = [v4 toInterfaceOrientation];
  if (v7 != v6)
  {
    v8 = v7;
    if ((v7 - 3) <= 1)
    {
      if ([v4 phase] == 2)
      {
        self->_interfaceOrientation = v8;
      }

      else if ([v4 phase] == 3)
      {
        [(SBChainableModifier *)self setState:1];
      }
    }
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  if ([v4 switcherLayoutElementType] || !objc_msgSend(v4, "isEqual:", self->_appLayout))
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    v5 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v10 animationAttributesForLayoutElement:v4];
  }

  else
  {
    v5 = objc_alloc_init(SBMutableSwitcherAnimationAttributes);
    [(SBSwitcherAnimationAttributes *)v5 setUpdateMode:3];
    v6 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self siriSettings];
    v7 = [v6 systemAssistantExperienceSettings];
    v8 = [v7 typeToSiriPushInAnimationSettings];
    [(SBSwitcherAnimationAttributes *)v5 setScaleSettings:v8];
  }

  return v5;
}

- (double)backgroundOpacityForIndex:(unint64_t)a3
{
  if (![(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _isAppLayoutAtIndex:?]|| (v6 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait], result = 0.0, !v6))
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v7 backgroundOpacityForIndex:a3, result];
  }

  return result;
}

- (BOOL)isContainerStatusBarVisible
{
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
  return [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v4 isContainerStatusBarVisible];
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3
{
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _isAppLayoutAtIndex:?]&& ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait]|| (self->_interfaceOrientation - 3) < 2))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
  return [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v6 isContentStatusBarVisibleForIndex:a3];
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _isAppLayoutAtIndex:?])
  {
    [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self displayCornerRadius];

    SBRectCornerRadiiForRadius();
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v9 cornerRadiiForIndex:a3];
  }

  result.topRight = v8;
  result.bottomRight = v7;
  result.bottomLeft = v6;
  result.topLeft = v5;
  return result;
}

- (double)homeScreenAlpha
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenAlpha__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __77__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenAlpha__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) homeScreenAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __88__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenBackdropBlurType__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __88__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenBackdropBlurType__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) homeScreenBackdropBlurType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)homeScreenBackdropBlurProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __92__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) homeScreenBackdropBlurProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)homeScreenDimmingAlpha
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenDimmingAlpha__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __84__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenDimmingAlpha__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) homeScreenDimmingAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)homeScreenScale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenScale__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __77__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_homeScreenScale__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) homeScreenScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (BOOL)isHomeScreenContentRequired
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_isHomeScreenContentRequired__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __89__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_isHomeScreenContentRequired__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) isHomeScreenContentRequired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isResizeGrabberVisibleForAppLayout:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:self->_appLayout] && -[SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait](self, "_assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    v5 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v7 isResizeGrabberVisibleForAppLayout:v4];
  }

  return v5;
}

- (BOOL)isWallpaperRequiredForSwitcher
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __92__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_isWallpaperRequiredForSwitcher__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __92__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_isWallpaperRequiredForSwitcher__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) isWallpaperRequiredForSwitcher];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)maskedCornersForIndex:(unint64_t)a3
{
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _isAppLayoutAtIndex:?])
  {
    return 15;
  }

  v6.receiver = self;
  v6.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
  return [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v6 maskedCornersForIndex:a3];
}

- (BOOL)shouldAllowContentViewTouchesForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_appLayout])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    v7 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v9 shouldAllowContentViewTouchesForLayoutRole:a3 inAppLayout:v6];
  }

  return v7;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _isAppLayoutAtIndex:?]&& [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait])
  {
    v5 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self siriSettings];
    v6 = [v5 systemAssistantExperienceSettings];
    [v6 typeToSiriPushInScale];
    v8 = v7;

    return v8;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v10 scaleForIndex:a3];
  }

  return result;
}

- (double)shadowOffsetForIndex:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  multitaskingModifier = self->_multitaskingModifier;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_shadowOffsetForIndex___block_invoke;
  v6[3] = &unk_2783AA618;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __83__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_shadowOffsetForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 144) shadowOffsetForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __97__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke;
  v7[3] = &unk_2783AA6B8;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = a3;
  v7[7] = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __97__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 144) shadowOpacityForLayoutRole:a1[6] atIndex:a1[7]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  multitaskingModifier = self->_multitaskingModifier;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_shadowStyleForLayoutRole_inAppLayout___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  v14 = a3;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __99__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_shadowStyleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 144) shadowStyleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (id)visibleHomeAffordanceLayoutElements
{
  if ([(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self _assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait])
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier;
    v3 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)&v5 visibleHomeAffordanceLayoutElements];
  }

  return v3;
}

- (double)wallpaperScale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_wallpaperScale__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __76__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_wallpaperScale__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) wallpaperScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)wallpaperStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  multitaskingModifier = self->_multitaskingModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_wallpaperStyle__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:multitaskingModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __76__SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier_wallpaperStyle__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 144) wallpaperStyle];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_isAppLayoutAtIndex:(unint64_t)a3
{
  v4 = self;
  v5 = [(SBFullScreenAppLayoutTextModalityAssistantSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];
  LOBYTE(v4) = [v6 isEqual:v4->_appLayout];

  return v4;
}

- (BOOL)_assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdropInPortrait
{
  v3 = [(SBSwitcherModifier *)self assistantIsEffectivelyPresentedAndWantsDeemphasizedBackdrop];
  if (v3)
  {
    LOBYTE(v3) = (self->_interfaceOrientation - 1) < 2;
  }

  return v3;
}

@end
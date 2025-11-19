@interface SBGridToActiveAppLayoutsSwitcherModifier
- (BOOL)_isEffectivelyFullScreen;
- (BOOL)_isIndexActive:(unint64_t)a3;
- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBGridToActiveAppLayoutsSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 activeAppLayouts:(id)a5 gridModifier:(id)a6;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)_unselectedCardScale;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenAlpha;
- (double)homeScreenBackdropBlurProgress;
- (double)homeScreenScale;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (double)wallpaperScale;
- (id)_layoutSettings;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)handleTransitionEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)homeScreenBackdropBlurType;
@end

@implementation SBGridToActiveAppLayoutsSwitcherModifier

- (SBGridToActiveAppLayoutsSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 activeAppLayouts:(id)a5 gridModifier:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v17 initWithTransitionID:a3];
  v13 = v12;
  if (v12)
  {
    v12->_direction = a4;
    v14 = [v10 copy];
    activeAppLayouts = v13->_activeAppLayouts;
    v13->_activeAppLayouts = v14;

    objc_storeStrong(&v13->_gridModifier, a6);
    v13->_wantsMinificationFilter = 0;
  }

  return v13;
}

- (BOOL)shouldAsyncRenderUntilDelay:(double *)a3
{
  direction = self->_direction;
  if (!direction)
  {
    v6 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self switcherSettings];
    v7 = [v6 animationSettings];
    [v7 disableAsyncRenderingTransitionPercentage];
    v9 = v8;

    v10 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self _layoutSettings];
    [v10 settlingDuration];
    v12 = v9 * v11;
    UIAnimationDragCoefficient();
    *a3 = v12 * v13;
  }

  return direction == 0;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  v4 = [(NSArray *)self->_activeAppLayouts bs_firstObjectPassingTest:&__block_literal_global_225];
  direction = self->_direction;
  v6 = [SBUpdateLayoutSwitcherEventResponse alloc];
  if (v4)
  {
    v7 = direction == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = 30;
  }

  else
  {
    v8 = 2;
  }

  v9 = [(SBUpdateLayoutSwitcherEventResponse *)v6 initWithOptions:v8 updateMode:2];
  v10 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v9 toResponse:v3];

  return v10;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionID];
  v6 = [(SBTransitionSwitcherModifier *)self transitionID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v4 fromAppLayout];
    v9 = [v4 toAppLayout];
    self->_wantsMinificationFilter = [v8 isEqual:v9];
  }

  v12.receiver = self;
  v12.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v12 handleTransitionEvent:v4];

  return v10;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  if (![(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x4010000000;
    v35 = &unk_21F9DA6A3;
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    gridModifier = self->_gridModifier;
    v36 = *MEMORY[0x277CBF3A0];
    v37 = v13;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__SBGridToActiveAppLayoutsSwitcherModifier_frameForIndex___block_invoke;
    v31[3] = &unk_2783AA618;
    v31[4] = self;
    v31[5] = &v32;
    v31[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v31];
    v6 = v33[4];
    v8 = v33[5];
    v10 = v33[6];
    v12 = v33[7];
LABEL_6:
    _Block_object_dispose(&v32, 8);
    goto LABEL_7;
  }

  if (![(SBGridToActiveAppLayoutsSwitcherModifier *)self _isIndexActive:a3])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x4010000000;
    v35 = &unk_21F9DA6A3;
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = self->_gridModifier;
    v36 = *MEMORY[0x277CBF3A0];
    v37 = v15;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__SBGridToActiveAppLayoutsSwitcherModifier_frameForIndex___block_invoke_2;
    v29[3] = &unk_2783AA618;
    v29[4] = self;
    v29[5] = &v32;
    v29[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v16 usingBlock:v29];
    [(SBGridToActiveAppLayoutsSwitcherModifier *)self _unselectedCardScale];
    v18 = v17;
    [(SBGridToActiveAppLayoutsSwitcherModifier *)self switcherViewBounds];
    UIRectGetCenter();
    UIRectGetCenter();
    CGAffineTransformMakeScale(&v28, v18, v18);
    SBUnintegralizedRectCenteredAboutPoint();
    v6 = v19;
    v8 = v20;
    v10 = v21;
    v12 = v22;
    v23 = v33;
    v33[4] = v19;
    v23[5] = v20;
    v23[6] = v21;
    v23[7] = v22;
    goto LABEL_6;
  }

  v30.receiver = self;
  v30.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  [(SBGridToActiveAppLayoutsSwitcherModifier *)&v30 frameForIndex:a3];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
LABEL_7:
  v24 = v6;
  v25 = v8;
  v26 = v10;
  v27 = v12;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

uint64_t __58__SBGridToActiveAppLayoutsSwitcherModifier_frameForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

uint64_t __58__SBGridToActiveAppLayoutsSwitcherModifier_frameForIndex___block_invoke_2(void *a1)
{
  result = [*(a1[4] + 184) frameForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if ([(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen]&& ![(NSArray *)self->_activeAppLayouts containsObject:v11])
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x4010000000;
    v37 = &unk_21F9DA6A3;
    gridModifier = self->_gridModifier;
    v38 = 0u;
    v39 = 0u;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__SBGridToActiveAppLayoutsSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
    v26[3] = &unk_2783AA640;
    v28 = &v34;
    v29 = a3;
    v26[4] = self;
    v27 = v11;
    v30 = x;
    v31 = y;
    v32 = width;
    v33 = height;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v26];
    v13 = v35[4];
    v15 = v35[5];
    v17 = v35[6];
    v19 = v35[7];

    _Block_object_dispose(&v34, 8);
  }

  else
  {
    v25.receiver = self;
    v25.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
    [(SBGridToActiveAppLayoutsSwitcherModifier *)&v25 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  v21 = v13;
  v22 = v15;
  v23 = v17;
  v24 = v19;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

uint64_t __86__SBGridToActiveAppLayoutsSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (id)visibleAppLayouts
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__80;
  v14 = __Block_byref_object_dispose__80;
  v15 = 0;
  gridModifier = self->_gridModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBGridToActiveAppLayoutsSwitcherModifier_visibleAppLayouts__block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v9];
  v4 = v11[5];
  v8.receiver = self;
  v8.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v5 = [(SBGridToActiveAppLayoutsSwitcherModifier *)&v8 visibleAppLayouts];
  v6 = [v4 setByAddingObjectsFromSet:v5];

  _Block_object_dispose(&v10, 8);

  return v6;
}

void __61__SBGridToActiveAppLayoutsSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)scaleForIndex:(unint64_t)a3
{
  if ([(SBGridToActiveAppLayoutsSwitcherModifier *)self _isIndexActive:?])
  {
    v15.receiver = self;
    v15.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
    [(SBGridToActiveAppLayoutsSwitcherModifier *)&v15 scaleForIndex:a3];
    return v5;
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    gridModifier = self->_gridModifier;
    v14 = 0x3FF0000000000000;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__SBGridToActiveAppLayoutsSwitcherModifier_scaleForIndex___block_invoke;
    v10[3] = &unk_2783AA618;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v10];
    [(SBGridToActiveAppLayoutsSwitcherModifier *)self _unselectedCardScale];
    v6 = v8 * v12[3];
    v12[3] = v6;
    _Block_object_dispose(&v11, 8);
  }

  return v6;
}

uint64_t __58__SBGridToActiveAppLayoutsSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v8 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self _layoutSettings];
  [v5 setLayoutSettings:v6];

  return v5;
}

- (id)_layoutSettings
{
  v3 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];

  if (self->_direction == 1)
  {
    [v4 toggleAppSwitcherSettings];
  }

  else
  {
    [v4 launchAppFromSwitcherSettings];
  }
  v5 = ;

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (![(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen]|| (v9 = 0.0, [(SBGridToActiveAppLayoutsSwitcherModifier *)self _isIndexActive:a5]))
  {
    v12.receiver = self;
    v12.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
    [(SBGridToActiveAppLayoutsSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (double)homeScreenAlpha
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x3FF0000000000000;
  gridModifier = self->_gridModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenAlpha__block_invoke;
  v9[3] = &unk_2783A8CE0;
  v9[4] = self;
  v9[5] = &v10;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v9];
  if (!self->_direction && (([(SBGridToActiveAppLayoutsSwitcherModifier *)self homeScreenHasOpenFolder]& 1) != 0 || [(SBGridToActiveAppLayoutsSwitcherModifier *)self isShowingSpotlightOrTodayView]))
  {
    v4 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self switcherSettings];
    v5 = [v4 animationSettings];
    [v5 homeScreenAlphaForMode:1];
    *(v11 + 3) = v6;
  }

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

uint64_t __59__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenAlpha__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) homeScreenAlpha];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)homeScreenScale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x3FF0000000000000;
  gridModifier = self->_gridModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenScale__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __59__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenScale__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) homeScreenScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)wallpaperScale
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x3FF0000000000000;
  gridModifier = self->_gridModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBGridToActiveAppLayoutsSwitcherModifier_wallpaperScale__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __58__SBGridToActiveAppLayoutsSwitcherModifier_wallpaperScale__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) wallpaperScale];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  gridModifier = self->_gridModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenBackdropBlurType__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __70__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenBackdropBlurType__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) homeScreenBackdropBlurType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)homeScreenBackdropBlurProgress
{
  if ([(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen])
  {
    v12.receiver = self;
    v12.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
    [(SBGridToActiveAppLayoutsSwitcherModifier *)&v12 homeScreenBackdropBlurProgress];
    return v3;
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0x3FF0000000000000;
    gridModifier = self->_gridModifier;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __74__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke;
    v7[3] = &unk_2783A8CE0;
    v7[4] = self;
    v7[5] = &v8;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v7];
    v4 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  return v4;
}

uint64_t __74__SBGridToActiveAppLayoutsSwitcherModifier_homeScreenBackdropBlurProgress__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) homeScreenBackdropBlurProgress];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v13.receiver = self;
  v13.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v6 = a4;
  [(SBGridToActiveAppLayoutsSwitcherModifier *)&v13 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  v9 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self appLayouts:v13.receiver];
  v10 = [v9 indexOfObject:v6];

  if (![(SBGridToActiveAppLayoutsSwitcherModifier *)self _isIndexActive:v10]&& [(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen])
  {
    [(SBGridToActiveAppLayoutsSwitcherModifier *)self homeScreenDimmingAlpha];
    return v11;
  }

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4010000000;
  v24 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277D76E40] + 16);
  gridModifier = self->_gridModifier;
  v25 = *MEMORY[0x277D76E40];
  v26 = v5;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__SBGridToActiveAppLayoutsSwitcherModifier_cornerRadiiForIndex___block_invoke;
  v20[3] = &unk_2783AA618;
  v20[4] = self;
  v20[5] = &v21;
  v20[6] = a3;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v20];
  if ([(SBGridToActiveAppLayoutsSwitcherModifier *)self _isIndexActive:a3]&& [(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen])
  {
    v19.receiver = self;
    v19.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
    [(SBGridToActiveAppLayoutsSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = v22[4];
    v10 = v22[5];
    v12 = v22[6];
    v14 = v22[7];
  }

  _Block_object_dispose(&v21, 8);
  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

uint64_t __64__SBGridToActiveAppLayoutsSwitcherModifier_cornerRadiiForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 184) cornerRadiiForIndex:a1[6]];
  v3 = *(a1[5] + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__80;
  v10 = __Block_byref_object_dispose__80;
  v11 = 0;
  gridModifier = self->_gridModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBGridToActiveAppLayoutsSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __70__SBGridToActiveAppLayoutsSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 184) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)topMostLayoutElements
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  v3 = [(SBGridToActiveAppLayoutsSwitcherModifier *)&v18 topMostLayoutElements];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 mutableCopy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(NSArray *)self->_activeAppLayouts reverseObjectEnumerator];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [(NSArray *)v5 indexOfObject:v11];
          if (v12 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(NSArray *)v5 removeObjectAtIndex:v12];
          }

          [(NSArray *)v5 insertObject:v11 atIndex:0];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = self->_activeAppLayouts;
  }

  return v5;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBGridToActiveAppLayoutsSwitcherModifier;
  return ([(SBTransitionSwitcherModifier *)&v4 asyncRenderingAttributesForAppLayout:a3]| (self->_wantsMinificationFilter << 8));
}

- (BOOL)_isIndexActive:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_activeAppLayouts;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([v6 isEqual:{*(*(&v12 + 1) + 8 * i), v12}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (double)_unselectedCardScale
{
  if (![(SBGridToActiveAppLayoutsSwitcherModifier *)self _isEffectivelyFullScreen])
  {
    return 1.0;
  }

  v3 = [(SBGridToActiveAppLayoutsSwitcherModifier *)self switcherSettings];
  v4 = [v3 animationSettings];
  [v4 appToSwitcherTransitionMinCardScaleFactor];
  v6 = v5;

  return v6;
}

- (BOOL)_isEffectivelyFullScreen
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = self->_direction == 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = self->_direction == 0;
  }

  else
  {
    v4 = 0;
  }

  return v3 || v4;
}

@end
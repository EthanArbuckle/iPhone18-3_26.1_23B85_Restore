@interface SBContinuousExposeToHomeSwitcherModifier
- (BOOL)_isEffectivelyHome;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout;
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment;
- (CGPoint)perspectiveAngleForIndex:(unint64_t)index;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (SBContinuousExposeToHomeSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction exposeModifier:(id)modifier;
- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)handleScrollEvent:(id)event;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
- (int64_t)headerStyleForIndex:(unint64_t)index;
- (int64_t)homeScreenBackdropBlurType;
- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
@end

@implementation SBContinuousExposeToHomeSwitcherModifier

- (SBContinuousExposeToHomeSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction exposeModifier:(id)modifier
{
  dCopy = d;
  modifierCopy = modifier;
  v14.receiver = self;
  v14.super_class = SBContinuousExposeToHomeSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v14 initWithTransitionID:dCopy];
  if (v11)
  {
    if (!modifierCopy)
    {
      [SBContinuousExposeToHomeSwitcherModifier initWithTransitionID:a2 direction:v11 exposeModifier:?];
    }

    v11->_direction = direction;
    objc_storeStrong(&v11->_exposeModifier, modifier);
    [(SBWindowingModifierBase *)v11->_exposeModifier setStaticTemporaryChildModifier:1];
    v12 = [(SBHomeToSwitcherSwitcherModifier *)[SBHomeToGridSwitcherModifier alloc] initWithTransitionID:dCopy direction:direction != 0 multitaskingModifier:v11->_exposeModifier];
    [(SBChainableModifier *)v11 addChildModifier:v12];
  }

  return v11;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBContinuousExposeToHomeSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  v4 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v5 = SBAppendSwitcherModifierResponse(v4, transitionWillBegin);

  recentAppLayouts = [(SBContinuousExposeToHomeSwitcherModifier *)self recentAppLayouts];
  v7 = [(SBContinuousExposeToHomeSwitcherModifier *)self adjustedAppLayoutsForAppLayouts:recentAppLayouts];
  firstObject = [v7 firstObject];

  if (firstObject)
  {
    v9 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:firstObject alignment:0 animated:0];
    v10 = SBAppendSwitcherModifierResponse(v9, v5);

    v5 = v10;
  }

  return v5;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  exposeModifier = self->_exposeModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBContinuousExposeToHomeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v9[3] = &unk_2783AB258;
  v11 = &v12;
  v9[4] = self;
  v6 = layoutsCopy;
  v10 = v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __76__SBContinuousExposeToHomeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 176) adjustedAppLayoutsForAppLayouts:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)visibleAppLayouts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  exposeModifier = self->_exposeModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SBContinuousExposeToHomeSwitcherModifier_visibleAppLayouts__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __61__SBContinuousExposeToHomeSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 176) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)handleScrollEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBContinuousExposeToHomeSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleScrollEvent:eventCopy];
  phase = [eventCopy phase];

  if (phase == 1)
  {
    exposeModifier = self->_exposeModifier;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SBContinuousExposeToHomeSwitcherModifier_handleScrollEvent___block_invoke;
    v9[3] = &unk_2783A8C18;
    v9[4] = self;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v9];
  }

  return v5;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  exposeModifier = self->_exposeModifier;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__SBContinuousExposeToHomeSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
  v13[3] = &unk_2783AA690;
  v15 = &v18;
  roleCopy = role;
  v13[4] = self;
  v10 = layoutCopy;
  v14 = v10;
  indexCopy = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v13];
  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v11;
}

uint64_t __85__SBContinuousExposeToHomeSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) opacityForLayoutRole:a1[7] inAppLayout:a1[5] atIndex:a1[8]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  exposeModifier = self->_exposeModifier;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SBContinuousExposeToHomeSwitcherModifier_titleAndIconOpacityForIndex___block_invoke;
  v6[3] = &unk_2783AA618;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __72__SBContinuousExposeToHomeSwitcherModifier_titleAndIconOpacityForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) titleAndIconOpacityForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

- (int64_t)headerStyleForIndex:(unint64_t)index
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  exposeModifier = self->_exposeModifier;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBContinuousExposeToHomeSwitcherModifier_headerStyleForIndex___block_invoke;
  v6[3] = &unk_2783AA618;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __64__SBContinuousExposeToHomeSwitcherModifier_headerStyleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) headerStyleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (int64_t)shadowStyleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  exposeModifier = self->_exposeModifier;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SBContinuousExposeToHomeSwitcherModifier_shadowStyleForLayoutRole_inAppLayout___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  roleCopy = role;
  v11[4] = self;
  v8 = layoutCopy;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __81__SBContinuousExposeToHomeSwitcherModifier_shadowStyleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) shadowStyleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (int64_t)homeScreenBackdropBlurType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  exposeModifier = self->_exposeModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SBContinuousExposeToHomeSwitcherModifier_homeScreenBackdropBlurType__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __70__SBContinuousExposeToHomeSwitcherModifier_homeScreenBackdropBlurType__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) homeScreenBackdropBlurType];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)index alignment:(int64_t)alignment
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v14 = 0;
  v15 = 0;
  v13 = &unk_21F9DA6A3;
  exposeModifier = self->_exposeModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBContinuousExposeToHomeSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v9[3] = &unk_2783AA6B8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = index;
  v9[7] = alignment;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v9];
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __76__SBContinuousExposeToHomeSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(void *a1)
{
  result = [*(a1[4] + 176) contentOffsetForIndex:a1[6] alignment:a1[7]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  _isEffectivelyHome = [(SBContinuousExposeToHomeSwitcherModifier *)self _isEffectivelyHome];
  v6 = 0.5;
  v7 = 0.5;
  if (!_isEffectivelyHome)
  {
    v8.receiver = self;
    v8.super_class = SBContinuousExposeToHomeSwitcherModifier;
    [(SBContinuousExposeToHomeSwitcherModifier *)&v8 anchorPointForIndex:index, 0.5, 0.5];
  }

  result.y = v7;
  result.x = v6;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  if ([(SBContinuousExposeToHomeSwitcherModifier *)self _isEffectivelyHome])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SBContinuousExposeToHomeSwitcherModifier;
  return [(SBContinuousExposeToHomeSwitcherModifier *)&v6 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
}

- (CGPoint)perspectiveAngleForIndex:(unint64_t)index
{
  if ([(SBContinuousExposeToHomeSwitcherModifier *)self _isEffectivelyHome])
  {
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBContinuousExposeToHomeSwitcherModifier;
    [(SBContinuousExposeToHomeSwitcherModifier *)&v7 perspectiveAngleForIndex:index];
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  if (![(SBContinuousExposeToHomeSwitcherModifier *)self _isEffectivelyHome])
  {
    v18.receiver = self;
    v18.super_class = SBContinuousExposeToHomeSwitcherModifier;
    [(SBContinuousExposeToHomeSwitcherModifier *)&v18 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
    x = v10;
    y = v11;
    width = v12;
    height = v13;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGPoint)adjustedSpaceAccessoryViewAnchorPoint:(CGPoint)point forAppLayout:(id)layout
{
  y = point.y;
  x = point.x;
  layoutCopy = layout;
  v8 = 0.5;
  v9 = 0.5;
  if (![(SBContinuousExposeToHomeSwitcherModifier *)self _isEffectivelyHome])
  {
    v14.receiver = self;
    v14.super_class = SBContinuousExposeToHomeSwitcherModifier;
    [(SBContinuousExposeToHomeSwitcherModifier *)&v14 adjustedSpaceAccessoryViewAnchorPoint:layoutCopy forAppLayout:x, y];
    v8 = v10;
    v9 = v11;
  }

  v12 = v8;
  v13 = v9;
  result.y = v13;
  result.x = v12;
  return result;
}

- (double)adjustedSpaceAccessoryViewScale:(double)scale forAppLayout:(id)layout
{
  layoutCopy = layout;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  exposeModifier = self->_exposeModifier;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__SBContinuousExposeToHomeSwitcherModifier_adjustedSpaceAccessoryViewScale_forAppLayout___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  v11[4] = self;
  scaleCopy = scale;
  v8 = layoutCopy;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:exposeModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __89__SBContinuousExposeToHomeSwitcherModifier_adjustedSpaceAccessoryViewScale_forAppLayout___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 176) adjustedSpaceAccessoryViewScale:*(a1 + 40) forAppLayout:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (BOOL)_isEffectivelyHome
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

- (void)initWithTransitionID:(uint64_t)a1 direction:(uint64_t)a2 exposeModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeToHomeSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"continuousExposeModifier"}];
}

@end
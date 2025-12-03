@interface SBHomeToGridSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (double)titleAndIconOpacityForIndex:(unint64_t)index;
- (double)titleOpacityForIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutToScrollToDuringTransition;
- (id)appLayoutsToCacheSnapshots;
- (id)visibleAppLayouts;
@end

@implementation SBHomeToGridSwitcherModifier

- (id)appLayoutToScrollToDuringTransition
{
  appLayouts = [(SBHomeToGridSwitcherModifier *)self appLayouts];
  if ([(SBHomeToSwitcherSwitcherModifier *)self direction]== 1)
  {
    firstObject = [appLayouts firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4010000000;
  v24 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v25 = *MEMORY[0x277CBF3A0];
  v26 = v5;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__SBHomeToGridSwitcherModifier_frameForIndex___block_invoke;
  v16[3] = &unk_2783AA668;
  v19 = &v21;
  v7 = multitaskingModifier;
  indexCopy = index;
  v17 = v7;
  selfCopy = self;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v7 usingBlock:v16];
  v8 = v22[4];
  v9 = v22[5];
  v10 = v22[6];
  v11 = v22[7];

  _Block_object_dispose(&v21, 8);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

void __46__SBHomeToGridSwitcherModifier_frameForIndex___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frameForIndex:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  if ([*(a1 + 40) isEffectivelyHome])
  {
    v7 = [*(a1 + 40) isRTLEnabled];
    [*(a1 + 32) distanceToLeadingEdgeOfLeadingCardFromTrailingEdgeOfScreenWithVisibleIndexToStartSearch:*(a1 + 56)];
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    *(*(*(a1 + 48) + 8) + 32) = CGRectOffset(*(*(*(a1 + 48) + 8) + 32), v9, 0.0);
  }
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v33 = 0;
  v34 = &v33;
  v35 = 0x4010000000;
  v36 = &unk_21F9DA6A3;
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v37 = *MEMORY[0x277CBF3A0];
  v38 = v12;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__SBHomeToGridSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke;
  v24[3] = &unk_2783AA640;
  v27 = &v33;
  v14 = multitaskingModifier;
  v25 = v14;
  roleCopy = role;
  v15 = layoutCopy;
  v26 = v15;
  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v14 usingBlock:v24];
  v16 = v34[4];
  v17 = v34[5];
  v18 = v34[6];
  v19 = v34[7];

  _Block_object_dispose(&v33, 8);
  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __74__SBHomeToGridSwitcherModifier_frameForLayoutRole_inAppLayout_withBounds___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) frameForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40) withBounds:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SBHomeToGridSwitcherModifier_scaleForIndex___block_invoke;
  v9[3] = &unk_2783AA618;
  v11 = &v13;
  v6 = multitaskingModifier;
  v10 = v6;
  indexCopy = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v6 usingBlock:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __46__SBHomeToGridSwitcherModifier_scaleForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) scaleForIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0x3FF0000000000000;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SBHomeToGridSwitcherModifier_scaleForLayoutRole_inAppLayout___block_invoke;
  v12[3] = &unk_2783AA668;
  v15 = &v17;
  v8 = multitaskingModifier;
  v13 = v8;
  roleCopy = role;
  v9 = layoutCopy;
  v14 = v9;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v8 usingBlock:v12];
  v10 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v10;
}

uint64_t __63__SBHomeToGridSwitcherModifier_scaleForLayoutRole_inAppLayout___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) scaleForLayoutRole:*(a1 + 56) inAppLayout:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (id)visibleAppLayouts
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBHomeToGridSwitcherModifier_visibleAppLayouts__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v9 = &v10;
  v4 = multitaskingModifier;
  v8 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v4 usingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __49__SBHomeToGridSwitcherModifier_visibleAppLayouts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleAppLayouts];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  switcherSettings = [(SBHomeToGridSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if ([(SBHomeToSwitcherSwitcherModifier *)self direction])
  {
    [animationSettings toggleAppSwitcherSettings];
  }

  else
  {
    [animationSettings switcherToHomeSettings];
  }
  v7 = ;
  v12.receiver = self;
  v12.super_class = SBHomeToGridSwitcherModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v12 animationAttributesForLayoutElement:elementCopy];

  v9 = [v8 mutableCopy];
  [v9 setLayoutSettings:v7];
  switcherToHomeOpacitySettings = [animationSettings switcherToHomeOpacitySettings];
  [v9 setOpacitySettings:switcherToHomeOpacitySettings];

  return v9;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  visibleAppLayouts = [(SBHomeToGridSwitcherModifier *)self visibleAppLayouts];
  v10 = 0.0;
  if ([visibleAppLayouts containsObject:layoutCopy])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__SBHomeToGridSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke;
    v14[3] = &unk_2783AC7C8;
    v12 = multitaskingModifier;
    v15 = v12;
    v16 = &v19;
    indexCopy = index;
    roleCopy = role;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v12 usingBlock:v14];
    v10 = v20[3];

    _Block_object_dispose(&v19, 8);
  }

  return v10;
}

void __73__SBHomeToGridSwitcherModifier_opacityForLayoutRole_inAppLayout_atIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayouts];
  v4 = [v2 objectAtIndex:*(a1 + 48)];

  [*(a1 + 32) opacityForLayoutRole:*(a1 + 56) inAppLayout:v4 atIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4010000000;
  v23 = &unk_21F9DA6A3;
  v5 = *(MEMORY[0x277D76E40] + 16);
  v24 = *MEMORY[0x277D76E40];
  v25 = v5;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__SBHomeToGridSwitcherModifier_cornerRadiiForIndex___block_invoke;
  v16[3] = &unk_2783AA618;
  v18 = &v20;
  v7 = multitaskingModifier;
  v17 = v7;
  indexCopy = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v7 usingBlock:v16];
  v8 = v21[4];
  v9 = v21[5];
  v10 = v21[6];
  v11 = v21[7];

  _Block_object_dispose(&v20, 8);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.topRight = v15;
  result.bottomRight = v14;
  result.bottomLeft = v13;
  result.topLeft = v12;
  return result;
}

uint64_t __52__SBHomeToGridSwitcherModifier_cornerRadiiForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) cornerRadiiForIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (double)titleAndIconOpacityForIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SBHomeToGridSwitcherModifier_titleAndIconOpacityForIndex___block_invoke;
  v9[3] = &unk_2783AA618;
  v11 = &v13;
  v6 = multitaskingModifier;
  v10 = v6;
  indexCopy = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v6 usingBlock:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __60__SBHomeToGridSwitcherModifier_titleAndIconOpacityForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) titleAndIconOpacityForIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)titleOpacityForIndex:(unint64_t)index
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__SBHomeToGridSwitcherModifier_titleOpacityForIndex___block_invoke;
  v9[3] = &unk_2783AA618;
  v11 = &v13;
  v6 = multitaskingModifier;
  v10 = v6;
  indexCopy = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v6 usingBlock:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __53__SBHomeToGridSwitcherModifier_titleOpacityForIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) titleOpacityForIndex:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__SBHomeToGridSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke;
  v11[3] = &unk_2783AA6B8;
  v13 = &v16;
  v8 = multitaskingModifier;
  v12 = v8;
  roleCopy = role;
  indexCopy = index;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v8 usingBlock:v11];
  v9 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v9;
}

uint64_t __67__SBHomeToGridSwitcherModifier_shadowOpacityForLayoutRole_atIndex___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shadowOpacityForLayoutRole:*(a1 + 48) atIndex:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  multitaskingModifier = [(SBHomeToSwitcherSwitcherModifier *)self multitaskingModifier];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SBHomeToGridSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v7[3] = &unk_2783A8CE0;
  v9 = &v10;
  v4 = multitaskingModifier;
  v8 = v4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v4 usingBlock:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __58__SBHomeToGridSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end
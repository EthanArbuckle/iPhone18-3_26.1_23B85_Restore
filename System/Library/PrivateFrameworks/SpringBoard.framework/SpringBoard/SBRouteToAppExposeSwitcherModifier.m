@interface SBRouteToAppExposeSwitcherModifier
- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4;
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)a3 velocity:(CGPoint)a4;
- (SBRouteToAppExposeSwitcherModifier)initWithTransitionID:(id)a3 appExposeModifier:(id)a4;
- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4;
- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)appExposeAccessoryButtonsBundleIdentifier;
- (id)handleTransitionEvent:(id)a3;
- (id)scrollViewAttributes;
- (int64_t)appExposeAccessoryButtonsOverrideUserInterfaceStyle;
- (int64_t)plusButtonStyle;
@end

@implementation SBRouteToAppExposeSwitcherModifier

- (SBRouteToAppExposeSwitcherModifier)initWithTransitionID:(id)a3 appExposeModifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SBRouteToAppExposeSwitcherModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_appExposeModifier, a4);
    v9->_isTransitioningOutOfAppExpose = 0;
  }

  return v9;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 fromAppExposeBundleID];
  if (v5)
  {
    v6 = [v4 toAppExposeBundleID];
    self->_isTransitioningOutOfAppExpose = v6 == 0;
  }

  else
  {
    self->_isTransitioningOutOfAppExpose = 0;
  }

  v9.receiver = self;
  v9.super_class = SBRouteToAppExposeSwitcherModifier;
  v7 = [(SBTransitionSwitcherModifier *)&v9 handleTransitionEvent:v4];

  return v7;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_isTransitioningOutOfAppExpose)
  {
    v20.receiver = self;
    v20.super_class = SBRouteToAppExposeSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v20 adjustedAppLayoutsForAppLayouts:v4];
  }

  else
  {
    v6 = v4;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__136;
  v18 = __Block_byref_object_dispose__136;
  v19 = 0;
  appExposeModifier = self->_appExposeModifier;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SBRouteToAppExposeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v11[3] = &unk_2783AB258;
  v13 = &v14;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __70__SBRouteToAppExposeSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 168) adjustedAppLayoutsForAppLayouts:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appExposeAccessoryButtonsBundleIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__136;
  v10 = __Block_byref_object_dispose__136;
  v11 = 0;
  appExposeModifier = self->_appExposeModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__SBRouteToAppExposeSwitcherModifier_appExposeAccessoryButtonsBundleIdentifier__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __79__SBRouteToAppExposeSwitcherModifier_appExposeAccessoryButtonsBundleIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) appExposeAccessoryButtonsBundleIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)appExposeAccessoryButtonsOverrideUserInterfaceStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  appExposeModifier = self->_appExposeModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __89__SBRouteToAppExposeSwitcherModifier_appExposeAccessoryButtonsOverrideUserInterfaceStyle__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __89__SBRouteToAppExposeSwitcherModifier_appExposeAccessoryButtonsOverrideUserInterfaceStyle__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) appExposeAccessoryButtonsOverrideUserInterfaceStyle];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)plusButtonStyle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  appExposeModifier = self->_appExposeModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SBRouteToAppExposeSwitcherModifier_plusButtonStyle__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __53__SBRouteToAppExposeSwitcherModifier_plusButtonStyle__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) plusButtonStyle];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)snapshotScaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  appExposeModifier = self->_appExposeModifier;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SBRouteToAppExposeSwitcherModifier_snapshotScaleForLayoutRole_inAppLayout___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  v14 = a3;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __77__SBRouteToAppExposeSwitcherModifier_snapshotScaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) snapshotScaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)a3 withScale:(double)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  appExposeModifier = self->_appExposeModifier;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SBRouteToAppExposeSwitcherModifier_contentPageViewScaleForAppLayout_withScale___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __81__SBRouteToAppExposeSwitcherModifier_contentPageViewScaleForAppLayout_withScale___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) contentPageViewScaleForAppLayout:*(a1 + 40) withScale:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = v3;
  return result;
}

- (id)scrollViewAttributes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__136;
  v10 = __Block_byref_object_dispose__136;
  v11 = 0;
  appExposeModifier = self->_appExposeModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBRouteToAppExposeSwitcherModifier_scrollViewAttributes__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__SBRouteToAppExposeSwitcherModifier_scrollViewAttributes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) scrollViewAttributes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CGPoint)contentOffsetForIndex:(unint64_t)a3 alignment:(int64_t)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_21F9DA6A3;
  v14 = *MEMORY[0x277CBF348];
  appExposeModifier = self->_appExposeModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SBRouteToAppExposeSwitcherModifier_contentOffsetForIndex_alignment___block_invoke;
  v9[3] = &unk_2783AA6B8;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  v9[7] = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v9];
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __70__SBRouteToAppExposeSwitcherModifier_contentOffsetForIndex_alignment___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) contentOffsetForIndex:a1[6] alignment:a1[7]];
  v3 = *(a1[5] + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)a3 velocity:(CGPoint)a4
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_21F9DA6A3;
  v16 = *MEMORY[0x277CBF348];
  appExposeModifier = self->_appExposeModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBRouteToAppExposeSwitcherModifier_restingOffsetForScrollOffset_velocity___block_invoke;
  v9[3] = &unk_2783AEEC0;
  v9[4] = self;
  v9[5] = &v12;
  v10 = a3;
  v11 = a4;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:appExposeModifier usingBlock:v9];
  v5 = v13[4];
  v6 = v13[5];
  _Block_object_dispose(&v12, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __76__SBRouteToAppExposeSwitcherModifier_restingOffsetForScrollOffset_velocity___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) restingOffsetForScrollOffset:*(a1 + 48) velocity:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

@end
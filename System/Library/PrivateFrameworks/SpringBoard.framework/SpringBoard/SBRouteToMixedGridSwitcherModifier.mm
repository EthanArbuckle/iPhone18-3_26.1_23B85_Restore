@interface SBRouteToMixedGridSwitcherModifier
- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity;
- (SBRouteToMixedGridSwitcherModifier)initWithTransitionID:(id)d mixedGridModifier:(id)modifier;
- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale;
- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)appLayoutsToCacheSnapshots;
- (id)handleTransitionEvent:(id)event;
- (id)scrollViewAttributes;
@end

@implementation SBRouteToMixedGridSwitcherModifier

- (SBRouteToMixedGridSwitcherModifier)initWithTransitionID:(id)d mixedGridModifier:(id)modifier
{
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBRouteToMixedGridSwitcherModifier;
  v8 = [(SBTransitionSwitcherModifier *)&v11 initWithTransitionID:d];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mixedGridModifier, modifier);
    v9->_isTransitioningOutOfAppSwitcher = 0;
  }

  return v9;
}

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  fromEnvironmentMode = [eventCopy fromEnvironmentMode];
  toEnvironmentMode = [eventCopy toEnvironmentMode];
  v8 = fromEnvironmentMode == 2 && toEnvironmentMode != 2;
  self->_isTransitioningOutOfAppSwitcher = v8;
  v11.receiver = self;
  v11.super_class = SBRouteToMixedGridSwitcherModifier;
  v9 = [(SBTransitionSwitcherModifier *)&v11 handleTransitionEvent:eventCopy];

  return v9;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  layoutsCopy = layouts;
  v5 = layoutsCopy;
  if (self->_isTransitioningOutOfAppSwitcher)
  {
    v20.receiver = self;
    v20.super_class = SBRouteToMixedGridSwitcherModifier;
    v6 = [(SBTransitionSwitcherModifier *)&v20 adjustedAppLayoutsForAppLayouts:layoutsCopy];
  }

  else
  {
    v6 = layoutsCopy;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__112;
  v18 = __Block_byref_object_dispose__112;
  v19 = 0;
  mixedGridModifier = self->_mixedGridModifier;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SBRouteToMixedGridSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke;
  v11[3] = &unk_2783AB258;
  v13 = &v14;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

void __70__SBRouteToMixedGridSwitcherModifier_adjustedAppLayoutsForAppLayouts___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 168) adjustedAppLayoutsForAppLayouts:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)appLayoutsToCacheSnapshots
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__112;
  v10 = __Block_byref_object_dispose__112;
  v11 = 0;
  mixedGridModifier = self->_mixedGridModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SBRouteToMixedGridSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __64__SBRouteToMixedGridSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) appLayoutsToCacheSnapshots];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (double)snapshotScaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  mixedGridModifier = self->_mixedGridModifier;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SBRouteToMixedGridSwitcherModifier_snapshotScaleForLayoutRole_inAppLayout___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  roleCopy = role;
  v11[4] = self;
  v8 = layoutCopy;
  v12 = v8;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __77__SBRouteToMixedGridSwitcherModifier_snapshotScaleForLayoutRole_inAppLayout___block_invoke(void *a1)
{
  result = [*(a1[4] + 168) snapshotScaleForLayoutRole:a1[7] inAppLayout:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

- (double)contentPageViewScaleForAppLayout:(id)layout withScale:(double)scale
{
  layoutCopy = layout;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  mixedGridModifier = self->_mixedGridModifier;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__SBRouteToMixedGridSwitcherModifier_contentPageViewScaleForAppLayout_withScale___block_invoke;
  v11[3] = &unk_2783AA668;
  v13 = &v15;
  v11[4] = self;
  v8 = layoutCopy;
  v12 = v8;
  scaleCopy = scale;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v11];
  v9 = v16[3];

  _Block_object_dispose(&v15, 8);
  return v9;
}

uint64_t __81__SBRouteToMixedGridSwitcherModifier_contentPageViewScaleForAppLayout_withScale___block_invoke(uint64_t a1)
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
  v9 = __Block_byref_object_copy__112;
  v10 = __Block_byref_object_dispose__112;
  v11 = 0;
  mixedGridModifier = self->_mixedGridModifier;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBRouteToMixedGridSwitcherModifier_scrollViewAttributes__block_invoke;
  v5[3] = &unk_2783A8CE0;
  v5[4] = self;
  v5[5] = &v6;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __58__SBRouteToMixedGridSwitcherModifier_scrollViewAttributes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) scrollViewAttributes];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (CGPoint)restingOffsetForScrollOffset:(CGPoint)offset velocity:(CGPoint)velocity
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_21F9DA6A3;
  v16 = *MEMORY[0x277CBF348];
  mixedGridModifier = self->_mixedGridModifier;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SBRouteToMixedGridSwitcherModifier_restingOffsetForScrollOffset_velocity___block_invoke;
  v9[3] = &unk_2783AEEC0;
  v9[4] = self;
  v9[5] = &v12;
  offsetCopy = offset;
  velocityCopy = velocity;
  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v9];
  v5 = v13[4];
  v6 = v13[5];
  _Block_object_dispose(&v12, 8);
  v7 = v5;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

uint64_t __76__SBRouteToMixedGridSwitcherModifier_restingOffsetForScrollOffset_velocity___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 168) restingOffsetForScrollOffset:*(a1 + 48) velocity:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

@end
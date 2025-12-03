@interface PXStoryViewLegibilityOverlayLayout
- (PXStoryViewLegibilityOverlayLayout)init;
- (PXStoryViewLegibilityOverlayLayout)initWithViewModel:(id)model;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_invalidateContent;
- (void)_updateContent;
- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)setAlphaOverride:(id)override;
- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference;
- (void)update;
@end

@implementation PXStoryViewLegibilityOverlayLayout

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_173407 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLegibilityOverlayLayout.m" lineNumber:177 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 0x18000002A020) != 0)
  {
    v11 = observableCopy;
    [(PXStoryViewLegibilityOverlayLayout *)self _invalidateContent];
    observableCopy = v11;
  }
}

- (void)setDetailedPlacementOverride:(id)override forItemReference:(id)reference
{
  if (override)
  {
    v5 = MEMORY[0x1E696AD98];
    [override legibilityOverlayAlpha];
    v6 = [v5 numberWithDouble:?];
    [(PXStoryViewLegibilityOverlayLayout *)self setAlphaOverride:v6];
  }

  else
  {

    [(PXStoryViewLegibilityOverlayLayout *)self setAlphaOverride:?];
  }
}

- (void)getDetailedPresentedPlacement:(id)placement forItemReference:(id)reference
{
  placementCopy = placement;
  [(PXStoryViewLegibilityOverlayLayout *)self alpha];
  [placementCopy setLegibilityOverlayAlpha:?];
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = [(PXStoryViewLegibilityOverlayLayout *)self viewModel:*&index];
  viewLayoutSpec = [v4 viewLayoutSpec];
  legibilityGradientImageConfiguration = [viewLayoutSpec legibilityGradientImageConfiguration];

  return legibilityGradientImageConfiguration;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_solidDimmingSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLegibilityOverlayLayout.m" lineNumber:149 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  v9 = +[PXStorySettings sharedInstance];
  wantsHighContrastColors = [v9 wantsHighContrastColors];

  if (wantsHighContrastColors)
  {
    [MEMORY[0x1E69DC888] yellowColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v11 = ;

  return v11;
}

- (void)_updateContent
{
  [(PXStoryViewLegibilityOverlayLayout *)self alpha];
  v4 = v3;
  alphaOverride = [(PXStoryViewLegibilityOverlayLayout *)self alphaOverride];
  v6 = alphaOverride;
  if (alphaOverride)
  {
    [alphaOverride floatValue];
    v4 = v7;
  }

  [(PXStoryViewLegibilityOverlayLayout *)self referenceSize];
  v9 = v8;
  v11 = v10;
  [(PXStoryViewLegibilityOverlayLayout *)self setContentSize:?];
  viewModel = [(PXStoryViewLegibilityOverlayLayout *)self viewModel];
  [(PXStoryViewLegibilityOverlayLayout *)self referenceDepth];
  v14 = v13;
  localNumberOfSprites = [(PXStoryViewLegibilityOverlayLayout *)self localNumberOfSprites];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__PXStoryViewLegibilityOverlayLayout__updateContent__block_invoke;
  v18[3] = &unk_1E773FC80;
  v16 = localNumberOfSprites << 32;
  v21 = v9;
  v22 = v11;
  v19 = viewModel;
  selfCopy = self;
  v23 = v4;
  v24 = v14;
  v17 = viewModel;
  [(PXStoryViewLegibilityOverlayLayout *)self modifySpritesInRange:v16 state:v18];
}

void __52__PXStoryViewLegibilityOverlayLayout__updateContent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) viewLayoutSpec];
  objc_claimAutoreleasedReturnValue();
  PXRectWithOriginAndSize();
}

- (void)_invalidateContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLegibilityOverlayLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryViewLegibilityOverlayLayout.m" lineNumber:105 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryViewLegibilityOverlayLayout *)self setNeedsUpdate];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLegibilityOverlayLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXStoryViewLegibilityOverlayLayout.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryViewLegibilityOverlayLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryViewLegibilityOverlayLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXStoryViewLegibilityOverlayLayout.m" lineNumber:100 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXStoryViewLegibilityOverlayLayout;
  [(PXStoryViewLegibilityOverlayLayout *)&v9 update];
}

- (void)setAlphaOverride:(id)override
{
  overrideCopy = override;
  v6 = overrideCopy;
  if (self->_alphaOverride != overrideCopy)
  {
    v8 = overrideCopy;
    v7 = [(NSNumber *)overrideCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_alphaOverride, override);
      [(PXStoryViewLegibilityOverlayLayout *)self _invalidateContent];
      v6 = v8;
    }
  }
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryViewLegibilityOverlayLayout;
  [(PXStoryViewLegibilityOverlayLayout *)&v3 referenceSizeDidChange];
  [(PXStoryViewLegibilityOverlayLayout *)self _invalidateContent];
}

- (PXStoryViewLegibilityOverlayLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PXStoryViewLegibilityOverlayLayout;
  v6 = [(PXStoryViewLegibilityOverlayLayout *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(PXStoryViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_173407];
    [(PXStoryViewLegibilityOverlayLayout *)v7 setContentSource:v7];
    v7->_solidDimmingSpriteIndex = [(PXStoryViewLegibilityOverlayLayout *)v7 addSpriteWithInitialState:&__block_literal_global_173436];
    LODWORD(v8) = 1.0;
    v7->_gradientResizableCapInsetsIndex = [(PXStoryViewLegibilityOverlayLayout *)v7 addResizableCapInsets:0.0, 0.0, v8, 0.0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PXStoryViewLegibilityOverlayLayout_initWithViewModel___block_invoke_2;
    aBlock[3] = &unk_1E773FC58;
    v9 = v7;
    v13 = v9;
    v10 = _Block_copy(aBlock);
    v9->_topGradientDimmingSpriteIndex = v10[2](v10, 0);
    v9->_bottomGradientDimmingSpriteIndex = v10[2](v10, 1);
  }

  return v7;
}

uint64_t __56__PXStoryViewLegibilityOverlayLayout_initWithViewModel___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PXStoryViewLegibilityOverlayLayout_initWithViewModel___block_invoke_3;
  v6[3] = &unk_1E773FC30;
  v7 = v3;
  v8 = a2;
  v4 = [v7 addSpriteWithInitialState:v6];

  return v4;
}

__n128 __56__PXStoryViewLegibilityOverlayLayout_initWithViewModel___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v4;
  v5 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v5;
  v6 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v6;
  v7 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v7;
  v8 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v8;
  v9 = *(a3 + 24);
  *(v9 + 68) = *(*(a1 + 32) + 884);
  if (*(a1 + 40) == 1)
  {
    *(v9 + 70) = 2;
  }

  v10 = *(a3 + 32);
  result = *off_1E7722040;
  v12 = *(off_1E7722040 + 1);
  *v10 = *off_1E7722040;
  *(v10 + 16) = v12;
  *(v10 + 32) = *(off_1E7722040 + 4);
  v13 = *(a3 + 32);
  *(v13 + 1) = 1;
  *(v13 + 34) = 2;
  return result;
}

double __56__PXStoryViewLegibilityOverlayLayout_initWithViewModel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v4;
  v5 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v5;
  v6 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v6;
  v7 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v7;
  v8 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v8;
  v9 = *(a3 + 32);
  *(v9 + 1) = 5;
  __asm { FMOV            V0.2S, #1.0 }

  *(v9 + 8) = result;
  return result;
}

- (PXStoryViewLegibilityOverlayLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryViewLegibilityOverlayLayout.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXStoryViewLegibilityOverlayLayout init]"}];

  abort();
}

@end
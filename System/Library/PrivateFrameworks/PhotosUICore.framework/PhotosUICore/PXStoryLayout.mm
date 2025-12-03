@interface PXStoryLayout
- (BOOL)allowsRepeatedSublayoutsUpdates;
- (PXGLayout)accessoryItemPlacementLayout;
- (PXStoryFullsizeLayout)currentFullsizePlayerLayout;
- (PXStoryLayout)init;
- (PXStoryLayout)initWithModel:(id)model;
- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)diagnosticsItemProvidersInRect:(CGRect)rect;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)itemReference;
- (id)placementInContext:(id)context forItemReference:(id)reference;
- (id)shadowForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_acceptAnyPendingSizeChange;
- (void)_invalidateAXGroupRole;
- (void)_invalidateContent;
- (void)_invalidateContentCapture;
- (void)_invalidateOverlayBlurEffect;
- (void)_invalidateShadow;
- (void)_setFrame:(CGRect)frame relativeZPosition:(double)position depth:(double)depth forSublayoutAtIndex:(int64_t)index;
- (void)_updateAXGroupRole;
- (void)_updateContent;
- (void)_updateContentCapture;
- (void)_updateOverlayBlurEffect;
- (void)_updateShadow;
- (void)alphaDidChange;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container;
- (void)didUpdate;
- (void)entityManagerDidChange;
- (void)enumerateSublayoutsForDetailedPlacement:(id)placement ofItemWithReference:(id)reference usingBlock:(id)block;
- (void)hostingControllerDidChangeReferenceSize:(CGSize)size;
- (void)hostingControllerProposedReferenceSize:(id)size;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setDiagnosticOverlayLayout:(id)layout;
- (void)setFullsizeContentPlacementOverride:(id)override;
- (void)setOverlayBlurEffect:(id)effect;
- (void)setPlacementOverride:(id)override forItemReference:(id)reference;
- (void)setRelativeZPositionAboveLegibilityGradients:(double)gradients;
- (void)setShadow:(id)shadow;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXStoryLayout

- (PXGLayout)accessoryItemPlacementLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryItemPlacementLayout);

  return WeakRetained;
}

- (id)diagnosticsItemProvidersInRect:(CGRect)rect
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  model = [(PXStoryLayout *)self model];
  currentAssetCollection = [model currentAssetCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [PXDiagnosticsItemProvider providerWithItem:currentAssetCollection identifier:@"PXDiagnosticsItemIdentifierAssetCollection"];
    [v4 addObject:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [PXDiagnosticsItemProvider providerWithItem:currentAssetCollection identifier:@"PXDiagnosticsItemIdentifierMemory"];
    [v4 addObject:v8];
  }

  v9 = [v4 copy];

  return v9;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)container
{
  containerCopy = container;
  currentFullsizePlayerLayout = [(PXStoryLayout *)self currentFullsizePlayerLayout];
  [containerCopy addSubprovider:currentFullsizePlayerLayout];
}

- (void)enumerateSublayoutsForDetailedPlacement:(id)placement ofItemWithReference:(id)reference usingBlock:(id)block
{
  referenceCopy = reference;
  blockCopy = block;
  itemReference = [(PXStoryLayout *)self itemReference];
  v9 = [referenceCopy isEqual:itemReference];

  if (v9)
  {
    currentFullsizePlayerLayout = [(PXStoryLayout *)self currentFullsizePlayerLayout];
    blockCopy[2](blockCopy, currentFullsizePlayerLayout, referenceCopy);

    thumbnailChromeLayout = [(PXStoryLayout *)self thumbnailChromeLayout];
    if (thumbnailChromeLayout)
    {
      blockCopy[2](blockCopy, thumbnailChromeLayout, referenceCopy);
    }
  }
}

- (void)setPlacementOverride:(id)override forItemReference:(id)reference
{
  v12 = *MEMORY[0x1E69E9840];
  overrideCopy = override;
  referenceCopy = reference;
  itemReference = [(PXStoryLayout *)self itemReference];
  v9 = [referenceCopy isEqual:itemReference];

  if (!v9)
  {
    PXAssertGetLog();
  }

  if ([overrideCopy hasGeometry])
  {
    v10 = overrideCopy;
  }

  else
  {
    v10 = 0;
  }

  [(PXStoryLayout *)self setFullsizeContentPlacementOverride:v10];
  [(PXStoryLayout *)self setDetailedPlacementOverride:overrideCopy forItemReference:referenceCopy];
  accessoryItemPlacementLayout = [(PXStoryLayout *)self accessoryItemPlacementLayout];
  [accessoryItemPlacementLayout setDetailedPlacementOverride:overrideCopy forItemReference:referenceCopy];
}

- (id)placementInContext:(id)context forItemReference:(id)reference
{
  v15 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  referenceCopy = reference;
  itemReference = [(PXStoryLayout *)self itemReference];
  v9 = [referenceCopy isEqual:itemReference];

  if (!v9)
  {
    PXAssertGetLog();
  }

  v10 = [off_1E7721610 alloc];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__PXStoryLayout_placementInContext_forItemReference___block_invoke;
  v13[3] = &unk_1E7740C18;
  v13[4] = self;
  v14 = referenceCopy;
  v11 = [v10 initWithContext:contextCopy configuration:v13];

  return v11;
}

void __53__PXStoryLayout_placementInContext_forItemReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  [v3 setRect:v4[129] velocity:v4[130] inLayout:{v4[131], v4[132], v4[133], v4[134], v4[135], v4[136]}];
  v5 = [*(a1 + 32) model];
  v6 = [v5 visibleDisplayAssets];

  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    [v12 setDisplayedAsset:v7];
  }

  [*(a1 + 32) getDetailedPresentedPlacement:v12 forItemReference:*(a1 + 40)];
  v8 = [*(a1 + 32) accessoryItemPlacementLayout];
  [v8 getDetailedPresentedPlacement:v12 forItemReference:*(a1 + 40)];

  v9 = [*(a1 + 32) model];
  v10 = [v9 options];
  v11 = 0.0;
  if ((v10 & 2) == 0)
  {
    *&v11 = 1.0;
  }

  [v12 setSoundVolume:v11];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_180468 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:639 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((change & 0x10000) != 0)
  {
    [(PXStoryLayout *)self _invalidateAXGroupRole];
  }

  if ((change & 0x2000) != 0)
  {
    [(PXStoryLayout *)self _invalidateShadow];
  }

  if ((change & 0x8000000000410000) != 0)
  {
    [(PXStoryLayout *)self _invalidateContent];
  }

  if ((change & 0x20) != 0)
  {
    [(PXStoryLayout *)self _acceptAnyPendingSizeChange];
  }
}

- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if ([(PXStoryLayout *)self shadowSpriteIndex]!= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:612 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  model = [(PXStoryLayout *)self model];
  layoutSpec = [model layoutSpec];
  [layoutSpec thumbnailCornerRadius];
  v11 = v10;

  return v11;
}

- (id)shadowForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if ([(PXStoryLayout *)self shadowSpriteIndex]!= index)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:604 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  shadow = [(PXStoryLayout *)self shadow];

  return shadow;
}

- (void)_acceptAnyPendingSizeChange
{
  pendingSizeChange = [(PXStoryLayout *)self pendingSizeChange];
  if (pendingSizeChange)
  {
    [(PXStoryLayout *)self setPendingSizeChange:0];
    [pendingSizeChange willAccept];
    layoutQueue = [(PXStoryLayout *)self layoutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PXStoryLayout__acceptAnyPendingSizeChange__block_invoke;
    block[3] = &unk_1E774C648;
    v6 = pendingSizeChange;
    dispatch_async(layoutQueue, block);
  }
}

- (void)hostingControllerDidChangeReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = PXStoryLayout;
  [(PXGLayout *)&v9 hostingControllerDidChangeReferenceSize:?];
  model = [(PXStoryLayout *)self model];
  extendedTraitCollection = [model extendedTraitCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXStoryLayout_hostingControllerDidChangeReferenceSize___block_invoke;
    v8[3] = &__block_descriptor_48_e49_v16__0___PXStoryMutableExtendedTraitCollection__8l;
    *&v8[4] = width;
    *&v8[5] = height;
    [extendedTraitCollection performChanges:v8];
  }
}

- (void)hostingControllerProposedReferenceSize:(id)size
{
  size;
  [(PXStoryLayout *)self referenceSize];
  PXSizeIsEmpty();
}

- (void)_setFrame:(CGRect)frame relativeZPosition:(double)position depth:(double)depth forSublayoutAtIndex:(int64_t)index
{
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    [(PXStoryLayout *)self referenceDepth];
    v16 = v15;
    [(PXGAbsoluteCompositeLayout *)self setFrame:index forSublayoutAtIndex:x, y, width, height];
    [(PXGAbsoluteCompositeLayout *)self setZPosition:index forSublayoutAtIndex:-(position * v16)];

    [(PXGAbsoluteCompositeLayout *)self setReferenceDepth:index forSublayoutAtIndex:v16 * depth];
  }
}

- (void)_updateAXGroupRole
{
  model = [(PXStoryLayout *)self model];
  v4 = [model viewMode] != 4;

  axGroup = [(PXStoryLayout *)self axGroup];
  [axGroup setAxRole:v4];
}

- (void)_invalidateAXGroupRole
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateAXGroupRole]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:534 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentCapture
{
  if (self->_contentCaptureSpriteIndex != -1)
  {
    overlayBlurEffect = [(PXStoryLayout *)self overlayBlurEffect];

    if (overlayBlurEffect)
    {
      [(PXStoryLayout *)self visibleRect];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [(PXStoryLayout *)self displayScale];
      contentCaptureSpriteIndex = self->_contentCaptureSpriteIndex;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __38__PXStoryLayout__updateContentCapture__block_invoke;
      v14[3] = &unk_1E7740BD0;
      v14[5] = v5;
      v14[6] = v7;
      v14[7] = v9;
      v14[8] = v11;
      v14[9] = v13;
      v14[4] = self;
      [(PXStoryLayout *)self modifySpritesInRange:contentCaptureSpriteIndex | 0x100000000 fullState:v14];
    }
  }
}

void __38__PXStoryLayout__updateContentCapture__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v27.origin.x = v6;
  v27.origin.y = v7;
  v27.size.width = v8;
  v27.size.height = v9;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = v6;
  v28.origin.y = v7;
  v28.size.width = v8;
  v28.size.height = v9;
  MidY = CGRectGetMidY(v28);
  v29.origin.x = v6;
  v29.origin.y = v7;
  v29.size.width = v8;
  v29.size.height = v9;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v6;
  v30.origin.y = v7;
  v30.size.width = v8;
  v30.size.height = v9;
  Height = CGRectGetHeight(v30);
  v13.f64[0] = Width;
  v13.f64[1] = Height;
  *v5 = MidX;
  *&v5[1] = MidY;
  v5[2] = 0xBFF0000000000000;
  v5[3] = vcvt_f32_f64(v13);
  v14 = *(a3 + 24);
  v15 = *(off_1E7722048 + 1);
  *v14 = *off_1E7722048;
  v14[1] = v15;
  v16 = *(off_1E7722048 + 5);
  v14[4] = *(off_1E7722048 + 4);
  v14[5] = v16;
  v17 = *(off_1E7722048 + 3);
  v14[2] = *(off_1E7722048 + 2);
  v14[3] = v17;
  v18 = *(off_1E7722048 + 9);
  v14[8] = *(off_1E7722048 + 8);
  v14[9] = v18;
  v19 = *(off_1E7722048 + 7);
  v14[6] = *(off_1E7722048 + 6);
  v14[7] = v19;
  v20 = *(a3 + 32);
  v20->i8[1] = 9;
  *&v15 = *(a1 + 72);
  v20[1] = vmul_n_f32(v5[3], *&v15);
  *(*(a3 + 32) + 32) = 1;
  v21 = **(a3 + 8);
  v22 = [*(a1 + 32) entityManager];
  v23 = [v22 effectComponent];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __38__PXStoryLayout__updateContentCapture__block_invoke_2;
  v25[3] = &unk_1E7740BA8;
  v26 = v21;
  v25[4] = *(a1 + 32);
  [v23 performChanges:v25];
}

void __38__PXStoryLayout__updateContentCapture__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 overlayBlurEffect];
  LODWORD(v3) = [v6 effectId];
  v5 = [v4 mutableEffectIds];

  *(v5 + 4 * *(a1 + 40)) = v3;
}

- (void)_invalidateContentCapture
{
  if (self->_isPerformingUpdate)
  {

    [(PXStoryLayout *)self _updateContentCapture];
    return;
  }

  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_10:
      p_updateFlags->needsUpdate = needsUpdate | 0x80;
      return;
    }

LABEL_9:
    if ((self->_updateFlags.updated & 0x80) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateContentCapture]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:481 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_9;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 128;
  if (!willPerformUpdate)
  {

    [(PXStoryLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  [(PXStoryLayout *)self referenceSize];
  [(PXGAbsoluteCompositeLayout *)self setContentSize:?];
  PXRectWithOriginAndSize();
}

void __31__PXStoryLayout__updateContent__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(a1 + 32) shadowSpriteIndex];
  [*(a1 + 32) shadow];
  if (objc_claimAutoreleasedReturnValue())
  {
    PXGConfigureShadowSprite();
  }

  *(a4 + 160 * v6) = 0;
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
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:391 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryLayout *)self setNeedsUpdate];
  }
}

- (void)_updateOverlayBlurEffect
{
  model = [(PXStoryLayout *)self model];
  configuration = [model configuration];
  [configuration overlayBlurRadius];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    entityManager = [(PXStoryLayout *)self entityManager];
    overlayBlurEffect = [(PXStoryLayout *)self overlayBlurEffect];
    entityManager2 = [overlayBlurEffect entityManager];

    if (entityManager2 == entityManager)
    {
      overlayBlurEffect2 = [(PXStoryLayout *)self overlayBlurEffect];
    }

    else
    {
      overlayBlurEffect2 = [[off_1E77215E8 alloc] initWithEntityManager:entityManager];
      [overlayBlurEffect2 setRadius:v6];
      [overlayBlurEffect2 setExposure:0.0];
    }

    v10 = overlayBlurEffect2;
  }

  v12 = v10;
  [(PXStoryLayout *)self setOverlayBlurEffect:v10];
}

- (void)_invalidateOverlayBlurEffect
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateOverlayBlurEffect]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:371 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryLayout *)self setNeedsUpdate];
  }
}

- (void)_updateShadow
{
  model = [(PXStoryLayout *)self model];
  layoutSpec = [model layoutSpec];
  thumbnailShadow = [layoutSpec thumbnailShadow];
  [(PXStoryLayout *)self setShadow:thumbnailShadow];
}

- (void)_invalidateShadow
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateShadow]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:363 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXStoryLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryLayout;
  [(PXGCompositeLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryLayout.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  self->_isPerformingUpdate = 1;
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [currentHandler handleFailureInFunction:v10 file:@"PXStoryLayout.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 4;
    if ((needsUpdate & 4) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryLayout *)self _updateShadow];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
        [currentHandler2 handleFailureInFunction:v12 file:@"PXStoryLayout.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v5 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [currentHandler3 handleFailureInFunction:v14 file:@"PXStoryLayout.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x40uLL;
    if ((v6 & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXStoryLayout *)self _updateOverlayBlurEffect];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [currentHandler4 handleFailureInFunction:v16 file:@"PXStoryLayout.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x80uLL;
    if ((v7 & 0x80) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXStoryLayout *)self _updateContentCapture];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [currentHandler5 handleFailureInFunction:v18 file:@"PXStoryLayout.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v8 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryLayout *)self _updateAXGroupRole];
      v8 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v8)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [currentHandler6 handleFailureInFunction:v20 file:@"PXStoryLayout.m" lineNumber:352 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v21.receiver = self;
  v21.super_class = PXStoryLayout;
  [(PXGCompositeLayout *)&v21 update];
  self->_isPerformingUpdate = 0;
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryLayout;
  [(PXGCompositeLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryLayout.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (BOOL)allowsRepeatedSublayoutsUpdates
{
  model = [(PXStoryLayout *)self model];
  layoutSpec = [model layoutSpec];
  thumbnailChromeShowsPlayButton = [layoutSpec thumbnailChromeShowsPlayButton];

  return thumbnailChromeShowsPlayButton;
}

- (void)setDiagnosticOverlayLayout:(id)layout
{
  layoutCopy = layout;
  v6 = layoutCopy;
  if (self->_diagnosticOverlayLayout != layoutCopy)
  {
    v9 = layoutCopy;
    v7 = [(PXGLayout *)layoutCopy isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      if (self->_diagnosticOverlayLayoutIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(PXStoryLayout *)self removeSublayoutAtIndex:?];
      }

      objc_storeStrong(&self->_diagnosticOverlayLayout, layout);
      if (self->_diagnosticOverlayLayout)
      {
        v8 = [(PXStoryLayout *)self addSublayout:?];
      }

      else
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v6 = v9;
      self->_diagnosticOverlayLayoutIndex = v8;
    }
  }
}

- (PXStoryFullsizeLayout)currentFullsizePlayerLayout
{
  thumbnailFullsizeLayout = [(PXStoryLayout *)self thumbnailFullsizeLayout];
  v4 = thumbnailFullsizeLayout;
  if (thumbnailFullsizeLayout)
  {
    dominantFullsizePlayerLayout = thumbnailFullsizeLayout;
  }

  else
  {
    styleSwitchingFullsizeLayout = [(PXStoryLayout *)self styleSwitchingFullsizeLayout];
    dominantFullsizePlayerLayout = [styleSwitchingFullsizeLayout dominantFullsizePlayerLayout];
  }

  return dominantFullsizePlayerLayout;
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  itemReference = [(PXStoryLayout *)self itemReference];
  v6 = [referenceCopy isEqual:itemReference];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [[off_1E7721658 alloc] initWithOriginalItemPlacementController:self originalItemReference:itemReference];
  }

  v8 = selfCopy;

  return v8;
}

- (id)itemReference
{
  model = [(PXStoryLayout *)self model];
  currentAssetCollection = [model currentAssetCollection];

  return currentAssetCollection;
}

- (void)setRelativeZPositionAboveLegibilityGradients:(double)gradients
{
  if (self->_relativeZPositionAboveLegibilityGradients != gradients)
  {
    self->_relativeZPositionAboveLegibilityGradients = gradients;
    [(PXStoryLayout *)self _invalidateContent];
  }
}

- (void)setFullsizeContentPlacementOverride:(id)override
{
  overrideCopy = override;
  v6 = overrideCopy;
  if (self->_fullsizeContentPlacementOverride != overrideCopy && ([(PXGItemPlacement *)overrideCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fullsizeContentPlacementOverride, override);
    [(PXStoryLayout *)self _invalidateContent];
    if (v6)
    {
      model = [(PXStoryLayout *)self model];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__PXStoryLayout_setFullsizeContentPlacementOverride___block_invoke;
      v8[3] = &unk_1E77485B0;
      v9 = v6;
      [model performChanges:v8];
    }
  }
}

void __53__PXStoryLayout_setFullsizeContentPlacementOverride___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 soundVolume];
  [v3 setVolumeDuringViewControllerTransition:?];
}

- (void)setOverlayBlurEffect:(id)effect
{
  effectCopy = effect;
  v6 = effectCopy;
  if (self->_overlayBlurEffect != effectCopy)
  {
    v8 = effectCopy;
    v7 = [(PXGExposureBlurEffect *)effectCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_overlayBlurEffect, effect);
      [(PXStoryLayout *)self _invalidateContentCapture];
      v6 = v8;
    }
  }
}

- (void)setShadow:(id)shadow
{
  shadowCopy = shadow;
  v5 = shadowCopy;
  if (self->_shadow != shadowCopy)
  {
    v9 = shadowCopy;
    v6 = [(NSShadow *)shadowCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSShadow *)v9 copy];
      shadow = self->_shadow;
      self->_shadow = v7;

      [(PXStoryLayout *)self _invalidateContent];
      v5 = v9;
    }
  }
}

- (void)entityManagerDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryLayout;
  [(PXStoryLayout *)&v3 entityManagerDidChange];
  [(PXStoryLayout *)self _invalidateOverlayBlurEffect];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryLayout *)self _invalidateContent];
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryLayout;
  [(PXStoryLayout *)&v3 alphaDidChange];
  [(PXStoryLayout *)self _invalidateContent];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryLayout;
  [(PXGCompositeLayout *)&v3 visibleRectDidChange];
  [(PXStoryLayout *)self _invalidateContentCapture];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryLayout *)self _invalidateContent];
}

- (PXStoryLayout)initWithModel:(id)model
{
  modelCopy = model;
  v38.receiver = self;
  v38.super_class = PXStoryLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    [(PXStoryModel *)v7->_model registerChangeObserver:v7 context:ModelObservationContext_180468];
    options = [modelCopy options];
    configuration = [modelCopy configuration];
    isExportPreview = [configuration isExportPreview];
    isPresentedForAirPlay = [configuration isPresentedForAirPlay];
    viewMode = [modelCopy viewMode];
    v37 = viewMode;
    if ([configuration options] & 0x400 | options & 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = viewMode == 3;
    }

    v13 = !v12;
    if (options & 1) != 0 || ([modelCopy isAsync])
    {
      v14 = isExportPreview;
      LODWORD(v15) = 0;
    }

    else
    {
      v14 = isExportPreview;
      v15 = (options >> 1) & 1;
    }

    shouldFadeToBlackAtEnd = [configuration shouldFadeToBlackAtEnd];
    v17 = [[PXStoryScrollLayout alloc] initWithModel:v7->_model];
    scrollLayout = v7->_scrollLayout;
    v7->_scrollLayout = v17;

    if (v13)
    {
      v19 = [(PXStoryLayout *)v7 addSublayout:v7->_scrollLayout];
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v20 = shouldFadeToBlackAtEnd | options;
    v7->_scrollLayoutIndex = v19;
    if (v15)
    {
      v21 = [[PXStoryThumbnailChromeLayout alloc] initWithModel:modelCopy];
      thumbnailChromeLayout = v7->_thumbnailChromeLayout;
      v7->_thumbnailChromeLayout = v21;

      v23 = [(PXStoryLayout *)v7 addSublayout:v7->_thumbnailChromeLayout];
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = v20 | isPresentedForAirPlay | v14;
    v7->_thumbnailChromeLayoutIndex = v23;
    v25 = (v37 == 3) | v14;
    v26 = &OBJC_IVAR___PXStoryLayout__thumbnailFullsizeLayout;
    v27 = off_1E771FEA0;
    if ((v25 & 1) == 0 && ![modelCopy isAsync])
    {
      v27 = off_1E7720318;
      v26 = &OBJC_IVAR___PXStoryLayout__styleSwitchingFullsizeLayout;
    }

    v28 = [objc_alloc(*v27) initWithModel:v7->_model];
    v29 = *v26;
    v30 = *(&v7->super.super.super.super.isa + v29);
    *(&v7->super.super.super.super.isa + v29) = v28;

    objc_storeStrong(&v7->_fullsizeLayout, *(&v7->super.super.super.super.isa + v29));
    v7->_fullsizeLayoutIndex = [(PXStoryLayout *)v7 addSublayout:v7->_fullsizeLayout];
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (v24)
    {
      v32 = [[PXStoryFadeOverlayLayout alloc] initWithModel:v7->_model];
      fadeOverlayLayout = v7->_fadeOverlayLayout;
      v7->_fadeOverlayLayout = v32;

      v31 = [(PXStoryLayout *)v7 addSublayout:v7->_fadeOverlayLayout];
    }

    v7->_fadeOverlayLayoutIndex = v31;
    v7->_diagnosticOverlayLayoutIndex = 0x7FFFFFFFFFFFFFFFLL;
    [(PXStoryLayout *)v7 _invalidateContent];
    v7->_shadowSpriteIndex = [(PXStoryLayout *)v7 addSpriteWithInitialState:0];
    [configuration overlayBlurRadius];
    if (v34 <= 0.0)
    {
      v7->_contentCaptureSpriteIndex = -1;
    }

    else
    {
      v7->_contentCaptureSpriteIndex = [(PXStoryLayout *)v7 addSpriteWithInitialState:0];
      [(PXStoryLayout *)v7 _invalidateOverlayBlurEffect];
    }

    [(PXStoryLayout *)v7 setContentSource:v7];
    [(PXStoryLayout *)v7 _invalidateShadow];
    [(PXStoryLayout *)v7 _invalidateAXGroupRole];
  }

  return v7;
}

- (PXStoryLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:109 description:{@"%s is not available as initializer", "-[PXStoryLayout init]"}];

  abort();
}

@end
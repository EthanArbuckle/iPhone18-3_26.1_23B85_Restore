@interface PXStoryLayout
- (BOOL)allowsRepeatedSublayoutsUpdates;
- (PXGLayout)accessoryItemPlacementLayout;
- (PXStoryFullsizeLayout)currentFullsizePlayerLayout;
- (PXStoryLayout)init;
- (PXStoryLayout)initWithModel:(id)a3;
- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)diagnosticsItemProvidersInRect:(CGRect)a3;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)itemReference;
- (id)placementInContext:(id)a3 forItemReference:(id)a4;
- (id)shadowForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_acceptAnyPendingSizeChange;
- (void)_invalidateAXGroupRole;
- (void)_invalidateContent;
- (void)_invalidateContentCapture;
- (void)_invalidateOverlayBlurEffect;
- (void)_invalidateShadow;
- (void)_setFrame:(CGRect)a3 relativeZPosition:(double)a4 depth:(double)a5 forSublayoutAtIndex:(int64_t)a6;
- (void)_updateAXGroupRole;
- (void)_updateContent;
- (void)_updateContentCapture;
- (void)_updateOverlayBlurEffect;
- (void)_updateShadow;
- (void)alphaDidChange;
- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3;
- (void)didUpdate;
- (void)entityManagerDidChange;
- (void)enumerateSublayoutsForDetailedPlacement:(id)a3 ofItemWithReference:(id)a4 usingBlock:(id)a5;
- (void)hostingControllerDidChangeReferenceSize:(CGSize)a3;
- (void)hostingControllerProposedReferenceSize:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setDiagnosticOverlayLayout:(id)a3;
- (void)setFullsizeContentPlacementOverride:(id)a3;
- (void)setOverlayBlurEffect:(id)a3;
- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setRelativeZPositionAboveLegibilityGradients:(double)a3;
- (void)setShadow:(id)a3;
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

- (id)diagnosticsItemProvidersInRect:(CGRect)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(PXStoryLayout *)self model];
  v6 = [v5 currentAssetCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [PXDiagnosticsItemProvider providerWithItem:v6 identifier:@"PXDiagnosticsItemIdentifierAssetCollection"];
    [v4 addObject:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [PXDiagnosticsItemProvider providerWithItem:v6 identifier:@"PXDiagnosticsItemIdentifierMemory"];
    [v4 addObject:v8];
  }

  v9 = [v4 copy];

  return v9;
}

- (void)collectTapToRadarDiagnosticsIntoContainer:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryLayout *)self currentFullsizePlayerLayout];
  [v4 addSubprovider:v5];
}

- (void)enumerateSublayoutsForDetailedPlacement:(id)a3 ofItemWithReference:(id)a4 usingBlock:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(PXStoryLayout *)self itemReference];
  v9 = [v12 isEqual:v8];

  if (v9)
  {
    v10 = [(PXStoryLayout *)self currentFullsizePlayerLayout];
    v7[2](v7, v10, v12);

    v11 = [(PXStoryLayout *)self thumbnailChromeLayout];
    if (v11)
    {
      v7[2](v7, v11, v12);
    }
  }
}

- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryLayout *)self itemReference];
  v9 = [v7 isEqual:v8];

  if (!v9)
  {
    PXAssertGetLog();
  }

  if ([v6 hasGeometry])
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  [(PXStoryLayout *)self setFullsizeContentPlacementOverride:v10];
  [(PXStoryLayout *)self setDetailedPlacementOverride:v6 forItemReference:v7];
  v11 = [(PXStoryLayout *)self accessoryItemPlacementLayout];
  [v11 setDetailedPlacementOverride:v6 forItemReference:v7];
}

- (id)placementInContext:(id)a3 forItemReference:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXStoryLayout *)self itemReference];
  v9 = [v7 isEqual:v8];

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
  v14 = v7;
  v11 = [v10 initWithContext:v6 configuration:v13];

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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (ModelObservationContext_180468 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:639 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((a4 & 0x10000) != 0)
  {
    [(PXStoryLayout *)self _invalidateAXGroupRole];
  }

  if ((a4 & 0x2000) != 0)
  {
    [(PXStoryLayout *)self _invalidateShadow];
  }

  if ((a4 & 0x8000000000410000) != 0)
  {
    [(PXStoryLayout *)self _invalidateContent];
  }

  if ((a4 & 0x20) != 0)
  {
    [(PXStoryLayout *)self _acceptAnyPendingSizeChange];
  }
}

- (double)cornerRadiusForShadowSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if ([(PXStoryLayout *)self shadowSpriteIndex]!= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:612 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = [(PXStoryLayout *)self model];
  v9 = [v8 layoutSpec];
  [v9 thumbnailCornerRadius];
  v11 = v10;

  return v11;
}

- (id)shadowForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if ([(PXStoryLayout *)self shadowSpriteIndex]!= a3)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:604 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = [(PXStoryLayout *)self shadow];

  return v8;
}

- (void)_acceptAnyPendingSizeChange
{
  v3 = [(PXStoryLayout *)self pendingSizeChange];
  if (v3)
  {
    [(PXStoryLayout *)self setPendingSizeChange:0];
    [v3 willAccept];
    v4 = [(PXStoryLayout *)self layoutQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__PXStoryLayout__acceptAnyPendingSizeChange__block_invoke;
    block[3] = &unk_1E774C648;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

- (void)hostingControllerDidChangeReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = PXStoryLayout;
  [(PXGLayout *)&v9 hostingControllerDidChangeReferenceSize:?];
  v6 = [(PXStoryLayout *)self model];
  v7 = [v6 extendedTraitCollection];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PXStoryLayout_hostingControllerDidChangeReferenceSize___block_invoke;
    v8[3] = &__block_descriptor_48_e49_v16__0___PXStoryMutableExtendedTraitCollection__8l;
    *&v8[4] = width;
    *&v8[5] = height;
    [v7 performChanges:v8];
  }
}

- (void)hostingControllerProposedReferenceSize:(id)a3
{
  a3;
  [(PXStoryLayout *)self referenceSize];
  PXSizeIsEmpty();
}

- (void)_setFrame:(CGRect)a3 relativeZPosition:(double)a4 depth:(double)a5 forSublayoutAtIndex:(int64_t)a6
{
  if (a6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    [(PXStoryLayout *)self referenceDepth];
    v16 = v15;
    [(PXGAbsoluteCompositeLayout *)self setFrame:a6 forSublayoutAtIndex:x, y, width, height];
    [(PXGAbsoluteCompositeLayout *)self setZPosition:a6 forSublayoutAtIndex:-(a4 * v16)];

    [(PXGAbsoluteCompositeLayout *)self setReferenceDepth:a6 forSublayoutAtIndex:v16 * a5];
  }
}

- (void)_updateAXGroupRole
{
  v3 = [(PXStoryLayout *)self model];
  v4 = [v3 viewMode] != 4;

  v5 = [(PXStoryLayout *)self axGroup];
  [v5 setAxRole:v4];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateAXGroupRole]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:534 description:{@"invalidating %lu after it already has been updated", 32}];

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
    v3 = [(PXStoryLayout *)self overlayBlurEffect];

    if (v3)
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateContentCapture]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:481 description:{@"invalidating %lu after it already has been updated", 128}];

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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:391 description:{@"invalidating %lu after it already has been updated", 8}];

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
  v3 = [(PXStoryLayout *)self model];
  v4 = [v3 configuration];
  [v4 overlayBlurRadius];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v7 = [(PXStoryLayout *)self entityManager];
    v8 = [(PXStoryLayout *)self overlayBlurEffect];
    v9 = [v8 entityManager];

    if (v9 == v7)
    {
      v11 = [(PXStoryLayout *)self overlayBlurEffect];
    }

    else
    {
      v11 = [[off_1E77215E8 alloc] initWithEntityManager:v7];
      [v11 setRadius:v6];
      [v11 setExposure:0.0];
    }

    v10 = v11;
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateOverlayBlurEffect]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:371 description:{@"invalidating %lu after it already has been updated", 64}];

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
  v5 = [(PXStoryLayout *)self model];
  v3 = [v5 layoutSpec];
  v4 = [v3 thumbnailShadow];
  [(PXStoryLayout *)self setShadow:v4];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout _invalidateShadow]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryLayout.m" lineNumber:363 description:{@"invalidating %lu after it already has been updated", 4}];

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
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryLayout.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXStoryLayout.m" lineNumber:331 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
        [v11 handleFailureInFunction:v12 file:@"PXStoryLayout.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXStoryLayout.m" lineNumber:338 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [v15 handleFailureInFunction:v16 file:@"PXStoryLayout.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXStoryLayout.m" lineNumber:349 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXStoryLayout.m" lineNumber:352 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryLayout.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (BOOL)allowsRepeatedSublayoutsUpdates
{
  v2 = [(PXStoryLayout *)self model];
  v3 = [v2 layoutSpec];
  v4 = [v3 thumbnailChromeShowsPlayButton];

  return v4;
}

- (void)setDiagnosticOverlayLayout:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_diagnosticOverlayLayout != v5)
  {
    v9 = v5;
    v7 = [(PXGLayout *)v5 isEqual:?];
    v6 = v9;
    if ((v7 & 1) == 0)
    {
      if (self->_diagnosticOverlayLayoutIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(PXStoryLayout *)self removeSublayoutAtIndex:?];
      }

      objc_storeStrong(&self->_diagnosticOverlayLayout, a3);
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
  v3 = [(PXStoryLayout *)self thumbnailFullsizeLayout];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PXStoryLayout *)self styleSwitchingFullsizeLayout];
    v5 = [v6 dominantFullsizePlayerLayout];
  }

  return v5;
}

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryLayout *)self itemReference];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v7 = [[off_1E7721658 alloc] initWithOriginalItemPlacementController:self originalItemReference:v5];
  }

  v8 = v7;

  return v8;
}

- (id)itemReference
{
  v2 = [(PXStoryLayout *)self model];
  v3 = [v2 currentAssetCollection];

  return v3;
}

- (void)setRelativeZPositionAboveLegibilityGradients:(double)a3
{
  if (self->_relativeZPositionAboveLegibilityGradients != a3)
  {
    self->_relativeZPositionAboveLegibilityGradients = a3;
    [(PXStoryLayout *)self _invalidateContent];
  }
}

- (void)setFullsizeContentPlacementOverride:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_fullsizeContentPlacementOverride != v5 && ([(PXGItemPlacement *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_fullsizeContentPlacementOverride, a3);
    [(PXStoryLayout *)self _invalidateContent];
    if (v6)
    {
      v7 = [(PXStoryLayout *)self model];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __53__PXStoryLayout_setFullsizeContentPlacementOverride___block_invoke;
      v8[3] = &unk_1E77485B0;
      v9 = v6;
      [v7 performChanges:v8];
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

- (void)setOverlayBlurEffect:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_overlayBlurEffect != v5)
  {
    v8 = v5;
    v7 = [(PXGExposureBlurEffect *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_overlayBlurEffect, a3);
      [(PXStoryLayout *)self _invalidateContentCapture];
      v6 = v8;
    }
  }
}

- (void)setShadow:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shadow != v4)
  {
    v9 = v4;
    v6 = [(NSShadow *)v4 isEqual:?];
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

- (PXStoryLayout)initWithModel:(id)a3
{
  v5 = a3;
  v38.receiver = self;
  v38.super_class = PXStoryLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    [(PXStoryModel *)v7->_model registerChangeObserver:v7 context:ModelObservationContext_180468];
    v8 = [v5 options];
    v9 = [v5 configuration];
    v10 = [v9 isExportPreview];
    v36 = [v9 isPresentedForAirPlay];
    v11 = [v5 viewMode];
    v37 = v11;
    if ([v9 options] & 0x400 | v8 & 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 3;
    }

    v13 = !v12;
    if (v8 & 1) != 0 || ([v5 isAsync])
    {
      v14 = v10;
      LODWORD(v15) = 0;
    }

    else
    {
      v14 = v10;
      v15 = (v8 >> 1) & 1;
    }

    v16 = [v9 shouldFadeToBlackAtEnd];
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

    v20 = v16 | v8;
    v7->_scrollLayoutIndex = v19;
    if (v15)
    {
      v21 = [[PXStoryThumbnailChromeLayout alloc] initWithModel:v5];
      thumbnailChromeLayout = v7->_thumbnailChromeLayout;
      v7->_thumbnailChromeLayout = v21;

      v23 = [(PXStoryLayout *)v7 addSublayout:v7->_thumbnailChromeLayout];
    }

    else
    {
      v23 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v24 = v20 | v36 | v14;
    v7->_thumbnailChromeLayoutIndex = v23;
    v25 = (v37 == 3) | v14;
    v26 = &OBJC_IVAR___PXStoryLayout__thumbnailFullsizeLayout;
    v27 = off_1E771FEA0;
    if ((v25 & 1) == 0 && ![v5 isAsync])
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
    [v9 overlayBlurRadius];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryLayout.m" lineNumber:109 description:{@"%s is not available as initializer", "-[PXStoryLayout init]"}];

  abort();
}

@end
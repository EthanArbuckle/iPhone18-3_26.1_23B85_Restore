@interface PXGGeneratedLayout
- ($B30C796585FC215A6CA6704F8BA3D5B6)edgeCornerRadius;
- ($B30C796585FC215A6CA6704F8BA3D5B6)itemCornerRadius;
- (CGSize)sizeForItem:(int64_t)a3;
- (NSString)diagnosticDescription;
- (PXGGeneratedLayout)init;
- (PXLayoutGenerator)generator;
- (UIEdgeInsets)padding;
- (_NSRange)_adjustItemsToLoadForAnchors:(_NSRange)a3 loadRect:(CGRect)a4;
- (_NSRange)itemsToLoad;
- (_NSRange)itemsToLoadInRect:(CGRect)a3;
- (id)newGenerator;
- (id)objectReferenceForSpriteIndex:(unsigned int)a3;
- (void)_invalidateGenerator;
- (void)_invalidateSprites;
- (void)_updateAccessoriesGeometryBufferForSpriteCount:(int64_t)a3;
- (void)_updateContentSize;
- (void)_updateGenerator;
- (void)_updateGeometries;
- (void)_updateItemsGeometryBufferForSpriteCount:(int64_t)a3;
- (void)_updateSprites;
- (void)_updateSpritesPostUpdate;
- (void)contentSizeDidChange;
- (void)dealloc;
- (void)didApplySpriteChangeDetails:(id)a3;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)enumerateItemsInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)getSpriteZPosition:(float *)a3 clippingRect:(CGRect *)a4 forSpriteKind:(int64_t)a5;
- (void)loadedItemsDidChange;
- (void)metricsDidChange;
- (void)paddingDidChange;
- (void)referenceSizeDidChange;
- (void)setAccessoryMediaKind:(unsigned __int8)a3;
- (void)setAccessoryPresentationType:(unsigned __int8)a3;
- (void)setDefaultSpriteTag:(int64_t)a3;
- (void)setEdgeCornerRadius:(id)a3;
- (void)setEnableEffects:(BOOL)a3;
- (void)setInteritemSpacing:(double)a3;
- (void)setItemCornerRadius:(id)a3;
- (void)setKeyItemIndex:(int64_t)a3;
- (void)setKeyItemSpriteTag:(int64_t)a3;
- (void)setMediaKind:(unsigned __int8)a3;
- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setPresentationType:(unsigned __int8)a3;
- (void)setUseSaliency:(BOOL)a3;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXGGeneratedLayout

- ($B30C796585FC215A6CA6704F8BA3D5B6)edgeCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- ($B30C796585FC215A6CA6704F8BA3D5B6)itemCornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSString)diagnosticDescription
{
  v17.receiver = self;
  v17.super_class = PXGGeneratedLayout;
  v3 = [(PXGLayout *)&v17 diagnosticDescription];
  [(PXGLayout *)self referenceSize];
  v5 = v4;
  [(PXGLayout *)self referenceSize];
  v7 = v6;
  v8 = MEMORY[0x21CEE3180]([(PXGGeneratedLayout *)self padding]);
  v9 = [(PXGItemsLayout *)self numberOfItems];
  [(PXGGeneratedLayout *)self interitemSpacing];
  v11 = v10;
  [(PXGLayout *)self displayScale];
  v13 = v12;
  v14 = [(PXLayoutGenerator *)self->_generator diagnosticDescription];
  v15 = [v3 px_stringByAppendingDescriptionDetailsWithFormat:@" size: {%.3f, %.3f}; padding: %@; items: %li; interItemSpacing: %.3f; screenScale: %.3f; generator: %@", v5, v7, v8, v9, v11, v13, v14];;

  return v15;
}

- (_NSRange)_adjustItemsToLoadForAnchors:(_NSRange)a3 loadRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  length = a3.length;
  location = a3.location;
  v10 = [(PXGItemsLayout *)self numberOfItems:a4.origin.x];
  v11 = [(PXGItemsLayout *)self anchorItemForAnchoredContentEdges];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL || (v11 = [(PXGItemsLayout *)self anchorItemIndexForRootAnchor], v11 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v12 = v11;
    if (v11 < 0 || v11 >= v10)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:self file:@"PXGGeneratedLayout.m" lineNumber:612 description:{@"Anchor item %ld must be < numberOfItems %ld", v12, v10}];
    }

    if (v12 < location || v12 - location >= length)
    {
      v13 = [(PXGGeneratedLayout *)self reasonableItemCountForSize:width, height];
      v14 = v13 / 2;
      if (v13 / 2 <= 1)
      {
        v14 = 1;
      }

      v15 = v12 - v14;
      if (v10 - (v15 & ~(v15 >> 63)) < v13)
      {
        v15 = v10 - v13;
      }

      location = v15 & ~(v15 >> 63);
      if (v13 >= (v10 - location))
      {
        length = v10 - location;
      }

      else
      {
        length = v13;
      }
    }
  }

  v16 = location;
  v17 = length;
  result.length = v17;
  result.location = v16;
  return result;
}

- (_NSRange)itemsToLoadInRect:(CGRect)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = 0x7FFFFFFFFFFFFFFFLL;
  v17 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__PXGGeneratedLayout_itemsToLoadInRect___block_invoke;
  v9[3] = &unk_2782A9918;
  v9[4] = &v14;
  v9[5] = &v10;
  [(PXGGeneratedLayout *)self enumerateItemsInRect:v9 usingBlock:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v15[3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v11[3];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v15[3];
    }

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = 0;
    }

    else
    {
      v5 = v6 - v4 + 1;
    }
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  v7 = v3;
  v8 = v5;
  result.length = v8;
  result.location = v7;
  return result;
}

uint64_t __40__PXGGeneratedLayout_itemsToLoadInRect___block_invoke(uint64_t result, unint64_t a2)
{
  v2 = *(*(result + 32) + 8);
  v3 = *(v2 + 24);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(v2 + 24);
  }

  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  *(v2 + 24) = v5;
  v6 = *(*(result + 40) + 8);
  v7 = *(v6 + 24);
  if (v7 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *(v6 + 24);
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = a2;
  }

  else
  {
    v9 = v8;
  }

  *(v6 + 24) = v9;
  return result;
}

- (_NSRange)itemsToLoad
{
  if ([(PXGItemsLayout *)self isLazy])
  {
    if ([(PXGItemsLayout *)self numberOfItems])
    {
      [(PXGLayout *)self visibleRect];
      [(PXGGeneratedLayout *)self lazyLoadingOutset];
      [(PXGLayout *)self scrollableAxis];
      PXEdgeInsetsInsetRect();
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = [(PXGGeneratedLayout *)self itemsToLoadInRect:?];

      v13 = [(PXGGeneratedLayout *)self _adjustItemsToLoadForAnchors:v12 loadRect:v11, v4, v6, v8, v10];
    }

    else
    {
      v14 = 0;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = PXGGeneratedLayout;
    v13 = [(PXGItemsLayout *)&v15 itemsToLoad];
  }

  result.length = v14;
  result.location = v13;
  return result;
}

- (void)userInterfaceDirectionDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGLayout *)&v3 userInterfaceDirectionDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGLayout *)&v3 contentSizeDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGLayout *)&v3 visibleRectDidChange];
  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)loadedItemsDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGItemsLayout *)&v3 loadedItemsDidChange];
  [(PXGGeneratedLayout *)self _invalidateSprites];
}

- (CGSize)sizeForItem:(int64_t)a3
{
  v4 = [(PXGGeneratedLayout *)self generator];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [v4 getGeometries:&v9 inRange:a3 withKind:{1, 0}];
  v5 = *(&v10 + 1);
  v6 = *&v11;

  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_updateSprites
{
  *&v93[4] = *MEMORY[0x277D85DE8];
  v4 = [(PXGLayout *)self localNumberOfSprites];
  if ([(PXGItemsLayout *)self numberOfItems]!= v4)
  {
    if (![(PXGItemsLayout *)self isLazy]|| (v5 = [(PXGLayout *)self localNumberOfSprites], [(PXGItemsLayout *)self loadedItems], v6 != v5))
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PXGGeneratedLayout.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"self.localNumberOfSprites == self.numberOfItems || (self.isLazy && self.localNumberOfSprites == self.loadedItems.length)"}];
    }
  }

  v8 = 1;
  self->_isUpdatingSprites = 1;
  v9 = [(PXGItemsLayout *)self loadedItems];
  v55 = v10;
  v56 = v9;
  v58 = [(PXGItemsLayout *)self numberOfItems];
  v57 = [(PXGItemsLayout *)self numberOfAccessoryItems];
  v11 = [(PXGItemsLayout *)self delegate];
  if ([(PXGItemsLayout *)self delegateRespondsTo:1024])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v54 = v12;
  if ([(PXGItemsLayout *)self delegateRespondsTo:256])
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v15 = [(PXGItemsLayout *)self insetDelegate];
  v16 = 0;
  v17 = v92;
  v18 = v90;
  v59 = *(MEMORY[0x277CBF398] + 16);
  v60 = *MEMORY[0x277CBF398];
  do
  {
    v19 = v8;
    rect.origin = v60;
    rect.size = v59;
    [(PXGGeneratedLayout *)self getSpriteZPosition:v17 clippingRect:&rect forSpriteKind:v16];
    *(v18 + 6) = xmmword_21AE2E2C0;
    *(v18 + 7) = unk_21AE2E2D0;
    *(v18 + 8) = xmmword_21AE2E2E0;
    *(v18 + 9) = unk_21AE2E2F0;
    *(v18 + 2) = xmmword_21AE2E280;
    *(v18 + 3) = unk_21AE2E290;
    *(v18 + 4) = xmmword_21AE2E2A0;
    *(v18 + 5) = unk_21AE2E2B0;
    *v18 = PXGSpriteStyleDefault;
    *(v18 + 1) = unk_21AE2E270;
    IsNull = CGRectIsNull(rect);
    v8 = 0;
    v21 = vcvt_f32_f64(rect.origin);
    if (IsNull)
    {
      v22 = -1;
    }

    else
    {
      v22 = 0;
    }

    *(v18 + 20) = vbslq_s8(vdupq_n_s32(v22), xmmword_21AE2D400, vcvt_hight_f32_f64(v21, rect.size));
    v18 = &v91;
    v17 = v93;
    v16 = 1;
  }

  while ((v19 & 1) != 0);
  *&rect.origin.x = [(PXGGeneratedLayout *)self defaultSpriteTag];
  *&rect.origin.y = [(PXGGeneratedLayout *)self keyItemSpriteTag];
  [(PXGLayout *)self displayScale];
  v24 = v23;
  [(PXGGeneratedLayout *)self itemCornerRadius];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __36__PXGGeneratedLayout__updateSprites__block_invoke;
  v75[3] = &unk_2782A9850;
  v61 = v11;
  v76 = v61;
  v77 = self;
  v33 = v14;
  v78 = v33;
  v34 = v15;
  v79 = v34;
  v81 = v92;
  v82 = v90;
  v35 = v54;
  v84 = v26;
  v85 = v28;
  v86 = v30;
  v87 = v32;
  v88 = v24;
  v80 = v35;
  p_rect = &rect;
  v36 = MEMORY[0x21CEE40A0](v75);
  v37 = [(PXGGeneratedLayout *)self presentationType];
  v38 = [(PXGGeneratedLayout *)self mediaKind];
  v39 = [(PXGGeneratedLayout *)self keyItemIndex];
  v40 = [(PXGLayout *)self localNumberOfSprites];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __36__PXGGeneratedLayout__updateSprites__block_invoke_2;
  v67[3] = &unk_2782A98A0;
  v41 = v40 << 32;
  v70 = v55;
  v71 = v39;
  v69 = v56;
  v67[4] = self;
  v42 = v36;
  v68 = v42;
  v73 = v38;
  v74 = v37;
  v72 = v58;
  [(PXGLayout *)self modifySpritesInRange:v41 state:v67];
  LOBYTE(v41) = [(PXGGeneratedLayout *)self accessoryPresentationType];
  v43 = [(PXGGeneratedLayout *)self accessoryMediaKind];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __36__PXGGeneratedLayout__updateSprites__block_invoke_4;
  v63[3] = &unk_2782A98C8;
  v63[4] = self;
  v44 = v42;
  v64 = v44;
  v65 = v43;
  v66 = v41;
  [(PXGItemsLayout *)self modifyAccessoryItemSpritesInRange:v57 << 32 state:v63];
  if (v58)
  {
    PXRectWithCenterAndSize();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
  }

  else
  {
    v46 = *MEMORY[0x277CBF398];
    v48 = *(MEMORY[0x277CBF398] + 8);
    v50 = *(MEMORY[0x277CBF398] + 16);
    v52 = *(MEMORY[0x277CBF398] + 24);
  }

  v53 = [(PXGGeneratedLayout *)self headerLayoutGuide];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __36__PXGGeneratedLayout__updateSprites__block_invoke_5;
  v62[3] = &unk_2782A98F0;
  v62[5] = v46;
  v62[6] = v48;
  v62[7] = v50;
  v62[8] = v52;
  v62[4] = self;
  [v53 performChanges:v62];

  if ([(PXGGeneratedLayout *)self enableEffects])
  {
    [(PXGItemsLayout *)self updateItemEffectIDsIfNeeded];
  }

  self->_isUpdatingSprites = 0;
  [(PXGGeneratedLayout *)self spritesDidUpdate];
}

float32x2_t __36__PXGGeneratedLayout__updateSprites__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float32x2_t *a7)
{
  PXSizeGetAspectRatio();
  [*(a1 + 32) generatedLayout:*(a1 + 40) bestCropRectForInputItemAtIndex:a2 withAspectRatio:?];
  v49 = v15;
  v50 = v14;
  v51 = v16;
  rect = v17;
  v18 = a2;
  [*(a1 + 48) itemsLayout:*(a1 + 40) marginForItem:a2];
  [*(a1 + 56) itemsLayout:*(a1 + 40) insetForItem:a2];
  PXSizeAdd();
  v20.f64[1] = v19;
  v52 = vcvt_f32_f64(vmaxnmq_f64(vsubq_f64(*(a4 + 24), v20), 0));
  v21 = [*(a1 + 40) delegateRespondsTo:4];
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  if (v21)
  {
    [v22 itemsLayout:v23 aspectRatioForItem:a2];
    v25 = v24;
  }

  else
  {
    v26 = [v22 generatedLayout:v23 inputItemAtIndex:a2];
    [v26 size];
    PXSizeGetAspectRatioWithDefault();
    v25 = v27;
  }

  v53.origin.y = v49;
  v53.origin.x = v50;
  v53.size.width = v51;
  v53.size.height = rect;
  Width = CGRectGetWidth(v53);
  v29.f64[0] = v51;
  v29.f64[1] = rect;
  v30.f64[0] = v50;
  v30.f64[1] = v49;
  v31 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v29);
  v32 = *(*(a1 + 72) + 4 * a3);
  *a5 = *(a4 + 8);
  *(a5 + 16) = v32;
  *(a5 + 24) = v52;
  v33 = (*(a1 + 80) + 160 * a3);
  v34 = v33[1];
  *a6 = *v33;
  *(a6 + 16) = v34;
  v36 = v33[8];
  v35 = v33[9];
  v37 = v33[7];
  *(a6 + 96) = v33[6];
  *(a6 + 112) = v37;
  *(a6 + 128) = v36;
  v39 = v33[4];
  v38 = v33[5];
  v40 = v33[3];
  *(a6 + 32) = v33[2];
  *(a6 + 48) = v40;
  *(a6 + 64) = v39;
  *(a6 + 80) = v38;
  *(a6 + 144) = v35;
  *(a6 + 4) = v31;
  v41 = *(a1 + 64);
  if (v41)
  {
    [v41 itemsLayout:*(a1 + 40) cornerRadiusForItem:v18];
    *(a6 + 36) = v42;
    *(a6 + 40) = v43;
    *(a6 + 44) = v44;
    *(a6 + 48) = v45;
  }

  else
  {
    *(a6 + 36) = *(a1 + 96);
  }

  v46.f64[0] = v52.f32[0] / Width;
  v46.f64[1] = v46.f64[0] / v25;
  result = vmul_n_f32(vcvt_f32_f64(v46), *(a1 + 112));
  a7[1] = result;
  a7[3] = *(*(a1 + 88) + 8 * a3);
  return result;
}

void __36__PXGGeneratedLayout__updateSprites__block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v9 = a2;
    v10 = a4;
    v11 = a5;
    do
    {
      v12 = *(a1 + 40);
      v13 = *(*(a1 + 32) + 1072) + 152 * (v9 + *(a1 + 48));
      v14 = *(v13 + 112);
      v47 = *(v13 + 96);
      v48 = v14;
      v49 = *(v13 + 128);
      v15 = *(v13 + 144);
      v16 = *(v13 + 48);
      v43 = *(v13 + 32);
      v44 = v16;
      v17 = *(v13 + 80);
      v45 = *(v13 + 64);
      v46 = v17;
      v18 = *(v13 + 16);
      v19 = *(v12 + 16);
      v41 = *v13;
      v42 = v18;
      v38 = v14;
      v39 = v49;
      v33 = v43;
      v34 = v44;
      v35 = v45;
      v50 = v15;
      v40 = v15;
      v36 = v46;
      v37 = v47;
      v31 = v41;
      v32 = v18;
      v19();
      v11[1] = *(a1 + 76);
      ++v9;
      *v11 = *(a1 + 77);
      v11 += 40;
      a3 += 32;
      v10 += 160;
      LODWORD(v7) = v7 - 1;
    }

    while (v7);
  }

  if ([*(a1 + 32) delegateRespondsTo:{32, a5}])
  {
    v20 = [*(a1 + 32) delegate];
    [v20 itemsLayout:*(a1 + 32) updateTagsInSpriteInfos:v28 forItemsInRange:{*(a1 + 48), *(a1 + 56)}];
  }

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __36__PXGGeneratedLayout__updateSprites__block_invoke_3;
  v29[3] = &unk_2782A9878;
  v30 = *(a1 + 72);
  v29[4] = *(a1 + 32);
  v29[5] = a4;
  v21 = MEMORY[0x21CEE40A0](v29);
  v22 = [*(a1 + 32) generator];
  v23 = [v22 cornerSpriteIndexes];
  v25 = v24;
  v26 = HIDWORD(v23);
  v21[2](v21, 0, v23);
  v21[2](v21, 1, v26);
  v21[2](v21, 2, v25);
  v21[2](v21, 3, HIDWORD(v25));
}

uint64_t __36__PXGGeneratedLayout__updateSprites__block_invoke_4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v12 = a2;
    v13 = result;
    do
    {
      v14 = *(v13 + 40);
      v15 = *(*(v13 + 32) + 1096) + 152 * v12;
      v16 = *(v15 + 112);
      v29 = *(v15 + 96);
      v30 = v16;
      v31 = *(v15 + 128);
      v32 = *(v15 + 144);
      v17 = *(v15 + 48);
      v25 = *(v15 + 32);
      v26 = v17;
      v18 = *(v15 + 80);
      v27 = *(v15 + 64);
      v28 = v18;
      v19 = *(v15 + 16);
      v23 = *v15;
      v24 = v19;
      v20 = *(v14 + 16);
      v21[6] = v29;
      v21[7] = v16;
      v21[8] = v31;
      v22 = v32;
      v21[2] = v25;
      v21[3] = v26;
      v21[4] = v27;
      v21[5] = v28;
      v21[0] = v23;
      v21[1] = v19;
      result = v20(v14, v12, 0, v21, a3, a4, a5, a8);
      a5[1] = *(v13 + 48);
      v12 = (v12 + 1);
      *a5 = *(v13 + 49);
      a5 += 40;
      a3 += 32;
      a4 += 160;
      LODWORD(v8) = v8 - 1;
    }

    while (v8);
  }

  return result;
}

float32x4_t __36__PXGGeneratedLayout__updateSprites__block_invoke_3(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 48) > a3)
  {
    v18 = v3;
    v19 = v4;
    v7 = [*(a1 + 32) spriteIndexForItem:a3];
    if (v7 != -1)
    {
      v9 = v7;
      v10 = *(a1 + 32);
      v17 = *(*(a1 + 40) + 160 * v9 + 36);
      [v10 edgeCornerRadius];
      v16[0] = v11;
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v14;
      v17.i32[a2] = v16[a2];
      v15 = *(a1 + 40) + 160 * v9;
      result = vmaxnmq_f32(v17, *(v15 + 36));
      *(v15 + 36) = result;
    }
  }

  return result;
}

- (void)_updateSpritesPostUpdate
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__PXGGeneratedLayout__updateSpritesPostUpdate__block_invoke;
  v2[3] = &unk_2782ABE50;
  v2[4] = self;
  [(PXGLayout *)self performSpriteStylingUpdate:v2];
}

- (void)_invalidateSprites
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 1;
      goto LABEL_7;
    }

LABEL_5:
    if (self->_postUpdateFlags.updated)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout _invalidateSprites]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGeneratedLayout.m" lineNumber:359 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_7:

  [(PXGItemsLayout *)self invalidateStylableType:1];
}

- (void)_updateAccessoriesGeometryBufferForSpriteCount:(int64_t)a3
{
  self->_generatorAccessoriesGeometryBufferCount = a3;
  generatorAccessoriesGeometryBufferCapacity = self->_generatorAccessoriesGeometryBufferCapacity;
  if (generatorAccessoriesGeometryBufferCapacity < a3)
  {
    v6 = a3;
    if (generatorAccessoriesGeometryBufferCapacity)
    {
      v6 = self->_generatorAccessoriesGeometryBufferCapacity;
      do
      {
        v6 *= 2;
      }

      while (v6 < a3);
    }

    self->_generatorAccessoriesGeometryBufferCapacity = v6;
    self->_generatorAccessoriesGeometryBuffer = malloc_type_realloc(self->_generatorAccessoriesGeometryBuffer, 152 * v6, 0x42760281uLL);
  }

  if (a3)
  {
    v7 = [(PXGGeneratedLayout *)self generator];
    [v7 getGeometries:self->_generatorAccessoriesGeometryBuffer inRange:0 withKind:{a3, 1000}];
  }
}

- (void)_updateItemsGeometryBufferForSpriteCount:(int64_t)a3
{
  self->_generatorItemsGeometryBufferCount = a3;
  generatorItemsGeometryBufferCapacity = self->_generatorItemsGeometryBufferCapacity;
  if (generatorItemsGeometryBufferCapacity < a3)
  {
    v6 = a3;
    if (generatorItemsGeometryBufferCapacity)
    {
      v6 = self->_generatorItemsGeometryBufferCapacity;
      do
      {
        v6 *= 2;
      }

      while (v6 < a3);
    }

    self->_generatorItemsGeometryBufferCapacity = v6;
    self->_generatorItemsGeometryBuffer = malloc_type_realloc(self->_generatorItemsGeometryBuffer, 152 * v6, 0x42760281uLL);
  }

  if (a3)
  {
    v7 = [(PXGGeneratedLayout *)self generator];
    [v7 getGeometries:self->_generatorItemsGeometryBuffer inRange:0 withKind:{a3, 0}];
  }
}

- (void)_updateContentSize
{
  v3 = [(PXGGeneratedLayout *)self generator];
  [v3 size];
  [(PXGLayout *)self setContentSize:?];
}

- (void)_updateGeometries
{
  [(PXGGeneratedLayout *)self _updateItemsGeometryBufferForSpriteCount:[(PXGItemsLayout *)self numberOfItems]];
  v3 = [(PXGItemsLayout *)self numberOfAccessoryItems];

  [(PXGGeneratedLayout *)self _updateAccessoriesGeometryBufferForSpriteCount:v3];
}

- (void)_updateGenerator
{
  v3 = [(PXGGeneratedLayout *)self newGenerator];
  generator = self->_generator;
  self->_generator = v3;
}

- (void)_invalidateGenerator
{
  p_generatorUpdateFlags = &self->_generatorUpdateFlags;
  needsUpdate = self->_generatorUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_generatorUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_generatorUpdateFlags->needsUpdate = needsUpdate | 7;
      goto LABEL_7;
    }

LABEL_5:
    if ((self->_generatorUpdateFlags.updated & 7) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout _invalidateGenerator]"];
      [v6 handleFailureInFunction:v7 file:@"PXGGeneratedLayout.m" lineNumber:310 description:{@"invalidating %lu after it already has been updated", 7}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_generatorUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_generatorUpdateFlags.willPerformUpdate;
  p_generatorUpdateFlags->needsUpdate = 7;
  if (!willPerformUpdate)
  {
    [(PXGLayout *)self setNeedsUpdate];
  }

LABEL_7:

  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXGGeneratedLayout;
  [(PXGItemsLayout *)&v7 didUpdate];
  if (self->_generatorUpdateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGGeneratedLayout.m" lineNumber:305 description:{@"Invalid parameter not satisfying: %@", @"!_generatorUpdateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout didUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXGGeneratedLayout.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  v3 = [(PXGLayout *)self rootLayout];
  v4 = [v3 activeAnchor];

  if (v4)
  {
    [(PXGItemsLayout *)self invalidateLoadedItems];
  }

  p_generatorUpdateFlags = &self->_generatorUpdateFlags;
  self->_generatorUpdateFlags.willPerformUpdate = 0;
  needsUpdate = self->_generatorUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_generatorUpdateFlags.isPerformingUpdate)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout update]"];
      [v15 handleFailureInFunction:v16 file:@"PXGGeneratedLayout.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"!_generatorUpdateFlags.isPerformingUpdate"}];

      needsUpdate = p_generatorUpdateFlags->needsUpdate;
    }

    self->_generatorUpdateFlags.isPerformingUpdate = 1;
    self->_generatorUpdateFlags.updated = 1;
    if (needsUpdate)
    {
      p_generatorUpdateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGGeneratedLayout *)self _updateGenerator];
    }

    v7 = [(PXGGeneratedLayout *)self generator];
    v8 = [v7 geometryKinds];
    v9 = [v8 containsIndex:1000];

    if (v9)
    {
      v10 = [(PXGGeneratedLayout *)self generator];
      -[PXGItemsLayout setNumberOfAccessoryItems:](self, "setNumberOfAccessoryItems:", [v10 numberOfGeometriesWithKind:1000]);
    }

    else
    {
      [(PXGItemsLayout *)self setNumberOfAccessoryItems:0];
    }

    if (!self->_generatorUpdateFlags.isPerformingUpdate)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXGGeneratedLayout.m" lineNumber:280 description:{@"Invalid parameter not satisfying: %@", @"_generatorUpdateFlags.isPerformingUpdate"}];
    }

    v11 = p_generatorUpdateFlags->needsUpdate;
    self->_generatorUpdateFlags.updated |= 2uLL;
    if ((v11 & 2) != 0)
    {
      p_generatorUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXGGeneratedLayout *)self _updateGeometries];
    }

    if (!self->_generatorUpdateFlags.isPerformingUpdate)
    {
      v19 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXGGeneratedLayout.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"_generatorUpdateFlags.isPerformingUpdate"}];
    }

    v12 = p_generatorUpdateFlags->needsUpdate;
    self->_generatorUpdateFlags.updated |= 4uLL;
    if ((v12 & 4) != 0)
    {
      p_generatorUpdateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXGGeneratedLayout *)self _updateContentSize];
      v12 = p_generatorUpdateFlags->needsUpdate;
    }

    self->_generatorUpdateFlags.isPerformingUpdate = 0;
    if (v12)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout update]"];
      [v21 handleFailureInFunction:v22 file:@"PXGGeneratedLayout.m" lineNumber:288 description:{@"still needing to update %lu after update pass", p_generatorUpdateFlags->needsUpdate}];
    }
  }

  v27.receiver = self;
  v27.super_class = PXGGeneratedLayout;
  [(PXGItemsLayout *)&v27 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v14 = self->_postUpdateFlags.needsUpdate;
  if (v14)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout update]"];
      [v23 handleFailureInFunction:v24 file:@"PXGGeneratedLayout.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v14 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1;
    if (v14)
    {
      p_postUpdateFlags->needsUpdate = v14 & 0xFFFFFFFFFFFFFFFELL;
      [(PXGGeneratedLayout *)self _updateSpritesPostUpdate];
      v14 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v14)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout update]"];
      [v25 handleFailureInFunction:v26 file:@"PXGGeneratedLayout.m" lineNumber:300 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXGGeneratedLayout;
  [(PXGItemsLayout *)&v7 willUpdate];
  self->_generatorUpdateFlags.willPerformUpdate = 1;
  if (self->_generatorUpdateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGGeneratedLayout.m" lineNumber:258 description:{@"Invalid parameter not satisfying: %@", @"!_generatorUpdateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGGeneratedLayout willUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXGGeneratedLayout.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (PXLayoutGenerator)generator
{
  generator = self->_generator;
  if (!generator)
  {
    v4 = [(PXGGeneratedLayout *)self newGenerator];
    v5 = self->_generator;
    self->_generator = v4;

    generator = self->_generator;
  }

  return generator;
}

- (void)setItemCornerRadius:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v7, self->_itemCornerRadius))) & 1) == 0)
  {
    self->_itemCornerRadius.var0.var0.topLeft = v3;
    self->_itemCornerRadius.var0.var0.topRight = v4;
    self->_itemCornerRadius.var0.var0.bottomLeft = v5;
    self->_itemCornerRadius.var0.var0.bottomRight = v6;
    [(PXGGeneratedLayout *)self _invalidateSprites:*&a3.var0.var0.var0];
  }
}

- (void)setEdgeCornerRadius:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(v7, self->_edgeCornerRadius))) & 1) == 0)
  {
    self->_edgeCornerRadius.var0.var0.topLeft = v3;
    self->_edgeCornerRadius.var0.var0.topRight = v4;
    self->_edgeCornerRadius.var0.var0.bottomLeft = v5;
    self->_edgeCornerRadius.var0.var0.bottomRight = v6;
    [(PXGGeneratedLayout *)self _invalidateSprites:*&a3.var0.var0.var0];
  }
}

- (void)setEnableEffects:(BOOL)a3
{
  if (self->_enableEffects != a3)
  {
    self->_enableEffects = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setUseSaliency:(BOOL)a3
{
  if (self->_useSaliency != a3)
  {
    self->_useSaliency = a3;
    [(PXGGeneratedLayout *)self _invalidateGenerator];

    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setInteritemSpacing:(double)a3
{
  if (self->_interitemSpacing != a3)
  {
    self->_interitemSpacing = a3;
    [(PXGGeneratedLayout *)self _invalidateGenerator];

    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_padding = &self->_padding;
  if ((PXEdgeInsetsApproximatelyEqualToEdgeInsets() & 1) == 0)
  {
    p_padding->top = top;
    p_padding->left = left;
    p_padding->bottom = bottom;
    p_padding->right = right;

    [(PXGGeneratedLayout *)self paddingDidChange];
  }
}

- (void)setKeyItemSpriteTag:(int64_t)a3
{
  if (self->_keyItemSpriteTag != a3)
  {
    self->_keyItemSpriteTag = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setDefaultSpriteTag:(int64_t)a3
{
  if (self->_defaultSpriteTag != a3)
  {
    self->_defaultSpriteTag = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setAccessoryMediaKind:(unsigned __int8)a3
{
  if (self->_accessoryMediaKind != a3)
  {
    self->_accessoryMediaKind = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setAccessoryPresentationType:(unsigned __int8)a3
{
  if (self->_accessoryPresentationType != a3)
  {
    self->_accessoryPresentationType = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setMediaKind:(unsigned __int8)a3
{
  if (self->_mediaKind != a3)
  {
    self->_mediaKind = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setPresentationType:(unsigned __int8)a3
{
  if (self->_presentationType != a3)
  {
    self->_presentationType = a3;
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setKeyItemIndex:(int64_t)a3
{
  if (self->_keyItemIndex != a3)
  {
    self->_keyItemIndex = a3;
    [(PXGGeneratedLayout *)self _invalidateGenerator];

    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)didApplySpriteChangeDetails:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PXGGeneratedLayout;
  [(PXGLayout *)&v5 didApplySpriteChangeDetails:v4];
  if (!self->_isUpdatingSprites && !-[PXGLayout isUpdatingSpriteStyling](self, "isUpdatingSpriteStyling") && (!v4 || [v4 hasAnyChanges]))
  {
    [(PXGGeneratedLayout *)self _invalidateSprites];
  }
}

- (void)setNumberOfItems:(int64_t)a3 withChangeDetails:(id)a4 changeMediaVersionHandler:(id)a5
{
  v8 = a4;
  v9.receiver = self;
  v9.super_class = PXGGeneratedLayout;
  [(PXGItemsLayout *)&v9 setNumberOfItems:a3 withChangeDetails:v8 changeMediaVersionHandler:a5];
  if (!v8 || [v8 hasAnyChanges])
  {
    [(PXGGeneratedLayout *)self _invalidateGenerator];
  }
}

- (void)paddingDidChange
{
  [(PXGGeneratedLayout *)self _invalidateGenerator];
  [(PXGGeneratedLayout *)self _invalidateSprites];

  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)metricsDidChange
{
  [(PXGGeneratedLayout *)self _invalidateGenerator];
  [(PXGGeneratedLayout *)self _invalidateSprites];

  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGLayout *)&v3 displayScaleDidChange];
  [(PXGGeneratedLayout *)self _invalidateGenerator];
  [(PXGGeneratedLayout *)self _invalidateSprites];
  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGLayout *)&v3 referenceSizeDidChange];
  [(PXGGeneratedLayout *)self _invalidateGenerator];
  [(PXGGeneratedLayout *)self _invalidateSprites];
  [(PXGItemsLayout *)self invalidateLoadedItems];
}

- (id)objectReferenceForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXGItemsLayout *)self delegate];
  v6 = [v5 generatedLayout:self objectReferenceAtIndex:v3];

  return v6;
}

- (void)enumerateItemsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v20 = 0;
  generatorItemsGeometryBufferCount = self->_generatorItemsGeometryBufferCount;
  if (generatorItemsGeometryBufferCount >= 1)
  {
    for (i = 0; i < generatorItemsGeometryBufferCount; ++i)
    {
      PXRectWithCenterAndSize();
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v22.origin.x = v13;
      v22.origin.y = v15;
      v22.size.width = v17;
      v22.size.height = v19;
      if (CGRectIntersectsRect(v21, v22))
      {
        v9[2](v9, i, &v20, v13, v15, v17, v19);
        if (v20)
        {
          break;
        }
      }
    }
  }
}

- (void)getSpriteZPosition:(float *)a3 clippingRect:(CGRect *)a4 forSpriteKind:(int64_t)a5
{
  *a3 = 0.0;
  v5 = *(MEMORY[0x277CBF398] + 16);
  a4->origin = *MEMORY[0x277CBF398];
  a4->size = v5;
}

- (id)newGenerator
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXGGeneratedLayout.m" lineNumber:67 description:{@"Method %s is a responsibility of subclass %@", "-[PXGGeneratedLayout newGenerator]", v6}];

  abort();
}

- (void)dealloc
{
  free(self->_generatorItemsGeometryBuffer);
  free(self->_generatorAccessoriesGeometryBuffer);
  v3.receiver = self;
  v3.super_class = PXGGeneratedLayout;
  [(PXGItemsLayout *)&v3 dealloc];
}

- (PXGGeneratedLayout)init
{
  v8.receiver = self;
  v8.super_class = PXGGeneratedLayout;
  v2 = [(PXGItemsLayout *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_interitemSpacing = 1.0;
    v4 = *(MEMORY[0x277D3CF90] + 16);
    *&v2->_padding.top = *MEMORY[0x277D3CF90];
    *&v2->_padding.bottom = v4;
    v2->_useSaliency = 0;
    v2->_keyItemIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5 = objc_alloc_init(PXGLayoutGuide);
    headerLayoutGuide = v3->_headerLayoutGuide;
    v3->_headerLayoutGuide = v5;

    *&v3->_itemCornerRadius.var0.var0.topLeft = 0;
    *&v3->_itemCornerRadius.var0.byIndex[2] = 0;
    *&v3->_edgeCornerRadius.var0.var0.topLeft = 0;
    *&v3->_edgeCornerRadius.var0.byIndex[2] = 0;
    v3->_lazyLoadingOutset = 1000.0;
  }

  return v3;
}

@end
@interface PXGZoomLayout
- (CGPoint)anchorViewportCenter;
- (CGRect)sublayout:(id)sublayout visibleRectForRequestedVisibleRect:(CGRect)rect;
- (PXGZoomLayout)init;
- (UIEdgeInsets)padding;
- (id)axSpriteIndexes;
- (int64_t)itemForSpriteIndex:(unsigned int)index;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)_configureSublayouts;
- (void)_updateSublayoutGeometries;
- (void)didChangeSublayoutOrigins;
- (void)displayScaleDidChange;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)scrollSpeedRegimeDidChange;
- (void)setAnchorObjectReference:(id)reference;
- (void)setAnchorViewportCenter:(CGPoint)center;
- (void)setLayers:(id)layers primaryLayer:(id)layer;
- (void)setPadding:(UIEdgeInsets)padding;
- (void)sublayoutDidChangeContentSize:(id)size;
- (void)sublayoutDidChangeLastBaseline:(id)baseline;
- (void)sublayoutNeedsUpdate:(id)update;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
@end

@implementation PXGZoomLayout

- (PXGZoomLayout)init
{
  v3.receiver = self;
  v3.super_class = PXGZoomLayout;
  result = [(PXGLayout *)&v3 init];
  if (result)
  {
    result->_anchorViewportCenter = *MEMORY[0x277D3CFB0];
  }

  return result;
}

- (void)viewEnvironmentDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 viewEnvironmentDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout viewEnvironmentDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:194 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_configureSublayouts
{
  v34 = *MEMORY[0x277D85DE8];
  layers = [(PXGZoomLayout *)self layers];
  primaryLayer = [(PXGZoomLayout *)self primaryLayer];
  v6 = [layers containsObject:primaryLayer];

  if ((v6 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGZoomLayout.m" lineNumber:106 description:@"primaryLayer must be one of the layers"];
  }

  layers2 = [(PXGZoomLayout *)self layers];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  sublayoutDataStore2 = [(PXGLayout *)self sublayoutDataStore];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __37__PXGZoomLayout__configureSublayouts__block_invoke;
  v30[3] = &unk_2782A7BD8;
  v11 = layers2;
  v31 = v11;
  v12 = indexSet;
  v32 = v12;
  [sublayoutDataStore2 enumerateSublayoutsUsingBlock:v30];

  [(PXGLayout *)self removeSublayoutsAtIndexes:v12];
  anchorObjectReference = [(PXGZoomLayout *)self anchorObjectReference];
  [(PXGZoomLayout *)self anchorViewportCenter];
  v15 = v14;
  v17 = v16;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * v22);
        if (!sublayoutDataStore || [sublayoutDataStore indexOfSublayout:{*(*(&v26 + 1) + 8 * v22), v26}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(PXGLayout *)self addSublayout:v23, v26];
        }

        itemsLayout = [v23 itemsLayout];
        [itemsLayout setAnchorObjectReference:anchorObjectReference];
        [itemsLayout setAnchorViewportCenter:{v15, v17}];

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v20);
  }
}

- (CGPoint)anchorViewportCenter
{
  x = self->_anchorViewportCenter.x;
  y = self->_anchorViewportCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 referenceSizeDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout referenceSizeDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:201 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 displayScaleDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout displayScaleDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:229 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)safeAreaInsetsDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 safeAreaInsetsDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout safeAreaInsetsDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:222 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 visibleRectDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout visibleRectDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:215 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
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
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXGZoomLayout.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGZoomLayout *)self _updateSublayoutGeometries];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXGZoomLayout.m" lineNumber:100 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXGZoomLayout;
  [(PXGLayout *)&v9 update];
}

- (void)_updateSublayoutGeometries
{
  self->_isUpdatingSublayouts = 1;
  [(PXGZoomLayout *)self padding];
  v57 = v3;
  v58 = v4;
  v5 = v4;
  v56 = v6;
  v8 = v7;
  [(PXGLayout *)self referenceSize];
  v54 = v9;
  v11 = v10 - (v5 + v8);
  v55 = v11;
  [(PXGLayout *)self referenceDepth];
  v53 = v12;
  viewEnvironment = [(PXGLayout *)self viewEnvironment];
  [(PXGLayout *)self safeAreaInsets];
  v51 = v15;
  v52 = v14;
  v49 = v17;
  v50 = v16;
  [(PXGLayout *)self displayScale];
  v48 = v18;
  [(PXGLayout *)self visibleRect];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(PXGLayout *)self lastScrollDirection];
  v28 = v27;
  v30 = v29;
  scrollSpeedRegime = [(PXGLayout *)self scrollSpeedRegime];
  userInterfaceDirection = [(PXGLayout *)self userInterfaceDirection];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __43__PXGZoomLayout__updateSublayoutGeometries__block_invoke;
  v60[3] = &unk_2782A7C00;
  v61 = viewEnvironment;
  v62 = v11;
  v63 = v54;
  v64 = v53;
  v65 = v20;
  v66 = v22;
  v67 = v24;
  v68 = v26;
  v69 = v48;
  v70 = scrollSpeedRegime;
  v71 = v28;
  v72 = v30;
  v73 = v52;
  v74 = v51;
  v75 = v50;
  v76 = v49;
  v77 = userInterfaceDirection;
  v34 = viewEnvironment;
  [sublayoutDataStore enumerateSublayoutsUsingBlock:v60];

  primaryLayer = [(PXGZoomLayout *)self primaryLayer];
  [primaryLayer visibleRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [primaryLayer contentSize];
  v45 = v56 + v57 + v44;
  sublayoutDataStore2 = [(PXGLayout *)self sublayoutDataStore];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __43__PXGZoomLayout__updateSublayoutGeometries__block_invoke_2;
  v59[3] = &__block_descriptor_56_e93_v40__0q8_____CGSize_dd_dS_CGSize_dd____ddd_____CGAffineTransform_dddddd_d_d_16_____v_v_24_B32l;
  *&v59[4] = v58;
  *&v59[5] = v57;
  v59[6] = 0;
  [sublayoutDataStore2 enumerateSublayoutGeometriesUsingBlock:v59];

  [(PXGLayout *)self setContentSize:v55, v45];
  [primaryLayer lastBaseline];
  [(PXGLayout *)self setLastBaseline:v57 + v47];
  [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:v37, v39, v41, v43];
  self->_isUpdatingSublayouts = 0;
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

void __43__PXGZoomLayout__updateSublayoutGeometries__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v8 = a3;
  [v8 setViewEnvironment:v5];
  [v8 setReferenceSize:{*(a1 + 40), *(a1 + 48)}];
  [v8 setReferenceDepth:*(a1 + 56)];
  [v8 setVisibleRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v8 setDisplayScale:*(a1 + 96)];
  [v8 setScrollSpeedRegime:*(a1 + 104)];
  [v8 setLastScrollDirection:{*(a1 + 112), *(a1 + 120)}];
  [v8 setSafeAreaInsets:{*(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152)}];
  [v8 setUserInterfaceDirection:*(a1 + 160)];
  v6 = [v8 createAnchorFromSuperlayoutWithSublayoutIndex:a2 sublayoutPositionEdges:5 ignoringScrollingAnimationAnchors:0];
  v7 = [v6 autoInvalidate];

  [v8 updateIfNeeded];
}

void *__43__PXGZoomLayout__updateSublayoutGeometries__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  result = *a4;
  if (*a4)
  {
    result = [result contentSize];
    v7 = *(a1 + 48);
    *(a3 + 48) = *(a1 + 32);
    *(a3 + 64) = v7;
    *(a3 + 32) = v8;
    *(a3 + 40) = v9;
  }

  return result;
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (int64_t)scrollableAxis
{
  primaryLayer = [(PXGZoomLayout *)self primaryLayer];
  scrollableAxis = [primaryLayer scrollableAxis];

  return scrollableAxis;
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)block
{
  blockCopy = block;
  primaryLayer = [(PXGZoomLayout *)self primaryLayer];
  if (primaryLayer)
  {
    v6 = 0;
    blockCopy[2](blockCopy, primaryLayer, &v6);
  }
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  *objectReference = reference;
  primaryLayer = [(PXGZoomLayout *)self primaryLayer];

  if (!primaryLayer)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  primaryLayer2 = [(PXGZoomLayout *)self primaryLayer];
  v12 = [sublayoutDataStore indexOfSublayout:primaryLayer2];

  return v12;
}

- (CGRect)sublayout:(id)sublayout visibleRectForRequestedVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  sublayoutCopy = sublayout;
  [sublayoutCopy visibleRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  primaryLayer = [(PXGZoomLayout *)self primaryLayer];
  v19 = [sublayoutCopy isDescendantOfLayout:primaryLayer];

  if (v19)
  {
    v20 = height;
  }

  else
  {
    v20 = v17;
  }

  if (v19)
  {
    v21 = width;
  }

  else
  {
    v21 = v15;
  }

  if (v19)
  {
    v22 = y;
  }

  else
  {
    v22 = v13;
  }

  if (v19)
  {
    v23 = x;
  }

  else
  {
    v23 = v11;
  }

  result.size.height = v20;
  result.size.width = v21;
  result.origin.y = v22;
  result.origin.x = v23;
  return result;
}

- (void)didChangeSublayoutOrigins
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 didChangeSublayoutOrigins];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout didChangeSublayoutOrigins]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:271 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)sublayoutDidChangeLastBaseline:(id)baseline
{
  baselineCopy = baseline;
  v10.receiver = self;
  v10.super_class = PXGZoomLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeLastBaseline:baselineCopy];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout sublayoutDidChangeLastBaseline:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:264 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutDidChangeContentSize:(id)size
{
  sizeCopy = size;
  v10.receiver = self;
  v10.super_class = PXGZoomLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeContentSize:sizeCopy];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout sublayoutDidChangeContentSize:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:257 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)sublayoutNeedsUpdate:(id)update
{
  updateCopy = update;
  v10.receiver = self;
  v10.super_class = PXGZoomLayout;
  [(PXGLayout *)&v10 sublayoutNeedsUpdate:updateCopy];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_8;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout sublayoutNeedsUpdate:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:250 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }

LABEL_8:
}

- (void)userInterfaceDirectionDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 userInterfaceDirectionDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout userInterfaceDirectionDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:243 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)scrollSpeedRegimeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 scrollSpeedRegimeDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout scrollSpeedRegimeDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:236 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)referenceDepthDidChange
{
  v8.receiver = self;
  v8.super_class = PXGZoomLayout;
  [(PXGLayout *)&v8 referenceDepthDidChange];
  if (!self->_isUpdatingSublayouts)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout referenceDepthDidChange]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:208 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

uint64_t __37__PXGZoomLayout__configureSublayouts__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsObject:?];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);

    return [v5 addIndex:a2];
  }

  return result;
}

- (void)setAnchorViewportCenter:(CGPoint)center
{
  if (self->_anchorViewportCenter.x != center.x || self->_anchorViewportCenter.y != center.y)
  {
    self->_anchorViewportCenter = center;
    [(PXGZoomLayout *)self _configureSublayouts];
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_10:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_9:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout setAnchorViewportCenter:]"];
        [currentHandler handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:90 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_10;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_9;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setAnchorObjectReference:(id)reference
{
  referenceCopy = reference;
  if (self->_anchorObjectReference != referenceCopy)
  {
    v11 = referenceCopy;
    objc_storeStrong(&self->_anchorObjectReference, reference);
    [(PXGZoomLayout *)self _configureSublayouts];
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_8:
        referenceCopy = v11;
        goto LABEL_9;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout setAnchorObjectReference:]"];
        [currentHandler handleFailureInFunction:v10 file:@"PXGZoomLayout.m" lineNumber:81 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    referenceCopy = v11;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (int64_t)itemForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  v5 = [(PXGLayout *)self sublayoutForSpriteIndex:?];
  itemsLayout = [v5 itemsLayout];
  if (itemsLayout && (v7 = -[PXGLayout convertSpriteIndex:toDescendantLayout:](self, "convertSpriteIndex:toDescendantLayout:", v3, itemsLayout), [itemsLayout spriteIndexIsItem:v7]))
  {
    v8 = [itemsLayout itemForSpriteIndex:v7];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)setPadding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  p_padding = &self->_padding;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_padding->top = top;
    p_padding->left = left;
    p_padding->bottom = bottom;
    p_padding->right = right;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout setPadding:]"];
        [currentHandler handleFailureInFunction:v13 file:@"PXGZoomLayout.m" lineNumber:59 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setLayers:(id)layers primaryLayer:(id)layer
{
  layersCopy = layers;
  layerCopy = layer;
  v8 = self->_layers;
  v9 = v8;
  if (v8 == layersCopy)
  {

LABEL_5:
    if (self->_primaryLayer == layerCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = [(NSArray *)v8 isEqual:?];

  if (v10)
  {
    goto LABEL_5;
  }

LABEL_6:
  objc_storeStrong(&self->_layers, layers);
  objc_storeStrong(&self->_primaryLayer, layer);
  [(PXGZoomLayout *)self _configureSublayouts];
  [(PXGLayout *)self setNeedsUpdateOfScrollableAxis];
LABEL_7:
}

@end
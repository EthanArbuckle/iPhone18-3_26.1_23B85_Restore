@interface PXGZoomLayout
- (CGPoint)anchorViewportCenter;
- (CGRect)sublayout:(id)a3 visibleRectForRequestedVisibleRect:(CGRect)a4;
- (PXGZoomLayout)init;
- (UIEdgeInsets)padding;
- (id)axSpriteIndexes;
- (int64_t)itemForSpriteIndex:(unsigned int)a3;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_configureSublayouts;
- (void)_updateSublayoutGeometries;
- (void)didChangeSublayoutOrigins;
- (void)displayScaleDidChange;
- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)scrollSpeedRegimeDidChange;
- (void)setAnchorObjectReference:(id)a3;
- (void)setAnchorViewportCenter:(CGPoint)a3;
- (void)setLayers:(id)a3 primaryLayer:(id)a4;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)sublayoutDidChangeContentSize:(id)a3;
- (void)sublayoutDidChangeLastBaseline:(id)a3;
- (void)sublayoutNeedsUpdate:(id)a3;
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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout viewEnvironmentDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:194 description:{@"invalidating %lu after it already has been updated", 1}];

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
  v4 = [(PXGZoomLayout *)self layers];
  v5 = [(PXGZoomLayout *)self primaryLayer];
  v6 = [v4 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXGZoomLayout.m" lineNumber:106 description:@"primaryLayer must be one of the layers"];
  }

  v7 = [(PXGZoomLayout *)self layers];
  v8 = [(PXGLayout *)self sublayoutDataStore];
  v9 = [MEMORY[0x277CCAB58] indexSet];
  v10 = [(PXGLayout *)self sublayoutDataStore];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __37__PXGZoomLayout__configureSublayouts__block_invoke;
  v30[3] = &unk_2782A7BD8;
  v11 = v7;
  v31 = v11;
  v12 = v9;
  v32 = v12;
  [v10 enumerateSublayoutsUsingBlock:v30];

  [(PXGLayout *)self removeSublayoutsAtIndexes:v12];
  v13 = [(PXGZoomLayout *)self anchorObjectReference];
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
        if (!v8 || [v8 indexOfSublayout:{*(*(&v26 + 1) + 8 * v22), v26}] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(PXGLayout *)self addSublayout:v23, v26];
        }

        v24 = [v23 itemsLayout];
        [v24 setAnchorObjectReference:v13];
        [v24 setAnchorViewportCenter:{v15, v17}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout referenceSizeDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:201 description:{@"invalidating %lu after it already has been updated", 1}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout displayScaleDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:229 description:{@"invalidating %lu after it already has been updated", 1}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout safeAreaInsetsDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:222 description:{@"invalidating %lu after it already has been updated", 1}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout visibleRectDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:215 description:{@"invalidating %lu after it already has been updated", 1}];

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
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXGZoomLayout.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

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
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXGZoomLayout.m" lineNumber:100 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
  v13 = [(PXGLayout *)self viewEnvironment];
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
  v31 = [(PXGLayout *)self scrollSpeedRegime];
  v32 = [(PXGLayout *)self userInterfaceDirection];
  v33 = [(PXGLayout *)self sublayoutDataStore];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __43__PXGZoomLayout__updateSublayoutGeometries__block_invoke;
  v60[3] = &unk_2782A7C00;
  v61 = v13;
  v62 = v11;
  v63 = v54;
  v64 = v53;
  v65 = v20;
  v66 = v22;
  v67 = v24;
  v68 = v26;
  v69 = v48;
  v70 = v31;
  v71 = v28;
  v72 = v30;
  v73 = v52;
  v74 = v51;
  v75 = v50;
  v76 = v49;
  v77 = v32;
  v34 = v13;
  [v33 enumerateSublayoutsUsingBlock:v60];

  v35 = [(PXGZoomLayout *)self primaryLayer];
  [v35 visibleRect];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [v35 contentSize];
  v45 = v56 + v57 + v44;
  v46 = [(PXGLayout *)self sublayoutDataStore];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __43__PXGZoomLayout__updateSublayoutGeometries__block_invoke_2;
  v59[3] = &__block_descriptor_56_e93_v40__0q8_____CGSize_dd_dS_CGSize_dd____ddd_____CGAffineTransform_dddddd_d_d_16_____v_v_24_B32l;
  *&v59[4] = v58;
  *&v59[5] = v57;
  v59[6] = 0;
  [v46 enumerateSublayoutGeometriesUsingBlock:v59];

  [(PXGLayout *)self setContentSize:v55, v45];
  [v35 lastBaseline];
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
  v2 = [(PXGZoomLayout *)self primaryLayer];
  v3 = [v2 scrollableAxis];

  return v3;
}

- (void)enumerateVisibleAnchoringLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXGZoomLayout *)self primaryLayer];
  if (v5)
  {
    v6 = 0;
    v4[2](v4, v5, &v6);
  }
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v8 = a3;
  *a5 = a3;
  v9 = [(PXGZoomLayout *)self primaryLayer];

  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = [(PXGLayout *)self sublayoutDataStore];
  v11 = [(PXGZoomLayout *)self primaryLayer];
  v12 = [v10 indexOfSublayout:v11];

  return v12;
}

- (CGRect)sublayout:(id)a3 visibleRectForRequestedVisibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 visibleRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(PXGZoomLayout *)self primaryLayer];
  v19 = [v9 isDescendantOfLayout:v18];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout didChangeSublayoutOrigins]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:271 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)sublayoutDidChangeLastBaseline:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGZoomLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeLastBaseline:v4];
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
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout sublayoutDidChangeLastBaseline:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:264 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)sublayoutDidChangeContentSize:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGZoomLayout;
  [(PXGLayout *)&v10 sublayoutDidChangeContentSize:v4];
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
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout sublayoutDidChangeContentSize:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:257 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)sublayoutNeedsUpdate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXGZoomLayout;
  [(PXGLayout *)&v10 sublayoutNeedsUpdate:v4];
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
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout sublayoutNeedsUpdate:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:250 description:{@"invalidating %lu after it already has been updated", 1}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout userInterfaceDirectionDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:243 description:{@"invalidating %lu after it already has been updated", 1}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout scrollSpeedRegimeDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:236 description:{@"invalidating %lu after it already has been updated", 1}];

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
        v6 = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout referenceDepthDidChange]"];
        [v6 handleFailureInFunction:v7 file:@"PXGZoomLayout.m" lineNumber:208 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)setAnchorViewportCenter:(CGPoint)a3
{
  if (self->_anchorViewportCenter.x != a3.x || self->_anchorViewportCenter.y != a3.y)
  {
    self->_anchorViewportCenter = a3;
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
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout setAnchorViewportCenter:]"];
        [v8 handleFailureInFunction:v9 file:@"PXGZoomLayout.m" lineNumber:90 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)setAnchorObjectReference:(id)a3
{
  v5 = a3;
  if (self->_anchorObjectReference != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_anchorObjectReference, a3);
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
        v5 = v11;
        goto LABEL_9;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v9 = [MEMORY[0x277CCA890] currentHandler];
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout setAnchorObjectReference:]"];
        [v9 handleFailureInFunction:v10 file:@"PXGZoomLayout.m" lineNumber:81 description:{@"invalidating %lu after it already has been updated", 1}];

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
    v5 = v11;
    if (!willPerformUpdate)
    {
      [(PXGLayout *)self setNeedsUpdate];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (int64_t)itemForSpriteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(PXGLayout *)self sublayoutForSpriteIndex:?];
  v6 = [v5 itemsLayout];
  if (v6 && (v7 = -[PXGLayout convertSpriteIndex:toDescendantLayout:](self, "convertSpriteIndex:toDescendantLayout:", v3, v6), [v6 spriteIndexIsItem:v7]))
  {
    v8 = [v6 itemForSpriteIndex:v7];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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
        v12 = [MEMORY[0x277CCA890] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGZoomLayout setPadding:]"];
        [v12 handleFailureInFunction:v13 file:@"PXGZoomLayout.m" lineNumber:59 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)setLayers:(id)a3 primaryLayer:(id)a4
{
  v11 = a3;
  v7 = a4;
  v8 = self->_layers;
  v9 = v8;
  if (v8 == v11)
  {

LABEL_5:
    if (self->_primaryLayer == v7)
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
  objc_storeStrong(&self->_layers, a3);
  objc_storeStrong(&self->_primaryLayer, a4);
  [(PXGZoomLayout *)self _configureSublayouts];
  [(PXGLayout *)self setNeedsUpdateOfScrollableAxis];
LABEL_7:
}

@end
@interface TSDTilingLayer
+ (CGImage)p_newCheckerboardImage;
+ (CGImage)p_newGeneratedCheckerboardImage;
+ (CGSize)defaultTileSize;
- (BOOL)p_updateTileSizeWithLayerSize:(CGSize)size;
- (BOOL)tilingSafeHasContents;
- (TSDTilingLayer)init;
- (id)p_nonTileAndContentLayers;
- (id)p_tileAndContentLayers;
- (id)p_tileLayers;
- (unint64_t)p_tilesHigh;
- (unint64_t)p_tilesWide;
- (void)dealloc;
- (void)display;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)i_drawRect:(CGRect)rect inContext:(CGContext *)context inBackground:(BOOL)background;
- (void)i_drawTile:(id)tile inContext:(CGContext *)context;
- (void)i_drawTileInBackground:(id)background inRect:(CGRect)rect;
- (void)layoutSublayers;
- (void)p_updateTileIndexes:(id)indexes visibleBounds:(CGRect)bounds;
- (void)setContents:(id)contents;
- (void)setContentsScale:(double)scale;
- (void)setDrawsInBackground:(BOOL)background;
- (void)setEnableContext:(BOOL)context;
- (void)setForceTiling:(BOOL)tiling;
- (void)setNeedsDisplayForDirtyTiles:(id)tiles;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNeedsLayout;
- (void)setNeedsLayoutForTilingLayers;
- (void)setTileContents:(id)contents;
- (void)setTilingMode:(int)mode;
- (void)tilingSafeSetSublayers:(id)sublayers;
@end

@implementation TSDTilingLayer

- (TSDTilingLayer)init
{
  v9.receiver = self;
  v9.super_class = TSDTilingLayer;
  v2 = [(TSDTilingLayer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->mTilingMode = 0;
    [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
    *&v4 = v4 * 0.25;
    v5 = fmaxf(*&v4, 640.0);
    [(TSDTilingLayer *)v3 contentsScale];
    v7 = v5 / v6;
    v3->mTileSize.width = v7;
    v3->mTileSize.height = v7;
    *&v3->mFlags |= 2u;
    v3->mDirtyTiles = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->mHasEverHadTileLayout = 0;
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDTilingLayer;
  [(TSDTilingLayer *)&v3 dealloc];
}

- (void)setContentsScale:(double)scale
{
  v19 = *MEMORY[0x277D85DE8];
  [(TSDTilingLayer *)self contentsScale];
  if (v5 != scale)
  {
    [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
    *&v6 = v6 * 0.25;
    v7 = fmaxf(*&v6, 640.0) / scale;
    self->mTileSize.width = v7;
    self->mTileSize.height = v7;
    [(TSDTilingLayer *)self setNeedsLayout];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    p_tileLayers = [(TSDTilingLayer *)self p_tileLayers];
    v9 = [p_tileLayers countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(p_tileLayers);
          }

          [*(*(&v14 + 1) + 8 * v12++) setContentsScale:scale];
        }

        while (v10 != v12);
        v10 = [p_tileLayers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  v13.receiver = self;
  v13.super_class = TSDTilingLayer;
  [(TSDTilingLayer *)&v13 setContentsScale:scale];
}

- (void)setContents:(id)contents
{
  contents = [(TSDTilingLayer *)self contents];
  v7.receiver = self;
  v7.super_class = TSDTilingLayer;
  [(TSDTilingLayer *)&v7 setContents:contents];
  if (contents != contents)
  {
    mFlags = self->mFlags;
    *&self->mFlags = mFlags & 0x9D | 2;
    if (mFlags)
    {
      [(TSDTilingLayer *)self setNeedsLayout];
    }
  }
}

- (void)setTileContents:(id)contents
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!contents || (isKindOfClass & 1) != 0)
  {
    if (contents)
    {
      [contents setZPosition:-10000.0];
    }

    [(TSDTilingLayer *)&v7 setContents:0, v6.receiver, v6.super_class, self, TSDTilingLayer];
  }

  else
  {
    [(TSDTilingLayer *)&v6 setContents:contents, self, TSDTilingLayer, v7.receiver, v7.super_class];
  }
}

- (void)display
{
  if (*&self->mFlags)
  {
    if ([(TSDTilingLayer *)self contents])
    {
      v4.receiver = self;
      v4.super_class = TSDTilingLayer;
      [(TSDTilingLayer *)&v4 setContents:0];
    }
  }

  else if (![(TSDTilingLayer *)self drawsInBackground]&& ![(TSDTilingLayer *)self forceTiling]&& !self->_geometryProvider)
  {
    v3.receiver = self;
    v3.super_class = TSDTilingLayer;
    [(TSDTilingLayer *)&v3 display];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25 = *MEMORY[0x277D85DE8];
  [(TSDTilingLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [-[TSDTilingLayer delegate](self "delegate")];
  }

  if ((*&self->mFlags & 2) != 0)
  {
    *&self->mFlags &= ~2u;
    [(TSDTilingLayer *)self setNeedsLayout];
    v8 = *(MEMORY[0x277CBF398] + 16);
    self->mLastVisibleBounds.origin = *MEMORY[0x277CBF398];
    self->mLastVisibleBounds.size = v8;
    self->mLastBoundsSize = *MEMORY[0x277CBF3A8];
  }

  v23.receiver = self;
  v23.super_class = TSDTilingLayer;
  [(TSDTilingLayer *)&v23 setNeedsDisplayInRect:x, y, width, height];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  p_tileLayers = [(TSDTilingLayer *)self p_tileLayers];
  v10 = [p_tileLayers countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(p_tileLayers);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        [v14 frame];
        v27.origin.x = v15;
        v27.origin.y = v16;
        v27.size.width = v17;
        v27.size.height = v18;
        v26.origin.x = x;
        v26.origin.y = y;
        v26.size.width = width;
        v26.size.height = height;
        if (CGRectIntersectsRect(v26, v27))
        {
          [(TSDTilingLayer *)self convertRect:v14 toLayer:x, y, width, height];
          [v14 setNeedsDisplayInRect:?];
        }
      }

      v11 = [p_tileLayers countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)setNeedsLayoutForTilingLayers
{
  [(TSDTilingLayer *)self setNeedsLayout];
  v3.receiver = self;
  v3.super_class = TSDTilingLayer;
  [(CALayer *)&v3 setNeedsLayoutForTilingLayers];
}

- (void)setNeedsLayout
{
  *&self->mFlags |= 0x10u;
  [(TSDTilingLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [-[TSDTilingLayer delegate](self "delegate")];
  }

  v3.receiver = self;
  v3.super_class = TSDTilingLayer;
  [(TSDTilingLayer *)&v3 setNeedsLayout];
}

- (unint64_t)p_tilesWide
{
  if (self->_geometryProvider)
  {
    return 1;
  }

  [(TSDTilingLayer *)self bounds];
  return vcvtpd_u64_f64(v4 / self->mTileSize.width);
}

- (unint64_t)p_tilesHigh
{
  geometryProvider = self->_geometryProvider;
  if (geometryProvider)
  {
    return [(TSDTileGeometryProviding *)geometryProvider tileGeometryCountWithLayer:self];
  }

  else
  {
    [(TSDTilingLayer *)self bounds];
    return ceil(v5 / self->mTileSize.height);
  }
}

- (void)p_updateTileIndexes:(id)indexes visibleBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  geometryProvider = self->_geometryProvider;
  if (geometryProvider)
  {

    [(TSDTileGeometryProviding *)geometryProvider tileGeometryAddVisibileIndices:indexes withLayer:self visibleBounds:?];
  }

  else
  {
    p_tilesWide = [(TSDTilingLayer *)self p_tilesWide];
    [(TSDTilingLayer *)self bounds];
    v13 = v12;
    v15 = v14;
    v16 = TSDSubtractPoints(x, y, v12);
    p_mTileSize = &self->mTileSize;
    v28.size.width = p_mTileSize->width;
    v28.size.height = p_mTileSize->height;
    *&v16 = v16 / p_mTileSize->width;
    *&v18 = v18 / v28.size.height;
    v19 = (floorf(*&v16) + (floorf(*&v18) * p_tilesWide));
    v28.origin.x = v13 + p_mTileSize->width * (v19 % p_tilesWide);
    v28.origin.y = v15 + v28.size.height * (v19 / p_tilesWide);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectUnion(v26, v28);
    v20 = vcvtpd_u64_f64(v27.size.height / p_mTileSize->height);
    if (v20)
    {
      v21 = 0;
      v22 = vcvtpd_u64_f64(v27.size.width / p_mTileSize->width);
      do
      {
        if (v22)
        {
          v23 = v19;
          v24 = v22;
          do
          {
            [indexes addIndex:v23++];
            --v24;
          }

          while (v24);
        }

        ++v21;
        v19 += p_tilesWide;
      }

      while (v21 != v20);
    }
  }
}

- (void)setEnableContext:(BOOL)context
{
  if (self->_enableContext != context)
  {
    self->_enableContext = context;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:?];

    [(TSDTilingLayer *)self setValue:v5 forKeyPath:@"separatedOptions.enableContext"];
  }
}

- (void)layoutSublayers
{
  selfCopy = self;
  v87 = *MEMORY[0x277D85DE8];
  v3 = 72;
  if ((*&self->mFlags & 0x10) == 0)
  {
    goto LABEL_65;
  }

  [(TSDTilingLayer *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![-[TSDTilingLayer delegate](selfCopy "delegate")])
  {
    goto LABEL_65;
  }

  v84.receiver = selfCopy;
  v84.super_class = TSDTilingLayer;
  [(TSDTilingLayer *)&v84 layoutSublayers];
  selfCopy->mHasEverHadTileLayout = 1;
  [(TSDTilingLayer *)selfCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(TSDTilingLayer *)selfCopy superlayer])
  {
    [(TSDTilingLayer *)selfCopy delegate];
    if (objc_opt_respondsToSelector())
    {
      [-[TSDTilingLayer delegate](selfCopy "delegate")];
    }

    else
    {
      superlayer = [(TSDTilingLayer *)selfCopy superlayer];
      v21 = v11 > 0.0;
      v22 = v9 > 0.0;
      if (superlayer && v11 > 0.0)
      {
        v23 = selfCopy;
        height = v11;
        width = v9;
        y = v7;
        x = v5;
        if (v9 > 0.0)
        {
          x = v5;
          y = v7;
          width = v9;
          height = v11;
          v24 = selfCopy;
          do
          {
            v23 = superlayer;
            [(TSDTilingLayer *)superlayer convertRect:v24 fromLayer:x, y, width, height];
            x = v25;
            y = v26;
            width = v27;
            height = v28;
            if ([(TSDTilingLayer *)v23 masksToBounds])
            {
              [(TSDTilingLayer *)v23 bounds];
              v94.origin.x = v29;
              v94.origin.y = v30;
              v94.size.width = v31;
              v94.size.height = v32;
              v88.origin.x = x;
              v88.origin.y = y;
              v88.size.width = width;
              v88.size.height = height;
              v89 = CGRectIntersection(v88, v94);
              x = v89.origin.x;
              y = v89.origin.y;
              width = v89.size.width;
              height = v89.size.height;
            }

            superlayer = [(TSDTilingLayer *)v23 superlayer];
            v21 = height > 0.0;
            v22 = width > 0.0;
            if (!superlayer)
            {
              break;
            }

            if (height <= 0.0)
            {
              break;
            }

            v24 = v23;
          }

          while (width > 0.0);
        }
      }

      else
      {
        v23 = selfCopy;
        height = v11;
        width = v9;
        y = v7;
        x = v5;
      }

      if (!v21 || !v22)
      {
        goto LABEL_25;
      }

      [(TSDTilingLayer *)selfCopy convertRect:v23 fromLayer:x, y, width, height];
    }

    x = v12;
    y = v13;
    width = v14;
    height = v15;
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    y = *(MEMORY[0x277CBF398] + 8);
    width = *(MEMORY[0x277CBF398] + 16);
    height = *(MEMORY[0x277CBF398] + 24);
  }

LABEL_25:
  v90.origin.x = x;
  v90.origin.y = y;
  v90.size.width = width;
  v90.size.height = height;
  v95.origin.x = v5;
  v95.origin.y = v7;
  v95.size.width = v9;
  v95.size.height = v11;
  v91 = CGRectIntersection(v90, v95);
  v34 = v91.origin.x;
  v35 = v91.origin.y;
  v36 = v91.size.width;
  v37 = v91.size.height;
  v38 = [(TSDTilingLayer *)selfCopy p_updateTileSizeWithLayerSize:v9, v11];
  p_tilesWide = [(TSDTilingLayer *)selfCopy p_tilesWide];
  p_tilesHigh = [(TSDTilingLayer *)selfCopy p_tilesHigh];
  v41 = p_tilesHigh;
  mFlags = selfCopy->mFlags;
  v43 = 1;
  if (p_tilesWide <= 1 && p_tilesHigh <= 1)
  {
    v43 = [(TSDTilingLayer *)selfCopy drawsInBackground]|| [(TSDTilingLayer *)selfCopy forceTiling]|| selfCopy->_geometryProvider != 0;
  }

  v44 = selfCopy->mFlags;
  *&selfCopy->mFlags = v44 & 0xEE | v43;
  v45 = (v44 & 2) != 0 && [-[TSDTilingLayer p_tileLayers](selfCopy "p_tileLayers")] != 0;
  geometryProvider = selfCopy->_geometryProvider;
  if (geometryProvider)
  {
    tileGeometryDirty = [(TSDTileGeometryProviding *)geometryProvider tileGeometryDirty];
  }

  else
  {
    tileGeometryDirty = 0;
  }

  v47 = mFlags & 1;
  p_x = &selfCopy->mLastVisibleBounds.origin.x;
  if (!TSDNearlyEqualRects(v34, v35, v36, v37, selfCopy->mLastVisibleBounds.origin.x, selfCopy->mLastVisibleBounds.origin.y, selfCopy->mLastVisibleBounds.size.width, selfCopy->mLastVisibleBounds.size.height) || v47 != (*&selfCopy->mFlags & 1) || v45 | !TSDNearlyEqualSizes(selfCopy->mLastBoundsSize.width, selfCopy->mLastBoundsSize.height, v9, v11) | tileGeometryDirty & 1)
  {
    [(TSDTileGeometryProviding *)selfCopy->_geometryProvider setTileGeometryDirty:0];
    v49 = selfCopy->mFlags;
    if (v47 != (v49 & 1) && (*&selfCopy->mFlags & 2) == 0)
    {
      if (*&selfCopy->mFlags)
      {
        [(TSDTilingLayer *)selfCopy setTileContents:0];
      }

      else if ((*&selfCopy->mFlags & 0x20) == 0)
      {
        *&selfCopy->mFlags = v49 | 0x20;
      }
    }

    v73 = v41;
    v92.origin.x = *p_x;
    v92.origin.y = selfCopy->mLastVisibleBounds.origin.y;
    v92.size.width = selfCopy->mLastVisibleBounds.size.width;
    v92.size.height = selfCopy->mLastVisibleBounds.size.height;
    IsNull = CGRectIsNull(v92);
    *p_x = v34;
    selfCopy->mLastVisibleBounds.origin.y = v35;
    selfCopy->mLastVisibleBounds.size.width = v36;
    selfCopy->mLastVisibleBounds.size.height = v37;
    selfCopy->mLastBoundsSize.width = v9;
    selfCopy->mLastBoundsSize.height = v11;
    v51 = objc_alloc_init(MEMORY[0x277CCAB58]);
    v93.origin.x = v34;
    v93.origin.y = v35;
    v93.size.width = v36;
    v93.size.height = v37;
    v52 = CGRectIsNull(v93);
    v70 = 72;
    if ((*&selfCopy->mFlags & 3) == 1 && !v52 && v37 > 0.0 && v36 > 0.0)
    {
      [(TSDTilingLayer *)selfCopy p_updateTileIndexes:v51 visibleBounds:v34, v35, v36, v37];
    }

    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v74 = selfCopy;
    p_tileLayers = [(TSDTilingLayer *)selfCopy p_tileLayers];
    v55 = [p_tileLayers countByEnumeratingWithState:&v80 objects:v86 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v81;
      v58 = IsNull || v38;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v81 != v57)
          {
            objc_enumerationMutation(p_tileLayers);
          }

          v60 = *(*(&v80 + 1) + 8 * i);
          index = [v60 index];
          if (v58 || (v62 = index, ([v51 containsIndex:index] & 1) == 0))
          {
            [v53 addObject:v60];
          }

          else
          {
            [v51 removeIndex:v62];
            if (tileGeometryDirty)
            {
              [(TSDTileGeometryProviding *)v74->_geometryProvider tileGeometryConfigureWithLayer:v74 tileLayer:v60 atIndex:v62];
            }

            [v60 updateFrameWithTileSize:p_tilesWide tilesWide:v73 tilesHigh:v74->_geometryProvider geometryProvider:{v74->mTileSize.width, v74->mTileSize.height}];
            [v60 setLocation:v62 % p_tilesWide];
          }
        }

        v56 = [p_tileLayers countByEnumeratingWithState:&v80 objects:v86 count:16];
      }

      while (v56);
    }

    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __33__TSDTilingLayer_layoutSublayers__block_invoke;
    v79[3] = &unk_279D48D58;
    v79[6] = p_tilesWide;
    v79[7] = v73;
    *&v79[8] = v5;
    *&v79[9] = v7;
    *&v79[10] = v9;
    *&v79[11] = v11;
    selfCopy = v74;
    v79[4] = v74;
    v79[5] = v53;
    [v51 enumerateIndexesUsingBlock:{v79, v70}];
    [v53 makeObjectsPerformSelector:sel_removeFromSuperlayer];

    v3 = v71;
  }

LABEL_65:
  if ((*(&selfCopy->super.super.isa + v3) & 0x20) != 0 && selfCopy->mHasEverHadTileLayout)
  {
    if (*(&selfCopy->super.super.isa + v3))
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      p_tileLayers2 = [(TSDTilingLayer *)selfCopy p_tileLayers];
      v64 = [p_tileLayers2 countByEnumeratingWithState:&v75 objects:v85 count:16];
      if (!v64)
      {
        goto LABEL_80;
      }

      v65 = v64;
      v66 = 0;
      v67 = *v76;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v76 != v67)
          {
            objc_enumerationMutation(p_tileLayers2);
          }

          v69 = *(*(&v75 + 1) + 8 * j);
          if ([v69 needsTileDisplay])
          {
            [(NSMutableArray *)selfCopy->mDirtyTiles addObject:v69];
            v66 = 1;
          }
        }

        v65 = [p_tileLayers2 countByEnumeratingWithState:&v75 objects:v85 count:16];
      }

      while (v65);
      if ((v66 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      *(&selfCopy->super.super.isa + v3) |= 0x40u;
    }

    [(TSDTilingLayer *)selfCopy setNeedsDisplayForDirtyTiles:selfCopy];
LABEL_80:
    *(&selfCopy->super.super.isa + v3) &= ~0x20u;
  }
}

uint64_t __33__TSDTilingLayer_layoutSublayers__block_invoke(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = a2 / v7;
  v9 = a2 % v7;
  v10 = *(v6 + 152);
  if (v10)
  {
    [v10 tileGeometryRectWithLayer:? atIndex:? mask:?];
LABEL_6:
    v13 = v11;
    v14 = v12;
    goto LABEL_7;
  }

  v13 = *(v6 + 56);
  v14 = *(v6 + 64);
  if (v9 == v7 - 1 || v8 == *(a1 + 56) - 1)
  {
    v29 = *(a1 + 64);
    v28.origin.x = v29.origin.x + v13 * v9;
    v28.origin.y = v29.origin.y + v14 * v8;
    v28.size.width = *(v6 + 56);
    v28.size.height = *(v6 + 64);
    *&a3 = CGRectIntersection(v28, v29);
    goto LABEL_6;
  }

LABEL_7:
  if (([*(a1 + 32) drawsInBackground] & 1) == 0 && objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8], "currentThread"), "isMainThread"))
  {
    v15 = [*(a1 + 40) count];
    while (v15)
    {
      v16 = [*(a1 + 40) objectAtIndex:--v15];
      [(TSDTilingTileLayer *)v16 bounds];
      if (v18 == v13 && v17 == v14)
      {
        [*(a1 + 40) removeObjectAtIndex:v15];
        if (!v16)
        {
          break;
        }

        v20 = 0;
        goto LABEL_19;
      }
    }
  }

  v16 = objc_alloc_init(TSDTilingTileLayer);
  [(TSDTilingTileLayer *)v16 setZPosition:-10000.0];
  -[TSDTilingTileLayer setOpaque:](v16, "setOpaque:", [*(a1 + 32) isOpaque]);
  [(TSDTilingTileLayer *)v16 setAnchorPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  [*(a1 + 32) contentsScale];
  [(TSDTilingTileLayer *)v16 setContentsScale:?];
  -[TSDTilingTileLayer setDrawsAsynchronously:](v16, "setDrawsAsynchronously:", [*(a1 + 32) drawsAsynchronously]);
  [*(a1 + 32) insertSublayer:v16 atIndex:0];

  v20 = 1;
LABEL_19:
  [(TSDTilingTileLayer *)v16 setIndex:a2];
  [(TSDTilingTileLayer *)v16 setLocation:v9, v8];
  [(TSDTilingTileLayer *)v16 setNeedsTileDisplay:0];
  -[TSDTilingTileLayer setValue:forKeyPath:](v16, "setValue:forKeyPath:", [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 145)], @"separatedOptions.enableContext");
  v21 = *(a1 + 32);
  v22 = *(v21 + 152);
  if (v22)
  {
    [v22 tileGeometryConfigureWithLayer:? tileLayer:? atIndex:?];
    v21 = *(a1 + 32);
  }

  if ((*(v21 + 72) & 4) != 0)
  {
    v23 = [objc_opt_class() p_newCheckerboardImage];
    v24 = [MEMORY[0x277CD9FF0] disableActions];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    [(TSDTilingTileLayer *)v16 setContents:v23];
    [(TSDTilingTileLayer *)v16 setContentsGravity:*MEMORY[0x277CDA748]];
    [(TSDTilingTileLayer *)v16 setMasksToBounds:1];
    [MEMORY[0x277CD9FF0] setDisableActions:v24];
    CGImageRelease(v23);
    v21 = *(a1 + 32);
  }

  result = [(TSDTilingTileLayer *)v16 updateFrameWithTileSize:*(a1 + 48) tilesWide:*(a1 + 56) tilesHigh:*(v21 + 152) geometryProvider:*(v21 + 56), *(v21 + 64)];
  if ((v20 & 1) == 0)
  {
    v26 = *(a1 + 32);

    return [v26 i_setNeedsTileDisplayForTile:v16];
  }

  return result;
}

- (void)setNeedsDisplayForDirtyTiles:(id)tiles
{
  [(TSDTilingLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [-[TSDTilingLayer delegate](self "delegate")];
  }

  v5.receiver = self;
  v5.super_class = TSDTilingLayer;
  [(CALayer *)&v5 setNeedsDisplayForDirtyTiles:tiles];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  [layer superlayer];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  superlayer = [layer superlayer];
  if (v6 == v7)
  {
    if ([(TSDTilingLayer *)superlayer superlayer]!= self)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTilingLayer drawLayer:inContext:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTilingLayer.m"), 620, @"This tiling layer is not responsible for the layer asking to be drawn"}];
    }

    [objc_msgSend(layer "superlayer")];

    [(TSDTilingLayer *)self setNeedsDisplayInRect:?];
  }

  else
  {
    if (superlayer != self)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTilingLayer drawLayer:inContext:]"];
      [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTilingLayer.m"), 623, @"This tiling layer is not responsible for the layer asking to be drawn"}];
    }

    [(TSDTilingLayer *)self setNeedsDisplay];
  }
}

- (void)setTilingMode:(int)mode
{
  if (self->mTilingMode != mode)
  {
    self->mTilingMode = mode;
    if ((*&self->mFlags & 2) == 0)
    {
      v4 = *(MEMORY[0x277CBF398] + 16);
      self->mLastVisibleBounds.origin = *MEMORY[0x277CBF398];
      self->mLastVisibleBounds.size = v4;
      self->mLastBoundsSize = *MEMORY[0x277CBF3A8];
      [(TSDTilingLayer *)self setNeedsDisplay];

      [(TSDTilingLayer *)self setNeedsLayout];
    }
  }
}

- (void)setDrawsInBackground:(BOOL)background
{
  if (background)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->mFlags = *&self->mFlags & 0xFB | v3;
}

- (void)setForceTiling:(BOOL)tiling
{
  if (tiling)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->mFlags = *&self->mFlags & 0xF7 | v3;
}

- (void)tilingSafeSetSublayers:(id)sublayers
{
  if (([sublayers isEqualToArray:{-[TSDTilingLayer p_nonTileAndContentLayers](self, "p_nonTileAndContentLayers")}] & 1) == 0)
  {
    v5 = [-[TSDTilingLayer p_tileAndContentLayers](self "p_tileAndContentLayers")];

    [(TSDTilingLayer *)self setSublayers:v5];
  }
}

- (BOOL)tilingSafeHasContents
{
  if (*&self->mFlags)
  {
    return [-[TSDTilingLayer p_tileLayers](self "p_tileLayers")] != 0;
  }

  v3.receiver = self;
  v3.super_class = TSDTilingLayer;
  return [(CALayer *)&v3 tilingSafeHasContents];
}

- (void)i_drawTile:(id)tile inContext:(CGContext *)context
{
  if (CGRectIsNull(self->mLastVisibleBounds))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTilingLayer i_drawTile:inContext:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTilingLayer.m"), 696, @"Shouldn't be drawing tiles for an hidden layer %p, tile %p index %ld", self, tile, objc_msgSend(tile, "index")}];
  }

  [tile frame];

  [(TSDTilingLayer *)self i_drawRect:context inContext:0 inBackground:?];
}

- (void)i_drawRect:(CGRect)rect inContext:(CGContext *)context inBackground:(BOOL)background
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, -x, -y);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGContextClipToRect(context, v12);
  [(TSDTilingLayer *)self drawInContext:context];

  CGContextRestoreGState(context);
}

- (void)i_drawTileInBackground:(id)background inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  index = [background index];
  v19 = 0;
  v20 = 0;
  [(TSDTilingLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v11 = [-[TSDTilingLayer delegate](self "delegate")];
    v12 = v20;
  }

  else
  {
    v12 = 0;
    v11 = 1;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v15 = __48__TSDTilingLayer_i_drawTileInBackground_inRect___block_invoke;
  v16 = &unk_279D47708;
  selfCopy = self;
  v18 = v12;
  if (v11)
  {
    if ([v19 isShuttingDown])
    {
      v15(v14);
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __48__TSDTilingLayer_i_drawTileInBackground_inRect___block_invoke_2;
      v13[3] = &unk_279D48D80;
      v13[4] = background;
      v13[5] = v19;
      *&v13[8] = x;
      *&v13[9] = y;
      *&v13[10] = width;
      *&v13[11] = height;
      v13[6] = v14;
      v13[7] = index;
      [v19 performAsync:v13];
    }
  }
}

uint64_t __48__TSDTilingLayer_i_drawTileInBackground_inRect___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegate];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v3 didEndDrawingTilingLayerInBackground:v4 withToken:v5];
  }

  return result;
}

uint64_t __48__TSDTilingLayer_i_drawTileInBackground_inRect___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) superlayer] && objc_msgSend(*(a1 + 32), "index") == *(a1 + 56) && (objc_msgSend(*(a1 + 40), "isShuttingDown") & 1) == 0)
  {
    [*(a1 + 32) setNeedsDisplayInRectIgnoringBackground:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
    [*(a1 + 32) display];
    [*(a1 + 32) setMasksToBounds:0];
    [MEMORY[0x277CD9FF0] flush];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)p_updateTileSizeWithLayerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(TSDTilingLayer *)self contentsScale];
  v7 = v6;
  [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  v9 = v8 / v7;
  [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  *&v10 = v10 * 0.25;
  v11 = fmaxf(*&v10, 640.0) / v7;
  v12 = fmax(width, height) > v9;
  v13 = width * height;
  v14 = v11 * v11;
  mTilingMode = self->mTilingMode;
  if (mTilingMode > 3)
  {
    v16 = v9 * v9 * 0.25;
    switch(mTilingMode)
    {
      case 4:
        if (v13 > v16)
        {
          v12 = 1;
        }

        if (v12)
        {
          height = v11 + v11;
          width = v9;
        }

        goto LABEL_34;
      case 5:
        if (v13 > v16)
        {
          v12 = 1;
        }

        if (v12)
        {
          height = v9;
          width = v11 + v11;
        }

        goto LABEL_34;
      case 6:
        if (v13 > v14)
        {
          v12 = 1;
        }

        if (v12)
        {
          v17 = TSDCeilSize(width);
          v18 = v17 / v11;
          *&v17 = v17 / ceilf(v18);
          width = (floorf(*&v17) + 1.0);
          *&v17 = v19 / v11;
          *&v17 = v19 / ceilf(*&v17);
          height = (floorf(*&v17) + 1.0);
        }

        goto LABEL_34;
    }

LABEL_18:
    if (v12)
    {
      height = v11;
      width = v11;
    }

    goto LABEL_34;
  }

  if (mTilingMode == 1)
  {
    if (v13 > v14)
    {
      v12 = 1;
    }

    goto LABEL_18;
  }

  if (mTilingMode != 2)
  {
    if (mTilingMode == 3)
    {
      if (v13 > v14)
      {
        v12 = 1;
      }

      if (v12)
      {
        width = v11 * 0.5;
        height = v11 + v11;
      }

      goto LABEL_34;
    }

    goto LABEL_18;
  }

  if (v13 > v14)
  {
    v12 = 1;
  }

  if (v12)
  {
    width = v11 + v11;
    height = v11 * 0.5;
  }

LABEL_34:
  v20 = height != self->mTileSize.height || width != self->mTileSize.width;
  if (v20)
  {
    self->mTileSize.width = width;
    self->mTileSize.height = height;
  }

  return v20;
}

+ (CGSize)defaultTileSize
{
  [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  *&v2 = v2 * 0.25;
  v3 = fmaxf(*&v2, 640.0);
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)p_tileLayers
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(TSDTilingLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)p_tileAndContentLayers
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(TSDTilingLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)p_nonTileAndContentLayers
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [(TSDTilingLayer *)self sublayers];
  v5 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sublayers);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [sublayers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

+ (CGImage)p_newCheckerboardImage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TSDTilingLayer_p_newCheckerboardImage__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (p_newCheckerboardImage_s_checkerboardImageOnce != -1)
  {
    dispatch_once(&p_newCheckerboardImage_s_checkerboardImageOnce, block);
  }

  return [p_newCheckerboardImage_s_checkerboardImage newImage];
}

uint64_t __40__TSDTilingLayer_p_newCheckerboardImage__block_invoke(uint64_t a1)
{
  result = [objc_alloc(MEMORY[0x277D6C2D8]) initWithDelegate:*(a1 + 32) createImageSelector:sel_p_newGeneratedCheckerboardImage];
  p_newCheckerboardImage_s_checkerboardImage = result;
  return result;
}

+ (CGImage)p_newGeneratedCheckerboardImage
{
  [objc_msgSend(MEMORY[0x277D6C2A8] "whiteColor")];
  [objc_msgSend(MEMORY[0x277D6C2A8] colorWithWhite:0.85 alpha:{1.0), "CGColor"}];
  v2 = TSUCreateCheckerBoardColor();
  [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  v15 = v3;
  [+[TSDCapabilities currentCapabilities](TSDCapabilities "currentCapabilities")];
  v4.f64[0] = v15;
  v4.f64[1] = v5;
  __asm { FMOV            V0.2D, #0.25 }

  v11 = vcvtq_f64_f32(vmaxnm_f32(vcvt_f32_f64(vmulq_f64(v4, _Q0)), vdup_n_s32(0x44200000u)));
  v12 = TSDBitmapContextCreate(11, vaddq_f64(v11, v11).f64[0]);
  CGContextSetFillColorWithColor(v12, v2);
  v16.origin.x = TSDRectWithSize();
  CGContextFillRect(v12, v16);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  CGColorRelease(v2);
  return Image;
}

@end
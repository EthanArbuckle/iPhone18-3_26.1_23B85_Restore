@interface _UITextTiledLayer
- (NSArray)tiles;
- (_UITextTiledLayer)init;
- (id)_prepareNonTiledGhostLayersForVisibleBounds:(CGRect)a3 inBounds:(CGRect)a4;
- (id)_prepareTilesForVisibleBounds:(CGRect)a3 inBounds:(CGRect)a4;
- (id)_preparedTileForFrame:(CGRect)a3 mask:(id)a4 opacity:(double)a5 deferred:(BOOL)a6;
- (void)_didSetDelegate;
- (void)_drawInContext:(CGContext *)a3 offset:(CGPoint)a4 clip:(CGPath *)a5;
- (void)_updateTilingViewportWindow:(id)a3;
- (void)drawInContext:(CGContext *)a3;
- (void)layerWillDraw:(id)a3;
- (void)layoutSublayers;
- (void)resumeTiling;
- (void)setContentsFormat:(id)a3;
- (void)setContentsMultiplyColor:(CGColor *)a3;
- (void)setContentsScale:(double)a3;
- (void)setDelegate:(id)a3;
- (void)setDrawsAsynchronously:(BOOL)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setRasterizationScale:(double)a3;
- (void)setUnsafeUnretainedDelegate:(id)a3;
- (void)setUsesTiledLayers:(BOOL)a3;
@end

@implementation _UITextTiledLayer

- (_UITextTiledLayer)init
{
  v6.receiver = self;
  v6.super_class = _UITextTiledLayer;
  v2 = [(_UITextTiledLayer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 17) = 0x4060000000000000;
    *(v2 + 56) = xmmword_18A682D30;
    *(v2 + 18) = 0x3FF0000000000000;
    objc_storeWeak(v2 + 9, 0);
    *(v3 + 10) = 0;
    v4 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 88) = *MEMORY[0x1E695F050];
    *(v3 + 104) = v4;
  }

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v4 setDelegate:a3];
  [(_UITextTiledLayer *)self _didSetDelegate];
}

- (void)setUnsafeUnretainedDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v4 setUnsafeUnretainedDelegate:a3];
  [(_UITextTiledLayer *)self _didSetDelegate];
}

- (void)_didSetDelegate
{
  v3 = [(_UITextTiledLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = 64;
  }

  else
  {
    v4 = 0;
  }

  *&self->_tcTiledLayerFlags = *&self->_tcTiledLayerFlags & 0xBF | v4;

  v6 = [(_UITextTiledLayer *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = 0x80;
  }

  else
  {
    v5 = 0;
  }

  *&self->_tcTiledLayerFlags = v5 & 0x80 | *&self->_tcTiledLayerFlags & 0x7F;
}

- (void)layerWillDraw:(id)a3
{
  if ((*&self->_tcTiledLayerFlags & 0x80000000) != 0)
  {
    v5 = [(_UITextTiledLayer *)self delegate];
    [v5 layerWillDraw:self];
  }
}

- (void)_drawInContext:(CGContext *)a3 offset:(CGPoint)a4 clip:(CGPath *)a5
{
  y = a4.y;
  x = a4.x;
  CGContextSaveGState(a3);
  if (a5)
  {
    CGContextAddPath(a3, a5);
    CGContextEOClip(a3);
  }

  CGContextTranslateCTM(a3, -x, -y);
  v10.receiver = self;
  v10.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v10 drawInContext:a3];
  CGContextRestoreGState(a3);
}

- (void)drawInContext:(CGContext *)a3
{
  if ((*&self->_tcTiledLayerFlags & 1) != 0 || self->_clip || ![(NSMutableArray *)self->_visibleTiles count])
  {
    if (self->_clip)
    {
      CGContextSaveGState(a3);
      CGContextAddPath(a3, [(UIBezierPath *)self->_clip CGPath]);
      CGContextEOClip(a3);
      v6.receiver = self;
      v6.super_class = _UITextTiledLayer;
      [(_UITextTiledLayer *)&v6 drawInContext:a3];
      CGContextRestoreGState(a3);
    }

    else
    {
      v5.receiver = self;
      v5.super_class = _UITextTiledLayer;
      [(_UITextTiledLayer *)&v5 drawInContext:a3];
    }
  }
}

- (void)setUsesTiledLayers:(BOOL)a3
{
  tcTiledLayerFlags = self->_tcTiledLayerFlags;
  if ((tcTiledLayerFlags & 1) == a3)
  {
    *&self->_tcTiledLayerFlags = tcTiledLayerFlags & 0xFE | !a3;
    if (a3)
    {
      [(_UITextTiledLayer *)self setContents:0];
    }

    else
    {
      [(NSMutableArray *)self->_visibleTiles makeObjectsPerformSelector:sel_removeFromSuperlayer];
      visibleTiles = self->_visibleTiles;
      self->_visibleTiles = 0;
    }

    [(_UITextTiledLayer *)self setNeedsDisplay];
  }
}

- (NSArray)tiles
{
  v2 = [(NSMutableArray *)self->_visibleTiles copy];

  return v2;
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  v18 = a3;
  v25 = *MEMORY[0x1E69E9840];
  if ((*&self->_tcTiledLayerFlags & 1) != 0 || ![(NSMutableArray *)self->_visibleTiles count])
  {
    v19.receiver = self;
    v19.super_class = _UITextTiledLayer;
    [(_UITextTiledLayer *)&v19 setNeedsDisplayInRect:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height, *&v18.origin.x, *&v18.origin.y, *&v18.size.width, *&v18.size.height];
  }

  else if ((*&self->_tcTiledLayerFlags & 0x3C) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_visibleTiles;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      v8 = *MEMORY[0x1E695F058];
      v9 = *(MEMORY[0x1E695F058] + 8);
      v10 = *(MEMORY[0x1E695F058] + 16);
      v11 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          [v13 frame];
          v27 = CGRectIntersection(v26, v18);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
          v28.origin.x = v8;
          v28.origin.y = v9;
          v28.size.width = v10;
          v28.size.height = v11;
          if (!CGRectEqualToRect(v27, v28))
          {
            [v13 convertRect:self fromLayer:{x, y, width, height}];
            [v13 setNeedsDisplayInRect:?];
          }
        }

        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }
  }
}

- (id)_preparedTileForFrame:(CGRect)a3 mask:(id)a4 opacity:(double)a5 deferred:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v15 = self->_visibleTiles;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v30 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v29 + 1) + 8 * v19);
      [v20 frame];
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      if (CGRectEqualToRect(v36, v37))
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v22 = v20;
    v23 = v22;
    if (v6)
    {

      v21 = &__block_literal_global_613;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v26 = atomic_load(v22 + 56);
      if (v26)
      {
        [v22 setNeedsDisplay];
      }

      v21 = &__block_literal_global_53_4;
    }

    [(NSMutableArray *)self->_visibleTiles removeObject:v23];
  }

  else
  {
LABEL_9:

    if (v6)
    {
      v21 = &__block_literal_global_613;
    }

    else
    {
      v21 = &__block_literal_global_53_4;
    }

LABEL_14:
    v23 = objc_opt_new();
    [v23 setDelegate:self];
    [v23 setFrame:{x, y, width, height}];
    [(_UITextTiledLayer *)self contentsScale];
    [v23 setContentsScale:?];
    [(_UITextTiledLayer *)self rasterizationScale];
    [v23 setRasterizationScale:?];
    [v23 setDrawsAsynchronously:{-[_UITextTiledLayer drawsAsynchronously](self, "drawsAsynchronously")}];
    v24 = [(_UITextTiledLayer *)self contentsFormat];
    [v23 setContentsFormat:v24];

    [v23 setContentsMultiplyColor:{-[_UITextTiledLayer contentsMultiplyColor](self, "contentsMultiplyColor")}];
    [(_UITextTiledLayer *)self addSublayer:v23];
    v21[2](v21, v23);
  }

  v27 = v23[6];
  if (!v14)
  {
    if (!v27)
    {
      goto LABEL_26;
    }

    v23[6] = 0;

    goto LABEL_25;
  }

  if (!v27 || ([v27 isEqual:v14] & 1) == 0)
  {
    objc_storeStrong(v23 + 6, a4);
LABEL_25:
    v21[2](v21, v23);
  }

LABEL_26:
  *&v25 = a5;
  [v23 setOpacity:{v25, v29}];

  return v23;
}

- (void)setContentsScale:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v14 setContentsScale:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_visibleTiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContentsScale:{a3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setRasterizationScale:(double)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v14 setRasterizationScale:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_visibleTiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setRasterizationScale:{a3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setDrawsAsynchronously:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v14 setDrawsAsynchronously:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_visibleTiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setDrawsAsynchronously:{v3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setContentsFormat:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v14 setContentsFormat:v4];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_visibleTiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContentsFormat:v4, v10];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setContentsMultiplyColor:(CGColor *)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v14 setContentsMultiplyColor:?];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_visibleTiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContentsMultiplyColor:{a3, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_prepareTilesForVisibleBounds:(CGRect)a3 inBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v91 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a3))
  {
    v13 = 0;
  }

  else
  {
    p_tileSize = &self->_tileSize;
    v15 = v8;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v76 = v10;
    rect = v9;
    v75 = v11;
    if (self->_tileSize.height > 0.0)
    {
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v18 = v11;
      if (v9 > 0.0)
      {
        v15 = v8;
        v16 = v9;
        v17 = v10;
        v18 = v11;
        if (v8 > 0.0)
        {
          [(_UITextTiledLayer *)self maxPrefetchedTiles:v11];
          v20 = v19 <= 0.0;
          v15 = v8;
          v17 = v10;
          v16 = v9;
          v18 = v11;
          if (!v20)
          {
            v21 = self->_tileSize.height * -2.0;
            [(_UITextTiledLayer *)self maxPrefetchedTiles];
            v23 = v21 * v22;
            v93.origin.x = v11;
            v93.origin.y = v10;
            v93.size.width = rect;
            v93.size.height = v8;
            v114 = CGRectInset(v93, 0.0, v23);
            v94.origin.x = x;
            v94.origin.y = y;
            v94.size.width = width;
            v94.size.height = height;
            *&v18 = CGRectIntersection(v94, v114);
          }
        }
      }
    }

    v85 = height;
    rect2 = v8;
    v95 = CGRectOffset(*&v18, -x, -y);
    v24 = v95.origin.x;
    v25 = v95.origin.y;
    v26 = v95.size.width;
    v27 = v95.size.height;
    v28 = p_tileSize->width;
    v84 = self->_tileSize.height;
    v71 = vcvtmd_s64_f64(CGRectGetMinX(v95) / p_tileSize->width);
    v96.origin.x = v24;
    v96.origin.y = v25;
    v96.size.width = v26;
    v96.size.height = v27;
    MinY = CGRectGetMinY(v96);
    v97.origin.x = v24;
    v97.origin.y = v25;
    v97.size.width = v26;
    v97.size.height = v27;
    v69 = vcvtpd_s64_f64(CGRectGetMaxX(v97) / v28);
    v98.origin.x = v24;
    v98.origin.y = v25;
    v98.size.width = v26;
    v98.size.height = v27;
    MaxY = CGRectGetMaxY(v98);
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ((*&self->_tcTiledLayerFlags & 0x40) != 0)
    {
      v31 = [(_UITextTiledLayer *)self delegate];
      v30 = [v31 _textTiledLayer:self maskedRectsInVisibleRect:{v75, v76, rect, rect2}];
    }

    else
    {
      v30 = 0;
    }

    v99.origin.x = x;
    v99.origin.y = y;
    v99.size.width = width;
    v99.size.height = v85;
    MinX = CGRectGetMinX(v99);
    v100.origin.x = x;
    v100.origin.y = y;
    v100.size.width = width;
    v100.size.height = v85;
    v81 = CGRectGetMinY(v100);
    v101.origin.x = x;
    v101.origin.y = y;
    v101.size.width = width;
    v101.size.height = v85;
    MaxX = CGRectGetMaxX(v101);
    v102.origin.x = x;
    v102.origin.y = y;
    v102.size.width = width;
    v102.size.height = v85;
    v79 = CGRectGetMaxY(v102);
    if (v71 < v69)
    {
      v70 = vcvtmd_s64_f64(MinY / v84);
      v32 = vcvtpd_s64_f64(MaxY / v84);
      v73 = v30;
      v72 = v32;
      do
      {
        if (v70 < v32)
        {
          v33 = v70;
          do
          {
            v34 = p_tileSize->width;
            v35 = p_tileSize->height;
            v36 = MinX + p_tileSize->width * v71;
            v37 = v81 + v35 * v33;
            v103.origin.x = v36;
            v103.origin.y = v37;
            v103.size.width = p_tileSize->width;
            v103.size.height = v35;
            if (CGRectGetMaxX(v103) > MaxX)
            {
              v104.origin.x = v36;
              v104.origin.y = v81 + v35 * v33;
              v104.size.width = v34;
              v104.size.height = v35;
              v34 = MaxX - CGRectGetMinX(v104);
            }

            v105.origin.x = v36;
            v105.origin.y = v81 + v35 * v33;
            v105.size.width = v34;
            v105.size.height = v35;
            if (CGRectGetMaxY(v105) > v79)
            {
              v106.origin.x = v36;
              v106.origin.y = v81 + v35 * v33;
              v106.size.width = v34;
              v106.size.height = v35;
              v35 = v79 - CGRectGetMinY(v106);
            }

            v107.origin.x = v36;
            v107.origin.y = v37;
            v107.size.width = v34;
            v107.size.height = v35;
            if (!CGRectIsEmpty(v107))
            {
              v108.origin.x = v36;
              v108.origin.y = v37;
              v108.size.width = v34;
              v108.size.height = v35;
              v115.origin.x = v75;
              v115.origin.y = v76;
              v115.size.width = rect;
              v115.size.height = rect2;
              v38 = CGRectIntersectsRect(v108, v115);
              if ([v30 count])
              {
                v78 = v33;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v39 = v30;
                v40 = [v39 countByEnumeratingWithState:&v86 objects:v90 count:16];
                if (v40)
                {
                  v41 = v40;
                  v42 = 0;
                  v43 = *v87;
                  do
                  {
                    for (i = 0; i != v41; ++i)
                    {
                      if (*v87 != v43)
                      {
                        objc_enumerationMutation(v39);
                      }

                      v45 = *(*(&v86 + 1) + 8 * i);
                      [v45 boundingRect];
                      v47 = v46;
                      v49 = v48;
                      v51 = v50;
                      v53 = v52;
                      [v45 alpha];
                      if (v54 < 1.0)
                      {
                        v109.origin.x = v47;
                        v109.origin.y = v49;
                        v109.size.width = v51;
                        v109.size.height = v53;
                        v116.origin.x = v36;
                        v116.origin.y = v37;
                        v116.size.width = v34;
                        v116.size.height = v35;
                        if (CGRectIntersectsRect(v109, v116))
                        {
                          v110.origin.x = v47;
                          v110.origin.y = v49;
                          v110.size.width = v51;
                          v110.size.height = v53;
                          v117.origin.x = v36;
                          v117.origin.y = v37;
                          v117.size.width = v34;
                          v117.size.height = v35;
                          v111 = CGRectIntersection(v110, v117);
                          v55 = v111.origin.x;
                          v56 = v111.origin.y;
                          v57 = v111.size.width;
                          v58 = v111.size.height;
                          [v45 alpha];
                          if (v59 > 0.0)
                          {
                            [v45 alpha];
                            v61 = [(_UITextTiledLayer *)self _preparedTileForFrame:0 mask:!v38 opacity:v55 deferred:v56, v57, v58, v60];
                            [v13 addObject:v61];
                          }

                          v112.origin.x = v55;
                          v112.origin.y = v56;
                          v112.size.width = v57;
                          v112.size.height = v58;
                          v113 = CGRectOffset(v112, -v36, -v37);
                          v62 = v113.origin.x;
                          v63 = v113.origin.y;
                          v64 = v113.size.width;
                          v65 = v113.size.height;
                          if (!v42)
                          {
                            v42 = [UIBezierPath bezierPathWithRect:0.0, 0.0, v34, v35];
                          }

                          v66 = [UIBezierPath bezierPathWithRect:v62, v63, v64, v65];
                          [v42 appendPath:v66];
                        }
                      }
                    }

                    v41 = [v39 countByEnumeratingWithState:&v86 objects:v90 count:16];
                  }

                  while (v41);
                }

                else
                {
                  v42 = 0;
                }

                v30 = v73;
                p_tileSize = &self->_tileSize;
                v32 = v72;
                v33 = v78;
              }

              else
              {
                v42 = 0;
              }

              v67 = [(_UITextTiledLayer *)self _preparedTileForFrame:v42 mask:!v38 opacity:v36 deferred:v37, v34, v35, 1.0, v69];
              [v13 addObject:v67];
            }

            ++v33;
          }

          while (v33 != v32);
        }

        ++v71;
      }

      while (v71 != v69);
    }
  }

  return v13;
}

- (id)_prepareNonTiledGhostLayersForVisibleBounds:(CGRect)a3 inBounds:(CGRect)a4
{
  v45 = *MEMORY[0x1E69E9840];
  rect2[0] = a3.origin.x;
  y = a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  if (CGRectIsEmpty(a3))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = [(_UITextTiledLayer *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(_UITextTiledLayer *)self delegate];
      v13 = [v12 _textTiledLayer:self maskedRectsInVisibleRect:{rect2[0], y, width, height}];
    }

    else
    {
      v13 = 0;
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v13 count])
    {
      v42 = 0u;
      v43 = 0u;
      memset(&rect2[1], 0, 32);
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&rect2[1] objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v8 = 0;
        v17 = **&rect2[3];
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (**&rect2[3] != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*&rect2[2] + 8 * i);
            [v19 boundingRect];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;
            [v19 alpha];
            if (v28 < 1.0)
            {
              v47.origin.x = v21;
              v47.origin.y = v23;
              v47.size.width = v25;
              v47.size.height = v27;
              v50.origin.x = rect2[0];
              v50.origin.y = y;
              v50.size.width = width;
              v50.size.height = height;
              if (CGRectIntersectsRect(v47, v50))
              {
                v48.origin.x = v21;
                v48.origin.y = v23;
                v48.size.width = v25;
                v48.size.height = v27;
                v49 = CGRectIntersection(v48, a4);
                x = v49.origin.x;
                v30 = v49.origin.y;
                v31 = v49.size.width;
                v32 = v49.size.height;
                [v19 alpha];
                if (v33 > 0.0)
                {
                  [v19 alpha];
                  v35 = [(_UITextTiledLayer *)self _preparedTileForFrame:0 mask:0 opacity:x deferred:v30, v31, v32, v34];
                  [v9 addObject:v35];
                }

                if (!v8)
                {
                  v8 = [UIBezierPath bezierPathWithRect:0.0, 0.0, a4.size.width, a4.size.height];
                }

                v36 = [UIBezierPath bezierPathWithRect:x, v30, v31, v32];
                [(UIBezierPath *)v8 appendPath:v36];
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&rect2[1] objects:v44 count:16];
        }

        while (v16);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  clip = self->_clip;
  self->_clip = v8;
  v38 = v8;

  return v9;
}

- (void)_updateTilingViewportWindow:(id)a3
{
  obj = [a3 layer];
  tcTiledLayerFlags = self->_tcTiledLayerFlags;
  WeakRetained = objc_loadWeakRetained(&self->_viewportLayer);

  if (tcTiledLayerFlags)
  {
    objc_storeWeak(&self->_viewportLayer, 0);
    self->_viewportLayerExtraWidthFactor = 0.0;
    v9 = *(MEMORY[0x1E695F050] + 16);
    self->_visibleViewportBounds.origin = *MEMORY[0x1E695F050];
    self->_visibleViewportBounds.size = v9;
    if (WeakRetained)
    {
LABEL_7:
      [(_UITextTiledLayer *)self setNeedsLayout];
      v10 = objc_loadWeakRetained(&self->_viewportLayer);
      [v10 bounds];
      [v10 convertRect:self toLayer:?];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v51.origin.x = v12;
      v51.origin.y = v14;
      v51.size.width = v16;
      v51.size.height = v18;
      v52 = CGRectInset(v51, -(v16 * self->_viewportLayerExtraWidthFactor), 0.0);
      x = v52.origin.x;
      y = v52.origin.y;
      width = v52.size.width;
      height = v52.size.height;
      [(_UITextTiledLayer *)self bounds];
      v58.origin.x = v23;
      v58.origin.y = v24;
      v58.size.width = v25;
      v58.size.height = v26;
      v53.origin.x = x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      self->_visibleViewportBounds = CGRectIntersection(v53, v58);
      goto LABEL_8;
    }
  }

  else if (obj != WeakRetained)
  {
    v6 = objc_storeWeak(&self->_viewportLayer, obj);

    v7 = 1.0;
    if (!obj)
    {
      v8 = *(MEMORY[0x1E695F050] + 16);
      self->_visibleViewportBounds.origin = *MEMORY[0x1E695F050];
      self->_visibleViewportBounds.size = v8;
      v7 = 0.0;
    }

    self->_viewportLayerExtraWidthFactor = v7;
    goto LABEL_7;
  }

  v27 = objc_loadWeakRetained(&self->_viewportLayer);

  if (v27)
  {
    v28 = objc_loadWeakRetained(&self->_viewportLayer);
    [v28 bounds];
    [v28 convertRect:self toLayer:?];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v54.origin.x = v30;
    v54.origin.y = v32;
    v54.size.width = v34;
    v54.size.height = v36;
    v55 = CGRectInset(v54, -(v34 * self->_viewportLayerExtraWidthFactor), 0.0);
    v37 = v55.origin.x;
    v38 = v55.origin.y;
    v39 = v55.size.width;
    v40 = v55.size.height;
    [(_UITextTiledLayer *)self bounds];
    v59.origin.x = v41;
    v59.origin.y = v42;
    v59.size.width = v43;
    v59.size.height = v44;
    v56.origin.x = v37;
    v56.origin.y = v38;
    v56.size.width = v39;
    v56.size.height = v40;
    v57 = CGRectIntersection(v56, v59);
    v45 = v57.origin.x;
    v46 = v57.origin.y;
    v47 = v57.size.width;
    v48 = v57.size.height;
    if (!CGRectEqualToRect(self->_visibleViewportBounds, v57))
    {
      [(_UITextTiledLayer *)self setNeedsLayout];
      self->_visibleViewportBounds.origin.x = v45;
      self->_visibleViewportBounds.origin.y = v46;
      self->_visibleViewportBounds.size.width = v47;
      self->_visibleViewportBounds.size.height = v48;
    }
  }

LABEL_8:
}

- (void)layoutSublayers
{
  v84 = *MEMORY[0x1E69E9840];
  if ((*&self->_tcTiledLayerFlags & 0x3C) != 0)
  {
    goto LABEL_44;
  }

  [(_UITextTiledLayer *)self maxTileHeight];
  v75 = v3;
  WeakRetained = objc_loadWeakRetained(&self->_viewportLayer);

  [(_UITextTiledLayer *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  height = v11;
  width = v9;
  y = v7;
  x = v5;
  if (WeakRetained)
  {
    v17 = objc_loadWeakRetained(&self->_viewportLayer);
    [v17 bounds];
    [v17 convertRect:self toLayer:?];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v85.origin.x = v19;
    v85.origin.y = v21;
    v85.size.width = v23;
    v85.size.height = v25;
    v86 = CGRectInset(v85, -(v23 * self->_viewportLayerExtraWidthFactor), 0.0);
    v99.origin.x = v6;
    v99.origin.y = v8;
    v99.size.width = v10;
    v99.size.height = v12;
    v87 = CGRectIntersection(v86, v99);
    x = v87.origin.x;
    y = v87.origin.y;
    width = v87.size.width;
    height = v87.size.height;
  }

  self->_visibleViewportBounds.origin.x = x;
  self->_visibleViewportBounds.origin.y = y;
  self->_visibleViewportBounds.size.width = width;
  self->_visibleViewportBounds.size.height = height;
  v26 = self->_clip;
  if (width <= 0.0)
  {
    goto LABEL_12;
  }

  v27 = 256.0;
  if (v75 <= 256.0)
  {
    v27 = v75;
  }

  if ((*&self->_tcTiledLayerFlags & 1) != 0 || v27 >= v12)
  {
LABEL_12:
    if (WeakRetained)
    {
      v89.origin.x = x;
      v89.origin.y = y;
      v89.size.width = width;
      v89.size.height = height;
      if (CGRectIsEmpty(v89))
      {
        v32 = 0;
        WeakRetained = 0;
        goto LABEL_19;
      }

      WeakRetained = [(_UITextTiledLayer *)self _prepareNonTiledGhostLayersForVisibleBounds:x inBounds:y, width, height, v6, v8, v10, v12];
    }

    goto LABEL_16;
  }

  p_tileSize = &self->_tileSize;
  self->_tileSize.width = width;
  self->_tileSize.height = v27;
  if (!WeakRetained)
  {
LABEL_16:
    v32 = 0;
    goto LABEL_19;
  }

  v88.origin.x = x;
  v88.origin.y = y;
  v88.size.width = width;
  v88.size.height = height;
  v76 = height;
  v29 = v6;
  v100.origin.x = v6;
  v30 = v8;
  v100.origin.y = v8;
  v100.size.width = v10;
  v100.size.height = v12;
  if (CGRectEqualToRect(v88, v100))
  {
    v31 = v76;
  }

  else
  {
    v74 = y;
    v33 = v29;
    v34 = x;
    v35 = v30;
    v36 = p_tileSize->width;
    v37 = self->_tileSize.height;
    v90.origin.x = v33;
    v90.origin.y = v35;
    v90.size.width = v10;
    v90.size.height = v12;
    v38 = CGRectGetMinX(v90) / v36;
    v72 = floor(v38);
    v39 = vcvtmd_s64_f64(v38);
    v91.origin.x = v33;
    v91.origin.y = v35;
    v91.size.width = v10;
    v91.size.height = v12;
    v40 = CGRectGetMinY(v91) / v37;
    v71 = floor(v40);
    v41 = vcvtmd_s64_f64(v40);
    v92.origin.x = v33;
    v92.origin.y = v35;
    v92.size.width = v10;
    v92.size.height = v12;
    v42 = vcvtpd_s64_f64(CGRectGetMaxX(v92) / v36);
    v93.origin.x = v33;
    v93.origin.y = v35;
    v93.size.width = v10;
    v93.size.height = v12;
    v43 = vcvtpd_s64_f64(CGRectGetMaxY(v93) / v37);
    v44 = p_tileSize->width;
    v45 = self->_tileSize.height;
    v46 = p_tileSize->width * v72;
    v73 = p_tileSize->width * (v42 - v39);
    v12 = v45 * (v43 - v41);
    v94.origin.x = v34;
    v94.origin.y = v74;
    v94.size.width = width;
    v94.size.height = v76;
    v47 = CGRectGetMinX(v94) / v44;
    v70 = floor(v47);
    v48 = vcvtmd_s64_f64(v47);
    v95.origin.x = v34;
    v95.origin.y = v74;
    v95.size.width = width;
    v95.size.height = v76;
    v49 = CGRectGetMinY(v95) / v45;
    v69 = floor(v49);
    v50 = vcvtmd_s64_f64(v49);
    v96.origin.x = v34;
    v96.origin.y = v74;
    v96.size.width = width;
    v96.size.height = v76;
    v51 = CGRectGetMaxX(v96) / v44;
    v29 = v46;
    v52 = vcvtpd_s64_f64(v51);
    v97.origin.x = v34;
    v97.origin.y = v74;
    v97.size.width = width;
    v97.size.height = v76;
    v53 = CGRectGetMaxY(v97) / v45;
    v30 = v45 * v71;
    v10 = v73;
    v54 = self->_tileSize.height;
    x = p_tileSize->width * v70;
    y = v54 * v69;
    width = p_tileSize->width * (v52 - v48);
    v31 = v54 * (vcvtpd_s64_f64(v53) - v50);
  }

  WeakRetained = [(_UITextTiledLayer *)self _prepareTilesForVisibleBounds:x inBounds:y, width, v31, v29, v30, v10, v12];
  v32 = 1;
  height = v31;
LABEL_19:
  if ([(NSMutableArray *)self->_visibleTiles count])
  {
    v55 = v26;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v56 = self->_visibleTiles;
    v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v80;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v80 != v59)
          {
            objc_enumerationMutation(v56);
          }

          [*(*(&v79 + 1) + 8 * i) removeFromSuperlayer];
        }

        v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v58);
    }

    v26 = v55;
  }

  if (v32)
  {
    [(_UITextTiledLayer *)self setContents:0];
  }

  else
  {
    v98.origin.x = x;
    v98.origin.y = y;
    v98.size.width = width;
    v98.size.height = height;
    if (!CGRectIsEmpty(v98))
    {
      v61 = [(_UITextTiledLayer *)self contents];
      if (v61)
      {
        v62 = v61;
        clip = self->_clip;
        v64 = v26;
        v65 = clip;
        v66 = v65;
        if (v64 == v65)
        {

          goto LABEL_40;
        }

        if (v64 && v65)
        {
          v67 = [(UIBezierPath *)v64 isEqual:v65];

          if (v67)
          {
            goto LABEL_40;
          }
        }

        else
        {
        }
      }

      v78.receiver = self;
      v78.super_class = _UITextTiledLayer;
      [(_UITextTiledLayer *)&v78 setNeedsDisplayInRect:x, y, width, height];
    }
  }

LABEL_40:
  if ([WeakRetained count])
  {
    v68 = WeakRetained;
  }

  else
  {
    v68 = 0;
  }

  objc_storeStrong(&self->_visibleTiles, v68);

LABEL_44:
  v77.receiver = self;
  v77.super_class = _UITextTiledLayer;
  [(_UITextTiledLayer *)&v77 layoutSublayers];
}

- (void)resumeTiling
{
  tcTiledLayerFlags = self->_tcTiledLayerFlags;
  if ((tcTiledLayerFlags & 0x3C) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UITextTiledLayer.m" lineNumber:776 description:@"suspendLayout underflow!"];

    tcTiledLayerFlags = self->_tcTiledLayerFlags;
  }

  *&self->_tcTiledLayerFlags = (tcTiledLayerFlags + 60) & 0x3C | tcTiledLayerFlags & 0xC3;
  if (!((tcTiledLayerFlags + 60) & 0x3C | tcTiledLayerFlags & 1))
  {

    [(_UITextTiledLayer *)self setNeedsLayout];
  }
}

@end
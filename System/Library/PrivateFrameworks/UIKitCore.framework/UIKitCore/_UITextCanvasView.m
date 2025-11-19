@interface _UITextCanvasView
+ (Class)layerClass;
- (BOOL)_drawsDebugBaselines;
- (BOOL)isTilingEnabled;
- (_UITextCanvasView)initWithFrame:(CGRect)a3;
- (_UITextKit1CanvasContext)context;
- (double)maxTileHeight;
- (id)_textTiledLayer:(id)a3 maskedRectsInVisibleRect:(CGRect)a4;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_setDrawsDebugBaselines:(BOOL)a3;
- (void)_updateTilingViewportLayer;
- (void)addGhostedRange:(_NSRange)a3;
- (void)addInvisibleRange:(_NSRange)a3;
- (void)configureCustomTextRenderer;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)flushElementViews;
- (void)layoutSubviews;
- (void)removeAllGhostedRanges;
- (void)removeInvisibleRange:(_NSRange)a3;
- (void)resumeTiling;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setMaxTileHeight:(double)a3;
- (void)setNeedsLayout;
- (void)setTilingEnabled:(BOOL)a3;
- (void)suspendTiling;
@end

@implementation _UITextCanvasView

- (_UITextCanvasView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UITextCanvasView;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    [(UIView *)v4 setContentMode:9];
    if ([(_UITextCanvasView *)v4 _enableAutoConstraining])
    {
      [(UIView *)v4 _addGeometryChangeObserver:v4];
    }
  }

  return v4;
}

- (void)dealloc
{
  if ([(_UITextCanvasView *)self _enableAutoConstraining])
  {
    [(UIView *)self _removeGeometryChangeObserver:?];
  }

  v3.receiver = self;
  v3.super_class = _UITextCanvasView;
  [(UIView *)&v3 dealloc];
}

+ (Class)layerClass
{
  if (_MergedGlobals_9_12 != -1)
  {
    dispatch_once(&_MergedGlobals_9_12, &__block_literal_global_612);
  }

  v3 = qword_1ED499D60;

  return v3;
}

- (void)_updateTilingViewportLayer
{
  if ([(_UITextCanvasView *)self _enableAutoConstraining])
  {
    v4 = [(UIView *)self layer];
    v3 = [(UIView *)self window];
    [v4 _updateTilingViewportWindow:v3];
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UITextCanvasView;
  [(UIView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UITextCanvasView *)self _updateTilingViewportLayer];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _UITextCanvasView;
  [(UIView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(_UITextCanvasView *)self _updateTilingViewportLayer];
}

- (void)setTilingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIView *)self layer];
  [v4 setUsesTiledLayers:v3];
}

- (BOOL)isTilingEnabled
{
  v2 = [(UIView *)self layer];
  v3 = [v2 usesTiledLayers];

  return v3;
}

- (void)setMaxTileHeight:(double)a3
{
  v4 = [(UIView *)self layer];
  [v4 setMaxTileHeight:a3];
}

- (double)maxTileHeight
{
  v2 = [(UIView *)self layer];
  [v2 maxTileHeight];
  v4 = v3;

  return v4;
}

- (void)suspendTiling
{
  v2 = [(UIView *)self layer];
  [v2 suspendTiling];
}

- (void)resumeTiling
{
  v2 = [(UIView *)self layer];
  [v2 resumeTiling];
}

- (void)_setDrawsDebugBaselines:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITextCanvasView *)self context];
  v6 = [v5 textLayoutController];
  [v6 setDrawsDebugBaselines:v3];

  [(UIView *)self setNeedsDisplay];

  [(UIView *)self _setNeedsContentsFormatUpdate];
}

- (BOOL)_drawsDebugBaselines
{
  v2 = [(_UITextCanvasView *)self context];
  v3 = [v2 textLayoutController];
  v4 = [v3 drawsDebugBaselines];

  return v4;
}

- (id)_textTiledLayer:(id)a3 maskedRectsInVisibleRect:(CGRect)a4
{
  v81 = *MEMORY[0x1E69E9840];
  if (!self->_maskedRects)
  {
    if ([(NSMutableSet *)self->_ghostedRanges count:a3]|| [(NSMutableSet *)self->_invisibleRanges count])
    {
      v5 = [(_UITextCanvasView *)self context];
      v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableSet count](self->_invisibleRanges, "count") + -[NSMutableSet count](self->_ghostedRanges, "count")}];
      v60 = v5;
      v59 = [(NSArray *)v5 textContainer];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obj = self->_ghostedRanges;
      v55 = [(NSMutableSet *)obj countByEnumeratingWithState:&v73 objects:v80 count:16];
      if (v55)
      {
        v53 = *v74;
        do
        {
          for (i = 0; i != v55; ++i)
          {
            if (*v74 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v8 = [*(*(&v73 + 1) + 8 * i) rangeValue];
            v10 = v9;
            v11 = [(NSArray *)v60 textLayoutController];
            v12 = [v11 textRangeForCharacterRange:{v8, v10}];

            v57 = v12;
            v13 = [[_UIBoundingTextRectsSolver alloc] initWithTextContainer:v59 range:v12 unifyRects:0];
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            v14 = [(_UIBoundingTextRectsSolver *)v13 rects];
            v15 = [v14 countByEnumeratingWithState:&v69 objects:v79 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v70;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v70 != v17)
                  {
                    objc_enumerationMutation(v14);
                  }

                  [*(*(&v69 + 1) + 8 * j) CGRectValue];
                  UIFloorToViewScale(self);
                  v20 = v19;
                  UIFloorToViewScale(self);
                  v22 = v21;
                  UIFloorToViewScale(self);
                  v24 = v23;
                  UIFloorToViewScale(self);
                  v26 = [_UITextTiledLayerMaskedRect ghostedRect:v20, v22, v24, v25];
                  [(NSArray *)v6 addObject:v26];
                }

                v16 = [v14 countByEnumeratingWithState:&v69 objects:v79 count:16];
              }

              while (v16);
            }
          }

          v55 = [(NSMutableSet *)obj countByEnumeratingWithState:&v73 objects:v80 count:16];
        }

        while (v55);
      }

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      obja = self->_invisibleRanges;
      v56 = [(NSMutableSet *)obja countByEnumeratingWithState:&v65 objects:v78 count:16];
      if (v56)
      {
        v54 = *v66;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v66 != v54)
            {
              objc_enumerationMutation(obja);
            }

            v28 = [*(*(&v65 + 1) + 8 * k) rangeValue];
            v30 = v29;
            v31 = [(NSArray *)v60 textLayoutController];
            v32 = [v31 textRangeForCharacterRange:{v28, v30}];

            v58 = v32;
            v33 = [[_UIBoundingTextRectsSolver alloc] initWithTextContainer:v59 range:v32 unifyRects:0];
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v34 = [(_UIBoundingTextRectsSolver *)v33 rects];
            v35 = [v34 countByEnumeratingWithState:&v61 objects:v77 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v62;
              do
              {
                for (m = 0; m != v36; ++m)
                {
                  if (*v62 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  [*(*(&v61 + 1) + 8 * m) CGRectValue];
                  UIFloorToViewScale(self);
                  v40 = v39;
                  UIFloorToViewScale(self);
                  v42 = v41;
                  UIFloorToViewScale(self);
                  v44 = v43;
                  UIFloorToViewScale(self);
                  v46 = [_UITextTiledLayerMaskedRect rect:v40 alpha:v42, v44, v45, 0.0];
                  [(NSArray *)v6 addObject:v46];
                }

                v36 = [v34 countByEnumeratingWithState:&v61 objects:v77 count:16];
              }

              while (v36);
            }
          }

          v56 = [(NSMutableSet *)obja countByEnumeratingWithState:&v65 objects:v78 count:16];
        }

        while (v56);
      }

      maskedRects = self->_maskedRects;
      self->_maskedRects = v6;

      v48 = v60;
    }

    else
    {
      v48 = self->_maskedRects;
      self->_maskedRects = MEMORY[0x1E695E0F0];
    }
  }

  v49 = self->_maskedRects;

  return v49;
}

- (void)addGhostedRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  ghostedRanges = self->_ghostedRanges;
  if (!ghostedRanges)
  {
    v7 = objc_opt_new();
    v8 = self->_ghostedRanges;
    self->_ghostedRanges = v7;

    ghostedRanges = self->_ghostedRanges;
  }

  v9 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [(NSMutableSet *)ghostedRanges addObject:v9];

  [(_UITextCanvasView *)self setNeedsLayout];

  [(UIView *)self setNeedsDisplay];
}

- (void)removeAllGhostedRanges
{
  ghostedRanges = self->_ghostedRanges;
  if (ghostedRanges)
  {
    self->_ghostedRanges = 0;

    [(_UITextCanvasView *)self setNeedsLayout];

    [(UIView *)self setNeedsDisplay];
  }
}

- (void)addInvisibleRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  invisibleRanges = self->_invisibleRanges;
  if (!invisibleRanges)
  {
    v7 = objc_opt_new();
    v8 = self->_invisibleRanges;
    self->_invisibleRanges = v7;

    invisibleRanges = self->_invisibleRanges;
  }

  v9 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [(NSMutableSet *)invisibleRanges addObject:v9];

  [(_UITextCanvasView *)self setNeedsLayout];

  [(UIView *)self setNeedsDisplay];
}

- (void)removeInvisibleRange:(_NSRange)a3
{
  if (self->_invisibleRanges)
  {
    v4 = [MEMORY[0x1E696B098] valueWithRange:{a3.location, a3.length}];
    if ([(NSMutableSet *)self->_invisibleRanges containsObject:?])
    {
      [(NSMutableSet *)self->_invisibleRanges removeObject:v4];
      [(_UITextCanvasView *)self setNeedsLayout];
      [(UIView *)self setNeedsDisplay];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UITextCanvasView;
  [(UIView *)&v3 layoutSubviews];
  [(_UITextCanvasView *)self _updateTilingViewportLayer];
}

- (void)setNeedsLayout
{
  v4.receiver = self;
  v4.super_class = _UITextCanvasView;
  [(UIView *)&v4 setNeedsLayout];
  maskedRects = self->_maskedRects;
  self->_maskedRects = 0;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITextCanvasView *)self context];
  [v8 drawingScale];
  v10 = v9;
  v12 = v11;

  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v14);
  CGContextScaleCTM(v14, v10, v12);
  CGAffineTransformMakeScale(&v15, 1.0 / v10, 1.0 / v12);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v17 = CGRectApplyAffineTransform(v16, &v15);
  [(_UITextCanvasView *)self drawTextInRect:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
  CGContextRestoreGState(v14);
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 0xE) != 0)
  {
    [(_UITextCanvasView *)self setNeedsLayout];
  }
}

- (void)configureCustomTextRenderer
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("Text", &configureCustomTextRenderer___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446466;
    v5 = "[_UITextCanvasView configureCustomTextRenderer]";
    v6 = 2050;
    v7 = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected call to %{public}s on _UITextCanvasView %{public}p. This method is only expected to be called in a TextKit 2 context and is a no-op in TextKit 1.", &v4, 0x16u);
  }
}

- (void)flushElementViews
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(__UILogGetCategoryCachedImpl("Text", &flushElementViews___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136446466;
    v5 = "[_UITextCanvasView flushElementViews]";
    v6 = 2050;
    v7 = self;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Unexpected call to %{public}s on _UITextCanvasView %{public}p. This method is only expected to be called in a TextKit 2 context and is a no-op in TextKit 1.", &v4, 0x16u);
  }
}

- (_UITextKit1CanvasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end
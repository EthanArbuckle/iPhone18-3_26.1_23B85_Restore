@interface PXTitleSubtitleUILabel
- (CGRect)contentBounds;
- (NSArray)diagnosticsRenderedLines;
- (PXTitleSubtitleUILabel)initWithCoder:(id)a3;
- (PXTitleSubtitleUILabel)initWithFrame:(CGRect)a3;
- (double)lastBaseline;
- (void)_PXTitleSubtitleUILabelCommonInitialization;
- (void)_handleChangeFromBounds:(CGRect)a3;
- (void)_setContentLayer:(id)a3;
- (void)_setLayerPromise:(id)a3;
- (void)_updateContentLayer;
- (void)_updateLayerPromiseIfNeeded;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setRendersTextAsynchronously:(BOOL)a3;
- (void)setShouldRasterizeTextLayer:(BOOL)a3;
- (void)setSpec:(id)a3;
- (void)setSubtitleText:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTypesettingMode:(int64_t)a3;
@end

@implementation PXTitleSubtitleUILabel

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXLayerPromiseObservationContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXTitleSubtitleUILabel.m" lineNumber:231 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXTitleSubtitleUILabel *)self _updateContentLayer];
    v9 = v11;
  }
}

- (void)_updateContentLayer
{
  v4 = [(PXTitleSubtitleUILabel *)self _layerPromise];
  v3 = [v4 layer];
  [v3 setShouldRasterize:{-[PXTitleSubtitleUILabel shouldRasterizeTextLayer](self, "shouldRasterizeTextLayer")}];
  [v4 contentsScale];
  [v3 setRasterizationScale:?];
  if (v3)
  {
    [(PXTitleSubtitleUILabel *)self _setContentLayer:v3];
  }
}

- (void)_updateLayerPromiseIfNeeded
{
  if (self->_needsUpdateLayerPromise)
  {
    self->_needsUpdateLayerPromise = 0;
    v3 = [(PXTitleSubtitleUILabel *)self spec];
    if (v3)
    {
      [v3 padding];
    }

    [(PXTitleSubtitleUILabel *)self bounds];
    PXEdgeInsetsInsetRect();
  }
}

void __53__PXTitleSubtitleUILabel__updateLayerPromiseIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  v7 = a2;
  [v7 setBounds:{v3, v4, v5, v6}];
  [v7 setContentsScale:*(a1 + 96)];
  [v7 setRendersAsynchronously:{objc_msgSend(*(a1 + 32), "rendersTextAsynchronously")}];
  [v7 setTitleText:*(a1 + 40)];
  [v7 setSubtitleText:*(a1 + 48)];
  [v7 setSpec:*(a1 + 56)];
  [v7 setTypesettingMode:{objc_msgSend(*(a1 + 32), "typesettingMode")}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXTitleSubtitleUILabel;
  [(PXTitleSubtitleUILabel *)&v3 layoutSubviews];
  [(PXTitleSubtitleUILabel *)self _updateLayerPromiseIfNeeded];
}

- (CGRect)contentBounds
{
  [(PXTitleSubtitleUILabel *)self _updateLayerPromiseIfNeeded];
  v3 = [(PXTitleSubtitleUILabel *)self _layerPromise];
  [v3 layerContentBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_setContentLayer:(id)a3
{
  v5 = a3;
  contentLayer = self->__contentLayer;
  if (contentLayer != v5)
  {
    v26 = v5;
    [(CALayer *)contentLayer removeFromSuperlayer];
    objc_storeStrong(&self->__contentLayer, a3);
    v5 = v26;
    if (v26)
    {
      v7 = +[PXMemoriesRelatedSettings sharedInstance];
      v8 = [v7 showMemoryTitleLayer];

      if (v8)
      {
        v9 = [MEMORY[0x1E69DC888] redColor];
        v10 = [v9 colorWithAlphaComponent:0.5];
        -[CALayer setBackgroundColor:](v26, "setBackgroundColor:", [v10 CGColor]);
      }

      v11 = [(PXTitleSubtitleUILabel *)self layer];
      [v11 bounds];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(CALayer *)v26 setAnchorPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      [(CALayer *)v26 bounds];
      v21 = v20;
      if ([(PXTitleSubtitleUILabel *)self effectiveUserInterfaceLayoutDirection]== 1)
      {
        v28.origin.x = v13;
        v28.origin.y = v15;
        v28.size.width = v17;
        v28.size.height = v19;
        Width = CGRectGetWidth(v28);
        [(CALayer *)v26 bounds];
        v21 = Width - CGRectGetMaxX(v29);
      }

      v23 = [(PXTitleSubtitleUILabel *)self _layerPromise];
      [v23 layerContentBounds];
      Height = CGRectGetHeight(v30);
      [v23 layerLastBaseline];
      [(CALayer *)v26 setPosition:v21, Height - v25];
      [v11 addSublayer:self->__contentLayer];

      v5 = v26;
    }
  }
}

- (void)_setLayerPromise:(id)a3
{
  v5 = a3;
  layerPromise = self->__layerPromise;
  if (layerPromise != v5)
  {
    v7 = v5;
    [(PXTitleSubtitleCALayerPromise *)layerPromise unregisterChangeObserver:self context:PXLayerPromiseObservationContext];
    objc_storeStrong(&self->__layerPromise, a3);
    [(PXTitleSubtitleCALayerPromise *)self->__layerPromise registerChangeObserver:self context:PXLayerPromiseObservationContext];
    [(PXTitleSubtitleCALayerPromise *)self->__layerPromise startLayerRealization];
    [(PXTitleSubtitleUILabel *)self _updateContentLayer];
    v5 = v7;
  }
}

- (NSArray)diagnosticsRenderedLines
{
  v2 = [(PXTitleSubtitleUILabel *)self _layerPromise];
  v3 = [v2 diagnosticsRenderedLines];

  return v3;
}

- (double)lastBaseline
{
  [(PXTitleSubtitleUILabel *)self _updateLayerPromiseIfNeeded];
  v3 = [(PXTitleSubtitleUILabel *)self _layerPromise];
  [v3 layerLastBaseline];
  v5 = v4;

  return v5;
}

- (void)setShouldRasterizeTextLayer:(BOOL)a3
{
  if (self->_shouldRasterizeTextLayer != a3)
  {
    self->_shouldRasterizeTextLayer = a3;
    [(PXTitleSubtitleUILabel *)self _updateContentLayer];
  }
}

- (void)setRendersTextAsynchronously:(BOOL)a3
{
  if (self->_rendersTextAsynchronously != a3)
  {
    self->_rendersTextAsynchronously = a3;
    [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
  }
}

- (void)setTypesettingMode:(int64_t)a3
{
  if (self->_typesettingMode != a3)
  {
    self->_typesettingMode = a3;
    [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_spec != v5)
  {
    v8 = v5;
    v7 = [(PXTitleSubtitleLabelSpec *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, a3);
      [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
      v6 = v8;
    }
  }
}

- (void)setSubtitleText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_subtitleText != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      subtitleText = self->_subtitleText;
      self->_subtitleText = v7;

      [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
      v5 = v9;
    }
  }
}

- (void)setTitleText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_titleText != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      titleText = self->_titleText;
      self->_titleText = v7;

      [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
      v5 = v9;
    }
  }
}

- (void)_handleChangeFromBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXTitleSubtitleUILabel *)self bounds];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10))
  {

    [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXTitleSubtitleUILabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = PXTitleSubtitleUILabel;
  [(PXTitleSubtitleUILabel *)&v16 setFrame:x, y, width, height];
  [(PXTitleSubtitleUILabel *)self _handleChangeFromBounds:v9, v11, v13, v15];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PXTitleSubtitleUILabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16.receiver = self;
  v16.super_class = PXTitleSubtitleUILabel;
  [(PXTitleSubtitleUILabel *)&v16 setBounds:x, y, width, height];
  [(PXTitleSubtitleUILabel *)self _handleChangeFromBounds:v9, v11, v13, v15];
}

- (void)_PXTitleSubtitleUILabelCommonInitialization
{
  v3 = +[PXKitSettings sharedInstance];
  self->_rendersTextAsynchronously = [v3 defaultAsyncTextRenderingEnabled];

  v4 = +[PXKitSettings sharedInstance];
  self->_typesettingMode = [v4 defaultLabelTypesettingMode];
}

- (PXTitleSubtitleUILabel)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PXTitleSubtitleUILabel;
  v3 = [(PXTitleSubtitleUILabel *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXTitleSubtitleUILabel *)v3 _PXTitleSubtitleUILabelCommonInitialization];
  }

  return v4;
}

- (PXTitleSubtitleUILabel)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXTitleSubtitleUILabel;
  v3 = [(PXTitleSubtitleUILabel *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXTitleSubtitleUILabel *)v3 _PXTitleSubtitleUILabelCommonInitialization];
  }

  return v4;
}

@end
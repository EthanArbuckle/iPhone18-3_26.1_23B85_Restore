@interface PXTitleSubtitleUILabel
- (CGRect)contentBounds;
- (NSArray)diagnosticsRenderedLines;
- (PXTitleSubtitleUILabel)initWithCoder:(id)coder;
- (PXTitleSubtitleUILabel)initWithFrame:(CGRect)frame;
- (double)lastBaseline;
- (void)_PXTitleSubtitleUILabelCommonInitialization;
- (void)_handleChangeFromBounds:(CGRect)bounds;
- (void)_setContentLayer:(id)layer;
- (void)_setLayerPromise:(id)promise;
- (void)_updateContentLayer;
- (void)_updateLayerPromiseIfNeeded;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
- (void)setRendersTextAsynchronously:(BOOL)asynchronously;
- (void)setShouldRasterizeTextLayer:(BOOL)layer;
- (void)setSpec:(id)spec;
- (void)setSubtitleText:(id)text;
- (void)setTitleText:(id)text;
- (void)setTypesettingMode:(int64_t)mode;
@end

@implementation PXTitleSubtitleUILabel

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXLayerPromiseObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTitleSubtitleUILabel.m" lineNumber:231 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXTitleSubtitleUILabel *)self _updateContentLayer];
    observableCopy = v11;
  }
}

- (void)_updateContentLayer
{
  _layerPromise = [(PXTitleSubtitleUILabel *)self _layerPromise];
  layer = [_layerPromise layer];
  [layer setShouldRasterize:{-[PXTitleSubtitleUILabel shouldRasterizeTextLayer](self, "shouldRasterizeTextLayer")}];
  [_layerPromise contentsScale];
  [layer setRasterizationScale:?];
  if (layer)
  {
    [(PXTitleSubtitleUILabel *)self _setContentLayer:layer];
  }
}

- (void)_updateLayerPromiseIfNeeded
{
  if (self->_needsUpdateLayerPromise)
  {
    self->_needsUpdateLayerPromise = 0;
    spec = [(PXTitleSubtitleUILabel *)self spec];
    if (spec)
    {
      [spec padding];
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
  _layerPromise = [(PXTitleSubtitleUILabel *)self _layerPromise];
  [_layerPromise layerContentBounds];
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

- (void)_setContentLayer:(id)layer
{
  layerCopy = layer;
  contentLayer = self->__contentLayer;
  if (contentLayer != layerCopy)
  {
    v26 = layerCopy;
    [(CALayer *)contentLayer removeFromSuperlayer];
    objc_storeStrong(&self->__contentLayer, layer);
    layerCopy = v26;
    if (v26)
    {
      v7 = +[PXMemoriesRelatedSettings sharedInstance];
      showMemoryTitleLayer = [v7 showMemoryTitleLayer];

      if (showMemoryTitleLayer)
      {
        redColor = [MEMORY[0x1E69DC888] redColor];
        v10 = [redColor colorWithAlphaComponent:0.5];
        -[CALayer setBackgroundColor:](v26, "setBackgroundColor:", [v10 CGColor]);
      }

      layer = [(PXTitleSubtitleUILabel *)self layer];
      [layer bounds];
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

      _layerPromise = [(PXTitleSubtitleUILabel *)self _layerPromise];
      [_layerPromise layerContentBounds];
      Height = CGRectGetHeight(v30);
      [_layerPromise layerLastBaseline];
      [(CALayer *)v26 setPosition:v21, Height - v25];
      [layer addSublayer:self->__contentLayer];

      layerCopy = v26;
    }
  }
}

- (void)_setLayerPromise:(id)promise
{
  promiseCopy = promise;
  layerPromise = self->__layerPromise;
  if (layerPromise != promiseCopy)
  {
    v7 = promiseCopy;
    [(PXTitleSubtitleCALayerPromise *)layerPromise unregisterChangeObserver:self context:PXLayerPromiseObservationContext];
    objc_storeStrong(&self->__layerPromise, promise);
    [(PXTitleSubtitleCALayerPromise *)self->__layerPromise registerChangeObserver:self context:PXLayerPromiseObservationContext];
    [(PXTitleSubtitleCALayerPromise *)self->__layerPromise startLayerRealization];
    [(PXTitleSubtitleUILabel *)self _updateContentLayer];
    promiseCopy = v7;
  }
}

- (NSArray)diagnosticsRenderedLines
{
  _layerPromise = [(PXTitleSubtitleUILabel *)self _layerPromise];
  diagnosticsRenderedLines = [_layerPromise diagnosticsRenderedLines];

  return diagnosticsRenderedLines;
}

- (double)lastBaseline
{
  [(PXTitleSubtitleUILabel *)self _updateLayerPromiseIfNeeded];
  _layerPromise = [(PXTitleSubtitleUILabel *)self _layerPromise];
  [_layerPromise layerLastBaseline];
  v5 = v4;

  return v5;
}

- (void)setShouldRasterizeTextLayer:(BOOL)layer
{
  if (self->_shouldRasterizeTextLayer != layer)
  {
    self->_shouldRasterizeTextLayer = layer;
    [(PXTitleSubtitleUILabel *)self _updateContentLayer];
  }
}

- (void)setRendersTextAsynchronously:(BOOL)asynchronously
{
  if (self->_rendersTextAsynchronously != asynchronously)
  {
    self->_rendersTextAsynchronously = asynchronously;
    [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
  }
}

- (void)setTypesettingMode:(int64_t)mode
{
  if (self->_typesettingMode != mode)
  {
    self->_typesettingMode = mode;
    [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
  }
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  v6 = specCopy;
  if (self->_spec != specCopy)
  {
    v8 = specCopy;
    v7 = [(PXTitleSubtitleLabelSpec *)specCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_spec, spec);
      [(PXTitleSubtitleUILabel *)self _invalidateLayerPromise];
      v6 = v8;
    }
  }
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_subtitleText != textCopy)
  {
    v9 = textCopy;
    v6 = [(NSString *)textCopy isEqualToString:?];
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

- (void)setTitleText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_titleText != textCopy)
  {
    v9 = textCopy;
    v6 = [(NSString *)textCopy isEqualToString:?];
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

- (void)_handleChangeFromBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (PXTitleSubtitleUILabel)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PXTitleSubtitleUILabel;
  v3 = [(PXTitleSubtitleUILabel *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PXTitleSubtitleUILabel *)v3 _PXTitleSubtitleUILabelCommonInitialization];
  }

  return v4;
}

- (PXTitleSubtitleUILabel)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXTitleSubtitleUILabel;
  v3 = [(PXTitleSubtitleUILabel *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PXTitleSubtitleUILabel *)v3 _PXTitleSubtitleUILabelCommonInitialization];
  }

  return v4;
}

@end
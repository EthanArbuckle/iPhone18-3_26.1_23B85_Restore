@interface PUParallaxLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (PFParallaxLayer)parallaxLayer;
- (PUParallaxLayerLayoutInfo)currentLayoutInfo;
- (id)primaryContentView;
- (void)_updateContentPortalViewWithLayoutInfo:(id)info;
- (void)updatePortalViewGeometryAndEffects;
@end

@implementation PUParallaxLayerView

- (void)_updateContentPortalViewWithLayoutInfo:(id)info
{
  v22[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if ([(PUParallaxLayerView *)self _shouldUpdatePortalViewWithLayoutInfo:infoCopy])
  {
    [infoCopy visibilityAmount];
    v5 = PXFloatApproximatelyEqualToFloat();
    contentPortalView = [(PUParallaxLayerView *)self contentPortalView];
    v7 = contentPortalView;
    if (v5)
    {
      [contentPortalView removeFromSuperview];

      [(PUParallaxLayerView *)self setContentPortalView:0];
    }

    else
    {

      if (!v7)
      {
        primaryContentView = [(PUParallaxLayerView *)self primaryContentView];
        v9 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:primaryContentView];
        [v9 setHidesSourceView:1];
        layer = [primaryContentView layer];
        [layer zPosition];
        v12 = v11 + 1.0;
        portalLayer = [v9 portalLayer];
        [portalLayer setZPosition:v12];

        [(PUParallaxLayerView *)self addSubview:v9];
        [(PUParallaxLayerView *)self setContentPortalView:v9];
      }

      v14 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979848]];
      [v14 setName:@"colorBrightnessFilter"];
      v15 = *MEMORY[0x1E6979990];
      [v14 setValue:&unk_1F2B7D9E8 forKey:*MEMORY[0x1E6979990]];
      v16 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979888]];
      [v16 setName:@"colorMonochromeFilter"];
      [v16 setValue:&unk_1F2B7D9E8 forKey:v15];
      [v16 setValue:&unk_1F2B7D9E8 forKey:*MEMORY[0x1E69799C8]];
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
      cGColor = [whiteColor CGColor];
      [v16 setValue:cGColor forKey:*MEMORY[0x1E6979AA0]];

      v22[0] = v14;
      v22[1] = v16;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      contentPortalView2 = [(PUParallaxLayerView *)self contentPortalView];
      portalLayer2 = [contentPortalView2 portalLayer];
      [portalLayer2 setFilters:v19];
    }
  }
}

- (void)updatePortalViewGeometryAndEffects
{
  currentLayoutInfo = [(PUParallaxLayerView *)self currentLayoutInfo];
  v4 = [(PUParallaxLayerView *)self _shouldUpdatePortalViewWithLayoutInfo:currentLayoutInfo];

  if (v4)
  {
    primaryContentView = [(PUParallaxLayerView *)self primaryContentView];
    [primaryContentView frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentPortalView = [(PUParallaxLayerView *)self contentPortalView];
    [contentPortalView setFrame:{v7, v9, v11, v13}];

    currentLayoutInfo2 = [(PUParallaxLayerView *)self currentLayoutInfo];
    portalLayer = [(_UIPortalView *)self->_contentPortalView portalLayer];
    v16 = MEMORY[0x1E696AD98];
    [currentLayoutInfo2 visibilityAmount];
    v18 = [v16 numberWithDouble:v17 + -1.0];
    [portalLayer setValue:v18 forKeyPath:@"filters.colorBrightnessFilter.inputAmount"];

    portalLayer2 = [(_UIPortalView *)self->_contentPortalView portalLayer];
    v20 = MEMORY[0x1E696AD98];
    [currentLayoutInfo2 visibilityAmount];
    PXClamp();
    v21 = [v20 numberWithDouble:?];
    [portalLayer2 setValue:v21 forKeyPath:@"filters.colorMonochromeFilter.inputAmount"];
  }
}

- (id)primaryContentView
{
  if (![(PUParallaxLayerView *)self supportsPortalViewEffects])
  {
    return 0;
  }

  v3 = objc_opt_class();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  v4 = _PFAssertFailHandler();
  return [(PUParallaxLayerView *)v4 supportsPortalViewEffects];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"filters.colorMatrix.inputColorMatrix"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUParallaxLayerView;
    v5 = [(PUParallaxLayerView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (PUParallaxLayerLayoutInfo)currentLayoutInfo
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  return [(PUParallaxLayerView *)v3 parallaxLayer];
}

- (PFParallaxLayer)parallaxLayer
{
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = _PFAssertFailHandler();
  [(PUParallaxLayerView *)v3 layoutWithInfo:v4, v5];
  return result;
}

@end
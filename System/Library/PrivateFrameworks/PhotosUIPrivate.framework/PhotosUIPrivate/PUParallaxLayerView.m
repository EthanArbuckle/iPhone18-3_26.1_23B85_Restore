@interface PUParallaxLayerView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (PFParallaxLayer)parallaxLayer;
- (PUParallaxLayerLayoutInfo)currentLayoutInfo;
- (id)primaryContentView;
- (void)_updateContentPortalViewWithLayoutInfo:(id)a3;
- (void)updatePortalViewGeometryAndEffects;
@end

@implementation PUParallaxLayerView

- (void)_updateContentPortalViewWithLayoutInfo:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PUParallaxLayerView *)self _shouldUpdatePortalViewWithLayoutInfo:v4])
  {
    [v4 visibilityAmount];
    v5 = PXFloatApproximatelyEqualToFloat();
    v6 = [(PUParallaxLayerView *)self contentPortalView];
    v7 = v6;
    if (v5)
    {
      [v6 removeFromSuperview];

      [(PUParallaxLayerView *)self setContentPortalView:0];
    }

    else
    {

      if (!v7)
      {
        v8 = [(PUParallaxLayerView *)self primaryContentView];
        v9 = [objc_alloc(MEMORY[0x1E69DD648]) initWithSourceView:v8];
        [v9 setHidesSourceView:1];
        v10 = [v8 layer];
        [v10 zPosition];
        v12 = v11 + 1.0;
        v13 = [v9 portalLayer];
        [v13 setZPosition:v12];

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
      v17 = [MEMORY[0x1E69DC888] whiteColor];
      v18 = [v17 CGColor];
      [v16 setValue:v18 forKey:*MEMORY[0x1E6979AA0]];

      v22[0] = v14;
      v22[1] = v16;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
      v20 = [(PUParallaxLayerView *)self contentPortalView];
      v21 = [v20 portalLayer];
      [v21 setFilters:v19];
    }
  }
}

- (void)updatePortalViewGeometryAndEffects
{
  v3 = [(PUParallaxLayerView *)self currentLayoutInfo];
  v4 = [(PUParallaxLayerView *)self _shouldUpdatePortalViewWithLayoutInfo:v3];

  if (v4)
  {
    v5 = [(PUParallaxLayerView *)self primaryContentView];
    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(PUParallaxLayerView *)self contentPortalView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v22 = [(PUParallaxLayerView *)self currentLayoutInfo];
    v15 = [(_UIPortalView *)self->_contentPortalView portalLayer];
    v16 = MEMORY[0x1E696AD98];
    [v22 visibilityAmount];
    v18 = [v16 numberWithDouble:v17 + -1.0];
    [v15 setValue:v18 forKeyPath:@"filters.colorBrightnessFilter.inputAmount"];

    v19 = [(_UIPortalView *)self->_contentPortalView portalLayer];
    v20 = MEMORY[0x1E696AD98];
    [v22 visibilityAmount];
    PXClamp();
    v21 = [v20 numberWithDouble:?];
    [v19 setValue:v21 forKeyPath:@"filters.colorMonochromeFilter.inputAmount"];
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

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"filters.colorMatrix.inputColorMatrix"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUParallaxLayerView;
    v5 = [(PUParallaxLayerView *)&v7 _shouldAnimatePropertyWithKey:v4];
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
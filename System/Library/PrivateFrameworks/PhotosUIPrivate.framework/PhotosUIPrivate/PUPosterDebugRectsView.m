@interface PUPosterDebugRectsView
- (PUParallaxLayerStackViewModel)viewModel;
- (PUPosterDebugRectsView)initWithViewModel:(id)a3;
- (id)_rectViewForIdentifier:(id)a3;
- (void)_layoutWithCurrentLayoutInfo;
- (void)dealloc;
- (void)layoutWithInfo:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)removeAllDebugRects;
- (void)removeDebugRectForIdentifier:(id)a3;
- (void)setCurrentLayoutInfo:(id)a3;
- (void)setDebugRect:(CGRect)a3 forIdentifier:(id)a4 color:(id)a5 borderWidth:(double)a6;
@end

@implementation PUPosterDebugRectsView

- (PUParallaxLayerStackViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (a5 == "ViewModelObservationContext" && (a4 & 0x200) != 0)
  {
    [(PUPosterDebugRectsView *)self _layoutWithCurrentLayoutInfo];
  }
}

- (void)_layoutWithCurrentLayoutInfo
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(PUPosterDebugRectsView *)self currentLayoutInfo];
  if (v3)
  {
    [(PUPosterDebugRectsView *)self setHidden:0];
    [v3 containerFrame];
    PXRectWithSize();
    [(PUPosterDebugRectsView *)self setBounds:?];
    PXRectGetCenter();
    [(PUPosterDebugRectsView *)self setCenter:?];
    [v3 additionalTransform];
    v27 = v28;
    [(PUPosterDebugRectsView *)self setTransform:&v27];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
          v11 = [v10 objectForKeyedSubscript:v9];

          v12 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
          v13 = [v12 objectForKeyedSubscript:v9];

          if (v13)
          {
            [v11 rect];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v3 deviceOrientation];
            [v3 containerFrame];
            PUPosterAdditionalTransformForDeviceOrientationAndContainerFrame(v22, &v27);
            v31.origin.x = v15;
            v31.origin.y = v17;
            v31.size.width = v19;
            v31.size.height = v21;
            v32 = CGRectApplyAffineTransform(v31, &v27);
            [v13 setFrame:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [(PUPosterDebugRectsView *)self setHidden:1];
  }
}

- (void)removeAllDebugRects
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
  [v3 removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  [v10 removeAllObjects];
}

- (void)removeDebugRectForIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
  [v4 removeObjectForKey:v8];

  v5 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v8];

  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
    [v7 removeObjectForKey:v8];
  }
}

- (void)setDebugRect:(CGRect)a3 forIdentifier:(id)a4 color:(id)a5 borderWidth:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a5;
  v14 = a4;
  v17 = [[PUPosterDebugRect alloc] initWithIdentifier:v14 rect:v13 color:x borderWidth:y, width, height, a6];
  v15 = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
  [v15 setObject:v17 forKeyedSubscript:v14];

  v16 = [(PUPosterDebugRectsView *)self _rectViewForIdentifier:v14];

  [v16 setBorderColor:v13];
  [v16 setBorderWidth:a6];
  [(PUPosterDebugRectsView *)self _layoutWithCurrentLayoutInfo];
}

- (id)_rectViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [PUPosterDebugRectView alloc];
    v6 = [(PUPosterDebugRectView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PUPosterDebugRectView *)v6 setIdentifier:v4];
    [(PUPosterDebugRectsView *)self addSubview:v6];
    v8 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
    [v8 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)setCurrentLayoutInfo:(id)a3
{
  v8 = a3;
  v5 = self->_currentLayoutInfo;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerLayoutInfo *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLayoutInfo, a3);
      [(PUPosterDebugRectsView *)self _layoutWithCurrentLayoutInfo];
    }
  }
}

- (void)layoutWithInfo:(id)a3
{
  v5.receiver = self;
  v5.super_class = PUPosterDebugRectsView;
  v4 = a3;
  [(PUParallaxLayerView *)&v5 layoutWithInfo:v4];
  [(PUPosterDebugRectsView *)self setCurrentLayoutInfo:v4, v5.receiver, v5.super_class];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  [WeakRetained unregisterChangeObserver:self context:"ViewModelObservationContext"];

  v4.receiver = self;
  v4.super_class = PUPosterDebugRectsView;
  [(PUPosterDebugRectsView *)&v4 dealloc];
}

- (PUPosterDebugRectsView)initWithViewModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PUPosterDebugRectsView;
  v5 = [(PUPosterDebugRectsView *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rectViewsByIdentifier = v6->_rectViewsByIdentifier;
    v6->_rectViewsByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    debugRectsByIdentifier = v6->_debugRectsByIdentifier;
    v6->_debugRectsByIdentifier = v9;

    [v4 registerChangeObserver:v6 context:"ViewModelObservationContext"];
  }

  return v6;
}

@end
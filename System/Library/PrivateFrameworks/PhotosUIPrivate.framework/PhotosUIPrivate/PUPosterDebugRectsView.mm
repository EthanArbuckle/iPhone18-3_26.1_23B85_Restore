@interface PUPosterDebugRectsView
- (PUParallaxLayerStackViewModel)viewModel;
- (PUPosterDebugRectsView)initWithViewModel:(id)model;
- (id)_rectViewForIdentifier:(id)identifier;
- (void)_layoutWithCurrentLayoutInfo;
- (void)dealloc;
- (void)layoutWithInfo:(id)info;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)removeAllDebugRects;
- (void)removeDebugRectForIdentifier:(id)identifier;
- (void)setCurrentLayoutInfo:(id)info;
- (void)setDebugRect:(CGRect)rect forIdentifier:(id)identifier color:(id)color borderWidth:(double)width;
@end

@implementation PUPosterDebugRectsView

- (PUParallaxLayerStackViewModel)viewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (context == "ViewModelObservationContext" && (change & 0x200) != 0)
  {
    [(PUPosterDebugRectsView *)self _layoutWithCurrentLayoutInfo];
  }
}

- (void)_layoutWithCurrentLayoutInfo
{
  v30 = *MEMORY[0x1E69E9840];
  currentLayoutInfo = [(PUPosterDebugRectsView *)self currentLayoutInfo];
  if (currentLayoutInfo)
  {
    [(PUPosterDebugRectsView *)self setHidden:0];
    [currentLayoutInfo containerFrame];
    PXRectWithSize();
    [(PUPosterDebugRectsView *)self setBounds:?];
    PXRectGetCenter();
    [(PUPosterDebugRectsView *)self setCenter:?];
    [currentLayoutInfo additionalTransform];
    v27 = v28;
    [(PUPosterDebugRectsView *)self setTransform:&v27];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    debugRectsByIdentifier = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
    v5 = [debugRectsByIdentifier countByEnumeratingWithState:&v23 objects:v29 count:16];
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
            objc_enumerationMutation(debugRectsByIdentifier);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          debugRectsByIdentifier2 = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
          v11 = [debugRectsByIdentifier2 objectForKeyedSubscript:v9];

          rectViewsByIdentifier = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
          v13 = [rectViewsByIdentifier objectForKeyedSubscript:v9];

          if (v13)
          {
            [v11 rect];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            deviceOrientation = [currentLayoutInfo deviceOrientation];
            [currentLayoutInfo containerFrame];
            PUPosterAdditionalTransformForDeviceOrientationAndContainerFrame(deviceOrientation, &v27);
            v31.origin.x = v15;
            v31.origin.y = v17;
            v31.size.width = v19;
            v31.size.height = v21;
            v32 = CGRectApplyAffineTransform(v31, &v27);
            [v13 setFrame:{v32.origin.x, v32.origin.y, v32.size.width, v32.size.height}];
          }
        }

        v6 = [debugRectsByIdentifier countByEnumeratingWithState:&v23 objects:v29 count:16];
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
  debugRectsByIdentifier = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
  [debugRectsByIdentifier removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  rectViewsByIdentifier = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  allValues = [rectViewsByIdentifier allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  rectViewsByIdentifier2 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  [rectViewsByIdentifier2 removeAllObjects];
}

- (void)removeDebugRectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  debugRectsByIdentifier = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
  [debugRectsByIdentifier removeObjectForKey:identifierCopy];

  rectViewsByIdentifier = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  v6 = [rectViewsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    [v6 removeFromSuperview];
    rectViewsByIdentifier2 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
    [rectViewsByIdentifier2 removeObjectForKey:identifierCopy];
  }
}

- (void)setDebugRect:(CGRect)rect forIdentifier:(id)identifier color:(id)color borderWidth:(double)width
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  colorCopy = color;
  identifierCopy = identifier;
  width = [[PUPosterDebugRect alloc] initWithIdentifier:identifierCopy rect:colorCopy color:x borderWidth:y, width, height, width];
  debugRectsByIdentifier = [(PUPosterDebugRectsView *)self debugRectsByIdentifier];
  [debugRectsByIdentifier setObject:width forKeyedSubscript:identifierCopy];

  v16 = [(PUPosterDebugRectsView *)self _rectViewForIdentifier:identifierCopy];

  [v16 setBorderColor:colorCopy];
  [v16 setBorderWidth:width];
  [(PUPosterDebugRectsView *)self _layoutWithCurrentLayoutInfo];
}

- (id)_rectViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  rectViewsByIdentifier = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
  v6 = [rectViewsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v6)
  {
    v7 = [PUPosterDebugRectView alloc];
    v6 = [(PUPosterDebugRectView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PUPosterDebugRectView *)v6 setIdentifier:identifierCopy];
    [(PUPosterDebugRectsView *)self addSubview:v6];
    rectViewsByIdentifier2 = [(PUPosterDebugRectsView *)self rectViewsByIdentifier];
    [rectViewsByIdentifier2 setObject:v6 forKeyedSubscript:identifierCopy];
  }

  return v6;
}

- (void)setCurrentLayoutInfo:(id)info
{
  infoCopy = info;
  v5 = self->_currentLayoutInfo;
  v6 = v5;
  if (v5 == infoCopy)
  {
  }

  else
  {
    v7 = [(PUParallaxLayerLayoutInfo *)v5 isEqual:?];

    if (!v7)
    {
      objc_storeStrong(&self->_currentLayoutInfo, info);
      [(PUPosterDebugRectsView *)self _layoutWithCurrentLayoutInfo];
    }
  }
}

- (void)layoutWithInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = PUPosterDebugRectsView;
  infoCopy = info;
  [(PUParallaxLayerView *)&v5 layoutWithInfo:infoCopy];
  [(PUPosterDebugRectsView *)self setCurrentLayoutInfo:infoCopy, v5.receiver, v5.super_class];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_viewModel);
  [WeakRetained unregisterChangeObserver:self context:"ViewModelObservationContext"];

  v4.receiver = self;
  v4.super_class = PUPosterDebugRectsView;
  [(PUPosterDebugRectsView *)&v4 dealloc];
}

- (PUPosterDebugRectsView)initWithViewModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PUPosterDebugRectsView;
  v5 = [(PUPosterDebugRectsView *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_viewModel, modelCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rectViewsByIdentifier = v6->_rectViewsByIdentifier;
    v6->_rectViewsByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    debugRectsByIdentifier = v6->_debugRectsByIdentifier;
    v6->_debugRectsByIdentifier = v9;

    [modelCopy registerChangeObserver:v6 context:"ViewModelObservationContext"];
  }

  return v6;
}

@end
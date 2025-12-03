@interface PUParallaxLayerStackView
- (CGPoint)motionVector;
- (void)_updateContainerFrame;
- (void)setFrame:(CGRect)frame;
- (void)setViewModel:(id)model;
@end

@implementation PUParallaxLayerStackView

- (CGPoint)motionVector
{
  x = self->_motionVector.x;
  y = self->_motionVector.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateContainerFrame
{
  viewModel = [(PUParallaxLayerStackView *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PUParallaxLayerStackView__updateContainerFrame__block_invoke;
  v4[3] = &unk_1E7B80328;
  v4[4] = self;
  [viewModel performChanges:v4];
}

void __49__PUParallaxLayerStackView__updateContainerFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 bounds];
  PXRectWithOriginAndSize();
  [v3 setContainerFrame:?];
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PUParallaxLayerStackView;
  [(PUParallaxLayerStackView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PUParallaxLayerStackView *)self _updateContainerFrame];
}

- (void)setViewModel:(id)model
{
  v36 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    objc_storeStrong(&self->_viewModel, model);
    [(PUParallaxLayerStackView *)self _updateContainerFrame];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    subviews = [(PUParallaxLayerStackView *)self subviews];
    v7 = [subviews countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v30 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [subviews countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    viewManager = [(PUParallaxLayerStackViewModel *)modelCopy viewManager];
    currentLayerStack = [(PUParallaxLayerStackViewModel *)modelCopy currentLayerStack];
    hasMainLayers = [currentLayerStack hasMainLayers];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = currentLayerStack;
    layers = [currentLayerStack layers];
    v15 = [layers countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(layers);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [viewManager viewForLayer:v19];
          if (hasMainLayers && ([v19 isBackfill] & 1) != 0)
          {
            isDebug = 1;
          }

          else
          {
            isDebug = [v19 isDebug];
          }

          [v20 setHidden:isDebug];
          [(PUParallaxLayerStackView *)self addSubview:v20];
          [v19 zPosition];
          v23 = v22;
          layer = [v20 layer];
          [layer setZPosition:v23];
        }

        v16 = [layers countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }
  }
}

@end
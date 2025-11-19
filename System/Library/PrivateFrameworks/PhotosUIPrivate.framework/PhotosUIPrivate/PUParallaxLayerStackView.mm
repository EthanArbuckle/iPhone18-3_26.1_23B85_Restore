@interface PUParallaxLayerStackView
- (CGPoint)motionVector;
- (void)_updateContainerFrame;
- (void)setFrame:(CGRect)a3;
- (void)setViewModel:(id)a3;
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
  v3 = [(PUParallaxLayerStackView *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__PUParallaxLayerStackView__updateContainerFrame__block_invoke;
  v4[3] = &unk_1E7B80328;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __49__PUParallaxLayerStackView__updateContainerFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 bounds];
  PXRectWithOriginAndSize();
  [v3 setContainerFrame:?];
}

- (void)setFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = PUParallaxLayerStackView;
  [(PUParallaxLayerStackView *)&v4 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PUParallaxLayerStackView *)self _updateContainerFrame];
}

- (void)setViewModel:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_viewModel != v5)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(PUParallaxLayerStackView *)self _updateContainerFrame];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = [(PUParallaxLayerStackView *)self subviews];
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v30 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v11 = [(PUParallaxLayerStackViewModel *)v5 viewManager];
    v12 = [(PUParallaxLayerStackViewModel *)v5 currentLayerStack];
    v13 = [v12 hasMainLayers];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v25 = v12;
    v14 = [v12 layers];
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * j);
          v20 = [v11 viewForLayer:v19];
          if (v13 && ([v19 isBackfill] & 1) != 0)
          {
            v21 = 1;
          }

          else
          {
            v21 = [v19 isDebug];
          }

          [v20 setHidden:v21];
          [(PUParallaxLayerStackView *)self addSubview:v20];
          [v19 zPosition];
          v23 = v22;
          v24 = [v20 layer];
          [v24 setZPosition:v23];
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v16);
    }
  }
}

@end
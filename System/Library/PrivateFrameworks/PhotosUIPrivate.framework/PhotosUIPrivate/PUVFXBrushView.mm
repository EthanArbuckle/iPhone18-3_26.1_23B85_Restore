@interface PUVFXBrushView
- (PUVFXBrushView)initWithFrame:(CGRect)frame;
- (PUVFXBrushViewDelegate)delegate;
- (void)_didMoveToSuperview;
- (void)_layoutSubviews;
- (void)didMoveToSuperview;
- (void)endEmission;
- (void)layoutSubviews;
- (void)setMask:(CGImage *)mask;
- (void)startEmissionAtPoint:(CGPoint)point;
@end

@implementation PUVFXBrushView

- (PUVFXBrushViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUVFXBrushView;
  [(PUVFXBrushView *)&v3 layoutSubviews];
  [(PUVFXBrushView *)self _layoutSubviews];
}

- (void)_layoutSubviews
{
  brushMaskLayer = self->_brushMaskLayer;
  [(PUVFXBrushView *)self bounds];

  [(CALayer *)brushMaskLayer setFrame:?];
}

- (void)setMask:(CGImage *)mask
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (mask)
  {
    brushMaskLayer = self->_brushMaskLayer;
    if (!brushMaskLayer)
    {
      v6 = objc_opt_new();
      v7 = self->_brushMaskLayer;
      self->_brushMaskLayer = v6;

      v8 = self->_brushMaskLayer;
      v18[0] = @"position";
      null = [MEMORY[0x1E695DFB0] null];
      v19[0] = null;
      v18[1] = @"bounds";
      null2 = [MEMORY[0x1E695DFB0] null];
      v19[1] = null2;
      v18[2] = @"transform";
      null3 = [MEMORY[0x1E695DFB0] null];
      v19[2] = null3;
      v18[3] = @"frame";
      null4 = [MEMORY[0x1E695DFB0] null];
      v19[3] = null4;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
      [(CALayer *)v8 setActions:v13];

      layer = [(PUVFXBrushView *)self layer];
      [layer setMask:self->_brushMaskLayer];

      brushMaskLayer = self->_brushMaskLayer;
    }

    [(CALayer *)brushMaskLayer setContents:mask];
    v15 = self->_brushMaskLayer;
    [(PUVFXBrushView *)self bounds];
    [(CALayer *)v15 setFrame:?];
  }

  else
  {
    layer2 = [(PUVFXBrushView *)self layer];
    [layer2 setMask:0];

    [(CALayer *)self->_brushMaskLayer setContents:0];
    v17 = self->_brushMaskLayer;
    self->_brushMaskLayer = 0;
  }
}

- (void)endEmission
{
  [(PUBrushEffectOverlay *)self->_brushOverlay endEmission];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didEndBrushing];
}

- (void)startEmissionAtPoint:(CGPoint)point
{
  [(PUBrushEffectOverlay *)self->_brushOverlay setBrushPosition:point.x, point.y];
  [(PUBrushEffectOverlay *)self->_brushOverlay startEmission];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didStartBrushing];

  layer = [(PUVFXBrushView *)self layer];
  LODWORD(v5) = 1.0;
  [layer setOpacity:v5];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = PUVFXBrushView;
  [(PUVFXBrushView *)&v3 didMoveToSuperview];
  [(PUVFXBrushView *)self _didMoveToSuperview];
}

- (void)_didMoveToSuperview
{
  superview = [(PUVFXBrushView *)self superview];

  if (superview)
  {
    v4 = [[PUBrushEffectOverlay alloc] initWithTimeScale:1.0];
    brushOverlay = self->_brushOverlay;
    self->_brushOverlay = v4;

    [(PUBrushEffectOverlay *)self->_brushOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_brushOverlay;

    [(PUVFXBrushView *)self addSubview:v6];
  }
}

- (PUVFXBrushView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUVFXBrushView;
  v3 = [(PUVFXBrushView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PUVFXBrushView *)v3 layer];
    [layer setOpacity:0.0];

    v6 = v4;
  }

  return v4;
}

@end
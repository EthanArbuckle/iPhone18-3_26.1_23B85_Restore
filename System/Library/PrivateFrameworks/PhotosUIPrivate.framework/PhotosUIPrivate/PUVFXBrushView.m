@interface PUVFXBrushView
- (PUVFXBrushView)initWithFrame:(CGRect)a3;
- (PUVFXBrushViewDelegate)delegate;
- (void)_didMoveToSuperview;
- (void)_layoutSubviews;
- (void)didMoveToSuperview;
- (void)endEmission;
- (void)layoutSubviews;
- (void)setMask:(CGImage *)a3;
- (void)startEmissionAtPoint:(CGPoint)a3;
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

- (void)setMask:(CGImage *)a3
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    brushMaskLayer = self->_brushMaskLayer;
    if (!brushMaskLayer)
    {
      v6 = objc_opt_new();
      v7 = self->_brushMaskLayer;
      self->_brushMaskLayer = v6;

      v8 = self->_brushMaskLayer;
      v18[0] = @"position";
      v9 = [MEMORY[0x1E695DFB0] null];
      v19[0] = v9;
      v18[1] = @"bounds";
      v10 = [MEMORY[0x1E695DFB0] null];
      v19[1] = v10;
      v18[2] = @"transform";
      v11 = [MEMORY[0x1E695DFB0] null];
      v19[2] = v11;
      v18[3] = @"frame";
      v12 = [MEMORY[0x1E695DFB0] null];
      v19[3] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
      [(CALayer *)v8 setActions:v13];

      v14 = [(PUVFXBrushView *)self layer];
      [v14 setMask:self->_brushMaskLayer];

      brushMaskLayer = self->_brushMaskLayer;
    }

    [(CALayer *)brushMaskLayer setContents:a3];
    v15 = self->_brushMaskLayer;
    [(PUVFXBrushView *)self bounds];
    [(CALayer *)v15 setFrame:?];
  }

  else
  {
    v16 = [(PUVFXBrushView *)self layer];
    [v16 setMask:0];

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

- (void)startEmissionAtPoint:(CGPoint)a3
{
  [(PUBrushEffectOverlay *)self->_brushOverlay setBrushPosition:a3.x, a3.y];
  [(PUBrushEffectOverlay *)self->_brushOverlay startEmission];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didStartBrushing];

  v6 = [(PUVFXBrushView *)self layer];
  LODWORD(v5) = 1.0;
  [v6 setOpacity:v5];
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
  v3 = [(PUVFXBrushView *)self superview];

  if (v3)
  {
    v4 = [[PUBrushEffectOverlay alloc] initWithTimeScale:1.0];
    brushOverlay = self->_brushOverlay;
    self->_brushOverlay = v4;

    [(PUBrushEffectOverlay *)self->_brushOverlay setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = self->_brushOverlay;

    [(PUVFXBrushView *)self addSubview:v6];
  }
}

- (PUVFXBrushView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUVFXBrushView;
  v3 = [(PUVFXBrushView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PUVFXBrushView *)v3 layer];
    [v5 setOpacity:0.0];

    v6 = v4;
  }

  return v4;
}

@end
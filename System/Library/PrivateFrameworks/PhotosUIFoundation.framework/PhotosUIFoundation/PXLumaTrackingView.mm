@interface PXLumaTrackingView
- (PXLumaTrackingView)initWithCoder:(id)a3;
- (PXLumaTrackingView)initWithFrame:(CGRect)a3 threshold:(double)a4;
- (PXLumaTrackingViewDelegate)delegate;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setLumaLevel:(int64_t)a3;
- (void)setLumaTrackingEnabled:(BOOL)a3;
@end

@implementation PXLumaTrackingView

- (PXLumaTrackingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  if (a4 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = a4 == 2;
  }

  [(PXLumaTrackingView *)self setLumaLevel:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXLumaTrackingView;
  [(PXLumaTrackingView *)&v3 layoutSubviews];
  [(PXLumaTrackingView *)self bounds];
  [(_UILumaTrackingBackdropView *)self->_backdropView setFrame:?];
}

- (void)setLumaTrackingEnabled:(BOOL)a3
{
  if (self->_lumaTrackingEnabled != a3)
  {
    self->_lumaTrackingEnabled = a3;
    [(_UILumaTrackingBackdropView *)self->_backdropView setPaused:!a3];
  }
}

- (void)setLumaLevel:(int64_t)a3
{
  if (self->_lumaLevel != a3)
  {
    self->_lumaLevel = a3;
    v6 = [(PXLumaTrackingView *)self delegate];
    [v6 lumaTrackingView:self didTransitionToLevel:a3];
  }
}

- (PXLumaTrackingView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXLumaTrackingView.m" lineNumber:54 description:{@"%s is not available as initializer", "-[PXLumaTrackingView initWithCoder:]"}];

  abort();
}

- (PXLumaTrackingView)initWithFrame:(CGRect)a3 threshold:(double)a4
{
  v17.receiver = self;
  v17.super_class = PXLumaTrackingView;
  v5 = [(PXLumaTrackingView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_thresholdLuma = a4;
    v7 = objc_alloc(MEMORY[0x1E69DD5D8]);
    v8 = fmax(a4 + -0.05, 0.0);
    if (a4 + 0.05 <= 1.0)
    {
      v9 = a4 + 0.05;
    }

    else
    {
      v9 = 1.0;
    }

    [(PXLumaTrackingView *)v6 bounds];
    v14 = [v7 initWithTransitionBoundaries:v6 delegate:v8 frame:{v9, v10, v11, v12, v13}];
    backdropView = v6->_backdropView;
    v6->_backdropView = v14;

    [(PXLumaTrackingView *)v6 addSubview:v6->_backdropView];
  }

  return v6;
}

@end
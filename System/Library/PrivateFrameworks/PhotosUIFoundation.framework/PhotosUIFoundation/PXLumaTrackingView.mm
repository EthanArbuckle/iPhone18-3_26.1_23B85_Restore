@interface PXLumaTrackingView
- (PXLumaTrackingView)initWithCoder:(id)coder;
- (PXLumaTrackingView)initWithFrame:(CGRect)frame threshold:(double)threshold;
- (PXLumaTrackingViewDelegate)delegate;
- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level;
- (void)layoutSubviews;
- (void)setLumaLevel:(int64_t)level;
- (void)setLumaTrackingEnabled:(BOOL)enabled;
@end

@implementation PXLumaTrackingView

- (PXLumaTrackingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level
{
  if (level == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = level == 2;
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

- (void)setLumaTrackingEnabled:(BOOL)enabled
{
  if (self->_lumaTrackingEnabled != enabled)
  {
    self->_lumaTrackingEnabled = enabled;
    [(_UILumaTrackingBackdropView *)self->_backdropView setPaused:!enabled];
  }
}

- (void)setLumaLevel:(int64_t)level
{
  if (self->_lumaLevel != level)
  {
    self->_lumaLevel = level;
    delegate = [(PXLumaTrackingView *)self delegate];
    [delegate lumaTrackingView:self didTransitionToLevel:level];
  }
}

- (PXLumaTrackingView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLumaTrackingView.m" lineNumber:54 description:{@"%s is not available as initializer", "-[PXLumaTrackingView initWithCoder:]"}];

  abort();
}

- (PXLumaTrackingView)initWithFrame:(CGRect)frame threshold:(double)threshold
{
  v17.receiver = self;
  v17.super_class = PXLumaTrackingView;
  v5 = [(PXLumaTrackingView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_thresholdLuma = threshold;
    v7 = objc_alloc(MEMORY[0x1E69DD5D8]);
    v8 = fmax(threshold + -0.05, 0.0);
    if (threshold + 0.05 <= 1.0)
    {
      v9 = threshold + 0.05;
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
@interface LineGraphView
- (LineGraphView)initWithFrame:(CGRect)a3;
- (void)resizeSelectedLineClipViewWithLeftX:(double)a3 rightX:(double)a4;
- (void)setGraphImageSet:(id)a3;
- (void)setSelectedLineImage:(id)a3;
- (void)setShowingSelectedLine:(BOOL)a3;
@end

@implementation LineGraphView

- (LineGraphView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LineGraphView;
  v3 = [(LineGraphView *)&v6 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = v3;
  if (v3)
  {
    [(LineGraphView *)v3 setUserInteractionEnabled:0];
  }

  return v4;
}

- (void)setSelectedLineImage:(id)a3
{
  v6 = a3;
  if (self->_lineImage != v6)
  {
    objc_storeStrong(&self->_lineImage, a3);
    tintedLineView = self->_tintedLineView;
    if (tintedLineView)
    {
      [(TintedView *)tintedLineView setImage:self->_lineImage];
    }
  }
}

- (void)setGraphImageSet:(id)a3
{
  v4 = a3;
  v5 = [v4 lineGraphImage];
  v6 = [v5 CGImage];
  v7 = [(LineGraphView *)self layer];
  [v7 setContents:v6];

  v8 = [v4 highlightOverlayImage];

  [(LineGraphView *)self setSelectedLineImage:v8];
}

- (void)setShowingSelectedLine:(BOOL)a3
{
  if (self->_showingTintedLine != a3)
  {
    v4 = a3;
    self->_showingTintedLine = a3;
    if (a3)
    {
      if (!self->_tintedLineView)
      {
        v6 = objc_alloc_init(TintedView);
        tintedLineView = self->_tintedLineView;
        self->_tintedLineView = v6;

        v8 = objc_alloc(MEMORY[0x277D75D18]);
        [(LineGraphView *)self bounds];
        v9 = [v8 initWithFrame:?];
        tintedLineClipView = self->_tintedLineClipView;
        self->_tintedLineClipView = v9;

        [(UIView *)self->_tintedLineClipView setClipsToBounds:1];
        [(UIView *)self->_tintedLineClipView addSubview:self->_tintedLineView];
        [(UIView *)self->_tintedLineClipView setAlpha:0.0];
        [(LineGraphView *)self addSubview:self->_tintedLineClipView];
      }

      if (self->_lineImage)
      {
        [(TintedView *)self->_tintedLineView setImage:?];
      }
    }

    v11 = self->_tintedLineClipView;

    [(UIView *)v11 setAlpha:v4];
  }
}

- (void)resizeSelectedLineClipViewWithLeftX:(double)a3 rightX:(double)a4
{
  v7 = [(TintedView *)self->_tintedLineView layer];
  [v7 removeAllAnimations];

  v8 = [(UIView *)self->_tintedLineClipView layer];
  [v8 removeAllAnimations];

  [(LineGraphView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)self->_tintedLineClipView setFrame:a3, 0.0, a4 - a3];
  tintedLineView = self->_tintedLineView;
  [(LineGraphView *)self convertRect:self->_tintedLineClipView toView:v10, v12, v14, v16];

  [(TintedView *)tintedLineView setFrame:?];
}

@end
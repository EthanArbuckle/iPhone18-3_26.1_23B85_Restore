@interface LineGraphView
- (LineGraphView)initWithFrame:(CGRect)frame;
- (void)resizeSelectedLineClipViewWithLeftX:(double)x rightX:(double)rightX;
- (void)setGraphImageSet:(id)set;
- (void)setSelectedLineImage:(id)image;
- (void)setShowingSelectedLine:(BOOL)line;
@end

@implementation LineGraphView

- (LineGraphView)initWithFrame:(CGRect)frame
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

- (void)setSelectedLineImage:(id)image
{
  imageCopy = image;
  if (self->_lineImage != imageCopy)
  {
    objc_storeStrong(&self->_lineImage, image);
    tintedLineView = self->_tintedLineView;
    if (tintedLineView)
    {
      [(TintedView *)tintedLineView setImage:self->_lineImage];
    }
  }
}

- (void)setGraphImageSet:(id)set
{
  setCopy = set;
  lineGraphImage = [setCopy lineGraphImage];
  cGImage = [lineGraphImage CGImage];
  layer = [(LineGraphView *)self layer];
  [layer setContents:cGImage];

  highlightOverlayImage = [setCopy highlightOverlayImage];

  [(LineGraphView *)self setSelectedLineImage:highlightOverlayImage];
}

- (void)setShowingSelectedLine:(BOOL)line
{
  if (self->_showingTintedLine != line)
  {
    lineCopy = line;
    self->_showingTintedLine = line;
    if (line)
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

    [(UIView *)v11 setAlpha:lineCopy];
  }
}

- (void)resizeSelectedLineClipViewWithLeftX:(double)x rightX:(double)rightX
{
  layer = [(TintedView *)self->_tintedLineView layer];
  [layer removeAllAnimations];

  layer2 = [(UIView *)self->_tintedLineClipView layer];
  [layer2 removeAllAnimations];

  [(LineGraphView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIView *)self->_tintedLineClipView setFrame:x, 0.0, rightX - x];
  tintedLineView = self->_tintedLineView;
  [(LineGraphView *)self convertRect:self->_tintedLineClipView toView:v10, v12, v14, v16];

  [(TintedView *)tintedLineView setFrame:?];
}

@end
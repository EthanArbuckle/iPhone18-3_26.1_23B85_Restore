@interface PUImportSectionBackgroundView
- (BOOL)needsStroke;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setBottomStrokeColor:(id)color;
- (void)setStrokeWidth:(double)width;
- (void)updateBottomStrokeViewIfNeeded;
@end

@implementation PUImportSectionBackgroundView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUImportSectionBackgroundView;
  [(PUImportSectionBackgroundView *)&v13 layoutSubviews];
  bottomStrokeView = [(PUImportSectionBackgroundView *)self bottomStrokeView];
  superview = [bottomStrokeView superview];

  if (superview)
  {
    [(PUImportSectionBackgroundView *)self bounds];
    v15 = CGRectIntegral(v14);
    x = v15.origin.x;
    width = v15.size.width;
    MaxY = CGRectGetMaxY(v15);
    [(PUImportSectionBackgroundView *)self strokeWidth];
    v9 = MaxY - v8;
    [(PUImportSectionBackgroundView *)self strokeWidth];
    v11 = v10;
    bottomStrokeView2 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
    [bottomStrokeView2 setFrame:{x, v9, width, v11}];
  }
}

- (void)setBottomStrokeColor:(id)color
{
  colorCopy = color;
  bottomStrokeColor = self->_bottomStrokeColor;
  if (colorCopy | bottomStrokeColor)
  {
    v7 = colorCopy;
    bottomStrokeColor = [bottomStrokeColor isEqual:colorCopy];
    colorCopy = v7;
    if ((bottomStrokeColor & 1) == 0)
    {
      objc_storeStrong(&self->_bottomStrokeColor, color);
      bottomStrokeColor = [(PUImportSectionBackgroundView *)self setNeedsBottomStrokeViewUpdate];
      colorCopy = v7;
    }
  }

  MEMORY[0x1EEE66BB8](bottomStrokeColor, colorCopy);
}

- (void)setStrokeWidth:(double)width
{
  if (self->_strokeWidth != width)
  {
    self->_strokeWidth = width;
    [(PUImportSectionBackgroundView *)self setNeedsBottomStrokeViewUpdate];
  }
}

- (BOOL)needsStroke
{
  v11 = 0.0;
  bottomStrokeColor = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
  [bottomStrokeColor getRed:0 green:0 blue:0 alpha:&v11];

  [(PUImportSectionBackgroundView *)self strokeWidth];
  result = 0;
  if (v4 != 0.0 && v11 != 0.0)
  {
    bottomStrokeColor2 = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
    if (bottomStrokeColor2)
    {
      v6 = bottomStrokeColor2;
      bottomStrokeColor3 = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v9 = [bottomStrokeColor3 isEqual:clearColor];

      if (!v9)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)updateBottomStrokeViewIfNeeded
{
  if ([(PUImportSectionBackgroundView *)self needsBottomStrokeViewUpdate])
  {
    [(PUImportSectionBackgroundView *)self setNeedsBottomStrokeViewUpdate:0];
    needsStroke = [(PUImportSectionBackgroundView *)self needsStroke];
    bottomStrokeView = [(PUImportSectionBackgroundView *)self bottomStrokeView];
    v11 = bottomStrokeView;
    if (needsStroke)
    {

      if (!v11)
      {
        v5 = objc_alloc(MEMORY[0x1E69DD250]);
        v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        [(PUImportSectionBackgroundView *)self setBottomStrokeView:v6];

        bottomStrokeView2 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
        [bottomStrokeView2 setAutoresizingMask:8];
      }

      bottomStrokeView3 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
      [(PUImportSectionBackgroundView *)self addSubview:bottomStrokeView3];

      bottomStrokeColor = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
      bottomStrokeView4 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
      [bottomStrokeView4 setBackgroundColor:bottomStrokeColor];

      [(PUImportSectionBackgroundView *)self setNeedsLayout];
    }

    else
    {
      [bottomStrokeView removeFromSuperview];
    }
  }
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8.receiver = self;
  v8.super_class = PUImportSectionBackgroundView;
  [(PUImportSectionBackgroundView *)&v8 applyLayoutAttributes:attributesCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = attributesCopy;
    backgroundColor = [v5 backgroundColor];
    [(PUImportSectionBackgroundView *)self setBackgroundColor:backgroundColor];

    [v5 strokeWidth];
    [(PUImportSectionBackgroundView *)self setStrokeWidth:?];
    bottomStrokeColor = [v5 bottomStrokeColor];

    [(PUImportSectionBackgroundView *)self setBottomStrokeColor:bottomStrokeColor];
    [(PUImportSectionBackgroundView *)self updateBottomStrokeViewIfNeeded];
  }
}

@end
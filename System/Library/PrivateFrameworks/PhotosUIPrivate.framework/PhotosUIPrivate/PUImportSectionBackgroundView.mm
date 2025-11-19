@interface PUImportSectionBackgroundView
- (BOOL)needsStroke;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setBottomStrokeColor:(id)a3;
- (void)setStrokeWidth:(double)a3;
- (void)updateBottomStrokeViewIfNeeded;
@end

@implementation PUImportSectionBackgroundView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PUImportSectionBackgroundView;
  [(PUImportSectionBackgroundView *)&v13 layoutSubviews];
  v3 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
  v4 = [v3 superview];

  if (v4)
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
    v12 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
    [v12 setFrame:{x, v9, width, v11}];
  }
}

- (void)setBottomStrokeColor:(id)a3
{
  v5 = a3;
  bottomStrokeColor = self->_bottomStrokeColor;
  if (v5 | bottomStrokeColor)
  {
    v7 = v5;
    bottomStrokeColor = [bottomStrokeColor isEqual:v5];
    v5 = v7;
    if ((bottomStrokeColor & 1) == 0)
    {
      objc_storeStrong(&self->_bottomStrokeColor, a3);
      bottomStrokeColor = [(PUImportSectionBackgroundView *)self setNeedsBottomStrokeViewUpdate];
      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](bottomStrokeColor, v5);
}

- (void)setStrokeWidth:(double)a3
{
  if (self->_strokeWidth != a3)
  {
    self->_strokeWidth = a3;
    [(PUImportSectionBackgroundView *)self setNeedsBottomStrokeViewUpdate];
  }
}

- (BOOL)needsStroke
{
  v11 = 0.0;
  v3 = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
  [v3 getRed:0 green:0 blue:0 alpha:&v11];

  [(PUImportSectionBackgroundView *)self strokeWidth];
  result = 0;
  if (v4 != 0.0 && v11 != 0.0)
  {
    v5 = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
    if (v5)
    {
      v6 = v5;
      v7 = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
      v8 = [MEMORY[0x1E69DC888] clearColor];
      v9 = [v7 isEqual:v8];

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
    v3 = [(PUImportSectionBackgroundView *)self needsStroke];
    v4 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
    v11 = v4;
    if (v3)
    {

      if (!v11)
      {
        v5 = objc_alloc(MEMORY[0x1E69DD250]);
        v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        [(PUImportSectionBackgroundView *)self setBottomStrokeView:v6];

        v7 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
        [v7 setAutoresizingMask:8];
      }

      v8 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
      [(PUImportSectionBackgroundView *)self addSubview:v8];

      v9 = [(PUImportSectionBackgroundView *)self bottomStrokeColor];
      v10 = [(PUImportSectionBackgroundView *)self bottomStrokeView];
      [v10 setBackgroundColor:v9];

      [(PUImportSectionBackgroundView *)self setNeedsLayout];
    }

    else
    {
      [v4 removeFromSuperview];
    }
  }
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PUImportSectionBackgroundView;
  [(PUImportSectionBackgroundView *)&v8 applyLayoutAttributes:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 backgroundColor];
    [(PUImportSectionBackgroundView *)self setBackgroundColor:v6];

    [v5 strokeWidth];
    [(PUImportSectionBackgroundView *)self setStrokeWidth:?];
    v7 = [v5 bottomStrokeColor];

    [(PUImportSectionBackgroundView *)self setBottomStrokeColor:v7];
    [(PUImportSectionBackgroundView *)self updateBottomStrokeViewIfNeeded];
  }
}

@end
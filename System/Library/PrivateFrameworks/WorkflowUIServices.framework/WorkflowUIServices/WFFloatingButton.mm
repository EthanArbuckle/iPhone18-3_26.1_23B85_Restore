@interface WFFloatingButton
- (CGSize)intrinsicContentSize;
- (WFFloatingButton)initWithConfiguration:(id)a3 frame:(CGRect)a4;
- (WFFloatingButton)initWithFrame:(CGRect)a3;
- (WFGradient)gradient;
- (void)applyConfiguration:(id)a3;
- (void)setGradient:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WFFloatingButton

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFFloatingButton;
  [(WFFloatingButton *)&v6 traitCollectionDidChange:a3];
  v4 = [(WFFloatingButton *)self layer];
  v5 = [(WFFloatingButton *)self traitCollection];
  [v4 setTraitCollection:v5];
}

- (CGSize)intrinsicContentSize
{
  v4.receiver = self;
  v4.super_class = WFFloatingButton;
  [(WFFloatingButton *)&v4 intrinsicContentSize];
  if (v3 < 36.0)
  {
    v3 = 36.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (void)applyConfiguration:(id)a3
{
  v15 = a3;
  [v15 titleFontSize];
  v5 = v4;
  v6 = [v15 boldTitle];
  if (v5 != 0.0 || v6 != 0)
  {
    v8 = v6;
    if (v5 == 0.0)
    {
      v9 = [(WFFloatingButton *)self titleLabel];
      v10 = [v9 font];
      [v10 pointSize];
      v5 = v11;
    }

    if (v8)
    {
      [MEMORY[0x1E69DB878] boldSystemFontOfSize:v5];
    }

    else
    {
      [MEMORY[0x1E69DB878] systemFontOfSize:v5];
    }
    v12 = ;
    v13 = [(WFFloatingButton *)self titleLabel];
    [v13 setFont:v12];
  }

  v14 = [(WFFloatingButton *)self layer];
  [v14 applyConfiguration:v15];
}

- (void)setGradient:(id)a3
{
  v4 = a3;
  v5 = [(WFFloatingButton *)self layer];
  [v5 setGradient:v4];
}

- (WFGradient)gradient
{
  v2 = [(WFFloatingButton *)self layer];
  v3 = [v2 gradient];

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = WFFloatingButton;
  [(WFFloatingButton *)&v6 setHighlighted:?];
  v5 = [(WFFloatingButton *)self layer];
  [v5 setPressed:v3];
}

- (WFFloatingButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_new();
  v9 = [(WFFloatingButton *)self initWithConfiguration:v8 frame:x, y, width, height];

  return v9;
}

- (WFFloatingButton)initWithConfiguration:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v19.receiver = self;
  v19.super_class = WFFloatingButton;
  v10 = [(WFFloatingButton *)&v19 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(WFFloatingButton *)v10 setAdjustsImageWhenHighlighted:0];
    v12 = [MEMORY[0x1E69DC888] whiteColor];
    [(WFFloatingButton *)v11 setTintColor:v12];

    [(WFFloatingButton *)v11 setContentEdgeInsets:0.0, 20.0, 0.0, 20.0];
    v13 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
    v14 = [(WFFloatingButton *)v11 titleLabel];
    [v14 setFont:v13];

    [(WFFloatingButton *)v11 applyConfiguration:v9];
    v15 = [(WFFloatingButton *)v11 layer];
    v16 = [(WFFloatingButton *)v11 traitCollection];
    [v15 setTraitCollection:v16];

    v17 = v11;
  }

  return v11;
}

@end
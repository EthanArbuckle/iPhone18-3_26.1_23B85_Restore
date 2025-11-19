@interface TLKRoundedCornerLabel
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)a3;
- (TLKRoundedCornerLabel)initWithProminence:(unint64_t)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setSizeConfiguration:(unint64_t)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFont;
@end

@implementation TLKRoundedCornerLabel

- (TLKRoundedCornerLabel)initWithProminence:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = TLKRoundedCornerLabel;
  v4 = [(TLKView *)&v14 init];
  if (v4)
  {
    v5 = [[TLKLabel alloc] initWithProminence:a3];
    [(TLKRoundedCornerLabel *)v4 setLabel:v5];

    v6 = [(TLKRoundedCornerLabel *)v4 label];
    [v6 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

    v7 = [(TLKRoundedCornerLabel *)v4 label];
    [(TLKRoundedCornerLabel *)v4 addSubview:v7];

    v8 = [(TLKRoundedCornerLabel *)v4 label];
    [TLKLayoutUtilities requireIntrinsicSizeForView:v8];

    [(TLKRoundedCornerLabel *)v4 setCustomAlignmentRectInsets:0.0, -2.0, 0.0, -2.0];
    v9 = [(TLKRoundedCornerLabel *)v4 label];
    [v9 setTextAlignment:1];

    v10 = objc_opt_new();
    [(TLKRoundedCornerLabel *)v4 setBorderView:v10];
    v11 = [v10 layer];
    [v11 setBorderWidth:1.0];

    v12 = [v10 layer];
    [v12 setCornerRadius:2.0];

    [(TLKRoundedCornerLabel *)v4 addSubview:v10];
    [(TLKRoundedCornerLabel *)v4 updateFont];
  }

  return v4;
}

- (void)setSizeConfiguration:(unint64_t)a3
{
  if (self->_sizeConfiguration != a3)
  {
    self->_sizeConfiguration = a3;
    [(TLKRoundedCornerLabel *)self updateFont];
  }
}

- (void)updateFont
{
  v3 = [(TLKRoundedCornerLabel *)self sizeConfiguration];
  v4 = 0.0;
  if (v3 <= 2)
  {
    v4 = dbl_1BBA68008[v3];
  }

  v5 = MEMORY[0x1E69DB878];
  v6 = [(TLKRoundedCornerLabel *)self sizeConfiguration];
  v7 = MEMORY[0x1E69DB958];
  if (v6 != 2)
  {
    v7 = MEMORY[0x1E69DB970];
  }

  v9 = [v5 systemFontOfSize:v4 weight:*v7];
  v8 = [(TLKRoundedCornerLabel *)self label];
  [v8 setFont:v9];
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = TLKRoundedCornerLabel;
  [(TLKView *)&v17 layoutSubviews];
  [(TLKRoundedCornerLabel *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(TLKRoundedCornerLabel *)self label];
  [v11 setFrame:{v4, v6, v8, v10}];

  [(TLKRoundedCornerLabel *)self bounds];
  if (!CGRectEqualToRect(v18, *MEMORY[0x1E695F058]))
  {
    [(TLKRoundedCornerLabel *)self bounds];
    v20 = CGRectInset(v19, -2.0, 0.0);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v16 = [(TLKRoundedCornerLabel *)self borderView];
    [v16 setFrame:{x, y, width, height}];
  }
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TLKRoundedCornerLabel *)self label];
  [v5 effectiveLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TLKRoundedCornerLabel;
  [(TLKRoundedCornerLabel *)&v9 traitCollectionDidChange:v4];
  v5 = [(TLKRoundedCornerLabel *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(TLKRoundedCornerLabel *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = TLKRoundedCornerLabel;
  [(TLKRoundedCornerLabel *)&v3 didMoveToWindow];
  [(UIView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v11.receiver = self;
  v11.super_class = TLKRoundedCornerLabel;
  v4 = a3;
  [(UIView *)&v11 tlk_updateForAppearance:v4];
  v5 = [(TLKRoundedCornerLabel *)self label:v11.receiver];
  v6 = [v4 colorForProminence:{objc_msgSend(v5, "prominence")}];
  v7 = [v6 CGColor];
  v8 = [(TLKRoundedCornerLabel *)self borderView];
  v9 = [v8 layer];
  [v9 setBorderColor:v7];

  v10 = [(TLKRoundedCornerLabel *)self borderView];
  [v4 enableAppearanceForView:v10];
}

@end
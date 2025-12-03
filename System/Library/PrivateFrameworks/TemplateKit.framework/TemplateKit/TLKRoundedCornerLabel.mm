@interface TLKRoundedCornerLabel
- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size;
- (TLKRoundedCornerLabel)initWithProminence:(unint64_t)prominence;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setSizeConfiguration:(unint64_t)configuration;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFont;
@end

@implementation TLKRoundedCornerLabel

- (TLKRoundedCornerLabel)initWithProminence:(unint64_t)prominence
{
  v14.receiver = self;
  v14.super_class = TLKRoundedCornerLabel;
  v4 = [(TLKView *)&v14 init];
  if (v4)
  {
    v5 = [[TLKLabel alloc] initWithProminence:prominence];
    [(TLKRoundedCornerLabel *)v4 setLabel:v5];

    label = [(TLKRoundedCornerLabel *)v4 label];
    [label setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

    label2 = [(TLKRoundedCornerLabel *)v4 label];
    [(TLKRoundedCornerLabel *)v4 addSubview:label2];

    label3 = [(TLKRoundedCornerLabel *)v4 label];
    [TLKLayoutUtilities requireIntrinsicSizeForView:label3];

    [(TLKRoundedCornerLabel *)v4 setCustomAlignmentRectInsets:0.0, -2.0, 0.0, -2.0];
    label4 = [(TLKRoundedCornerLabel *)v4 label];
    [label4 setTextAlignment:1];

    v10 = objc_opt_new();
    [(TLKRoundedCornerLabel *)v4 setBorderView:v10];
    layer = [v10 layer];
    [layer setBorderWidth:1.0];

    layer2 = [v10 layer];
    [layer2 setCornerRadius:2.0];

    [(TLKRoundedCornerLabel *)v4 addSubview:v10];
    [(TLKRoundedCornerLabel *)v4 updateFont];
  }

  return v4;
}

- (void)setSizeConfiguration:(unint64_t)configuration
{
  if (self->_sizeConfiguration != configuration)
  {
    self->_sizeConfiguration = configuration;
    [(TLKRoundedCornerLabel *)self updateFont];
  }
}

- (void)updateFont
{
  sizeConfiguration = [(TLKRoundedCornerLabel *)self sizeConfiguration];
  v4 = 0.0;
  if (sizeConfiguration <= 2)
  {
    v4 = dbl_1BBA68008[sizeConfiguration];
  }

  v5 = MEMORY[0x1E69DB878];
  sizeConfiguration2 = [(TLKRoundedCornerLabel *)self sizeConfiguration];
  v7 = MEMORY[0x1E69DB958];
  if (sizeConfiguration2 != 2)
  {
    v7 = MEMORY[0x1E69DB970];
  }

  v9 = [v5 systemFontOfSize:v4 weight:*v7];
  label = [(TLKRoundedCornerLabel *)self label];
  [label setFont:v9];
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
  label = [(TLKRoundedCornerLabel *)self label];
  [label setFrame:{v4, v6, v8, v10}];

  [(TLKRoundedCornerLabel *)self bounds];
  if (!CGRectEqualToRect(v18, *MEMORY[0x1E695F058]))
  {
    [(TLKRoundedCornerLabel *)self bounds];
    v20 = CGRectInset(v19, -2.0, 0.0);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    borderView = [(TLKRoundedCornerLabel *)self borderView];
    [borderView setFrame:{x, y, width, height}];
  }
}

- (CGSize)effectiveLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  label = [(TLKRoundedCornerLabel *)self label];
  [label effectiveLayoutSizeFittingSize:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = TLKRoundedCornerLabel;
  [(TLKRoundedCornerLabel *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(TLKRoundedCornerLabel *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(UIView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(TLKRoundedCornerLabel *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  v11.receiver = self;
  v11.super_class = TLKRoundedCornerLabel;
  appearanceCopy = appearance;
  [(UIView *)&v11 tlk_updateForAppearance:appearanceCopy];
  v5 = [(TLKRoundedCornerLabel *)self label:v11.receiver];
  v6 = [appearanceCopy colorForProminence:{objc_msgSend(v5, "prominence")}];
  cGColor = [v6 CGColor];
  borderView = [(TLKRoundedCornerLabel *)self borderView];
  layer = [borderView layer];
  [layer setBorderColor:cGColor];

  borderView2 = [(TLKRoundedCornerLabel *)self borderView];
  [appearanceCopy enableAppearanceForView:borderView2];
}

@end
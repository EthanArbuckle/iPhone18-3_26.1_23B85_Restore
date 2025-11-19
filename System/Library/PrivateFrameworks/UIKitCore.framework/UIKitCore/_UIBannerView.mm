@interface _UIBannerView
- (_UIBannerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContent:(id)a3;
- (void)setHighlighted:(BOOL)a3 initialPress:(BOOL)a4;
- (void)updateConstraints;
@end

@implementation _UIBannerView

- (_UIBannerView)initWithFrame:(CGRect)a3
{
  v36.receiver = self;
  v36.super_class = _UIBannerView;
  v3 = [(UIView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E6979398] layer];
    backgroundLayer = v3->_backgroundLayer;
    v3->_backgroundLayer = v4;

    v6 = *MEMORY[0x1E69796E8];
    [(CALayer *)v3->_backgroundLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    [(CALayer *)v3->_backgroundLayer setCornerRadius:13.0];
    v7 = +[UIColor blackColor];
    -[CALayer setShadowColor:](v3->_backgroundLayer, "setShadowColor:", [v7 CGColor]);

    [(CALayer *)v3->_backgroundLayer setShadowRadius:10.0];
    [(CALayer *)v3->_backgroundLayer setShadowOffset:0.0, 5.0];
    LODWORD(v8) = 1045220557;
    [(CALayer *)v3->_backgroundLayer setShadowOpacity:v8];
    v9 = [(UIView *)v3 layer];
    [v9 addSublayer:v3->_backgroundLayer];

    v10 = [UILabel alloc];
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [(UILabel *)v10 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v15;

    [(UIView *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v17 = [off_1E70ECC18 defaultFontForTextStyle:@"UICTFontTextStyleEmphasizedSubhead"];
    [(UILabel *)v3->_titleLabel setFont:v17];

    [(UIView *)v3 addSubview:v3->_titleLabel];
    v18 = [[UILabel alloc] initWithFrame:v11, v12, v13, v14];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v18;

    [(UIView *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_bodyLabel setNumberOfLines:0];
    v20 = [off_1E70ECC20 defaultFontDescriptorWithTextStyle:@"UICTFontTextStyleFootnote"];
    v21 = [off_1E70ECC18 fontWithDescriptor:v20 size:0.0];
    [(UILabel *)v3->_bodyLabel setFont:v21];

    [(UIView *)v3 addSubview:v3->_bodyLabel];
    v22 = [[UIImageView alloc] initWithFrame:v11, v12, v13, v14];
    imageView = v3->_imageView;
    v3->_imageView = v22;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v24) = 1148829696;
    [(UIView *)v3->_imageView setContentHuggingPriority:1 forAxis:v24];
    LODWORD(v25) = 1148829696;
    [(UIView *)v3->_imageView setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1148829696;
    [(UIView *)v3->_imageView setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148829696;
    [(UIView *)v3->_imageView setContentCompressionResistancePriority:0 forAxis:v27];
    [(UIView *)v3 addSubview:v3->_imageView];
    v28 = objc_alloc_init(UIView);
    highlightView = v3->_highlightView;
    v3->_highlightView = v28;

    v30 = +[UIColor blackColor];
    [(UIView *)v3->_highlightView setBackgroundColor:v30];

    [(UIView *)v3->_highlightView setAlpha:0.0];
    v31 = [(UIView *)v3->_highlightView layer];
    [v31 setCornerCurve:v6];

    [(CALayer *)v3->_backgroundLayer cornerRadius];
    v33 = v32;
    v34 = [(UIView *)v3->_highlightView layer];
    [v34 setCornerRadius:v33];

    [(UIView *)v3 addSubview:v3->_highlightView];
    [(UIView *)v3 setNeedsUpdateConstraints];
  }

  return v3;
}

- (void)updateConstraints
{
  v34.receiver = self;
  v34.super_class = _UIBannerView;
  [(UIView *)&v34 updateConstraints];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(UIView *)self->_imageView topAnchor];
  v5 = [(UIView *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:16.0];
  [v3 addObject:v6];

  v7 = [(UIView *)self->_imageView leadingAnchor];
  v8 = [(UIView *)self leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:16.0];
  [v3 addObject:v9];

  v10 = [(UIView *)self->_imageView bottomAnchor];
  v11 = [(UIView *)self bottomAnchor];
  v12 = [v10 constraintLessThanOrEqualToAnchor:v11 constant:-16.0];
  [v3 addObject:v12];

  v13 = [(UIView *)self->_titleLabel firstBaselineAnchor];
  v14 = [(UIView *)self topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:28.0];
  [v3 addObject:v15];

  v16 = [(UIView *)self->_titleLabel leadingAnchor];
  v17 = [(UIView *)self->_imageView trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:12.0];
  [v3 addObject:v18];

  v19 = [(UIView *)self->_titleLabel trailingAnchor];
  v20 = [(UIView *)self trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-16.0];
  [v3 addObject:v21];

  v22 = [(UIView *)self->_bodyLabel firstBaselineAnchor];
  v23 = [(UIView *)self->_titleLabel lastBaselineAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:20.0];
  [v3 addObject:v24];

  v25 = [(UIView *)self->_bodyLabel leadingAnchor];
  v26 = [(UIView *)self->_titleLabel leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  [v3 addObject:v27];

  v28 = [(UIView *)self->_bodyLabel trailingAnchor];
  v29 = [(UIView *)self->_titleLabel trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  [v3 addObject:v30];

  v31 = [(UIView *)self->_bodyLabel lastBaselineAnchor];
  v32 = [(UIView *)self bottomAnchor];
  v33 = [v31 constraintLessThanOrEqualToAnchor:v32 constant:-16.0];
  [v3 addObject:v33];

  [MEMORY[0x1E69977A0] activateConstraints:v3];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _UIBannerView;
  [(UIView *)&v12 layoutSubviews];
  v3 = [(UIView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CALayer *)self->_backgroundLayer setFrame:v5, v7, v9, v11];
  [(UIView *)self->_highlightView setFrame:v5, v7, v9, v11];
}

- (void)setContent:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  [(UILabel *)self->_titleLabel setText:v5];

  v6 = [v4 contentColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  v7 = [v4 body];
  [(UILabel *)self->_bodyLabel setText:v7];

  v8 = [v4 contentColor];
  [(UILabel *)self->_bodyLabel setTextColor:v8];

  v9 = [v4 image];
  [(UIImageView *)self->_imageView setImage:v9];

  v10 = [v4 contentColor];
  [(UIView *)self->_imageView setTintColor:v10];

  v13 = [v4 backgroundColor];

  v11 = v13;
  if (!v13)
  {
    v11 = +[UIColor grayColor];
  }

  v14 = v11;
  v12 = v11;
  -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v14 CGColor]);
}

- (void)setHighlighted:(BOOL)a3 initialPress:(BOOL)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_highlighted != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_highlighted = a3;
    v10[0] = self;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45___UIBannerView_setHighlighted_initialPress___block_invoke;
    v8[3] = &unk_1E711F440;
    v9 = v5;
    v8[4] = self;
    [UIButton _setVisuallyHighlighted:v5 forViews:v7 initialPress:v4 highlightBlock:v8];
  }
}

@end
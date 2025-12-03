@interface _UIBannerView
- (_UIBannerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setContent:(id)content;
- (void)setHighlighted:(BOOL)highlighted initialPress:(BOOL)press;
- (void)updateConstraints;
@end

@implementation _UIBannerView

- (_UIBannerView)initWithFrame:(CGRect)frame
{
  v36.receiver = self;
  v36.super_class = _UIBannerView;
  v3 = [(UIView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    layer = [MEMORY[0x1E6979398] layer];
    backgroundLayer = v3->_backgroundLayer;
    v3->_backgroundLayer = layer;

    v6 = *MEMORY[0x1E69796E8];
    [(CALayer *)v3->_backgroundLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    [(CALayer *)v3->_backgroundLayer setCornerRadius:13.0];
    v7 = +[UIColor blackColor];
    -[CALayer setShadowColor:](v3->_backgroundLayer, "setShadowColor:", [v7 CGColor]);

    [(CALayer *)v3->_backgroundLayer setShadowRadius:10.0];
    [(CALayer *)v3->_backgroundLayer setShadowOffset:0.0, 5.0];
    LODWORD(v8) = 1045220557;
    [(CALayer *)v3->_backgroundLayer setShadowOpacity:v8];
    layer2 = [(UIView *)v3 layer];
    [layer2 addSublayer:v3->_backgroundLayer];

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
    layer3 = [(UIView *)v3->_highlightView layer];
    [layer3 setCornerCurve:v6];

    [(CALayer *)v3->_backgroundLayer cornerRadius];
    v33 = v32;
    layer4 = [(UIView *)v3->_highlightView layer];
    [layer4 setCornerRadius:v33];

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
  array = [MEMORY[0x1E695DF70] array];
  topAnchor = [(UIView *)self->_imageView topAnchor];
  topAnchor2 = [(UIView *)self topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  [array addObject:v6];

  leadingAnchor = [(UIView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(UIView *)self leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  [array addObject:v9];

  bottomAnchor = [(UIView *)self->_imageView bottomAnchor];
  bottomAnchor2 = [(UIView *)self bottomAnchor];
  v12 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-16.0];
  [array addObject:v12];

  firstBaselineAnchor = [(UIView *)self->_titleLabel firstBaselineAnchor];
  topAnchor3 = [(UIView *)self topAnchor];
  v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:28.0];
  [array addObject:v15];

  leadingAnchor3 = [(UIView *)self->_titleLabel leadingAnchor];
  trailingAnchor = [(UIView *)self->_imageView trailingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
  [array addObject:v18];

  trailingAnchor2 = [(UIView *)self->_titleLabel trailingAnchor];
  trailingAnchor3 = [(UIView *)self trailingAnchor];
  v21 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  [array addObject:v21];

  firstBaselineAnchor2 = [(UIView *)self->_bodyLabel firstBaselineAnchor];
  lastBaselineAnchor = [(UIView *)self->_titleLabel lastBaselineAnchor];
  v24 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor constant:20.0];
  [array addObject:v24];

  leadingAnchor4 = [(UIView *)self->_bodyLabel leadingAnchor];
  leadingAnchor5 = [(UIView *)self->_titleLabel leadingAnchor];
  v27 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  [array addObject:v27];

  trailingAnchor4 = [(UIView *)self->_bodyLabel trailingAnchor];
  trailingAnchor5 = [(UIView *)self->_titleLabel trailingAnchor];
  v30 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  [array addObject:v30];

  lastBaselineAnchor2 = [(UIView *)self->_bodyLabel lastBaselineAnchor];
  bottomAnchor3 = [(UIView *)self bottomAnchor];
  v33 = [lastBaselineAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-16.0];
  [array addObject:v33];

  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = _UIBannerView;
  [(UIView *)&v12 layoutSubviews];
  layer = [(UIView *)self layer];
  [layer bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CALayer *)self->_backgroundLayer setFrame:v5, v7, v9, v11];
  [(UIView *)self->_highlightView setFrame:v5, v7, v9, v11];
}

- (void)setContent:(id)content
{
  contentCopy = content;
  title = [contentCopy title];
  [(UILabel *)self->_titleLabel setText:title];

  contentColor = [contentCopy contentColor];
  [(UILabel *)self->_titleLabel setTextColor:contentColor];

  body = [contentCopy body];
  [(UILabel *)self->_bodyLabel setText:body];

  contentColor2 = [contentCopy contentColor];
  [(UILabel *)self->_bodyLabel setTextColor:contentColor2];

  image = [contentCopy image];
  [(UIImageView *)self->_imageView setImage:image];

  contentColor3 = [contentCopy contentColor];
  [(UIView *)self->_imageView setTintColor:contentColor3];

  backgroundColor = [contentCopy backgroundColor];

  v11 = backgroundColor;
  if (!backgroundColor)
  {
    v11 = +[UIColor grayColor];
  }

  v14 = v11;
  v12 = v11;
  -[CALayer setBackgroundColor:](self->_backgroundLayer, "setBackgroundColor:", [v14 CGColor]);
}

- (void)setHighlighted:(BOOL)highlighted initialPress:(BOOL)press
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (self->_highlighted != highlighted)
  {
    pressCopy = press;
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    v10[0] = self;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45___UIBannerView_setHighlighted_initialPress___block_invoke;
    v8[3] = &unk_1E711F440;
    v9 = highlightedCopy;
    v8[4] = self;
    [UIButton _setVisuallyHighlighted:highlightedCopy forViews:v7 initialPress:pressCopy highlightBlock:v8];
  }
}

@end
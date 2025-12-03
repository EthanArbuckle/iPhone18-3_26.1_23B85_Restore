@interface SSVellumOpacityControl
+ (double)preferredWidth;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SSVellumOpacityControl)initWithFrame:(CGRect)frame;
- (id)_leftImageView;
- (id)_rightImageView;
- (void)layoutSubviews;
- (void)setValue:(double)value;
@end

@implementation SSVellumOpacityControl

- (SSVellumOpacityControl)initWithFrame:(CGRect)frame
{
  v66[3] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = SSVellumOpacityControl;
  v3 = [(SSVellumOpacityControl *)&v64 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(MEMORY[0x1E69DCF60]);
  slider = v3->_slider;
  v3->_slider = v4;

  [(UISlider *)v3->_slider setMinimumValue:0.0];
  LODWORD(v6) = *"fff?";
  [(UISlider *)v3->_slider setMaximumValue:v6];
  [(UISlider *)v3->_slider setValue:0.0];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [whiteColor colorWithAlphaComponent:0.4];

  [(UISlider *)v3->_slider setMinimumTrackTintColor:v8];
  v63 = v8;
  [(UISlider *)v3->_slider setMaximumTrackTintColor:v8];
  v9 = v3->_slider;
  if (SSVellumOpacityControlKnobImage_onceToken != -1)
  {
    [SSVellumOpacityControl initWithFrame:];
  }

  [(UISlider *)v9 setThumbImage:__SSVellumOpacityControlKnobImage forState:0];
  v10 = +[SSMaterial vellumOpacitySliderTrack];
  _minTrackView = [(UISlider *)v3->_slider _minTrackView];
  [v10 applyToView:_minTrackView];

  _maxTrackView = [(UISlider *)v3->_slider _maxTrackView];
  v62 = v10;
  [v10 applyToView:_maxTrackView];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"app"];
  v14 = *MEMORY[0x1E69DDCF8];
  v15 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:2];
  v16 = [v13 imageWithSymbolConfiguration:v15];

  v17 = [v16 imageWithRenderingMode:2];

  v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"app.fill"];
  v19 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v14 scale:2];
  v20 = [v18 imageWithSymbolConfiguration:v19];

  v21 = [v20 imageWithRenderingMode:2];

  v61 = v17;
  v22 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
  leadingImageView = v3->_leadingImageView;
  v3->_leadingImageView = v22;

  v24 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v21];
  trailingImageView = v3->_trailingImageView;
  v3->_trailingImageView = v24;

  if (!_UISolariumEnabled() || (-[SSVellumOpacityControl traitCollection](v3, "traitCollection"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 userInterfaceIdiom], v26, v27 == 1))
  {
    [(UIImageView *)v3->_leadingImageView _setOverrideUserInterfaceStyle:2];
    [(UIImageView *)v3->_trailingImageView _setOverrideUserInterfaceStyle:2];
  }

  v28 = v3->_leadingImageView;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UIImageView *)v28 setTintColor:secondaryLabelColor];

  v30 = v3->_trailingImageView;
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UIImageView *)v30 setTintColor:secondaryLabelColor2];

  [(UIImageView *)v3->_leadingImageView setShowsLargeContentViewer:1];
  [(UIImageView *)v3->_trailingImageView setShowsLargeContentViewer:1];
  v32 = +[SSMaterial vellumOpacitySliderValueImage];
  [v32 applyToView:v3->_leadingImageView];
  if (_SSScreenshotsRedesign2025Enabled())
  {
    [(UISlider *)v3->_slider setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_trailingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = v32;
    v60 = v21;
    v33 = objc_alloc(MEMORY[0x1E69DCF90]);
    v66[0] = v3->_leadingImageView;
    v66[1] = v3->_slider;
    v66[2] = v3->_trailingImageView;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    v35 = [v33 initWithArrangedSubviews:v34];
    containerStackView = v3->_containerStackView;
    v3->_containerStackView = v35;

    [(UIStackView *)v3->_containerStackView setAxis:0];
    [(UIStackView *)v3->_containerStackView setAlignment:3];
    [(UIStackView *)v3->_containerStackView setSpacing:15.0];
    [(UIStackView *)v3->_containerStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SSVellumOpacityControl *)v3 addSubview:v3->_containerStackView];
    v51 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)v3->_leadingImageView widthAnchor];
    v57 = [widthAnchor constraintEqualToConstant:17.0];
    v65[0] = v57;
    heightAnchor = [(UIImageView *)v3->_leadingImageView heightAnchor];
    v55 = [heightAnchor constraintEqualToConstant:17.0];
    v65[1] = v55;
    widthAnchor2 = [(UIImageView *)v3->_trailingImageView widthAnchor];
    v53 = [widthAnchor2 constraintEqualToConstant:17.0];
    v65[2] = v53;
    heightAnchor2 = [(UIImageView *)v3->_trailingImageView heightAnchor];
    v50 = [heightAnchor2 constraintEqualToConstant:17.0];
    v65[3] = v50;
    heightAnchor3 = [(UISlider *)v3->_slider heightAnchor];
    v48 = [heightAnchor3 constraintEqualToConstant:44.0];
    v65[4] = v48;
    leadingAnchor = [(UIStackView *)v3->_containerStackView leadingAnchor];
    leadingAnchor2 = [(SSVellumOpacityControl *)v3 leadingAnchor];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v65[5] = v38;
    trailingAnchor = [(UIStackView *)v3->_containerStackView trailingAnchor];
    trailingAnchor2 = [(SSVellumOpacityControl *)v3 trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    v65[6] = v41;
    centerYAnchor = [(UIStackView *)v3->_containerStackView centerYAnchor];
    centerYAnchor2 = [(SSVellumOpacityControl *)v3 centerYAnchor];
    v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v65[7] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:8];
    [v51 activateConstraints:v45];

    v21 = v60;
    v32 = v59;
  }

  else
  {
    [(SSVellumOpacityControl *)v3 addSubview:v3->_slider];
    [(SSVellumOpacityControl *)v3 addSubview:v3->_leadingImageView];
    [(SSVellumOpacityControl *)v3 addSubview:v3->_trailingImageView];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  if (_SSScreenshotsRedesign2025Enabled())
  {
    +[SSVellumOpacityControl preferredWidth];
  }

  else
  {
    v2 = *MEMORY[0x1E69DE788];
  }

  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(SSVellumOpacityControl *)self intrinsicContentSize:fits.width];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

+ (double)preferredWidth
{
  v2 = _SSScreenshotsRedesign2025Enabled();
  result = 233.0;
  if (v2)
  {
    return 249.0;
  }

  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SSVellumOpacityControl;
  [(SSVellumOpacityControl *)&v15 layoutSubviews];
  if ((_SSScreenshotsRedesign2025Enabled() & 1) == 0)
  {
    [(SSVellumOpacityControl *)self bounds];
    v4 = v3;
    UIRectCenteredYInRect();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    _leftImageView = [(SSVellumOpacityControl *)self _leftImageView];
    [_leftImageView setFrame:{v6, v8, v10, v12}];

    _rightImageView = [(SSVellumOpacityControl *)self _rightImageView];
    [_rightImageView setFrame:{v4 - v10, v8, v10, v12}];

    UIRectCenteredIntegralRect();
    [(UISlider *)self->_slider setFrame:?];
  }
}

- (id)_leftImageView
{
  effectiveUserInterfaceLayoutDirection = [(SSVellumOpacityControl *)self effectiveUserInterfaceLayoutDirection];
  v4 = &OBJC_IVAR___SSVellumOpacityControl__trailingImageView;
  if (!effectiveUserInterfaceLayoutDirection)
  {
    v4 = &OBJC_IVAR___SSVellumOpacityControl__leadingImageView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (id)_rightImageView
{
  effectiveUserInterfaceLayoutDirection = [(SSVellumOpacityControl *)self effectiveUserInterfaceLayoutDirection];
  v4 = &OBJC_IVAR___SSVellumOpacityControl__leadingImageView;
  if (!effectiveUserInterfaceLayoutDirection)
  {
    v4 = &OBJC_IVAR___SSVellumOpacityControl__trailingImageView;
  }

  v5 = *(&self->super.super.super.super.isa + *v4);

  return v5;
}

- (void)setValue:(double)value
{
  *&value = value;
  [(UISlider *)self->_slider setValue:value];

  [(SSVellumOpacityControl *)self setNeedsLayout];
}

@end
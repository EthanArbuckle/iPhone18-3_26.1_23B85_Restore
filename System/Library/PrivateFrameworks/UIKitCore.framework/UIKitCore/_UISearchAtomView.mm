@interface _UISearchAtomView
+ (id)_defaultAtomForegroundColorForTraitCollection:(id)collection;
+ (id)defaultAtomBackgroundColorForTraitCollection:(id)collection;
- (UIColor)_atomForegroundColor;
- (_UISearchAtomView)initWithFrame:(CGRect)frame;
- (double)viewportWidth;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setAtomForegroundColor:(id)color;
- (void)_updateColors;
- (void)setAtomBackgroundColor:(id)color;
- (void)setAtomFont:(id)font;
- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)setSelectionStyle:(int64_t)style animated:(BOOL)animated;
- (void)setViewportWidth:(double)width;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation _UISearchAtomView

- (_UISearchAtomView)initWithFrame:(CGRect)frame
{
  v82[8] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = _UISearchAtomView;
  v3 = [(UIView *)&v79 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[_UIVisualStyleRegistry defaultRegistry];
    v5 = objc_opt_class();
    [v4 registerVisualStyleClass:v5 forStylableClass:objc_opt_class()];

    v6 = [_UIVisualStyleRegistry registryForTraitEnvironment:v3];
    v7 = [v6 visualStyleClassForView:v3];

    v8 = [[v7 alloc] initWithInstance:v3];
    visualStyle = v3->_visualStyle;
    v3->_visualStyle = v8;

    v10 = [_UISearchAtomBackgroundView alloc];
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    v15 = [(_UISearchAtomBackgroundView *)v10 initWithFrame:*MEMORY[0x1E695F058], v12, v13, v14];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v15;

    defaultFont = [(_UISearchAtomViewVisualStyle *)v3->_visualStyle defaultFont];
    v17 = [[UILabel alloc] initWithFrame:v11, v12, v13, v14];
    textLabel = v3->_textLabel;
    v3->_textLabel = v17;

    [(UILabel *)v3->_textLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v3->_textLabel setFont:defaultFont];
    [(UILabel *)v3->_textLabel setNumberOfLines:1];
    [(UILabel *)v3->_textLabel setTextAlignment:4];
    LODWORD(v19) = 1132068864;
    [(UIView *)v3->_textLabel setContentCompressionResistancePriority:0 forAxis:v19];
    [(UILabel *)v3->_textLabel setAdjustsFontForContentSizeCategory:1];
    v20 = [[UIImageView alloc] initWithImage:0];
    leadingImage = v3->_leadingImage;
    v3->_leadingImage = v20;

    [(UIView *)v3->_leadingImage setTintAdjustmentMode:1];
    LODWORD(v22) = 1148846080;
    [(UIView *)v3->_leadingImage setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIView *)v3->_leadingImage setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIView *)v3->_leadingImage setContentHuggingPriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UIView *)v3->_leadingImage setContentHuggingPriority:1 forAxis:v25];
    atomFont = [(_UISearchAtomView *)v3 atomFont];
    v27 = [UIImageSymbolConfiguration configurationWithFont:atomFont scale:1];
    [(UIImageView *)v3->_leadingImage setPreferredSymbolConfiguration:v27];

    [(UIView *)v3->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_leadingImage setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3 addSubview:v3->_backgroundView];
    [(UIView *)v3 addSubview:v3->_leadingImage];
    [(UIView *)v3 addSubview:v3->_textLabel];
    [(_UISearchAtomView *)v3 _updateColors];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle textVerticalPadding];
    v29 = v28;
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle cornerRadius];
    v31 = v30;
    [(UIView *)v3->_backgroundView _setContinuousCornerRadius:?];
    [(UIView *)v3 _setContinuousCornerRadius:v31];
    widthAnchor = [(UIView *)v3 widthAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle maximumFallbackWidth];
    v33 = [widthAnchor constraintLessThanOrEqualToConstant:?];
    [(_UISearchAtomView *)v3 setMaximumAtomWidthConstraint:v33];

    trailingAnchor = [(UIView *)v3 trailingAnchor];
    trailingAnchor2 = [(UIView *)v3->_textLabel trailingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle contentHorizontalPadding];
    v75 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
    v82[0] = v75;
    topAnchor = [(UIView *)v3->_textLabel topAnchor];
    topAnchor2 = [(UIView *)v3 topAnchor];
    v72 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v29];
    v82[1] = v72;
    bottomAnchor = [(UIView *)v3 bottomAnchor];
    bottomAnchor2 = [(UIView *)v3->_textLabel bottomAnchor];
    v69 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v29];
    v82[2] = v69;
    leadingAnchor = [(UIView *)v3->_backgroundView leadingAnchor];
    leadingAnchor2 = [(UIView *)v3 leadingAnchor];
    v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v82[3] = v66;
    trailingAnchor3 = [(UIView *)v3->_backgroundView trailingAnchor];
    trailingAnchor4 = [(UIView *)v3 trailingAnchor];
    v34 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v82[4] = v34;
    topAnchor3 = [(UIView *)v3->_backgroundView topAnchor];
    topAnchor4 = [(UIView *)v3 topAnchor];
    v37 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v82[5] = v37;
    bottomAnchor3 = [(UIView *)v3->_backgroundView bottomAnchor];
    bottomAnchor4 = [(UIView *)v3 bottomAnchor];
    v40 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v82[6] = v40;
    maximumAtomWidthConstraint = [(_UISearchAtomView *)v3 maximumAtomWidthConstraint];
    v82[7] = maximumAtomWidthConstraint;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:8];
    [(_UISearchAtomView *)v3 setDefaultConstraints:v42];

    centerYAnchor = [(UIView *)v3->_leadingImage centerYAnchor];
    centerYAnchor2 = [(UIView *)v3->_textLabel centerYAnchor];
    v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(_UISearchAtomView *)v3 setImageCenterYConstraint:v45];

    lastBaselineAnchor = [(UIView *)v3->_leadingImage lastBaselineAnchor];
    lastBaselineAnchor2 = [(UIView *)v3->_textLabel lastBaselineAnchor];
    v48 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
    [(_UISearchAtomView *)v3 setImageBaselineConstraint:v48];

    leadingAnchor3 = [(UIView *)v3->_leadingImage leadingAnchor];
    leadingAnchor4 = [(UIView *)v3 leadingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle contentHorizontalPadding];
    v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v81[0] = v51;
    leadingAnchor5 = [(UIView *)v3->_textLabel leadingAnchor];
    trailingAnchor5 = [(UIView *)v3->_leadingImage trailingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle imageTextSpacing];
    v54 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:?];
    v81[1] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    [(_UISearchAtomView *)v3 setWithImageConstraints:v55];

    leadingAnchor6 = [(UIView *)v3->_textLabel leadingAnchor];
    leadingAnchor7 = [(UIView *)v3 leadingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle contentHorizontalPadding];
    v58 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:?];
    v80[0] = v58;
    leadingAnchor8 = [(UIView *)v3->_leadingImage leadingAnchor];
    leadingAnchor9 = [(UIView *)v3 leadingAnchor];
    v61 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v80[1] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
    [(_UISearchAtomView *)v3 setWithoutImageConstraints:v62];
  }

  return v3;
}

+ (id)defaultAtomBackgroundColorForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_alloc_init(_UISearchAtomView);
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];

  v6 = [_UIVisualStyleRegistry registryForIdiom:userInterfaceIdiom];
  v7 = [v6 visualStyleClassForStylableClass:objc_opt_class()];

  v8 = [[v7 alloc] initWithInstance:v4];
  defaultAtomBackgroundColor = [v8 defaultAtomBackgroundColor];

  return defaultAtomBackgroundColor;
}

+ (id)_defaultAtomForegroundColorForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_alloc_init(_UISearchAtomView);
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];

  v6 = [_UIVisualStyleRegistry registryForIdiom:userInterfaceIdiom];
  v7 = [v6 visualStyleClassForStylableClass:objc_opt_class()];

  v8 = [[v7 alloc] initWithInstance:v4];
  defaultTextAndImageColor = [v8 defaultTextAndImageColor];

  return defaultTextAndImageColor;
}

- (void)setAtomBackgroundColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (!colorCopy)
  {
    v6 = objc_opt_class();
    traitCollection = [(UIView *)self traitCollection];
    colorCopy = [v6 defaultAtomBackgroundColorForTraitCollection:traitCollection];
  }

  objc_storeStrong(&self->_atomBackgroundColor, colorCopy);
  if (!v7)
  {
  }

  [(_UISearchAtomView *)self _updateColors];
}

- (void)_setAtomForegroundColor:(id)color
{
  objc_storeStrong(&self->_customAtomForegroundColor, color);

  [(_UISearchAtomView *)self _updateColors];
}

- (UIColor)_atomForegroundColor
{
  customAtomForegroundColor = self->_customAtomForegroundColor;
  if (customAtomForegroundColor)
  {
    defaultTextAndImageColor = customAtomForegroundColor;
  }

  else
  {
    defaultTextAndImageColor = [(_UISearchAtomViewVisualStyle *)self->_visualStyle defaultTextAndImageColor];
  }

  return defaultTextAndImageColor;
}

- (void)setAtomFont:(id)font
{
  fontCopy = font;
  if (!fontCopy)
  {
    fontCopy = [(_UISearchAtomViewVisualStyle *)self->_visualStyle defaultFont];
  }

  v6 = fontCopy;
  [(UILabel *)self->_textLabel setFont:fontCopy];
  v5 = [UIImageSymbolConfiguration configurationWithFont:v6 scale:1];
  [(UIImageView *)self->_leadingImage setPreferredSymbolConfiguration:v5];
  [(UIView *)self setNeedsLayout];
}

- (void)updateConstraints
{
  v11.receiver = self;
  v11.super_class = _UISearchAtomView;
  [(UIView *)&v11 updateConstraints];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  image = [(UIImageView *)self->_leadingImage image];

  [v3 addObjectsFromArray:self->_defaultConstraints];
  if (image)
  {
    [v3 addObjectsFromArray:self->_withImageConstraints];
    [v4 addObjectsFromArray:self->_withoutImageConstraints];
    _currentImage = [(UIImageView *)self->_leadingImage _currentImage];
    hasBaseline = [_currentImage hasBaseline];

    if (hasBaseline)
    {
      v8 = &OBJC_IVAR____UISearchAtomView__imageBaselineConstraint;
    }

    else
    {
      v8 = &OBJC_IVAR____UISearchAtomView__imageCenterYConstraint;
    }

    if (hasBaseline)
    {
      v9 = &OBJC_IVAR____UISearchAtomView__imageCenterYConstraint;
    }

    else
    {
      v9 = &OBJC_IVAR____UISearchAtomView__imageBaselineConstraint;
    }

    v10 = v3;
  }

  else
  {
    [v3 addObjectsFromArray:self->_withoutImageConstraints];
    [v4 addObjectsFromArray:self->_withImageConstraints];
    v9 = &OBJC_IVAR____UISearchAtomView__imageCenterYConstraint;
    v8 = &OBJC_IVAR____UISearchAtomView__imageBaselineConstraint;
    v10 = v4;
  }

  [v10 addObject:*(&self->super.super.super.isa + *v8)];
  [v4 addObject:*(&self->super.super.super.isa + *v9)];
  [MEMORY[0x1E69977A0] deactivateConstraints:v4];
  [MEMORY[0x1E69977A0] activateConstraints:v3];
}

- (void)_updateColors
{
  if (os_variant_has_internal_diagnostics())
  {
    if (!self)
    {
      v22 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Attempted to begin using the effective theme of a nil view.", buf, 2u);
      }
    }
  }

  else if (!self)
  {
    v23 = *(__UILogGetCategoryCachedImpl("Assert", &_updateColors___s_category) + 8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24[0] = 0;
      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_ERROR, "Attempted to begin using the effective theme of a nil view.", v24, 2u);
    }
  }

  v3 = +[UITraitCollection _currentTraitCollectionIfExists];
  traitCollection = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:traitCollection];

  v5 = _UISetCurrentFallbackEnvironment(self);
  selectionStyle = [(_UISearchAtomBackgroundView *)self->_backgroundView selectionStyle];
  visualStyle = self->_visualStyle;
  if (selectionStyle)
  {
    v8 = (*&self->_flags & 1) == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (*&self->_flags)
    {
      defaultAtomBackgroundBlurEffect = [(_UISearchAtomViewVisualStyle *)visualStyle defaultAtomBackgroundBlurEffect];
      v10 = self->_atomBackgroundColor;
    }

    else
    {
      defaultAtomBackgroundBlurEffect = [(_UISearchAtomViewVisualStyle *)visualStyle disabledAtomBackgroundBlurEffect];
      if (defaultAtomBackgroundBlurEffect)
      {
        +[UIColor clearColor];
      }

      else
      {
        atomBackgroundColor = self->_atomBackgroundColor;
        [(_UISearchAtomViewVisualStyle *)self->_visualStyle disabledAlpha];
        [(UIColor *)atomBackgroundColor colorWithAlphaComponent:?];
      }
      v10 = ;
    }

    v14 = v10;
    _atomForegroundColor = [(_UISearchAtomView *)self _atomForegroundColor];
  }

  else
  {
    defaultSelectedAtomBackgroundColor = [(_UISearchAtomViewVisualStyle *)visualStyle defaultSelectedAtomBackgroundColor];
    v12 = defaultSelectedAtomBackgroundColor;
    if (defaultSelectedAtomBackgroundColor)
    {
      tintColor = defaultSelectedAtomBackgroundColor;
    }

    else
    {
      tintColor = [(UIView *)self tintColor];
    }

    v14 = tintColor;
    _atomForegroundColor = [(_UISearchAtomViewVisualStyle *)self->_visualStyle defaultSelectedTextAndImageColor];

    defaultAtomBackgroundBlurEffect = 0;
  }

  [(_UISearchAtomViewVisualStyle *)self->_visualStyle updateColorsWithBackgroundColor:v14];
  [(UIView *)self->_backgroundView setBackgroundColor:v14];
  [(_UISearchAtomBackgroundView *)self->_backgroundView setBlurEffect:defaultAtomBackgroundBlurEffect];
  [(UIColor *)v14 _luminanceDifferenceFromColor:_atomForegroundColor];
  v18 = v17;
  [(_UISearchAtomViewVisualStyle *)self->_visualStyle minimumTextConstrastRatio];
  if (v18 < v19)
  {
    textContrastFallbackColor = [(_UISearchAtomViewVisualStyle *)self->_visualStyle textContrastFallbackColor];

    _atomForegroundColor = textContrastFallbackColor;
  }

  if (*&self->_flags)
  {
    [(UILabel *)self->_textLabel setTextColor:_atomForegroundColor];
    [(UIView *)self->_leadingImage setTintColor:_atomForegroundColor];
  }

  else
  {
    [(_UISearchAtomViewVisualStyle *)self->_visualStyle disabledAlpha];
    v21 = [_atomForegroundColor colorWithAlphaComponent:?];
    [(UILabel *)self->_textLabel setTextColor:v21];
    [(UIView *)self->_leadingImage setTintColor:v21];
  }

  _UIRestorePreviousFallbackEnvironment(v5);
  [UITraitCollection setCurrentTraitCollection:v3];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UISearchAtomView;
  [(UIView *)&v3 tintColorDidChange];
  [(_UISearchAtomView *)self _updateColors];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _UISearchAtomView;
  [(UIView *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_UISearchAtomView *)self _updateColors];
}

- (void)setEnabled:(BOOL)enabled animated:(BOOL)animated
{
  flags = self->_flags;
  if ((flags & 1) != enabled)
  {
    aBlock[9] = v4;
    aBlock[10] = v5;
    animatedCopy = animated;
    *&self->_flags = flags & 0xFE | enabled;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41___UISearchAtomView_setEnabled_animated___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (animatedCopy)
    {
      [UIView transitionWithView:self duration:5242880 options:v9 animations:0 completion:0.35];
    }

    else
    {
      (*(v9 + 2))(v9);
    }
  }
}

- (void)setSelectionStyle:(int64_t)style animated:(BOOL)animated
{
  [(_UISearchAtomBackgroundView *)self->_backgroundView setSelectionStyle:style, animated];

  [(_UISearchAtomView *)self _updateColors];
}

- (void)setViewportWidth:(double)width
{
  [(_UISearchAtomViewVisualStyle *)self->_visualStyle maximumAtomWidthFraction];
  v6 = v5 * width;
  [(_UISearchAtomViewVisualStyle *)self->_visualStyle maximumFallbackWidth];
  if (v6 < v7)
  {
    v6 = v7;
  }

  maximumAtomWidthConstraint = [(_UISearchAtomView *)self maximumAtomWidthConstraint];
  [maximumAtomWidthConstraint setConstant:v6];
}

- (double)viewportWidth
{
  maximumAtomWidthConstraint = [(_UISearchAtomView *)self maximumAtomWidthConstraint];
  [maximumAtomWidthConstraint constant];
  v4 = v3;

  return v4;
}

@end
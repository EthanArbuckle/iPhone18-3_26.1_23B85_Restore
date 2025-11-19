@interface _UISearchAtomView
+ (id)_defaultAtomForegroundColorForTraitCollection:(id)a3;
+ (id)defaultAtomBackgroundColorForTraitCollection:(id)a3;
- (UIColor)_atomForegroundColor;
- (_UISearchAtomView)initWithFrame:(CGRect)a3;
- (double)viewportWidth;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_setAtomForegroundColor:(id)a3;
- (void)_updateColors;
- (void)setAtomBackgroundColor:(id)a3;
- (void)setAtomFont:(id)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelectionStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)setViewportWidth:(double)a3;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation _UISearchAtomView

- (_UISearchAtomView)initWithFrame:(CGRect)a3
{
  v82[8] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = _UISearchAtomView;
  v3 = [(UIView *)&v79 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

    v78 = [(_UISearchAtomViewVisualStyle *)v3->_visualStyle defaultFont];
    v17 = [[UILabel alloc] initWithFrame:v11, v12, v13, v14];
    textLabel = v3->_textLabel;
    v3->_textLabel = v17;

    [(UILabel *)v3->_textLabel setAllowsDefaultTighteningForTruncation:1];
    [(UILabel *)v3->_textLabel setFont:v78];
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
    v26 = [(_UISearchAtomView *)v3 atomFont];
    v27 = [UIImageSymbolConfiguration configurationWithFont:v26 scale:1];
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
    v32 = [(UIView *)v3 widthAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle maximumFallbackWidth];
    v33 = [v32 constraintLessThanOrEqualToConstant:?];
    [(_UISearchAtomView *)v3 setMaximumAtomWidthConstraint:v33];

    v77 = [(UIView *)v3 trailingAnchor];
    v76 = [(UIView *)v3->_textLabel trailingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle contentHorizontalPadding];
    v75 = [v77 constraintEqualToAnchor:v76 constant:?];
    v82[0] = v75;
    v74 = [(UIView *)v3->_textLabel topAnchor];
    v73 = [(UIView *)v3 topAnchor];
    v72 = [v74 constraintEqualToAnchor:v73 constant:v29];
    v82[1] = v72;
    v71 = [(UIView *)v3 bottomAnchor];
    v70 = [(UIView *)v3->_textLabel bottomAnchor];
    v69 = [v71 constraintEqualToAnchor:v70 constant:v29];
    v82[2] = v69;
    v68 = [(UIView *)v3->_backgroundView leadingAnchor];
    v67 = [(UIView *)v3 leadingAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v82[3] = v66;
    v65 = [(UIView *)v3->_backgroundView trailingAnchor];
    v64 = [(UIView *)v3 trailingAnchor];
    v34 = [v65 constraintEqualToAnchor:v64];
    v82[4] = v34;
    v35 = [(UIView *)v3->_backgroundView topAnchor];
    v36 = [(UIView *)v3 topAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v82[5] = v37;
    v38 = [(UIView *)v3->_backgroundView bottomAnchor];
    v39 = [(UIView *)v3 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v82[6] = v40;
    v41 = [(_UISearchAtomView *)v3 maximumAtomWidthConstraint];
    v82[7] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:8];
    [(_UISearchAtomView *)v3 setDefaultConstraints:v42];

    v43 = [(UIView *)v3->_leadingImage centerYAnchor];
    v44 = [(UIView *)v3->_textLabel centerYAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [(_UISearchAtomView *)v3 setImageCenterYConstraint:v45];

    v46 = [(UIView *)v3->_leadingImage lastBaselineAnchor];
    v47 = [(UIView *)v3->_textLabel lastBaselineAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [(_UISearchAtomView *)v3 setImageBaselineConstraint:v48];

    v49 = [(UIView *)v3->_leadingImage leadingAnchor];
    v50 = [(UIView *)v3 leadingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle contentHorizontalPadding];
    v51 = [v49 constraintEqualToAnchor:v50 constant:?];
    v81[0] = v51;
    v52 = [(UIView *)v3->_textLabel leadingAnchor];
    v53 = [(UIView *)v3->_leadingImage trailingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle imageTextSpacing];
    v54 = [v52 constraintEqualToAnchor:v53 constant:?];
    v81[1] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    [(_UISearchAtomView *)v3 setWithImageConstraints:v55];

    v56 = [(UIView *)v3->_textLabel leadingAnchor];
    v57 = [(UIView *)v3 leadingAnchor];
    [(_UISearchAtomViewVisualStyle *)v3->_visualStyle contentHorizontalPadding];
    v58 = [v56 constraintEqualToAnchor:v57 constant:?];
    v80[0] = v58;
    v59 = [(UIView *)v3->_leadingImage leadingAnchor];
    v60 = [(UIView *)v3 leadingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v80[1] = v61;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:2];
    [(_UISearchAtomView *)v3 setWithoutImageConstraints:v62];
  }

  return v3;
}

+ (id)defaultAtomBackgroundColorForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UISearchAtomView);
  v5 = [v3 userInterfaceIdiom];

  v6 = [_UIVisualStyleRegistry registryForIdiom:v5];
  v7 = [v6 visualStyleClassForStylableClass:objc_opt_class()];

  v8 = [[v7 alloc] initWithInstance:v4];
  v9 = [v8 defaultAtomBackgroundColor];

  return v9;
}

+ (id)_defaultAtomForegroundColorForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UISearchAtomView);
  v5 = [v3 userInterfaceIdiom];

  v6 = [_UIVisualStyleRegistry registryForIdiom:v5];
  v7 = [v6 visualStyleClassForStylableClass:objc_opt_class()];

  v8 = [[v7 alloc] initWithInstance:v4];
  v9 = [v8 defaultTextAndImageColor];

  return v9;
}

- (void)setAtomBackgroundColor:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = objc_opt_class();
    v3 = [(UIView *)self traitCollection];
    v5 = [v6 defaultAtomBackgroundColorForTraitCollection:v3];
  }

  objc_storeStrong(&self->_atomBackgroundColor, v5);
  if (!v7)
  {
  }

  [(_UISearchAtomView *)self _updateColors];
}

- (void)_setAtomForegroundColor:(id)a3
{
  objc_storeStrong(&self->_customAtomForegroundColor, a3);

  [(_UISearchAtomView *)self _updateColors];
}

- (UIColor)_atomForegroundColor
{
  customAtomForegroundColor = self->_customAtomForegroundColor;
  if (customAtomForegroundColor)
  {
    v3 = customAtomForegroundColor;
  }

  else
  {
    v3 = [(_UISearchAtomViewVisualStyle *)self->_visualStyle defaultTextAndImageColor];
  }

  return v3;
}

- (void)setAtomFont:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(_UISearchAtomViewVisualStyle *)self->_visualStyle defaultFont];
  }

  v6 = v4;
  [(UILabel *)self->_textLabel setFont:v4];
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
  v5 = [(UIImageView *)self->_leadingImage image];

  [v3 addObjectsFromArray:self->_defaultConstraints];
  if (v5)
  {
    [v3 addObjectsFromArray:self->_withImageConstraints];
    [v4 addObjectsFromArray:self->_withoutImageConstraints];
    v6 = [(UIImageView *)self->_leadingImage _currentImage];
    v7 = [v6 hasBaseline];

    if (v7)
    {
      v8 = &OBJC_IVAR____UISearchAtomView__imageBaselineConstraint;
    }

    else
    {
      v8 = &OBJC_IVAR____UISearchAtomView__imageCenterYConstraint;
    }

    if (v7)
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
  v4 = [(UIView *)self traitCollection];
  [UITraitCollection setCurrentTraitCollection:v4];

  v5 = _UISetCurrentFallbackEnvironment(self);
  v6 = [(_UISearchAtomBackgroundView *)self->_backgroundView selectionStyle];
  visualStyle = self->_visualStyle;
  if (v6)
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
      v9 = [(_UISearchAtomViewVisualStyle *)visualStyle defaultAtomBackgroundBlurEffect];
      v10 = self->_atomBackgroundColor;
    }

    else
    {
      v9 = [(_UISearchAtomViewVisualStyle *)visualStyle disabledAtomBackgroundBlurEffect];
      if (v9)
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
    v15 = [(_UISearchAtomView *)self _atomForegroundColor];
  }

  else
  {
    v11 = [(_UISearchAtomViewVisualStyle *)visualStyle defaultSelectedAtomBackgroundColor];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(UIView *)self tintColor];
    }

    v14 = v13;
    v15 = [(_UISearchAtomViewVisualStyle *)self->_visualStyle defaultSelectedTextAndImageColor];

    v9 = 0;
  }

  [(_UISearchAtomViewVisualStyle *)self->_visualStyle updateColorsWithBackgroundColor:v14];
  [(UIView *)self->_backgroundView setBackgroundColor:v14];
  [(_UISearchAtomBackgroundView *)self->_backgroundView setBlurEffect:v9];
  [(UIColor *)v14 _luminanceDifferenceFromColor:v15];
  v18 = v17;
  [(_UISearchAtomViewVisualStyle *)self->_visualStyle minimumTextConstrastRatio];
  if (v18 < v19)
  {
    v20 = [(_UISearchAtomViewVisualStyle *)self->_visualStyle textContrastFallbackColor];

    v15 = v20;
  }

  if (*&self->_flags)
  {
    [(UILabel *)self->_textLabel setTextColor:v15];
    [(UIView *)self->_leadingImage setTintColor:v15];
  }

  else
  {
    [(_UISearchAtomViewVisualStyle *)self->_visualStyle disabledAlpha];
    v21 = [v15 colorWithAlphaComponent:?];
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

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  flags = self->_flags;
  if ((flags & 1) != a3)
  {
    aBlock[9] = v4;
    aBlock[10] = v5;
    v7 = a4;
    *&self->_flags = flags & 0xFE | a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __41___UISearchAtomView_setEnabled_animated___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v10 = v9;
    if (v7)
    {
      [UIView transitionWithView:self duration:5242880 options:v9 animations:0 completion:0.35];
    }

    else
    {
      (*(v9 + 2))(v9);
    }
  }
}

- (void)setSelectionStyle:(int64_t)a3 animated:(BOOL)a4
{
  [(_UISearchAtomBackgroundView *)self->_backgroundView setSelectionStyle:a3, a4];

  [(_UISearchAtomView *)self _updateColors];
}

- (void)setViewportWidth:(double)a3
{
  [(_UISearchAtomViewVisualStyle *)self->_visualStyle maximumAtomWidthFraction];
  v6 = v5 * a3;
  [(_UISearchAtomViewVisualStyle *)self->_visualStyle maximumFallbackWidth];
  if (v6 < v7)
  {
    v6 = v7;
  }

  v8 = [(_UISearchAtomView *)self maximumAtomWidthConstraint];
  [v8 setConstant:v6];
}

- (double)viewportWidth
{
  v2 = [(_UISearchAtomView *)self maximumAtomWidthConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

@end
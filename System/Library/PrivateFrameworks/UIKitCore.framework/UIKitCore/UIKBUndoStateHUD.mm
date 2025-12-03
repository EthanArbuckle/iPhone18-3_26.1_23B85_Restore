@interface UIKBUndoStateHUD
- (UIKBUndoStateHUD)initWithKeyboardAppearance:(int64_t)appearance;
- (void)layoutSubviews;
- (void)updateUndoStateHUDControlType:(int64_t)type available:(BOOL)available;
@end

@implementation UIKBUndoStateHUD

- (UIKBUndoStateHUD)initWithKeyboardAppearance:(int64_t)appearance
{
  v136[1] = *MEMORY[0x1E69E9840];
  v133.receiver = self;
  v133.super_class = UIKBUndoStateHUD;
  v4 = [(UIView *)&v133 init];
  v5 = v4;
  if (v4)
  {
    if ((appearance - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      traitCollection = [(UIView *)v4 traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        appearance = 1;
      }

      else
      {
        appearance = 2;
      }
    }

    v7 = [[UIKBUndoStyling alloc] initWithKeyboardAppearance:appearance isRTL:0];
    style = v5->_style;
    v5->_style = v7;

    v135 = *off_1E70EC918;
    undoStateControlLabelFont = [(UIKBUndoStyling *)v5->_style undoStateControlLabelFont];
    v136[0] = undoStateControlLabelFont;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:&v135 count:1];

    v11 = _UILocalizedStringInSystemLanguage(@"UNDO_BUTTON_TITLE_LABEL_IN_HUD", @"Undo");
    [v11 sizeWithAttributes:v10];
    v13 = v12 + 24.0;

    v14 = _UILocalizedStringInSystemLanguage(@"REDO_BUTTON_TITLE_LABEL_IN_HUD", @"Redo");
    [v14 sizeWithAttributes:v10];
    v16 = v15 + 24.0;

    v17 = _UILocalizedStringInSystemLanguage(@"Cut", @"Cut");
    [v17 sizeWithAttributes:v10];
    v19 = v18 + 24.0;

    v20 = _UILocalizedStringInSystemLanguage(@"Copy", @"Copy");
    [v20 sizeWithAttributes:v10];
    v22 = v21 + 24.0;

    v23 = _UILocalizedStringInSystemLanguage(@"Paste", @"Paste");
    [v23 sizeWithAttributes:v10];
    v25 = v24 + 24.0;

    if (v13 >= v16)
    {
      v26 = v13;
    }

    else
    {
      v26 = v16;
    }

    if (v26 < v19)
    {
      v26 = v19;
    }

    if (v26 < v22)
    {
      v26 = v22;
    }

    if (v26 < v25)
    {
      v26 = v25;
    }

    if (v26 >= 100.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 100.0;
    }

    v28 = objc_alloc_init(UILayoutGuide);
    [(UIView *)v5 addLayoutGuide:v28];
    widthAnchor = [(UILayoutGuide *)v28 widthAnchor];
    v30 = [widthAnchor constraintGreaterThanOrEqualToConstant:v27];
    [v30 setActive:1];

    heightAnchor = [(UILayoutGuide *)v28 heightAnchor];
    v32 = [heightAnchor constraintEqualToConstant:28.0];
    [v32 setActive:1];

    widthAnchor2 = [(UIView *)v5 widthAnchor];
    widthAnchor3 = [(UILayoutGuide *)v28 widthAnchor];
    v35 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 constant:0.0];
    undoStateHUDWidthConstraint = v5->_undoStateHUDWidthConstraint;
    v5->_undoStateHUDWidthConstraint = v35;

    [(NSLayoutConstraint *)v5->_undoStateHUDWidthConstraint setActive:1];
    widthAnchor4 = [(UIView *)v5 widthAnchor];
    v38 = [widthAnchor4 constraintLessThanOrEqualToConstant:280.0];
    [v38 setActive:1];

    heightAnchor2 = [(UIView *)v5 heightAnchor];
    heightAnchor3 = [(UILayoutGuide *)v28 heightAnchor];
    v41 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 constant:0.0];
    undoStateHUDHeightConstraint = v5->_undoStateHUDHeightConstraint;
    v5->_undoStateHUDHeightConstraint = v41;

    [(NSLayoutConstraint *)v5->_undoStateHUDHeightConstraint setActive:1];
    v43 = objc_alloc_init(UIVisualEffectView);
    shadowView = v5->_shadowView;
    v5->_shadowView = v43;

    v45 = +[UIVibrancyEffect _vibrantShadowEffect];
    v134 = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v134 count:1];
    [(UIVisualEffectView *)v5->_shadowView setContentEffects:v46];

    [(UIView *)v5->_shadowView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 setClipsToBounds:0];
    [(UIView *)v5 addSubview:v5->_shadowView];
    v47 = +[UIColor separatorColor];
    [(UIView *)v5->_shadowView setBackgroundColor:v47];

    layer = [(UIView *)v5->_shadowView layer];
    [layer setMasksToBounds:0];

    layer2 = [(UIView *)v5->_shadowView layer];
    [layer2 setCornerRadius:14.0];

    hUDShadowColor = [(UIKBUndoStyling *)v5->_style HUDShadowColor];
    cGColor = [hUDShadowColor CGColor];
    layer3 = [(UIView *)v5->_shadowView layer];
    [layer3 setShadowColor:cGColor];

    layer4 = [(UIView *)v5->_shadowView layer];
    [layer4 setShadowOffset:{0.0, 0.0}];

    layer5 = [(UIView *)v5->_shadowView layer];
    LODWORD(v55) = 0.5;
    [layer5 setShadowOpacity:v55];

    layer6 = [(UIView *)v5->_shadowView layer];
    [layer6 setShadowRadius:15.0];

    centerXAnchor = [(UIView *)v5->_shadowView centerXAnchor];
    centerXAnchor2 = [(UIView *)v5 centerXAnchor];
    v59 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v59 setActive:1];

    centerYAnchor = [(UIView *)v5->_shadowView centerYAnchor];
    centerYAnchor2 = [(UIView *)v5 centerYAnchor];
    v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v62 setActive:1];

    widthAnchor5 = [(UIView *)v5->_shadowView widthAnchor];
    widthAnchor6 = [(UIView *)v5 widthAnchor];
    v65 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    [v65 setActive:1];

    heightAnchor4 = [(UIView *)v5->_shadowView heightAnchor];
    heightAnchor5 = [(UIView *)v5 heightAnchor];
    v68 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    [v68 setActive:1];

    v69 = objc_alloc_init(UIKBUndoHUDContainerView);
    containerView = v5->_containerView;
    v5->_containerView = &v69->super;

    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 addSubview:v5->_containerView];
    hUDbackgroundColor = [(UIKBUndoStyling *)v5->_style HUDbackgroundColor];
    [(UIView *)v5->_containerView setBackgroundColor:hUDbackgroundColor];

    layer7 = [(UIView *)v5->_containerView layer];
    [layer7 setCornerRadius:14.0];

    layer8 = [(UIView *)v5->_containerView layer];
    [layer8 setAllowsHitTesting:0];

    [(UIView *)v5->_containerView setClipsToBounds:1];
    leadingAnchor = [(UIView *)v5->_containerView leadingAnchor];
    leadingAnchor2 = [(UIView *)v5 leadingAnchor];
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v76 setActive:1];

    trailingAnchor = [(UIView *)v5 trailingAnchor];
    trailingAnchor2 = [(UIView *)v5->_containerView trailingAnchor];
    v79 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v79 setActive:1];

    centerYAnchor3 = [(UIView *)v5->_containerView centerYAnchor];
    centerYAnchor4 = [(UIView *)v5 centerYAnchor];
    v82 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v82 setActive:1];

    heightAnchor6 = [(UIView *)v5->_containerView heightAnchor];
    heightAnchor7 = [(UIView *)v5 heightAnchor];
    v85 = [heightAnchor6 constraintEqualToAnchor:heightAnchor7];
    [v85 setActive:1];

    v86 = [UIVisualEffectView alloc];
    style = [(UIKBUndoStateHUD *)v5 style];
    backgroundVibrancyEffect = [style backgroundVibrancyEffect];
    v89 = [(UIVisualEffectView *)v86 initWithEffect:backgroundVibrancyEffect];

    [(UIView *)v89 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_containerView addSubview:v89];
    centerXAnchor3 = [(UIView *)v89 centerXAnchor];
    centerXAnchor4 = [(UIView *)v5 centerXAnchor];
    v92 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v92 setActive:1];

    centerYAnchor5 = [(UIView *)v89 centerYAnchor];
    centerYAnchor6 = [(UIView *)v5 centerYAnchor];
    v95 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v95 setActive:1];

    heightAnchor8 = [(UIView *)v89 heightAnchor];
    heightAnchor9 = [(UIView *)v5 heightAnchor];
    v98 = [heightAnchor8 constraintEqualToAnchor:heightAnchor9 multiplier:1.0];
    [v98 setActive:1];

    widthAnchor7 = [(UIView *)v89 widthAnchor];
    widthAnchor8 = [(UIView *)v5->_containerView widthAnchor];
    v101 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:1.0];
    [v101 setActive:1];

    v102 = objc_alloc_init(UILabel);
    labelView = v5->_labelView;
    v5->_labelView = v102;

    [(UIView *)v5->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_containerView addSubview:v5->_labelView];
    buttonGlyphColorEnabled = [(UIKBUndoStyling *)v5->_style buttonGlyphColorEnabled];
    [(UILabel *)v5->_labelView setTextColor:buttonGlyphColorEnabled];

    [(UILabel *)v5->_labelView setText:&stru_1EFB14550];
    [(UILabel *)v5->_labelView setTextAlignment:1];
    undoStateControlLabelFont2 = [(UIKBUndoStyling *)v5->_style undoStateControlLabelFont];
    [(UILabel *)v5->_labelView setFont:undoStateControlLabelFont2];

    [(UIView *)v5->_labelView setContentMode:4];
    centerYAnchor7 = [(UIView *)v5->_labelView centerYAnchor];
    centerYAnchor8 = [(UIView *)v5->_containerView centerYAnchor];
    v108 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v108 setActive:1];

    heightAnchor10 = [(UIView *)v5->_labelView heightAnchor];
    heightAnchor11 = [(UIView *)v5->_containerView heightAnchor];
    v111 = [heightAnchor10 constraintEqualToAnchor:heightAnchor11];
    [v111 setActive:1];

    v112 = objc_alloc_init(UILayoutGuide);
    [(UIView *)v5 addLayoutGuide:v112];
    v113 = objc_alloc_init(UILayoutGuide);
    [(UIView *)v5 addLayoutGuide:v113];
    widthAnchor9 = [(UILayoutGuide *)v112 widthAnchor];
    v115 = [widthAnchor9 constraintGreaterThanOrEqualToConstant:12.0];
    [v115 setActive:1];

    widthAnchor10 = [(UILayoutGuide *)v113 widthAnchor];
    widthAnchor11 = [(UILayoutGuide *)v112 widthAnchor];
    v118 = [widthAnchor10 constraintEqualToAnchor:widthAnchor11];
    [v118 setActive:1];

    leadingAnchor3 = [(UILayoutGuide *)v112 leadingAnchor];
    leadingAnchor4 = [(UIView *)v5->_containerView leadingAnchor];
    v121 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    [v121 setActive:1];

    leadingAnchor5 = [(UIView *)v5->_labelView leadingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)v112 trailingAnchor];
    v124 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
    [v124 setActive:1];

    leadingAnchor6 = [(UILayoutGuide *)v113 leadingAnchor];
    trailingAnchor4 = [(UIView *)v5->_labelView trailingAnchor];
    v127 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4];
    [v127 setActive:1];

    trailingAnchor5 = [(UIView *)v5->_containerView trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v113 trailingAnchor];
    v130 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    [v130 setActive:1];

    [v5 setAccessibilityIdentifier:@"UIUndoStateHUD"];
    v131 = v5;
  }

  return v5;
}

- (void)updateUndoStateHUDControlType:(int64_t)type available:(BOOL)available
{
  availableCopy = available;
  [(UIKBUndoStateHUD *)self setControlType:?];
  v7 = [UIKBUndoControl controlLableTextByType:type style:self->_style available:availableCopy];
  labelView = [(UIKBUndoStateHUD *)self labelView];
  [labelView setText:v7];

  style = self->_style;
  if (availableCopy)
  {
    [(UIKBUndoStyling *)style buttonGlyphColorEnabled];
  }

  else
  {
    [(UIKBUndoStyling *)style buttonGlyphColorDisabled];
  }
  v10 = ;
  labelView2 = [(UIKBUndoStateHUD *)self labelView];
  [labelView2 setTextColor:v10];

  if (availableCopy)
  {
    [(UIKBUndoStyling *)self->_style undoStateControlLabelFont];
  }

  else
  {
    [(UIKBUndoStyling *)self->_style undoStateControlUnavailableLabelFont];
  }
  v12 = ;
  labelView3 = [(UIKBUndoStateHUD *)self labelView];
  [labelView3 setFont:v12];

  [(UIView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = UIKBUndoStateHUD;
  [(UIView *)&v8 layoutSubviews];
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  style = [(UIKBUndoStateHUD *)self style];
  [style setAppearance:v4];

  traitOverrides = [(UIView *)self traitOverrides];
  v7 = objc_opt_self();
  [traitOverrides setNSIntegerValue:v4 forTrait:v7];
}

@end
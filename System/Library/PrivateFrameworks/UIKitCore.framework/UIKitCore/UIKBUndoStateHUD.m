@interface UIKBUndoStateHUD
- (UIKBUndoStateHUD)initWithKeyboardAppearance:(int64_t)a3;
- (void)layoutSubviews;
- (void)updateUndoStateHUDControlType:(int64_t)a3 available:(BOOL)a4;
@end

@implementation UIKBUndoStateHUD

- (UIKBUndoStateHUD)initWithKeyboardAppearance:(int64_t)a3
{
  v136[1] = *MEMORY[0x1E69E9840];
  v133.receiver = self;
  v133.super_class = UIKBUndoStateHUD;
  v4 = [(UIView *)&v133 init];
  v5 = v4;
  if (v4)
  {
    if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = [(UIView *)v4 traitCollection];
      if ([v6 userInterfaceStyle] == 2)
      {
        a3 = 1;
      }

      else
      {
        a3 = 2;
      }
    }

    v7 = [[UIKBUndoStyling alloc] initWithKeyboardAppearance:a3 isRTL:0];
    style = v5->_style;
    v5->_style = v7;

    v135 = *off_1E70EC918;
    v9 = [(UIKBUndoStyling *)v5->_style undoStateControlLabelFont];
    v136[0] = v9;
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
    v29 = [(UILayoutGuide *)v28 widthAnchor];
    v30 = [v29 constraintGreaterThanOrEqualToConstant:v27];
    [v30 setActive:1];

    v31 = [(UILayoutGuide *)v28 heightAnchor];
    v32 = [v31 constraintEqualToConstant:28.0];
    [v32 setActive:1];

    v33 = [(UIView *)v5 widthAnchor];
    v34 = [(UILayoutGuide *)v28 widthAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:0.0];
    undoStateHUDWidthConstraint = v5->_undoStateHUDWidthConstraint;
    v5->_undoStateHUDWidthConstraint = v35;

    [(NSLayoutConstraint *)v5->_undoStateHUDWidthConstraint setActive:1];
    v37 = [(UIView *)v5 widthAnchor];
    v38 = [v37 constraintLessThanOrEqualToConstant:280.0];
    [v38 setActive:1];

    v39 = [(UIView *)v5 heightAnchor];
    v40 = [(UILayoutGuide *)v28 heightAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:0.0];
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

    v48 = [(UIView *)v5->_shadowView layer];
    [v48 setMasksToBounds:0];

    v49 = [(UIView *)v5->_shadowView layer];
    [v49 setCornerRadius:14.0];

    v50 = [(UIKBUndoStyling *)v5->_style HUDShadowColor];
    v51 = [v50 CGColor];
    v52 = [(UIView *)v5->_shadowView layer];
    [v52 setShadowColor:v51];

    v53 = [(UIView *)v5->_shadowView layer];
    [v53 setShadowOffset:{0.0, 0.0}];

    v54 = [(UIView *)v5->_shadowView layer];
    LODWORD(v55) = 0.5;
    [v54 setShadowOpacity:v55];

    v56 = [(UIView *)v5->_shadowView layer];
    [v56 setShadowRadius:15.0];

    v57 = [(UIView *)v5->_shadowView centerXAnchor];
    v58 = [(UIView *)v5 centerXAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    [v59 setActive:1];

    v60 = [(UIView *)v5->_shadowView centerYAnchor];
    v61 = [(UIView *)v5 centerYAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    [v62 setActive:1];

    v63 = [(UIView *)v5->_shadowView widthAnchor];
    v64 = [(UIView *)v5 widthAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    [v65 setActive:1];

    v66 = [(UIView *)v5->_shadowView heightAnchor];
    v67 = [(UIView *)v5 heightAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];
    [v68 setActive:1];

    v69 = objc_alloc_init(UIKBUndoHUDContainerView);
    containerView = v5->_containerView;
    v5->_containerView = &v69->super;

    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5 addSubview:v5->_containerView];
    v71 = [(UIKBUndoStyling *)v5->_style HUDbackgroundColor];
    [(UIView *)v5->_containerView setBackgroundColor:v71];

    v72 = [(UIView *)v5->_containerView layer];
    [v72 setCornerRadius:14.0];

    v73 = [(UIView *)v5->_containerView layer];
    [v73 setAllowsHitTesting:0];

    [(UIView *)v5->_containerView setClipsToBounds:1];
    v74 = [(UIView *)v5->_containerView leadingAnchor];
    v75 = [(UIView *)v5 leadingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    [v76 setActive:1];

    v77 = [(UIView *)v5 trailingAnchor];
    v78 = [(UIView *)v5->_containerView trailingAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];
    [v79 setActive:1];

    v80 = [(UIView *)v5->_containerView centerYAnchor];
    v81 = [(UIView *)v5 centerYAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    [v82 setActive:1];

    v83 = [(UIView *)v5->_containerView heightAnchor];
    v84 = [(UIView *)v5 heightAnchor];
    v85 = [v83 constraintEqualToAnchor:v84];
    [v85 setActive:1];

    v86 = [UIVisualEffectView alloc];
    v87 = [(UIKBUndoStateHUD *)v5 style];
    v88 = [v87 backgroundVibrancyEffect];
    v89 = [(UIVisualEffectView *)v86 initWithEffect:v88];

    [(UIView *)v89 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_containerView addSubview:v89];
    v90 = [(UIView *)v89 centerXAnchor];
    v91 = [(UIView *)v5 centerXAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    [v92 setActive:1];

    v93 = [(UIView *)v89 centerYAnchor];
    v94 = [(UIView *)v5 centerYAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    [v95 setActive:1];

    v96 = [(UIView *)v89 heightAnchor];
    v97 = [(UIView *)v5 heightAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 multiplier:1.0];
    [v98 setActive:1];

    v99 = [(UIView *)v89 widthAnchor];
    v100 = [(UIView *)v5->_containerView widthAnchor];
    v101 = [v99 constraintEqualToAnchor:v100 multiplier:1.0];
    [v101 setActive:1];

    v102 = objc_alloc_init(UILabel);
    labelView = v5->_labelView;
    v5->_labelView = v102;

    [(UIView *)v5->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v5->_containerView addSubview:v5->_labelView];
    v104 = [(UIKBUndoStyling *)v5->_style buttonGlyphColorEnabled];
    [(UILabel *)v5->_labelView setTextColor:v104];

    [(UILabel *)v5->_labelView setText:&stru_1EFB14550];
    [(UILabel *)v5->_labelView setTextAlignment:1];
    v105 = [(UIKBUndoStyling *)v5->_style undoStateControlLabelFont];
    [(UILabel *)v5->_labelView setFont:v105];

    [(UIView *)v5->_labelView setContentMode:4];
    v106 = [(UIView *)v5->_labelView centerYAnchor];
    v107 = [(UIView *)v5->_containerView centerYAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];
    [v108 setActive:1];

    v109 = [(UIView *)v5->_labelView heightAnchor];
    v110 = [(UIView *)v5->_containerView heightAnchor];
    v111 = [v109 constraintEqualToAnchor:v110];
    [v111 setActive:1];

    v112 = objc_alloc_init(UILayoutGuide);
    [(UIView *)v5 addLayoutGuide:v112];
    v113 = objc_alloc_init(UILayoutGuide);
    [(UIView *)v5 addLayoutGuide:v113];
    v114 = [(UILayoutGuide *)v112 widthAnchor];
    v115 = [v114 constraintGreaterThanOrEqualToConstant:12.0];
    [v115 setActive:1];

    v116 = [(UILayoutGuide *)v113 widthAnchor];
    v117 = [(UILayoutGuide *)v112 widthAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];
    [v118 setActive:1];

    v119 = [(UILayoutGuide *)v112 leadingAnchor];
    v120 = [(UIView *)v5->_containerView leadingAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];
    [v121 setActive:1];

    v122 = [(UIView *)v5->_labelView leadingAnchor];
    v123 = [(UILayoutGuide *)v112 trailingAnchor];
    v124 = [v122 constraintEqualToAnchor:v123];
    [v124 setActive:1];

    v125 = [(UILayoutGuide *)v113 leadingAnchor];
    v126 = [(UIView *)v5->_labelView trailingAnchor];
    v127 = [v125 constraintEqualToAnchor:v126];
    [v127 setActive:1];

    v128 = [(UIView *)v5->_containerView trailingAnchor];
    v129 = [(UILayoutGuide *)v113 trailingAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];
    [v130 setActive:1];

    [v5 setAccessibilityIdentifier:@"UIUndoStateHUD"];
    v131 = v5;
  }

  return v5;
}

- (void)updateUndoStateHUDControlType:(int64_t)a3 available:(BOOL)a4
{
  v4 = a4;
  [(UIKBUndoStateHUD *)self setControlType:?];
  v7 = [UIKBUndoControl controlLableTextByType:a3 style:self->_style available:v4];
  v8 = [(UIKBUndoStateHUD *)self labelView];
  [v8 setText:v7];

  style = self->_style;
  if (v4)
  {
    [(UIKBUndoStyling *)style buttonGlyphColorEnabled];
  }

  else
  {
    [(UIKBUndoStyling *)style buttonGlyphColorDisabled];
  }
  v10 = ;
  v11 = [(UIKBUndoStateHUD *)self labelView];
  [v11 setTextColor:v10];

  if (v4)
  {
    [(UIKBUndoStyling *)self->_style undoStateControlLabelFont];
  }

  else
  {
    [(UIKBUndoStyling *)self->_style undoStateControlUnavailableLabelFont];
  }
  v12 = ;
  v13 = [(UIKBUndoStateHUD *)self labelView];
  [v13 setFont:v12];

  [(UIView *)self layoutIfNeeded];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = UIKBUndoStateHUD;
  [(UIView *)&v8 layoutSubviews];
  v3 = [(UIView *)self traitCollection];
  if ([v3 userInterfaceStyle] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [(UIKBUndoStateHUD *)self style];
  [v5 setAppearance:v4];

  v6 = [(UIView *)self traitOverrides];
  v7 = objc_opt_self();
  [v6 setNSIntegerValue:v4 forTrait:v7];
}

@end
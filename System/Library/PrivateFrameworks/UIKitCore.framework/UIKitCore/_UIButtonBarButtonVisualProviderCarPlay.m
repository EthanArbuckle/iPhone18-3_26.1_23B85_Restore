@interface _UIButtonBarButtonVisualProviderCarPlay
- (_UIButtonBarAppearanceDelegate)appearanceDelegate;
- (double)_effectiveEdgeSpacing;
- (id)_titleAlternativeForTitle:(id)a3;
- (id)contentView;
- (void)_setupAlternateTitlesFromBarButtonItem:(id)a3;
- (void)_updateLabelColorsForStateEnabled:(BOOL)a3 focused:(BOOL)a4 pressed:(BOOL)a5;
- (void)buttonLayoutSubviews:(id)a3 baseImplementation:(id)a4;
- (void)configureButton:(id)a3 fromBarButtonItem:(id)a4;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4;
- (void)updateButton:(id)a3 forFocusedState:(BOOL)a4;
- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4;
@end

@implementation _UIButtonBarButtonVisualProviderCarPlay

- (id)contentView
{
  v3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  v4 = [v3 superview];

  if (v4)
  {
    [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  }

  else
  {
    [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  }
  v5 = ;

  return v5;
}

- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5
{
  v9 = a3;
  v8 = a5;
  [(_UIButtonBarButtonVisualProviderCarPlay *)self setAppearanceDelegate:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UIButtonBarButtonVisualProviderCarPlay *)self configureButton:v9 fromBarButtonItem:v8];
  }
}

- (void)configureButton:(id)a3 fromBarButtonItem:(id)a4
{
  v175[5] = *MEMORY[0x1E69E9840];
  v160 = a3;
  v159 = a4;
  v6 = MEMORY[0x1E69977A0];
  v7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
  [v6 deactivateConstraints:v7];

  v8 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
  [v8 removeFromSuperview];

  v9 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  [v9 removeFromSuperview];

  v10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  [v10 removeFromSuperview];

  v11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
  [v11 removeFromSuperview];

  [(_UIButtonBarButtonVisualProviderCarPlay *)self setBackViewToContentConstraint:0];
  if (_UISMCBarsEnabled())
  {
    [v160 setClipsToBounds:1];
  }

  v12 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];

  if (!v12)
  {
    v13 = [UIView alloc];
    v14 = [(UIView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UIButtonBarButtonVisualProviderCarPlay *)self setFocusedView:v14];

    v15 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    v16 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v17 = [v16 layer];
    [v17 setCornerRadius:4.5];

    v18 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v19 = [v18 layer];
    [v19 setCornerCurve:*MEMORY[0x1E69796E8]];

    v20 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [v20 setUserInteractionEnabled:0];
  }

  v21 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
  [v160 addSubview:v21];

  v158 = [v159 _imageForState:0 compact:0 type:0];
  if (v158)
  {
    v22 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];

    if (!v22)
    {
      v23 = [UIImageView alloc];
      v24 = [(UIImageView *)v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setImageView:v24];

      v25 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

      v26 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
      [v26 setUserInteractionEnabled:0];

      v27 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
      [v27 setContentMode:4];
    }

    v28 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
    [v28 setImage:v158];

    v29 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  }

  else
  {
    v30 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];

    if (!v30)
    {
      v31 = [UILabel alloc];
      v32 = [(UILabel *)v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleView:v32];

      v33 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

      if (_UISMCBarsEnabled())
      {
        v34 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" weight:*off_1E70ECD20];
        v35 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        [v35 setFont:v34];

        v36 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        [v36 setPreferredVibrancy:1];
      }

      else
      {
        v36 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout"];
        v37 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        [v37 setFont:v36];
      }

      v38 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [v38 setAdjustsFontForContentSizeCategory:1];

      v39 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [v39 setUserInteractionEnabled:0];
    }

    v40 = [v159 resolvedTitle];
    v41 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [v41 setText:v40];

    v29 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  }

  v42 = v29;
  [v160 addSubview:v29];

  if (([v160 isBackButton] & 1) != 0 || objc_msgSend(v159, "_showsChevron"))
  {
    v43 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];

    if (!v43)
    {
      if (_UISMCBarsEnabled())
      {
        v44 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" weight:*off_1E70ECD30];
        v45 = @"chevron.backward";
      }

      else
      {
        v44 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" variant:1024];
        v45 = @"chevron.backward.circle.fill";
      }

      v49 = [UIImageSymbolConfiguration configurationWithFont:v44 scale:2];
      v50 = [UIImageView alloc];
      v51 = [UIImage systemImageNamed:v45 withConfiguration:v49];
      v52 = [(UIImageView *)v50 initWithImage:v51];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setBackView:v52];

      v53 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      [v53 setTranslatesAutoresizingMaskIntoConstraints:0];

      v54 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      [v54 setUserInteractionEnabled:0];

      v55 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      LODWORD(v56) = 1148846080;
      [v55 setContentCompressionResistancePriority:0 forAxis:v56];
    }

    v57 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
    [v160 addSubview:v57];

    if (_UISMCBarsEnabled())
    {
      [v160 _setWantsGlassAppearance:1];
    }

    [(_UIButtonBarButtonVisualProviderCarPlay *)self _setupAlternateTitlesFromBarButtonItem:v159];
    if (_UISMCBarsEnabled())
    {
      v58 = 36.0;
    }

    else
    {
      v58 = 44.0;
    }

    v59 = [v160 widthAnchor];
    v157 = [v59 constraintGreaterThanOrEqualToConstant:v58];

    LODWORD(v60) = 1148846080;
    [v157 setPriority:v60];
    if (_UISMCBarsEnabled())
    {
      v61 = 4.0;
    }

    else
    {
      v61 = 5.0;
    }

    v62 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
    v63 = [v62 leadingAnchor];
    v64 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
    v65 = [v64 trailingAnchor];
    v147 = [v63 constraintEqualToAnchor:v65 constant:3.0];

    v175[0] = v157;
    v154 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v150 = [v154 topAnchor];
    v148 = [v160 topAnchor];
    v145 = [v150 constraintEqualToAnchor:v148 constant:v61];
    v175[1] = v145;
    v143 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v141 = [v143 leadingAnchor];
    v139 = [v160 leadingAnchor];
    v66 = [v141 constraintEqualToAnchor:v139 constant:v61];
    v175[2] = v66;
    v67 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v68 = [v67 trailingAnchor];
    v69 = [v160 trailingAnchor];
    v70 = -v61;
    v71 = [v68 constraintEqualToAnchor:v69 constant:v70];
    v175[3] = v71;
    v72 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v73 = [v72 bottomAnchor];
    v74 = [v160 bottomAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:v70];
    v175[4] = v75;
    v153 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:5];

    if (_UISMCBarsEnabled())
    {
      v155 = [v160 widthMinimizingConstraint];
      v174[0] = v155;
      v151 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      v76 = [v151 centerYAnchor];
      v77 = [v160 centerYAnchor];
      v78 = [v76 constraintEqualToAnchor:v77];
      v174[1] = v78;
      v79 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      v80 = [v79 centerYAnchor];
      v81 = [v160 centerYAnchor];
      v82 = [v80 constraintEqualToAnchor:v81];
      v174[2] = v82;
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:3];
      v84 = [v153 arrayByAddingObjectsFromArray:v83];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v84];

      v85 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      v86 = [v85 text];
      if (v86)
      {
        v87 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        v88 = [v87 text];
        v89 = [v88 length] == 0;

        if (!v89)
        {
          v156 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
          v173[0] = v147;
          v152 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
          v149 = [v152 leadingAnchor];
          v90 = [v160 leadingAnchor];
          v91 = [v149 constraintEqualToAnchor:v90 constant:12.0];
          v173[1] = v91;
          v92 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
          v93 = [v92 trailingAnchor];
          v94 = [v160 trailingAnchor];
          v95 = [v93 constraintEqualToAnchor:v94 constant:-12.0];
          v173[2] = v95;
          v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:3];
          v97 = [v156 arrayByAddingObjectsFromArray:v96];
          [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v97];

          goto LABEL_48;
        }
      }

      else
      {
      }

      v105 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      v106 = [v105 centerXAnchor];
      v107 = [v160 centerXAnchor];
      v156 = [v106 constraintEqualToAnchor:v107];

      LODWORD(v108) = 1148846080;
      [v156 setPriority:v108];
      v152 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
      v149 = [v152 arrayByAddingObject:v156];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v149];
    }

    else
    {
      v156 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      v152 = [v156 firstBaselineAnchor];
      v149 = [v160 topAnchor];
      v98 = [v152 constraintEqualToAnchor:v149 constant:28.0];
      v172[0] = v98;
      v99 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      v100 = [v99 firstBaselineAnchor];
      v101 = [v160 topAnchor];
      v102 = [v100 constraintEqualToAnchor:v101 constant:28.0];
      v172[1] = v102;
      v172[2] = v147;
      v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:3];
      v104 = [v153 arrayByAddingObjectsFromArray:v103];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v104];
    }
  }

  else
  {
    if (v158 && ![v158 hasBaseline] || _UISMCBarsEnabled())
    {
      v46 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      v47 = [v46 centerYAnchor];
      v48 = [v160 centerYAnchor];
      v157 = [v47 constraintEqualToAnchor:v48];
    }

    else
    {
      v46 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      v47 = [v46 firstBaselineAnchor];
      v48 = [v160 topAnchor];
      v157 = [v47 constraintEqualToAnchor:v48 constant:28.0];
    }

    if (_UISMCBarsEnabled())
    {
      v109 = 0.0;
    }

    else
    {
      v109 = 5.0;
    }

    v110 = 12.0;
    if (_UISMCBarsEnabled())
    {
      [(_UIButtonBarButtonVisualProviderCarPlay *)self _effectiveEdgeSpacing];
      v110 = v111;
    }

    v147 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
    v153 = [v147 leadingAnchor];
    v156 = [v160 leadingAnchor];
    v152 = [v153 constraintEqualToAnchor:v156 constant:v110];
    v171[0] = v152;
    v149 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
    v146 = [v149 trailingAnchor];
    v144 = [v160 trailingAnchor];
    v142 = [v146 constraintEqualToAnchor:v144 constant:-v110];
    v171[1] = v142;
    v171[2] = v157;
    v140 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v138 = [v140 topAnchor];
    v137 = [v160 topAnchor];
    v136 = [v138 constraintEqualToAnchor:v137 constant:v109];
    v171[3] = v136;
    v135 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v134 = [v135 leadingAnchor];
    v133 = [v160 leadingAnchor];
    v132 = [v134 constraintEqualToAnchor:v133 constant:v109];
    v171[4] = v132;
    v112 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v113 = [v112 trailingAnchor];
    v114 = [v160 trailingAnchor];
    v115 = -v109;
    v116 = [v113 constraintEqualToAnchor:v114 constant:v115];
    v171[5] = v116;
    v117 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    v118 = [v117 bottomAnchor];
    v119 = [v160 bottomAnchor];
    v120 = [v118 constraintEqualToAnchor:v119 constant:v115];
    v171[6] = v120;
    v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:7];
    [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v121];
  }

LABEL_48:

  -[_UIButtonBarButtonVisualProviderCarPlay _updateLabelColorsForStateEnabled:focused:pressed:](self, "_updateLabelColorsForStateEnabled:focused:pressed:", [v159 isEnabled], objc_msgSend(v160, "isFocused"), 0);
  objc_initWeak(&location, self);
  v122 = objc_opt_self();
  v170 = v122;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __77___UIButtonBarButtonVisualProviderCarPlay_configureButton_fromBarButtonItem___block_invoke;
  v165[3] = &unk_1E7109048;
  objc_copyWeak(&v167, &location);
  v124 = v160;
  v166 = v124;
  v125 = [v124 registerForTraitChanges:v123 withHandler:v165];

  v126 = MEMORY[0x1E69977A0];
  v127 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
  [v126 activateConstraints:v127];

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v128 = [v159 _gestureRecognizers];
  v129 = [v128 countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (v129)
  {
    v130 = *v162;
    do
    {
      for (i = 0; i != v129; ++i)
      {
        if (*v162 != v130)
        {
          objc_enumerationMutation(v128);
        }

        [v124 addGestureRecognizer:*(*(&v161 + 1) + 8 * i)];
      }

      v129 = [v128 countByEnumeratingWithState:&v161 objects:v169 count:16];
    }

    while (v129);
  }

  objc_destroyWeak(&v167);
  objc_destroyWeak(&location);
}

- (void)buttonLayoutSubviews:(id)a3 baseImplementation:(id)a4
{
  v34 = a3;
  v6 = a4;
  v7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [v9 _nsis_bounds];
    v11 = v10;

    WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
    [WeakRetained backButtonMaximumWidth];
    v14 = v13;

    if (v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v11;
    }

    if (v14 > 0.0)
    {
      v11 = v15;
    }

    v16 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
    v17 = [v16 count];

    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = 0;
    v19 = &stru_1EFB14550;
    do
    {
      v20 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
      v21 = [v20 objectAtIndexedSubscript:v18];

      v22 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [v21 updateWithLabel:v22];

      [v21 width];
      if (v23 <= v11)
      {
        break;
      }

      ++v18;
      v24 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
      v25 = [v24 count];
    }

    while (v18 < v25);
    if (v21)
    {
      v19 = [v21 title];
    }

    else
    {
LABEL_14:
      v19 = &stru_1EFB14550;
    }

    v26 = [(__CFString *)v19 length];
    v27 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backViewToContentConstraint];
    v28 = v27;
    v29 = 3.0;
    if (!v26)
    {
      v29 = 0.0;
    }

    [v27 setConstant:v29];

    v30 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [v30 setText:v19];
  }

  v6[2](v6);
  if (_UISMCBarsEnabled())
  {
    if (([v34 isBackButton] & 1) == 0)
    {
      [v34 frame];
      [v34 _setContinuousCornerRadius:CGRectGetHeight(v36) * 0.5];
    }

    v31 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [v31 frame];
    v32 = CGRectGetHeight(v37) * 0.5;
    v33 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [v33 _setContinuousCornerRadius:v32];
  }
}

- (void)updateButton:(id)a3 forFocusedState:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  if (_UISMCBarsEnabled())
  {
    if (v4)
    {
      v6 = [v15 traitCollection];
      v7 = [v6 userInterfaceStyle];
      v8 = 1;
      if (v7 != 2)
      {
        v8 = v7;
      }

      if (v7 == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [v10 setOverrideUserInterfaceStyle:v9];

    v11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
    [v11 setOverrideUserInterfaceStyle:v9];

    v12 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
    [v12 setOverrideUserInterfaceStyle:v9];
  }

  -[_UIButtonBarButtonVisualProviderCarPlay _updateLabelColorsForStateEnabled:focused:pressed:](self, "_updateLabelColorsForStateEnabled:focused:pressed:", [v15 isEnabled], v4, 0);
  if (v4)
  {
    v13 = +[UIColor _carSystemFocusColor];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
  [v14 setBackgroundColor:v13];

  if (v4)
  {
  }
}

- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (_UISMCBarsEnabled())
  {
    -[_UIButtonBarButtonVisualProviderCarPlay _updateLabelColorsForStateEnabled:focused:pressed:](self, "_updateLabelColorsForStateEnabled:focused:pressed:", [v7 isEnabled], objc_msgSend(v7, "isFocused"), v4);
  }

  else
  {
    if (v4)
    {
      v6 = 0.2;
    }

    else
    {
      v6 = 1.0;
    }

    [v7 setAlpha:v6];
  }
}

- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 isFocused];

  [(_UIButtonBarButtonVisualProviderCarPlay *)self _updateLabelColorsForStateEnabled:v4 focused:v6 pressed:0];
}

- (void)_updateLabelColorsForStateEnabled:(BOOL)a3 focused:(BOOL)a4 pressed:(BOOL)a5
{
  v7 = a3;
  if (_UISMCBarsEnabled())
  {
    if (!v7 || a5)
    {
      v9 = +[UIColor tertiaryLabelColor];
    }

    else
    {
      v9 = +[UIColor labelColor];
    }
  }

  else
  {
    if (a4)
    {
      +[UIColor _carSystemFocusLabelColor];
    }

    else
    {
      +[UIColor _carSystemFocusColor];
    }
    v9 = ;
  }

  v13 = v9;
  v10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  [v10 setTextColor:v13];

  v11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  [v11 setTintColor:v13];

  v12 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
  [v12 setTintColor:v13];
}

- (double)_effectiveEdgeSpacing
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->super._barButtonItem);
    [WeakRetained defaultEdgeSpacing];
    v6 = v5;
    if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [WeakRetained additionalEdgeSpacingForButtonBarButton:self->super._button representingBarButtonItem:v4];
      v6 = v6 + v7;
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (id)_titleAlternativeForTitle:(id)a3
{
  v4 = a3;
  v5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlterntativeLookup];
  v6 = [v5 objectForKeyedSubscript:v4];

  [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  if (v6)
    v7 = {;
    [v6 updateWithLabel:v7];
  }

  else
    v8 = {;
    v6 = [_CarTitleAlternative alternativeWithTitle:v4 label:v8];

    v7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlterntativeLookup];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (void)_setupAlternateTitlesFromBarButtonItem:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
  v6 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];

  if (v5 == v6)
  {
    v7 = [v4 _backButtonAlternateTitles];
    if (![v7 count])
    {
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlternatives:0];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlterntativeLookup:0];
      goto LABEL_23;
    }

    v8 = objc_opt_new();
    v9 = [v4 title];
    v10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlterntativeLookup];

    if (v10)
    {
      if (v9)
      {
LABEL_6:
        v11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self _titleAlternativeForTitle:v9];
        [v8 addObject:v11];
        [v11 width];
        v13 = v12;

        goto LABEL_10;
      }
    }

    else
    {
      v14 = objc_opt_new();
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlterntativeLookup:v14];

      if (v9)
      {
        goto LABEL_6;
      }
    }

    v13 = 1.79769313e308;
LABEL_10:
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = v7;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          v21 = [(_UIButtonBarButtonVisualProviderCarPlay *)self _titleAlternativeForTitle:v20];
          [v21 width];
          if (v22 < v13 && ([v20 isEqualToString:v9] & 1) == 0)
          {
            [v8 addObject:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v17);
    }

    v23 = [v8 copy];
    [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlternatives:v23];

    v24 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
    v25 = [v24 count];

    v7 = v39;
    if (v25 > (v9 != 0))
    {
      v26 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      LODWORD(v27) = 1132068864;
      [v26 setContentCompressionResistancePriority:0 forAxis:v27];

      v28 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
      v29 = [v28 firstObject];
      [v29 width];
      v31 = v30;

      v32 = [(_UIButtonBarButtonVisualProviderCarPlay *)self maxTitleViewWidthConstraint];

      if (v32)
      {
        v33 = [(_UIButtonBarButtonVisualProviderCarPlay *)self maxTitleViewWidthConstraint];
        [v33 setConstant:v31];
      }

      else
      {
        v33 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        v36 = [v33 widthAnchor];
        v37 = [v36 constraintLessThanOrEqualToConstant:v31];
        [(_UIButtonBarButtonVisualProviderCarPlay *)self setMaxTitleViewWidthConstraint:v37];
      }

      v35 = 1;
      goto LABEL_26;
    }

LABEL_23:
    v33 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    LODWORD(v34) = 1144913920;
    [v33 setContentCompressionResistancePriority:0 forAxis:v34];
    v35 = 0;
LABEL_26:

    v38 = [(_UIButtonBarButtonVisualProviderCarPlay *)self maxTitleViewWidthConstraint];
    [v38 setActive:v35];

    goto LABEL_27;
  }

  [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlternatives:0];
  [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlterntativeLookup:0];
LABEL_27:
}

- (_UIButtonBarAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

@end
@interface _UIButtonBarButtonVisualProviderCarPlay
- (_UIButtonBarAppearanceDelegate)appearanceDelegate;
- (double)_effectiveEdgeSpacing;
- (id)_titleAlternativeForTitle:(id)title;
- (id)contentView;
- (void)_setupAlternateTitlesFromBarButtonItem:(id)item;
- (void)_updateLabelColorsForStateEnabled:(BOOL)enabled focused:(BOOL)focused pressed:(BOOL)pressed;
- (void)buttonLayoutSubviews:(id)subviews baseImplementation:(id)implementation;
- (void)configureButton:(id)button fromBarButtonItem:(id)item;
- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item;
- (void)updateButton:(id)button forEnabledState:(BOOL)state;
- (void)updateButton:(id)button forFocusedState:(BOOL)state;
- (void)updateButton:(id)button forHighlightedState:(BOOL)state;
@end

@implementation _UIButtonBarButtonVisualProviderCarPlay

- (id)contentView
{
  imageView = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  superview = [imageView superview];

  if (superview)
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

- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item
{
  buttonCopy = button;
  itemCopy = item;
  [(_UIButtonBarButtonVisualProviderCarPlay *)self setAppearanceDelegate:delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_UIButtonBarButtonVisualProviderCarPlay *)self configureButton:buttonCopy fromBarButtonItem:itemCopy];
  }
}

- (void)configureButton:(id)button fromBarButtonItem:(id)item
{
  v175[5] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  itemCopy = item;
  v6 = MEMORY[0x1E69977A0];
  buttonConstraints = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
  [v6 deactivateConstraints:buttonConstraints];

  backView = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
  [backView removeFromSuperview];

  imageView = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  [imageView removeFromSuperview];

  titleView = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  [titleView removeFromSuperview];

  focusedView = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
  [focusedView removeFromSuperview];

  [(_UIButtonBarButtonVisualProviderCarPlay *)self setBackViewToContentConstraint:0];
  if (_UISMCBarsEnabled())
  {
    [buttonCopy setClipsToBounds:1];
  }

  focusedView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];

  if (!focusedView2)
  {
    v13 = [UIView alloc];
    v14 = [(UIView *)v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UIButtonBarButtonVisualProviderCarPlay *)self setFocusedView:v14];

    focusedView3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [focusedView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    focusedView4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    layer = [focusedView4 layer];
    [layer setCornerRadius:4.5];

    focusedView5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    layer2 = [focusedView5 layer];
    [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];

    focusedView6 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [focusedView6 setUserInteractionEnabled:0];
  }

  focusedView7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
  [buttonCopy addSubview:focusedView7];

  v158 = [itemCopy _imageForState:0 compact:0 type:0];
  if (v158)
  {
    imageView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];

    if (!imageView2)
    {
      v23 = [UIImageView alloc];
      v24 = [(UIImageView *)v23 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setImageView:v24];

      imageView3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
      [imageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      imageView4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
      [imageView4 setUserInteractionEnabled:0];

      imageView5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
      [imageView5 setContentMode:4];
    }

    imageView6 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
    [imageView6 setImage:v158];

    imageView7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  }

  else
  {
    titleView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];

    if (!titleView2)
    {
      v31 = [UILabel alloc];
      v32 = [(UILabel *)v31 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleView:v32];

      titleView3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [titleView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      if (_UISMCBarsEnabled())
      {
        v34 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleCallout" weight:*off_1E70ECD20];
        titleView4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        [titleView4 setFont:v34];

        titleView5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        [titleView5 setPreferredVibrancy:1];
      }

      else
      {
        titleView5 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleCallout"];
        titleView6 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        [titleView6 setFont:titleView5];
      }

      titleView7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [titleView7 setAdjustsFontForContentSizeCategory:1];

      titleView8 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [titleView8 setUserInteractionEnabled:0];
    }

    resolvedTitle = [itemCopy resolvedTitle];
    titleView9 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [titleView9 setText:resolvedTitle];

    imageView7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  }

  v42 = imageView7;
  [buttonCopy addSubview:imageView7];

  if (([buttonCopy isBackButton] & 1) != 0 || objc_msgSend(itemCopy, "_showsChevron"))
  {
    backView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];

    if (!backView2)
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

      backView3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      [backView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      backView4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      [backView4 setUserInteractionEnabled:0];

      backView5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      LODWORD(v56) = 1148846080;
      [backView5 setContentCompressionResistancePriority:0 forAxis:v56];
    }

    backView6 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
    [buttonCopy addSubview:backView6];

    if (_UISMCBarsEnabled())
    {
      [buttonCopy _setWantsGlassAppearance:1];
    }

    [(_UIButtonBarButtonVisualProviderCarPlay *)self _setupAlternateTitlesFromBarButtonItem:itemCopy];
    if (_UISMCBarsEnabled())
    {
      v58 = 36.0;
    }

    else
    {
      v58 = 44.0;
    }

    widthAnchor = [buttonCopy widthAnchor];
    v157 = [widthAnchor constraintGreaterThanOrEqualToConstant:v58];

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

    contentView = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
    leadingAnchor = [contentView leadingAnchor];
    backView7 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
    trailingAnchor = [backView7 trailingAnchor];
    contentView6 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:3.0];

    v175[0] = v157;
    focusedView8 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    topAnchor = [focusedView8 topAnchor];
    topAnchor2 = [buttonCopy topAnchor];
    v145 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v61];
    v175[1] = v145;
    focusedView9 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    leadingAnchor2 = [focusedView9 leadingAnchor];
    leadingAnchor3 = [buttonCopy leadingAnchor];
    v66 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:v61];
    v175[2] = v66;
    focusedView10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    trailingAnchor2 = [focusedView10 trailingAnchor];
    trailingAnchor3 = [buttonCopy trailingAnchor];
    v70 = -v61;
    v71 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:v70];
    v175[3] = v71;
    focusedView11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    bottomAnchor = [focusedView11 bottomAnchor];
    bottomAnchor2 = [buttonCopy bottomAnchor];
    v75 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v70];
    v175[4] = v75;
    leadingAnchor6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:5];

    if (_UISMCBarsEnabled())
    {
      widthMinimizingConstraint = [buttonCopy widthMinimizingConstraint];
      v174[0] = widthMinimizingConstraint;
      backView8 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      centerYAnchor = [backView8 centerYAnchor];
      centerYAnchor2 = [buttonCopy centerYAnchor];
      v78 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v174[1] = v78;
      contentView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      centerYAnchor3 = [contentView2 centerYAnchor];
      centerYAnchor4 = [buttonCopy centerYAnchor];
      v82 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v174[2] = v82;
      v83 = [MEMORY[0x1E695DEC8] arrayWithObjects:v174 count:3];
      v84 = [leadingAnchor6 arrayByAddingObjectsFromArray:v83];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v84];

      titleView10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      text = [titleView10 text];
      if (text)
      {
        titleView11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        text2 = [titleView11 text];
        v89 = [text2 length] == 0;

        if (!v89)
        {
          buttonConstraints2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
          v173[0] = contentView6;
          backView9 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
          leadingAnchor4 = [backView9 leadingAnchor];
          leadingAnchor5 = [buttonCopy leadingAnchor];
          v91 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:12.0];
          v173[1] = v91;
          contentView3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
          trailingAnchor4 = [contentView3 trailingAnchor];
          trailingAnchor5 = [buttonCopy trailingAnchor];
          v95 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-12.0];
          v173[2] = v95;
          v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v173 count:3];
          v97 = [buttonConstraints2 arrayByAddingObjectsFromArray:v96];
          [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v97];

          goto LABEL_48;
        }
      }

      else
      {
      }

      backView10 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      centerXAnchor = [backView10 centerXAnchor];
      centerXAnchor2 = [buttonCopy centerXAnchor];
      buttonConstraints2 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      LODWORD(v108) = 1148846080;
      [buttonConstraints2 setPriority:v108];
      backView9 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
      leadingAnchor4 = [backView9 arrayByAddingObject:buttonConstraints2];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:leadingAnchor4];
    }

    else
    {
      buttonConstraints2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
      backView9 = [buttonConstraints2 firstBaselineAnchor];
      leadingAnchor4 = [buttonCopy topAnchor];
      v98 = [backView9 constraintEqualToAnchor:leadingAnchor4 constant:28.0];
      v172[0] = v98;
      contentView4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      firstBaselineAnchor = [contentView4 firstBaselineAnchor];
      topAnchor3 = [buttonCopy topAnchor];
      v102 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:28.0];
      v172[1] = v102;
      v172[2] = contentView6;
      v103 = [MEMORY[0x1E695DEC8] arrayWithObjects:v172 count:3];
      v104 = [leadingAnchor6 arrayByAddingObjectsFromArray:v103];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v104];
    }
  }

  else
  {
    if (v158 && ![v158 hasBaseline] || _UISMCBarsEnabled())
    {
      contentView5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      centerYAnchor5 = [contentView5 centerYAnchor];
      centerYAnchor6 = [buttonCopy centerYAnchor];
      v157 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    }

    else
    {
      contentView5 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
      centerYAnchor5 = [contentView5 firstBaselineAnchor];
      centerYAnchor6 = [buttonCopy topAnchor];
      v157 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:28.0];
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

    contentView6 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
    leadingAnchor6 = [contentView6 leadingAnchor];
    buttonConstraints2 = [buttonCopy leadingAnchor];
    backView9 = [leadingAnchor6 constraintEqualToAnchor:buttonConstraints2 constant:v110];
    v171[0] = backView9;
    leadingAnchor4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
    trailingAnchor6 = [leadingAnchor4 trailingAnchor];
    trailingAnchor7 = [buttonCopy trailingAnchor];
    v142 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:-v110];
    v171[1] = v142;
    v171[2] = v157;
    focusedView12 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    topAnchor4 = [focusedView12 topAnchor];
    topAnchor5 = [buttonCopy topAnchor];
    v136 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:v109];
    v171[3] = v136;
    focusedView13 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    leadingAnchor7 = [focusedView13 leadingAnchor];
    leadingAnchor8 = [buttonCopy leadingAnchor];
    v132 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v109];
    v171[4] = v132;
    focusedView14 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    trailingAnchor8 = [focusedView14 trailingAnchor];
    trailingAnchor9 = [buttonCopy trailingAnchor];
    v115 = -v109;
    v116 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:v115];
    v171[5] = v116;
    focusedView15 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    bottomAnchor3 = [focusedView15 bottomAnchor];
    bottomAnchor4 = [buttonCopy bottomAnchor];
    v120 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:v115];
    v171[6] = v120;
    v121 = [MEMORY[0x1E695DEC8] arrayWithObjects:v171 count:7];
    [(_UIButtonBarButtonVisualProviderCarPlay *)self setButtonConstraints:v121];
  }

LABEL_48:

  -[_UIButtonBarButtonVisualProviderCarPlay _updateLabelColorsForStateEnabled:focused:pressed:](self, "_updateLabelColorsForStateEnabled:focused:pressed:", [itemCopy isEnabled], objc_msgSend(buttonCopy, "isFocused"), 0);
  objc_initWeak(&location, self);
  v122 = objc_opt_self();
  v170 = v122;
  v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v170 count:1];
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __77___UIButtonBarButtonVisualProviderCarPlay_configureButton_fromBarButtonItem___block_invoke;
  v165[3] = &unk_1E7109048;
  objc_copyWeak(&v167, &location);
  v124 = buttonCopy;
  v166 = v124;
  v125 = [v124 registerForTraitChanges:v123 withHandler:v165];

  v126 = MEMORY[0x1E69977A0];
  buttonConstraints3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self buttonConstraints];
  [v126 activateConstraints:buttonConstraints3];

  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  _gestureRecognizers = [itemCopy _gestureRecognizers];
  v129 = [_gestureRecognizers countByEnumeratingWithState:&v161 objects:v169 count:16];
  if (v129)
  {
    v130 = *v162;
    do
    {
      for (i = 0; i != v129; ++i)
      {
        if (*v162 != v130)
        {
          objc_enumerationMutation(_gestureRecognizers);
        }

        [v124 addGestureRecognizer:*(*(&v161 + 1) + 8 * i)];
      }

      v129 = [_gestureRecognizers countByEnumeratingWithState:&v161 objects:v169 count:16];
    }

    while (v129);
  }

  objc_destroyWeak(&v167);
  objc_destroyWeak(&location);
}

- (void)buttonLayoutSubviews:(id)subviews baseImplementation:(id)implementation
{
  subviewsCopy = subviews;
  implementationCopy = implementation;
  titleAlternatives = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
  v8 = [titleAlternatives count];

  if (v8)
  {
    titleView = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [titleView _nsis_bounds];
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

    titleAlternatives2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
    v17 = [titleAlternatives2 count];

    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = 0;
    title = &stru_1EFB14550;
    do
    {
      titleAlternatives3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
      v21 = [titleAlternatives3 objectAtIndexedSubscript:v18];

      titleView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      [v21 updateWithLabel:titleView2];

      [v21 width];
      if (v23 <= v11)
      {
        break;
      }

      ++v18;
      titleAlternatives4 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
      v25 = [titleAlternatives4 count];
    }

    while (v18 < v25);
    if (v21)
    {
      title = [v21 title];
    }

    else
    {
LABEL_14:
      title = &stru_1EFB14550;
    }

    v26 = [(__CFString *)title length];
    backViewToContentConstraint = [(_UIButtonBarButtonVisualProviderCarPlay *)self backViewToContentConstraint];
    v28 = backViewToContentConstraint;
    v29 = 3.0;
    if (!v26)
    {
      v29 = 0.0;
    }

    [backViewToContentConstraint setConstant:v29];

    titleView3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [titleView3 setText:title];
  }

  implementationCopy[2](implementationCopy);
  if (_UISMCBarsEnabled())
  {
    if (([subviewsCopy isBackButton] & 1) == 0)
    {
      [subviewsCopy frame];
      [subviewsCopy _setContinuousCornerRadius:CGRectGetHeight(v36) * 0.5];
    }

    focusedView = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [focusedView frame];
    v32 = CGRectGetHeight(v37) * 0.5;
    focusedView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
    [focusedView2 _setContinuousCornerRadius:v32];
  }
}

- (void)updateButton:(id)button forFocusedState:(BOOL)state
{
  stateCopy = state;
  buttonCopy = button;
  if (_UISMCBarsEnabled())
  {
    if (stateCopy)
    {
      traitCollection = [buttonCopy traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      v8 = 1;
      if (userInterfaceStyle != 2)
      {
        v8 = userInterfaceStyle;
      }

      if (userInterfaceStyle == 1)
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

    titleView = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    [titleView setOverrideUserInterfaceStyle:v9];

    imageView = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
    [imageView setOverrideUserInterfaceStyle:v9];

    backView = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
    [backView setOverrideUserInterfaceStyle:v9];
  }

  -[_UIButtonBarButtonVisualProviderCarPlay _updateLabelColorsForStateEnabled:focused:pressed:](self, "_updateLabelColorsForStateEnabled:focused:pressed:", [buttonCopy isEnabled], stateCopy, 0);
  if (stateCopy)
  {
    v13 = +[UIColor _carSystemFocusColor];
  }

  else
  {
    v13 = 0;
  }

  focusedView = [(_UIButtonBarButtonVisualProviderCarPlay *)self focusedView];
  [focusedView setBackgroundColor:v13];

  if (stateCopy)
  {
  }
}

- (void)updateButton:(id)button forHighlightedState:(BOOL)state
{
  stateCopy = state;
  buttonCopy = button;
  if (_UISMCBarsEnabled())
  {
    -[_UIButtonBarButtonVisualProviderCarPlay _updateLabelColorsForStateEnabled:focused:pressed:](self, "_updateLabelColorsForStateEnabled:focused:pressed:", [buttonCopy isEnabled], objc_msgSend(buttonCopy, "isFocused"), stateCopy);
  }

  else
  {
    if (stateCopy)
    {
      v6 = 0.2;
    }

    else
    {
      v6 = 1.0;
    }

    [buttonCopy setAlpha:v6];
  }
}

- (void)updateButton:(id)button forEnabledState:(BOOL)state
{
  stateCopy = state;
  isFocused = [button isFocused];

  [(_UIButtonBarButtonVisualProviderCarPlay *)self _updateLabelColorsForStateEnabled:stateCopy focused:isFocused pressed:0];
}

- (void)_updateLabelColorsForStateEnabled:(BOOL)enabled focused:(BOOL)focused pressed:(BOOL)pressed
{
  enabledCopy = enabled;
  if (_UISMCBarsEnabled())
  {
    if (!enabledCopy || pressed)
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
    if (focused)
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
  titleView = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  [titleView setTextColor:v13];

  imageView = [(_UIButtonBarButtonVisualProviderCarPlay *)self imageView];
  [imageView setTintColor:v13];

  backView = [(_UIButtonBarButtonVisualProviderCarPlay *)self backView];
  [backView setTintColor:v13];
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

- (id)_titleAlternativeForTitle:(id)title
{
  titleCopy = title;
  titleAlterntativeLookup = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlterntativeLookup];
  v6 = [titleAlterntativeLookup objectForKeyedSubscript:titleCopy];

  [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
  if (v6)
    titleAlterntativeLookup2 = {;
    [v6 updateWithLabel:titleAlterntativeLookup2];
  }

  else
    v8 = {;
    v6 = [_CarTitleAlternative alternativeWithTitle:titleCopy label:v8];

    titleAlterntativeLookup2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlterntativeLookup];
    [titleAlterntativeLookup2 setObject:v6 forKeyedSubscript:titleCopy];
  }

  return v6;
}

- (void)_setupAlternateTitlesFromBarButtonItem:(id)item
{
  v45 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contentView = [(_UIButtonBarButtonVisualProviderCarPlay *)self contentView];
  titleView = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];

  if (contentView == titleView)
  {
    _backButtonAlternateTitles = [itemCopy _backButtonAlternateTitles];
    if (![_backButtonAlternateTitles count])
    {
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlternatives:0];
      [(_UIButtonBarButtonVisualProviderCarPlay *)self setTitleAlterntativeLookup:0];
      goto LABEL_23;
    }

    v8 = objc_opt_new();
    title = [itemCopy title];
    titleAlterntativeLookup = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlterntativeLookup];

    if (titleAlterntativeLookup)
    {
      if (title)
      {
LABEL_6:
        v11 = [(_UIButtonBarButtonVisualProviderCarPlay *)self _titleAlternativeForTitle:title];
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

      if (title)
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
    v39 = _backButtonAlternateTitles;
    v15 = _backButtonAlternateTitles;
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
          if (v22 < v13 && ([v20 isEqualToString:title] & 1) == 0)
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

    titleAlternatives = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
    v25 = [titleAlternatives count];

    _backButtonAlternateTitles = v39;
    if (v25 > (title != 0))
    {
      titleView2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
      LODWORD(v27) = 1132068864;
      [titleView2 setContentCompressionResistancePriority:0 forAxis:v27];

      titleAlternatives2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleAlternatives];
      firstObject = [titleAlternatives2 firstObject];
      [firstObject width];
      v31 = v30;

      maxTitleViewWidthConstraint = [(_UIButtonBarButtonVisualProviderCarPlay *)self maxTitleViewWidthConstraint];

      if (maxTitleViewWidthConstraint)
      {
        maxTitleViewWidthConstraint2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self maxTitleViewWidthConstraint];
        [maxTitleViewWidthConstraint2 setConstant:v31];
      }

      else
      {
        maxTitleViewWidthConstraint2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
        widthAnchor = [maxTitleViewWidthConstraint2 widthAnchor];
        v37 = [widthAnchor constraintLessThanOrEqualToConstant:v31];
        [(_UIButtonBarButtonVisualProviderCarPlay *)self setMaxTitleViewWidthConstraint:v37];
      }

      v35 = 1;
      goto LABEL_26;
    }

LABEL_23:
    maxTitleViewWidthConstraint2 = [(_UIButtonBarButtonVisualProviderCarPlay *)self titleView];
    LODWORD(v34) = 1144913920;
    [maxTitleViewWidthConstraint2 setContentCompressionResistancePriority:0 forAxis:v34];
    v35 = 0;
LABEL_26:

    maxTitleViewWidthConstraint3 = [(_UIButtonBarButtonVisualProviderCarPlay *)self maxTitleViewWidthConstraint];
    [maxTitleViewWidthConstraint3 setActive:v35];

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
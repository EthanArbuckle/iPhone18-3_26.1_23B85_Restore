@interface UIKBMultilingualSettingIntroductionView
+ (BOOL)shouldShowIntroductionForInputMode:(id)mode;
+ (id)displayArtwork:(id)artwork;
+ (id)displayDescription:(id)description;
+ (id)displayTitle:(id)title;
- (UIKBMultilingualSettingIntroductionView)initWithInputMode:(id)mode frame:(CGRect)frame;
- (void)_updateContainer;
- (void)continueButtonTapped;
- (void)layoutSubviews;
- (void)settingButtonTapped;
@end

@implementation UIKBMultilingualSettingIntroductionView

+ (BOOL)shouldShowIntroductionForInputMode:(id)mode
{
  v28 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  if (![objc_msgSend(self "superclass")])
  {
    goto LABEL_28;
  }

  languageWithRegion = [modeCopy languageWithRegion];
  v6 = [languageWithRegion isEqualToString:@"en_IN"];

  if (v6)
  {
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v7 = [modeCopy isMultiscript] ^ 1;
      goto LABEL_29;
    }

LABEL_28:
    LOBYTE(v7) = 0;
    goto LABEL_29;
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  activeInputModeIdentifiers = [v8 activeInputModeIdentifiers];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = activeInputModeIdentifiers;
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = TIInputModeGetBaseLanguage();
      v16 = [v15 isEqualToString:{@"en", v23}];

      if (v16)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    languageWithRegion2 = [modeCopy languageWithRegion];
    v18 = [languageWithRegion2 isEqualToString:@"ko_KR"];

    if (v18)
    {
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && (UIKeyboardInputModeIsKoreanEnglishBilingual(modeCopy) & 1) == 0)
      {
        LOBYTE(v7) = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;
        goto LABEL_26;
      }
    }

    else
    {
      languageWithRegion3 = [modeCopy languageWithRegion];
      v20 = [languageWithRegion3 isEqualToString:@"ar"];

      if (!v20)
      {

        goto LABEL_28;
      }

      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        softwareLayout = [modeCopy softwareLayout];
        LOBYTE(v7) = ([softwareLayout isEqualToString:@"Arabic-With-QWERTY"] & 1) == 0 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;

        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_14:
  }

  LOBYTE(v7) = 0;
LABEL_26:

LABEL_29:
  return v7;
}

+ (id)displayTitle:(id)title
{
  titleCopy = title;
  languageWithRegion = [titleCopy languageWithRegion];
  v5 = [languageWithRegion isEqualToString:@"ko_KR"];

  if (v5)
  {
    v6 = @"Type Korean and English";
  }

  else
  {
    languageWithRegion2 = [titleCopy languageWithRegion];
    v8 = [languageWithRegion2 isEqualToString:@"ar"];

    if (v8)
    {
      v6 = @"Type Arabic and English";
    }

    else
    {
      v6 = @"Type Multiple Languages";
    }
  }

  v9 = _UILocalizedStringInSystemLanguage(v6, v6);

  return v9;
}

+ (id)displayDescription:(id)description
{
  descriptionCopy = description;
  languageWithRegion = [descriptionCopy languageWithRegion];
  v5 = [languageWithRegion isEqualToString:@"ko_KR"];

  if (v5)
  {
    v6 = @"Type both Korean and English on the same keyboard";
  }

  else
  {
    languageWithRegion2 = [descriptionCopy languageWithRegion];
    v8 = [languageWithRegion2 isEqualToString:@"ar"];

    if (v8)
    {
      v6 = @"Type both Arabic and English on the same keyboard";
    }

    else
    {
      v6 = @"Type English and two other languages on the same keyboard";
    }
  }

  v9 = _UILocalizedStringInSystemLanguage(v6, v6);

  return v9;
}

- (UIKBMultilingualSettingIntroductionView)initWithInputMode:(id)mode frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v149[19] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v148.receiver = self;
  v148.super_class = UIKBMultilingualSettingIntroductionView;
  height = [(UIView *)&v148 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(UIKBMultilingualSettingIntroductionView *)height setInputMode:modeCopy];
    [(UIView *)v11 setAutoresizingMask:18];
    _inheritedRenderConfig = [(UIView *)v11 _inheritedRenderConfig];
    v13 = -[_UIBackdropView initWithStyle:]([_UIBackdropView alloc], "initWithStyle:", [_inheritedRenderConfig backdropStyle]);
    [(UIKBMultilingualSettingIntroductionView *)v11 setBackdropView:v13];

    backdropView = [(UIKBMultilingualSettingIntroductionView *)v11 backdropView];
    [(UIView *)v11 addSubview:backdropView];

    v15 = [objc_opt_class() displayTitle:modeCopy];
    v16 = [objc_opt_class() displayDescription:modeCopy];
    v17 = _UILocalizedStringInSystemLanguage(@"Set Up in Settings", @"Set Up in Settings");
    v18 = _UILocalizedStringInSystemLanguage(@"Continue without Setting Up", @"Continue without Setting Up");
    v146 = _inheritedRenderConfig;
    if ([_inheritedRenderConfig lightKeyboard])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v96 = ;
    v19 = [objc_opt_class() displayArtwork:modeCopy];
    [(UIKBMultilingualSettingIntroductionView *)v11 setArtworkView:v19];

    artworkView = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    [artworkView setTranslatesAutoresizingMaskIntoConstraints:0];

    artworkView2 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    [(UIView *)v11 addSubview:artworkView2];

    v22 = [UILabel alloc];
    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
    v27 = [(UILabel *)v22 initWithFrame:*MEMORY[0x1E695F058], v24, v25, v26];
    [(UIKBMultilingualSettingIntroductionView *)v11 setTitleLabel:v27];

    titleLabel = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [titleLabel2 setTextColor:v96];

    titleLabel3 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [titleLabel3 setTextAlignment:1];

    titleLabel4 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [titleLabel4 setText:v15];

    titleLabelFont = [(UIKBMultilingualIntroductionView *)v11 titleLabelFont];
    [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    v33 = v147 = modeCopy;
    [v33 setFont:titleLabelFont];

    titleLabel5 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [(UIView *)v11 addSubview:titleLabel5];

    v35 = [[UILabel alloc] initWithFrame:v23, v24, v25, v26];
    [(UIKBMultilingualSettingIntroductionView *)v11 setDescriptionLabel:v35];

    descriptionLabel = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    descriptionLabel2 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [descriptionLabel2 setTextColor:v96];

    descriptionLabel3 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [descriptionLabel3 setTextAlignment:1];

    descriptionLabel4 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [descriptionLabel4 setText:v16];

    descriptionLabelFont = [(UIKBMultilingualIntroductionView *)v11 descriptionLabelFont];
    descriptionLabel5 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [descriptionLabel5 setFont:descriptionLabelFont];

    descriptionLabelNumberOfLines = [(UIKBMultilingualIntroductionView *)v11 descriptionLabelNumberOfLines];
    descriptionLabel6 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [descriptionLabel6 setNumberOfLines:descriptionLabelNumberOfLines];

    descriptionLabel7 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [(UIView *)v11 addSubview:descriptionLabel7];

    v45 = +[UIButtonConfiguration filledButtonConfiguration];
    [v45 setCornerStyle:3];
    v145 = v45;
    [v45 setTitle:v17];
    v46 = [UIButton buttonWithType:1];
    [(UIKBMultilingualSettingIntroductionView *)v11 setSettingButton:v46];

    settingButton = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [settingButton setTranslatesAutoresizingMaskIntoConstraints:0];

    settingButton2 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [settingButton2 setConfiguration:v45];

    settingButton3 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [settingButton3 addTarget:v11 action:sel_settingButtonTapped forControlEvents:64];

    settingButton4 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [(UIView *)v11 addSubview:settingButton4];

    v51 = [[UIButton alloc] initWithFrame:v23, v24, v25, v26];
    [(UIKBMultilingualSettingIntroductionView *)v11 setContinueButton:v51];

    continueButton = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

    continueButton2 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [continueButton2 setTitle:v18 forState:0];

    continueButton3 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v55 = +[UIColor linkColor];
    [continueButton3 setTitleColor:v55 forState:0];

    continueButton4 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v57 = +[UIColor linkColor];
    [continueButton4 setTitleColor:v57 forState:0];

    continueButton5 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [continueButton5 addTarget:v11 action:sel_continueButtonTapped forControlEvents:64];

    continueButton6 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [(UIView *)v11 addSubview:continueButton6];

    v113 = MEMORY[0x1E69977A0];
    artworkView3 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    topAnchor = [artworkView3 topAnchor];
    topAnchor2 = [(UIView *)v11 topAnchor];
    v141 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:15.0];
    v149[0] = v141;
    artworkView4 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    heightAnchor = [artworkView4 heightAnchor];
    v138 = [heightAnchor constraintEqualToConstant:150.0];
    v149[1] = v138;
    artworkView5 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    centerXAnchor = [artworkView5 centerXAnchor];
    centerXAnchor2 = [(UIView *)v11 centerXAnchor];
    v134 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v149[2] = v134;
    artworkView6 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    widthAnchor = [artworkView6 widthAnchor];
    widthAnchor2 = [(UIView *)v11 widthAnchor];
    v130 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.7];
    v149[3] = v130;
    titleLabel6 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    topAnchor3 = [titleLabel6 topAnchor];
    artworkView7 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    bottomAnchor = [artworkView7 bottomAnchor];
    v125 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:15.0];
    v149[4] = v125;
    titleLabel7 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    centerXAnchor3 = [titleLabel7 centerXAnchor];
    centerXAnchor4 = [(UIView *)v11 centerXAnchor];
    v121 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v149[5] = v121;
    titleLabel8 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    widthAnchor3 = [titleLabel8 widthAnchor];
    widthAnchor4 = [(UIView *)v11 widthAnchor];
    v117 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.7];
    v149[6] = v117;
    descriptionLabel8 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    topAnchor4 = [descriptionLabel8 topAnchor];
    titleLabel9 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    bottomAnchor2 = [titleLabel9 bottomAnchor];
    v111 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:12.0];
    v149[7] = v111;
    descriptionLabel9 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    centerXAnchor5 = [descriptionLabel9 centerXAnchor];
    centerXAnchor6 = [(UIView *)v11 centerXAnchor];
    v107 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v149[8] = v107;
    descriptionLabel10 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    widthAnchor5 = [descriptionLabel10 widthAnchor];
    widthAnchor6 = [(UIView *)v11 widthAnchor];
    v101 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.7];
    v149[9] = v101;
    settingButton5 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    topAnchor5 = [settingButton5 topAnchor];
    descriptionLabel11 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    bottomAnchor3 = [descriptionLabel11 bottomAnchor];
    v93 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:12.0];
    v149[10] = v93;
    settingButton6 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    centerXAnchor7 = [settingButton6 centerXAnchor];
    centerXAnchor8 = [(UIView *)v11 centerXAnchor];
    v89 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v149[11] = v89;
    settingButton7 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    widthAnchor7 = [settingButton7 widthAnchor];
    widthAnchor8 = [(UIView *)v11 widthAnchor];
    v85 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:0.7];
    v149[12] = v85;
    settingButton8 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    heightAnchor2 = [settingButton8 heightAnchor];
    v82 = [heightAnchor2 constraintEqualToConstant:42.0];
    v149[13] = v82;
    continueButton7 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    topAnchor6 = [continueButton7 topAnchor];
    settingButton9 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    bottomAnchor4 = [settingButton9 bottomAnchor];
    v77 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:12.0];
    v149[14] = v77;
    continueButton8 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    centerXAnchor9 = [continueButton8 centerXAnchor];
    centerXAnchor10 = [(UIView *)v11 centerXAnchor];
    v73 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
    v149[15] = v73;
    continueButton9 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    widthAnchor9 = [continueButton9 widthAnchor];
    widthAnchor10 = [(UIView *)v11 widthAnchor];
    v60 = [widthAnchor9 constraintEqualToAnchor:widthAnchor10 multiplier:0.7];
    v149[16] = v60;
    [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v61 = v104 = v15;
    [v61 heightAnchor];
    v62 = v102 = v16;
    [v62 constraintEqualToConstant:21.0];
    v63 = v99 = v18;
    v149[17] = v63;
    bottomAnchor5 = [(UIView *)v11 bottomAnchor];
    [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v65 = v98 = v17;
    bottomAnchor6 = [v65 bottomAnchor];
    v67 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:40.0];
    v149[18] = v67;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:19];
    [v113 activateConstraints:v68];

    modeCopy = v147;
  }

  return v11;
}

+ (id)displayArtwork:(id)artwork
{
  artworkCopy = artwork;
  languageWithRegion = [artworkCopy languageWithRegion];
  if ([languageWithRegion isEqualToString:@"ko_KR"])
  {

LABEL_4:
    languageWithRegion2 = [artworkCopy languageWithRegion];
    v8 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:languageWithRegion2 andLanguage2:@"en"];

    goto LABEL_6;
  }

  languageWithRegion3 = [artworkCopy languageWithRegion];
  v6 = [languageWithRegion3 isEqualToString:@"ar"];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [UIKBMultilingualKeyboardArtworkView alloc];
  v8 = [(UIView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
LABEL_6:

  return v8;
}

- (void)settingButtonTapped
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 dismissMultilingualSettingTip];

  v3 = MEMORY[0x1E69D9560];

  [v3 launchKeyboardSettings];
}

- (void)continueButtonTapped
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 dismissMultilingualSettingTip];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIKBMultilingualSettingIntroductionView;
  [(UIView *)&v3 layoutSubviews];
  [(UIKBMultilingualSettingIntroductionView *)self _updateContainer];
}

- (void)_updateContainer
{
  [(UIView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  _rootInputWindowController = [(UIView *)self _rootInputWindowController];
  _inputAccessoryView = [_rootInputWindowController _inputAccessoryView];

  _rootInputWindowController2 = [(UIView *)self _rootInputWindowController];
  _rootInputWindowController3 = _rootInputWindowController2;
  if (_inputAccessoryView)
  {
    _inputAccessoryView2 = [_rootInputWindowController2 _inputAccessoryView];
    goto LABEL_11;
  }

  _inputAssistantView = [_rootInputWindowController2 _inputAssistantView];
  superview = [_inputAssistantView superview];
  if (superview)
  {
    v10 = superview;
    v11 = +[UIKeyboardImpl activeInstance];
    _showsScribbleIconsInAssistantView = [v11 _showsScribbleIconsInAssistantView];

    if ((_showsScribbleIconsInAssistantView & 1) == 0)
    {
      _rootInputWindowController3 = [(UIView *)self _rootInputWindowController];
      _inputAccessoryView2 = [_rootInputWindowController3 _inputAssistantView];
      goto LABEL_11;
    }
  }

  else
  {
  }

  _rootInputWindowController4 = [(UIView *)self _rootInputWindowController];
  _inputView = [_rootInputWindowController4 _inputView];

  _rootInputWindowController5 = [(UIView *)self _rootInputWindowController];
  _rootInputWindowController3 = _rootInputWindowController5;
  if (_inputView)
  {
    [_rootInputWindowController5 _inputView];
  }

  else
  {
    [_rootInputWindowController5 view];
  }
  _inputAccessoryView2 = ;
LABEL_11:
  v16 = _inputAccessoryView2;
  topAnchor = [_inputAccessoryView2 topAnchor];

  v17 = +[UIKeyboardImpl isFloating];
  _rootInputWindowController6 = [(UIView *)self _rootInputWindowController];
  v19 = _rootInputWindowController6;
  if (v17)
  {
    _inputView2 = [_rootInputWindowController6 _inputView];

    +[UIKeyboardPopoverContainer contentInsets];
    v22 = -fabs(v21);
    +[UIKeyboardPopoverContainer contentInsets];
    v24 = fabs(v23);
    +[UIKeyboardPopoverContainer contentInsets];
    v26 = -fabs(v25);
    +[UIKeyboardPopoverContainer contentInsets];
    v28 = fabs(v27);
  }

  else
  {
    _inputView2 = [_rootInputWindowController6 view];

    v26 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
    v28 = 0.0;
  }

  topAnchor2 = [(UIView *)self topAnchor];
  v30 = [topAnchor2 constraintEqualToAnchor:topAnchor constant:v22];
  [v30 setActive:1];

  bottomAnchor = [(UIView *)self bottomAnchor];
  bottomAnchor2 = [_inputView2 bottomAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v24];
  [v33 setActive:1];

  leftAnchor = [(UIView *)self leftAnchor];
  leftAnchor2 = [_inputView2 leftAnchor];
  v36 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v26];
  [v36 setActive:1];

  rightAnchor = [(UIView *)self rightAnchor];
  rightAnchor2 = [_inputView2 rightAnchor];
  v39 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:v28];
  [v39 setActive:1];
}

@end
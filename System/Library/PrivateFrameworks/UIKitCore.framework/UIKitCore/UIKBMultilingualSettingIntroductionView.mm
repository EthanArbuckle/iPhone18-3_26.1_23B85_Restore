@interface UIKBMultilingualSettingIntroductionView
+ (BOOL)shouldShowIntroductionForInputMode:(id)a3;
+ (id)displayArtwork:(id)a3;
+ (id)displayDescription:(id)a3;
+ (id)displayTitle:(id)a3;
- (UIKBMultilingualSettingIntroductionView)initWithInputMode:(id)a3 frame:(CGRect)a4;
- (void)_updateContainer;
- (void)continueButtonTapped;
- (void)layoutSubviews;
- (void)settingButtonTapped;
@end

@implementation UIKBMultilingualSettingIntroductionView

+ (BOOL)shouldShowIntroductionForInputMode:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![objc_msgSend(a1 "superclass")])
  {
    goto LABEL_28;
  }

  v5 = [v4 languageWithRegion];
  v6 = [v5 isEqualToString:@"en_IN"];

  if (v6)
  {
    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
      v7 = [v4 isMultiscript] ^ 1;
      goto LABEL_29;
    }

LABEL_28:
    LOBYTE(v7) = 0;
    goto LABEL_29;
  }

  v8 = +[UIKeyboardInputModeController sharedInputModeController];
  v9 = [v8 activeInputModeIdentifiers];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
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

    v17 = [v4 languageWithRegion];
    v18 = [v17 isEqualToString:@"ko_KR"];

    if (v18)
    {
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && (UIKeyboardInputModeIsKoreanEnglishBilingual(v4) & 1) == 0)
      {
        LOBYTE(v7) = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;
        goto LABEL_26;
      }
    }

    else
    {
      v19 = [v4 languageWithRegion];
      v20 = [v19 isEqualToString:@"ar"];

      if (!v20)
      {

        goto LABEL_28;
      }

      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        v21 = [v4 softwareLayout];
        LOBYTE(v7) = ([v21 isEqualToString:@"Arabic-With-QWERTY"] & 1) == 0 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;

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

+ (id)displayTitle:(id)a3
{
  v3 = a3;
  v4 = [v3 languageWithRegion];
  v5 = [v4 isEqualToString:@"ko_KR"];

  if (v5)
  {
    v6 = @"Type Korean and English";
  }

  else
  {
    v7 = [v3 languageWithRegion];
    v8 = [v7 isEqualToString:@"ar"];

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

+ (id)displayDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 languageWithRegion];
  v5 = [v4 isEqualToString:@"ko_KR"];

  if (v5)
  {
    v6 = @"Type both Korean and English on the same keyboard";
  }

  else
  {
    v7 = [v3 languageWithRegion];
    v8 = [v7 isEqualToString:@"ar"];

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

- (UIKBMultilingualSettingIntroductionView)initWithInputMode:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v149[19] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v148.receiver = self;
  v148.super_class = UIKBMultilingualSettingIntroductionView;
  v10 = [(UIView *)&v148 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(UIKBMultilingualSettingIntroductionView *)v10 setInputMode:v9];
    [(UIView *)v11 setAutoresizingMask:18];
    v12 = [(UIView *)v11 _inheritedRenderConfig];
    v13 = -[_UIBackdropView initWithStyle:]([_UIBackdropView alloc], "initWithStyle:", [v12 backdropStyle]);
    [(UIKBMultilingualSettingIntroductionView *)v11 setBackdropView:v13];

    v14 = [(UIKBMultilingualSettingIntroductionView *)v11 backdropView];
    [(UIView *)v11 addSubview:v14];

    v15 = [objc_opt_class() displayTitle:v9];
    v16 = [objc_opt_class() displayDescription:v9];
    v17 = _UILocalizedStringInSystemLanguage(@"Set Up in Settings", @"Set Up in Settings");
    v18 = _UILocalizedStringInSystemLanguage(@"Continue without Setting Up", @"Continue without Setting Up");
    v146 = v12;
    if ([v12 lightKeyboard])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v96 = ;
    v19 = [objc_opt_class() displayArtwork:v9];
    [(UIKBMultilingualSettingIntroductionView *)v11 setArtworkView:v19];

    v20 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    [(UIView *)v11 addSubview:v21];

    v22 = [UILabel alloc];
    v23 = *MEMORY[0x1E695F058];
    v24 = *(MEMORY[0x1E695F058] + 8);
    v25 = *(MEMORY[0x1E695F058] + 16);
    v26 = *(MEMORY[0x1E695F058] + 24);
    v27 = [(UILabel *)v22 initWithFrame:*MEMORY[0x1E695F058], v24, v25, v26];
    [(UIKBMultilingualSettingIntroductionView *)v11 setTitleLabel:v27];

    v28 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

    v29 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [v29 setTextColor:v96];

    v30 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [v30 setTextAlignment:1];

    v31 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [v31 setText:v15];

    v32 = [(UIKBMultilingualIntroductionView *)v11 titleLabelFont];
    [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    v33 = v147 = v9;
    [v33 setFont:v32];

    v34 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    [(UIView *)v11 addSubview:v34];

    v35 = [[UILabel alloc] initWithFrame:v23, v24, v25, v26];
    [(UIKBMultilingualSettingIntroductionView *)v11 setDescriptionLabel:v35];

    v36 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];

    v37 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [v37 setTextColor:v96];

    v38 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [v38 setTextAlignment:1];

    v39 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [v39 setText:v16];

    v40 = [(UIKBMultilingualIntroductionView *)v11 descriptionLabelFont];
    v41 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [v41 setFont:v40];

    v42 = [(UIKBMultilingualIntroductionView *)v11 descriptionLabelNumberOfLines];
    v43 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [v43 setNumberOfLines:v42];

    v44 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    [(UIView *)v11 addSubview:v44];

    v45 = +[UIButtonConfiguration filledButtonConfiguration];
    [v45 setCornerStyle:3];
    v145 = v45;
    [v45 setTitle:v17];
    v46 = [UIButton buttonWithType:1];
    [(UIKBMultilingualSettingIntroductionView *)v11 setSettingButton:v46];

    v47 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

    v48 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [v48 setConfiguration:v45];

    v49 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [v49 addTarget:v11 action:sel_settingButtonTapped forControlEvents:64];

    v50 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    [(UIView *)v11 addSubview:v50];

    v51 = [[UIButton alloc] initWithFrame:v23, v24, v25, v26];
    [(UIKBMultilingualSettingIntroductionView *)v11 setContinueButton:v51];

    v52 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

    v53 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [v53 setTitle:v18 forState:0];

    v54 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v55 = +[UIColor linkColor];
    [v54 setTitleColor:v55 forState:0];

    v56 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v57 = +[UIColor linkColor];
    [v56 setTitleColor:v57 forState:0];

    v58 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [v58 addTarget:v11 action:sel_continueButtonTapped forControlEvents:64];

    v59 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    [(UIView *)v11 addSubview:v59];

    v113 = MEMORY[0x1E69977A0];
    v144 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    v143 = [v144 topAnchor];
    v142 = [(UIView *)v11 topAnchor];
    v141 = [v143 constraintGreaterThanOrEqualToAnchor:v142 constant:15.0];
    v149[0] = v141;
    v140 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    v139 = [v140 heightAnchor];
    v138 = [v139 constraintEqualToConstant:150.0];
    v149[1] = v138;
    v137 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    v136 = [v137 centerXAnchor];
    v135 = [(UIView *)v11 centerXAnchor];
    v134 = [v136 constraintEqualToAnchor:v135];
    v149[2] = v134;
    v133 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    v132 = [v133 widthAnchor];
    v131 = [(UIView *)v11 widthAnchor];
    v130 = [v132 constraintEqualToAnchor:v131 multiplier:0.7];
    v149[3] = v130;
    v129 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    v127 = [v129 topAnchor];
    v128 = [(UIKBMultilingualSettingIntroductionView *)v11 artworkView];
    v126 = [v128 bottomAnchor];
    v125 = [v127 constraintEqualToAnchor:v126 constant:15.0];
    v149[4] = v125;
    v124 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    v123 = [v124 centerXAnchor];
    v122 = [(UIView *)v11 centerXAnchor];
    v121 = [v123 constraintEqualToAnchor:v122];
    v149[5] = v121;
    v120 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    v119 = [v120 widthAnchor];
    v118 = [(UIView *)v11 widthAnchor];
    v117 = [v119 constraintEqualToAnchor:v118 multiplier:0.7];
    v149[6] = v117;
    v116 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    v114 = [v116 topAnchor];
    v115 = [(UIKBMultilingualSettingIntroductionView *)v11 titleLabel];
    v112 = [v115 bottomAnchor];
    v111 = [v114 constraintEqualToAnchor:v112 constant:12.0];
    v149[7] = v111;
    v110 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    v109 = [v110 centerXAnchor];
    v108 = [(UIView *)v11 centerXAnchor];
    v107 = [v109 constraintEqualToAnchor:v108];
    v149[8] = v107;
    v106 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    v105 = [v106 widthAnchor];
    v103 = [(UIView *)v11 widthAnchor];
    v101 = [v105 constraintEqualToAnchor:v103 multiplier:0.7];
    v149[9] = v101;
    v100 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    v95 = [v100 topAnchor];
    v97 = [(UIKBMultilingualSettingIntroductionView *)v11 descriptionLabel];
    v94 = [v97 bottomAnchor];
    v93 = [v95 constraintEqualToAnchor:v94 constant:12.0];
    v149[10] = v93;
    v92 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    v91 = [v92 centerXAnchor];
    v90 = [(UIView *)v11 centerXAnchor];
    v89 = [v91 constraintEqualToAnchor:v90];
    v149[11] = v89;
    v88 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    v87 = [v88 widthAnchor];
    v86 = [(UIView *)v11 widthAnchor];
    v85 = [v87 constraintEqualToAnchor:v86 multiplier:0.7];
    v149[12] = v85;
    v84 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    v83 = [v84 heightAnchor];
    v82 = [v83 constraintEqualToConstant:42.0];
    v149[13] = v82;
    v81 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v79 = [v81 topAnchor];
    v80 = [(UIKBMultilingualSettingIntroductionView *)v11 settingButton];
    v78 = [v80 bottomAnchor];
    v77 = [v79 constraintEqualToAnchor:v78 constant:12.0];
    v149[14] = v77;
    v76 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v75 = [v76 centerXAnchor];
    v74 = [(UIView *)v11 centerXAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v149[15] = v73;
    v72 = [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v71 = [v72 widthAnchor];
    v70 = [(UIView *)v11 widthAnchor];
    v60 = [v71 constraintEqualToAnchor:v70 multiplier:0.7];
    v149[16] = v60;
    [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v61 = v104 = v15;
    [v61 heightAnchor];
    v62 = v102 = v16;
    [v62 constraintEqualToConstant:21.0];
    v63 = v99 = v18;
    v149[17] = v63;
    v64 = [(UIView *)v11 bottomAnchor];
    [(UIKBMultilingualSettingIntroductionView *)v11 continueButton];
    v65 = v98 = v17;
    v66 = [v65 bottomAnchor];
    v67 = [v64 constraintEqualToAnchor:v66 constant:40.0];
    v149[18] = v67;
    v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:19];
    [v113 activateConstraints:v68];

    v9 = v147;
  }

  return v11;
}

+ (id)displayArtwork:(id)a3
{
  v3 = a3;
  v4 = [v3 languageWithRegion];
  if ([v4 isEqualToString:@"ko_KR"])
  {

LABEL_4:
    v7 = [v3 languageWithRegion];
    v8 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:v7 andLanguage2:@"en"];

    goto LABEL_6;
  }

  v5 = [v3 languageWithRegion];
  v6 = [v5 isEqualToString:@"ar"];

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
  v3 = [(UIView *)self _rootInputWindowController];
  v4 = [v3 _inputAccessoryView];

  v5 = [(UIView *)self _rootInputWindowController];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 _inputAccessoryView];
    goto LABEL_11;
  }

  v8 = [v5 _inputAssistantView];
  v9 = [v8 superview];
  if (v9)
  {
    v10 = v9;
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 _showsScribbleIconsInAssistantView];

    if ((v12 & 1) == 0)
    {
      v6 = [(UIView *)self _rootInputWindowController];
      v7 = [v6 _inputAssistantView];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v13 = [(UIView *)self _rootInputWindowController];
  v14 = [v13 _inputView];

  v15 = [(UIView *)self _rootInputWindowController];
  v6 = v15;
  if (v14)
  {
    [v15 _inputView];
  }

  else
  {
    [v15 view];
  }
  v7 = ;
LABEL_11:
  v16 = v7;
  v40 = [v7 topAnchor];

  v17 = +[UIKeyboardImpl isFloating];
  v18 = [(UIView *)self _rootInputWindowController];
  v19 = v18;
  if (v17)
  {
    v20 = [v18 _inputView];

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
    v20 = [v18 view];

    v26 = 0.0;
    v22 = 0.0;
    v24 = 0.0;
    v28 = 0.0;
  }

  v29 = [(UIView *)self topAnchor];
  v30 = [v29 constraintEqualToAnchor:v40 constant:v22];
  [v30 setActive:1];

  v31 = [(UIView *)self bottomAnchor];
  v32 = [v20 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v24];
  [v33 setActive:1];

  v34 = [(UIView *)self leftAnchor];
  v35 = [v20 leftAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v26];
  [v36 setActive:1];

  v37 = [(UIView *)self rightAnchor];
  v38 = [v20 rightAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v28];
  [v39 setActive:1];
}

@end
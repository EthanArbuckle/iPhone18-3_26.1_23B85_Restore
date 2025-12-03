@interface UIKBMultilingualKeyboardIntroductionView
+ (BOOL)shouldShowIntroductionForInputMode:(id)mode;
+ (id)displayArtwork:(id)artwork;
+ (id)displayDescription:(id)description;
+ (id)displayTitle:(id)title;
- (UIKBMultilingualKeyboardIntroductionView)initWithInputMode:(id)mode frame:(CGRect)frame;
- (void)_updateContainer;
- (void)_updatePath;
- (void)continueButtonTapped;
- (void)layoutSubviews;
@end

@implementation UIKBMultilingualKeyboardIntroductionView

+ (BOOL)shouldShowIntroductionForInputMode:(id)mode
{
  modeCopy = mode;
  if (_os_feature_enabled_impl() && [objc_msgSend(self "superclass")] && _os_feature_enabled_impl())
  {
    multilingualSet = [modeCopy multilingualSet];
    v6 = [multilingualSet count] > 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayTitle:(id)title
{
  identifier = [title identifier];
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

  v6 = [UIKeyboardInputMode _displayNameForMultilingualSet:v5 forDisplayInLists:0 usingDeviceLanguage:1 context:5];
  v7 = MEMORY[0x1E696AEC0];
  v8 = _UILocalizedStringInSystemLanguage(@"Type %@", @"Type %@");
  v9 = [v7 stringWithFormat:v8, v6];

  return v9;
}

+ (id)displayDescription:(id)description
{
  descriptionCopy = description;
  softwareLayout = [descriptionCopy softwareLayout];
  v5 = [softwareLayout containsString:@"-With-"];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = @"Type in both languages as you normally would and the keyboard will automatically handle the rest.";
LABEL_5:
    v10 = _UILocalizedStringInSystemLanguage(v7, v7);
    v11 = [v6 stringWithFormat:v10];

    goto LABEL_6;
  }

  multilingualSet = [descriptionCopy multilingualSet];
  v9 = [multilingualSet count];

  if (v9 == 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = @"Type both languages on the same keyboard. Customize in Settings.";
    goto LABEL_5;
  }

  if ([descriptionCopy isMultiscript])
  {
    multilingualSet2 = [descriptionCopy multilingualSet];
    v14 = [multilingualSet2 count];

    if (v14 != 5)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = @"Type both languages on the same keyboard.\nTap to switch scripts.";
      goto LABEL_5;
    }

    v11 = _UILocalizedStringInSystemLanguage(@"All on the same keyboard.\nTap to switch scripts.", @"All on the same keyboard.\nTap to switch scripts.");
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Invalid Multilingual Configuration for Education UI", buf, 2u);
      }
    }

    else
    {
      v15 = *(__UILogGetCategoryCachedImpl("Assert", &displayDescription____s_category) + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Invalid Multilingual Configuration for Education UI", v17, 2u);
      }
    }

    v11 = &stru_1EFB14550;
  }

LABEL_6:

  return v11;
}

+ (id)displayArtwork:(id)artwork
{
  artworkCopy = artwork;
  if ([artworkCopy isMultiscript])
  {
    multiscriptSet = [artworkCopy multiscriptSet];
    v5 = [multiscriptSet count];
    if (v5 <= 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [multiscriptSet objectAtIndexedSubscript:v5 > 2];
    languageWithRegion = [v7 languageWithRegion];

    v9 = [multiscriptSet objectAtIndexedSubscript:v6];
    languageWithRegion2 = [v9 languageWithRegion];

    v11 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:languageWithRegion andLanguage2:languageWithRegion2];
  }

  else
  {
    multilingualSet = [artworkCopy multilingualSet];
    v13 = [multilingualSet count];

    if (v13)
    {
      multilingualSet2 = [artworkCopy multilingualSet];
      v15 = [multilingualSet2 count];

      if (v15 != 2)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v28 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "bilingual keyboard is only supported", buf, 2u);
          }
        }

        else
        {
          v27 = *(__UILogGetCategoryCachedImpl("Assert", &displayArtwork____s_category) + 8);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *v29 = 0;
            _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "bilingual keyboard is only supported", v29, 2u);
          }
        }
      }

      multilingualSet3 = [artworkCopy multilingualSet];
      firstObject = [multilingualSet3 firstObject];
      languageWithRegion3 = [firstObject languageWithRegion];

      multilingualSet4 = [artworkCopy multilingualSet];
      lastObject = [multilingualSet4 lastObject];
      languageWithRegion4 = [lastObject languageWithRegion];

      v11 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:languageWithRegion3 andLanguage2:languageWithRegion4];
    }

    else
    {
      multilingualLanguages = [artworkCopy multilingualLanguages];
      firstObject2 = [multilingualLanguages firstObject];

      multilingualLanguages2 = [artworkCopy multilingualLanguages];
      lastObject2 = [multilingualLanguages2 lastObject];

      v11 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:firstObject2 andLanguage2:lastObject2];
    }
  }

  return v11;
}

- (UIKBMultilingualKeyboardIntroductionView)initWithInputMode:(id)mode frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v232[14] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  v220.receiver = self;
  v220.super_class = UIKBMultilingualKeyboardIntroductionView;
  height = [(UIView *)&v220 initWithFrame:x, y, width, height];
  v10 = height;
  if (height)
  {
    [(UIKBMultilingualKeyboardIntroductionView *)height setInputMode:modeCopy];
    [(UIView *)v10 setAutoresizingMask:18];
    _inheritedRenderConfig = [(UIView *)v10 _inheritedRenderConfig];
    v11 = -[_UIBackdropView initWithStyle:]([_UIBackdropView alloc], "initWithStyle:", [_inheritedRenderConfig backdropStyle]);
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setBackdropView:v11];

    backdropView = [(UIKBMultilingualKeyboardIntroductionView *)v10 backdropView];
    [(UIView *)v10 addSubview:backdropView];

    v142 = [objc_opt_class() displayTitle:modeCopy];
    v141 = [objc_opt_class() displayDescription:modeCopy];
    v140 = _UILocalizedStringInSystemLanguage(@"Continue", @"Continue");
    if ([_inheritedRenderConfig lightKeyboard])
    {
      +[UIColor blackColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v212 = ;
    v13 = [UILabel alloc];
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
    v18 = [(UILabel *)v13 initWithFrame:*MEMORY[0x1E695F058], v15, v16, v17];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setTitleLabel:v18];

    titleLabel = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [titleLabel2 setTextColor:v212];

    titleLabel3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [titleLabel3 setTextAlignment:1];

    titleLabel4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [titleLabel4 setText:v142];

    titleLabelFont = [(UIKBMultilingualIntroductionView *)v10 titleLabelFont];
    titleLabel5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [titleLabel5 setFont:titleLabelFont];

    titleLabel6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [(UIView *)v10 addSubview:titleLabel6];

    v26 = [objc_opt_class() displayArtwork:modeCopy];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setArtworkView:v26];

    artworkView = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    [artworkView setTranslatesAutoresizingMaskIntoConstraints:0];

    artworkView2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    [(UIView *)v10 addSubview:artworkView2];

    v29 = [[UILabel alloc] initWithFrame:v14, v15, v16, v17];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setDescriptionLabel:v29];

    descriptionLabel = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    descriptionLabel2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [descriptionLabel2 setTextColor:v212];

    descriptionLabel3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [descriptionLabel3 setTextAlignment:1];

    descriptionLabel4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [descriptionLabel4 setText:v141];

    descriptionLabelFont = [(UIKBMultilingualIntroductionView *)v10 descriptionLabelFont];
    descriptionLabel5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [descriptionLabel5 setFont:descriptionLabelFont];

    descriptionLabelNumberOfLines = [(UIKBMultilingualIntroductionView *)v10 descriptionLabelNumberOfLines];
    descriptionLabel6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [descriptionLabel6 setNumberOfLines:descriptionLabelNumberOfLines];

    descriptionLabel7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [(UIView *)v10 addSubview:descriptionLabel7];

    v39 = [[UIButton alloc] initWithFrame:v14, v15, v16, v17];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setContinueButton:v39];

    continueButton = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [continueButton setTranslatesAutoresizingMaskIntoConstraints:0];

    continueButton2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [continueButton2 setTitle:v140 forState:0];

    continueButton3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v43 = +[UIColor linkColor];
    [continueButton3 setTitleColor:v43 forState:0];

    continueButton4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v45 = +[UIColor linkColor];
    [continueButton4 setTitleColor:v45 forState:0];

    continueButton5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [continueButton5 addTarget:v10 action:sel_continueButtonTapped forControlEvents:64];

    continueButton6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [(UIView *)v10 addSubview:continueButton6];

    array = [MEMORY[0x1E695DF70] array];
    bottomAnchor = [(UIView *)v10 bottomAnchor];
    continueButton7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    bottomAnchor2 = [continueButton7 bottomAnchor];
    v211 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:35.0];

    LODWORD(v51) = 1148846080;
    [v211 setPriority:v51];
    artworkView3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    topAnchor = [artworkView3 topAnchor];
    topAnchor2 = [(UIView *)v10 topAnchor];
    v198 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:15.0];
    v232[0] = v198;
    artworkView4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    centerXAnchor = [artworkView4 centerXAnchor];
    centerXAnchor2 = [(UIView *)v10 centerXAnchor];
    v182 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v232[1] = v182;
    artworkView5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    heightAnchor = [artworkView5 heightAnchor];
    v177 = [heightAnchor constraintEqualToConstant:150.0];
    v232[2] = v177;
    artworkView6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    widthAnchor = [artworkView6 widthAnchor];
    widthAnchor2 = [(UIView *)v10 widthAnchor];
    v173 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.7];
    v232[3] = v173;
    titleLabel7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    topAnchor3 = [titleLabel7 topAnchor];
    artworkView7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    bottomAnchor3 = [artworkView7 bottomAnchor];
    v168 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:6.0];
    v232[4] = v168;
    titleLabel8 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    centerXAnchor3 = [titleLabel8 centerXAnchor];
    centerXAnchor4 = [(UIView *)v10 centerXAnchor];
    v164 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v232[5] = v164;
    descriptionLabel8 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    topAnchor4 = [descriptionLabel8 topAnchor];
    titleLabel9 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    bottomAnchor4 = [titleLabel9 bottomAnchor];
    v159 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:6.0];
    v232[6] = v159;
    descriptionLabel9 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    centerXAnchor5 = [descriptionLabel9 centerXAnchor];
    centerXAnchor6 = [(UIView *)v10 centerXAnchor];
    v155 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v232[7] = v155;
    descriptionLabel10 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    widthAnchor3 = [descriptionLabel10 widthAnchor];
    widthAnchor4 = [(UIView *)v10 widthAnchor];
    v151 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.9];
    v232[8] = v151;
    continueButton8 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    topAnchor5 = [continueButton8 topAnchor];
    descriptionLabel11 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    bottomAnchor5 = [descriptionLabel11 bottomAnchor];
    v146 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:15.0];
    v232[9] = v146;
    continueButton9 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    centerXAnchor7 = [continueButton9 centerXAnchor];
    centerXAnchor8 = [(UIView *)v10 centerXAnchor];
    v52 = [centerXAnchor7 constraintEqualToAnchor:centerXAnchor8];
    v232[10] = v52;
    continueButton10 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    widthAnchor5 = [continueButton10 widthAnchor];
    widthAnchor6 = [(UIView *)v10 widthAnchor];
    v56 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.7];
    v232[11] = v56;
    continueButton11 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    heightAnchor2 = [continueButton11 heightAnchor];
    v59 = [heightAnchor2 constraintEqualToConstant:21.0];
    v232[12] = v59;
    v232[13] = v211;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v232 count:14];
    [array addObjectsFromArray:v60];

    if ([modeCopy showsTransliterationCandidates])
    {
      v222 = 0;
      v223 = &v222;
      v224 = 0x2050000000;
      v61 = _MergedGlobals_1_21;
      v225 = _MergedGlobals_1_21;
      if (!_MergedGlobals_1_21)
      {
        v221[0] = MEMORY[0x1E69E9820];
        v221[1] = 3221225472;
        v221[2] = __getTUIPredictionViewClass_block_invoke;
        v221[3] = &unk_1E70F2F20;
        v221[4] = &v222;
        __getTUIPredictionViewClass_block_invoke(v221);
        v61 = v223[3];
      }

      v62 = v61;
      _Block_object_dispose(&v222, 8);
      v63 = objc_alloc_init(v61);
      [(UIKBMultilingualKeyboardIntroductionView *)v10 setPredictionView:v63];

      _inheritedRenderConfig2 = [(UIView *)v10 _inheritedRenderConfig];
      predictionView = [(UIKBMultilingualKeyboardIntroductionView *)v10 predictionView];
      [predictionView setRenderConfig:_inheritedRenderConfig2];

      v66 = MEMORY[0x1E69D9570];
      v67 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      v231[0] = v67;
      v68 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      v231[1] = v68;
      v69 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      v231[2] = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v231 count:3];
      v71 = [v66 listWithCorrections:0 predictions:v70];
      predictionView2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 predictionView];
      [predictionView2 setAutocorrectionList:v71];

      v73 = objc_alloc_init(UIMultiscriptCandidateView);
      [(UIKBMultilingualKeyboardIntroductionView *)v10 setMultiscriptCandidateView:v73];

      multiscriptCandidateView = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [multiscriptCandidateView setTranslatesAutoresizingMaskIntoConstraints:0];

      multiscriptCandidateView2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [multiscriptCandidateView2 setUserInteractionEnabled:0];

      v76 = [UIAction actionWithHandler:&__block_literal_global_476];
      multiscriptCandidateView3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [multiscriptCandidateView3 setAlternativeCandidateAction:v76];

      multiscriptCandidateView4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      predictionView3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 predictionView];
      [multiscriptCandidateView4 reloadArrangedSubviews:predictionView3];

      multiscriptCandidateView5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [multiscriptCandidateView5 setAlpha:0.5];

      multiscriptCandidateView6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [(UIView *)v10 addSubview:multiscriptCandidateView6];

      v82 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      systemInputAssistantViewController = [v82 systemInputAssistantViewController];

      traitCollection = [(UIView *)v10 traitCollection];
      [systemInputAssistantViewController preferredHeightForTraitCollection:traitCollection];
      v85 = v84;

      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
      {
        traitCollection2 = [(UIView *)v10 traitCollection];
        [systemInputAssistantViewController _centerViewWidthForTraitCollection:traitCollection2];
        v97 = v96;

        multiscriptCandidateView7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        topAnchor6 = [multiscriptCandidateView7 topAnchor];
        topAnchor7 = [(UIView *)v10 topAnchor];
        v195 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
        v230[0] = v195;
        multiscriptCandidateView8 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        centerXAnchor9 = [multiscriptCandidateView8 centerXAnchor];
        centerXAnchor10 = [(UIView *)v10 centerXAnchor];
        v86 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
        v230[1] = v86;
        multiscriptCandidateView9 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        widthAnchor7 = [multiscriptCandidateView9 widthAnchor];
        trailingAnchor = [widthAnchor7 constraintEqualToConstant:v97];
        v230[2] = trailingAnchor;
        multiscriptCandidateView10 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        heightAnchor3 = [multiscriptCandidateView10 heightAnchor];
        v91HeightAnchor = [heightAnchor3 constraintEqualToConstant:v85];
        v230[3] = v91HeightAnchor;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v230 count:4];
        [array addObjectsFromArray:v93];
      }

      else
      {
        multiscriptCandidateView7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        topAnchor6 = [multiscriptCandidateView7 topAnchor];
        topAnchor7 = [(UIView *)v10 topAnchor];
        v195 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
        v229[0] = v195;
        multiscriptCandidateView8 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        centerXAnchor9 = [multiscriptCandidateView8 leadingAnchor];
        centerXAnchor10 = [(UIView *)v10 leadingAnchor];
        v86 = [centerXAnchor9 constraintEqualToAnchor:centerXAnchor10];
        v229[1] = v86;
        multiscriptCandidateView9 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        widthAnchor7 = [multiscriptCandidateView9 trailingAnchor];
        trailingAnchor = [(UIView *)v10 trailingAnchor];
        multiscriptCandidateView10 = [widthAnchor7 constraintEqualToAnchor:trailingAnchor];
        v229[2] = multiscriptCandidateView10;
        heightAnchor3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v91HeightAnchor = [heightAnchor3 heightAnchor];
        v93 = [v91HeightAnchor constraintEqualToConstant:v85];
        v229[3] = v93;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:4];
        [array addObjectsFromArray:v94];
      }

      multiscriptCandidateView11 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      arrangedSubviews = [multiscriptCandidateView11 arrangedSubviews];
      lastObject = [arrangedSubviews lastObject];

      if (lastObject)
      {
        v100 = objc_alloc_init(UIView);
        [(UIKBMultilingualKeyboardIntroductionView *)v10 setHighlight:v100];

        lightKeyboard = [_inheritedRenderConfig lightKeyboard];
        v102 = UIKeyboardGetLightCandidateHighlightColor();
        v103 = v102;
        if (lightKeyboard)
        {
          v104 = v102;
        }

        else
        {
          v105 = +[UIDevice currentDevice];
          userInterfaceIdiom = [v105 userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [UIColor colorWithRed:0.337254902 green:0.329411765 blue:0.333333333 alpha:1.0];
          }

          else
          {
            [UIColor colorWithRed:0.450980392 green:0.450980392 blue:0.450980392 alpha:1.0];
          }
          v104 = ;
        }

        highlight = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        [highlight setBackgroundColor:v104];

        highlight2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        [highlight2 setTranslatesAutoresizingMaskIntoConstraints:0];

        highlight3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v110 = v85 * 0.75;
        [highlight3 _setCornerRadius:v110 * 0.5];

        highlight4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        [highlight4 setUserInteractionEnabled:0];

        highlight5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        multiscriptCandidateView12 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        [(UIView *)v10 insertSubview:highlight5 belowSubview:multiscriptCandidateView12];

        highlight6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        centerXAnchor11 = [highlight6 centerXAnchor];
        centerXAnchor12 = [lastObject centerXAnchor];
        v192 = [centerXAnchor11 constraintEqualToAnchor:centerXAnchor12 constant:-3.0];
        v228[0] = v192;
        highlight7 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        centerYAnchor = [highlight7 centerYAnchor];
        centerYAnchor2 = [lastObject centerYAnchor];
        v115 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:2.0];
        v228[1] = v115;
        highlight8 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        widthAnchor8 = [highlight8 widthAnchor];
        v118 = [widthAnchor8 constraintEqualToConstant:v110];
        v228[2] = v118;
        highlight9 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        heightAnchor4 = [highlight9 heightAnchor];
        v121 = [heightAnchor4 constraintEqualToConstant:v110];
        v228[3] = v121;
        v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:4];
        [array addObjectsFromArray:v122];
      }

      v123 = objc_alloc_init(UIKBMultilingualIntroductionArrowView);
      [(UIKBMultilingualKeyboardIntroductionView *)v10 setArrowView:v123];

      arrowView = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      [arrowView setTranslatesAutoresizingMaskIntoConstraints:0];

      arrowView2 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      [(UIView *)v10 addSubview:arrowView2];

      arrowView3 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      topAnchor8 = [arrowView3 topAnchor];
      topAnchor9 = [(UIView *)v10 topAnchor];
      v193 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
      v227[0] = v193;
      arrowView4 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      leadingAnchor = [arrowView4 leadingAnchor];
      leadingAnchor2 = [(UIView *)v10 leadingAnchor];
      v179 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v227[1] = v179;
      arrowView5 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      bottomAnchor6 = [arrowView5 bottomAnchor];
      bottomAnchor7 = [(UIView *)v10 bottomAnchor];
      v129 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
      v227[2] = v129;
      arrowView6 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      trailingAnchor2 = [arrowView6 trailingAnchor];
      trailingAnchor3 = [(UIView *)v10 trailingAnchor];
      v133 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
      v227[3] = v133;
      v134 = [MEMORY[0x1E695DEC8] arrayWithObjects:v227 count:4];
      [array addObjectsFromArray:v134];
    }

    [MEMORY[0x1E69977A0] activateConstraints:array];
    [(UIView *)v10 setSemanticContentAttribute:3];
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    subviews = [(UIView *)v10 subviews];
    v136 = [subviews countByEnumeratingWithState:&v216 objects:v226 count:16];
    if (v136)
    {
      v137 = *v217;
      do
      {
        for (i = 0; i != v136; ++i)
        {
          if (*v217 != v137)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v216 + 1) + 8 * i) setSemanticContentAttribute:3];
        }

        v136 = [subviews countByEnumeratingWithState:&v216 objects:v226 count:16];
      }

      while (v136);
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  highlight = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
  [highlight frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  titleLabel = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
  [titleLabel frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.receiver = self;
  v24.super_class = UIKBMultilingualKeyboardIntroductionView;
  [(UIView *)&v24 layoutSubviews];
  [(UIKBMultilingualKeyboardIntroductionView *)self _updateContainer];
  titleLabel2 = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
  [titleLabel2 frame];
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  if (!CGRectEqualToRect(v25, v27))
  {

    goto LABEL_5;
  }

  highlight2 = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
  [highlight2 frame];
  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  v23 = CGRectEqualToRect(v26, v28);

  if (!v23)
  {
LABEL_5:
    [(UIKBMultilingualKeyboardIntroductionView *)self _updatePath];
  }
}

- (void)continueButtonTapped
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 dismissMultilingualKeyboardTip];
}

- (void)_updatePath
{
  arrowView = [(UIKBMultilingualKeyboardIntroductionView *)self arrowView];

  if (arrowView)
  {
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    titleLabel = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
    [titleLabel frame];
    if (_shouldReverseLayoutDirection)
    {
      MinX = CGRectGetMinX(*&v6);
      v11 = -15.0;
    }

    else
    {
      MinX = CGRectGetMaxX(*&v6);
      v11 = 15.0;
    }

    v12 = MinX + v11;

    titleLabel2 = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
    [titleLabel2 frame];
    MidY = CGRectGetMidY(v21);

    highlight = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
    [highlight frame];
    MidX = CGRectGetMidX(v22);
    highlight2 = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
    [highlight2 frame];
    v18 = CGRectGetMaxY(v23) + 5.0;

    arrowView2 = [(UIKBMultilingualKeyboardIntroductionView *)self arrowView];
    [arrowView2 setStartPoint:v12 endPoint:{MidY, MidX, v18}];
  }
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
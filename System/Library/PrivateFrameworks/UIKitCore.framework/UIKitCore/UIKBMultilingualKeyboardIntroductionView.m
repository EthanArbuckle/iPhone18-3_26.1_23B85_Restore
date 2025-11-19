@interface UIKBMultilingualKeyboardIntroductionView
+ (BOOL)shouldShowIntroductionForInputMode:(id)a3;
+ (id)displayArtwork:(id)a3;
+ (id)displayDescription:(id)a3;
+ (id)displayTitle:(id)a3;
- (UIKBMultilingualKeyboardIntroductionView)initWithInputMode:(id)a3 frame:(CGRect)a4;
- (void)_updateContainer;
- (void)_updatePath;
- (void)continueButtonTapped;
- (void)layoutSubviews;
@end

@implementation UIKBMultilingualKeyboardIntroductionView

+ (BOOL)shouldShowIntroductionForInputMode:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl() && [objc_msgSend(a1 "superclass")] && _os_feature_enabled_impl())
  {
    v5 = [v4 multilingualSet];
    v6 = [v5 count] > 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayTitle:(id)a3
{
  v3 = [a3 identifier];
  v4 = [MEMORY[0x1E695DF58] preferredLanguages];
  v5 = TIInputModeGetMultilingualSetFromInputModesWithPreferredLanguages();

  v6 = [UIKeyboardInputMode _displayNameForMultilingualSet:v5 forDisplayInLists:0 usingDeviceLanguage:1 context:5];
  v7 = MEMORY[0x1E696AEC0];
  v8 = _UILocalizedStringInSystemLanguage(@"Type %@", @"Type %@");
  v9 = [v7 stringWithFormat:v8, v6];

  return v9;
}

+ (id)displayDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 softwareLayout];
  v5 = [v4 containsString:@"-With-"];

  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = @"Type in both languages as you normally would and the keyboard will automatically handle the rest.";
LABEL_5:
    v10 = _UILocalizedStringInSystemLanguage(v7, v7);
    v11 = [v6 stringWithFormat:v10];

    goto LABEL_6;
  }

  v8 = [v3 multilingualSet];
  v9 = [v8 count];

  if (v9 == 2)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = @"Type both languages on the same keyboard. Customize in Settings.";
    goto LABEL_5;
  }

  if ([v3 isMultiscript])
  {
    v13 = [v3 multilingualSet];
    v14 = [v13 count];

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

+ (id)displayArtwork:(id)a3
{
  v3 = a3;
  if ([v3 isMultiscript])
  {
    v4 = [v3 multiscriptSet];
    v5 = [v4 count];
    if (v5 <= 2)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [v4 objectAtIndexedSubscript:v5 > 2];
    v8 = [v7 languageWithRegion];

    v9 = [v4 objectAtIndexedSubscript:v6];
    v10 = [v9 languageWithRegion];

    v11 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:v8 andLanguage2:v10];
  }

  else
  {
    v12 = [v3 multilingualSet];
    v13 = [v12 count];

    if (v13)
    {
      v14 = [v3 multilingualSet];
      v15 = [v14 count];

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

      v16 = [v3 multilingualSet];
      v17 = [v16 firstObject];
      v18 = [v17 languageWithRegion];

      v19 = [v3 multilingualSet];
      v20 = [v19 lastObject];
      v21 = [v20 languageWithRegion];

      v11 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:v18 andLanguage2:v21];
    }

    else
    {
      v22 = [v3 multilingualLanguages];
      v23 = [v22 firstObject];

      v24 = [v3 multilingualLanguages];
      v25 = [v24 lastObject];

      v11 = [[UIKBMultilingualKeyboardArtworkView alloc] initWithLanguage1:v23 andLanguage2:v25];
    }
  }

  return v11;
}

- (UIKBMultilingualKeyboardIntroductionView)initWithInputMode:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v232[14] = *MEMORY[0x1E69E9840];
  v215 = a3;
  v220.receiver = self;
  v220.super_class = UIKBMultilingualKeyboardIntroductionView;
  v9 = [(UIView *)&v220 initWithFrame:x, y, width, height];
  v10 = v9;
  if (v9)
  {
    [(UIKBMultilingualKeyboardIntroductionView *)v9 setInputMode:v215];
    [(UIView *)v10 setAutoresizingMask:18];
    v213 = [(UIView *)v10 _inheritedRenderConfig];
    v11 = -[_UIBackdropView initWithStyle:]([_UIBackdropView alloc], "initWithStyle:", [v213 backdropStyle]);
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setBackdropView:v11];

    v12 = [(UIKBMultilingualKeyboardIntroductionView *)v10 backdropView];
    [(UIView *)v10 addSubview:v12];

    v142 = [objc_opt_class() displayTitle:v215];
    v141 = [objc_opt_class() displayDescription:v215];
    v140 = _UILocalizedStringInSystemLanguage(@"Continue", @"Continue");
    if ([v213 lightKeyboard])
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

    v19 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

    v20 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [v20 setTextColor:v212];

    v21 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [v21 setTextAlignment:1];

    v22 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [v22 setText:v142];

    v23 = [(UIKBMultilingualIntroductionView *)v10 titleLabelFont];
    v24 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [v24 setFont:v23];

    v25 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    [(UIView *)v10 addSubview:v25];

    v26 = [objc_opt_class() displayArtwork:v215];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setArtworkView:v26];

    v27 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

    v28 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    [(UIView *)v10 addSubview:v28];

    v29 = [[UILabel alloc] initWithFrame:v14, v15, v16, v17];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setDescriptionLabel:v29];

    v30 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [v31 setTextColor:v212];

    v32 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [v32 setTextAlignment:1];

    v33 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [v33 setText:v141];

    v34 = [(UIKBMultilingualIntroductionView *)v10 descriptionLabelFont];
    v35 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [v35 setFont:v34];

    v36 = [(UIKBMultilingualIntroductionView *)v10 descriptionLabelNumberOfLines];
    v37 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [v37 setNumberOfLines:v36];

    v38 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    [(UIView *)v10 addSubview:v38];

    v39 = [[UIButton alloc] initWithFrame:v14, v15, v16, v17];
    [(UIKBMultilingualKeyboardIntroductionView *)v10 setContinueButton:v39];

    v40 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

    v41 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [v41 setTitle:v140 forState:0];

    v42 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v43 = +[UIColor linkColor];
    [v42 setTitleColor:v43 forState:0];

    v44 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v45 = +[UIColor linkColor];
    [v44 setTitleColor:v45 forState:0];

    v46 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [v46 addTarget:v10 action:sel_continueButtonTapped forControlEvents:64];

    v47 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    [(UIView *)v10 addSubview:v47];

    v214 = [MEMORY[0x1E695DF70] array];
    v48 = [(UIView *)v10 bottomAnchor];
    v49 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v50 = [v49 bottomAnchor];
    v211 = [v48 constraintGreaterThanOrEqualToAnchor:v50 constant:35.0];

    LODWORD(v51) = 1148846080;
    [v211 setPriority:v51];
    v208 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    v206 = [v208 topAnchor];
    v202 = [(UIView *)v10 topAnchor];
    v198 = [v206 constraintGreaterThanOrEqualToAnchor:v202 constant:15.0];
    v232[0] = v198;
    v194 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    v190 = [v194 centerXAnchor];
    v186 = [(UIView *)v10 centerXAnchor];
    v182 = [v190 constraintEqualToAnchor:v186];
    v232[1] = v182;
    v180 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    v178 = [v180 heightAnchor];
    v177 = [v178 constraintEqualToConstant:150.0];
    v232[2] = v177;
    v176 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    v175 = [v176 widthAnchor];
    v174 = [(UIView *)v10 widthAnchor];
    v173 = [v175 constraintEqualToAnchor:v174 multiplier:0.7];
    v232[3] = v173;
    v172 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    v170 = [v172 topAnchor];
    v171 = [(UIKBMultilingualKeyboardIntroductionView *)v10 artworkView];
    v169 = [v171 bottomAnchor];
    v168 = [v170 constraintEqualToAnchor:v169 constant:6.0];
    v232[4] = v168;
    v167 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    v166 = [v167 centerXAnchor];
    v165 = [(UIView *)v10 centerXAnchor];
    v164 = [v166 constraintEqualToAnchor:v165];
    v232[5] = v164;
    v163 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    v161 = [v163 topAnchor];
    v162 = [(UIKBMultilingualKeyboardIntroductionView *)v10 titleLabel];
    v160 = [v162 bottomAnchor];
    v159 = [v161 constraintEqualToAnchor:v160 constant:6.0];
    v232[6] = v159;
    v158 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    v157 = [v158 centerXAnchor];
    v156 = [(UIView *)v10 centerXAnchor];
    v155 = [v157 constraintEqualToAnchor:v156];
    v232[7] = v155;
    v154 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    v153 = [v154 widthAnchor];
    v152 = [(UIView *)v10 widthAnchor];
    v151 = [v153 constraintEqualToAnchor:v152 multiplier:0.9];
    v232[8] = v151;
    v150 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v148 = [v150 topAnchor];
    v149 = [(UIKBMultilingualKeyboardIntroductionView *)v10 descriptionLabel];
    v147 = [v149 bottomAnchor];
    v146 = [v148 constraintEqualToAnchor:v147 constant:15.0];
    v232[9] = v146;
    v145 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v144 = [v145 centerXAnchor];
    v143 = [(UIView *)v10 centerXAnchor];
    v52 = [v144 constraintEqualToAnchor:v143];
    v232[10] = v52;
    v53 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v54 = [v53 widthAnchor];
    v55 = [(UIView *)v10 widthAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 multiplier:0.7];
    v232[11] = v56;
    v57 = [(UIKBMultilingualKeyboardIntroductionView *)v10 continueButton];
    v58 = [v57 heightAnchor];
    v59 = [v58 constraintEqualToConstant:21.0];
    v232[12] = v59;
    v232[13] = v211;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v232 count:14];
    [v214 addObjectsFromArray:v60];

    if ([v215 showsTransliterationCandidates])
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

      v64 = [(UIView *)v10 _inheritedRenderConfig];
      v65 = [(UIKBMultilingualKeyboardIntroductionView *)v10 predictionView];
      [v65 setRenderConfig:v64];

      v66 = MEMORY[0x1E69D9570];
      v67 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      v231[0] = v67;
      v68 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      v231[1] = v68;
      v69 = [MEMORY[0x1E69D95F0] candidateWithUnchangedInput:&stru_1EFB14550];
      v231[2] = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v231 count:3];
      v71 = [v66 listWithCorrections:0 predictions:v70];
      v72 = [(UIKBMultilingualKeyboardIntroductionView *)v10 predictionView];
      [v72 setAutocorrectionList:v71];

      v73 = objc_alloc_init(UIMultiscriptCandidateView);
      [(UIKBMultilingualKeyboardIntroductionView *)v10 setMultiscriptCandidateView:v73];

      v74 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [v74 setTranslatesAutoresizingMaskIntoConstraints:0];

      v75 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [v75 setUserInteractionEnabled:0];

      v76 = [UIAction actionWithHandler:&__block_literal_global_476];
      v77 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [v77 setAlternativeCandidateAction:v76];

      v78 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      v79 = [(UIKBMultilingualKeyboardIntroductionView *)v10 predictionView];
      [v78 reloadArrangedSubviews:v79];

      v80 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [v80 setAlpha:0.5];

      v81 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      [(UIView *)v10 addSubview:v81];

      v82 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v207 = [v82 systemInputAssistantViewController];

      v83 = [(UIView *)v10 traitCollection];
      [v207 preferredHeightForTraitCollection:v83];
      v85 = v84;

      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && !+[UIKeyboardImpl isFloating])
      {
        v95 = [(UIView *)v10 traitCollection];
        [v207 _centerViewWidthForTraitCollection:v95];
        v97 = v96;

        v209 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v203 = [v209 topAnchor];
        v199 = [(UIView *)v10 topAnchor];
        v195 = [v203 constraintEqualToAnchor:v199];
        v230[0] = v195;
        v191 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v187 = [v191 centerXAnchor];
        v183 = [(UIView *)v10 centerXAnchor];
        v86 = [v187 constraintEqualToAnchor:v183];
        v230[1] = v86;
        v87 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v88 = [v87 widthAnchor];
        v89 = [v88 constraintEqualToConstant:v97];
        v230[2] = v89;
        v90 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v91 = [v90 heightAnchor];
        v92 = [v91 constraintEqualToConstant:v85];
        v230[3] = v92;
        v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v230 count:4];
        [v214 addObjectsFromArray:v93];
      }

      else
      {
        v209 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v203 = [v209 topAnchor];
        v199 = [(UIView *)v10 topAnchor];
        v195 = [v203 constraintEqualToAnchor:v199];
        v229[0] = v195;
        v191 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v187 = [v191 leadingAnchor];
        v183 = [(UIView *)v10 leadingAnchor];
        v86 = [v187 constraintEqualToAnchor:v183];
        v229[1] = v86;
        v87 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v88 = [v87 trailingAnchor];
        v89 = [(UIView *)v10 trailingAnchor];
        v90 = [v88 constraintEqualToAnchor:v89];
        v229[2] = v90;
        v91 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        v92 = [v91 heightAnchor];
        v93 = [v92 constraintEqualToConstant:v85];
        v229[3] = v93;
        v94 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:4];
        [v214 addObjectsFromArray:v94];
      }

      v98 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
      v99 = [v98 arrangedSubviews];
      v210 = [v99 lastObject];

      if (v210)
      {
        v100 = objc_alloc_init(UIView);
        [(UIKBMultilingualKeyboardIntroductionView *)v10 setHighlight:v100];

        v101 = [v213 lightKeyboard];
        v102 = UIKeyboardGetLightCandidateHighlightColor();
        v103 = v102;
        if (v101)
        {
          v104 = v102;
        }

        else
        {
          v105 = +[UIDevice currentDevice];
          v106 = [v105 userInterfaceIdiom];

          if ((v106 & 0xFFFFFFFFFFFFFFFBLL) == 1)
          {
            [UIColor colorWithRed:0.337254902 green:0.329411765 blue:0.333333333 alpha:1.0];
          }

          else
          {
            [UIColor colorWithRed:0.450980392 green:0.450980392 blue:0.450980392 alpha:1.0];
          }
          v104 = ;
        }

        v107 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        [v107 setBackgroundColor:v104];

        v108 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        [v108 setTranslatesAutoresizingMaskIntoConstraints:0];

        v109 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v110 = v85 * 0.75;
        [v109 _setCornerRadius:v110 * 0.5];

        v111 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        [v111 setUserInteractionEnabled:0];

        v112 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v113 = [(UIKBMultilingualKeyboardIntroductionView *)v10 multiscriptCandidateView];
        [(UIView *)v10 insertSubview:v112 belowSubview:v113];

        v204 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v200 = [v204 centerXAnchor];
        v196 = [v210 centerXAnchor];
        v192 = [v200 constraintEqualToAnchor:v196 constant:-3.0];
        v228[0] = v192;
        v188 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v184 = [v188 centerYAnchor];
        v114 = [v210 centerYAnchor];
        v115 = [v184 constraintEqualToAnchor:v114 constant:2.0];
        v228[1] = v115;
        v116 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v117 = [v116 widthAnchor];
        v118 = [v117 constraintEqualToConstant:v110];
        v228[2] = v118;
        v119 = [(UIKBMultilingualKeyboardIntroductionView *)v10 highlight];
        v120 = [v119 heightAnchor];
        v121 = [v120 constraintEqualToConstant:v110];
        v228[3] = v121;
        v122 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:4];
        [v214 addObjectsFromArray:v122];
      }

      v123 = objc_alloc_init(UIKBMultilingualIntroductionArrowView);
      [(UIKBMultilingualKeyboardIntroductionView *)v10 setArrowView:v123];

      v124 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      [v124 setTranslatesAutoresizingMaskIntoConstraints:0];

      v125 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      [(UIView *)v10 addSubview:v125];

      v205 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      v201 = [v205 topAnchor];
      v197 = [(UIView *)v10 topAnchor];
      v193 = [v201 constraintEqualToAnchor:v197];
      v227[0] = v193;
      v189 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      v185 = [v189 leadingAnchor];
      v181 = [(UIView *)v10 leadingAnchor];
      v179 = [v185 constraintEqualToAnchor:v181];
      v227[1] = v179;
      v126 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      v127 = [v126 bottomAnchor];
      v128 = [(UIView *)v10 bottomAnchor];
      v129 = [v127 constraintEqualToAnchor:v128];
      v227[2] = v129;
      v130 = [(UIKBMultilingualKeyboardIntroductionView *)v10 arrowView];
      v131 = [v130 trailingAnchor];
      v132 = [(UIView *)v10 trailingAnchor];
      v133 = [v131 constraintEqualToAnchor:v132];
      v227[3] = v133;
      v134 = [MEMORY[0x1E695DEC8] arrayWithObjects:v227 count:4];
      [v214 addObjectsFromArray:v134];
    }

    [MEMORY[0x1E69977A0] activateConstraints:v214];
    [(UIView *)v10 setSemanticContentAttribute:3];
    v218 = 0u;
    v219 = 0u;
    v216 = 0u;
    v217 = 0u;
    v135 = [(UIView *)v10 subviews];
    v136 = [v135 countByEnumeratingWithState:&v216 objects:v226 count:16];
    if (v136)
    {
      v137 = *v217;
      do
      {
        for (i = 0; i != v136; ++i)
        {
          if (*v217 != v137)
          {
            objc_enumerationMutation(v135);
          }

          [*(*(&v216 + 1) + 8 * i) setSemanticContentAttribute:3];
        }

        v136 = [v135 countByEnumeratingWithState:&v216 objects:v226 count:16];
      }

      while (v136);
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  v3 = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
  [v12 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v24.receiver = self;
  v24.super_class = UIKBMultilingualKeyboardIntroductionView;
  [(UIView *)&v24 layoutSubviews];
  [(UIKBMultilingualKeyboardIntroductionView *)self _updateContainer];
  v21 = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
  [v21 frame];
  v27.origin.x = v14;
  v27.origin.y = v16;
  v27.size.width = v18;
  v27.size.height = v20;
  if (!CGRectEqualToRect(v25, v27))
  {

    goto LABEL_5;
  }

  v22 = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
  [v22 frame];
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
  v3 = [(UIKBMultilingualKeyboardIntroductionView *)self arrowView];

  if (v3)
  {
    v4 = [(UIView *)self _shouldReverseLayoutDirection];
    v5 = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
    [v5 frame];
    if (v4)
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

    v13 = [(UIKBMultilingualKeyboardIntroductionView *)self titleLabel];
    [v13 frame];
    MidY = CGRectGetMidY(v21);

    v15 = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
    [v15 frame];
    MidX = CGRectGetMidX(v22);
    v17 = [(UIKBMultilingualKeyboardIntroductionView *)self highlight];
    [v17 frame];
    v18 = CGRectGetMaxY(v23) + 5.0;

    v19 = [(UIKBMultilingualKeyboardIntroductionView *)self arrowView];
    [v19 setStartPoint:v12 endPoint:{MidY, MidX, v18}];
  }
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
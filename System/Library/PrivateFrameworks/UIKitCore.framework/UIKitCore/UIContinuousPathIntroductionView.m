@interface UIContinuousPathIntroductionView
- (UIContinuousPathIntroductionView)initWithKeyboardAppearance:(int64_t)a3;
- (double)mediaLayoutWidthAdjustment;
- (id)_introductionMovieAssetURL;
- (id)mediaContents;
- (id)textBodyDescriptions;
- (void)extraButtonTapAction;
- (void)removeFromSuperview;
- (void)setupConstraintData;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateVideoLayerWithNewVideo:(BOOL)a3;
@end

@implementation UIContinuousPathIntroductionView

- (UIContinuousPathIntroductionView)initWithKeyboardAppearance:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = UIContinuousPathIntroductionView;
  v3 = [(UIKBTutorialModalDisplay *)&v11 initWithKeyboardAppearance:a3];
  v4 = v3;
  if (v3)
  {
    [v3 setAccessibilityIdentifier:@"UIContinuousPathIntroductionView"];
    v5 = +[UIColor labelColor];
    v6 = [(UIContinuousPathIntroductionView *)v4 landscapeTextBody];
    [v6 setTextColor:v5];

    v7 = +[UIKeyboard activeKeyboard];
    v8 = ([v7 interfaceOrientation] - 3) <= 1 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v9 = [(UIKBTutorialModalDisplay *)v4 button];
    [v9 setHidden:v8];
  }

  return v4;
}

- (void)setupConstraintData
{
  v18 = +[UIKeyboard activeKeyboard];
  v3 = [v18 _rootInputWindowController];
  v4 = [v3 view];
  [v4 frame];
  v6 = v5;

  [(UIKBTutorialModalDisplay *)self safeAreaInsets];
  if (v7 > 0.0)
  {
    v10 = 1;
  }

  else
  {
    v8 = [v3 view];
    [v8 safeAreaInsets];
    v10 = v9 > 0.0;
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && +[UIKeyboardImpl isFloating])
  {
    self->_textMargin = 20.0;
    v11 = 504;
    v12 = 0x4018000000000000;
LABEL_15:
    *(&self->super.super.super.super.isa + v11) = v12;
LABEL_16:
    v16 = 149.0;
    goto LABEL_25;
  }

  if (([v18 interfaceOrientation] - 3) > 1 || (-[UIView traitCollection](self, "traitCollection"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "verticalSizeClass"), v13, v14 == 2))
  {
    v11 = 496;
    self->_textMargin = 50.0;
    if (v10)
    {
      self->_paddingAdjust = 34.0;
    }

    if (v6 <= 320.0)
    {
      v12 = 0x4034000000000000;
      goto LABEL_15;
    }

    if (v6 > 375.0)
    {
      v15 = !v10;
      v16 = 164.0;
      v17 = 207.0;
      goto LABEL_23;
    }

    v15 = !v10;
    v16 = 155.0;
  }

  else
  {
    if (v6 <= 568.0)
    {
      goto LABEL_16;
    }

    if (v6 <= 667.0)
    {
      v16 = 155.0;
      goto LABEL_25;
    }

    if (v6 > 812.0)
    {
      v16 = 207.0;
      goto LABEL_25;
    }

    v15 = !v10;
    v16 = 164.0;
  }

  v17 = 202.0;
LABEL_23:
  if (!v15)
  {
    v16 = v17;
  }

LABEL_25:
  self->_videoSize.width = v16;
  self->_videoSize.height = v16 * 0.6;
}

- (id)_introductionMovieAssetURL
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = _UIKitResourceBundlePath(@"Artwork.bundle");
  v5 = [v3 bundleWithPath:v4];

  if ([(UIKBTutorialModalDisplay *)self appearance]== 1)
  {
    v6 = @"UIKeyboardContinuousPathIntroductionDark";
  }

  else
  {
    v6 = @"UIKeyboardContinuousPathIntroductionLight";
  }

  v7 = [v5 URLForResource:v6 withExtension:@"mov"];

  return v7;
}

- (id)mediaContents
{
  v152[11] = *MEMORY[0x1E69E9840];
  [(UIContinuousPathIntroductionView *)self setupConstraintData];
  if (!self->_textVideoContainer)
  {
    v3 = objc_alloc_init(UIView);
    textVideoContainer = self->_textVideoContainer;
    self->_textVideoContainer = v3;

    [(UIView *)self->_textVideoContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  if (!self->_keyboardView)
  {
    v5 = [UIView alloc];
    v6 = [(UIView *)v5 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), self->_videoSize.width, self->_videoSize.height];
    keyboardView = self->_keyboardView;
    self->_keyboardView = v6;

    [(UIView *)self->_keyboardView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.12];
    [(UIView *)self->_keyboardView setBackgroundColor:v8];

    v9 = [(UIView *)self->_keyboardView layer];
    [v9 setCornerRadius:10.0];

    v10 = [(UIView *)self->_keyboardView layer];
    [v10 setMasksToBounds:1];

    v11 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [v11 addSubview:self->_keyboardView];

    v12 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v13 = [v12 centerXAnchor];
    v14 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v15 = [v14 centerXAnchor];
    v16 = [v13 constraintEqualToAnchor:v15 constant:0.0];
    [v16 setActive:1];

    v17 = [(UIContinuousPathIntroductionView *)self videoWidth];

    if (!v17)
    {
      v18 = [(UIContinuousPathIntroductionView *)self keyboardView];
      v19 = [v18 widthAnchor];
      v20 = [v19 constraintEqualToConstant:self->_videoSize.width];
      [(UIContinuousPathIntroductionView *)self setVideoWidth:v20];

      v21 = [(UIContinuousPathIntroductionView *)self videoWidth];
      [v21 setActive:1];
    }

    v22 = [(UIContinuousPathIntroductionView *)self videoHeight];

    if (!v22)
    {
      v23 = [(UIContinuousPathIntroductionView *)self keyboardView];
      v24 = [v23 heightAnchor];
      v25 = [v24 constraintEqualToConstant:self->_videoSize.height];
      [(UIContinuousPathIntroductionView *)self setVideoHeight:v25];

      v26 = [(UIContinuousPathIntroductionView *)self videoHeight];
      [v26 setActive:1];
    }

    v27 = [(UIContinuousPathIntroductionView *)self keyboardView];
    LODWORD(v28) = 1144750080;
    [v27 setContentHuggingPriority:1 forAxis:v28];
  }

  [(UIContinuousPathIntroductionView *)self updateVideoLayerWithNewVideo:1];
  v29 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];

  if (!v29)
  {
    v30 = objc_alloc_init(UILabel);
    landscapeTextBody = self->_landscapeTextBody;
    self->_landscapeTextBody = v30;

    [(UIView *)self->_landscapeTextBody setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = +[UIColor clearColor];
    [(UIView *)self->_landscapeTextBody setBackgroundColor:v32];

    v33 = [(UIKBTutorialModalDisplay *)self textBodyFont];
    [(UILabel *)self->_landscapeTextBody setFont:v33];

    [(UILabel *)self->_landscapeTextBody setNumberOfLines:4];
    [(UILabel *)self->_landscapeTextBody setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_landscapeTextBody setTextAlignment:4];
    v34 = _UILocalizedStringInSystemLanguage(@"Slide your finger across the letters to compose a word", @"Speed up your typing by sliding your finger across the letters to compose a word.");
    [(UILabel *)self->_landscapeTextBody setText:v34];

    v35 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [v35 addSubview:self->_landscapeTextBody];
  }

  v36 = [(UIContinuousPathIntroductionView *)self landscapeButton];

  if (!v36)
  {
    v37 = [UIButton buttonWithType:1];
    landscapeButton = self->_landscapeButton;
    self->_landscapeButton = v37;

    [(UIView *)self->_landscapeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = self->_landscapeButton;
    v40 = [(UIKBTutorialModalDisplay *)self buttonTitle];
    [(UIButton *)v39 setTitle:v40 forState:0];

    v41 = self->_landscapeButton;
    v42 = +[UIColor systemBlueColor];
    [(UIButton *)v41 setTitleColor:v42 forState:0];

    v43 = [off_1E70ECC18 boldSystemFontOfSize:18.0];
    v44 = [(UIButton *)self->_landscapeButton titleLabel];
    [v44 setFont:v43];

    [(UIControl *)self->_landscapeButton addTarget:self action:sel_extraButtonTapAction forControlEvents:64];
    v45 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [v45 addSubview:self->_landscapeButton];

    v46 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    LODWORD(v47) = 1144766464;
    [v46 setContentCompressionResistancePriority:1 forAxis:v47];
  }

  v48 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];

  if (!v48)
  {
    v49 = objc_alloc_init(UILayoutGuide);
    v50 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [v50 addLayoutGuide:v49];

    v51 = objc_alloc_init(UILayoutGuide);
    v52 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [v52 addLayoutGuide:v51];

    v146 = [(UILayoutGuide *)v49 topAnchor];
    v148 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v144 = [v148 topAnchor];
    v142 = [v146 constraintEqualToAnchor:v144];
    v152[0] = v142;
    v140 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    v138 = [v140 topAnchor];
    v113 = v49;
    v136 = [(UILayoutGuide *)v49 bottomAnchor];
    v134 = [v138 constraintEqualToAnchor:v136];
    v152[1] = v134;
    v132 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    v128 = [v132 leadingAnchor];
    v130 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v126 = [v130 trailingAnchor];
    v124 = [v128 constraintEqualToAnchor:v126 constant:24.0];
    v152[2] = v124;
    v122 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    v120 = [v122 widthAnchor];
    v121 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v119 = [v121 widthAnchor];
    v118 = [v120 constraintEqualToAnchor:v119 multiplier:1.1];
    v152[3] = v118;
    v117 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v115 = [v117 centerYAnchor];
    v116 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v112 = [v116 centerYAnchor];
    v111 = [v115 constraintEqualToAnchor:v112 constant:0.0];
    v152[4] = v111;
    v110 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    v108 = [v110 topAnchor];
    v109 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    v107 = [v109 bottomAnchor];
    v106 = [v108 constraintEqualToAnchor:v107 constant:16.0];
    v152[5] = v106;
    v114 = v51;
    v104 = [(UILayoutGuide *)v51 topAnchor];
    v105 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    v103 = [v105 bottomAnchor];
    v102 = [v104 constraintEqualToAnchor:v103];
    v152[6] = v102;
    v101 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v100 = [v101 bottomAnchor];
    v99 = [(UILayoutGuide *)v51 bottomAnchor];
    v98 = [v100 constraintEqualToAnchor:v99];
    v152[7] = v98;
    v97 = [(UILayoutGuide *)v51 heightAnchor];
    v96 = [(UILayoutGuide *)v49 heightAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v152[8] = v95;
    v94 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    v92 = [v94 leadingAnchor];
    v93 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    v53 = [v93 leadingAnchor];
    v54 = [v92 constraintEqualToAnchor:v53];
    v152[9] = v54;
    v55 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v56 = [v55 widthAnchor];
    v57 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v58 = [v57 widthAnchor];
    v59 = [v56 constraintEqualToAnchor:v58 multiplier:3.0];
    v152[10] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:11];
    [(UIContinuousPathIntroductionView *)self setLandscapeConstraints:v60];
  }

  v61 = [(UIContinuousPathIntroductionView *)self portraitConstraints];

  if (!v61)
  {
    v62 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v63 = [v62 topAnchor];
    v64 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v65 = [v64 topAnchor];
    v66 = [v63 constraintEqualToAnchor:v65 constant:self->_paddingAdjust];

    LODWORD(v67) = 1132068864;
    v149 = v66;
    [v66 setPriority:v67];
    v151[0] = v66;
    v147 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v143 = [v147 topAnchor];
    v145 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v141 = [v145 topAnchor];
    v139 = [v143 constraintLessThanOrEqualToAnchor:v141 constant:self->_paddingAdjust];
    v151[1] = v139;
    v137 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v133 = [v137 topAnchor];
    v135 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v131 = [v135 topAnchor];
    v129 = [v133 constraintGreaterThanOrEqualToAnchor:v131 constant:6.0];
    v151[2] = v129;
    v127 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v123 = [v127 bottomAnchor];
    v125 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v68 = [v125 bottomAnchor];
    v69 = [v123 constraintEqualToAnchor:v68];
    v151[3] = v69;
    v70 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    v71 = [v70 widthAnchor];
    v72 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v73 = [v72 widthAnchor];
    v74 = [v71 constraintEqualToAnchor:v73];
    v151[4] = v74;
    v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:5];
    [(UIContinuousPathIntroductionView *)self setPortraitConstraints:v75];
  }

  v76 = +[UIKeyboard activeKeyboard];
  if (([v76 interfaceOrientation] - 3) > 1)
  {
  }

  else
  {
    v77 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;

    if (v77 != 1)
    {
      v78 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
      [v78 setHidden:0];

      v79 = [(UIContinuousPathIntroductionView *)self landscapeButton];
      [v79 setHidden:0];

      v80 = MEMORY[0x1E69977A0];
      v81 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
      [v80 deactivateConstraints:v81];

      v82 = MEMORY[0x1E69977A0];
      v83 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
      goto LABEL_22;
    }
  }

  v84 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
  [v84 setHidden:1];

  v85 = [(UIContinuousPathIntroductionView *)self landscapeButton];
  [v85 setHidden:1];

  v86 = MEMORY[0x1E69977A0];
  v87 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
  [v86 deactivateConstraints:v87];

  v82 = MEMORY[0x1E69977A0];
  v83 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
LABEL_22:
  v88 = v83;
  [v82 activateConstraints:v83];

  v89 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
  v150 = v89;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];

  return v90;
}

- (void)updateVideoLayerWithNewVideo:(BOOL)a3
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v4 = _MergedGlobals_3;
    v50 = _MergedGlobals_3;
    if (!_MergedGlobals_3)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getAVAssetClass_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v47;
      __getAVAssetClass_block_invoke(&v42);
      v4 = v48[3];
    }

    v5 = v4;
    _Block_object_dispose(&v47, 8);
    v6 = [(UIContinuousPathIntroductionView *)self _introductionMovieAssetURL];
    v7 = [v4 assetWithURL:v6];

    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v8 = qword_1ED499F70;
    v50 = qword_1ED499F70;
    if (!qword_1ED499F70)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getAVPlayerItemClass_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v47;
      __getAVPlayerItemClass_block_invoke(&v42);
      v8 = v48[3];
    }

    v9 = v8;
    _Block_object_dispose(&v47, 8);
    v10 = [v8 playerItemWithAsset:v7];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v11 = qword_1ED499F78;
    v50 = qword_1ED499F78;
    if (!qword_1ED499F78)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getAVQueuePlayerClass_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v47;
      __getAVQueuePlayerClass_block_invoke(&v42);
      v11 = v48[3];
    }

    v12 = v11;
    _Block_object_dispose(&v47, 8);
    v51[0] = v10;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    v14 = [v11 queuePlayerWithItems:v13];
    player = self->_player;
    self->_player = v14;

    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v16 = qword_1ED499F80;
    v50 = qword_1ED499F80;
    if (!qword_1ED499F80)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getAVPlayerLooperClass_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v47;
      __getAVPlayerLooperClass_block_invoke(&v42);
      v16 = v48[3];
    }

    v17 = v16;
    _Block_object_dispose(&v47, 8);
    v18 = [v16 playerLooperWithPlayer:self->_player templateItem:v10];
    playerLooper = self->_playerLooper;
    self->_playerLooper = v18;

    [(AVQueuePlayer *)self->_player setPreventsDisplaySleepDuringVideoPlayback:0];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2050000000;
    v20 = qword_1ED499F88;
    v50 = qword_1ED499F88;
    if (!qword_1ED499F88)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getAVAudioSessionClass_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v47;
      __getAVAudioSessionClass_block_invoke(&v42);
      v20 = v48[3];
    }

    v21 = v20;
    _Block_object_dispose(&v47, 8);
    v22 = [[v20 alloc] initAuxiliarySession];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v23 = qword_1ED499F90;
    v50 = qword_1ED499F90;
    if (!qword_1ED499F90)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __getAVAudioSessionCategoryAmbientSymbolLoc_block_invoke;
      v45 = &unk_1E70F2F20;
      v46 = &v47;
      v24 = AVFoundationLibrary();
      v25 = dlsym(v24, "AVAudioSessionCategoryAmbient");
      *(v46[1] + 24) = v25;
      qword_1ED499F90 = *(v46[1] + 24);
      v23 = v48[3];
    }

    _Block_object_dispose(&v47, 8);
    if (!v23)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVAudioSessionCategoryAmbient(void)"];
      [v40 handleFailureInFunction:v41 file:@"UIContinuousPathIntroductionView.m" lineNumber:28 description:{@"%s", dlerror()}];

      __break(1u);
    }

    [v22 setCategory:*v23 error:0];
    [(AVQueuePlayer *)self->_player setAudioSession:v22];
    v26 = [(UIContinuousPathIntroductionView *)self videoLayer];

    if (v26)
    {
      v27 = [(UIContinuousPathIntroductionView *)self videoLayer];
      [v27 removeFromSuperlayer];
    }
  }

  v47 = 0;
  v48 = &v47;
  v49 = 0x2050000000;
  v28 = qword_1ED499F98;
  v50 = qword_1ED499F98;
  if (!qword_1ED499F98)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __getAVPlayerLayerClass_block_invoke;
    v45 = &unk_1E70F2F20;
    v46 = &v47;
    __getAVPlayerLayerClass_block_invoke(&v42);
    v28 = v48[3];
  }

  v29 = v28;
  _Block_object_dispose(&v47, 8);
  v30 = [v28 playerLayerWithPlayer:self->_player];
  [(UIContinuousPathIntroductionView *)self setVideoLayer:v30];

  v31 = [(UIContinuousPathIntroductionView *)self videoLayer];
  v32 = [v31 superlayer];
  v33 = v32 == 0;

  if (v33)
  {
    v34 = [(UIContinuousPathIntroductionView *)self keyboardView];
    v35 = [v34 layer];
    v36 = [(UIContinuousPathIntroductionView *)self videoLayer];
    [v35 addSublayer:v36];
  }

  width = self->_videoSize.width;
  height = self->_videoSize.height;
  v39 = [(UIContinuousPathIntroductionView *)self videoLayer];
  [v39 setFrame:{0.0, 0.0, width, height}];

  [(AVQueuePlayer *)self->_player advanceToNextItem];
  [(AVQueuePlayer *)self->_player play];
}

- (void)traitCollectionDidChange:(id)a3
{
  v30 = a3;
  v4 = [(UIView *)self constraints];
  v5 = [v4 count];

  if (v5)
  {
    [(AVQueuePlayer *)self->_player pause];
    [(UIContinuousPathIntroductionView *)self setupConstraintData];
    width = self->_videoSize.width;
    v7 = [(UIContinuousPathIntroductionView *)self videoWidth];
    [v7 setConstant:width];

    height = self->_videoSize.height;
    v9 = [(UIContinuousPathIntroductionView *)self videoHeight];
    [v9 setConstant:height];

    v10 = [(UIContinuousPathIntroductionView *)self keyboardView];
    [v10 layoutIfNeeded];

    v11 = [(UIView *)self traitCollection];
    v12 = [v11 hasDifferentColorAppearanceComparedToTraitCollection:v30];

    if (v12)
    {
      v13 = [(UIView *)self traitCollection];
      if ([v13 userInterfaceStyle] == 2)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      [(UIKBTutorialModalDisplay *)self setAppearance:v14];
    }

    else
    {
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 || (-[UIView traitCollection](self, "traitCollection"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 verticalSizeClass], v15, v16 != 1))
      {
        v24 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
        [v24 setHidden:1];

        v25 = [(UIContinuousPathIntroductionView *)self landscapeButton];
        [v25 setHidden:1];

        v26 = [(UIKBTutorialModalDisplay *)self button];
        [v26 setHidden:0];

        v27 = MEMORY[0x1E69977A0];
        v28 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
        [v27 deactivateConstraints:v28];

        v22 = MEMORY[0x1E69977A0];
        v23 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
      }

      else
      {
        v17 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
        [v17 setHidden:0];

        v18 = [(UIContinuousPathIntroductionView *)self landscapeButton];
        [v18 setHidden:0];

        v19 = [(UIKBTutorialModalDisplay *)self button];
        [v19 setHidden:1];

        v20 = MEMORY[0x1E69977A0];
        v21 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
        [v20 deactivateConstraints:v21];

        v22 = MEMORY[0x1E69977A0];
        v23 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
      }

      v29 = v23;
      [v22 activateConstraints:v23];

      [(UIKBTutorialModalDisplay *)self updateMediaViewTextAndPlacement];
    }

    [(UIContinuousPathIntroductionView *)self updateVideoLayerWithNewVideo:v12];
  }
}

- (id)textBodyDescriptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(UIView *)self traitCollection];
  if ([v2 verticalSizeClass] == 1)
  {
    v3 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;

    if (v3 != 1)
    {
      v4 = &unk_1EFE2B230;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = _UILocalizedStringInSystemLanguage(@"Slide your finger across the letters to compose a word", @"Speed up your typing by sliding your finger across the letters to compose a word.");
  v7[0] = v5;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

LABEL_6:

  return v4;
}

- (double)mediaLayoutWidthAdjustment
{
  v3 = [(UIView *)self traitCollection];
  if ([v3 verticalSizeClass] == 1)
  {
    v4 = UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL;

    if (v4 != 1)
    {
      return self->_videoSize.width + self->_videoSize.width;
    }
  }

  else
  {
  }

  if (+[UIKeyboardImpl isFloating])
  {
    return -148.0;
  }

  else
  {
    return -(50.0 - self->_textMargin);
  }
}

- (void)removeFromSuperview
{
  [(AVPlayerLooper *)self->_playerLooper disableLooping];
  [(AVQueuePlayer *)self->_player removeAllItems];
  v3.receiver = self;
  v3.super_class = UIContinuousPathIntroductionView;
  [(UIView *)&v3 removeFromSuperview];
}

- (void)extraButtonTapAction
{
  [(UIContinuousPathIntroductionView *)self removeFromSuperview];
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  [v3 didTriggerOneTimeAction:*MEMORY[0x1E69D9740]];

  v4 = MEMORY[0x1E69E96A0];

  dispatch_async(v4, &__block_literal_global);
}

void __56__UIContinuousPathIntroductionView_extraButtonTapAction__block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 dismissContinuousPathIntroductionView];
}

@end
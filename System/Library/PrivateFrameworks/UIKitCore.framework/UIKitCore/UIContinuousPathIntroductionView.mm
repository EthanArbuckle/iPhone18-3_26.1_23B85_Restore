@interface UIContinuousPathIntroductionView
- (UIContinuousPathIntroductionView)initWithKeyboardAppearance:(int64_t)appearance;
- (double)mediaLayoutWidthAdjustment;
- (id)_introductionMovieAssetURL;
- (id)mediaContents;
- (id)textBodyDescriptions;
- (void)extraButtonTapAction;
- (void)removeFromSuperview;
- (void)setupConstraintData;
- (void)traitCollectionDidChange:(id)change;
- (void)updateVideoLayerWithNewVideo:(BOOL)video;
@end

@implementation UIContinuousPathIntroductionView

- (UIContinuousPathIntroductionView)initWithKeyboardAppearance:(int64_t)appearance
{
  v11.receiver = self;
  v11.super_class = UIContinuousPathIntroductionView;
  v3 = [(UIKBTutorialModalDisplay *)&v11 initWithKeyboardAppearance:appearance];
  v4 = v3;
  if (v3)
  {
    [v3 setAccessibilityIdentifier:@"UIContinuousPathIntroductionView"];
    v5 = +[UIColor labelColor];
    landscapeTextBody = [(UIContinuousPathIntroductionView *)v4 landscapeTextBody];
    [landscapeTextBody setTextColor:v5];

    v7 = +[UIKeyboard activeKeyboard];
    v8 = ([v7 interfaceOrientation] - 3) <= 1 && (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1;
    button = [(UIKBTutorialModalDisplay *)v4 button];
    [button setHidden:v8];
  }

  return v4;
}

- (void)setupConstraintData
{
  v18 = +[UIKeyboard activeKeyboard];
  _rootInputWindowController = [v18 _rootInputWindowController];
  view = [_rootInputWindowController view];
  [view frame];
  v6 = v5;

  [(UIKBTutorialModalDisplay *)self safeAreaInsets];
  if (v7 > 0.0)
  {
    v10 = 1;
  }

  else
  {
    view2 = [_rootInputWindowController view];
    [view2 safeAreaInsets];
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

    layer = [(UIView *)self->_keyboardView layer];
    [layer setCornerRadius:10.0];

    layer2 = [(UIView *)self->_keyboardView layer];
    [layer2 setMasksToBounds:1];

    textVideoContainer = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [textVideoContainer addSubview:self->_keyboardView];

    keyboardView = [(UIContinuousPathIntroductionView *)self keyboardView];
    centerXAnchor = [keyboardView centerXAnchor];
    textVideoContainer2 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    centerXAnchor2 = [textVideoContainer2 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
    [v16 setActive:1];

    videoWidth = [(UIContinuousPathIntroductionView *)self videoWidth];

    if (!videoWidth)
    {
      keyboardView2 = [(UIContinuousPathIntroductionView *)self keyboardView];
      widthAnchor = [keyboardView2 widthAnchor];
      v20 = [widthAnchor constraintEqualToConstant:self->_videoSize.width];
      [(UIContinuousPathIntroductionView *)self setVideoWidth:v20];

      videoWidth2 = [(UIContinuousPathIntroductionView *)self videoWidth];
      [videoWidth2 setActive:1];
    }

    videoHeight = [(UIContinuousPathIntroductionView *)self videoHeight];

    if (!videoHeight)
    {
      keyboardView3 = [(UIContinuousPathIntroductionView *)self keyboardView];
      heightAnchor = [keyboardView3 heightAnchor];
      v25 = [heightAnchor constraintEqualToConstant:self->_videoSize.height];
      [(UIContinuousPathIntroductionView *)self setVideoHeight:v25];

      videoHeight2 = [(UIContinuousPathIntroductionView *)self videoHeight];
      [videoHeight2 setActive:1];
    }

    keyboardView4 = [(UIContinuousPathIntroductionView *)self keyboardView];
    LODWORD(v28) = 1144750080;
    [keyboardView4 setContentHuggingPriority:1 forAxis:v28];
  }

  [(UIContinuousPathIntroductionView *)self updateVideoLayerWithNewVideo:1];
  landscapeTextBody = [(UIContinuousPathIntroductionView *)self landscapeTextBody];

  if (!landscapeTextBody)
  {
    v30 = objc_alloc_init(UILabel);
    landscapeTextBody = self->_landscapeTextBody;
    self->_landscapeTextBody = v30;

    [(UIView *)self->_landscapeTextBody setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = +[UIColor clearColor];
    [(UIView *)self->_landscapeTextBody setBackgroundColor:v32];

    textBodyFont = [(UIKBTutorialModalDisplay *)self textBodyFont];
    [(UILabel *)self->_landscapeTextBody setFont:textBodyFont];

    [(UILabel *)self->_landscapeTextBody setNumberOfLines:4];
    [(UILabel *)self->_landscapeTextBody setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_landscapeTextBody setTextAlignment:4];
    v34 = _UILocalizedStringInSystemLanguage(@"Slide your finger across the letters to compose a word", @"Speed up your typing by sliding your finger across the letters to compose a word.");
    [(UILabel *)self->_landscapeTextBody setText:v34];

    textVideoContainer3 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [textVideoContainer3 addSubview:self->_landscapeTextBody];
  }

  landscapeButton = [(UIContinuousPathIntroductionView *)self landscapeButton];

  if (!landscapeButton)
  {
    v37 = [UIButton buttonWithType:1];
    landscapeButton = self->_landscapeButton;
    self->_landscapeButton = v37;

    [(UIView *)self->_landscapeButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = self->_landscapeButton;
    buttonTitle = [(UIKBTutorialModalDisplay *)self buttonTitle];
    [(UIButton *)v39 setTitle:buttonTitle forState:0];

    v41 = self->_landscapeButton;
    v42 = +[UIColor systemBlueColor];
    [(UIButton *)v41 setTitleColor:v42 forState:0];

    v43 = [off_1E70ECC18 boldSystemFontOfSize:18.0];
    titleLabel = [(UIButton *)self->_landscapeButton titleLabel];
    [titleLabel setFont:v43];

    [(UIControl *)self->_landscapeButton addTarget:self action:sel_extraButtonTapAction forControlEvents:64];
    textVideoContainer4 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [textVideoContainer4 addSubview:self->_landscapeButton];

    landscapeButton2 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    LODWORD(v47) = 1144766464;
    [landscapeButton2 setContentCompressionResistancePriority:1 forAxis:v47];
  }

  landscapeConstraints = [(UIContinuousPathIntroductionView *)self landscapeConstraints];

  if (!landscapeConstraints)
  {
    v49 = objc_alloc_init(UILayoutGuide);
    textVideoContainer5 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [textVideoContainer5 addLayoutGuide:v49];

    v51 = objc_alloc_init(UILayoutGuide);
    textVideoContainer6 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    [textVideoContainer6 addLayoutGuide:v51];

    topAnchor = [(UILayoutGuide *)v49 topAnchor];
    keyboardView5 = [(UIContinuousPathIntroductionView *)self keyboardView];
    topAnchor2 = [keyboardView5 topAnchor];
    v142 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v152[0] = v142;
    landscapeTextBody2 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    topAnchor3 = [landscapeTextBody2 topAnchor];
    v113 = v49;
    bottomAnchor = [(UILayoutGuide *)v49 bottomAnchor];
    v134 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v152[1] = v134;
    landscapeTextBody3 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    leadingAnchor = [landscapeTextBody3 leadingAnchor];
    keyboardView6 = [(UIContinuousPathIntroductionView *)self keyboardView];
    trailingAnchor = [keyboardView6 trailingAnchor];
    v124 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:24.0];
    v152[2] = v124;
    landscapeTextBody4 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    widthAnchor2 = [landscapeTextBody4 widthAnchor];
    keyboardView7 = [(UIContinuousPathIntroductionView *)self keyboardView];
    widthAnchor3 = [keyboardView7 widthAnchor];
    v118 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3 multiplier:1.1];
    v152[3] = v118;
    keyboardView8 = [(UIContinuousPathIntroductionView *)self keyboardView];
    centerYAnchor = [keyboardView8 centerYAnchor];
    textVideoContainer7 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    centerYAnchor2 = [textVideoContainer7 centerYAnchor];
    v111 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:0.0];
    v152[4] = v111;
    landscapeButton3 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    topAnchor4 = [landscapeButton3 topAnchor];
    landscapeTextBody5 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    bottomAnchor2 = [landscapeTextBody5 bottomAnchor];
    v106 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
    v152[5] = v106;
    v114 = v51;
    topAnchor5 = [(UILayoutGuide *)v51 topAnchor];
    landscapeButton4 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    bottomAnchor3 = [landscapeButton4 bottomAnchor];
    v102 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
    v152[6] = v102;
    keyboardView9 = [(UIContinuousPathIntroductionView *)self keyboardView];
    bottomAnchor4 = [keyboardView9 bottomAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v51 bottomAnchor];
    v98 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v152[7] = v98;
    heightAnchor2 = [(UILayoutGuide *)v51 heightAnchor];
    heightAnchor3 = [(UILayoutGuide *)v49 heightAnchor];
    v95 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v152[8] = v95;
    landscapeButton5 = [(UIContinuousPathIntroductionView *)self landscapeButton];
    leadingAnchor2 = [landscapeButton5 leadingAnchor];
    landscapeTextBody6 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
    leadingAnchor3 = [landscapeTextBody6 leadingAnchor];
    v54 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v152[9] = v54;
    textVideoContainer8 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    widthAnchor4 = [textVideoContainer8 widthAnchor];
    keyboardView10 = [(UIContinuousPathIntroductionView *)self keyboardView];
    widthAnchor5 = [keyboardView10 widthAnchor];
    v59 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5 multiplier:3.0];
    v152[10] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:11];
    [(UIContinuousPathIntroductionView *)self setLandscapeConstraints:v60];
  }

  portraitConstraints = [(UIContinuousPathIntroductionView *)self portraitConstraints];

  if (!portraitConstraints)
  {
    keyboardView11 = [(UIContinuousPathIntroductionView *)self keyboardView];
    topAnchor6 = [keyboardView11 topAnchor];
    textVideoContainer9 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    topAnchor7 = [textVideoContainer9 topAnchor];
    v66 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:self->_paddingAdjust];

    LODWORD(v67) = 1132068864;
    v149 = v66;
    [v66 setPriority:v67];
    v151[0] = v66;
    keyboardView12 = [(UIContinuousPathIntroductionView *)self keyboardView];
    topAnchor8 = [keyboardView12 topAnchor];
    textVideoContainer10 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    topAnchor9 = [textVideoContainer10 topAnchor];
    v139 = [topAnchor8 constraintLessThanOrEqualToAnchor:topAnchor9 constant:self->_paddingAdjust];
    v151[1] = v139;
    keyboardView13 = [(UIContinuousPathIntroductionView *)self keyboardView];
    topAnchor10 = [keyboardView13 topAnchor];
    textVideoContainer11 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    topAnchor11 = [textVideoContainer11 topAnchor];
    v129 = [topAnchor10 constraintGreaterThanOrEqualToAnchor:topAnchor11 constant:6.0];
    v151[2] = v129;
    textVideoContainer12 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    bottomAnchor6 = [textVideoContainer12 bottomAnchor];
    keyboardView14 = [(UIContinuousPathIntroductionView *)self keyboardView];
    bottomAnchor7 = [keyboardView14 bottomAnchor];
    v69 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v151[3] = v69;
    textVideoContainer13 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
    widthAnchor6 = [textVideoContainer13 widthAnchor];
    keyboardView15 = [(UIContinuousPathIntroductionView *)self keyboardView];
    widthAnchor7 = [keyboardView15 widthAnchor];
    v74 = [widthAnchor6 constraintEqualToAnchor:widthAnchor7];
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
      landscapeTextBody7 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
      [landscapeTextBody7 setHidden:0];

      landscapeButton6 = [(UIContinuousPathIntroductionView *)self landscapeButton];
      [landscapeButton6 setHidden:0];

      v80 = MEMORY[0x1E69977A0];
      portraitConstraints2 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
      [v80 deactivateConstraints:portraitConstraints2];

      v82 = MEMORY[0x1E69977A0];
      landscapeConstraints2 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
      goto LABEL_22;
    }
  }

  landscapeTextBody8 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
  [landscapeTextBody8 setHidden:1];

  landscapeButton7 = [(UIContinuousPathIntroductionView *)self landscapeButton];
  [landscapeButton7 setHidden:1];

  v86 = MEMORY[0x1E69977A0];
  landscapeConstraints3 = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
  [v86 deactivateConstraints:landscapeConstraints3];

  v82 = MEMORY[0x1E69977A0];
  landscapeConstraints2 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
LABEL_22:
  v88 = landscapeConstraints2;
  [v82 activateConstraints:landscapeConstraints2];

  textVideoContainer14 = [(UIContinuousPathIntroductionView *)self textVideoContainer];
  v150 = textVideoContainer14;
  v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];

  return v90;
}

- (void)updateVideoLayerWithNewVideo:(BOOL)video
{
  v51[1] = *MEMORY[0x1E69E9840];
  if (video)
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
    _introductionMovieAssetURL = [(UIContinuousPathIntroductionView *)self _introductionMovieAssetURL];
    v7 = [v4 assetWithURL:_introductionMovieAssetURL];

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
    initAuxiliarySession = [[v20 alloc] initAuxiliarySession];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVAudioSessionCategoryAmbient(void)"];
      [currentHandler handleFailureInFunction:v41 file:@"UIContinuousPathIntroductionView.m" lineNumber:28 description:{@"%s", dlerror()}];

      __break(1u);
    }

    [initAuxiliarySession setCategory:*v23 error:0];
    [(AVQueuePlayer *)self->_player setAudioSession:initAuxiliarySession];
    videoLayer = [(UIContinuousPathIntroductionView *)self videoLayer];

    if (videoLayer)
    {
      videoLayer2 = [(UIContinuousPathIntroductionView *)self videoLayer];
      [videoLayer2 removeFromSuperlayer];
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

  videoLayer3 = [(UIContinuousPathIntroductionView *)self videoLayer];
  superlayer = [videoLayer3 superlayer];
  v33 = superlayer == 0;

  if (v33)
  {
    keyboardView = [(UIContinuousPathIntroductionView *)self keyboardView];
    layer = [keyboardView layer];
    videoLayer4 = [(UIContinuousPathIntroductionView *)self videoLayer];
    [layer addSublayer:videoLayer4];
  }

  width = self->_videoSize.width;
  height = self->_videoSize.height;
  videoLayer5 = [(UIContinuousPathIntroductionView *)self videoLayer];
  [videoLayer5 setFrame:{0.0, 0.0, width, height}];

  [(AVQueuePlayer *)self->_player advanceToNextItem];
  [(AVQueuePlayer *)self->_player play];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  constraints = [(UIView *)self constraints];
  v5 = [constraints count];

  if (v5)
  {
    [(AVQueuePlayer *)self->_player pause];
    [(UIContinuousPathIntroductionView *)self setupConstraintData];
    width = self->_videoSize.width;
    videoWidth = [(UIContinuousPathIntroductionView *)self videoWidth];
    [videoWidth setConstant:width];

    height = self->_videoSize.height;
    videoHeight = [(UIContinuousPathIntroductionView *)self videoHeight];
    [videoHeight setConstant:height];

    keyboardView = [(UIContinuousPathIntroductionView *)self keyboardView];
    [keyboardView layoutIfNeeded];

    traitCollection = [(UIView *)self traitCollection];
    v12 = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy];

    if (v12)
    {
      traitCollection2 = [(UIView *)self traitCollection];
      if ([traitCollection2 userInterfaceStyle] == 2)
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
        landscapeTextBody = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
        [landscapeTextBody setHidden:1];

        landscapeButton = [(UIContinuousPathIntroductionView *)self landscapeButton];
        [landscapeButton setHidden:1];

        button = [(UIKBTutorialModalDisplay *)self button];
        [button setHidden:0];

        v27 = MEMORY[0x1E69977A0];
        landscapeConstraints = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
        [v27 deactivateConstraints:landscapeConstraints];

        v22 = MEMORY[0x1E69977A0];
        portraitConstraints = [(UIContinuousPathIntroductionView *)self portraitConstraints];
      }

      else
      {
        landscapeTextBody2 = [(UIContinuousPathIntroductionView *)self landscapeTextBody];
        [landscapeTextBody2 setHidden:0];

        landscapeButton2 = [(UIContinuousPathIntroductionView *)self landscapeButton];
        [landscapeButton2 setHidden:0];

        button2 = [(UIKBTutorialModalDisplay *)self button];
        [button2 setHidden:1];

        v20 = MEMORY[0x1E69977A0];
        portraitConstraints2 = [(UIContinuousPathIntroductionView *)self portraitConstraints];
        [v20 deactivateConstraints:portraitConstraints2];

        v22 = MEMORY[0x1E69977A0];
        portraitConstraints = [(UIContinuousPathIntroductionView *)self landscapeConstraints];
      }

      v29 = portraitConstraints;
      [v22 activateConstraints:portraitConstraints];

      [(UIKBTutorialModalDisplay *)self updateMediaViewTextAndPlacement];
    }

    [(UIContinuousPathIntroductionView *)self updateVideoLayerWithNewVideo:v12];
  }
}

- (id)textBodyDescriptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
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
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
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
  preferencesActions = [v2 preferencesActions];
  [preferencesActions didTriggerOneTimeAction:*MEMORY[0x1E69D9740]];

  v4 = MEMORY[0x1E69E96A0];

  dispatch_async(v4, &__block_literal_global);
}

void __56__UIContinuousPathIntroductionView_extraButtonTapAction__block_invoke()
{
  v0 = +[UIKeyboardImpl activeInstance];
  [v0 dismissContinuousPathIntroductionView];
}

@end
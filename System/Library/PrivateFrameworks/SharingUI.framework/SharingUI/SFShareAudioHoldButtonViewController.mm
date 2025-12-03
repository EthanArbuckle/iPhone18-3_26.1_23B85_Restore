@interface SFShareAudioHoldButtonViewController
- (void)_updateDeviceVisual:(id)visual;
- (void)eventCancel:(id)cancel;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFShareAudioHoldButtonViewController

- (void)viewDidLoad
{
  v129[16] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(SFShareAudioBaseViewController *)self setTitleLabel:v3];

  titleLabel = [(SFShareAudioBaseViewController *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  titleLabel2 = [(SFShareAudioBaseViewController *)self titleLabel];
  [titleLabel2 setColor:whiteColor];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  titleLabel3 = [(SFShareAudioBaseViewController *)self titleLabel];
  [titleLabel3 setFont:v7];

  titleLabel4 = [(SFShareAudioBaseViewController *)self titleLabel];
  [titleLabel4 setTextAlignment:1];

  titleLabel5 = [(SFShareAudioBaseViewController *)self titleLabel];
  [titleLabel5 setAdjustsFontSizeToFitWidth:1];

  titleLabel6 = [(SFShareAudioBaseViewController *)self titleLabel];
  [titleLabel6 setMinimumScaleFactor:0.5];

  view = [(SFShareAudioHoldButtonViewController *)self view];
  titleLabel7 = [(SFShareAudioBaseViewController *)self titleLabel];
  [view addSubview:titleLabel7];

  v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(SFShareAudioHoldButtonViewController *)self setShareImageView:v14];

  shareImageView = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  [shareImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(SFShareAudioHoldButtonViewController *)self view];
  shareImageView2 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  [view2 addSubview:shareImageView2];

  v18 = objc_alloc_init(SFMediaPlayerView);
  [(SFShareAudioHoldButtonViewController *)self setProductMovieView:v18];

  productMovieView = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  [productMovieView setTranslatesAutoresizingMaskIntoConstraints:0];

  view3 = [(SFShareAudioHoldButtonViewController *)self view];
  productMovieView2 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  [view3 addSubview:productMovieView2];

  v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(SFShareAudioHoldButtonViewController *)self setInfoLabel:v22];

  infoLabel = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  infoLabel2 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel2 setNumberOfLines:2];

  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  infoLabel3 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel3 setColor:whiteColor2];

  v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  infoLabel4 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel4 setFont:v27];

  infoLabel5 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel5 setTextAlignment:1];

  infoLabel6 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel6 setAdjustsFontSizeToFitWidth:1];

  infoLabel7 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [infoLabel7 setMinimumScaleFactor:0.5];

  view4 = [(SFShareAudioHoldButtonViewController *)self view];
  infoLabel8 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [view4 addSubview:infoLabel8];

  v34 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [(SFShareAudioHoldButtonViewController *)self setCancelButton:v34];

  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  cancelButton = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [cancelButton setTintColor:whiteColor3];

  v37 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  cancelButton2 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  titleLabel8 = [cancelButton2 titleLabel];
  [titleLabel8 setFont:v37];

  cancelButton3 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [cancelButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

  cancelButton4 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v42 = SFLocalizedStringForKey();
  [cancelButton4 setTitle:v42 forState:0];

  cancelButton5 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [cancelButton5 addTarget:self action:sel_eventCancel_ forControlEvents:64];

  view5 = [(SFShareAudioHoldButtonViewController *)self view];
  cancelButton6 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [view5 addSubview:cancelButton6];

  productMovieView3 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  leadingAnchor = [productMovieView3 leadingAnchor];
  view6 = [(SFShareAudioHoldButtonViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v50 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  [(SFShareAudioHoldButtonViewController *)self setMovieViewLeadingConstraint:v50];

  productMovieView4 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  trailingAnchor = [productMovieView4 trailingAnchor];
  view7 = [(SFShareAudioHoldButtonViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  [(SFShareAudioHoldButtonViewController *)self setMovieViewTrailingConstraint:v55];

  productMovieView5 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  heightAnchor = [productMovieView5 heightAnchor];
  v58 = [heightAnchor constraintEqualToConstant:281.0];
  [(SFShareAudioHoldButtonViewController *)self setMovieViewHeightConstraint:v58];

  v100 = MEMORY[0x1E696ACD8];
  titleLabel9 = [(SFShareAudioBaseViewController *)self titleLabel];
  leadingAnchor3 = [titleLabel9 leadingAnchor];
  view8 = [(SFShareAudioHoldButtonViewController *)self view];
  leadingAnchor4 = [view8 leadingAnchor];
  v124 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:36.0];
  v129[0] = v124;
  titleLabel10 = [(SFShareAudioBaseViewController *)self titleLabel];
  trailingAnchor3 = [titleLabel10 trailingAnchor];
  view9 = [(SFShareAudioHoldButtonViewController *)self view];
  trailingAnchor4 = [view9 trailingAnchor];
  v119 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-36.0];
  v129[1] = v119;
  titleLabel11 = [(SFShareAudioBaseViewController *)self titleLabel];
  topAnchor = [titleLabel11 topAnchor];
  view10 = [(SFShareAudioHoldButtonViewController *)self view];
  topAnchor2 = [view10 topAnchor];
  v114 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:36.0];
  v129[2] = v114;
  productMovieView6 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  topAnchor3 = [productMovieView6 topAnchor];
  titleLabel12 = [(SFShareAudioBaseViewController *)self titleLabel];
  topAnchor4 = [titleLabel12 topAnchor];
  v109 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v129[3] = v109;
  movieViewHeightConstraint = [(SFShareAudioHoldButtonViewController *)self movieViewHeightConstraint];
  v129[4] = movieViewHeightConstraint;
  movieViewLeadingConstraint = [(SFShareAudioHoldButtonViewController *)self movieViewLeadingConstraint];
  v129[5] = movieViewLeadingConstraint;
  movieViewTrailingConstraint = [(SFShareAudioHoldButtonViewController *)self movieViewTrailingConstraint];
  v129[6] = movieViewTrailingConstraint;
  shareImageView3 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  centerXAnchor = [shareImageView3 centerXAnchor];
  view11 = [(SFShareAudioHoldButtonViewController *)self view];
  centerXAnchor2 = [view11 centerXAnchor];
  v101 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v129[7] = v101;
  shareImageView4 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  topAnchor5 = [shareImageView4 topAnchor];
  titleLabel13 = [(SFShareAudioBaseViewController *)self titleLabel];
  bottomAnchor = [titleLabel13 bottomAnchor];
  v95 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:26.0];
  v129[8] = v95;
  shareImageView5 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  bottomAnchor2 = [shareImageView5 bottomAnchor];
  infoLabel9 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  topAnchor6 = [infoLabel9 topAnchor];
  v90 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:topAnchor6 constant:-16.0];
  v129[9] = v90;
  infoLabel10 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  leadingAnchor5 = [infoLabel10 leadingAnchor];
  view12 = [(SFShareAudioHoldButtonViewController *)self view];
  leadingAnchor6 = [view12 leadingAnchor];
  v85 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:16.0];
  v129[10] = v85;
  infoLabel11 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  trailingAnchor5 = [infoLabel11 trailingAnchor];
  view13 = [(SFShareAudioHoldButtonViewController *)self view];
  trailingAnchor6 = [view13 trailingAnchor];
  v80 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-16.0];
  v129[11] = v80;
  infoLabel12 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  bottomAnchor3 = [infoLabel12 bottomAnchor];
  cancelButton7 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  topAnchor7 = [cancelButton7 topAnchor];
  v75 = [bottomAnchor3 constraintEqualToAnchor:topAnchor7 constant:-26.0];
  v129[12] = v75;
  cancelButton8 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  leadingAnchor7 = [cancelButton8 leadingAnchor];
  view14 = [(SFShareAudioHoldButtonViewController *)self view];
  leadingAnchor8 = [view14 leadingAnchor];
  v70 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:36.0];
  v129[13] = v70;
  cancelButton9 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  trailingAnchor7 = [cancelButton9 trailingAnchor];
  view15 = [(SFShareAudioHoldButtonViewController *)self view];
  trailingAnchor8 = [view15 trailingAnchor];
  v62 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-36.0];
  v129[14] = v62;
  cancelButton10 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  bottomAnchor4 = [cancelButton10 bottomAnchor];
  view16 = [(SFShareAudioHoldButtonViewController *)self view];
  bottomAnchor5 = [view16 bottomAnchor];
  v67 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-21.0];
  v129[15] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:16];
  [v100 activateConstraints:v68];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v51[1] = *MEMORY[0x1E69E9840];
  v5 = &OBJC_IVAR___SFAirDropActivityViewController__cachedSharedItems;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioHoldButtonViewController viewWillAppear:];
  }

  v48.receiver = self;
  v48.super_class = SFShareAudioHoldButtonViewController;
  [(SFShareAudioBaseViewController *)&v48 viewWillAppear:appearCopy];
  mainBundle = [(SFShareAudioViewController *)self->super._mainController mainBundle];
  v7 = [objc_alloc(MEMORY[0x1E69CDEA0]) initWithProductID:self->_colorCode];
  airPodsMax = [MEMORY[0x1E69CDEA0] airPodsMax];

  if (v7 == airPodsMax)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Localizable-PID_%d", self->_colorCode];
    v14 = MEMORY[0x1E696ACD8];
    movieViewHeightConstraint = [(SFShareAudioHoldButtonViewController *)self movieViewHeightConstraint];
    v51[0] = movieViewHeightConstraint;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [v14 deactivateConstraints:v16];

    productMovieView = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    heightAnchor = [productMovieView heightAnchor];
    productMovieView2 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    widthAnchor = [productMovieView2 widthAnchor];
    v21 = [heightAnchor constraintEqualToAnchor:widthAnchor multiplier:0.9375];
    [(SFShareAudioHoldButtonViewController *)self setMovieViewHeightConstraint:v21];

    v22 = MEMORY[0x1E696ACD8];
    movieViewHeightConstraint2 = [(SFShareAudioHoldButtonViewController *)self movieViewHeightConstraint];
    v50 = movieViewHeightConstraint2;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    [v22 activateConstraints:v24];

    movieViewLeadingConstraint = [(SFShareAudioHoldButtonViewController *)self movieViewLeadingConstraint];
    [movieViewLeadingConstraint setConstant:0.0];

    movieViewTrailingConstraint = [(SFShareAudioHoldButtonViewController *)self movieViewTrailingConstraint];
    [movieViewTrailingConstraint setConstant:0.0];

    view = [(SFShareAudioHoldButtonViewController *)self view];
    [view layoutIfNeeded];

    b768e = objc_alloc_init(MEMORY[0x1E69DD250]);
    productMovieView3 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    [productMovieView3 bounds];
    [b768e setFrame:?];

    v29 = objc_alloc_init(MEMORY[0x1E6979380]);
    [b768e bounds];
    [v29 setFrame:?];
    [v29 setLocations:&unk_1F37F4008];
    v30 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    cGColor = [v30 CGColor];

    v49[0] = cGColor;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v49[1] = [whiteColor CGColor];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    v49[2] = [whiteColor2 CGColor];
    v49[3] = cGColor;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v29 setColors:v34];

    v5 = &OBJC_IVAR___SFAirDropActivityViewController__cachedSharedItems;
    layer = [b768e layer];
    [layer addSublayer:v29];

    productMovieView4 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    [productMovieView4 setMaskView:b768e];

LABEL_12:
    goto LABEL_13;
  }

  b768e = [MEMORY[0x1E69CDEA0] b768e];
  if (v7 == b768e)
  {
    v13 = @"Localizable-PID_8219";
    goto LABEL_12;
  }

  b768m = [MEMORY[0x1E69CDEA0] b768m];

  if (v7 == b768m)
  {
    v13 = @"Localizable-PID_8219";
  }

  else
  {
    b788 = [MEMORY[0x1E69CDEA0] b788];

    if (v7 == b788)
    {
      v13 = @"Localizable-PID_8231";
    }

    else
    {
      colorCode = self->_colorCode;
      if (colorCode == 8203)
      {
        goto LABEL_9;
      }

      v42 = [objc_alloc(MEMORY[0x1E69CDEA0]) initWithProductID:colorCode];
      if (v42)
      {
        v43 = v42;
        buttonLocation = [v42 buttonLocation];

        if (!buttonLocation)
        {
          goto LABEL_9;
        }
      }

      v45 = self->_colorCode;
      v13 = @"Localizable-ShareAudio";
      if (((v45 - 8194) > 0xD || ((1 << (v45 - 2)) & 0x3001) == 0) && v45 != 0x10000)
      {
        v46 = [objc_alloc(MEMORY[0x1E69CDEA0]) initWithProductID:v45];
        [v46 isAirPods];

LABEL_9:
        v13 = @"Localizable-ShareAudio";
      }
    }
  }

LABEL_13:
  v37 = SFLocalizedStringEx();
  [(UILabel *)self->_infoLabel setText:v37];

  v38 = SFLocalizedStringEx();
  [(UILabel *)self->super._titleLabel setText:v38];

  if (self->_colorCode)
  {
    v39 = v5[800];
    if (v39 <= 30 && (v39 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v40 = objc_alloc_init(MEMORY[0x1E69CDE48]);
    [v40 setBluetoothProductID:LOWORD(self->_colorCode)];
    [v40 setColorCode:*(&self->super._viewActive + 1)];
    [v40 setTimeoutSeconds:5.0];
    v41 = objc_alloc_init(MEMORY[0x1E69CDE40]);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __55__SFShareAudioHoldButtonViewController_viewWillAppear___block_invoke;
    v47[3] = &unk_1E7EE4620;
    v47[4] = v41;
    v47[5] = self;
    [v41 getDeviceAssets:v40 completion:v47];
  }

  else
  {
    [(SFShareAudioHoldButtonViewController *)self _updateDeviceVisual:0];
  }
}

void __55__SFShareAudioHoldButtonViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) invalidate];
  v3 = *(a1 + 40);
  if (v3[1016] == 1)
  {
    v4 = [v5 assetBundlePath];
    [v3 _updateDeviceVisual:v4];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioHoldButtonViewController viewWillDisappear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioHoldButtonViewController;
  [(SFShareAudioBaseViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SFShareAudioHoldButtonViewController;
  [(SFShareAudioHoldButtonViewController *)&v4 viewDidDisappear:disappear];
  [(SFMediaPlayerView *)self->_productMovieView stop];
}

- (void)eventCancel:(id)cancel
{
  cancelCopy = cancel;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioHoldButtonViewController eventCancel:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)visual
{
  visualCopy = visual;
  v11 = visualCopy;
  if (visualCopy)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithPath:visualCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 pathForResource:*MEMORY[0x1E69CDF08] ofType:0];
  if (v6)
  {
    v7 = [v5 URLForResource:*MEMORY[0x1E69CDEF8] withExtension:0];
    if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioHoldButtonViewController _updateDeviceVisual:];
    }

    [(SFMediaPlayerView *)self->_productMovieView startMovieLoopWithPath:v6 assetType:1 adjustmentsURL:v7];
    [(SFMediaPlayerView *)self->_productMovieView setHidden:0];
  }

  else
  {
    if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioHoldButtonViewController _updateDeviceVisual:];
    }

    v8 = MEMORY[0x1E69DCAB8];
    mainBundle = [(SFShareAudioViewController *)self->super._mainController mainBundle];
    v10 = [v8 imageNamed:@"ShareAudioAirPods" inBundle:mainBundle compatibleWithTraitCollection:0];
    [(UIImageView *)self->_shareImageView setImage:v10];

    [(UIImageView *)self->_shareImageView setHidden:0];
  }
}

@end
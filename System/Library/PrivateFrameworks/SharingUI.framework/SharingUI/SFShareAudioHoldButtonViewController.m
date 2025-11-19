@interface SFShareAudioHoldButtonViewController
- (void)_updateDeviceVisual:(id)a3;
- (void)eventCancel:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFShareAudioHoldButtonViewController

- (void)viewDidLoad
{
  v129[16] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(SFShareAudioBaseViewController *)self setTitleLabel:v3];

  v4 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v6 setColor:v5];

  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDB8]];
  v8 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v8 setFont:v7];

  v9 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v9 setTextAlignment:1];

  v10 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v10 setAdjustsFontSizeToFitWidth:1];

  v11 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v11 setMinimumScaleFactor:0.5];

  v12 = [(SFShareAudioHoldButtonViewController *)self view];
  v13 = [(SFShareAudioBaseViewController *)self titleLabel];
  [v12 addSubview:v13];

  v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [(SFShareAudioHoldButtonViewController *)self setShareImageView:v14];

  v15 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(SFShareAudioHoldButtonViewController *)self view];
  v17 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  [v16 addSubview:v17];

  v18 = objc_alloc_init(SFMediaPlayerView);
  [(SFShareAudioHoldButtonViewController *)self setProductMovieView:v18];

  v19 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [(SFShareAudioHoldButtonViewController *)self view];
  v21 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  [v20 addSubview:v21];

  v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(SFShareAudioHoldButtonViewController *)self setInfoLabel:v22];

  v23 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v24 setNumberOfLines:2];

  v25 = [MEMORY[0x1E69DC888] whiteColor];
  v26 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v26 setColor:v25];

  v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v28 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v28 setFont:v27];

  v29 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v29 setTextAlignment:1];

  v30 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v30 setAdjustsFontSizeToFitWidth:1];

  v31 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v31 setMinimumScaleFactor:0.5];

  v32 = [(SFShareAudioHoldButtonViewController *)self view];
  v33 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  [v32 addSubview:v33];

  v34 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [(SFShareAudioHoldButtonViewController *)self setCancelButton:v34];

  v35 = [MEMORY[0x1E69DC888] whiteColor];
  v36 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [v36 setTintColor:v35];

  v37 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  v38 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v39 = [v38 titleLabel];
  [v39 setFont:v37];

  v40 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [v40 setTranslatesAutoresizingMaskIntoConstraints:0];

  v41 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v42 = SFLocalizedStringForKey();
  [v41 setTitle:v42 forState:0];

  v43 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [v43 addTarget:self action:sel_eventCancel_ forControlEvents:64];

  v44 = [(SFShareAudioHoldButtonViewController *)self view];
  v45 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  [v44 addSubview:v45];

  v46 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  v47 = [v46 leadingAnchor];
  v48 = [(SFShareAudioHoldButtonViewController *)self view];
  v49 = [v48 leadingAnchor];
  v50 = [v47 constraintEqualToAnchor:v49 constant:8.0];
  [(SFShareAudioHoldButtonViewController *)self setMovieViewLeadingConstraint:v50];

  v51 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  v52 = [v51 trailingAnchor];
  v53 = [(SFShareAudioHoldButtonViewController *)self view];
  v54 = [v53 trailingAnchor];
  v55 = [v52 constraintEqualToAnchor:v54 constant:-8.0];
  [(SFShareAudioHoldButtonViewController *)self setMovieViewTrailingConstraint:v55];

  v56 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  v57 = [v56 heightAnchor];
  v58 = [v57 constraintEqualToConstant:281.0];
  [(SFShareAudioHoldButtonViewController *)self setMovieViewHeightConstraint:v58];

  v100 = MEMORY[0x1E696ACD8];
  v128 = [(SFShareAudioBaseViewController *)self titleLabel];
  v126 = [v128 leadingAnchor];
  v127 = [(SFShareAudioHoldButtonViewController *)self view];
  v125 = [v127 leadingAnchor];
  v124 = [v126 constraintEqualToAnchor:v125 constant:36.0];
  v129[0] = v124;
  v123 = [(SFShareAudioBaseViewController *)self titleLabel];
  v121 = [v123 trailingAnchor];
  v122 = [(SFShareAudioHoldButtonViewController *)self view];
  v120 = [v122 trailingAnchor];
  v119 = [v121 constraintEqualToAnchor:v120 constant:-36.0];
  v129[1] = v119;
  v118 = [(SFShareAudioBaseViewController *)self titleLabel];
  v116 = [v118 topAnchor];
  v117 = [(SFShareAudioHoldButtonViewController *)self view];
  v115 = [v117 topAnchor];
  v114 = [v116 constraintEqualToAnchor:v115 constant:36.0];
  v129[2] = v114;
  v113 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
  v111 = [v113 topAnchor];
  v112 = [(SFShareAudioBaseViewController *)self titleLabel];
  v110 = [v112 topAnchor];
  v109 = [v111 constraintEqualToAnchor:v110];
  v129[3] = v109;
  v108 = [(SFShareAudioHoldButtonViewController *)self movieViewHeightConstraint];
  v129[4] = v108;
  v107 = [(SFShareAudioHoldButtonViewController *)self movieViewLeadingConstraint];
  v129[5] = v107;
  v106 = [(SFShareAudioHoldButtonViewController *)self movieViewTrailingConstraint];
  v129[6] = v106;
  v105 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  v103 = [v105 centerXAnchor];
  v104 = [(SFShareAudioHoldButtonViewController *)self view];
  v102 = [v104 centerXAnchor];
  v101 = [v103 constraintEqualToAnchor:v102];
  v129[7] = v101;
  v99 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  v97 = [v99 topAnchor];
  v98 = [(SFShareAudioBaseViewController *)self titleLabel];
  v96 = [v98 bottomAnchor];
  v95 = [v97 constraintGreaterThanOrEqualToAnchor:v96 constant:26.0];
  v129[8] = v95;
  v94 = [(SFShareAudioHoldButtonViewController *)self shareImageView];
  v92 = [v94 bottomAnchor];
  v93 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  v91 = [v93 topAnchor];
  v90 = [v92 constraintLessThanOrEqualToAnchor:v91 constant:-16.0];
  v129[9] = v90;
  v89 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  v87 = [v89 leadingAnchor];
  v88 = [(SFShareAudioHoldButtonViewController *)self view];
  v86 = [v88 leadingAnchor];
  v85 = [v87 constraintGreaterThanOrEqualToAnchor:v86 constant:16.0];
  v129[10] = v85;
  v84 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  v82 = [v84 trailingAnchor];
  v83 = [(SFShareAudioHoldButtonViewController *)self view];
  v81 = [v83 trailingAnchor];
  v80 = [v82 constraintLessThanOrEqualToAnchor:v81 constant:-16.0];
  v129[11] = v80;
  v79 = [(SFShareAudioHoldButtonViewController *)self infoLabel];
  v77 = [v79 bottomAnchor];
  v78 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v76 = [v78 topAnchor];
  v75 = [v77 constraintEqualToAnchor:v76 constant:-26.0];
  v129[12] = v75;
  v74 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v72 = [v74 leadingAnchor];
  v73 = [(SFShareAudioHoldButtonViewController *)self view];
  v71 = [v73 leadingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71 constant:36.0];
  v129[13] = v70;
  v69 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v59 = [v69 trailingAnchor];
  v60 = [(SFShareAudioHoldButtonViewController *)self view];
  v61 = [v60 trailingAnchor];
  v62 = [v59 constraintEqualToAnchor:v61 constant:-36.0];
  v129[14] = v62;
  v63 = [(SFShareAudioHoldButtonViewController *)self cancelButton];
  v64 = [v63 bottomAnchor];
  v65 = [(SFShareAudioHoldButtonViewController *)self view];
  v66 = [v65 bottomAnchor];
  v67 = [v64 constraintEqualToAnchor:v66 constant:-21.0];
  v129[15] = v67;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:16];
  [v100 activateConstraints:v68];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v51[1] = *MEMORY[0x1E69E9840];
  v5 = &OBJC_IVAR___SFAirDropActivityViewController__cachedSharedItems;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioHoldButtonViewController viewWillAppear:];
  }

  v48.receiver = self;
  v48.super_class = SFShareAudioHoldButtonViewController;
  [(SFShareAudioBaseViewController *)&v48 viewWillAppear:v3];
  v6 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
  v7 = [objc_alloc(MEMORY[0x1E69CDEA0]) initWithProductID:self->_colorCode];
  v8 = [MEMORY[0x1E69CDEA0] airPodsMax];

  if (v7 == v8)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Localizable-PID_%d", self->_colorCode];
    v14 = MEMORY[0x1E696ACD8];
    v15 = [(SFShareAudioHoldButtonViewController *)self movieViewHeightConstraint];
    v51[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
    [v14 deactivateConstraints:v16];

    v17 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    v18 = [v17 heightAnchor];
    v19 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    v20 = [v19 widthAnchor];
    v21 = [v18 constraintEqualToAnchor:v20 multiplier:0.9375];
    [(SFShareAudioHoldButtonViewController *)self setMovieViewHeightConstraint:v21];

    v22 = MEMORY[0x1E696ACD8];
    v23 = [(SFShareAudioHoldButtonViewController *)self movieViewHeightConstraint];
    v50 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    [v22 activateConstraints:v24];

    v25 = [(SFShareAudioHoldButtonViewController *)self movieViewLeadingConstraint];
    [v25 setConstant:0.0];

    v26 = [(SFShareAudioHoldButtonViewController *)self movieViewTrailingConstraint];
    [v26 setConstant:0.0];

    v27 = [(SFShareAudioHoldButtonViewController *)self view];
    [v27 layoutIfNeeded];

    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v28 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    [v28 bounds];
    [v9 setFrame:?];

    v29 = objc_alloc_init(MEMORY[0x1E6979380]);
    [v9 bounds];
    [v29 setFrame:?];
    [v29 setLocations:&unk_1F37F4008];
    v30 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    v31 = [v30 CGColor];

    v49[0] = v31;
    v32 = [MEMORY[0x1E69DC888] whiteColor];
    v49[1] = [v32 CGColor];
    v33 = [MEMORY[0x1E69DC888] whiteColor];
    v49[2] = [v33 CGColor];
    v49[3] = v31;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
    [v29 setColors:v34];

    v5 = &OBJC_IVAR___SFAirDropActivityViewController__cachedSharedItems;
    v35 = [v9 layer];
    [v35 addSublayer:v29];

    v36 = [(SFShareAudioHoldButtonViewController *)self productMovieView];
    [v36 setMaskView:v9];

LABEL_12:
    goto LABEL_13;
  }

  v9 = [MEMORY[0x1E69CDEA0] b768e];
  if (v7 == v9)
  {
    v13 = @"Localizable-PID_8219";
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E69CDEA0] b768m];

  if (v7 == v10)
  {
    v13 = @"Localizable-PID_8219";
  }

  else
  {
    v11 = [MEMORY[0x1E69CDEA0] b788];

    if (v7 == v11)
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
        v44 = [v42 buttonLocation];

        if (!v44)
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

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioHoldButtonViewController viewWillDisappear:];
  }

  v5.receiver = self;
  v5.super_class = SFShareAudioHoldButtonViewController;
  [(SFShareAudioBaseViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFShareAudioHoldButtonViewController;
  [(SFShareAudioHoldButtonViewController *)&v4 viewDidDisappear:a3];
  [(SFMediaPlayerView *)self->_productMovieView stop];
}

- (void)eventCancel:(id)a3
{
  v4 = a3;
  if (gLogCategory_SFShareAudioViewController <= 30 && (gLogCategory_SFShareAudioViewController != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioHoldButtonViewController eventCancel:];
  }

  [(SFShareAudioViewController *)self->super._mainController reportUserCancelled];
}

- (void)_updateDeviceVisual:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithPath:v4];
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
    v9 = [(SFShareAudioViewController *)self->super._mainController mainBundle];
    v10 = [v8 imageNamed:@"ShareAudioAirPods" inBundle:v9 compatibleWithTraitCollection:0];
    [(UIImageView *)self->_shareImageView setImage:v10];

    [(UIImageView *)self->_shareImageView setHidden:0];
  }
}

@end
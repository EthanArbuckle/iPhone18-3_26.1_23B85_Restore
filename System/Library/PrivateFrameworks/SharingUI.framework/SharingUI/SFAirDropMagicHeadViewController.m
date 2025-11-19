@interface SFAirDropMagicHeadViewController
- (SFAirDropMagicHeadViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SFAirDropMagicHeadViewControllerDelegate)delegate;
- (id)headForRealName:(id)a3;
- (void)calculatePreferredSize;
- (void)dealloc;
- (void)handleDeviceMotion:(id)a3;
- (void)magicHeadChangedFacingDegree:(double)a3;
- (void)magicHeadChangedSelectionToNode:(id)a3;
- (void)magicHeadDidFinishTransferForNode:(id)a3;
- (void)magicHeadDidStartTransferForNode:(id)a3;
- (void)magicHeadDidTerminateTransferForNode:(id)a3;
- (void)magicHeadSelectedHeadRequestingDisabledState:(BOOL)a3;
- (void)magicHeadSelectedHeadRequestingSubtitleTextChangeForState:(int64_t)a3;
- (void)magicHeadSelectedNodeTapped:(id)a3;
- (void)resetSecondLabel;
- (void)resetTransferStateWithRealName:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setSecondLabelText:(id)a3 withTextColor:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)start;
- (void)stop;
- (void)subscribedProgress:(id)a3 forPersonWithRealName:(id)a4;
- (void)transferCancelledToPerson:(id)a3;
- (void)update;
- (void)updateLabels;
- (void)updateNodes:(id)a3 withPersonToProgress:(id)a4;
- (void)userSelectedWithRealName:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SFAirDropMagicHeadViewController

- (SFAirDropMagicHeadViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SFAirDropMagicHeadViewController;
  v8 = [(SFAirDropMagicHeadViewController *)&v14 initWithNibName:v6 bundle:v7];
  if (v8)
  {
    if (IsAppleInternalBuild())
    {
      [MEMORY[0x1E69CDEB8] rootSettings];
    }

    v8->_initialAngleDegrees = 999.0;
    v8->_currentOrientation = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v9 = getCMMotionManagerClass(void)::softClass;
    v19 = getCMMotionManagerClass(void)::softClass;
    if (!getCMMotionManagerClass(void)::softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___ZL23getCMMotionManagerClassv_block_invoke;
      v15[3] = &unk_1E7EE3C08;
      v15[4] = &v16;
      ___ZL23getCMMotionManagerClassv_block_invoke(v15);
      v9 = v17[3];
    }

    v10 = v9;
    _Block_object_dispose(&v16, 8);
    v11 = objc_opt_new();
    motionManager = v8->_motionManager;
    v8->_motionManager = v11;

    [(CMMotionManager *)v8->_motionManager setAccelerometerUpdateInterval:0.1];
  }

  return v8;
}

- (void)dealloc
{
  [(SFMagicHeadWheelView *)self->_wheelView invalidate];
  v3.receiver = self;
  v3.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v3 dealloc];
}

- (void)update
{
  if ([(SFAirDropMagicHeadViewController *)self viewVisible]&& [(SFAirDropMagicHeadViewController *)self enabled])
  {

    [(SFAirDropMagicHeadViewController *)self start];
  }

  else
  {

    [(SFAirDropMagicHeadViewController *)self stop];
  }
}

- (void)start
{
  if (![(SFAirDropMagicHeadViewController *)self motionUpdatesStarted])
  {
    v3 = [(SFAirDropMagicHeadViewController *)self wheelView];
    [v3 setEnabled:1];

    [(SFAirDropMagicHeadViewController *)self setMotionUpdatesStarted:1];
    objc_initWeak(&location, self);
    motionManager = self->_motionManager;
    v5 = [MEMORY[0x1E696ADC8] mainQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__SFAirDropMagicHeadViewController_start__block_invoke;
    v6[3] = &unk_1E7EE3A80;
    objc_copyWeak(&v7, &location);
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesToQueue:v5 withHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __41__SFAirDropMagicHeadViewController_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained handleDeviceMotion:v5];

    v3 = v5;
  }
}

- (void)stop
{
  if ([(SFAirDropMagicHeadViewController *)self motionUpdatesStarted])
  {
    v3 = [(SFAirDropMagicHeadViewController *)self wheelView];
    [v3 setEnabled:0];

    [(SFAirDropMagicHeadViewController *)self setMotionUpdatesStarted:0];
    [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
    motionManager = self->_motionManager;

    [(CMMotionManager *)motionManager stopAccelerometerUpdates];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(SFAirDropMagicHeadViewController *)self update];
  }
}

- (void)viewDidLoad
{
  v80[4] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v79 viewDidLoad];
  v77 = [MEMORY[0x1E69DC888] clearColor];
  v3 = [(SFAirDropMagicHeadViewController *)self view];
  [v3 setBackgroundColor:v77];

  v78 = [(SFAirDropMagicHeadViewController *)self view];
  v4 = [SFMagicHeadWheelView alloc];
  v5 = [(SFAirDropMagicHeadViewController *)self numberOfDots];
  [(SFAirDropMagicHeadViewController *)self dotsRadius];
  v76 = [(SFMagicHeadWheelView *)v4 initWithNumberOfDots:v5 dotsRadius:[(SFAirDropMagicHeadViewController *)self isMagicHead] isMagicHead:v6];
  [(SFMagicHeadWheelView *)v76 setDelegate:self];
  [(SFMagicHeadWheelView *)v76 setEnabled:[(SFAirDropMagicHeadViewController *)self enabled]];
  [v78 addSubview:v76];
  if (![(SFAirDropMagicHeadViewController *)self isMagicHead])
  {
    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    v8 = MEMORY[0x1E695F058];
    v75 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v9 = SFFontForTextStyleWithAdditionalSymbolicTraits(*MEMORY[0x1E69DDCF8], 0x8000);
    [v75 setFont:v9];

    v10 = [MEMORY[0x1E69DC888] labelColor];
    [v75 setTextColor:v10];

    [v75 setAlpha:0.0];
    v74 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
    v11 = [v75 font];
    [v74 setFont:v11];

    v12 = [v75 textColor];
    [v74 setTextColor:v12];

    [v75 alpha];
    [v74 setAlpha:?];
    v65 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v70 = [MEMORY[0x1E69DD248] effectForBlurEffect:? style:?];
    v73 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v70];
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v78 addSubview:v73];
    v13 = [v73 contentView];
    [v13 addSubview:v75];

    v14 = [v73 contentView];
    [v14 addSubview:v74];

    v15 = MEMORY[0x1E696ACD8];
    v72 = [v73 leftAnchor];
    v69 = [v78 leftAnchor];
    v68 = [v72 constraintEqualToAnchor:?];
    v80[0] = v68;
    v71 = [v73 rightAnchor];
    v67 = [v78 rightAnchor];
    v66 = [v71 constraintEqualToAnchor:?];
    v80[1] = v66;
    v16 = [v73 topAnchor];
    v17 = [v75 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v80[2] = v18;
    v19 = [v73 bottomAnchor];
    v20 = [v75 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v80[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
    [v15 activateConstraints:v22];

    [v78 addSubview:v73];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
    v24 = SFFontForTextStyleWithAdditionalSymbolicTraits(*MEMORY[0x1E69DDD28], 0x8000);
    [v23 setFont:v24];

    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v23 setTextColor:v25];

    [v78 addSubview:v23];
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1148846080;
    [v75 setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [v75 setContentCompressionResistancePriority:0 forAxis:v27];
    v28 = [v75 topAnchor];
    v29 = [(SFMagicHeadWheelView *)v76 bottomAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-14.0];
    [v30 setActive:1];

    v31 = [v75 centerXAnchor];
    v32 = [(SFMagicHeadWheelView *)v76 centerXAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    [v33 setActive:1];

    [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v34) = 1148846080;
    [v74 setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [v74 setContentCompressionResistancePriority:0 forAxis:v35];
    v36 = [v74 topAnchor];
    v37 = [(SFMagicHeadWheelView *)v76 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:-14.0];
    [v38 setActive:1];

    v39 = [v74 centerXAnchor];
    v40 = [(SFMagicHeadWheelView *)v76 centerXAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
    [v41 setActive:1];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v42) = 1148846080;
    [v23 setContentCompressionResistancePriority:1 forAxis:v42];
    LODWORD(v43) = 1148846080;
    [v23 setContentCompressionResistancePriority:0 forAxis:v43];
    v44 = [v23 topAnchor];
    v45 = [v75 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45 constant:3.0];
    [v46 setActive:1];

    v47 = [v23 centerXAnchor];
    v48 = [(SFMagicHeadWheelView *)v76 centerXAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    [v49 setActive:1];

    v50 = [v23 bottomAnchor];
    v51 = [v78 bottomAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    [(SFAirDropMagicHeadViewController *)self setNameLabel:v75];
    [(SFAirDropMagicHeadViewController *)self setNameLabel2:v74];
    [(SFAirDropMagicHeadViewController *)self setSecondLabel:v23];
    [(SFAirDropMagicHeadViewController *)self resetSecondLabel];
    [v23 setAlpha:0.0];
  }

  [(SFMagicHeadWheelView *)v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = [(SFMagicHeadWheelView *)v76 topAnchor];
  v54 = [v78 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];
  [v55 setActive:1];

  v56 = [(SFMagicHeadWheelView *)v76 rightAnchor];
  v57 = [v78 rightAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];
  [v58 setActive:1];

  v59 = [(SFMagicHeadWheelView *)v76 leftAnchor];
  v60 = [v78 leftAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
  [v61 setActive:1];

  if ([(SFAirDropMagicHeadViewController *)self isMagicHead])
  {
    v62 = [(SFMagicHeadWheelView *)v76 bottomAnchor];
    v63 = [v78 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    [v64 setActive:1];
  }

  else
  {
    v62 = [(SFMagicHeadWheelView *)v76 heightAnchor];
    v63 = [v62 constraintEqualToConstant:189.0];
    [v63 setActive:1];
  }

  [(SFAirDropMagicHeadViewController *)self setWheelView:v76];
}

- (void)resetSecondLabel
{
  v6 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  v3 = [v6 layer];
  [v3 removeAllAnimations];

  v7 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [v7 setAlpha:1.0];

  v8 = SFLocalizedStringForKeyInStringsFileNamed();
  v4 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [v4 setText:v8];

  v9 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v5 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [v5 setTextColor:v9];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v6 viewWillAppear:a3];
  v4 = magic_head_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B9E4B000, v4, OS_LOG_TYPE_DEFAULT, "AirDrop magic head will appear", v5, 2u);
  }

  [(SFAirDropMagicHeadViewController *)self setViewVisible:1];
  [(SFAirDropMagicHeadViewController *)self update];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v6 viewDidDisappear:a3];
  [(SFAirDropMagicHeadViewController *)self setViewVisible:0];
  [(SFAirDropMagicHeadViewController *)self update];
  v4 = magic_head_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B9E4B000, v4, OS_LOG_TYPE_DEFAULT, "AirDrop magic head did disappear", v5, 2u);
  }
}

- (void)calculatePreferredSize
{
  v6 = [(SFAirDropMagicHeadViewController *)self view];
  [v6 bounds];
  v4 = v3;
  v5 = *(MEMORY[0x1E69DE090] + 8);

  v7 = [(SFAirDropMagicHeadViewController *)self view];
  [v7 systemLayoutSizeFittingSize:{v4, v5}];
  [(SFAirDropMagicHeadViewController *)self setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v3 viewDidLayoutSubviews];
  [(SFAirDropMagicHeadViewController *)self calculatePreferredSize];
}

- (void)updateNodes:(id)a3 withPersonToProgress:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v25 = a4;
  v26 = self;
  v6 = [(SFAirDropMagicHeadViewController *)self wheelView];
  if (([v6 isMagicHead] & 1) == 0)
  {
    v7 = [(SFAirDropMagicHeadViewController *)self wheelView];
    v8 = [v7 selectedHead];
    v9 = [v8 node];
    v10 = [v24 containsObject:v9];

    if (v10)
    {
      goto LABEL_5;
    }

    v11 = [(SFAirDropMagicHeadViewController *)v26 wheelView];
    [v11 lostSelectedNode];

    v6 = [(SFAirDropMagicHeadViewController *)v26 secondLabel];
    [v6 setText:0];
  }

LABEL_5:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v24;
  v12 = 0;
  v13 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v13)
  {
    v14 = *v31;
    LODWORD(v15) = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = magic_head_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v27 = [v17 rangingMeasurement];
          v19 = [v27 timestampTicks];
          v20 = [v17 rangingMeasurement];
          [v20 timestampTicks];
          v21 = SFUpTicksDiffFromNowToString();
          *buf = 138412802;
          v35 = v17;
          v36 = 2048;
          v37 = v19;
          v38 = 2112;
          v39 = v21;
          _os_log_debug_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEBUG, "Inspecting if selection has changed for %@ %llu (%@)", buf, 0x20u);
        }

        if (!v12)
        {
          if ([v17 selectionReason])
          {
            v12 = v17;
          }

          else
          {
            v12 = 0;
          }
        }

        v15 = ([v17 isUltraWideBindCapable] ^ 1) & v15;
      }

      v13 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 1;
  }

  v22 = [(SFAirDropMagicHeadViewController *)v26 wheelView];
  [v22 updateSelectedNode:v12];

  v23 = [(SFAirDropMagicHeadViewController *)v26 wheelView];
  [v23 setNoUWBCapableDevices:v15];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__SFAirDropMagicHeadViewController_updateNodes_withPersonToProgress___block_invoke;
  v29[3] = &unk_1E7EE3AA8;
  v29[4] = v26;
  [v25 enumerateKeysAndObjectsUsingBlock:v29];
}

- (void)updateLabels
{
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeScale(&v38, 0.85, 0.85);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke;
  aBlock[3] = &unk_1E7EE3AD0;
  v37 = v38;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_2;
  v34[3] = &unk_1E7EE3AF8;
  v4 = v3;
  v35 = v4;
  v5 = _Block_copy(v34);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_3;
  v30[3] = &unk_1E7EE3B48;
  v32 = 0x3FD0000000000000;
  v33 = 608;
  v6 = v4;
  v31 = v6;
  v7 = _Block_copy(v30);
  v8 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
  [v8 alpha];
  if (v9 == 0.0)
  {
    [(SFAirDropMagicHeadViewController *)self nameLabel];
  }

  else
  {
    [(SFAirDropMagicHeadViewController *)self nameLabel2];
  }
  v10 = ;

  v11 = [(SFAirDropMagicHeadViewController *)self wheelView];
  v12 = [v11 selectedHead];

  if (v12)
  {
    v27 = v6;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_5;
    v29[3] = &__block_descriptor_48_e20_v24__0__UILabel_8d16l;
    v29[4] = 0x3FD0000000000000;
    v29[5] = 608;
    v13 = _Block_copy(v29);
    v14 = [(SFAirDropMagicHeadViewController *)self wheelView];
    v15 = [v14 selectedHead];
    v16 = [v15 node];
    v17 = [MEMORY[0x1E695DF58] currentLocale];
    v18 = [v16 displayNameForLocale:v17];

    v6 = v27;
    [v10 alpha];
    if (v19 == 0.0)
    {
      [v10 setText:v18];
      v5[2](v5, v10);
      (v13)[2](v13, v10, 0.0);
      v20 = [(SFAirDropMagicHeadViewController *)self secondLabel];
      (v13)[2](v13, v20, 0.0);
LABEL_17:

      goto LABEL_18;
    }

    v7[2](v7, v10);
    v21 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
    v22 = v10;
    v23 = v21;
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      if ((v22 != 0) == (v23 == 0))
      {

LABEL_15:
        v26 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
        goto LABEL_16;
      }

      v25 = [v22 isEqual:v23];

      if (!v25)
      {
        goto LABEL_15;
      }
    }

    v26 = [(SFAirDropMagicHeadViewController *)self nameLabel];
LABEL_16:
    v20 = v26;

    [v20 setText:v18];
    v5[2](v5, v20);
    (v13)[2](v13, v20, 0.15);
    v6 = v28;
    goto LABEL_17;
  }

  v7[2](v7, v10);
  v13 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  v7[2](v7, v13);
LABEL_18:
}

void __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 56);
  v5[0] = *(a1 + 40);
  v5[1] = v4;
  v5[2] = *(a1 + 72);
  [v3 setTransform:v5];
  [v3 setAlpha:0.0];
  [*(a1 + 32) resetSecondLabel];
}

void __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  (*(*(a1 + 32) + 16))();
  [MEMORY[0x1E6979518] commit];
}

void __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E69DD250];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_4;
  v9[3] = &unk_1E7EE3B20;
  v7 = *(a1 + 32);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [v4 animateWithDuration:v6 delay:v9 options:0 animations:v5 completion:0.0];
}

void __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_5(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E69DD250];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_6;
  v10[3] = &unk_1E7EE3B70;
  v11 = v5;
  v9 = v5;
  [v6 animateWithDuration:v8 delay:v10 options:0 animations:v7 completion:a3];
}

uint64_t __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_6(uint64_t a1)
{
  v2 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [*(a1 + 32) setTransform:v4];
  return [*(a1 + 32) setAlpha:1.0];
}

- (id)headForRealName:(id)a3
{
  v4 = a3;
  v5 = [(SFAirDropMagicHeadViewController *)self wheelView];
  v6 = [v5 selectedHead];
  v7 = [v6 node];
  v8 = [v7 realName];
  v9 = v4;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if ((v9 == 0) == (v8 != 0))
    {

      v12 = 0;
      goto LABEL_8;
    }

    v11 = [v8 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_9;
    }
  }

  v5 = [(SFAirDropMagicHeadViewController *)self wheelView];
  v12 = [v5 selectedHead];
LABEL_8:

LABEL_9:

  return v12;
}

- (void)subscribedProgress:(id)a3 forPersonWithRealName:(id)a4
{
  v7 = a3;
  v6 = [(SFAirDropMagicHeadViewController *)self headForRealName:a4];
  [v6 setProgress:v7];
}

- (void)resetTransferStateWithRealName:(id)a3
{
  v3 = [(SFAirDropMagicHeadViewController *)self headForRealName:a3];
  [v3 resetTransferState];
}

- (void)userSelectedWithRealName:(id)a3
{
  v3 = [(SFAirDropMagicHeadViewController *)self headForRealName:a3];
  [v3 userDidSelect];
}

- (void)transferCancelledToPerson:(id)a3
{
  v3 = [(SFAirDropMagicHeadViewController *)self headForRealName:a3];
  [v3 userDidCancel];
}

- (void)magicHeadChangedFacingDegree:(double)a3
{
  v6 = [(SFAirDropMagicHeadViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v7 = [(SFAirDropMagicHeadViewController *)self delegate];
    [v7 magicHeadViewControllerChangedFacingDegree:a3];
  }
}

- (void)magicHeadChangedSelectionToNode:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = magic_head_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "Switched selected head to %@", &v6, 0xCu);
  }

  [(SFAirDropMagicHeadViewController *)self updateLabels];
}

- (void)magicHeadSelectedNodeTapped:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = magic_head_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "Head tapped %@", &v7, 0xCu);
  }

  v6 = [(SFAirDropMagicHeadViewController *)self delegate];
  [v6 magicHeadViewControllerToggleSelectionForNode:v4];
}

- (void)magicHeadSelectedHeadRequestingDisabledState:(BOOL)a3
{
  v3 = a3;
  v5 = [(SFMagicHeadWheelView *)self->_wheelView selectedHead];

  if (v5)
  {
    v6 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
    [v6 alpha];
    if (v7 == 0.0)
    {
      [(SFAirDropMagicHeadViewController *)self nameLabel];
    }

    else
    {
      [(SFAirDropMagicHeadViewController *)self nameLabel2];
    }
    v12 = ;

    v8 = 0.2;
    if (!v3)
    {
      v8 = 1.0;
    }

    [v12 setAlpha:v8];
    v9 = [(SFAirDropMagicHeadViewController *)self secondLabel];
    v10 = v9;
    v11 = 1.0;
    if (v3)
    {
      v11 = 0.0;
    }

    [v9 setAlpha:v11];
  }
}

- (void)setSecondLabelText:(id)a3 withTextColor:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a6;
  v11 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  v12 = [v11 layer];
  [v12 removeAllAnimations];

  v13 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [v13 setAlpha:1.0];

  v14 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [v14 setText:v16];

  v15 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [v15 setTextColor:v9];

  if (v10)
  {
    v10[2](v10, 1);
  }
}

- (void)magicHeadSelectedHeadRequestingSubtitleTextChangeForState:(int64_t)a3
{
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v9 = [(SFAirDropMagicHeadViewController *)self secondLabel];
        objc_initWeak(&location, v9);

        v6 = SFLocalizedStringForKey();
        v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v8 = v13;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke;
        v13[3] = &unk_1E7EE3BE0;
        objc_copyWeak(&v14, &location);
        [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v6 withTextColor:v7 animated:1 completion:v13];
      }

      else
      {
        if (a3 != 2)
        {
          return;
        }

        v5 = [(SFAirDropMagicHeadViewController *)self secondLabel];
        objc_initWeak(&location, v5);

        v6 = SFLocalizedStringForKey();
        v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v8 = v11;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_3;
        v11[3] = &unk_1E7EE3BE0;
        objc_copyWeak(&v12, &location);
        [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v6 withTextColor:v7 animated:1 completion:v11];
      }

      objc_destroyWeak(v8 + 4);
      objc_destroyWeak(&location);
    }

    else
    {

      [(SFAirDropMagicHeadViewController *)self resetSecondLabel];
    }
  }

  else
  {
    if (a3 > 4)
    {
      if (a3 != 5 && a3 != 6)
      {
        return;
      }

      v10 = SFLocalizedStringForKey();
      v4 = [MEMORY[0x1E69DC888] systemRedColor];
      [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v10 withTextColor:v4 animated:1 completion:0];
    }

    else
    {
      if (a3 == 3)
      {
        v10 = SFLocalizedStringForKey();
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        v10 = SFLocalizedStringForKey();
        [MEMORY[0x1E69DC888] systemBlueColor];
      }
      v4 = ;
      [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v10 withTextColor:v4 animated:1 completion:0];
    }
  }
}

void __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_2;
  v2[3] = &unk_1E7EE3BB8;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:24 delay:v2 options:0 animations:0.75 completion:0.0];
  objc_destroyWeak(&v3);
}

void __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.2];
}

void __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x1E69DD250];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_4;
  v2[3] = &unk_1E7EE3BB8;
  objc_copyWeak(&v3, (a1 + 32));
  [v1 animateWithDuration:24 delay:v2 options:0 animations:0.75 completion:0.0];
  objc_destroyWeak(&v3);
}

void __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setAlpha:0.2];
}

- (void)magicHeadDidStartTransferForNode:(id)a3
{
  v5 = a3;
  v4 = [(SFAirDropMagicHeadViewController *)self delegate];
  [v4 magicHeadViewControllerDidStartTransferForNode:v5];
}

- (void)magicHeadDidTerminateTransferForNode:(id)a3
{
  v5 = a3;
  v4 = [(SFAirDropMagicHeadViewController *)self delegate];
  [v4 magicHeadViewControllerDidTerminateTransferForNode:v5];
}

- (void)magicHeadDidFinishTransferForNode:(id)a3
{
  v5 = a3;
  v4 = [(SFAirDropMagicHeadViewController *)self delegate];
  [v4 magicHeadViewControllerDidFinishTransferForNode:v5];
}

- (void)handleDeviceMotion:(id)a3
{
  v4 = a3;
  v5 = [v4 attitude];
  [v5 quaternion];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  *&v14 = v7;
  *&v15 = v9;
  *&v16 = v11;
  v24.i64[0] = __PAIR64__(v15, v14);
  *&v17 = v13;
  v24.i64[1] = __PAIR64__(LODWORD(v17), v16);
  CMOQuaternion::normalize(&v24, v17);
  LODWORD(v13) = CMOQuaternion::heading(&v24);
  v18 = [(SFAirDropMagicHeadViewController *)self wheelView];
  v19 = [v4 attitude];
  [v19 pitch];
  v21 = v20;
  v22 = [v4 attitude];
  [v22 roll];
  [v18 deviceRotatedToDegrees:360.0 - *&v13 withPitch:v21 andRoll:v23];
}

- (SFAirDropMagicHeadViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
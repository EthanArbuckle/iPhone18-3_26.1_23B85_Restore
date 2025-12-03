@interface SFAirDropMagicHeadViewController
- (SFAirDropMagicHeadViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SFAirDropMagicHeadViewControllerDelegate)delegate;
- (id)headForRealName:(id)name;
- (void)calculatePreferredSize;
- (void)dealloc;
- (void)handleDeviceMotion:(id)motion;
- (void)magicHeadChangedFacingDegree:(double)degree;
- (void)magicHeadChangedSelectionToNode:(id)node;
- (void)magicHeadDidFinishTransferForNode:(id)node;
- (void)magicHeadDidStartTransferForNode:(id)node;
- (void)magicHeadDidTerminateTransferForNode:(id)node;
- (void)magicHeadSelectedHeadRequestingDisabledState:(BOOL)state;
- (void)magicHeadSelectedHeadRequestingSubtitleTextChangeForState:(int64_t)state;
- (void)magicHeadSelectedNodeTapped:(id)tapped;
- (void)resetSecondLabel;
- (void)resetTransferStateWithRealName:(id)name;
- (void)setEnabled:(BOOL)enabled;
- (void)setSecondLabelText:(id)text withTextColor:(id)color animated:(BOOL)animated completion:(id)completion;
- (void)start;
- (void)stop;
- (void)subscribedProgress:(id)progress forPersonWithRealName:(id)name;
- (void)transferCancelledToPerson:(id)person;
- (void)update;
- (void)updateLabels;
- (void)updateNodes:(id)nodes withPersonToProgress:(id)progress;
- (void)userSelectedWithRealName:(id)name;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFAirDropMagicHeadViewController

- (SFAirDropMagicHeadViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v14.receiver = self;
  v14.super_class = SFAirDropMagicHeadViewController;
  v8 = [(SFAirDropMagicHeadViewController *)&v14 initWithNibName:nameCopy bundle:bundleCopy];
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
    wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
    [wheelView setEnabled:1];

    [(SFAirDropMagicHeadViewController *)self setMotionUpdatesStarted:1];
    objc_initWeak(&location, self);
    motionManager = self->_motionManager;
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__SFAirDropMagicHeadViewController_start__block_invoke;
    v6[3] = &unk_1E7EE3A80;
    objc_copyWeak(&v7, &location);
    [(CMMotionManager *)motionManager startDeviceMotionUpdatesToQueue:mainQueue withHandler:v6];

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
    wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
    [wheelView setEnabled:0];

    [(SFAirDropMagicHeadViewController *)self setMotionUpdatesStarted:0];
    [(CMMotionManager *)self->_motionManager stopDeviceMotionUpdates];
    motionManager = self->_motionManager;

    [(CMMotionManager *)motionManager stopAccelerometerUpdates];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(SFAirDropMagicHeadViewController *)self update];
  }
}

- (void)viewDidLoad
{
  v80[4] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v79 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(SFAirDropMagicHeadViewController *)self view];
  [view setBackgroundColor:clearColor];

  view2 = [(SFAirDropMagicHeadViewController *)self view];
  v4 = [SFMagicHeadWheelView alloc];
  numberOfDots = [(SFAirDropMagicHeadViewController *)self numberOfDots];
  [(SFAirDropMagicHeadViewController *)self dotsRadius];
  v76 = [(SFMagicHeadWheelView *)v4 initWithNumberOfDots:numberOfDots dotsRadius:[(SFAirDropMagicHeadViewController *)self isMagicHead] isMagicHead:v6];
  [(SFMagicHeadWheelView *)v76 setDelegate:self];
  [(SFMagicHeadWheelView *)v76 setEnabled:[(SFAirDropMagicHeadViewController *)self enabled]];
  [view2 addSubview:v76];
  if (![(SFAirDropMagicHeadViewController *)self isMagicHead])
  {
    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    v8 = MEMORY[0x1E695F058];
    v75 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v9 = SFFontForTextStyleWithAdditionalSymbolicTraits(*MEMORY[0x1E69DDCF8], 0x8000);
    [v75 setFont:v9];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v75 setTextColor:labelColor];

    [v75 setAlpha:0.0];
    v74 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
    font = [v75 font];
    [v74 setFont:font];

    textColor = [v75 textColor];
    [v74 setTextColor:textColor];

    [v75 alpha];
    [v74 setAlpha:?];
    v65 = [MEMORY[0x1E69DC730] effectWithStyle:9];
    v70 = [MEMORY[0x1E69DD248] effectForBlurEffect:? style:?];
    v73 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v70];
    [v73 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view2 addSubview:v73];
    contentView = [v73 contentView];
    [contentView addSubview:v75];

    contentView2 = [v73 contentView];
    [contentView2 addSubview:v74];

    v15 = MEMORY[0x1E696ACD8];
    leftAnchor = [v73 leftAnchor];
    leftAnchor2 = [view2 leftAnchor];
    v68 = [leftAnchor constraintEqualToAnchor:?];
    v80[0] = v68;
    rightAnchor = [v73 rightAnchor];
    rightAnchor2 = [view2 rightAnchor];
    v66 = [rightAnchor constraintEqualToAnchor:?];
    v80[1] = v66;
    topAnchor = [v73 topAnchor];
    topAnchor2 = [v75 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v80[2] = v18;
    bottomAnchor = [v73 bottomAnchor];
    bottomAnchor2 = [v75 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v80[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:4];
    [v15 activateConstraints:v22];

    [view2 addSubview:v73];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v8, v8[1], v8[2], v8[3]}];
    v24 = SFFontForTextStyleWithAdditionalSymbolicTraits(*MEMORY[0x1E69DDD28], 0x8000);
    [v23 setFont:v24];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v23 setTextColor:secondaryLabelColor];

    [view2 addSubview:v23];
    [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v26) = 1148846080;
    [v75 setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [v75 setContentCompressionResistancePriority:0 forAxis:v27];
    topAnchor3 = [v75 topAnchor];
    bottomAnchor3 = [(SFMagicHeadWheelView *)v76 bottomAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3 constant:-14.0];
    [v30 setActive:1];

    centerXAnchor = [v75 centerXAnchor];
    centerXAnchor2 = [(SFMagicHeadWheelView *)v76 centerXAnchor];
    v33 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v33 setActive:1];

    [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v34) = 1148846080;
    [v74 setContentCompressionResistancePriority:1 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [v74 setContentCompressionResistancePriority:0 forAxis:v35];
    topAnchor4 = [v74 topAnchor];
    bottomAnchor4 = [(SFMagicHeadWheelView *)v76 bottomAnchor];
    v38 = [topAnchor4 constraintEqualToAnchor:bottomAnchor4 constant:-14.0];
    [v38 setActive:1];

    centerXAnchor3 = [v74 centerXAnchor];
    centerXAnchor4 = [(SFMagicHeadWheelView *)v76 centerXAnchor];
    v41 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    [v41 setActive:1];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v42) = 1148846080;
    [v23 setContentCompressionResistancePriority:1 forAxis:v42];
    LODWORD(v43) = 1148846080;
    [v23 setContentCompressionResistancePriority:0 forAxis:v43];
    topAnchor5 = [v23 topAnchor];
    bottomAnchor5 = [v75 bottomAnchor];
    v46 = [topAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:3.0];
    [v46 setActive:1];

    centerXAnchor5 = [v23 centerXAnchor];
    centerXAnchor6 = [(SFMagicHeadWheelView *)v76 centerXAnchor];
    v49 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    [v49 setActive:1];

    bottomAnchor6 = [v23 bottomAnchor];
    bottomAnchor7 = [view2 bottomAnchor];
    v52 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    [v52 setActive:1];

    [(SFAirDropMagicHeadViewController *)self setNameLabel:v75];
    [(SFAirDropMagicHeadViewController *)self setNameLabel2:v74];
    [(SFAirDropMagicHeadViewController *)self setSecondLabel:v23];
    [(SFAirDropMagicHeadViewController *)self resetSecondLabel];
    [v23 setAlpha:0.0];
  }

  [(SFMagicHeadWheelView *)v76 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor6 = [(SFMagicHeadWheelView *)v76 topAnchor];
  topAnchor7 = [view2 topAnchor];
  v55 = [topAnchor6 constraintEqualToAnchor:topAnchor7];
  [v55 setActive:1];

  rightAnchor3 = [(SFMagicHeadWheelView *)v76 rightAnchor];
  rightAnchor4 = [view2 rightAnchor];
  v58 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v58 setActive:1];

  leftAnchor3 = [(SFMagicHeadWheelView *)v76 leftAnchor];
  leftAnchor4 = [view2 leftAnchor];
  v61 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v61 setActive:1];

  if ([(SFAirDropMagicHeadViewController *)self isMagicHead])
  {
    bottomAnchor8 = [(SFMagicHeadWheelView *)v76 bottomAnchor];
    bottomAnchor9 = [view2 bottomAnchor];
    v64 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    [v64 setActive:1];
  }

  else
  {
    bottomAnchor8 = [(SFMagicHeadWheelView *)v76 heightAnchor];
    bottomAnchor9 = [bottomAnchor8 constraintEqualToConstant:189.0];
    [bottomAnchor9 setActive:1];
  }

  [(SFAirDropMagicHeadViewController *)self setWheelView:v76];
}

- (void)resetSecondLabel
{
  secondLabel = [(SFAirDropMagicHeadViewController *)self secondLabel];
  layer = [secondLabel layer];
  [layer removeAllAnimations];

  secondLabel2 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [secondLabel2 setAlpha:1.0];

  v8 = SFLocalizedStringForKeyInStringsFileNamed();
  secondLabel3 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [secondLabel3 setText:v8];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  secondLabel4 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [secondLabel4 setTextColor:secondaryLabelColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v6 viewWillAppear:appear];
  v4 = magic_head_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B9E4B000, v4, OS_LOG_TYPE_DEFAULT, "AirDrop magic head will appear", v5, 2u);
  }

  [(SFAirDropMagicHeadViewController *)self setViewVisible:1];
  [(SFAirDropMagicHeadViewController *)self update];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v6 viewDidDisappear:disappear];
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
  view = [(SFAirDropMagicHeadViewController *)self view];
  [view bounds];
  v4 = v3;
  v5 = *(MEMORY[0x1E69DE090] + 8);

  view2 = [(SFAirDropMagicHeadViewController *)self view];
  [view2 systemLayoutSizeFittingSize:{v4, v5}];
  [(SFAirDropMagicHeadViewController *)self setPreferredContentSize:?];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFAirDropMagicHeadViewController;
  [(SFAirDropMagicHeadViewController *)&v3 viewDidLayoutSubviews];
  [(SFAirDropMagicHeadViewController *)self calculatePreferredSize];
}

- (void)updateNodes:(id)nodes withPersonToProgress:(id)progress
{
  v41 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  progressCopy = progress;
  selfCopy = self;
  wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
  if (([wheelView isMagicHead] & 1) == 0)
  {
    wheelView2 = [(SFAirDropMagicHeadViewController *)self wheelView];
    selectedHead = [wheelView2 selectedHead];
    node = [selectedHead node];
    v10 = [nodesCopy containsObject:node];

    if (v10)
    {
      goto LABEL_5;
    }

    wheelView3 = [(SFAirDropMagicHeadViewController *)selfCopy wheelView];
    [wheelView3 lostSelectedNode];

    wheelView = [(SFAirDropMagicHeadViewController *)selfCopy secondLabel];
    [wheelView setText:0];
  }

LABEL_5:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = nodesCopy;
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
          rangingMeasurement = [v17 rangingMeasurement];
          timestampTicks = [rangingMeasurement timestampTicks];
          rangingMeasurement2 = [v17 rangingMeasurement];
          [rangingMeasurement2 timestampTicks];
          v21 = SFUpTicksDiffFromNowToString();
          *buf = 138412802;
          v35 = v17;
          v36 = 2048;
          v37 = timestampTicks;
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

  wheelView4 = [(SFAirDropMagicHeadViewController *)selfCopy wheelView];
  [wheelView4 updateSelectedNode:v12];

  wheelView5 = [(SFAirDropMagicHeadViewController *)selfCopy wheelView];
  [wheelView5 setNoUWBCapableDevices:v15];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __69__SFAirDropMagicHeadViewController_updateNodes_withPersonToProgress___block_invoke;
  v29[3] = &unk_1E7EE3AA8;
  v29[4] = selfCopy;
  [progressCopy enumerateKeysAndObjectsUsingBlock:v29];
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
  nameLabel2 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
  [nameLabel2 alpha];
  if (v9 == 0.0)
  {
    [(SFAirDropMagicHeadViewController *)self nameLabel];
  }

  else
  {
    [(SFAirDropMagicHeadViewController *)self nameLabel2];
  }
  v10 = ;

  wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
  selectedHead = [wheelView selectedHead];

  if (selectedHead)
  {
    v27 = v6;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __48__SFAirDropMagicHeadViewController_updateLabels__block_invoke_5;
    v29[3] = &__block_descriptor_48_e20_v24__0__UILabel_8d16l;
    v29[4] = 0x3FD0000000000000;
    v29[5] = 608;
    secondLabel2 = _Block_copy(v29);
    wheelView2 = [(SFAirDropMagicHeadViewController *)self wheelView];
    selectedHead2 = [wheelView2 selectedHead];
    node = [selectedHead2 node];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v18 = [node displayNameForLocale:currentLocale];

    v6 = v27;
    [v10 alpha];
    if (v19 == 0.0)
    {
      [v10 setText:v18];
      v5[2](v5, v10);
      (secondLabel2)[2](secondLabel2, v10, 0.0);
      secondLabel = [(SFAirDropMagicHeadViewController *)self secondLabel];
      (secondLabel2)[2](secondLabel2, secondLabel, 0.0);
LABEL_17:

      goto LABEL_18;
    }

    v7[2](v7, v10);
    nameLabel22 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
    v22 = v10;
    v23 = nameLabel22;
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      if ((v22 != 0) == (v23 == 0))
      {

LABEL_15:
        nameLabel23 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
        goto LABEL_16;
      }

      v25 = [v22 isEqual:v23];

      if (!v25)
      {
        goto LABEL_15;
      }
    }

    nameLabel23 = [(SFAirDropMagicHeadViewController *)self nameLabel];
LABEL_16:
    secondLabel = nameLabel23;

    [secondLabel setText:v18];
    v5[2](v5, secondLabel);
    (secondLabel2)[2](secondLabel2, secondLabel, 0.15);
    v6 = v28;
    goto LABEL_17;
  }

  v7[2](v7, v10);
  secondLabel2 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  v7[2](v7, secondLabel2);
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

- (id)headForRealName:(id)name
{
  nameCopy = name;
  wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
  selectedHead = [wheelView selectedHead];
  node = [selectedHead node];
  realName = [node realName];
  v9 = nameCopy;
  v10 = v9;
  if (realName == v9)
  {
  }

  else
  {
    if ((v9 == 0) == (realName != 0))
    {

      selectedHead2 = 0;
      goto LABEL_8;
    }

    v11 = [realName isEqual:v9];

    if ((v11 & 1) == 0)
    {
      selectedHead2 = 0;
      goto LABEL_9;
    }
  }

  wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
  selectedHead2 = [wheelView selectedHead];
LABEL_8:

LABEL_9:

  return selectedHead2;
}

- (void)subscribedProgress:(id)progress forPersonWithRealName:(id)name
{
  progressCopy = progress;
  v6 = [(SFAirDropMagicHeadViewController *)self headForRealName:name];
  [v6 setProgress:progressCopy];
}

- (void)resetTransferStateWithRealName:(id)name
{
  v3 = [(SFAirDropMagicHeadViewController *)self headForRealName:name];
  [v3 resetTransferState];
}

- (void)userSelectedWithRealName:(id)name
{
  v3 = [(SFAirDropMagicHeadViewController *)self headForRealName:name];
  [v3 userDidSelect];
}

- (void)transferCancelledToPerson:(id)person
{
  v3 = [(SFAirDropMagicHeadViewController *)self headForRealName:person];
  [v3 userDidCancel];
}

- (void)magicHeadChangedFacingDegree:(double)degree
{
  delegate = [(SFAirDropMagicHeadViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(SFAirDropMagicHeadViewController *)self delegate];
    [delegate2 magicHeadViewControllerChangedFacingDegree:degree];
  }
}

- (void)magicHeadChangedSelectionToNode:(id)node
{
  v8 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v5 = magic_head_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = nodeCopy;
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "Switched selected head to %@", &v6, 0xCu);
  }

  [(SFAirDropMagicHeadViewController *)self updateLabels];
}

- (void)magicHeadSelectedNodeTapped:(id)tapped
{
  v9 = *MEMORY[0x1E69E9840];
  tappedCopy = tapped;
  v5 = magic_head_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = tappedCopy;
    _os_log_impl(&dword_1B9E4B000, v5, OS_LOG_TYPE_DEFAULT, "Head tapped %@", &v7, 0xCu);
  }

  delegate = [(SFAirDropMagicHeadViewController *)self delegate];
  [delegate magicHeadViewControllerToggleSelectionForNode:tappedCopy];
}

- (void)magicHeadSelectedHeadRequestingDisabledState:(BOOL)state
{
  stateCopy = state;
  selectedHead = [(SFMagicHeadWheelView *)self->_wheelView selectedHead];

  if (selectedHead)
  {
    nameLabel2 = [(SFAirDropMagicHeadViewController *)self nameLabel2];
    [nameLabel2 alpha];
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
    if (!stateCopy)
    {
      v8 = 1.0;
    }

    [v12 setAlpha:v8];
    secondLabel = [(SFAirDropMagicHeadViewController *)self secondLabel];
    v10 = secondLabel;
    v11 = 1.0;
    if (stateCopy)
    {
      v11 = 0.0;
    }

    [secondLabel setAlpha:v11];
  }
}

- (void)setSecondLabelText:(id)text withTextColor:(id)color animated:(BOOL)animated completion:(id)completion
{
  textCopy = text;
  colorCopy = color;
  completionCopy = completion;
  secondLabel = [(SFAirDropMagicHeadViewController *)self secondLabel];
  layer = [secondLabel layer];
  [layer removeAllAnimations];

  secondLabel2 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [secondLabel2 setAlpha:1.0];

  secondLabel3 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [secondLabel3 setText:textCopy];

  secondLabel4 = [(SFAirDropMagicHeadViewController *)self secondLabel];
  [secondLabel4 setTextColor:colorCopy];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (void)magicHeadSelectedHeadRequestingSubtitleTextChangeForState:(int64_t)state
{
  if (state <= 2)
  {
    if (state)
    {
      if (state == 1)
      {
        secondLabel = [(SFAirDropMagicHeadViewController *)self secondLabel];
        objc_initWeak(&location, secondLabel);

        v6 = SFLocalizedStringForKey();
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v8 = v13;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke;
        v13[3] = &unk_1E7EE3BE0;
        objc_copyWeak(&v14, &location);
        [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v6 withTextColor:secondaryLabelColor animated:1 completion:v13];
      }

      else
      {
        if (state != 2)
        {
          return;
        }

        secondLabel2 = [(SFAirDropMagicHeadViewController *)self secondLabel];
        objc_initWeak(&location, secondLabel2);

        v6 = SFLocalizedStringForKey();
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v8 = v11;
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __94__SFAirDropMagicHeadViewController_magicHeadSelectedHeadRequestingSubtitleTextChangeForState___block_invoke_3;
        v11[3] = &unk_1E7EE3BE0;
        objc_copyWeak(&v12, &location);
        [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v6 withTextColor:secondaryLabelColor animated:1 completion:v11];
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
    if (state > 4)
    {
      if (state != 5 && state != 6)
      {
        return;
      }

      v10 = SFLocalizedStringForKey();
      systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
      [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v10 withTextColor:systemRedColor animated:1 completion:0];
    }

    else
    {
      if (state == 3)
      {
        v10 = SFLocalizedStringForKey();
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        v10 = SFLocalizedStringForKey();
        [MEMORY[0x1E69DC888] systemBlueColor];
      }
      systemRedColor = ;
      [(SFAirDropMagicHeadViewController *)self setSecondLabelText:v10 withTextColor:systemRedColor animated:1 completion:0];
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

- (void)magicHeadDidStartTransferForNode:(id)node
{
  nodeCopy = node;
  delegate = [(SFAirDropMagicHeadViewController *)self delegate];
  [delegate magicHeadViewControllerDidStartTransferForNode:nodeCopy];
}

- (void)magicHeadDidTerminateTransferForNode:(id)node
{
  nodeCopy = node;
  delegate = [(SFAirDropMagicHeadViewController *)self delegate];
  [delegate magicHeadViewControllerDidTerminateTransferForNode:nodeCopy];
}

- (void)magicHeadDidFinishTransferForNode:(id)node
{
  nodeCopy = node;
  delegate = [(SFAirDropMagicHeadViewController *)self delegate];
  [delegate magicHeadViewControllerDidFinishTransferForNode:nodeCopy];
}

- (void)handleDeviceMotion:(id)motion
{
  motionCopy = motion;
  attitude = [motionCopy attitude];
  [attitude quaternion];
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
  wheelView = [(SFAirDropMagicHeadViewController *)self wheelView];
  attitude2 = [motionCopy attitude];
  [attitude2 pitch];
  v21 = v20;
  attitude3 = [motionCopy attitude];
  [attitude3 roll];
  [wheelView deviceRotatedToDegrees:360.0 - *&v13 withPitch:v21 andRoll:v23];
}

- (SFAirDropMagicHeadViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
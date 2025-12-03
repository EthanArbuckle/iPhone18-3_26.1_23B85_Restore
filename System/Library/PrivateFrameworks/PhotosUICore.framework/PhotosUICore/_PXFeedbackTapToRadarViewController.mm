@interface _PXFeedbackTapToRadarViewController
- (UIButton)fileRadarButton;
- (UILabel)routesDescriptionLabel;
- (UISegmentedControl)routesSegmentedControl;
- (UIStackView)diagnosticStackView;
- (UIStackView)screenshotControlStackView;
- (UISwitch)diagnoseSwitch;
- (UISwitch)screenshotSwitch;
- (void)_didSelectFileRadarButton;
- (void)viewDidLoad;
@end

@implementation _PXFeedbackTapToRadarViewController

- (void)_didSelectFileRadarButton
{
  delegate = [(_PXFeedbackTapToRadarViewController *)self delegate];
  if ([delegate shouldRequestScreenshotPermission])
  {
    screenshotSwitch = [(_PXFeedbackTapToRadarViewController *)self screenshotSwitch];
    isOn = [screenshotSwitch isOn];
  }

  else
  {
    isOn = 0;
  }

  diagnoseSwitch = [(_PXFeedbackTapToRadarViewController *)self diagnoseSwitch];
  isOn2 = [diagnoseSwitch isOn];

  delegate2 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  availableRoutes = [delegate2 availableRoutes];
  if ([availableRoutes count])
  {
    delegate3 = [(_PXFeedbackTapToRadarViewController *)self delegate];
    availableRoutes2 = [delegate3 availableRoutes];
    routesSegmentedControl = [(_PXFeedbackTapToRadarViewController *)self routesSegmentedControl];
    v14 = [availableRoutes2 objectAtIndexedSubscript:{objc_msgSend(routesSegmentedControl, "selectedSegmentIndex")}];
  }

  else
  {
    v14 = 0;
  }

  delegate4 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  [delegate4 didSelectFileRadarButtonWithScreenshotAllowed:isOn attachDiagnose:isOn2 selectedRoute:v14];

  [(_PXFeedbackTapToRadarViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v83[12] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = _PXFeedbackTapToRadarViewController;
  [(_PXFeedbackTapToRadarViewController *)&v81 viewDidLoad];
  view = [(_PXFeedbackTapToRadarViewController *)self view];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__didSelectCancelButton_];
  v6 = +[_PXFeedbackTapToRadarViewController _buttonTintColor];
  [v5 setTintColor:v6];

  navigationItem = [(_PXFeedbackTapToRadarViewController *)self navigationItem];
  v78 = v5;
  [navigationItem setLeftBarButtonItem:v5];

  v8 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setSpacing:18.0];
  v9 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v8];
  v80 = v9;
  [view addSubview:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v10 setFont:v11];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  [v10 setText:@"File Radar"];
  [v8 addArrangedSubview:v10];
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [v12 setFont:v13];

  v14 = +[_PXFeedbackTapToRadarViewController _textColor];
  [v12 setTextColor:v14];

  [v12 setNumberOfLines:0];
  [v12 setTextAlignment:1];
  [v12 setText:{@"This will take a snapshot of the details of your Photo Library (such as filenames and locations, but not actual assets).\n\nBy submitting this feedback you agree to share the details of this snapshot with Apple."}];
  v76 = v12;
  [v8 addArrangedSubview:v12];
  delegate = [(_PXFeedbackTapToRadarViewController *)self delegate];
  shouldRequestScreenshotPermission = [delegate shouldRequestScreenshotPermission];

  if (shouldRequestScreenshotPermission)
  {
    screenshotControlStackView = [(_PXFeedbackTapToRadarViewController *)self screenshotControlStackView];
    [v8 addArrangedSubview:screenshotControlStackView];
  }

  diagnosticStackView = [(_PXFeedbackTapToRadarViewController *)self diagnosticStackView];
  [v8 addArrangedSubview:?];
  delegate2 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  availableRoutes = [delegate2 availableRoutes];
  v20 = [availableRoutes count];

  v73 = v20;
  if (v20)
  {
    routesSegmentedControl = [(_PXFeedbackTapToRadarViewController *)self routesSegmentedControl];
    [v8 addArrangedSubview:routesSegmentedControl];

    routesDescriptionLabel = [(_PXFeedbackTapToRadarViewController *)self routesDescriptionLabel];
    [v8 addArrangedSubview:routesDescriptionLabel];
  }

  fileRadarButton = [(_PXFeedbackTapToRadarViewController *)self fileRadarButton];
  [v8 addArrangedSubview:fileRadarButton];

  leadingAnchor = [v10 leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v83[0] = v70;
  trailingAnchor = [v10 trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v67 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v83[1] = v67;
  leadingAnchor3 = [v10 leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v83[2] = v64;
  v77 = v10;
  trailingAnchor3 = [v10 trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v83[3] = v60;
  topAnchor = [v80 topAnchor];
  topAnchor2 = [view topAnchor];
  v57 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v83[4] = v57;
  bottomAnchor = [v80 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v83[5] = v53;
  leadingAnchor5 = [v80 leadingAnchor];
  leadingAnchor6 = [view leadingAnchor];
  v50 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:10.0];
  v83[6] = v50;
  trailingAnchor5 = [v80 trailingAnchor];
  v79 = view;
  trailingAnchor6 = [view trailingAnchor];
  v47 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-10.0];
  v83[7] = v47;
  topAnchor3 = [v8 topAnchor];
  topAnchor4 = [v80 topAnchor];
  v24 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v83[8] = v24;
  bottomAnchor3 = [v8 bottomAnchor];
  bottomAnchor4 = [v80 bottomAnchor];
  v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v83[9] = v27;
  leadingAnchor7 = [v8 leadingAnchor];
  [v80 leadingAnchor];
  v30 = v29 = v8;
  v31 = [leadingAnchor7 constraintEqualToAnchor:v30];
  v83[10] = v31;
  v63 = v29;
  trailingAnchor7 = [v29 trailingAnchor];
  trailingAnchor8 = [v80 trailingAnchor];
  v34 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v83[11] = v34;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:12];

  if (v73)
  {
    routesDescriptionLabel2 = [v44 routesDescriptionLabel];
    leadingAnchor8 = [routesDescriptionLabel2 leadingAnchor];
    v36 = v63;
    leadingAnchor9 = [v63 leadingAnchor];
    v38 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v82[0] = v38;
    trailingAnchor9 = [routesDescriptionLabel2 trailingAnchor];
    trailingAnchor10 = [v63 trailingAnchor];
    v41 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v82[1] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v43 = [v56 arrayByAddingObjectsFromArray:v42];
  }

  else
  {
    v36 = v63;
    v43 = v56;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v43];
}

- (UIButton)fileRadarButton
{
  fileRadarButton = self->_fileRadarButton;
  if (!fileRadarButton)
  {
    objc_initWeak(&location, self);
    v4 = MEMORY[0x1E69DC738];
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    v6 = MEMORY[0x1E69DC628];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __54___PXFeedbackTapToRadarViewController_fileRadarButton__block_invoke;
    v16 = &unk_1E774BB08;
    objc_copyWeak(&v17, &location);
    v7 = [v6 actionWithHandler:&v13];
    v8 = [v4 buttonWithConfiguration:filledButtonConfiguration primaryAction:{v7, v13, v14, v15, v16}];
    v9 = self->_fileRadarButton;
    self->_fileRadarButton = v8;

    [(UIButton *)self->_fileRadarButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[_PXFeedbackTapToRadarViewController _buttonTintColor];
    [(UIButton *)self->_fileRadarButton setTintColor:v10];

    layer = [(UIButton *)self->_fileRadarButton layer];
    [layer setCornerRadius:5.0];

    [(UIButton *)self->_fileRadarButton setTitle:@"File Radar" forState:0];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    fileRadarButton = self->_fileRadarButton;
  }

  return fileRadarButton;
}

- (UISwitch)diagnoseSwitch
{
  diagnoseSwitch = self->_diagnoseSwitch;
  if (!diagnoseSwitch)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v5 = self->_diagnoseSwitch;
    self->_diagnoseSwitch = v4;

    [(UISwitch *)self->_diagnoseSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[_PXFeedbackTapToRadarViewController _buttonTintColor];
    [(UISwitch *)self->_diagnoseSwitch setOnTintColor:v6];

    [(UISwitch *)self->_diagnoseSwitch setOn:1];
    diagnoseSwitch = self->_diagnoseSwitch;
  }

  return diagnoseSwitch;
}

- (UISwitch)screenshotSwitch
{
  screenshotSwitch = self->_screenshotSwitch;
  if (!screenshotSwitch)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCFD0]);
    v5 = self->_screenshotSwitch;
    self->_screenshotSwitch = v4;

    [(UISwitch *)self->_screenshotSwitch setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[_PXFeedbackTapToRadarViewController _buttonTintColor];
    [(UISwitch *)self->_screenshotSwitch setOnTintColor:v6];

    [(UISwitch *)self->_screenshotSwitch setOn:1];
    screenshotSwitch = self->_screenshotSwitch;
  }

  return screenshotSwitch;
}

- (UILabel)routesDescriptionLabel
{
  routesDescriptionLabel = self->_routesDescriptionLabel;
  if (!routesDescriptionLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_routesDescriptionLabel;
    self->_routesDescriptionLabel = v4;

    [(UILabel *)self->_routesDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)self->_routesDescriptionLabel setFont:v6];

    v7 = +[_PXFeedbackTapToRadarViewController _textColor];
    [(UILabel *)self->_routesDescriptionLabel setTextColor:v7];

    delegate = [(_PXFeedbackTapToRadarViewController *)self delegate];
    availableRoutesDescription = [delegate availableRoutesDescription];
    [(UILabel *)self->_routesDescriptionLabel setText:availableRoutesDescription];

    [(UILabel *)self->_routesDescriptionLabel setTextAlignment:1];
    [(UILabel *)self->_routesDescriptionLabel setNumberOfLines:0];
    routesDescriptionLabel = self->_routesDescriptionLabel;
  }

  return routesDescriptionLabel;
}

- (UISegmentedControl)routesSegmentedControl
{
  routesSegmentedControl = self->_routesSegmentedControl;
  if (!routesSegmentedControl)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCF38]);
    availableRoutes = [(_PXFeedbackTapToRadarViewControllerDelegate *)self->_delegate availableRoutes];
    v6 = [v4 initWithItems:availableRoutes];
    v7 = self->_routesSegmentedControl;
    self->_routesSegmentedControl = v6;

    [(UISegmentedControl *)self->_routesSegmentedControl setSelectedSegmentIndex:0];
    [(UISegmentedControl *)self->_routesSegmentedControl setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = +[_PXFeedbackTapToRadarViewController _textColor];
    [(UISegmentedControl *)self->_routesSegmentedControl setTintColor:v8];

    routesSegmentedControl = self->_routesSegmentedControl;
  }

  return routesSegmentedControl;
}

- (UIStackView)diagnosticStackView
{
  diagnosticStackView = self->_diagnosticStackView;
  if (!diagnosticStackView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v5 = self->_diagnosticStackView;
    self->_diagnosticStackView = v4;

    [(UIStackView *)self->_diagnosticStackView setAxis:0];
    [(UIStackView *)self->_diagnosticStackView setSpacing:10.0];
    [(UIStackView *)self->_diagnosticStackView setAlignment:3];
    [(UIStackView *)self->_diagnosticStackView setDistribution:4];
    [(UIStackView *)self->_diagnosticStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v6 setFont:v7];

    v8 = +[_PXFeedbackTapToRadarViewController _textColor];
    [v6 setTextColor:v8];

    [v6 setNumberOfLines:0];
    [v6 setText:@"Include Diagnostics:"];
    LODWORD(v9) = 1144750080;
    [v6 setContentHuggingPriority:0 forAxis:v9];
    [(UIStackView *)self->_diagnosticStackView addArrangedSubview:v6];
    v10 = self->_diagnosticStackView;
    diagnoseSwitch = [(_PXFeedbackTapToRadarViewController *)self diagnoseSwitch];
    [(UIStackView *)v10 addArrangedSubview:diagnoseSwitch];

    diagnosticStackView = self->_diagnosticStackView;
  }

  return diagnosticStackView;
}

- (UIStackView)screenshotControlStackView
{
  screenshotControlStackView = self->_screenshotControlStackView;
  if (!screenshotControlStackView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    v5 = self->_screenshotControlStackView;
    self->_screenshotControlStackView = v4;

    [(UIStackView *)self->_screenshotControlStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_screenshotControlStackView setAxis:0];
    [(UIStackView *)self->_screenshotControlStackView setSpacing:10.0];
    [(UIStackView *)self->_screenshotControlStackView setAlignment:3];
    [(UIStackView *)self->_screenshotControlStackView setDistribution:4];
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v6 setFont:v7];

    v8 = +[_PXFeedbackTapToRadarViewController _textColor];
    [v6 setTextColor:v8];

    [v6 setNumberOfLines:0];
    [v6 setText:@"Include Screenshot:"];
    LODWORD(v9) = 1144750080;
    [v6 setContentHuggingPriority:0 forAxis:v9];
    [(UIStackView *)self->_screenshotControlStackView addArrangedSubview:v6];
    v10 = self->_screenshotControlStackView;
    screenshotSwitch = [(_PXFeedbackTapToRadarViewController *)self screenshotSwitch];
    [(UIStackView *)v10 addArrangedSubview:screenshotSwitch];

    screenshotControlStackView = self->_screenshotControlStackView;
  }

  return screenshotControlStackView;
}

@end
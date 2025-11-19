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
  v3 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  if ([v3 shouldRequestScreenshotPermission])
  {
    v4 = [(_PXFeedbackTapToRadarViewController *)self screenshotSwitch];
    v5 = [v4 isOn];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(_PXFeedbackTapToRadarViewController *)self diagnoseSwitch];
  v7 = [v6 isOn];

  v8 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  v9 = [v8 availableRoutes];
  if ([v9 count])
  {
    v10 = [(_PXFeedbackTapToRadarViewController *)self delegate];
    v11 = [v10 availableRoutes];
    v12 = [(_PXFeedbackTapToRadarViewController *)self routesSegmentedControl];
    v14 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "selectedSegmentIndex")}];
  }

  else
  {
    v14 = 0;
  }

  v13 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  [v13 didSelectFileRadarButtonWithScreenshotAllowed:v5 attachDiagnose:v7 selectedRoute:v14];

  [(_PXFeedbackTapToRadarViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLoad
{
  v83[12] = *MEMORY[0x1E69E9840];
  v81.receiver = self;
  v81.super_class = _PXFeedbackTapToRadarViewController;
  [(_PXFeedbackTapToRadarViewController *)&v81 viewDidLoad];
  v3 = [(_PXFeedbackTapToRadarViewController *)self view];
  v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__didSelectCancelButton_];
  v6 = +[_PXFeedbackTapToRadarViewController _buttonTintColor];
  [v5 setTintColor:v6];

  v7 = [(_PXFeedbackTapToRadarViewController *)self navigationItem];
  v78 = v5;
  [v7 setLeftBarButtonItem:v5];

  v8 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setSpacing:18.0];
  v9 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v8];
  v80 = v9;
  [v3 addSubview:v9];
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
  v15 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  v16 = [v15 shouldRequestScreenshotPermission];

  if (v16)
  {
    v17 = [(_PXFeedbackTapToRadarViewController *)self screenshotControlStackView];
    [v8 addArrangedSubview:v17];
  }

  v75 = [(_PXFeedbackTapToRadarViewController *)self diagnosticStackView];
  [v8 addArrangedSubview:?];
  v18 = [(_PXFeedbackTapToRadarViewController *)self delegate];
  v19 = [v18 availableRoutes];
  v20 = [v19 count];

  v73 = v20;
  if (v20)
  {
    v21 = [(_PXFeedbackTapToRadarViewController *)self routesSegmentedControl];
    [v8 addArrangedSubview:v21];

    v22 = [(_PXFeedbackTapToRadarViewController *)self routesDescriptionLabel];
    [v8 addArrangedSubview:v22];
  }

  v23 = [(_PXFeedbackTapToRadarViewController *)self fileRadarButton];
  [v8 addArrangedSubview:v23];

  v72 = [v10 leadingAnchor];
  v71 = [v3 leadingAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v83[0] = v70;
  v69 = [v10 trailingAnchor];
  v68 = [v3 trailingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v83[1] = v67;
  v66 = [v10 leadingAnchor];
  v65 = [v3 leadingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v83[2] = v64;
  v77 = v10;
  v62 = [v10 trailingAnchor];
  v61 = [v3 trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v83[3] = v60;
  v59 = [v80 topAnchor];
  v58 = [v3 topAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v83[4] = v57;
  v55 = [v80 bottomAnchor];
  v54 = [v3 bottomAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v83[5] = v53;
  v52 = [v80 leadingAnchor];
  v51 = [v3 leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51 constant:10.0];
  v83[6] = v50;
  v49 = [v80 trailingAnchor];
  v79 = v3;
  v48 = [v3 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:-10.0];
  v83[7] = v47;
  v46 = [v8 topAnchor];
  v45 = [v80 topAnchor];
  v24 = [v46 constraintEqualToAnchor:v45];
  v83[8] = v24;
  v25 = [v8 bottomAnchor];
  v26 = [v80 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v83[9] = v27;
  v28 = [v8 leadingAnchor];
  [v80 leadingAnchor];
  v30 = v29 = v8;
  v31 = [v28 constraintEqualToAnchor:v30];
  v83[10] = v31;
  v63 = v29;
  v32 = [v29 trailingAnchor];
  v33 = [v80 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];
  v83[11] = v34;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:12];

  if (v73)
  {
    v35 = [v44 routesDescriptionLabel];
    v74 = [v35 leadingAnchor];
    v36 = v63;
    v37 = [v63 leadingAnchor];
    v38 = [v74 constraintEqualToAnchor:v37];
    v82[0] = v38;
    v39 = [v35 trailingAnchor];
    v40 = [v63 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];
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
    v5 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    v6 = MEMORY[0x1E69DC628];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __54___PXFeedbackTapToRadarViewController_fileRadarButton__block_invoke;
    v16 = &unk_1E774BB08;
    objc_copyWeak(&v17, &location);
    v7 = [v6 actionWithHandler:&v13];
    v8 = [v4 buttonWithConfiguration:v5 primaryAction:{v7, v13, v14, v15, v16}];
    v9 = self->_fileRadarButton;
    self->_fileRadarButton = v8;

    [(UIButton *)self->_fileRadarButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = +[_PXFeedbackTapToRadarViewController _buttonTintColor];
    [(UIButton *)self->_fileRadarButton setTintColor:v10];

    v11 = [(UIButton *)self->_fileRadarButton layer];
    [v11 setCornerRadius:5.0];

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

    v8 = [(_PXFeedbackTapToRadarViewController *)self delegate];
    v9 = [v8 availableRoutesDescription];
    [(UILabel *)self->_routesDescriptionLabel setText:v9];

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
    v5 = [(_PXFeedbackTapToRadarViewControllerDelegate *)self->_delegate availableRoutes];
    v6 = [v4 initWithItems:v5];
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
    v11 = [(_PXFeedbackTapToRadarViewController *)self diagnoseSwitch];
    [(UIStackView *)v10 addArrangedSubview:v11];

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
    v11 = [(_PXFeedbackTapToRadarViewController *)self screenshotSwitch];
    [(UIStackView *)v10 addArrangedSubview:v11];

    screenshotControlStackView = self->_screenshotControlStackView;
  }

  return screenshotControlStackView;
}

@end
@interface VSTwoFactorEntryViewController_iOS
- (CGSize)preferredLogoSize;
- (VSAuthenticationViewControllerDelegate)delegate;
- (VSTwoFactorEntryViewController_iOS)initWithNibName:(id)name bundle:(id)bundle;
- (void)buttonPressed:(id)pressed;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setViewModel:(id)model;
- (void)startObservingViewModel:(id)model;
- (void)stopObservingViewModel:(id)model;
- (void)twoFactorDigitView:(id)view textDidChange:(id)change;
- (void)verifyButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation VSTwoFactorEntryViewController_iOS

- (VSTwoFactorEntryViewController_iOS)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = VSTwoFactorEntryViewController_iOS;
  v4 = [(VSTwoFactorEntryViewController_iOS *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [[VSFontCenter alloc] initWithTraitEnvironment:v4];
    fontCenter = v4->_fontCenter;
    v4->_fontCenter = v5;
  }

  return v4;
}

- (void)dealloc
{
  [(VSTwoFactorEntryViewController_iOS *)self stopObservingViewModel:self->_viewModel];
  v3.receiver = self;
  v3.super_class = VSTwoFactorEntryViewController_iOS;
  [(VSTwoFactorEntryViewController_iOS *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v129 = *MEMORY[0x277D85DE8];
  v125.receiver = self;
  v125.super_class = VSTwoFactorEntryViewController_iOS;
  [(VSTwoFactorEntryViewController_iOS *)&v125 viewDidLoad];
  view = [(VSTwoFactorEntryViewController_iOS *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(VSTwoFactorEntryViewController_iOS *)self setScrollView:v4];
  [v4 setDelegate:self];
  [v4 setAlwaysBounceVertical:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v4 setBackgroundColor:systemGroupedBackgroundColor];

  v116 = view;
  [view addSubview:v4];
  viewModel = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  title = [viewModel title];
  [(VSTwoFactorEntryViewController_iOS *)self setTitle:title];

  v8 = objc_alloc_init(VSIdentityProviderLogoView);
  [(VSIdentityProviderLogoView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  logo = [viewModel logo];
  [(VSIdentityProviderLogoView *)v8 setLogo:logo];

  [v4 addSubview:v8];
  v112 = v8;
  [(VSTwoFactorEntryViewController_iOS *)self setLogoView:v8];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  headerText = [viewModel headerText];
  [v10 setText:headerText];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  fontCenter = self->_fontCenter;
  v13 = VSMainConcurrencyBindingOptions();
  [v10 vs_bind:@"font" toObject:fontCenter withKeyPath:@"title2Font" options:v13];

  v111 = v10;
  [v4 addSubview:v10];
  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  message = [viewModel message];
  [v14 setText:message];

  [v14 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  v16 = self->_fontCenter;
  v17 = VSMainConcurrencyBindingOptions();
  [v14 vs_bind:@"font" toObject:v16 withKeyPath:@"subheadlineFont" options:v17];

  v110 = v14;
  [v4 addSubview:v14];
  v18 = [VSTwoFactorDigitView alloc];
  twoFactorTextField = [viewModel twoFactorTextField];
  v20 = -[VSTwoFactorDigitView initWithDigitCount:](v18, "initWithDigitCount:", [twoFactorTextField expectedLength]);

  [(VSTwoFactorEntryViewController_iOS *)self setDigitView:v20];
  selfCopy = self;
  [(VSTwoFactorDigitView *)v20 setDelegate:self];
  [(VSTwoFactorDigitView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  twoFactorTextField2 = [viewModel twoFactorTextField];
  -[VSTwoFactorDigitView setKeyboardType:](v20, "setKeyboardType:", [twoFactorTextField2 keyboardType]);

  twoFactorTextField3 = [viewModel twoFactorTextField];
  -[VSTwoFactorDigitView setAutocapitalizationType:](v20, "setAutocapitalizationType:", [twoFactorTextField3 autocapitalizationType]);

  v108 = v4;
  v113 = v20;
  [v4 addSubview:v20];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v109 = viewModel;
  buttons = [viewModel buttons];
  v25 = [buttons countByEnumeratingWithState:&v121 objects:v128 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v122;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v122 != v27)
        {
          objc_enumerationMutation(buttons);
        }

        v29 = *(*(&v121 + 1) + 8 * i);
        v30 = objc_alloc_init(VSMultilineButton);
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [(VSMultilineButton *)v30 setTitleColor:whiteColor forState:1];

        text = [v29 text];
        [(VSMultilineButton *)v30 setTitle:text forState:0];

        titleLabel = [(VSMultilineButton *)v30 titleLabel];
        [titleLabel setTextAlignment:1];

        titleLabel2 = [(VSMultilineButton *)v30 titleLabel];
        [titleLabel2 setNumberOfLines:0];

        [(VSMultilineButton *)v30 addTarget:selfCopy action:sel_buttonPressed_ forControlEvents:64];
        [v23 addObject:v30];
      }

      v26 = [buttons countByEnumeratingWithState:&v121 objects:v128 count:16];
    }

    while (v26);
  }

  [(VSTwoFactorEntryViewController_iOS *)selfCopy setButtons:v23];
  topAnchor = [v108 topAnchor];
  topAnchor2 = [v116 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v37 setActive:1];

  bottomAnchor = [v108 bottomAnchor];
  bottomAnchor2 = [v116 bottomAnchor];
  v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v40 setActive:1];

  leftAnchor = [v108 leftAnchor];
  leftAnchor2 = [v116 leftAnchor];
  v43 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v43 setActive:1];

  rightAnchor = [v108 rightAnchor];
  rightAnchor2 = [v116 rightAnchor];
  v46 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v46 setActive:1];

  topAnchor3 = [(VSIdentityProviderLogoView *)v112 topAnchor];
  topAnchor4 = [v108 topAnchor];
  v49 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:10.0];
  [v49 setActive:1];

  centerXAnchor = [(VSIdentityProviderLogoView *)v112 centerXAnchor];
  centerXAnchor2 = [v108 centerXAnchor];
  v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v52 setActive:1];

  topAnchor5 = [v111 topAnchor];
  bottomAnchor3 = [(VSIdentityProviderLogoView *)v112 bottomAnchor];
  v55 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:15.0];
  [v55 setActive:1];

  leftAnchor3 = [v111 leftAnchor];
  safeAreaLayoutGuide = [v108 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide leftAnchor];
  v59 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v59 setActive:1];

  rightAnchor3 = [v111 rightAnchor];
  safeAreaLayoutGuide2 = [v108 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide2 rightAnchor];
  v63 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v63 setActive:1];

  topAnchor6 = [v110 topAnchor];
  bottomAnchor4 = [v111 bottomAnchor];
  v66 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:10.0];
  [v66 setActive:1];

  leftAnchor5 = [v110 leftAnchor];
  safeAreaLayoutGuide3 = [v108 safeAreaLayoutGuide];
  leftAnchor6 = [safeAreaLayoutGuide3 leftAnchor];
  v70 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  [v70 setActive:1];

  rightAnchor5 = [v110 rightAnchor];
  safeAreaLayoutGuide4 = [v108 safeAreaLayoutGuide];
  rightAnchor6 = [safeAreaLayoutGuide4 rightAnchor];
  v74 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  [v74 setActive:1];

  topAnchor7 = [(VSTwoFactorDigitView *)v20 topAnchor];
  bottomAnchor5 = [v110 bottomAnchor];
  v77 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:10.0];
  [v77 setActive:1];

  heightAnchor = [(VSTwoFactorDigitView *)v20 heightAnchor];
  v79 = [heightAnchor constraintEqualToConstant:50.0];
  [v79 setActive:1];

  centerXAnchor3 = [(VSTwoFactorDigitView *)v20 centerXAnchor];
  centerXAnchor4 = [v108 centerXAnchor];
  v82 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  [v82 setActive:1];

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = v23;
  v83 = [obj countByEnumeratingWithState:&v117 objects:v127 count:16];
  if (v83)
  {
    v84 = v83;
    v85 = 0;
    v86 = *v118;
    do
    {
      v87 = 0;
      v88 = v85;
      do
      {
        if (*v118 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v89 = *(*(&v117 + 1) + 8 * v87);
        [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v116 addSubview:v89];
        centerXAnchor5 = [v89 centerXAnchor];
        centerXAnchor6 = [v108 centerXAnchor];
        v92 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
        [v92 setActive:1];

        leftAnchor7 = [v89 leftAnchor];
        safeAreaLayoutGuide5 = [v108 safeAreaLayoutGuide];
        leftAnchor8 = [safeAreaLayoutGuide5 leftAnchor];
        v96 = [leftAnchor7 constraintGreaterThanOrEqualToAnchor:leftAnchor8];
        [v96 setActive:1];

        rightAnchor7 = [v89 rightAnchor];
        safeAreaLayoutGuide6 = [v108 safeAreaLayoutGuide];
        rightAnchor8 = [safeAreaLayoutGuide6 rightAnchor];
        v100 = [rightAnchor7 constraintLessThanOrEqualToAnchor:rightAnchor8];
        [v100 setActive:1];

        topAnchor8 = [v89 topAnchor];
        if (v88)
        {
          bottomAnchor6 = [v88 bottomAnchor];
          v103 = 10.0;
        }

        else
        {
          bottomAnchor6 = [(VSTwoFactorDigitView *)v113 bottomAnchor];
          v103 = 20.0;
        }

        v104 = [topAnchor8 constraintEqualToAnchor:bottomAnchor6 constant:v103];
        [v104 setActive:1];

        v85 = v89;
        ++v87;
        v88 = v85;
      }

      while (v84 != v87);
      v84 = [obj countByEnumeratingWithState:&v117 objects:v127 count:16];
    }

    while (v84);
  }

  else
  {
    v85 = 0;
  }

  v126[0] = objc_opt_class();
  v126[1] = objc_opt_class();
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
  v106 = [(VSTwoFactorEntryViewController_iOS *)selfCopy registerForTraitChanges:v105 withHandler:&__block_literal_global_8];

  VSAuthenticationViewControllerViewDidLoad(selfCopy);
  v107 = *MEMORY[0x277D85DE8];
}

- (void)verifyButtonPressed:(id)pressed
{
  viewModel = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  [viewModel setValidationState:1];
}

- (void)buttonPressed:(id)pressed
{
  v17 = *MEMORY[0x277D85DE8];
  pressedCopy = pressed;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Unexpectedly, sender was %@, instead of VSMultilineButton.", v8}];
  }

  v9 = pressedCopy;
  buttons = [(VSTwoFactorEntryViewController_iOS *)self buttons];
  v11 = [buttons indexOfObject:v9];

  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v11;
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Generic two factor button with index %lu pressed.", buf, 0xCu);
  }

  viewModel = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  [viewModel buttonAtIndexWasPressed:v11];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_LogoImage;
  modelCopy = model;
  [modelCopy addObserver:self forKeyPath:@"logo" options:4 context:v4];
  [modelCopy addObserver:self forKeyPath:@"beginValidationButtonEnabled" options:4 context:kVSKeyValueObservingContext_VerifyButton];
  [modelCopy addObserver:self forKeyPath:@"validationState" options:3 context:kVSKeyValueObservingContext_ValidationState];
  [modelCopy addObserver:self forKeyPath:@"twoFactorTextField.text" options:3 context:kVSKeyValueObservingContext_TwoFactorCode];
}

- (void)stopObservingViewModel:(id)model
{
  v4 = kVSKeyValueObservingContext_LogoImage;
  modelCopy = model;
  [modelCopy removeObserver:self forKeyPath:@"logo" context:v4];
  [modelCopy removeObserver:self forKeyPath:@"beginValidationButtonEnabled" context:kVSKeyValueObservingContext_VerifyButton];
  [modelCopy removeObserver:self forKeyPath:@"validationState" context:kVSKeyValueObservingContext_ValidationState];
  [modelCopy removeObserver:self forKeyPath:@"twoFactorTextField.text" context:kVSKeyValueObservingContext_TwoFactorCode];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v9 = modelCopy;
    [(VSTwoFactorEntryViewController_iOS *)self stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, model);
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    beginValidationButtonTitle = [(VSCuratedViewModel *)v9 beginValidationButtonTitle];
    v8 = [v6 initWithTitle:beginValidationButtonTitle style:0 target:self action:sel_verifyButtonPressed_];

    [v8 setEnabled:0];
    [(VSTwoFactorEntryViewController_iOS *)self setVerifyButton:v8];
    [(VSTwoFactorEntryViewController_iOS *)self startObservingViewModel:v9];

    modelCopy = v9;
  }
}

- (CGSize)preferredLogoSize
{
  logoView = [(VSTwoFactorEntryViewController_iOS *)self logoView];
  [logoView preferredImageSize];
  v4 = v3;
  v6 = v5;

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = v8;

  v10 = v6 * v9;
  v11 = v4 * v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (kVSKeyValueObservingContext_LogoImage == context)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE660];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v14 raise:v15 format:{@"Unexpectedly, objectOrNil was %@, instead of VSTwoFactorEntryViewModel.", v17}];
    }

    verifyButton = objectCopy;
    if (!pathCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    }

    v19 = [verifyButton valueForKeyPath:pathCopy];
    logoView = [(VSTwoFactorEntryViewController_iOS *)self logoView];
    [logoView setLogo:v19];

    goto LABEL_12;
  }

  if (kVSKeyValueObservingContext_VerifyButton == context)
  {
    verifyButton = [(VSTwoFactorEntryViewController_iOS *)self verifyButton];
    viewModel = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
    [verifyButton setEnabled:{objc_msgSend(viewModel, "isBeginValidationButtonEnabled")}];

LABEL_12:
    goto LABEL_13;
  }

  if (kVSKeyValueObservingContext_ValidationState == context)
  {
    v22 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    [v22 unsignedIntegerValue];

    v23 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    unsignedIntegerValue = [v23 unsignedIntegerValue];

    if (unsignedIntegerValue == 2 || unsignedIntegerValue == 1)
    {
      [(VSTwoFactorEntryViewController_iOS *)self resignFirstResponder];
    }
  }

  else if (kVSKeyValueObservingContext_TwoFactorCode != context)
  {
    v25.receiver = self;
    v25.super_class = VSTwoFactorEntryViewController_iOS;
    [(VSTwoFactorEntryViewController_iOS *)&v25 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_13:
}

- (void)scrollViewDidScroll:(id)scroll
{
  digitView = [(VSTwoFactorEntryViewController_iOS *)self digitView];
  [digitView resignFirstResponder];
}

- (void)twoFactorDigitView:(id)view textDidChange:(id)change
{
  changeCopy = change;
  viewModel = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  twoFactorTextField = [viewModel twoFactorTextField];
  [twoFactorTextField setText:changeCopy];
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
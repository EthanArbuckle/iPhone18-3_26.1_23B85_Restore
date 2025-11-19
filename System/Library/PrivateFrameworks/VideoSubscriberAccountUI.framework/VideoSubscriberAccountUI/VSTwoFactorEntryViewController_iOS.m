@interface VSTwoFactorEntryViewController_iOS
- (CGSize)preferredLogoSize;
- (VSAuthenticationViewControllerDelegate)delegate;
- (VSTwoFactorEntryViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (void)buttonPressed:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidScroll:(id)a3;
- (void)setViewModel:(id)a3;
- (void)startObservingViewModel:(id)a3;
- (void)stopObservingViewModel:(id)a3;
- (void)twoFactorDigitView:(id)a3 textDidChange:(id)a4;
- (void)verifyButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation VSTwoFactorEntryViewController_iOS

- (VSTwoFactorEntryViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = VSTwoFactorEntryViewController_iOS;
  v4 = [(VSTwoFactorEntryViewController_iOS *)&v8 initWithNibName:a3 bundle:a4];
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
  v3 = [(VSTwoFactorEntryViewController_iOS *)self view];
  v4 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(VSTwoFactorEntryViewController_iOS *)self setScrollView:v4];
  [v4 setDelegate:self];
  [v4 setAlwaysBounceVertical:1];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v4 setBackgroundColor:v5];

  v116 = v3;
  [v3 addSubview:v4];
  v6 = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  v7 = [v6 title];
  [(VSTwoFactorEntryViewController_iOS *)self setTitle:v7];

  v8 = objc_alloc_init(VSIdentityProviderLogoView);
  [(VSIdentityProviderLogoView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v6 logo];
  [(VSIdentityProviderLogoView *)v8 setLogo:v9];

  [v4 addSubview:v8];
  v112 = v8;
  [(VSTwoFactorEntryViewController_iOS *)self setLogoView:v8];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v6 headerText];
  [v10 setText:v11];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  fontCenter = self->_fontCenter;
  v13 = VSMainConcurrencyBindingOptions();
  [v10 vs_bind:@"font" toObject:fontCenter withKeyPath:@"title2Font" options:v13];

  v111 = v10;
  [v4 addSubview:v10];
  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v6 message];
  [v14 setText:v15];

  [v14 setNumberOfLines:0];
  [v14 setTextAlignment:1];
  v16 = self->_fontCenter;
  v17 = VSMainConcurrencyBindingOptions();
  [v14 vs_bind:@"font" toObject:v16 withKeyPath:@"subheadlineFont" options:v17];

  v110 = v14;
  [v4 addSubview:v14];
  v18 = [VSTwoFactorDigitView alloc];
  v19 = [v6 twoFactorTextField];
  v20 = -[VSTwoFactorDigitView initWithDigitCount:](v18, "initWithDigitCount:", [v19 expectedLength]);

  [(VSTwoFactorEntryViewController_iOS *)self setDigitView:v20];
  v115 = self;
  [(VSTwoFactorDigitView *)v20 setDelegate:self];
  [(VSTwoFactorDigitView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v6 twoFactorTextField];
  -[VSTwoFactorDigitView setKeyboardType:](v20, "setKeyboardType:", [v21 keyboardType]);

  v22 = [v6 twoFactorTextField];
  -[VSTwoFactorDigitView setAutocapitalizationType:](v20, "setAutocapitalizationType:", [v22 autocapitalizationType]);

  v108 = v4;
  v113 = v20;
  [v4 addSubview:v20];
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v109 = v6;
  v24 = [v6 buttons];
  v25 = [v24 countByEnumeratingWithState:&v121 objects:v128 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v121 + 1) + 8 * i);
        v30 = objc_alloc_init(VSMultilineButton);
        v31 = [MEMORY[0x277D75348] whiteColor];
        [(VSMultilineButton *)v30 setTitleColor:v31 forState:1];

        v32 = [v29 text];
        [(VSMultilineButton *)v30 setTitle:v32 forState:0];

        v33 = [(VSMultilineButton *)v30 titleLabel];
        [v33 setTextAlignment:1];

        v34 = [(VSMultilineButton *)v30 titleLabel];
        [v34 setNumberOfLines:0];

        [(VSMultilineButton *)v30 addTarget:v115 action:sel_buttonPressed_ forControlEvents:64];
        [v23 addObject:v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v121 objects:v128 count:16];
    }

    while (v26);
  }

  [(VSTwoFactorEntryViewController_iOS *)v115 setButtons:v23];
  v35 = [v108 topAnchor];
  v36 = [v116 topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v37 setActive:1];

  v38 = [v108 bottomAnchor];
  v39 = [v116 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [v108 leftAnchor];
  v42 = [v116 leftAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = [v108 rightAnchor];
  v45 = [v116 rightAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  v47 = [(VSIdentityProviderLogoView *)v112 topAnchor];
  v48 = [v108 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];
  [v49 setActive:1];

  v50 = [(VSIdentityProviderLogoView *)v112 centerXAnchor];
  v51 = [v108 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = [v111 topAnchor];
  v54 = [(VSIdentityProviderLogoView *)v112 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:15.0];
  [v55 setActive:1];

  v56 = [v111 leftAnchor];
  v57 = [v108 safeAreaLayoutGuide];
  v58 = [v57 leftAnchor];
  v59 = [v56 constraintEqualToAnchor:v58];
  [v59 setActive:1];

  v60 = [v111 rightAnchor];
  v61 = [v108 safeAreaLayoutGuide];
  v62 = [v61 rightAnchor];
  v63 = [v60 constraintEqualToAnchor:v62];
  [v63 setActive:1];

  v64 = [v110 topAnchor];
  v65 = [v111 bottomAnchor];
  v66 = [v64 constraintEqualToAnchor:v65 constant:10.0];
  [v66 setActive:1];

  v67 = [v110 leftAnchor];
  v68 = [v108 safeAreaLayoutGuide];
  v69 = [v68 leftAnchor];
  v70 = [v67 constraintEqualToAnchor:v69];
  [v70 setActive:1];

  v71 = [v110 rightAnchor];
  v72 = [v108 safeAreaLayoutGuide];
  v73 = [v72 rightAnchor];
  v74 = [v71 constraintEqualToAnchor:v73];
  [v74 setActive:1];

  v75 = [(VSTwoFactorDigitView *)v20 topAnchor];
  v76 = [v110 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76 constant:10.0];
  [v77 setActive:1];

  v78 = [(VSTwoFactorDigitView *)v20 heightAnchor];
  v79 = [v78 constraintEqualToConstant:50.0];
  [v79 setActive:1];

  v80 = [(VSTwoFactorDigitView *)v20 centerXAnchor];
  v81 = [v108 centerXAnchor];
  v82 = [v80 constraintEqualToAnchor:v81];
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
        v90 = [v89 centerXAnchor];
        v91 = [v108 centerXAnchor];
        v92 = [v90 constraintEqualToAnchor:v91];
        [v92 setActive:1];

        v93 = [v89 leftAnchor];
        v94 = [v108 safeAreaLayoutGuide];
        v95 = [v94 leftAnchor];
        v96 = [v93 constraintGreaterThanOrEqualToAnchor:v95];
        [v96 setActive:1];

        v97 = [v89 rightAnchor];
        v98 = [v108 safeAreaLayoutGuide];
        v99 = [v98 rightAnchor];
        v100 = [v97 constraintLessThanOrEqualToAnchor:v99];
        [v100 setActive:1];

        v101 = [v89 topAnchor];
        if (v88)
        {
          v102 = [v88 bottomAnchor];
          v103 = 10.0;
        }

        else
        {
          v102 = [(VSTwoFactorDigitView *)v113 bottomAnchor];
          v103 = 20.0;
        }

        v104 = [v101 constraintEqualToAnchor:v102 constant:v103];
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
  v106 = [(VSTwoFactorEntryViewController_iOS *)v115 registerForTraitChanges:v105 withHandler:&__block_literal_global_8];

  VSAuthenticationViewControllerViewDidLoad(v115);
  v107 = *MEMORY[0x277D85DE8];
}

- (void)verifyButtonPressed:(id)a3
{
  v3 = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  [v3 setValidationState:1];
}

- (void)buttonPressed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CBEAD8];
    v6 = *MEMORY[0x277CBE660];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Unexpectedly, sender was %@, instead of VSMultilineButton.", v8}];
  }

  v9 = v4;
  v10 = [(VSTwoFactorEntryViewController_iOS *)self buttons];
  v11 = [v10 indexOfObject:v9];

  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = v11;
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Generic two factor button with index %lu pressed.", buf, 0xCu);
  }

  v13 = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  [v13 buttonAtIndexWasPressed:v11];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startObservingViewModel:(id)a3
{
  v4 = kVSKeyValueObservingContext_LogoImage;
  v5 = a3;
  [v5 addObserver:self forKeyPath:@"logo" options:4 context:v4];
  [v5 addObserver:self forKeyPath:@"beginValidationButtonEnabled" options:4 context:kVSKeyValueObservingContext_VerifyButton];
  [v5 addObserver:self forKeyPath:@"validationState" options:3 context:kVSKeyValueObservingContext_ValidationState];
  [v5 addObserver:self forKeyPath:@"twoFactorTextField.text" options:3 context:kVSKeyValueObservingContext_TwoFactorCode];
}

- (void)stopObservingViewModel:(id)a3
{
  v4 = kVSKeyValueObservingContext_LogoImage;
  v5 = a3;
  [v5 removeObserver:self forKeyPath:@"logo" context:v4];
  [v5 removeObserver:self forKeyPath:@"beginValidationButtonEnabled" context:kVSKeyValueObservingContext_VerifyButton];
  [v5 removeObserver:self forKeyPath:@"validationState" context:kVSKeyValueObservingContext_ValidationState];
  [v5 removeObserver:self forKeyPath:@"twoFactorTextField.text" context:kVSKeyValueObservingContext_TwoFactorCode];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v9 = v5;
    [(VSTwoFactorEntryViewController_iOS *)self stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, a3);
    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = [(VSCuratedViewModel *)v9 beginValidationButtonTitle];
    v8 = [v6 initWithTitle:v7 style:0 target:self action:sel_verifyButtonPressed_];

    [v8 setEnabled:0];
    [(VSTwoFactorEntryViewController_iOS *)self setVerifyButton:v8];
    [(VSTwoFactorEntryViewController_iOS *)self startObservingViewModel:v9];

    v5 = v9;
  }
}

- (CGSize)preferredLogoSize
{
  v2 = [(VSTwoFactorEntryViewController_iOS *)self logoView];
  [v2 preferredImageSize];
  v4 = v3;
  v6 = v5;

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = v6 * v9;
  v11 = v4 * v9;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (kVSKeyValueObservingContext_LogoImage == a6)
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

    v18 = v11;
    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    }

    v19 = [v18 valueForKeyPath:v10];
    v20 = [(VSTwoFactorEntryViewController_iOS *)self logoView];
    [v20 setLogo:v19];

    goto LABEL_12;
  }

  if (kVSKeyValueObservingContext_VerifyButton == a6)
  {
    v18 = [(VSTwoFactorEntryViewController_iOS *)self verifyButton];
    v21 = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
    [v18 setEnabled:{objc_msgSend(v21, "isBeginValidationButtonEnabled")}];

LABEL_12:
    goto LABEL_13;
  }

  if (kVSKeyValueObservingContext_ValidationState == a6)
  {
    v22 = [v12 objectForKey:*MEMORY[0x277CCA300]];
    [v22 unsignedIntegerValue];

    v23 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    v24 = [v23 unsignedIntegerValue];

    if (v24 == 2 || v24 == 1)
    {
      [(VSTwoFactorEntryViewController_iOS *)self resignFirstResponder];
    }
  }

  else if (kVSKeyValueObservingContext_TwoFactorCode != a6)
  {
    v25.receiver = self;
    v25.super_class = VSTwoFactorEntryViewController_iOS;
    [(VSTwoFactorEntryViewController_iOS *)&v25 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }

LABEL_13:
}

- (void)scrollViewDidScroll:(id)a3
{
  v3 = [(VSTwoFactorEntryViewController_iOS *)self digitView];
  [v3 resignFirstResponder];
}

- (void)twoFactorDigitView:(id)a3 textDidChange:(id)a4
{
  v5 = a4;
  v7 = [(VSTwoFactorEntryViewController_iOS *)self viewModel];
  v6 = [v7 twoFactorTextField];
  [v6 setText:v5];
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
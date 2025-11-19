@interface VSAutoAuthenticationViewController_iOS
- (CGSize)preferredLogoSize;
- (VSAuthenticationViewControllerDelegate)delegate;
- (VSAutoAuthenticationViewController_iOS)initWithCoder:(id)a3;
- (VSAutoAuthenticationViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_manualSignInButtonPressed:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setViewModel:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation VSAutoAuthenticationViewController_iOS

- (VSAutoAuthenticationViewController_iOS)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = VSAutoAuthenticationViewController_iOS;
  v3 = [(VSAutoAuthenticationViewController_iOS *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    commonInit_6(v3);
  }

  return v4;
}

- (VSAutoAuthenticationViewController_iOS)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = VSAutoAuthenticationViewController_iOS;
  v4 = [(VSAutoAuthenticationViewController_iOS *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    commonInit_6(v4);
  }

  return v5;
}

- (void)dealloc
{
  [(VSAutoAuthenticationViewController_iOS *)self _stopObservingViewModel:self->_viewModel];
  v3.receiver = self;
  v3.super_class = VSAutoAuthenticationViewController_iOS;
  [(VSAutoAuthenticationViewController_iOS *)&v3 dealloc];
}

- (void)_manualSignInButtonPressed:(id)a3
{
  v3 = [(VSAutoAuthenticationViewController_iOS *)self viewModel];
  [v3 didSelectManualSignInButton];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v8 = v5;
    [(VSAutoAuthenticationViewController_iOS *)self _stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, a3);
    v6 = [(VSAutoAuthenticationViewController_iOS *)self logoView];
    v7 = [(VSCuratedViewModel *)v8 logoAccessibilityLabel];
    [v6 setAccessibilityLabel:v7];

    [(VSAutoAuthenticationViewController_iOS *)self _startObservingViewModel:self->_viewModel];
    v5 = v8;
  }
}

- (CGSize)preferredLogoSize
{
  v2 = [(VSAutoAuthenticationViewController_iOS *)self logoView];
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
  if (kVSKeyValueObservingContext_ViewModelImage == a6)
  {
    if (!v11)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
    }

    v13 = v11;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = MEMORY[0x277CBEAD8];
      v15 = *MEMORY[0x277CBE660];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v14 raise:v15 format:{@"Unexpectedly, object was %@, instead of VSAutoAuthenticationViewModel.", v17}];
    }

    v18 = v13;
    if (!v10)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    }

    v19 = [v18 valueForKeyPath:v10];
    v20 = [(VSAutoAuthenticationViewController_iOS *)self logoView];
    [v20 setLogo:v19];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = VSAutoAuthenticationViewController_iOS;
    [(VSAutoAuthenticationViewController_iOS *)&v21 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)viewDidLoad
{
  v101 = *MEMORY[0x277D85DE8];
  v99.receiver = self;
  v99.super_class = VSAutoAuthenticationViewController_iOS;
  [(VSAutoAuthenticationViewController_iOS *)&v99 viewDidLoad];
  v91 = [(VSAutoAuthenticationViewController_iOS *)self view];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(VSAutoAuthenticationViewController_iOS *)self setScrollView:v3];
  [v3 setAlwaysBounceVertical:1];
  v4 = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v91 addSubview:v3];
  v5 = [(VSAutoAuthenticationViewController_iOS *)self viewModel];
  v6 = [v5 title];
  [(VSAutoAuthenticationViewController_iOS *)self setTitle:v6];

  v7 = objc_alloc_init(VSIdentityProviderLogoView);
  v8 = [v5 logo];
  [(VSIdentityProviderLogoView *)v7 setLogo:v8];

  [(VSAutoAuthenticationViewController_iOS *)self setLogoView:v7];
  v9 = [(VSAutoAuthenticationViewController_iOS *)self fontCenter];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  v11 = [v5 accountName];
  [v10 setText:v11];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  v12 = VSMainConcurrencyBindingOptions();
  v90 = v10;
  [v10 vs_bind:@"font" toObject:v9 withKeyPath:@"title2Font" options:v12];

  [(VSAutoAuthenticationViewController_iOS *)self setAccountNameLabel:v10];
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  v14 = [v5 messageTitle];
  [v13 setText:v14];

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  v15 = VSMainConcurrencyBindingOptions();
  v89 = v13;
  [v13 vs_bind:@"font" toObject:v9 withKeyPath:@"bodyFont" options:v15];

  [(VSAutoAuthenticationViewController_iOS *)self setMessageTitleLabel:v13];
  v16 = objc_alloc_init(MEMORY[0x277D756B8]);
  v17 = [v5 message];
  [v16 setText:v17];

  [v16 setNumberOfLines:0];
  [v16 setTextAlignment:1];
  v18 = VSMainConcurrencyBindingOptions();
  v88 = v16;
  [v16 vs_bind:@"font" toObject:v9 withKeyPath:@"bodyFont" options:v18];

  [(VSAutoAuthenticationViewController_iOS *)self setMessageLabel:v16];
  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  v20 = [v5 notice];
  [v19 setText:v20];

  [v19 setNumberOfLines:0];
  [v19 setTextAlignment:1];
  v21 = VSMainConcurrencyBindingOptions();
  v87 = v19;
  [v19 vs_bind:@"font" toObject:v9 withKeyPath:@"footnoteFont" options:v21];

  [(VSAutoAuthenticationViewController_iOS *)self setNoticeLabel:v19];
  v22 = objc_alloc_init(MEMORY[0x277D756B8]);
  v23 = [v5 manualSignInTitle];
  [v22 setText:v23];

  [v22 setNumberOfLines:0];
  [v22 setTextAlignment:1];
  v24 = VSMainConcurrencyBindingOptions();
  v86 = v22;
  [v22 vs_bind:@"font" toObject:v9 withKeyPath:@"footnoteFont" options:v24];

  [(VSAutoAuthenticationViewController_iOS *)self setManualSignInTitleLabel:v22];
  v25 = objc_alloc_init(VSMultilineButton);
  v26 = [MEMORY[0x277D75348] whiteColor];
  [(VSMultilineButton *)v25 setTitleColor:v26 forState:1];

  v27 = [(VSMultilineButton *)v25 titleLabel];
  [v27 setNumberOfLines:0];

  v84 = v5;
  v28 = v5;
  v29 = v7;
  v30 = [v28 manualSignInButtonText];
  [(VSMultilineButton *)v25 setTitle:v30 forState:0];

  [(VSMultilineButton *)v25 addTarget:self action:sel__manualSignInButtonPressed_ forControlEvents:0x2000];
  v31 = [(VSMultilineButton *)v25 titleLabel];
  [v31 setTextAlignment:1];
  v32 = VSMainConcurrencyBindingOptions();
  v82 = v31;
  [v31 vs_bind:@"font" toObject:v9 withKeyPath:@"bodyFont" options:v32];

  [(VSAutoAuthenticationViewController_iOS *)self setManualSignInButton:v25];
  v33 = objc_alloc_init(MEMORY[0x277D756B8]);
  v34 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v35 = [v34 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER" value:0 table:0];
  v36 = [v35 mutableCopy];

  [v36 appendString:@" "];
  v37 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v38 = [v37 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER_IOS" value:0 table:0];
  [v36 appendString:v38];

  v80 = v36;
  [v33 setText:v36];
  [v33 setNumberOfLines:0];
  [v33 setTextAlignment:1];
  v39 = VSMainConcurrencyBindingOptions();
  [v33 vs_bind:@"font" toObject:v9 withKeyPath:@"footnoteFont" options:v39];

  v85 = self;
  [(VSAutoAuthenticationViewController_iOS *)self setFooterLabel:v33];
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v41 = [v91 leftAnchor];
  v42 = [v3 leftAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  [v40 addObject:v43];

  v44 = [v91 rightAnchor];
  v45 = [v3 rightAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  [v40 addObject:v46];

  v47 = [v91 topAnchor];
  v48 = [v3 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];
  [v40 addObject:v49];

  v50 = [v91 bottomAnchor];
  v51 = [v3 bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v94 = v40;
  [v40 addObject:v52];

  v83 = v25;
  v81 = v33;
  _NSDictionaryOfVariableBindings(&cfstr_LogoviewFooter.isa, v29, v33, v90, v89, v88, v87, v86, v25, 0);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v79 = v98 = 0u;
  obj = [v79 allValues];
  v53 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
  if (v53)
  {
    v54 = v53;
    v93 = *v96;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v96 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v56 = *(*(&v95 + 1) + 8 * i);
        [(VSIdentityProviderLogoView *)v56 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v3 addSubview:v56];
        if (v56 == v29)
        {
          v67 = [(VSIdentityProviderLogoView *)v29 leftAnchor];
          v68 = [v91 leftAnchor];
          v69 = [v67 constraintEqualToAnchor:v68];
          [v94 addObject:v69];

          v63 = [(VSIdentityProviderLogoView *)v29 rightAnchor];
          v64 = [v91 rightAnchor];
          v65 = [v63 constraintEqualToAnchor:v64];
          [v94 addObject:v65];
        }

        else
        {
          v57 = [(VSIdentityProviderLogoView *)v56 leadingAnchor];
          v58 = [v3 readableContentGuide];
          [v58 leadingAnchor];
          v59 = v29;
          v61 = v60 = v3;
          v62 = [v57 constraintEqualToAnchor:v61 constant:10.0];
          [v94 addObject:v62];

          v3 = v60;
          v29 = v59;

          v63 = [(VSIdentityProviderLogoView *)v56 trailingAnchor];
          v64 = [v3 readableContentGuide];
          v65 = [v64 trailingAnchor];
          v66 = [v63 constraintEqualToAnchor:v65 constant:-10.0];
          [v94 addObject:v66];
        }
      }

      v54 = [obj countByEnumeratingWithState:&v95 objects:v100 count:16];
    }

    while (v54);
  }

  v78 = v3;

  v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v70 setObject:&unk_2880D2758 forKey:@"logoBottomSpace"];
  [v70 setObject:&unk_2880D2768 forKey:@"accountBottomSpace"];
  [v70 setObject:&unk_2880D2778 forKey:@"titleBottomSpace"];
  [v70 setObject:&unk_2880D2778 forKey:@"messageBottomSpace"];
  v71 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[logoView]-(logoBottomSpace)-[accountNameLabel]-(accountBottomSpace)-[messageTitleLabel]-(titleBottomSpace)-[messageLabel]-(messageBottomSpace)-[noticeLabel]-[footerLabel]|" options:0 metrics:v70 views:v79];
  [v94 addObjectsFromArray:v71];

  v72 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[noticeLabel]-(>=26)-[manualSignInTitleLabel]-(12)-[manualSignInButton]" options:0 metrics:v70 views:v79];
  [v94 addObjectsFromArray:v72];

  v73 = [(VSMultilineButton *)v83 bottomAnchor];
  v74 = [v91 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-16.0];

  LODWORD(v76) = 1144733696;
  [v75 setPriority:v76];
  [v94 addObject:v75];
  [MEMORY[0x277CCAAD0] activateConstraints:v94];
  [v91 layoutIfNeeded];
  VSAuthenticationViewControllerViewDidLoad(v85);

  v77 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = VSAutoAuthenticationViewController_iOS;
  [(VSAutoAuthenticationViewController_iOS *)&v28 viewDidLayoutSubviews];
  v3 = [(VSAutoAuthenticationViewController_iOS *)self scrollView];
  [v3 contentInset];
  v25 = v5;
  v26 = v4;
  v27 = v6;
  v7 = [(VSAutoAuthenticationViewController_iOS *)self manualSignInTitleLabel];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(VSAutoAuthenticationViewController_iOS *)self manualSignInButton];
  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  v31.origin.x = v18;
  v31.origin.y = v20;
  v31.size.width = v22;
  v31.size.height = v24;
  v30 = CGRectUnion(v29, v31);
  [v3 setContentInset:{v26, v25, CGRectGetHeight(v30) + 26.0 + 16.0, v27}];
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
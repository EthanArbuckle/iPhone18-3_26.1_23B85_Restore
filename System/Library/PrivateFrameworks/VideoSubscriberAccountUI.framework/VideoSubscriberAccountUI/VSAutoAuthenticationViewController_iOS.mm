@interface VSAutoAuthenticationViewController_iOS
- (CGSize)preferredLogoSize;
- (VSAuthenticationViewControllerDelegate)delegate;
- (VSAutoAuthenticationViewController_iOS)initWithCoder:(id)coder;
- (VSAutoAuthenticationViewController_iOS)initWithNibName:(id)name bundle:(id)bundle;
- (void)_manualSignInButtonPressed:(id)pressed;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setViewModel:(id)model;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation VSAutoAuthenticationViewController_iOS

- (VSAutoAuthenticationViewController_iOS)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = VSAutoAuthenticationViewController_iOS;
  v3 = [(VSAutoAuthenticationViewController_iOS *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    commonInit_6(v3);
  }

  return v4;
}

- (VSAutoAuthenticationViewController_iOS)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = VSAutoAuthenticationViewController_iOS;
  v4 = [(VSAutoAuthenticationViewController_iOS *)&v7 initWithNibName:name bundle:bundle];
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

- (void)_manualSignInButtonPressed:(id)pressed
{
  viewModel = [(VSAutoAuthenticationViewController_iOS *)self viewModel];
  [viewModel didSelectManualSignInButton];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v8 = modelCopy;
    [(VSAutoAuthenticationViewController_iOS *)self _stopObservingViewModel:?];
    objc_storeStrong(&self->_viewModel, model);
    logoView = [(VSAutoAuthenticationViewController_iOS *)self logoView];
    logoAccessibilityLabel = [(VSCuratedViewModel *)v8 logoAccessibilityLabel];
    [logoView setAccessibilityLabel:logoAccessibilityLabel];

    [(VSAutoAuthenticationViewController_iOS *)self _startObservingViewModel:self->_viewModel];
    modelCopy = v8;
  }
}

- (CGSize)preferredLogoSize
{
  logoView = [(VSAutoAuthenticationViewController_iOS *)self logoView];
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
  if (kVSKeyValueObservingContext_ViewModelImage == context)
  {
    if (!objectCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The objectOrNil parameter must not be nil."];
    }

    v13 = objectCopy;
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
    if (!pathCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The keyPathOrNil parameter must not be nil."];
    }

    v19 = [v18 valueForKeyPath:pathCopy];
    logoView = [(VSAutoAuthenticationViewController_iOS *)self logoView];
    [logoView setLogo:v19];
  }

  else
  {
    v21.receiver = self;
    v21.super_class = VSAutoAuthenticationViewController_iOS;
    [(VSAutoAuthenticationViewController_iOS *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)viewDidLoad
{
  v101 = *MEMORY[0x277D85DE8];
  v99.receiver = self;
  v99.super_class = VSAutoAuthenticationViewController_iOS;
  [(VSAutoAuthenticationViewController_iOS *)&v99 viewDidLoad];
  view = [(VSAutoAuthenticationViewController_iOS *)self view];
  v3 = objc_alloc_init(MEMORY[0x277D759D8]);
  [(VSAutoAuthenticationViewController_iOS *)self setScrollView:v3];
  [v3 setAlwaysBounceVertical:1];
  groupTableViewBackgroundColor = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [v3 setBackgroundColor:groupTableViewBackgroundColor];

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:v3];
  viewModel = [(VSAutoAuthenticationViewController_iOS *)self viewModel];
  title = [viewModel title];
  [(VSAutoAuthenticationViewController_iOS *)self setTitle:title];

  v7 = objc_alloc_init(VSIdentityProviderLogoView);
  logo = [viewModel logo];
  [(VSIdentityProviderLogoView *)v7 setLogo:logo];

  [(VSAutoAuthenticationViewController_iOS *)self setLogoView:v7];
  fontCenter = [(VSAutoAuthenticationViewController_iOS *)self fontCenter];
  v10 = objc_alloc_init(MEMORY[0x277D756B8]);
  accountName = [viewModel accountName];
  [v10 setText:accountName];

  [v10 setNumberOfLines:0];
  [v10 setTextAlignment:1];
  v12 = VSMainConcurrencyBindingOptions();
  v90 = v10;
  [v10 vs_bind:@"font" toObject:fontCenter withKeyPath:@"title2Font" options:v12];

  [(VSAutoAuthenticationViewController_iOS *)self setAccountNameLabel:v10];
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  messageTitle = [viewModel messageTitle];
  [v13 setText:messageTitle];

  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:1];
  v15 = VSMainConcurrencyBindingOptions();
  v89 = v13;
  [v13 vs_bind:@"font" toObject:fontCenter withKeyPath:@"bodyFont" options:v15];

  [(VSAutoAuthenticationViewController_iOS *)self setMessageTitleLabel:v13];
  v16 = objc_alloc_init(MEMORY[0x277D756B8]);
  message = [viewModel message];
  [v16 setText:message];

  [v16 setNumberOfLines:0];
  [v16 setTextAlignment:1];
  v18 = VSMainConcurrencyBindingOptions();
  v88 = v16;
  [v16 vs_bind:@"font" toObject:fontCenter withKeyPath:@"bodyFont" options:v18];

  [(VSAutoAuthenticationViewController_iOS *)self setMessageLabel:v16];
  v19 = objc_alloc_init(MEMORY[0x277D756B8]);
  notice = [viewModel notice];
  [v19 setText:notice];

  [v19 setNumberOfLines:0];
  [v19 setTextAlignment:1];
  v21 = VSMainConcurrencyBindingOptions();
  v87 = v19;
  [v19 vs_bind:@"font" toObject:fontCenter withKeyPath:@"footnoteFont" options:v21];

  [(VSAutoAuthenticationViewController_iOS *)self setNoticeLabel:v19];
  v22 = objc_alloc_init(MEMORY[0x277D756B8]);
  manualSignInTitle = [viewModel manualSignInTitle];
  [v22 setText:manualSignInTitle];

  [v22 setNumberOfLines:0];
  [v22 setTextAlignment:1];
  v24 = VSMainConcurrencyBindingOptions();
  v86 = v22;
  [v22 vs_bind:@"font" toObject:fontCenter withKeyPath:@"footnoteFont" options:v24];

  [(VSAutoAuthenticationViewController_iOS *)self setManualSignInTitleLabel:v22];
  v25 = objc_alloc_init(VSMultilineButton);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(VSMultilineButton *)v25 setTitleColor:whiteColor forState:1];

  titleLabel = [(VSMultilineButton *)v25 titleLabel];
  [titleLabel setNumberOfLines:0];

  v84 = viewModel;
  v28 = viewModel;
  v29 = v7;
  manualSignInButtonText = [v28 manualSignInButtonText];
  [(VSMultilineButton *)v25 setTitle:manualSignInButtonText forState:0];

  [(VSMultilineButton *)v25 addTarget:self action:sel__manualSignInButtonPressed_ forControlEvents:0x2000];
  titleLabel2 = [(VSMultilineButton *)v25 titleLabel];
  [titleLabel2 setTextAlignment:1];
  v32 = VSMainConcurrencyBindingOptions();
  v82 = titleLabel2;
  [titleLabel2 vs_bind:@"font" toObject:fontCenter withKeyPath:@"bodyFont" options:v32];

  [(VSAutoAuthenticationViewController_iOS *)self setManualSignInButton:v25];
  v33 = objc_alloc_init(MEMORY[0x277D756B8]);
  vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v35 = [vs_frameworkBundle localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER" value:0 table:0];
  v36 = [v35 mutableCopy];

  [v36 appendString:@" "];
  vs_frameworkBundle2 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v38 = [vs_frameworkBundle2 localizedStringForKey:@"CREDENTIAL_ENTRY_FOOTER_IOS" value:0 table:0];
  [v36 appendString:v38];

  v80 = v36;
  [v33 setText:v36];
  [v33 setNumberOfLines:0];
  [v33 setTextAlignment:1];
  v39 = VSMainConcurrencyBindingOptions();
  [v33 vs_bind:@"font" toObject:fontCenter withKeyPath:@"footnoteFont" options:v39];

  selfCopy = self;
  [(VSAutoAuthenticationViewController_iOS *)self setFooterLabel:v33];
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  leftAnchor = [view leftAnchor];
  leftAnchor2 = [v3 leftAnchor];
  v43 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v40 addObject:v43];

  rightAnchor = [view rightAnchor];
  rightAnchor2 = [v3 rightAnchor];
  v46 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v40 addObject:v46];

  topAnchor = [view topAnchor];
  topAnchor2 = [v3 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v40 addObject:v49];

  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [v3 bottomAnchor];
  v52 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
          leftAnchor3 = [(VSIdentityProviderLogoView *)v29 leftAnchor];
          leftAnchor4 = [view leftAnchor];
          v69 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
          [v94 addObject:v69];

          rightAnchor3 = [(VSIdentityProviderLogoView *)v29 rightAnchor];
          rightAnchor4 = [view rightAnchor];
          trailingAnchor = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
          [v94 addObject:trailingAnchor];
        }

        else
        {
          leadingAnchor = [(VSIdentityProviderLogoView *)v56 leadingAnchor];
          readableContentGuide = [v3 readableContentGuide];
          [readableContentGuide leadingAnchor];
          v59 = v29;
          v61 = v60 = v3;
          v62 = [leadingAnchor constraintEqualToAnchor:v61 constant:10.0];
          [v94 addObject:v62];

          v3 = v60;
          v29 = v59;

          rightAnchor3 = [(VSIdentityProviderLogoView *)v56 trailingAnchor];
          rightAnchor4 = [v3 readableContentGuide];
          trailingAnchor = [rightAnchor4 trailingAnchor];
          v66 = [rightAnchor3 constraintEqualToAnchor:trailingAnchor constant:-10.0];
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

  bottomAnchor3 = [(VSMultilineButton *)v83 bottomAnchor];
  bottomAnchor4 = [view bottomAnchor];
  v75 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];

  LODWORD(v76) = 1144733696;
  [v75 setPriority:v76];
  [v94 addObject:v75];
  [MEMORY[0x277CCAAD0] activateConstraints:v94];
  [view layoutIfNeeded];
  VSAuthenticationViewControllerViewDidLoad(selfCopy);

  v77 = *MEMORY[0x277D85DE8];
}

- (void)viewDidLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = VSAutoAuthenticationViewController_iOS;
  [(VSAutoAuthenticationViewController_iOS *)&v28 viewDidLayoutSubviews];
  scrollView = [(VSAutoAuthenticationViewController_iOS *)self scrollView];
  [scrollView contentInset];
  v25 = v5;
  v26 = v4;
  v27 = v6;
  manualSignInTitleLabel = [(VSAutoAuthenticationViewController_iOS *)self manualSignInTitleLabel];
  [manualSignInTitleLabel frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  manualSignInButton = [(VSAutoAuthenticationViewController_iOS *)self manualSignInButton];
  [manualSignInButton frame];
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
  [scrollView setContentInset:{v26, v25, CGRectGetHeight(v30) + 26.0 + 16.0, v27}];
}

- (VSAuthenticationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
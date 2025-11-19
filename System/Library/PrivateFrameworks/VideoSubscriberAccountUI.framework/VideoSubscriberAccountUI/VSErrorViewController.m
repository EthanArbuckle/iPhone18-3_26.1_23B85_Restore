@interface VSErrorViewController
- (VSErrorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_recoveryButtonPressed:(id)a3;
- (void)_updateText;
- (void)dealloc;
- (void)setError:(id)a3;
- (void)viewDidLoad;
@end

@implementation VSErrorViewController

- (VSErrorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  VSRequireMainThread();
  v15.receiver = self;
  v15.super_class = VSErrorViewController;
  v8 = [(VSErrorViewController *)&v15 initWithNibName:v7 bundle:v6];

  if (v8)
  {
    v9 = [[VSFontCenter alloc] initWithTraitEnvironment:v8];
    fontCenter = v8->_fontCenter;
    v8->_fontCenter = v9;

    v16[0] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v12 = [(VSErrorViewController *)v8 registerForTraitChanges:v11 withHandler:&__block_literal_global];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

void __48__VSErrorViewController_initWithNibName_bundle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = [v2 fontCenter];
  v3 = [v2 traitCollection];

  [v4 setTraitCollection:v3];
}

- (void)dealloc
{
  VSRequireMainThread();
  v3.receiver = self;
  v3.super_class = VSErrorViewController;
  [(VSErrorViewController *)&v3 dealloc];
}

- (void)_updateText
{
  if ([(VSErrorViewController *)self isViewLoaded])
  {
    v10 = [(VSErrorViewController *)self error];
    v3 = [v10 localizedDescription];
    v4 = [(VSErrorViewController *)self titleLabel];
    [v4 setText:v3];

    v5 = [v10 localizedRecoverySuggestion];
    v6 = [(VSErrorViewController *)self messageLabel];
    [v6 setText:v5];

    v7 = [v10 localizedRecoveryOptions];
    v8 = [v7 firstObject];

    v9 = [(VSErrorViewController *)self recoveryButton];
    [v9 setTitle:v8 forState:0];
  }
}

- (void)_recoveryButtonPressed:(id)a3
{
  v4 = [(VSErrorViewController *)self error];
  v3 = [v4 recoveryAttempter];
  [v3 attemptRecoveryFromError:v4 optionIndex:0 delegate:0 didRecoverSelector:0 contextInfo:0];
}

- (void)setError:(id)a3
{
  v5 = a3;
  if (self->_error != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_error, a3);
    [(VSErrorViewController *)self _updateText];
    v5 = v6;
  }
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = VSErrorViewController;
  [(VSErrorViewController *)&v38 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(VSErrorViewController *)self view];
  v5 = objc_alloc(MEMORY[0x277D759D8]);
  [v4 bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setAutoresizingMask:18];
  v7 = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v4 addSubview:v6];
  v8 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setSpacing:20.0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v8];
  v9 = [v8 leftAnchor];
  v10 = [v4 layoutMarginsGuide];
  v11 = [v10 leftAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v3 addObject:v12];

  v13 = [v8 rightAnchor];
  v14 = [v4 layoutMarginsGuide];
  v15 = [v14 rightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v3 addObject:v16];

  v17 = [v6 leftAnchor];
  v18 = [v4 leftAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v3 addObject:v19];

  v20 = [v6 rightAnchor];
  v21 = [v4 rightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  [v3 addObject:v22];

  v23 = [v8 topAnchor];
  v24 = [v6 layoutMarginsGuide];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25 constant:75.0];
  [v3 addObject:v26];

  v27 = [v6 bottomAnchor];
  v28 = [v8 bottomAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v3 addObject:v29];

  v30 = [(VSErrorViewController *)self fontCenter];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  v32 = VSMainConcurrencyBindingOptions();
  [v31 vs_bind:@"font" toObject:v30 withKeyPath:@"title1Font" options:v32];

  [v31 setNumberOfLines:0];
  [v31 setTextAlignment:1];
  [(VSErrorViewController *)self setTitleLabel:v31];
  [v8 addArrangedSubview:v31];
  v33 = objc_alloc_init(MEMORY[0x277D756B8]);
  v34 = VSMainConcurrencyBindingOptions();
  [v33 vs_bind:@"font" toObject:v30 withKeyPath:@"bodyFont" options:v34];

  [v33 setNumberOfLines:0];
  [v33 setTextAlignment:1];
  [(VSErrorViewController *)self setMessageLabel:v33];
  [v8 addArrangedSubview:v33];
  v35 = objc_alloc_init(VSMultilineButton);
  if ([(VSErrorViewController *)self isRecoveryDestructive])
  {
    v36 = [MEMORY[0x277D75348] systemRedColor];
    [(VSMultilineButton *)v35 setTintColor:v36];
  }

  [(VSMultilineButton *)v35 addTarget:self action:sel__recoveryButtonPressed_ forControlEvents:64];
  v37 = [(VSMultilineButton *)v35 titleLabel];
  [v37 setNumberOfLines:0];

  [(VSErrorViewController *)self setRecoveryButton:v35];
  [v8 addArrangedSubview:v35];
  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  [(VSErrorViewController *)self _updateText];
}

@end
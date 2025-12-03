@interface VSErrorViewController
- (VSErrorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_recoveryButtonPressed:(id)pressed;
- (void)_updateText;
- (void)dealloc;
- (void)setError:(id)error;
- (void)viewDidLoad;
@end

@implementation VSErrorViewController

- (VSErrorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v16[1] = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  nameCopy = name;
  VSRequireMainThread();
  v15.receiver = self;
  v15.super_class = VSErrorViewController;
  v8 = [(VSErrorViewController *)&v15 initWithNibName:nameCopy bundle:bundleCopy];

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
    error = [(VSErrorViewController *)self error];
    localizedDescription = [error localizedDescription];
    titleLabel = [(VSErrorViewController *)self titleLabel];
    [titleLabel setText:localizedDescription];

    localizedRecoverySuggestion = [error localizedRecoverySuggestion];
    messageLabel = [(VSErrorViewController *)self messageLabel];
    [messageLabel setText:localizedRecoverySuggestion];

    localizedRecoveryOptions = [error localizedRecoveryOptions];
    firstObject = [localizedRecoveryOptions firstObject];

    recoveryButton = [(VSErrorViewController *)self recoveryButton];
    [recoveryButton setTitle:firstObject forState:0];
  }
}

- (void)_recoveryButtonPressed:(id)pressed
{
  error = [(VSErrorViewController *)self error];
  recoveryAttempter = [error recoveryAttempter];
  [recoveryAttempter attemptRecoveryFromError:error optionIndex:0 delegate:0 didRecoverSelector:0 contextInfo:0];
}

- (void)setError:(id)error
{
  errorCopy = error;
  if (self->_error != errorCopy)
  {
    v6 = errorCopy;
    objc_storeStrong(&self->_error, error);
    [(VSErrorViewController *)self _updateText];
    errorCopy = v6;
  }
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = VSErrorViewController;
  [(VSErrorViewController *)&v38 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  view = [(VSErrorViewController *)self view];
  v5 = objc_alloc(MEMORY[0x277D759D8]);
  [view bounds];
  v6 = [v5 initWithFrame:?];
  [v6 setAutoresizingMask:18];
  groupTableViewBackgroundColor = [MEMORY[0x277D75348] groupTableViewBackgroundColor];
  [v6 setBackgroundColor:groupTableViewBackgroundColor];

  [view addSubview:v6];
  v8 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setSpacing:20.0];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v8];
  leftAnchor = [v8 leftAnchor];
  layoutMarginsGuide = [view layoutMarginsGuide];
  leftAnchor2 = [layoutMarginsGuide leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v3 addObject:v12];

  rightAnchor = [v8 rightAnchor];
  layoutMarginsGuide2 = [view layoutMarginsGuide];
  rightAnchor2 = [layoutMarginsGuide2 rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v3 addObject:v16];

  leftAnchor3 = [v6 leftAnchor];
  leftAnchor4 = [view leftAnchor];
  v19 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  [v3 addObject:v19];

  rightAnchor3 = [v6 rightAnchor];
  rightAnchor4 = [view rightAnchor];
  v22 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  [v3 addObject:v22];

  topAnchor = [v8 topAnchor];
  layoutMarginsGuide3 = [v6 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:75.0];
  [v3 addObject:v26];

  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [v8 bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v3 addObject:v29];

  fontCenter = [(VSErrorViewController *)self fontCenter];
  v31 = objc_alloc_init(MEMORY[0x277D756B8]);
  v32 = VSMainConcurrencyBindingOptions();
  [v31 vs_bind:@"font" toObject:fontCenter withKeyPath:@"title1Font" options:v32];

  [v31 setNumberOfLines:0];
  [v31 setTextAlignment:1];
  [(VSErrorViewController *)self setTitleLabel:v31];
  [v8 addArrangedSubview:v31];
  v33 = objc_alloc_init(MEMORY[0x277D756B8]);
  v34 = VSMainConcurrencyBindingOptions();
  [v33 vs_bind:@"font" toObject:fontCenter withKeyPath:@"bodyFont" options:v34];

  [v33 setNumberOfLines:0];
  [v33 setTextAlignment:1];
  [(VSErrorViewController *)self setMessageLabel:v33];
  [v8 addArrangedSubview:v33];
  v35 = objc_alloc_init(VSMultilineButton);
  if ([(VSErrorViewController *)self isRecoveryDestructive])
  {
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(VSMultilineButton *)v35 setTintColor:systemRedColor];
  }

  [(VSMultilineButton *)v35 addTarget:self action:sel__recoveryButtonPressed_ forControlEvents:64];
  titleLabel = [(VSMultilineButton *)v35 titleLabel];
  [titleLabel setNumberOfLines:0];

  [(VSErrorViewController *)self setRecoveryButton:v35];
  [v8 addArrangedSubview:v35];
  [MEMORY[0x277CCAAD0] activateConstraints:v3];
  [(VSErrorViewController *)self _updateText];
}

@end
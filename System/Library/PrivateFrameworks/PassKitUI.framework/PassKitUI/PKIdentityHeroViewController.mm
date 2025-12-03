@interface PKIdentityHeroViewController
- (PKIdentityHeroViewController)initWithConfiguration:(id)configuration;
- (void)primaryButtonClicked:(id)clicked;
- (void)secondaryButtonClicked:(id)clicked;
- (void)viewDidLoad;
@end

@implementation PKIdentityHeroViewController

- (PKIdentityHeroViewController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PKIdentityHeroViewController;
  v6 = [(PKExplanationViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (void)viewDidLoad
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKIdentityHeroViewController;
  [(PKExplanationViewController *)&v21 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:64];
  [(PKIdentityHeroViewController *)self addChildViewController:v4];
  [explanationView setPrivacyLink:v4];
  [explanationView setShowPrivacyView:1];
  [v4 didMoveToParentViewController:self];
  [explanationView setDelegate:self];
  [explanationView setBodyDataDetectorTypes:0];
  title = [(PKIdentityHeroViewConfiguration *)self->_configuration title];
  [explanationView setTitleText:title];

  subtitle = [(PKIdentityHeroViewConfiguration *)self->_configuration subtitle];
  [explanationView setBodyText:subtitle];

  image = [(PKIdentityHeroViewConfiguration *)self->_configuration image];
  if (image)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69B8C10]);
    v9 = [PKPaymentSetupHeroView alloc];
    v22[0] = image;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v11 = [(PKPaymentSetupHeroView *)v9 initWithContext:0 heroImageController:v8 heroImages:v10];
  }

  else
  {
    v11 = 0;
  }

  [explanationView setHeroView:v11];
  v12 = PKProvisioningSecondaryBackgroundColor();
  [explanationView setTopBackgroundColor:v12];

  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  primaryButtonTitle = [(PKIdentityHeroViewConfiguration *)self->_configuration primaryButtonTitle];
  [primaryButton setTitle:primaryButtonTitle forState:0];

  [primaryButton addTarget:self action:sel_primaryButtonClicked_ forControlEvents:64];
  secondaryButtonTitle = [(PKIdentityHeroViewConfiguration *)self->_configuration secondaryButtonTitle];

  if (secondaryButtonTitle)
  {
    dockView2 = [explanationView dockView];
    footerView = [dockView2 footerView];

    manualEntryButton = [footerView manualEntryButton];
    secondaryButtonTitle2 = [(PKIdentityHeroViewConfiguration *)self->_configuration secondaryButtonTitle];
    [manualEntryButton setTitle:secondaryButtonTitle2 forState:0];

    [manualEntryButton addTarget:self action:sel_secondaryButtonClicked_ forControlEvents:64];
  }

  [(PKExplanationViewController *)self setShowCancelButton:0];
}

- (void)primaryButtonClicked:(id)clicked
{
  v3 = _Block_copy(self->_primaryButtonClickedBlock);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)secondaryButtonClicked:(id)clicked
{
  v3 = _Block_copy(self->_secondaryButtonClickedBlock);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

@end
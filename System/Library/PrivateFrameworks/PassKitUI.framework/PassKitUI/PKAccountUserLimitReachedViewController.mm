@interface PKAccountUserLimitReachedViewController
- (PKAccountUserLimitReachedViewController)initWithAccount:(id)account context:(int64_t)context;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)viewDidLoad;
@end

@implementation PKAccountUserLimitReachedViewController

- (PKAccountUserLimitReachedViewController)initWithAccount:(id)account context:(int64_t)context
{
  accountCopy = account;
  v13.receiver = self;
  v13.super_class = PKAccountUserLimitReachedViewController;
  v8 = [(PKExplanationViewController *)&v13 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_account, account);
    v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    maximumAccountUsersFormatter = v9->_maximumAccountUsersFormatter;
    v9->_maximumAccountUsersFormatter = v10;

    [(NSNumberFormatter *)v9->_maximumAccountUsersFormatter setNumberStyle:5];
    [(PKExplanationViewController *)v9 setShowDoneButton:0];
    [(PKExplanationViewController *)v9 setShowCancelButton:0];
  }

  return v9;
}

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PKAccountUserLimitReachedViewController;
  [(PKExplanationViewController *)&v14 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  feature = [(PKAccount *)self->_account feature];
  [explanationView setShowPrivacyView:0];
  v5 = PKFeatureApplicationHeaderImageWithImage(feature, 0);
  [explanationView setImage:v5];
  [explanationView setTopMargin:30.0];
  v6 = PKLocalizedFeatureString();
  [explanationView setTitleText:v6];
  accountUserInvitationAllowedFeatureDescriptor = [(PKAccount *)self->_account accountUserInvitationAllowedFeatureDescriptor];
  maximumAccountUsers = [accountUserInvitationAllowedFeatureDescriptor maximumAccountUsers];

  v9 = PKLocalizedString(&cfstr_AccountUserLim_0.isa, &cfstr_Lu.isa, maximumAccountUsers);
  [explanationView setBodyText:v9];
  v10 = PKLocalizedFeatureString();
  [explanationView setBodyButtonText:v10];
  v11 = PKLocalizedFeatureString();
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  [primaryButton setTitle:v11 forState:0];
}

- (void)explanationViewDidSelectBodyButton:(id)button
{
  v3 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:@"https://support.apple.com/ht212143?cid=mc-ols-applecard-article_h212143-ios_ui-01212021"];
  PKOpenURL();
}

@end
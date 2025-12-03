@interface PKAccountInvitationOnboardingViewController
- (PKAccountInvitationOnboardingViewController)initWithController:(id)controller;
- (id)_listItemConfigWithTitle:(id)title body:(id)body image:(id)image;
- (void)_beginReportingIfNecessary;
- (void)_endReportingIfNecessary;
- (void)_reportContinueTapped;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation PKAccountInvitationOnboardingViewController

- (PKAccountInvitationOnboardingViewController)initWithController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PKAccountInvitationOnboardingViewController;
  v6 = -[PKExplanationViewController initWithContext:](&v9, sel_initWithContext_, [controllerCopy context]);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_controller, controller);
  }

  return v7;
}

- (void)viewDidLoad
{
  v21[3] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKAccountInvitationOnboardingViewController;
  [(PKExplanationViewController *)&v20 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  v4 = PKLocalizedFeatureString();
  [explanationView setTitleText:v4];

  v5 = PKLocalizedFeatureString();
  [explanationView setBodyText:v5];

  [explanationView setBodyViewPadding:24.0];
  v6 = [PKAccountInvitationOnboardingListView alloc];
  v19 = PKLocalizedFeatureString();
  v18 = PKLocalizedFeatureString();
  v17 = [(PKAccountInvitationOnboardingViewController *)self _listItemConfigWithTitle:v19 body:v18 image:@"CardFamilySharing/CoOwners"];
  v21[0] = v17;
  v7 = PKLocalizedFeatureString();
  v8 = PKLocalizedFeatureString();
  v9 = [(PKAccountInvitationOnboardingViewController *)self _listItemConfigWithTitle:v7 body:v8 image:@"CardFamilySharing/Participants"];
  v21[1] = v9;
  v10 = PKLocalizedFeatureString();
  v11 = PKLocalizedFeatureString();
  v12 = [(PKAccountInvitationOnboardingViewController *)self _listItemConfigWithTitle:v10 body:v11 image:@"CardFamilySharing/BuildCredit"];
  v21[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];
  v14 = [(PKAccountInvitationOnboardingListView *)v6 initWithConfigurations:v13];
  [explanationView setBodyView:v14];

  [explanationView setShowPrivacyView:1];
  v15 = [MEMORY[0x1E69B7D50] pk_privacyLinkForContext:4];
  [(PKExplanationViewController *)self setPrivacyLinkController:v15];

  view = [(PKAccountInvitationOnboardingViewController *)self view];
  [view setAccessibilityIdentifier:*MEMORY[0x1E69B9450]];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKAccountInvitationOnboardingViewController;
  [(PKAccountInvitationOnboardingViewController *)&v8 viewDidAppear:appear];
  [(PKAccountInvitationOnboardingViewController *)self _beginReportingIfNecessary];
  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  v5 = *MEMORY[0x1E69BB6A0];
  v6 = *MEMORY[0x1E69BA1A0];
  v9 = *MEMORY[0x1E69BA680];
  v10[0] = *MEMORY[0x1E69BA818];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [applyController reportAnalyticsDictionaryForPage:0 subject:v5 pageTag:v6 additionalValues:v7];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v10[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKAccountInvitationOnboardingViewController;
  [(PKAccountInvitationOnboardingViewController *)&v8 viewDidDisappear:disappear];
  applyController = [(PKAccountInvitationController *)self->_controller applyController];
  v5 = *MEMORY[0x1E69BB6A0];
  v6 = *MEMORY[0x1E69BA1A0];
  v9 = *MEMORY[0x1E69BA680];
  v10[0] = *MEMORY[0x1E69BA820];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [applyController reportAnalyticsDictionaryForPage:0 subject:v5 pageTag:v6 additionalValues:v7];

  [(PKAccountInvitationOnboardingViewController *)self _endReportingIfNecessary];
}

- (id)_listItemConfigWithTitle:(id)title body:(id)body image:(id)image
{
  v7 = MEMORY[0x1E69DCC28];
  imageCopy = image;
  bodyCopy = body;
  titleCopy = title;
  cellConfiguration = [v7 cellConfiguration];
  [cellConfiguration setText:titleCopy];

  textProperties = [cellConfiguration textProperties];
  v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [textProperties setFont:v13];

  [cellConfiguration setSecondaryText:bodyCopy];
  secondaryTextProperties = [cellConfiguration secondaryTextProperties];
  v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [secondaryTextProperties setFont:v15];

  secondaryTextProperties2 = [cellConfiguration secondaryTextProperties];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [secondaryTextProperties2 setColor:secondaryLabelColor];

  v18 = MEMORY[0x1E69DCAB8];
  v19 = PKPassKitUIBundle();
  v20 = [v18 imageNamed:imageCopy inBundle:v19 withConfiguration:0];

  [cellConfiguration setImage:v20];
  imageProperties = [cellConfiguration imageProperties];
  [imageProperties setReservedLayoutSize:{52.0, 53.0}];

  [cellConfiguration setImageToTextPadding:20.0];
  [cellConfiguration directionalLayoutMargins];
  [cellConfiguration setDirectionalLayoutMargins:?];

  return cellConfiguration;
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  [(PKExplanationViewController *)self showNavigationBarSpinner:1];
  [(PKAccountInvitationOnboardingViewController *)self _reportContinueTapped];
  [(PKAccountInvitationController *)self->_controller setFamilyMember:0];
  [(PKAccountInvitationController *)self->_controller setAccessLevel:0];
  controller = self->_controller;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__PKAccountInvitationOnboardingViewController_explanationViewDidSelectContinue___block_invoke;
  v5[3] = &unk_1E8011D00;
  v5[4] = self;
  [(PKAccountInvitationController *)controller nextViewControllerWithCompletion:v5];
}

void __80__PKAccountInvitationOnboardingViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v5)
  {
    v8 = [v7 navigationController];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__PKAccountInvitationOnboardingViewController_explanationViewDidSelectContinue___block_invoke_2;
    v9[3] = &unk_1E8011D28;
    v9[4] = *(a1 + 32);
    [v8 pk_presentPaymentSetupViewController:v5 animated:1 completion:v9];
LABEL_5:

    goto LABEL_6;
  }

  [v7 showNavigationBarSpinner:0];
  if (v6)
  {
    v8 = PKAlertForDisplayableErrorWithHandlers(v6, 0, 0, 0);
    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_reportContinueTapped
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69BA6F0];
  v3 = *MEMORY[0x1E69BA440];
  v6[0] = *MEMORY[0x1E69BA680];
  v6[1] = v3;
  v4 = *MEMORY[0x1E69BA500];
  v7[0] = v2;
  v7[1] = v4;
  v6[2] = *MEMORY[0x1E69BABE8];
  v7[2] = *MEMORY[0x1E69BA1A0];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB6A0] sendEvent:v5];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB698] sendEvent:v5];
}

- (void)_beginReportingIfNecessary
{
  v3 = *MEMORY[0x1E69BB6A0];
  v4 = [MEMORY[0x1E69B8540] reporterForSubject:*MEMORY[0x1E69BB6A0]];

  if (!v4)
  {
    self->_didBeginOnboardingSubject = 1;
    v5 = MEMORY[0x1E69B8540];

    [v5 beginSubjectReporting:v3];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_didBeginOnboardingSubject)
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB6A0]];
  }
}

@end
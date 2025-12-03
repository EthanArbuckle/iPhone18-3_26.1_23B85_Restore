@interface PKAccountLegalDisclosureViewController
- (PKAccountLegalDisclosureViewController)initWithFeature:(unint64_t)feature associatedAccountFeature:(unint64_t)accountFeature;
- (void)explanationViewDidUpdateLayout:(id)layout;
- (void)viewDidLoad;
@end

@implementation PKAccountLegalDisclosureViewController

- (PKAccountLegalDisclosureViewController)initWithFeature:(unint64_t)feature associatedAccountFeature:(unint64_t)accountFeature
{
  v7.receiver = self;
  v7.super_class = PKAccountLegalDisclosureViewController;
  result = [(PKExplanationViewController *)&v7 init];
  if (result)
  {
    result->_feature = feature;
    result->_associatedAccountFeature = accountFeature;
  }

  return result;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKAccountLegalDisclosureViewController;
  [(PKExplanationViewController *)&v8 viewDidLoad];
  navigationItem = [(PKAccountLegalDisclosureViewController *)self navigationItem];
  v4 = PKDynamicLocalizedFeatureString();
  [navigationItem setTitle:v4];

  explanationView = [(PKExplanationViewController *)self explanationView];
  v6 = PKDynamicLocalizedFeatureString();
  [explanationView setBodyText:v6];

  [explanationView setBodyTextAlignment:4];
  [explanationView setHideTitleText:1];
  [explanationView setShowPrivacyView:0];
  if (PKIsVision())
  {
    [(PKExplanationViewController *)self setShowCloseButton:1];
  }

  else
  {
    [(PKExplanationViewController *)self setShowDoneButton:1];
  }

  [(PKExplanationViewController *)self setShowCancelButton:0];
  dockView = [explanationView dockView];
  [dockView setPrimaryButton:0];
}

- (void)explanationViewDidUpdateLayout:(id)layout
{
  layoutCopy = layout;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    scrollView = [layoutCopy scrollView];
    navigationItem = [(PKAccountLegalDisclosureViewController *)self navigationItem];
    [scrollView pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:navigationItem];
  }
}

@end
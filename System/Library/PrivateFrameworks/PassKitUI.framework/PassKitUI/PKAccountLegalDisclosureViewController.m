@interface PKAccountLegalDisclosureViewController
- (PKAccountLegalDisclosureViewController)initWithFeature:(unint64_t)a3 associatedAccountFeature:(unint64_t)a4;
- (void)explanationViewDidUpdateLayout:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKAccountLegalDisclosureViewController

- (PKAccountLegalDisclosureViewController)initWithFeature:(unint64_t)a3 associatedAccountFeature:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PKAccountLegalDisclosureViewController;
  result = [(PKExplanationViewController *)&v7 init];
  if (result)
  {
    result->_feature = a3;
    result->_associatedAccountFeature = a4;
  }

  return result;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PKAccountLegalDisclosureViewController;
  [(PKExplanationViewController *)&v8 viewDidLoad];
  v3 = [(PKAccountLegalDisclosureViewController *)self navigationItem];
  v4 = PKDynamicLocalizedFeatureString();
  [v3 setTitle:v4];

  v5 = [(PKExplanationViewController *)self explanationView];
  v6 = PKDynamicLocalizedFeatureString();
  [v5 setBodyText:v6];

  [v5 setBodyTextAlignment:4];
  [v5 setHideTitleText:1];
  [v5 setShowPrivacyView:0];
  if (PKIsVision())
  {
    [(PKExplanationViewController *)self setShowCloseButton:1];
  }

  else
  {
    [(PKExplanationViewController *)self setShowDoneButton:1];
  }

  [(PKExplanationViewController *)self setShowCancelButton:0];
  v7 = [v5 dockView];
  [v7 setPrimaryButton:0];
}

- (void)explanationViewDidUpdateLayout:(id)a3
{
  v6 = a3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v4 = [v6 scrollView];
    v5 = [(PKAccountLegalDisclosureViewController *)self navigationItem];
    [v4 pkui_adjustManualScrollEdgeAppearanceProgressForNavigationItem:v5];
  }
}

@end
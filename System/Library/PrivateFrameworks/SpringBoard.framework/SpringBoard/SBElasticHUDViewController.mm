@interface SBElasticHUDViewController
- (BOOL)elasticValueViewControllerCanBePresented:(id)a3 withReason:(id *)a4;
- (SBElasticHUDViewController)initWithElasticValueContentViewController:(id)a3;
- (SBElasticHUDViewController)initWithFactory:(id)a3;
- (SBElasticHUDViewControllerDelegate)delegate;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)elasticValueViewControllerNeedsDismissal:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBElasticHUDViewController

- (SBElasticHUDViewController)initWithFactory:(id)a3
{
  v4 = [a3 elasticValueViewController];
  v5 = [(SBElasticHUDViewController *)self initWithElasticValueContentViewController:v4];

  return v5;
}

- (SBElasticHUDViewController)initWithElasticValueContentViewController:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SBElasticHUDViewController;
  v6 = [(SBElasticHUDViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(SBElasticHUDViewController *)v6 setTransitioningDelegate:v6];
    objc_storeStrong(&v7->_elasticValueViewController, a3);
    [(SBElasticValueViewController *)v7->_elasticValueViewController setDelegate:v7];
    v8 = objc_opt_class();
    v9 = +[SBCoverSheetPresentationManager sharedInstance];
    v10 = [v9 coverSheetSlidingViewController];
    v11 = SBSafeCast(v8, v10);

    v12 = [v11 edgePullGestureRecognizer];
    if (v12)
    {
      [(SBElasticValueViewController *)v7->_elasticValueViewController setupFailureRelationshipForGestureRecognizer:v12];
    }
  }

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SBElasticHUDViewController;
  [(SBElasticHUDViewController *)&v8 viewDidLoad];
  elasticValueViewController = self->_elasticValueViewController;
  v4 = [(SBElasticHUDViewController *)self view];
  [(SBElasticHUDViewController *)self bs_addChildViewController:elasticValueViewController withSuperview:v4];

  v5 = [(SBElasticValueViewController *)self->_elasticValueViewController view];
  v6 = [(SBElasticHUDViewController *)self view];
  [v6 bounds];
  [v5 setFrame:?];

  v7 = [(SBElasticValueViewController *)self->_elasticValueViewController view];
  [v7 setAutoresizingMask:18];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBElasticHUDViewController;
  [(SBElasticHUDViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(SBElasticValueViewController *)self->_elasticValueViewController view];
  v4 = [(SBElasticHUDViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = objc_alloc_init(_SBElasticHUDViewControllerNullAnimator);

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = objc_alloc_init(_SBElasticHUDViewControllerNullAnimator);

  return v3;
}

- (BOOL)elasticValueViewControllerCanBePresented:(id)a3 withReason:(id *)a4
{
  v6 = [(SBElasticHUDViewController *)self delegate];
  LOBYTE(a4) = [v6 elasticHUDViewControllerCanBePresented:self withReason:a4];

  return a4;
}

- (void)elasticValueViewControllerNeedsDismissal:(id)a3
{
  v4 = [(SBElasticHUDViewController *)self delegate];
  [v4 elasticHUDViewControllerRequestsDismissal:self];
}

- (SBElasticHUDViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
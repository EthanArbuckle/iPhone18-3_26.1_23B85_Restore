@interface SBElasticHUDViewController
- (BOOL)elasticValueViewControllerCanBePresented:(id)presented withReason:(id *)reason;
- (SBElasticHUDViewController)initWithElasticValueContentViewController:(id)controller;
- (SBElasticHUDViewController)initWithFactory:(id)factory;
- (SBElasticHUDViewControllerDelegate)delegate;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (void)elasticValueViewControllerNeedsDismissal:(id)dismissal;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SBElasticHUDViewController

- (SBElasticHUDViewController)initWithFactory:(id)factory
{
  elasticValueViewController = [factory elasticValueViewController];
  v5 = [(SBElasticHUDViewController *)self initWithElasticValueContentViewController:elasticValueViewController];

  return v5;
}

- (SBElasticHUDViewController)initWithElasticValueContentViewController:(id)controller
{
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = SBElasticHUDViewController;
  v6 = [(SBElasticHUDViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    [(SBElasticHUDViewController *)v6 setTransitioningDelegate:v6];
    objc_storeStrong(&v7->_elasticValueViewController, controller);
    [(SBElasticValueViewController *)v7->_elasticValueViewController setDelegate:v7];
    v8 = objc_opt_class();
    v9 = +[SBCoverSheetPresentationManager sharedInstance];
    coverSheetSlidingViewController = [v9 coverSheetSlidingViewController];
    v11 = SBSafeCast(v8, coverSheetSlidingViewController);

    edgePullGestureRecognizer = [v11 edgePullGestureRecognizer];
    if (edgePullGestureRecognizer)
    {
      [(SBElasticValueViewController *)v7->_elasticValueViewController setupFailureRelationshipForGestureRecognizer:edgePullGestureRecognizer];
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
  view = [(SBElasticHUDViewController *)self view];
  [(SBElasticHUDViewController *)self bs_addChildViewController:elasticValueViewController withSuperview:view];

  view2 = [(SBElasticValueViewController *)self->_elasticValueViewController view];
  view3 = [(SBElasticHUDViewController *)self view];
  [view3 bounds];
  [view2 setFrame:?];

  view4 = [(SBElasticValueViewController *)self->_elasticValueViewController view];
  [view4 setAutoresizingMask:18];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SBElasticHUDViewController;
  [(SBElasticHUDViewController *)&v5 viewDidLayoutSubviews];
  view = [(SBElasticValueViewController *)self->_elasticValueViewController view];
  view2 = [(SBElasticHUDViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = objc_alloc_init(_SBElasticHUDViewControllerNullAnimator);

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = objc_alloc_init(_SBElasticHUDViewControllerNullAnimator);

  return v3;
}

- (BOOL)elasticValueViewControllerCanBePresented:(id)presented withReason:(id *)reason
{
  delegate = [(SBElasticHUDViewController *)self delegate];
  LOBYTE(reason) = [delegate elasticHUDViewControllerCanBePresented:self withReason:reason];

  return reason;
}

- (void)elasticValueViewControllerNeedsDismissal:(id)dismissal
{
  delegate = [(SBElasticHUDViewController *)self delegate];
  [delegate elasticHUDViewControllerRequestsDismissal:self];
}

- (SBElasticHUDViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
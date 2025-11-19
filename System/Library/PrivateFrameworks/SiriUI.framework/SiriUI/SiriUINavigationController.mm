@interface SiriUINavigationController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (SiriUINavigationController)initWithCoder:(id)a3;
- (SiriUINavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (SiriUINavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (SiriUINavigationController)initWithRootViewController:(id)a3;
- (SiriUINavigationTransitioning)transitionController;
- (_SiriUINavigationControllerDelegateAdapter)_delegateAdapter;
- (id)delegate;
- (void)_handleGestureFromRecognizer:(id)a3;
- (void)_sharedInit;
- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)a3;
- (void)setDelegate:(id)a3;
- (void)setTransitionController:(id)a3;
- (void)viewDidLoad;
@end

@implementation SiriUINavigationController

- (SiriUINavigationController)initWithRootViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriUINavigationController;
  v3 = [(SiriUINavigationController *)&v6 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    [(SiriUINavigationController *)v3 _sharedInit];
  }

  return v4;
}

- (SiriUINavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = SiriUINavigationController;
  v4 = [(SiriUINavigationController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
  v5 = v4;
  if (v4)
  {
    [(SiriUINavigationController *)v4 _sharedInit];
  }

  return v5;
}

- (SiriUINavigationController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = SiriUINavigationController;
  v3 = [(SiriUINavigationController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(SiriUINavigationController *)v3 _sharedInit];
  }

  return v4;
}

- (SiriUINavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = SiriUINavigationController;
  v4 = [(SiriUINavigationController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SiriUINavigationController *)v4 _sharedInit];
  }

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SiriUINavigationController;
  [(SiriUINavigationController *)&v4 viewDidLoad];
  v3 = [(SiriUINavigationController *)self view];
  [v3 setClipsToBounds:0];
}

- (id)delegate
{
  v2 = [(SiriUINavigationController *)self _delegateAdapter];
  v3 = [v2 externalDelegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SiriUINavigationController *)self _delegateAdapter];
  v7.receiver = self;
  v7.super_class = SiriUINavigationController;
  [(SiriUINavigationController *)&v7 setDelegate:v5];

  v6 = [(SiriUINavigationController *)self _delegateAdapter];
  [v6 setExternalDelegate:v4];
}

- (SiriUINavigationTransitioning)transitionController
{
  v2 = [(SiriUINavigationController *)self _delegateAdapter];
  v3 = [v2 transitionController];

  return v3;
}

- (void)setTransitionController:(id)a3
{
  v6 = a3;
  v4 = [(SiriUINavigationController *)self transitionController];

  if (v4 != v6)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 configureWithNavigationController:self];
    }

    v5 = [(SiriUINavigationController *)self _delegateAdapter];
    [v5 setTransitionController:v6];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(SiriUINavigationController *)self interactivePopGestureRecognizer];

  if (self->_supportsSAE)
  {
    v6 = [(SiriUINavigationController *)self viewControllers];
    v7 = [v6 count] > 2;
  }

  else
  {
    v7 = v5 == v4;
  }

  return v7;
}

- (void)_sharedInit
{
  [(SiriUINavigationController *)self setDelegate:0];
  self->_supportsSAE = [MEMORY[0x277CEF4D0] saeAvailable];
  self->_popAnimationType = 0;
  v3 = [(SiriUINavigationController *)self navigationBar];
  [v3 siriui_customizeAppearanceGivenSAEEnabled:self->_supportsSAE];

  [(SiriUINavigationController *)self _setBuiltinTransitionStyle:!self->_supportsSAE];
  v4 = [(SiriUINavigationController *)self interactivePopGestureRecognizer];
  [v4 setDelegate:self];

  v5 = [(SiriUINavigationController *)self interactivePopGestureRecognizer];
  [v5 addTarget:self action:sel__handleGestureFromRecognizer_];
}

- (_SiriUINavigationControllerDelegateAdapter)_delegateAdapter
{
  delegateAdapter = self->_delegateAdapter;
  if (!delegateAdapter)
  {
    v4 = objc_alloc_init(_SiriUINavigationControllerDelegateAdapter);
    v5 = self->_delegateAdapter;
    self->_delegateAdapter = v4;

    delegateAdapter = self->_delegateAdapter;
  }

  return delegateAdapter;
}

- (void)_handleGestureFromRecognizer:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 state] == 1)
  {
    v4 = [(SiriUINavigationController *)self transitionController];
    if (objc_opt_respondsToSelector())
    {
      [v4 setOperation:2];
    }

    if (objc_opt_respondsToSelector())
    {
      v5 = [(SiriUINavigationController *)self transitionCoordinator];
      [v4 coordinateAdditionalTransitionsWithTransitionCoordinator:v5];
    }
  }
}

- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)a3
{
  if (a3.y < -100.0)
  {
    v4 = [(SiriUINavigationController *)self viewControllers];
    v5 = [v4 count];

    if (v5 == 2)
    {
      v6 = [(SiriUINavigationController *)self transitionController];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = [(SiriUINavigationController *)self transitionController];
        [v8 setOperation:2];

        [(SiriUINavigationController *)self setPopToRootViewController:1];
        [(SiriUINavigationController *)self setPopAnimationType:1];
        v9 = [(SiriUINavigationController *)self popToRootViewControllerAnimated:1];
      }
    }
  }
}

@end
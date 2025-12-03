@interface SiriUINavigationController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (SiriUINavigationController)initWithCoder:(id)coder;
- (SiriUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (SiriUINavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (SiriUINavigationController)initWithRootViewController:(id)controller;
- (SiriUINavigationTransitioning)transitionController;
- (_SiriUINavigationControllerDelegateAdapter)_delegateAdapter;
- (id)delegate;
- (void)_handleGestureFromRecognizer:(id)recognizer;
- (void)_sharedInit;
- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)offset;
- (void)setDelegate:(id)delegate;
- (void)setTransitionController:(id)controller;
- (void)viewDidLoad;
@end

@implementation SiriUINavigationController

- (SiriUINavigationController)initWithRootViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = SiriUINavigationController;
  v3 = [(SiriUINavigationController *)&v6 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    [(SiriUINavigationController *)v3 _sharedInit];
  }

  return v4;
}

- (SiriUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = SiriUINavigationController;
  v4 = [(SiriUINavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  v5 = v4;
  if (v4)
  {
    [(SiriUINavigationController *)v4 _sharedInit];
  }

  return v5;
}

- (SiriUINavigationController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SiriUINavigationController;
  v3 = [(SiriUINavigationController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SiriUINavigationController *)v3 _sharedInit];
  }

  return v4;
}

- (SiriUINavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = SiriUINavigationController;
  v4 = [(SiriUINavigationController *)&v7 initWithNibName:name bundle:bundle];
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
  view = [(SiriUINavigationController *)self view];
  [view setClipsToBounds:0];
}

- (id)delegate
{
  _delegateAdapter = [(SiriUINavigationController *)self _delegateAdapter];
  externalDelegate = [_delegateAdapter externalDelegate];

  return externalDelegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  _delegateAdapter = [(SiriUINavigationController *)self _delegateAdapter];
  v7.receiver = self;
  v7.super_class = SiriUINavigationController;
  [(SiriUINavigationController *)&v7 setDelegate:_delegateAdapter];

  _delegateAdapter2 = [(SiriUINavigationController *)self _delegateAdapter];
  [_delegateAdapter2 setExternalDelegate:delegateCopy];
}

- (SiriUINavigationTransitioning)transitionController
{
  _delegateAdapter = [(SiriUINavigationController *)self _delegateAdapter];
  transitionController = [_delegateAdapter transitionController];

  return transitionController;
}

- (void)setTransitionController:(id)controller
{
  controllerCopy = controller;
  transitionController = [(SiriUINavigationController *)self transitionController];

  if (transitionController != controllerCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [controllerCopy configureWithNavigationController:self];
    }

    _delegateAdapter = [(SiriUINavigationController *)self _delegateAdapter];
    [_delegateAdapter setTransitionController:controllerCopy];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  interactivePopGestureRecognizer = [(SiriUINavigationController *)self interactivePopGestureRecognizer];

  if (self->_supportsSAE)
  {
    viewControllers = [(SiriUINavigationController *)self viewControllers];
    v7 = [viewControllers count] > 2;
  }

  else
  {
    v7 = interactivePopGestureRecognizer == beginCopy;
  }

  return v7;
}

- (void)_sharedInit
{
  [(SiriUINavigationController *)self setDelegate:0];
  self->_supportsSAE = [MEMORY[0x277CEF4D0] saeAvailable];
  self->_popAnimationType = 0;
  navigationBar = [(SiriUINavigationController *)self navigationBar];
  [navigationBar siriui_customizeAppearanceGivenSAEEnabled:self->_supportsSAE];

  [(SiriUINavigationController *)self _setBuiltinTransitionStyle:!self->_supportsSAE];
  interactivePopGestureRecognizer = [(SiriUINavigationController *)self interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer setDelegate:self];

  interactivePopGestureRecognizer2 = [(SiriUINavigationController *)self interactivePopGestureRecognizer];
  [interactivePopGestureRecognizer2 addTarget:self action:sel__handleGestureFromRecognizer_];
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

- (void)_handleGestureFromRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [recognizerCopy state] == 1)
  {
    transitionController = [(SiriUINavigationController *)self transitionController];
    if (objc_opt_respondsToSelector())
    {
      [transitionController setOperation:2];
    }

    if (objc_opt_respondsToSelector())
    {
      transitionCoordinator = [(SiriUINavigationController *)self transitionCoordinator];
      [transitionController coordinateAdditionalTransitionsWithTransitionCoordinator:transitionCoordinator];
    }
  }
}

- (void)contentPlatterViewScrolledToContentOffset:(CGPoint)offset
{
  if (offset.y < -100.0)
  {
    viewControllers = [(SiriUINavigationController *)self viewControllers];
    v5 = [viewControllers count];

    if (v5 == 2)
    {
      transitionController = [(SiriUINavigationController *)self transitionController];
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        transitionController2 = [(SiriUINavigationController *)self transitionController];
        [transitionController2 setOperation:2];

        [(SiriUINavigationController *)self setPopToRootViewController:1];
        [(SiriUINavigationController *)self setPopAnimationType:1];
        v9 = [(SiriUINavigationController *)self popToRootViewControllerAnimated:1];
      }
    }
  }
}

@end
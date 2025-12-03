@interface _UIRootPresentationController
- (UIWindow)presentingWindow;
- (_UIRootPresentationController)initWithPresentedViewController:(id)controller presentingWindow:(id)window;
- (id)_parentTraitEnvironment;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation _UIRootPresentationController

- (UIWindow)presentingWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingWindow);

  return WeakRetained;
}

- (id)_parentTraitEnvironment
{
  if (!dyld_program_sdk_at_least() || (v5.receiver = self, v5.super_class = _UIRootPresentationController, [(UIPresentationController *)&v5 _parentTraitEnvironment], (presentingWindow = objc_claimAutoreleasedReturnValue()) == 0))
  {
    presentingWindow = [(_UIRootPresentationController *)self presentingWindow];
  }

  return presentingWindow;
}

- (_UIRootPresentationController)initWithPresentedViewController:(id)controller presentingWindow:(id)window
{
  windowCopy = window;
  v10.receiver = self;
  v10.super_class = _UIRootPresentationController;
  v7 = [(UISheetPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_presentingWindow, windowCopy);
  }

  return v8;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = _UIRootPresentationController;
  coordinatorCopy = coordinator;
  [(UIPresentationController *)&v8 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinatorCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91___UIRootPresentationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E70F3B98;
  v7[4] = self;
  [coordinatorCopy animateAlongsideTransition:v7 completion:0];
}

@end
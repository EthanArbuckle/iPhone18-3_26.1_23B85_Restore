@interface _UIRootPresentationController
- (UIWindow)presentingWindow;
- (_UIRootPresentationController)initWithPresentedViewController:(id)a3 presentingWindow:(id)a4;
- (id)_parentTraitEnvironment;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIRootPresentationController

- (UIWindow)presentingWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingWindow);

  return WeakRetained;
}

- (id)_parentTraitEnvironment
{
  if (!dyld_program_sdk_at_least() || (v5.receiver = self, v5.super_class = _UIRootPresentationController, [(UIPresentationController *)&v5 _parentTraitEnvironment], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [(_UIRootPresentationController *)self presentingWindow];
  }

  return v3;
}

- (_UIRootPresentationController)initWithPresentedViewController:(id)a3 presentingWindow:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = _UIRootPresentationController;
  v7 = [(UISheetPresentationController *)&v10 initWithPresentedViewController:a3 presentingViewController:0];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_presentingWindow, v6);
  }

  return v8;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIRootPresentationController;
  v6 = a4;
  [(UIPresentationController *)&v8 willTransitionToTraitCollection:a3 withTransitionCoordinator:v6];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __91___UIRootPresentationController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
  v7[3] = &unk_1E70F3B98;
  v7[4] = self;
  [v6 animateAlongsideTransition:v7 completion:0];
}

@end
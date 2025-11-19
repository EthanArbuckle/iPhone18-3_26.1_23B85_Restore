@interface PRUISModalController
- (PRUISModalController)initWithEntryPoint:(id)a3;
- (PRUISModalControllerDelegate)delegate;
- (void)handleHostSceneTransitionedFromActiveState;
- (void)inlineEditingViewController:(id)a3 didDismissWithResponse:(id)a4;
- (void)inlineEditingViewController:(id)a3 willDismissWithResponse:(id)a4;
- (void)presentFromWindowScene:(id)a3;
- (void)setDisplayConfiguration:(id)a3;
@end

@implementation PRUISModalController

- (PRUISModalController)initWithEntryPoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRUISModalController;
  v6 = [(PRUISModalController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryPoint, a3);
  }

  return v7;
}

- (void)setDisplayConfiguration:(id)a3
{
  v5 = a3;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, a3);
    [(PRUISInlinePosterEditingViewController *)self->_viewController setDisplayConfiguration:v5];
  }
}

- (void)presentFromWindowScene:(id)a3
{
  v11 = a3;
  BSDispatchQueueAssertMain();
  if (!self->_window)
  {
    v4 = [[PRUISInlinePosterEditingViewController alloc] initWithEntryPoint:self->_entryPoint];
    [(PRUISInlinePosterEditingViewController *)v4 setDelegate:self];
    [(PRUISInlinePosterEditingViewController *)v4 setDisplayConfiguration:self->_displayConfiguration];
    viewController = self->_viewController;
    self->_viewController = v4;
    v6 = v4;

    v7 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:v11];
    window = self->_window;
    self->_window = v7;

    [(UIWindow *)self->_window _setWindowInterfaceOrientation:1];
    v9 = self->_window;
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UIWindow *)v9 setBackgroundColor:v10];

    [(UIWindow *)self->_window setWindowLevel:*MEMORY[0x1E69DE7D8] + 1.0];
    [(UIWindow *)self->_window setRootViewController:v6];
    [(UIWindow *)self->_window makeKeyAndVisible];
  }
}

- (void)handleHostSceneTransitionedFromActiveState
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:*MEMORY[0x1E696A2D8] object:0];
}

- (void)inlineEditingViewController:(id)a3 willDismissWithResponse:(id)a4
{
  v6 = a4;
  BSDispatchQueueAssertMain();
  v5 = [(PRUISModalController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 modalController:self willDismissSheetWithResponse:v6];
  }
}

- (void)inlineEditingViewController:(id)a3 didDismissWithResponse:(id)a4
{
  v7 = a4;
  BSDispatchQueueAssertMain();
  [(UIWindow *)self->_window setHidden:1];
  window = self->_window;
  self->_window = 0;

  v6 = [(PRUISModalController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 modalController:self didDismissSheetWithResponse:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 modalControllerDidDismissSheet:self];
  }
}

- (PRUISModalControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
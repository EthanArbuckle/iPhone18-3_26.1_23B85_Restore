@interface PRUISModalController
- (PRUISModalController)initWithEntryPoint:(id)point;
- (PRUISModalControllerDelegate)delegate;
- (void)handleHostSceneTransitionedFromActiveState;
- (void)inlineEditingViewController:(id)controller didDismissWithResponse:(id)response;
- (void)inlineEditingViewController:(id)controller willDismissWithResponse:(id)response;
- (void)presentFromWindowScene:(id)scene;
- (void)setDisplayConfiguration:(id)configuration;
@end

@implementation PRUISModalController

- (PRUISModalController)initWithEntryPoint:(id)point
{
  pointCopy = point;
  v9.receiver = self;
  v9.super_class = PRUISModalController;
  v6 = [(PRUISModalController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entryPoint, point);
  }

  return v7;
}

- (void)setDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(FBSDisplayConfiguration *)self->_displayConfiguration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_displayConfiguration, configuration);
    [(PRUISInlinePosterEditingViewController *)self->_viewController setDisplayConfiguration:configurationCopy];
  }
}

- (void)presentFromWindowScene:(id)scene
{
  sceneCopy = scene;
  BSDispatchQueueAssertMain();
  if (!self->_window)
  {
    v4 = [[PRUISInlinePosterEditingViewController alloc] initWithEntryPoint:self->_entryPoint];
    [(PRUISInlinePosterEditingViewController *)v4 setDelegate:self];
    [(PRUISInlinePosterEditingViewController *)v4 setDisplayConfiguration:self->_displayConfiguration];
    viewController = self->_viewController;
    self->_viewController = v4;
    v6 = v4;

    v7 = [objc_alloc(MEMORY[0x1E69DD2E8]) initWithWindowScene:sceneCopy];
    window = self->_window;
    self->_window = v7;

    [(UIWindow *)self->_window _setWindowInterfaceOrientation:1];
    v9 = self->_window;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIWindow *)v9 setBackgroundColor:clearColor];

    [(UIWindow *)self->_window setWindowLevel:*MEMORY[0x1E69DE7D8] + 1.0];
    [(UIWindow *)self->_window setRootViewController:v6];
    [(UIWindow *)self->_window makeKeyAndVisible];
  }
}

- (void)handleHostSceneTransitionedFromActiveState
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E696A2D8] object:0];
}

- (void)inlineEditingViewController:(id)controller willDismissWithResponse:(id)response
{
  responseCopy = response;
  BSDispatchQueueAssertMain();
  delegate = [(PRUISModalController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate modalController:self willDismissSheetWithResponse:responseCopy];
  }
}

- (void)inlineEditingViewController:(id)controller didDismissWithResponse:(id)response
{
  responseCopy = response;
  BSDispatchQueueAssertMain();
  [(UIWindow *)self->_window setHidden:1];
  window = self->_window;
  self->_window = 0;

  delegate = [(PRUISModalController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate modalController:self didDismissSheetWithResponse:responseCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate modalControllerDidDismissSheet:self];
  }
}

- (PRUISModalControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
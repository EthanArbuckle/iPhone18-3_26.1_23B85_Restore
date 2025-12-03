@interface _UIZoomViewControllerTransition
+ (id)_zoomWithOptions:(id)options sourceItemProvider:(id)provider;
+ (id)zoomWithOptions:(id)options sourceViewProvider:(id)provider;
- (BOOL)_isSupportedGivenTraits:(id)traits;
- (UIViewController)_associatedViewController;
- (id)_transitionControllerForViewController:(id)controller traits:(id)traits isAppearing:(BOOL)appearing;
- (void)_didMoveToParentViewController:(id)controller;
- (void)_wasAssignedToViewController:(id)controller;
@end

@implementation _UIZoomViewControllerTransition

- (UIViewController)_associatedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__associatedViewController);

  return WeakRetained;
}

+ (id)zoomWithOptions:(id)options sourceViewProvider:(id)provider
{
  optionsCopy = options;
  providerCopy = provider;
  _init = [[self alloc] _init];
  [_init set_viewProvider:providerCopy];

  if (optionsCopy)
  {
    [_init set_options:optionsCopy];
  }

  else
  {
    v9 = objc_opt_new();
    [_init set_options:v9];
  }

  return _init;
}

+ (id)_zoomWithOptions:(id)options sourceItemProvider:(id)provider
{
  optionsCopy = options;
  providerCopy = provider;
  _init = [[self alloc] _init];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71___UIZoomViewControllerTransition__zoomWithOptions_sourceItemProvider___block_invoke;
  v12[3] = &unk_1E710D8D0;
  v13 = providerCopy;
  v9 = providerCopy;
  [_init set_viewProvider:v12];
  if (optionsCopy)
  {
    [_init set_options:optionsCopy];
  }

  else
  {
    v10 = objc_opt_new();
    [_init set_options:v10];
  }

  return _init;
}

- (id)_transitionControllerForViewController:(id)controller traits:(id)traits isAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  controllerCopy = controller;
  if (!-[_UIZoomViewControllerTransition _isSupportedGivenTraits:](self, "_isSupportedGivenTraits:", traits) || ([controllerCopy _overrideUseCustomPresentation] & 1) != 0 || (objc_msgSend(controllerCopy, "_overrideTransitioningDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    _zoomTransitionController = 0;
  }

  else
  {
    _zoomTransitionController = [controllerCopy _zoomTransitionController];
    [_zoomTransitionController setIsZoomingIn:appearingCopy];
  }

  return _zoomTransitionController;
}

- (void)_wasAssignedToViewController:(id)controller
{
  controllerCopy = controller;
  _associatedViewController = [(_UIZoomViewControllerTransition *)self _associatedViewController];

  if (_associatedViewController)
  {
    _associatedViewController2 = [(_UIZoomViewControllerTransition *)self _associatedViewController];
    _zoomTransitionController = [_associatedViewController2 _zoomTransitionController];

    if (_zoomTransitionController)
    {
      dismissInteraction = [_zoomTransitionController dismissInteraction];
      view = [dismissInteraction view];
      dismissInteraction2 = [_zoomTransitionController dismissInteraction];
      [view removeInteraction:dismissInteraction2];
    }

    [(_UIZoomViewControllerTransition *)self set_associatedViewController:0];
  }

  v10 = controllerCopy;
  if (controllerCopy)
  {
    [(_UIZoomViewControllerTransition *)self set_associatedViewController:controllerCopy];
    _zoomTransitionController2 = [controllerCopy _zoomTransitionController];
    dismissInteraction3 = [_zoomTransitionController2 dismissInteraction];
    [dismissInteraction3 setDelegate:_zoomTransitionController2];

    traitCollection = [controllerCopy traitCollection];
    v14 = [(_UIZoomViewControllerTransition *)self _isSupportedGivenTraits:traitCollection];
    dismissInteraction4 = [_zoomTransitionController2 dismissInteraction];
    [dismissInteraction4 setIsEnabled:v14];

    [_zoomTransitionController2 setClientTransition:self];
    [_zoomTransitionController2 setOwningViewController:controllerCopy];
    view2 = [controllerCopy view];
    dismissInteraction5 = [_zoomTransitionController2 dismissInteraction];
    [view2 addInteraction:dismissInteraction5];

    v10 = controllerCopy;
  }
}

- (void)_didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  _associatedViewController = [(_UIZoomViewControllerTransition *)self _associatedViewController];
  _zoomTransitionController = [_associatedViewController _zoomTransitionController];
  [_zoomTransitionController didMoveToParent:controllerCopy];
}

- (BOOL)_isSupportedGivenTraits:(id)traits
{
  traitsCopy = traits;
  if (+[UIView _uip_transitionEnabled])
  {
    v4 = [traitsCopy userInterfaceIdiom] == 1 || objc_msgSend(traitsCopy, "userInterfaceIdiom") == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
@interface _UIAlertControllerTransitioningDelegate
- (BOOL)_isSolariumActionSheet:(id)sheet;
- (id)_interactionControllerForTransitionOfType:(int64_t)type forAlertController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)interactionControllerForPresentation:(id)presentation;
@end

@implementation _UIAlertControllerTransitioningDelegate

- (BOOL)_isSolariumActionSheet:(id)sheet
{
  sheetCopy = sheet;
  if (_UISolariumEnabled() && ![sheetCopy preferredStyle])
  {
    v4 = [sheetCopy _forceAlertStyle] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  presentingControllerCopy = presentingController;
  controllerCopy = controller;
  v9 = [_UIAlertControllerAnimatedTransitioning alloc];
  interactionProgressForPresentation = [(_UIAlertControllerTransitioningDelegate *)self interactionProgressForPresentation];
  v11 = [(_UIAlertControllerAnimatedTransitioning *)v9 initWithInteractionProgress:interactionProgressForPresentation];

  v12 = [UIAlertController _alertControllerContainedInViewController:controllerCopy];

  if ([(_UIAlertControllerTransitioningDelegate *)self _isSolariumActionSheet:v12])
  {
    v13 = 0;
  }

  else
  {
    [(_UIAlertControllerAnimatedTransitioning *)v11 setAlertController:v12];
    traitCollection = [presentingControllerCopy traitCollection];
    [v12 _updateProvidedStyleWithTraitCollection:traitCollection];

    [(_UIAlertControllerAnimatedTransitioning *)v11 setPresentation:1];
    v13 = v11;
  }

  return v13;
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  v5 = objc_alloc_init(_UIAlertControllerAnimatedTransitioning);
  v6 = [UIAlertController _alertControllerContainedInViewController:controllerCopy];

  if ([(_UIAlertControllerTransitioningDelegate *)self _isSolariumActionSheet:v6])
  {
    v7 = 0;
  }

  else
  {
    [(_UIAlertControllerAnimatedTransitioning *)v5 setAlertController:v6];
    [(_UIAlertControllerAnimatedTransitioning *)v5 setPresentation:0];
    v7 = v5;
  }

  return v7;
}

- (id)_interactionControllerForTransitionOfType:(int64_t)type forAlertController:(id)controller
{
  controllerCopy = controller;
  _visualStyle = [controllerCopy _visualStyle];
  if (-[_UIAlertControllerTransitioningDelegate _isSolariumActionSheet:](self, "_isSolariumActionSheet:", controllerCopy) || ![_visualStyle transitionOfType:0 shouldBeInteractiveForAlertController:controllerCopy])
  {
    v7 = 0;
  }

  else
  {
    v7 = [_visualStyle interactionProgressForTransitionOfType:0 forAlertController:controllerCopy];

    if (v7)
    {
      v7 = objc_alloc_init(_UIAlertControllerInteractionController);
      [(_UIAlertControllerInteractionController *)v7 setAlertController:controllerCopy];
    }
  }

  return v7;
}

- (id)interactionControllerForPresentation:(id)presentation
{
  presentationCopy = presentation;
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (has_internal_diagnostics)
  {
    if ((isKindOfClass & 1) == 0)
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "UIAlertController is expected to have an animator of type _UIAlertControllerAnimatedTransitioning", buf, 2u);
      }
    }
  }

  else if ((isKindOfClass & 1) == 0)
  {
    v11 = *(__UILogGetCategoryCachedImpl("Assert", &interactionControllerForPresentation____s_category) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "UIAlertController is expected to have an animator of type _UIAlertControllerAnimatedTransitioning", v12, 2u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    alertController = [presentationCopy alertController];
    if ([(_UIAlertControllerTransitioningDelegate *)self _isSolariumActionSheet:alertController])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(_UIAlertControllerTransitioningDelegate *)self _interactionControllerForTransitionOfType:0 forAlertController:alertController];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
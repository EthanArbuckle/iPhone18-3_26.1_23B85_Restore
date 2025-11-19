@interface _UIAlertControllerTransitioningDelegate
- (BOOL)_isSolariumActionSheet:(id)a3;
- (id)_interactionControllerForTransitionOfType:(int64_t)a3 forAlertController:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)interactionControllerForPresentation:(id)a3;
@end

@implementation _UIAlertControllerTransitioningDelegate

- (BOOL)_isSolariumActionSheet:(id)a3
{
  v3 = a3;
  if (_UISolariumEnabled() && ![v3 preferredStyle])
  {
    v4 = [v3 _forceAlertStyle] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [_UIAlertControllerAnimatedTransitioning alloc];
  v10 = [(_UIAlertControllerTransitioningDelegate *)self interactionProgressForPresentation];
  v11 = [(_UIAlertControllerAnimatedTransitioning *)v9 initWithInteractionProgress:v10];

  v12 = [UIAlertController _alertControllerContainedInViewController:v8];

  if ([(_UIAlertControllerTransitioningDelegate *)self _isSolariumActionSheet:v12])
  {
    v13 = 0;
  }

  else
  {
    [(_UIAlertControllerAnimatedTransitioning *)v11 setAlertController:v12];
    v14 = [v7 traitCollection];
    [v12 _updateProvidedStyleWithTraitCollection:v14];

    [(_UIAlertControllerAnimatedTransitioning *)v11 setPresentation:1];
    v13 = v11;
  }

  return v13;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(_UIAlertControllerAnimatedTransitioning);
  v6 = [UIAlertController _alertControllerContainedInViewController:v4];

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

- (id)_interactionControllerForTransitionOfType:(int64_t)a3 forAlertController:(id)a4
{
  v5 = a4;
  v6 = [v5 _visualStyle];
  if (-[_UIAlertControllerTransitioningDelegate _isSolariumActionSheet:](self, "_isSolariumActionSheet:", v5) || ![v6 transitionOfType:0 shouldBeInteractiveForAlertController:v5])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 interactionProgressForTransitionOfType:0 forAlertController:v5];

    if (v7)
    {
      v7 = objc_alloc_init(_UIAlertControllerInteractionController);
      [(_UIAlertControllerInteractionController *)v7 setAlertController:v5];
    }
  }

  return v7;
}

- (id)interactionControllerForPresentation:(id)a3
{
  v4 = a3;
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
    v7 = [v4 alertController];
    if ([(_UIAlertControllerTransitioningDelegate *)self _isSolariumActionSheet:v7])
    {
      v8 = 0;
    }

    else
    {
      v8 = [(_UIAlertControllerTransitioningDelegate *)self _interactionControllerForTransitionOfType:0 forAlertController:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
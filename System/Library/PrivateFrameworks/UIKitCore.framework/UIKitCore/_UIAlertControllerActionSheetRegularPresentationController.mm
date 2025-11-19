@interface _UIAlertControllerActionSheetRegularPresentationController
- (BOOL)_shouldUseAlertPresentationForTraitCollection:(id)a3;
- (BOOL)_shouldUseCompactPresentationForTraitCollection:(id)a3;
- (BOOL)dimmingViewWasTapped:(id)a3 withDismissCompletion:(id)a4;
- (id)_alertController;
- (id)_alertControllerContainer;
- (id)_alertPresentationController;
- (id)_compactPresentationController;
- (id)_exceptionStringForNilSourceViewOrBarButtonItem;
- (id)_presentationControllerForTraitCollection:(id)a3;
- (unint64_t)permittedArrowDirections;
@end

@implementation _UIAlertControllerActionSheetRegularPresentationController

- (id)_compactPresentationController
{
  v3 = [_UIAlertControllerActionSheetCompactPresentationController alloc];
  v4 = [(UIPresentationController *)self presentedViewController];
  v5 = [(UIPresentationController *)self presentingViewController];
  v6 = [(_UIAlertControllerPresentationController *)v3 initWithPresentedViewController:v4 presentingViewController:v5];

  return v6;
}

- (id)_alertPresentationController
{
  v3 = [_UIAlertControllerAlertPresentationController alloc];
  v4 = [(UIPresentationController *)self presentedViewController];
  v5 = [(UIPresentationController *)self presentingViewController];
  v6 = [(_UIAlertControllerPresentationController *)v3 initWithPresentedViewController:v4 presentingViewController:v5];

  v7 = [(UIPresentationController *)self presentedViewController];
  [v7 set_forceAlertStyle:1];

  return v6;
}

- (id)_presentationControllerForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = self;
  if ([(_UIAlertControllerActionSheetRegularPresentationController *)v6 _shouldUseCompactPresentationForTraitCollection:v5])
  {
    v7 = [(_UIAlertControllerActionSheetRegularPresentationController *)v6 _compactPresentationController];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [(_UIAlertControllerActionSheetRegularPresentationController *)v6 _alertController];
      v13 = [v12 description];
      [v9 handleFailureInMethod:a2 object:v6 file:@"_UIAlertControllerActionSheetRegularPresentationController.m" lineNumber:47 description:{@"Unknown presentation controller class %@ encountered when adapting UIAlertController %@", v11, v13}];
    }

    [v7 _presentedAlertControllerDidAdapt];
  }

  else if ([(_UIAlertControllerActionSheetRegularPresentationController *)v6 _shouldUseAlertPresentationForTraitCollection:v5])
  {
    v7 = [(_UIAlertControllerActionSheetRegularPresentationController *)v6 _alertPresentationController];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (BOOL)_shouldUseAlertPresentationForTraitCollection:(id)a3
{
  v4 = _UISolariumEnabled();
  if (v4)
  {
    LOBYTE(v4) = ![(UIPopoverPresentationController *)self _isSourceViewSafeForMorphing];
  }

  return v4;
}

- (unint64_t)permittedArrowDirections
{
  if ([(UIPopoverPresentationController *)self _shouldHideArrow])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = _UIAlertControllerActionSheetRegularPresentationController;
  return [(UIPopoverPresentationController *)&v4 permittedArrowDirections];
}

- (BOOL)_shouldUseCompactPresentationForTraitCollection:(id)a3
{
  v4 = a3;
  if (_UISolariumEnabled())
  {
    goto LABEL_7;
  }

  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (!v6)
  {
    v10 = 1;
    goto LABEL_8;
  }

  if ([v4 horizontalSizeClass] != 1 || objc_msgSend(v4, "userInterfaceIdiom") == 6 || (-[UIPresentationController presentingViewController](self, "presentingViewController"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "_presentationControllerClassName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = NSClassFromString(v8), v8, v7, v9 == objc_opt_class()))
  {
LABEL_7:
    v10 = 0;
  }

  else
  {
    v10 = v9 != objc_opt_class();
  }

LABEL_8:

  return v10;
}

- (BOOL)dimmingViewWasTapped:(id)a3 withDismissCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UIPopoverPresentationController *)self _popoverIsDismissingBecauseDismissInteractionOccurred])
  {
    v8 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIAlertControllerActionSheetRegularPresentationController;
    v8 = [(UIPopoverPresentationController *)&v11 dimmingViewWasTapped:v6 withDismissCompletion:v7];
    v9 = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertController];
    [v9 _dismissFromPopoverDimmingView];
  }

  return v8;
}

- (id)_exceptionStringForNilSourceViewOrBarButtonItem
{
  v3 = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertController];
  v4 = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertControllerContainer];

  if (v3 == v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(UIPresentationController *)self presentingViewController];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [(UIPresentationController *)self presentingViewController];
    v5 = [v6 stringWithFormat:@"Your application has presented a UIAlertController (%@) of style UIAlertControllerStyleActionSheet from %@ (%@). The modalPresentationStyle of a UIAlertController with this style is UIModalPresentationPopover. You must provide location information for this popover through the alert controller's popoverPresentationController. You must provide either a sourceView and sourceRect or a barButtonItem.  If this information is not known when you present the alert controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation.", v3, v9, v10];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIAlertControllerActionSheetRegularPresentationController;
    v5 = [(UIPopoverPresentationController *)&v12 _exceptionStringForNilSourceViewOrBarButtonItem];
  }

  return v5;
}

- (id)_alertController
{
  v2 = [(UIPresentationController *)self presentedViewController];
  v3 = [v2 _containedAlertController];

  return v3;
}

- (id)_alertControllerContainer
{
  v2 = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertController];
  v3 = [v2 _alertControllerContainer];

  return v3;
}

@end
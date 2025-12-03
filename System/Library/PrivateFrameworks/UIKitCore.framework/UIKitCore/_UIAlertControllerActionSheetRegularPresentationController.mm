@interface _UIAlertControllerActionSheetRegularPresentationController
- (BOOL)_shouldUseAlertPresentationForTraitCollection:(id)collection;
- (BOOL)_shouldUseCompactPresentationForTraitCollection:(id)collection;
- (BOOL)dimmingViewWasTapped:(id)tapped withDismissCompletion:(id)completion;
- (id)_alertController;
- (id)_alertControllerContainer;
- (id)_alertPresentationController;
- (id)_compactPresentationController;
- (id)_exceptionStringForNilSourceViewOrBarButtonItem;
- (id)_presentationControllerForTraitCollection:(id)collection;
- (unint64_t)permittedArrowDirections;
@end

@implementation _UIAlertControllerActionSheetRegularPresentationController

- (id)_compactPresentationController
{
  v3 = [_UIAlertControllerActionSheetCompactPresentationController alloc];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  v6 = [(_UIAlertControllerPresentationController *)v3 initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];

  return v6;
}

- (id)_alertPresentationController
{
  v3 = [_UIAlertControllerAlertPresentationController alloc];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  v6 = [(_UIAlertControllerPresentationController *)v3 initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController];

  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  [presentedViewController2 set_forceAlertStyle:1];

  return v6;
}

- (id)_presentationControllerForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  if ([(_UIAlertControllerActionSheetRegularPresentationController *)selfCopy _shouldUseCompactPresentationForTraitCollection:collectionCopy])
  {
    _compactPresentationController = [(_UIAlertControllerActionSheetRegularPresentationController *)selfCopy _compactPresentationController];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      _alertController = [(_UIAlertControllerActionSheetRegularPresentationController *)selfCopy _alertController];
      v13 = [_alertController description];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_UIAlertControllerActionSheetRegularPresentationController.m" lineNumber:47 description:{@"Unknown presentation controller class %@ encountered when adapting UIAlertController %@", v11, v13}];
    }

    [_compactPresentationController _presentedAlertControllerDidAdapt];
  }

  else if ([(_UIAlertControllerActionSheetRegularPresentationController *)selfCopy _shouldUseAlertPresentationForTraitCollection:collectionCopy])
  {
    _compactPresentationController = [(_UIAlertControllerActionSheetRegularPresentationController *)selfCopy _alertPresentationController];
  }

  else
  {
    _compactPresentationController = selfCopy;
  }

  return _compactPresentationController;
}

- (BOOL)_shouldUseAlertPresentationForTraitCollection:(id)collection
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

- (BOOL)_shouldUseCompactPresentationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (_UISolariumEnabled())
  {
    goto LABEL_7;
  }

  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    v10 = 1;
    goto LABEL_8;
  }

  if ([collectionCopy horizontalSizeClass] != 1 || objc_msgSend(collectionCopy, "userInterfaceIdiom") == 6 || (-[UIPresentationController presentingViewController](self, "presentingViewController"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "_presentationControllerClassName"), v8 = objc_claimAutoreleasedReturnValue(), v9 = NSClassFromString(v8), v8, v7, v9 == objc_opt_class()))
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

- (BOOL)dimmingViewWasTapped:(id)tapped withDismissCompletion:(id)completion
{
  tappedCopy = tapped;
  completionCopy = completion;
  if ([(UIPopoverPresentationController *)self _popoverIsDismissingBecauseDismissInteractionOccurred])
  {
    v8 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _UIAlertControllerActionSheetRegularPresentationController;
    v8 = [(UIPopoverPresentationController *)&v11 dimmingViewWasTapped:tappedCopy withDismissCompletion:completionCopy];
    _alertController = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertController];
    [_alertController _dismissFromPopoverDimmingView];
  }

  return v8;
}

- (id)_exceptionStringForNilSourceViewOrBarButtonItem
{
  _alertController = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertController];
  _alertControllerContainer = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertControllerContainer];

  if (_alertController == _alertControllerContainer)
  {
    v6 = MEMORY[0x1E696AEC0];
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    presentingViewController2 = [(UIPresentationController *)self presentingViewController];
    _exceptionStringForNilSourceViewOrBarButtonItem = [v6 stringWithFormat:@"Your application has presented a UIAlertController (%@) of style UIAlertControllerStyleActionSheet from %@ (%@). The modalPresentationStyle of a UIAlertController with this style is UIModalPresentationPopover. You must provide location information for this popover through the alert controller's popoverPresentationController. You must provide either a sourceView and sourceRect or a barButtonItem.  If this information is not known when you present the alert controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation.", _alertController, v9, presentingViewController2];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIAlertControllerActionSheetRegularPresentationController;
    _exceptionStringForNilSourceViewOrBarButtonItem = [(UIPopoverPresentationController *)&v12 _exceptionStringForNilSourceViewOrBarButtonItem];
  }

  return _exceptionStringForNilSourceViewOrBarButtonItem;
}

- (id)_alertController
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  _containedAlertController = [presentedViewController _containedAlertController];

  return _containedAlertController;
}

- (id)_alertControllerContainer
{
  _alertController = [(_UIAlertControllerActionSheetRegularPresentationController *)self _alertController];
  _alertControllerContainer = [_alertController _alertControllerContainer];

  return _alertControllerContainer;
}

@end
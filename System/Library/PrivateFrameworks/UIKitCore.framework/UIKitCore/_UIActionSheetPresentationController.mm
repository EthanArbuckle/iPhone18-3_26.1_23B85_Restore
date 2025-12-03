@interface _UIActionSheetPresentationController
- (BOOL)actionSheetCompactPresentationControllerShouldPresentInCurrentContext:(id)context;
- (BOOL)dimmingViewWasTapped:(id)tapped withDismissCompletion:(id)completion;
- (UIActionSheetPresentationControllerDelegate)actionSheetDelegate;
- (id)_compactPresentationController;
- (id)_exceptionStringForNilSourceViewOrBarButtonItem;
- (id)_presentationControllerForTraitCollection:(id)collection;
- (id)_visualStyleForTraitCollection:(id)collection;
- (int64_t)_presentationContextForViewController:(id)controller;
- (void)actionSheetCompactPresentationControllerDidDismiss:(id)dismiss;
- (void)beginPseudoAlertPresentationMode;
- (void)dealloc;
- (void)endPseudoAlertPresentationMode;
- (void)setAvoidsKeyboardDisabled:(BOOL)disabled;
- (void)setDismissActionTitle:(id)title;
- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)vertically;
@end

@implementation _UIActionSheetPresentationController

- (id)_visualStyleForTraitCollection:(id)collection
{
  v3 = objc_alloc_init(_UIActionSheetPresentationControllerVisualStyleiOS);

  return v3;
}

- (id)_compactPresentationController
{
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];

  if (!compactPresentationController)
  {
    v4 = [_UIActionSheetCompactPresentationController alloc];
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    presentingViewController = [(UIPresentationController *)self presentingViewController];
    traitCollection = [(UIPresentationController *)self traitCollection];
    v8 = [(_UIActionSheetPresentationController *)self _visualStyleForTraitCollection:traitCollection];
    v9 = [(_UIActionSheetCompactPresentationController *)v4 initWithPresentedViewController:presentedViewController presentingViewController:presentingViewController visualStyle:v8];

    [(_UIActionSheetPresentationController *)self setCompactPresentationController:v9];
    [(_UIActionSheetCompactPresentationController *)v9 setActionSheetDelegate:self];
    dismissActionTitle = [(_UIActionSheetPresentationController *)self dismissActionTitle];
    [(_UIActionSheetCompactPresentationController *)v9 setDismissActionTitle:dismissActionTitle];

    [(_UIActionSheetCompactPresentationController *)v9 setDismissActionUsesShorterHeightWhenCompactVertically:self->_dismissActionUsesShorterHeightWhenCompactVertically];
  }

  return [(_UIActionSheetPresentationController *)self compactPresentationController];
}

- (int64_t)_presentationContextForViewController:(id)controller
{
  controllerCopy = controller;
  if ([controllerCopy _isInPopoverPresentation])
  {
    v4 = 1;
  }

  else if ([controllerCopy _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1])
  {
    v4 = 2;
  }

  else if ([controllerCopy _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_presentationControllerForTraitCollection:(id)collection
{
  collectionCopy = collection;
  _compactPresentationController = [(_UIActionSheetPresentationController *)self _compactPresentationController];
  presentingViewController = [(UIPresentationController *)self presentingViewController];
  v7 = UIActionSheetPresentationControllerToUse(collectionCopy, [(_UIActionSheetPresentationController *)self _presentationContextForViewController:presentingViewController], self, _compactPresentationController, [(_UIActionSheetPresentationController *)self _shouldUseCompactPresentationControllerWhenPresentedInSheet]);

  return v7;
}

- (void)dealloc
{
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [compactPresentationController setActionSheetDelegate:0];

  v4.receiver = self;
  v4.super_class = _UIActionSheetPresentationController;
  [(UIPopoverPresentationController *)&v4 dealloc];
}

- (BOOL)dimmingViewWasTapped:(id)tapped withDismissCompletion:(id)completion
{
  tappedCopy = tapped;
  if ([(UIPopoverPresentationController *)self _popoverIsDismissingBecauseDismissInteractionOccurred])
  {
    v6 = 0;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __83___UIActionSheetPresentationController_dimmingViewWasTapped_withDismissCompletion___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    v8.receiver = self;
    v8.super_class = _UIActionSheetPresentationController;
    v6 = [(UIPopoverPresentationController *)&v8 dimmingViewWasTapped:tappedCopy withDismissCompletion:v9];
  }

  return v6;
}

- (id)_exceptionStringForNilSourceViewOrBarButtonItem
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  v6 = MEMORY[0x1E696AEC0];
  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  v8 = [presentedViewController2 description];
  v9 = [v6 stringWithFormat:@"Your application has presented a %@ (%@). In its current trait environment, the modalPresentationStyle of a %@ with this style is UIModalPresentationPopover. You must provide location information for this popover through the view controller's popoverPresentationController. You must provide either a sourceView and sourceRect or a barButtonItem.  If this information is not known when you present the view controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation.", v5, v8, v5];

  return v9;
}

- (void)setDismissActionTitle:(id)title
{
  objc_storeStrong(&self->_dismissActionTitle, title);
  titleCopy = title;
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [compactPresentationController setDismissActionTitle:titleCopy];
}

- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)vertically
{
  self->_dismissActionUsesShorterHeightWhenCompactVertically = vertically;
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [compactPresentationController setDismissActionUsesShorterHeightWhenCompactVertically:1];
}

- (void)beginPseudoAlertPresentationMode
{
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [compactPresentationController beginPseudoAlertPresentationMode];
}

- (void)endPseudoAlertPresentationMode
{
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [compactPresentationController endPseudoAlertPresentationMode];
}

- (void)setAvoidsKeyboardDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_avoidsKeyboardDisabled = disabled;
  compactPresentationController = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [compactPresentationController setAvoidsKeyboardDisabled:disabledCopy];
}

- (void)actionSheetCompactPresentationControllerDidDismiss:(id)dismiss
{
  actionSheetDelegate = [(_UIActionSheetPresentationController *)self actionSheetDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    actionSheetDelegate2 = [(_UIActionSheetPresentationController *)self actionSheetDelegate];
    [actionSheetDelegate2 actionSheetPresentationControllerDidDismissActionSheet:self];
  }
}

- (BOOL)actionSheetCompactPresentationControllerShouldPresentInCurrentContext:(id)context
{
  presentingViewController = [context presentingViewController];
  v5 = [(_UIActionSheetPresentationController *)self _presentationContextForViewController:presentingViewController];

  return v5 == 1;
}

- (UIActionSheetPresentationControllerDelegate)actionSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSheetDelegate);

  return WeakRetained;
}

@end
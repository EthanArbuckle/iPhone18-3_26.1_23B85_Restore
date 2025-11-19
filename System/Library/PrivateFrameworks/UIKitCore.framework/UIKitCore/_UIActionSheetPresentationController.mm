@interface _UIActionSheetPresentationController
- (BOOL)actionSheetCompactPresentationControllerShouldPresentInCurrentContext:(id)a3;
- (BOOL)dimmingViewWasTapped:(id)a3 withDismissCompletion:(id)a4;
- (UIActionSheetPresentationControllerDelegate)actionSheetDelegate;
- (id)_compactPresentationController;
- (id)_exceptionStringForNilSourceViewOrBarButtonItem;
- (id)_presentationControllerForTraitCollection:(id)a3;
- (id)_visualStyleForTraitCollection:(id)a3;
- (int64_t)_presentationContextForViewController:(id)a3;
- (void)actionSheetCompactPresentationControllerDidDismiss:(id)a3;
- (void)beginPseudoAlertPresentationMode;
- (void)dealloc;
- (void)endPseudoAlertPresentationMode;
- (void)setAvoidsKeyboardDisabled:(BOOL)a3;
- (void)setDismissActionTitle:(id)a3;
- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)a3;
@end

@implementation _UIActionSheetPresentationController

- (id)_visualStyleForTraitCollection:(id)a3
{
  v3 = objc_alloc_init(_UIActionSheetPresentationControllerVisualStyleiOS);

  return v3;
}

- (id)_compactPresentationController
{
  v3 = [(_UIActionSheetPresentationController *)self compactPresentationController];

  if (!v3)
  {
    v4 = [_UIActionSheetCompactPresentationController alloc];
    v5 = [(UIPresentationController *)self presentedViewController];
    v6 = [(UIPresentationController *)self presentingViewController];
    v7 = [(UIPresentationController *)self traitCollection];
    v8 = [(_UIActionSheetPresentationController *)self _visualStyleForTraitCollection:v7];
    v9 = [(_UIActionSheetCompactPresentationController *)v4 initWithPresentedViewController:v5 presentingViewController:v6 visualStyle:v8];

    [(_UIActionSheetPresentationController *)self setCompactPresentationController:v9];
    [(_UIActionSheetCompactPresentationController *)v9 setActionSheetDelegate:self];
    v10 = [(_UIActionSheetPresentationController *)self dismissActionTitle];
    [(_UIActionSheetCompactPresentationController *)v9 setDismissActionTitle:v10];

    [(_UIActionSheetCompactPresentationController *)v9 setDismissActionUsesShorterHeightWhenCompactVertically:self->_dismissActionUsesShorterHeightWhenCompactVertically];
  }

  return [(_UIActionSheetPresentationController *)self compactPresentationController];
}

- (int64_t)_presentationContextForViewController:(id)a3
{
  v3 = a3;
  if ([v3 _isInPopoverPresentation])
  {
    v4 = 1;
  }

  else if ([v3 _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1])
  {
    v4 = 2;
  }

  else if ([v3 _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_presentationControllerForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(_UIActionSheetPresentationController *)self _compactPresentationController];
  v6 = [(UIPresentationController *)self presentingViewController];
  v7 = UIActionSheetPresentationControllerToUse(v4, [(_UIActionSheetPresentationController *)self _presentationContextForViewController:v6], self, v5, [(_UIActionSheetPresentationController *)self _shouldUseCompactPresentationControllerWhenPresentedInSheet]);

  return v7;
}

- (void)dealloc
{
  v3 = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [v3 setActionSheetDelegate:0];

  v4.receiver = self;
  v4.super_class = _UIActionSheetPresentationController;
  [(UIPopoverPresentationController *)&v4 dealloc];
}

- (BOOL)dimmingViewWasTapped:(id)a3 withDismissCompletion:(id)a4
{
  v5 = a3;
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
    v6 = [(UIPopoverPresentationController *)&v8 dimmingViewWasTapped:v5 withDismissCompletion:v9];
  }

  return v6;
}

- (id)_exceptionStringForNilSourceViewOrBarButtonItem
{
  v3 = [(UIPresentationController *)self presentedViewController];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);

  v6 = MEMORY[0x1E696AEC0];
  v7 = [(UIPresentationController *)self presentedViewController];
  v8 = [v7 description];
  v9 = [v6 stringWithFormat:@"Your application has presented a %@ (%@). In its current trait environment, the modalPresentationStyle of a %@ with this style is UIModalPresentationPopover. You must provide location information for this popover through the view controller's popoverPresentationController. You must provide either a sourceView and sourceRect or a barButtonItem.  If this information is not known when you present the view controller, you may provide it in the UIPopoverPresentationControllerDelegate method -prepareForPopoverPresentation.", v5, v8, v5];

  return v9;
}

- (void)setDismissActionTitle:(id)a3
{
  objc_storeStrong(&self->_dismissActionTitle, a3);
  v5 = a3;
  v6 = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [v6 setDismissActionTitle:v5];
}

- (void)setDismissActionUsesShorterHeightWhenCompactVertically:(BOOL)a3
{
  self->_dismissActionUsesShorterHeightWhenCompactVertically = a3;
  v3 = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [v3 setDismissActionUsesShorterHeightWhenCompactVertically:1];
}

- (void)beginPseudoAlertPresentationMode
{
  v2 = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [v2 beginPseudoAlertPresentationMode];
}

- (void)endPseudoAlertPresentationMode
{
  v2 = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [v2 endPseudoAlertPresentationMode];
}

- (void)setAvoidsKeyboardDisabled:(BOOL)a3
{
  v3 = a3;
  self->_avoidsKeyboardDisabled = a3;
  v4 = [(_UIActionSheetPresentationController *)self compactPresentationController];
  [v4 setAvoidsKeyboardDisabled:v3];
}

- (void)actionSheetCompactPresentationControllerDidDismiss:(id)a3
{
  v4 = [(_UIActionSheetPresentationController *)self actionSheetDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIActionSheetPresentationController *)self actionSheetDelegate];
    [v6 actionSheetPresentationControllerDidDismissActionSheet:self];
  }
}

- (BOOL)actionSheetCompactPresentationControllerShouldPresentInCurrentContext:(id)a3
{
  v4 = [a3 presentingViewController];
  v5 = [(_UIActionSheetPresentationController *)self _presentationContextForViewController:v4];

  return v5 == 1;
}

- (UIActionSheetPresentationControllerDelegate)actionSheetDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionSheetDelegate);

  return WeakRetained;
}

@end
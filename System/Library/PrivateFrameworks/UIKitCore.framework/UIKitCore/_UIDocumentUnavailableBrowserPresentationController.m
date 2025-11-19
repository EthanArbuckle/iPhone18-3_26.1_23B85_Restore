@interface _UIDocumentUnavailableBrowserPresentationController
- (_UIDocumentUnavailableBrowserPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (double)smallestDetentValue;
- (id)browserDelegate;
- (void)_sendDidChangeSelectedDetentIdentifier;
- (void)_sendDidInvalidateDetentValues;
- (void)_sendDidInvalidateUntransformedFrame;
- (void)_sendPerformLayout;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setSelectedDetentIdentifier:(id)a3;
@end

@implementation _UIDocumentUnavailableBrowserPresentationController

- (_UIDocumentUnavailableBrowserPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _UIDocumentUnavailableBrowserPresentationController;
  v4 = [(UISheetPresentationController *)&v13 initWithPresentedViewController:a3 presentingViewController:a4];
  v5 = v4;
  if (v4)
  {
    [(_UIDocumentUnavailableBrowserPresentationController *)v4 setSelectedDetentIdentifier:@"_UIDocumentUnavailableViewBrowserViewControllerMediumDetent"];
    [(UISheetPresentationController *)v5 setLargestUndimmedDetentIdentifier:@"com.apple.UIKit.full"];
    v5->_mediumDetentFraction = 1.0;
    [(UISheetPresentationController *)v5 _setShouldScaleDownBehindDescendantSheets:0];
    [(UISheetPresentationController *)v5 _setWantsBottomAttached:1];
    [(UISheetPresentationController *)v5 _setPreferredShadowOpacity:0.4];
    [(UISheetPresentationController *)v5 _setShadowRadius:100.0];
    objc_initWeak(&location, v5);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __112___UIDocumentUnavailableBrowserPresentationController_initWithPresentedViewController_presentingViewController___block_invoke;
    v10[3] = &unk_1E7128310;
    objc_copyWeak(&v11, &location);
    v6 = [UISheetPresentationControllerDetent customDetentWithIdentifier:@"_UIDocumentUnavailableViewBrowserViewControllerMediumDetent" resolver:v10];
    v14[0] = v6;
    v7 = +[UISheetPresentationControllerDetent _fullDetent];
    v14[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    [(UISheetPresentationController *)v5 setDetents:v8];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (double)smallestDetentValue
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = [a1 _detentValues];
  v3 = [v2 count];

  if (!v3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:sel_smallestDetentValue object:a1 file:@"_UIDocumentUnavailableBrowserPresentationController.m" lineNumber:53 description:@"UIKit internal inconsistency: expected sheet detent in browser presentation controller."];
  }

  v4 = [a1 _detentValues];
  v5 = [v4 firstObject];
  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSelectedDetentIdentifier:(id)a3
{
  v5 = [(UISheetPresentationController *)self selectedDetentIdentifier];
  v9.receiver = self;
  v9.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v9 setSelectedDetentIdentifier:a3];
  v6 = [(UISheetPresentationController *)self selectedDetentIdentifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"_UIDocumentViewControllerLandingBrowserPresentationControllerDidChangeSelectedDetentIdentifierNotification" object:self];
  }
}

- (void)_sendDidChangeSelectedDetentIdentifier
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidChangeSelectedDetentIdentifier];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"_UIDocumentViewControllerLandingBrowserPresentationControllerDidChangeSelectedDetentIdentifierNotification" object:self];
}

- (void)_sendDidInvalidateDetentValues
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidInvalidateDetentValues];
  v3 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v3 browserPresentationControllerDidInvalidateSheetDetentValues:self];
}

- (id)browserDelegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 80);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_sendDidInvalidateUntransformedFrame
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidInvalidateUntransformedFrame];
  v3 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v3 browserPresentationControllerDidInvalidateUntransformedFrame:self];
}

- (void)_sendPerformLayout
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidInvalidateUntransformedFrame];
  v3 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v3 browserPresentationControllerPerformLayout:self];
}

- (void)presentationTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 presentationTransitionWillBegin];
  v3 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v3 browserPresentationControllerPresentationTransitionWillBegin:self];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v5 presentationTransitionDidEnd:a3];
  v4 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v4 browserPresentationControllerPresentationTransitionDidEnd:self];
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 dismissalTransitionWillBegin];
  v3 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v3 browserPresentationControllerDismissalTransitionWillBegin:self];
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v5 dismissalTransitionDidEnd:a3];
  v4 = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [v4 browserPresentationControllerDismissalTransitionDidEnd:self];
}

@end
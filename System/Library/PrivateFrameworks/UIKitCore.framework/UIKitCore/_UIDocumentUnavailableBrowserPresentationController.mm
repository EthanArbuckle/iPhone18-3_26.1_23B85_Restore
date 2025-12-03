@interface _UIDocumentUnavailableBrowserPresentationController
- (_UIDocumentUnavailableBrowserPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (double)smallestDetentValue;
- (id)browserDelegate;
- (void)_sendDidChangeSelectedDetentIdentifier;
- (void)_sendDidInvalidateDetentValues;
- (void)_sendDidInvalidateUntransformedFrame;
- (void)_sendPerformLayout;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setSelectedDetentIdentifier:(id)identifier;
@end

@implementation _UIDocumentUnavailableBrowserPresentationController

- (_UIDocumentUnavailableBrowserPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v14[2] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _UIDocumentUnavailableBrowserPresentationController;
  v4 = [(UISheetPresentationController *)&v13 initWithPresentedViewController:controller presentingViewController:viewController];
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
  if (!self)
  {
    return 0.0;
  }

  _detentValues = [self _detentValues];
  v3 = [_detentValues count];

  if (!v3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_smallestDetentValue object:self file:@"_UIDocumentUnavailableBrowserPresentationController.m" lineNumber:53 description:@"UIKit internal inconsistency: expected sheet detent in browser presentation controller."];
  }

  _detentValues2 = [self _detentValues];
  firstObject = [_detentValues2 firstObject];
  [firstObject doubleValue];
  v7 = v6;

  return v7;
}

- (void)setSelectedDetentIdentifier:(id)identifier
{
  selectedDetentIdentifier = [(UISheetPresentationController *)self selectedDetentIdentifier];
  v9.receiver = self;
  v9.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v9 setSelectedDetentIdentifier:identifier];
  selectedDetentIdentifier2 = [(UISheetPresentationController *)self selectedDetentIdentifier];
  v7 = [selectedDetentIdentifier isEqualToString:selectedDetentIdentifier2];

  if ((v7 & 1) == 0)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIDocumentViewControllerLandingBrowserPresentationControllerDidChangeSelectedDetentIdentifierNotification" object:self];
  }
}

- (void)_sendDidChangeSelectedDetentIdentifier
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidChangeSelectedDetentIdentifier];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UIDocumentViewControllerLandingBrowserPresentationControllerDidChangeSelectedDetentIdentifierNotification" object:self];
}

- (void)_sendDidInvalidateDetentValues
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidInvalidateDetentValues];
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerDidInvalidateSheetDetentValues:self];
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
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerDidInvalidateUntransformedFrame:self];
}

- (void)_sendPerformLayout
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 _sendDidInvalidateUntransformedFrame];
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerPerformLayout:self];
}

- (void)presentationTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 presentationTransitionWillBegin];
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerPresentationTransitionWillBegin:self];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  v5.receiver = self;
  v5.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v5 presentationTransitionDidEnd:end];
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerPresentationTransitionDidEnd:self];
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v4 dismissalTransitionWillBegin];
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerDismissalTransitionWillBegin:self];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  v5.receiver = self;
  v5.super_class = _UIDocumentUnavailableBrowserPresentationController;
  [(UISheetPresentationController *)&v5 dismissalTransitionDidEnd:end];
  browserDelegate = [(_UIDocumentUnavailableBrowserPresentationController *)&self->super.super.super.isa browserDelegate];
  [browserDelegate browserPresentationControllerDismissalTransitionDidEnd:self];
}

@end
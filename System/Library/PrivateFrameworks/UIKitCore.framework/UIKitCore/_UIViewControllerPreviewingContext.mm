@interface _UIViewControllerPreviewingContext
- (CGRect)preferredSourceViewRectInCoordinateSpace:(id)space;
- (CGRect)sourceRect;
- (UIGestureRecognizer)previewingGestureRecognizerForFailureRelationship;
- (UIViewController)viewController;
- (UIViewControllerPreviewingDelegate)delegate;
- (_UIViewControllerPreviewingContext)initWithSourceView:(id)view viewController:(id)controller;
- (id)previewInteractionController:(id)controller viewControllerForPreviewingAtLocation:(CGPoint)location inCoordinateSpace:(id)space presentingViewController:(id *)viewController;
- (void)previewInteractionController:(id)controller commitViewController:(id)viewController;
- (void)previewInteractionController:(id)controller didDismissViewController:(id)viewController committing:(BOOL)committing;
- (void)previewInteractionController:(id)controller willDismissViewController:(id)viewController;
- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController;
- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController forLocation:(CGPoint)location inSourceView:(id)view;
- (void)unregister;
@end

@implementation _UIViewControllerPreviewingContext

- (_UIViewControllerPreviewingContext)initWithSourceView:(id)view viewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = _UIViewControllerPreviewingContext;
  v9 = [(_UIViewControllerPreviewingContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceView, view);
    objc_storeWeak(&v10->_viewController, controllerCopy);
    v11 = [[_UIPreviewInteractionController alloc] initWithView:viewCopy];
    previewInteractionController = v10->_previewInteractionController;
    v10->_previewInteractionController = v11;

    [(_UIPreviewInteractionController *)v10->_previewInteractionController setDelegate:v10];
    [(_UIPreviewInteractionController *)v10->_previewInteractionController setCurrentPreviewingContext:v10];
    v13 = v10;
  }

  return v10;
}

- (UIGestureRecognizer)previewingGestureRecognizerForFailureRelationship
{
  previewInteractionController = [(_UIViewControllerPreviewingContext *)self previewInteractionController];
  presentationGestureRecognizer = [previewInteractionController presentationGestureRecognizer];

  return presentationGestureRecognizer;
}

- (CGRect)preferredSourceViewRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  [(_UIViewControllerPreviewingContext *)self sourceRect];
  v39.origin.x = v5;
  v39.origin.y = v6;
  v39.size.width = v7;
  v39.size.height = v8;
  sourceView = [(_UIViewControllerPreviewingContext *)self sourceView];
  previewInteractionController = self->_previewInteractionController;
  v38 = sourceView;
  [(_UIPreviewInteractionController *)previewInteractionController _overrideSourceViewForBinaryCompatibilityIfNeeded:&v38 sourceRect:&v39];
  v11 = v38;

  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  if (CGRectIsEmpty(v39))
  {
    v39.origin.x = v13;
    v39.origin.y = v15;
    height = v19;
    width = v17;
    y = v15;
    x = v13;
    v39.size.width = v17;
    v39.size.height = v19;
  }

  else
  {
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  v43.origin.x = v13;
  v43.origin.y = v15;
  v43.size.width = v17;
  v43.size.height = v19;
  if (CGRectEqualToRect(*&x, v43))
  {
    window = [v11 window];
    v25 = window;
    if (window)
    {
      [window bounds];
      [v11 convertRect:v25 fromCoordinateSpace:?];
      v26 = v40.origin.x;
      v27 = v40.origin.y;
      v28 = v40.size.width;
      v29 = v40.size.height;
      if (CGRectIntersectsRect(v40, v39))
      {
        v41.origin.x = v26;
        v41.origin.y = v27;
        v41.size.width = v28;
        v41.size.height = v29;
        v39 = CGRectIntersection(v41, v39);
      }
    }
  }

  if (spaceCopy && v11 != spaceCopy)
  {
    [v11 convertRect:spaceCopy toCoordinateSpace:{v39.origin.x, v39.origin.y, v39.size.width, v39.size.height}];
    v39.origin.x = v30;
    v39.origin.y = v31;
    v39.size.width = v32;
    v39.size.height = v33;
  }

  v34 = v39.origin.x;
  v35 = v39.origin.y;
  v36 = v39.size.width;
  v37 = v39.size.height;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)unregister
{
  sourceView = self->_sourceView;
  self->_sourceView = 0;

  objc_storeWeak(&self->_viewController, 0);
  previewInteractionController = self->_previewInteractionController;
  self->_previewInteractionController = 0;
}

- (id)previewInteractionController:(id)controller viewControllerForPreviewingAtLocation:(CGPoint)location inCoordinateSpace:(id)space presentingViewController:(id *)viewController
{
  y = location.y;
  x = location.x;
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  presentedViewController = [WeakRetained presentedViewController];

  if (presentedViewController)
  {
    v12 = 0;
    goto LABEL_11;
  }

  sourceView = [(_UIViewControllerPreviewingContext *)self sourceView];
  [sourceView bounds];
  [(_UIViewControllerPreviewingContext *)self setSourceRect:?];

  [(_UIViewControllerPreviewingContext *)self setCustomViewForInteractiveHighlight:0];
  delegate = [(_UIViewControllerPreviewingContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v15 = [delegate previewingContext:self viewControllerForLocation:{x, y}];
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [delegate previewViewControllerForLocation:self->_sourceView inSourceView:{x, y}];
LABEL_7:
    v12 = v15;
    if (v15)
    {
      v16 = WeakRetained;
      *viewController = WeakRetained;
    }

    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

LABEL_11:

  return v12;
}

- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController forLocation:(CGPoint)location inSourceView:(id)view
{
  y = location.y;
  x = location.x;
  viewControllerCopy = viewController;
  viewCopy = view;
  delegate = [(_UIViewControllerPreviewingContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willPresentPreviewViewController:viewControllerCopy forLocation:viewCopy inSourceView:{x, y}];
  }
}

- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(_UIViewControllerPreviewingContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _previewingContext:self willPresentViewController:viewControllerCopy];
  }
}

- (void)previewInteractionController:(id)controller willDismissViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(_UIViewControllerPreviewingContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _previewingContext:self willDismissViewController:viewControllerCopy];
  }
}

- (void)previewInteractionController:(id)controller didDismissViewController:(id)viewController committing:(BOOL)committing
{
  committingCopy = committing;
  viewControllerCopy = viewController;
  delegate = [(_UIViewControllerPreviewingContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate didDismissPreviewViewController:viewControllerCopy committing:committingCopy];
  }
}

- (void)previewInteractionController:(id)controller commitViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(_UIViewControllerPreviewingContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate previewingContext:self commitViewController:viewControllerCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate commitPreviewViewController:viewControllerCopy committedViewController:viewControllerCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate commitPreviewViewController:viewControllerCopy];
  }
}

- (UIViewControllerPreviewingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end
@interface UIPreviewItemController
- (BOOL)_isMobileSafariRestricted;
- (BOOL)_shouldCancelPreviewWithNegativeFeedback;
- (UIPreviewItemController)initWithView:(id)view;
- (UIPreviewItemDelegate)delegate;
- (UIView)view;
- (id)previewInteractionController:(id)controller viewControllerForPreviewingAtPosition:(CGPoint)position inView:(id)view presentingViewController:(id *)viewController;
- (id)previewViewControllerForPosition:(CGPoint)position inSourceView:(id)view documentProperties:(id)properties;
- (void)clearPreviewIndicator;
- (void)dealloc;
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
- (void)preparePreviewIndicatorViewInSourceView:(id)view updateScreen:(BOOL)screen;
- (void)previewInteractionController:(id)controller didDismissViewController:(id)viewController committing:(BOOL)committing;
- (void)previewInteractionController:(id)controller interactionProgress:(id)progress forRevealAtLocation:(CGPoint)location inSourceView:(id)view containerView:(id)containerView;
- (void)previewInteractionController:(id)controller performCommitForPreviewViewController:(id)viewController committedViewController:(id)committedViewController;
- (void)previewInteractionController:(id)controller performCustomCommitForPreviewViewController:(id)viewController completion:(id)completion;
- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController forPosition:(CGPoint)position inSourceView:(id)view;
- (void)setupPreviewIndicatorInSourceView:(id)view;
- (void)startInteraction;
- (void)stopInteraction;
- (void)updatePreviewIndicatorAnimation:(id)animation;
@end

@implementation UIPreviewItemController

- (UIPreviewItemController)initWithView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy)
  {
    v21.receiver = self;
    v21.super_class = UIPreviewItemController;
    v5 = [(UIPreviewItemController *)&v21 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_view, viewCopy);
      v6->_type = 0;
      v6->_contentManagedByClient = 0;
      v7 = objc_alloc_init(UIPreviewInteractionController);
      previewInteractionController = v6->_previewInteractionController;
      v6->_previewInteractionController = v7;

      [(UIPreviewInteractionController *)v6->_previewInteractionController setDelegate:v6];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      gestureRecognizers = [(UIPreviewInteractionController *)v6->_previewInteractionController gestureRecognizers];
      v10 = [gestureRecognizers countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(gestureRecognizers);
            }

            [viewCopy addGestureRecognizer:*(*(&v17 + 1) + 8 * i)];
          }

          v11 = [gestureRecognizers countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v11);
      }

      presentationGestureRecognizer = [(UIPreviewInteractionController *)v6->_previewInteractionController presentationGestureRecognizer];
      if ([presentationGestureRecognizer _isGestureType:1] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [presentationGestureRecognizer setDelay:0.13];
      }

      else
      {
        NSLog(&cfstr_WarningUiprevi.isa);
      }
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  gestureRecognizers = [(UIPreviewInteractionController *)self->_previewInteractionController gestureRecognizers];
  v4 = [gestureRecognizers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_view);
        [WeakRetained removeGestureRecognizer:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [gestureRecognizers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = UIPreviewItemController;
  [(UIPreviewItemController *)&v10 dealloc];
}

- (BOOL)_shouldCancelPreviewWithNegativeFeedback
{
  if (self->_type == 2)
  {
    v3 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:UIPreviewDataLink[0]];
    scheme = [v3 scheme];
    lowercaseString = [scheme lowercaseString];
    if ([lowercaseString isEqualToString:@"http"])
    {
    }

    else
    {
      scheme2 = [v3 scheme];
      lowercaseString2 = [scheme2 lowercaseString];
      v9 = [lowercaseString2 isEqualToString:@"https"];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    if (-[UIPreviewItemController _isMobileSafariRestricted](self, "_isMobileSafariRestricted") || ([v3 iTunesStoreURL], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      previewData = self->_previewData;
      self->_previewData = 0;

      self->_type = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained _previewItemControllerDidCancelPreview:self];
      }

      v13 = +[UIDevice currentDevice];
      _tapticEngine = [v13 _tapticEngine];
      [_tapticEngine actuateFeedback:2];

      v6 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 0;
LABEL_12:

    return v6;
  }

  return 0;
}

- (BOOL)_isMobileSafariRestricted
{
  v2 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
  appState = [v2 appState];
  isRestricted = [appState isRestricted];

  return isRestricted;
}

- (id)previewViewControllerForPosition:(CGPoint)position inSourceView:(id)view documentProperties:(id)properties
{
  y = position.y;
  x = position.x;
  v45[3] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained _interactionShouldBeginFromPreviewItemController:self forPosition:{x, y}])
  {
    viewControllerToPresent = 0;
    goto LABEL_41;
  }

  lookupItem = self->_lookupItem;
  self->_lookupItem = 0;

  self->_contentManagedByClient = 0;
  self->_type = 0;
  p_type = &self->_type;
  v12 = [WeakRetained _dataForPreviewItemController:self atPosition:&self->_type type:{x, y}];
  previewData = self->_previewData;
  self->_previewData = v12;

  v14 = self->_previewData;
  if (!self->_type || !v14)
  {
    goto LABEL_7;
  }

  if ([(UIPreviewItemController *)self _shouldCancelPreviewWithNegativeFeedback])
  {
    v14 = self->_previewData;
LABEL_7:
    self->_previewData = 0;

    viewControllerToPresent = 0;
LABEL_8:
    self->_type = 0;
    goto LABEL_41;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [WeakRetained _presentedViewControllerForPreviewItemController:self];
    if (v16)
    {
      viewControllerToPresent = v16;
      self->_contentManagedByClient = 1;
      goto LABEL_41;
    }
  }

  v17 = *p_type;
  if (*p_type == 5)
  {
    v38 = objc_alloc(getMLULookupItemClass());
    v19 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:UIPreviewDataAttachmentList];
    v20 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:UIPreviewDataAttachmentIndex];
    v21 = [v38 initWithAttachments:v19 currentAttachment:{objc_msgSend(v20, "unsignedIntegerValue")}];
LABEL_28:
    v39 = self->_lookupItem;
    self->_lookupItem = v21;

    goto LABEL_29;
  }

  if (v17 != 4)
  {
    if (v17 != 2)
    {
      goto LABEL_29;
    }

    v18 = objc_alloc(getMLULookupItemClass());
    v19 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:UIPreviewDataLink[0]];
    v20 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:UIPreviewDataDDResult[0]];
    v21 = [v18 initWithURL:v19 dataDetectorsResult:v20 text:&stru_1EFB14550 range:{0, 0}];
    goto LABEL_28;
  }

  v22 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:@"UIPreviewDataText"];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &stru_1EFB14550;
  }

  v25 = v24;

  v26 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:@"UIPreviewDataTextBefore"];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &stru_1EFB14550;
  }

  v29 = v28;

  v30 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:@"UIPreviewDataTextAfter"];
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = &stru_1EFB14550;
  }

  v33 = v32;

  v45[0] = v29;
  v45[1] = v25;
  v45[2] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v35 = [v34 componentsJoinedByString:&stru_1EFB14550];

  v36 = [objc_alloc(getMLULookupItemClass()) initWithURL:0 dataDetectorsResult:0 text:v35 range:{-[__CFString length](v29, "length"), -[__CFString length](v25, "length")}];
  v37 = self->_lookupItem;
  self->_lookupItem = v36;

LABEL_29:
  if (self->_lookupItem)
  {
    v40 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:UIPreviewDataDDContext];
    if (v40)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [propertiesCopy addEntriesFromDictionary:v40];
      }
    }

    [(MLULookupItem *)self->_lookupItem setDocumentProperties:propertiesCopy];
    if ([(MLULookupItem *)self->_lookupItem resolve])
    {
      viewControllerToPresent = [(MLULookupItem *)self->_lookupItem viewControllerToPresent];
    }

    else
    {
      viewControllerToPresent = 0;
    }
  }

  else
  {
    viewControllerToPresent = 0;
  }

  if (*p_type == 5)
  {
    v41 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:@"UIPreviewDataAttachmentListIsContentManaged"];
    _UIShimSetIsContentManaged(viewControllerToPresent, [v41 BOOLValue]);
  }

  if (!viewControllerToPresent)
  {
    v43 = self->_lookupItem;
    self->_lookupItem = 0;

    v44 = self->_previewData;
    self->_previewData = 0;

    goto LABEL_8;
  }

LABEL_41:

  return viewControllerToPresent;
}

- (void)previewInteractionController:(id)controller performCommitForPreviewViewController:(id)viewController committedViewController:(id)committedViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  committedViewControllerCopy = committedViewController;
  if (self->_contentManagedByClient)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _previewItemController:self commitPreview:committedViewControllerCopy];
    }

    [(UIPreviewItemController *)self stopInteraction];
  }

  else
  {
    lookupItem = self->_lookupItem;
    if (lookupItem)
    {
      commitType = [(MLULookupItem *)lookupItem commitType];
      if (commitType != 4)
      {
        if (commitType == 2)
        {
          presentingViewController = self->_presentingViewController;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __118__UIPreviewItemController_previewInteractionController_performCommitForPreviewViewController_committedViewController___block_invoke;
          v15[3] = &unk_1E70F3590;
          v15[4] = self;
          [(UIViewController *)presentingViewController presentViewController:committedViewControllerCopy animated:0 completion:v15];
        }

        else
        {
          [(UIPreviewItemController *)self stopInteraction];
        }
      }
    }
  }
}

uint64_t __118__UIPreviewItemController_previewInteractionController_performCommitForPreviewViewController_committedViewController___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) commit];
  v2 = *(a1 + 32);

  return [v2 stopInteraction];
}

- (id)previewInteractionController:(id)controller viewControllerForPreviewingAtPosition:(CGPoint)position inView:(id)view presentingViewController:(id *)viewController
{
  y = position.y;
  x = position.x;
  viewCopy = view;
  presentingViewController = [(UIPreviewItemController *)self presentingViewController];
  if (!presentingViewController)
  {
    v12 = viewCopy;
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        if (v14)
        {
          parentViewController = [v14 parentViewController];

          if (!parentViewController)
          {
            break;
          }
        }

        presentingViewController = [UIViewController viewControllerForView:v13];

        superview = [v13 superview];

        v14 = presentingViewController;
        v13 = superview;
        if (!superview)
        {
          goto LABEL_10;
        }
      }

      presentingViewController = v14;
LABEL_10:
    }

    else
    {
      presentingViewController = 0;
    }
  }

  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {

    presentingViewController = 0;
  }

  if (viewController)
  {
    v18 = presentingViewController;
    *viewController = presentingViewController;
  }

  if (presentingViewController)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v19 setObject:presentingViewController forKeyedSubscript:@"Presenter"];
    presentationGestureRecognizer = [(UIPreviewItemController *)self presentationGestureRecognizer];
    [v19 setObject:presentationGestureRecognizer forKeyedSubscript:@"Gesture"];

    v21 = [(UIPreviewItemController *)self previewViewControllerForPosition:viewCopy inSourceView:v19 documentProperties:x, y];
    presentedViewController = self->_presentedViewController;
    self->_presentedViewController = v21;

    [v19 setObject:0 forKeyedSubscript:@"Gesture"];
    [v19 setObject:0 forKeyedSubscript:@"Presenter"];
    if (self->_presentedViewController)
    {
      objc_storeStrong(&self->_presentingViewController, presentingViewController);
    }
  }

  v23 = self->_presentedViewController;
  v24 = v23;

  return v23;
}

- (void)previewInteractionController:(id)controller performCustomCommitForPreviewViewController:(id)viewController completion:(id)completion
{
  completionCopy = completion;
  lookupItem = self->_lookupItem;
  viewControllerCopy = viewController;
  presentingViewController = [(UIPreviewItemController *)self presentingViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__UIPreviewItemController_previewInteractionController_performCustomCommitForPreviewViewController_completion___block_invoke;
  v12[3] = &unk_1E70F4A50;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MLULookupItem *)lookupItem commitWithTransitionForPreviewViewController:viewControllerCopy inViewController:presentingViewController completion:v12];
}

uint64_t __111__UIPreviewItemController_previewInteractionController_performCustomCommitForPreviewViewController_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 stopInteraction];
}

- (void)previewInteractionController:(id)controller interactionProgress:(id)progress forRevealAtLocation:(CGPoint)location inSourceView:(id)view containerView:(id)containerView
{
  progressCopy = progress;
  containerViewCopy = containerView;
  if (!self->_previewIndicatorUsesStandardAnimation && self->_previewIndicatorView)
  {
    [(UIView *)self->_previewIndicatorImageView setAlpha:0.0];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UIPreviewItemController *)self preparePreviewIndicatorViewInSourceView:WeakRetained updateScreen:0];

    [containerViewCopy addSubview:self->_previewIndicatorView];
    [progressCopy addProgressObserver:self];
  }
}

- (void)interactionProgressDidUpdate:(id)update
{
  [update percentComplete];
  v5 = v4 <= 0.2;
  v6 = 0.0;
  if (!v5)
  {
    v6 = 1.0;
  }

  self->_previewIndicatorAnimationTargetAlpha = v6;
  if (!self->_previewIndicatorDisplayLink)
  {
    v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_updatePreviewIndicatorAnimation_];
    previewIndicatorDisplayLink = self->_previewIndicatorDisplayLink;
    self->_previewIndicatorDisplayLink = v7;

    v9 = self->_previewIndicatorDisplayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v9 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695D918]];

    self->_lastPreviewIndicatorAnimationTimestamp = CACurrentMediaTime();
  }
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  [(CADisplayLink *)self->_previewIndicatorDisplayLink invalidate:progress];
  previewIndicatorDisplayLink = self->_previewIndicatorDisplayLink;
  self->_previewIndicatorDisplayLink = 0;
}

- (void)updatePreviewIndicatorAnimation:(id)animation
{
  [(UIView *)self->_previewIndicatorImageView alpha];
  previewIndicatorDisplayLink = self->_previewIndicatorDisplayLink;
  if (v5 == self->_previewIndicatorAnimationTargetAlpha)
  {
    [(CADisplayLink *)previewIndicatorDisplayLink invalidate];
    v6 = self->_previewIndicatorDisplayLink;
    self->_previewIndicatorDisplayLink = 0;
  }

  else
  {
    [(CADisplayLink *)previewIndicatorDisplayLink timestamp];
    previewIndicatorAnimationTargetAlpha = self->_previewIndicatorAnimationTargetAlpha;
    v9 = (v8 - self->_lastPreviewIndicatorAnimationTimestamp) / 0.15;
    [(UIView *)self->_previewIndicatorImageView alpha];
    if (previewIndicatorAnimationTargetAlpha >= v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = -v9;
    }

    [(UIView *)self->_previewIndicatorImageView alpha];
    v13 = fmin(v12 + v11, 1.0);
    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    [(UIView *)self->_previewIndicatorImageView setAlpha:v13];
    [(CADisplayLink *)self->_previewIndicatorDisplayLink timestamp];
    self->_lastPreviewIndicatorAnimationTimestamp = v14;
  }
}

- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController forPosition:(CGPoint)position inSourceView:(id)view
{
  y = position.y;
  x = position.x;
  viewControllerCopy = viewController;
  viewCopy = view;
  [(UIPreviewItemController *)self startInteraction];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_contentManagedByClient && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained _previewItemController:self willPresentPreview:viewControllerCopy forPosition:viewCopy inSourceView:{x, y}];
  }

  objc_opt_class();
  self->_previewIndicatorUsesStandardAnimation = objc_opt_isKindOfClass() & 1;
  [(UIPreviewItemController *)self setupPreviewIndicatorInSourceView:viewCopy];
  if (self->_previewIndicatorUsesStandardAnimation)
  {
    [(UIView *)self->_previewIndicatorView setFrame:self->_previewIndicatorBoundingRect.origin.x, self->_previewIndicatorBoundingRect.origin.y, self->_previewIndicatorBoundingRect.size.width, self->_previewIndicatorBoundingRect.size.height];
    v12 = objc_loadWeakRetained(&self->_view);
    [(UIPreviewItemController *)self preparePreviewIndicatorViewInSourceView:v12 updateScreen:1];

    [viewCopy addSubview:self->_previewIndicatorView];
    presentationController = [viewControllerCopy presentationController];
    [presentationController setSourceView:self->_previewIndicatorView];

    presentationController2 = [viewControllerCopy presentationController];
    [(UIView *)self->_previewIndicatorView bounds];
    presentationController3 = presentationController2;
  }

  else
  {
    presentationController3 = [viewControllerCopy presentationController];
    presentationController2 = presentationController3;
    v15 = self->_previewIndicatorBoundingRect.origin.x;
    v16 = self->_previewIndicatorBoundingRect.origin.y;
    width = self->_previewIndicatorBoundingRect.size.width;
    height = self->_previewIndicatorBoundingRect.size.height;
  }

  [presentationController3 setSourceRect:{v15, v16, width, height}];
}

- (void)previewInteractionController:(id)controller didDismissViewController:(id)viewController committing:(BOOL)committing
{
  committingCopy = committing;
  viewControllerCopy = viewController;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_contentManagedByClient && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained _previewItemController:self didDismissPreview:viewControllerCopy committing:committingCopy];
  }

  [(UIPreviewItemController *)self stopInteraction];
  [(UIPreviewItemController *)self clearPreviewIndicator];
}

- (void)clearPreviewIndicator
{
  [(UIView *)self->_previewIndicatorView removeFromSuperview];
  previewIndicatorView = self->_previewIndicatorView;
  self->_previewIndicatorView = 0;

  [(UIView *)self->_previewIndicatorImageView removeFromSuperview];
  previewIndicatorImageView = self->_previewIndicatorImageView;
  self->_previewIndicatorImageView = 0;

  [(UIView *)self->_previewIndicatorSnapshotView removeFromSuperview];
  previewIndicatorSnapshotView = self->_previewIndicatorSnapshotView;
  self->_previewIndicatorSnapshotView = 0;

  v6 = *(MEMORY[0x1E695F050] + 16);
  self->_previewIndicatorBoundingRect.origin = *MEMORY[0x1E695F050];
  self->_previewIndicatorBoundingRect.size = v6;
}

- (void)preparePreviewIndicatorViewInSourceView:(id)view updateScreen:(BOOL)screen
{
  screenCopy = screen;
  viewCopy = view;
  window = [viewCopy window];
  window2 = [viewCopy window];
  [viewCopy convertRect:window2 toView:{self->_previewIndicatorBoundingRect.origin.x, self->_previewIndicatorBoundingRect.origin.y, self->_previewIndicatorBoundingRect.size.width, self->_previewIndicatorBoundingRect.size.height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = _UISnapshotViewRectAfterCommit(window, screenCopy, v10, v12, v14, v16);
  previewIndicatorSnapshotView = self->_previewIndicatorSnapshotView;
  self->_previewIndicatorSnapshotView = v17;

  [(UIView *)self->_previewIndicatorView insertSubview:self->_previewIndicatorSnapshotView atIndex:0];
  [(UIView *)self->_previewIndicatorView bounds];
  v19 = self->_previewIndicatorSnapshotView;

  [(UIView *)v19 setFrame:?];
}

- (void)setupPreviewIndicatorInSourceView:(id)view
{
  v47[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(UIPreviewItemController *)self clearPreviewIndicator];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained _presentationRectsForPreviewItemController:self];
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = MEMORY[0x1E696B098];
    [WeakRetained _presentationRectForPreviewItemController:self];
    v8 = [v7 valueWithCGRect:?];
    v47[0] = v8;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];

    if (!v6)
    {
      goto LABEL_25;
    }
  }

  if ([v6 count])
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v42 + 1) + 8 * i) CGRectValue];
          v48.origin.x = v14;
          v48.origin.y = v15;
          v48.size.width = v16;
          v48.size.height = v17;
          self->_previewIndicatorBoundingRect = CGRectUnion(self->_previewIndicatorBoundingRect, v48);
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v11);
    }

    v18 = objc_alloc_init(UIView);
    previewIndicatorView = self->_previewIndicatorView;
    self->_previewIndicatorView = v18;

    if (objc_opt_respondsToSelector())
    {
      v20 = [WeakRetained _presentationSnapshotForPreviewItemController:self];
      if (v20)
      {
        v21 = [[UIImageView alloc] initWithImage:v20];
        previewIndicatorImageView = self->_previewIndicatorImageView;
        self->_previewIndicatorImageView = v21;

        [(UIView *)self->_previewIndicatorView addSubview:self->_previewIndicatorImageView];
      }
    }

    window = [viewCopy window];
    if (window)
    {
      window2 = [viewCopy window];
      screen = [window2 screen];
      [screen scale];
      v27 = v26;
    }

    else
    {
      window2 = [objc_opt_self() mainScreen];
      [window2 scale];
      v27 = v28;
    }

    v29 = v27;
    v30 = (v29 * 5.0);
    PathWithShrinkWrappedRects = WebKitCreatePathWithShrinkWrappedRects();
    if (!PathWithShrinkWrappedRects)
    {
      PathWithShrinkWrappedRects = CGPathCreateWithRoundedRect(self->_previewIndicatorBoundingRect, v30, v30, 0);
    }

    width = self->_previewIndicatorBoundingRect.size.width;
    height = self->_previewIndicatorBoundingRect.size.height;
    v34 = 1.0;
    if (!self->_previewIndicatorUsesStandardAnimation)
    {
      [viewCopy convertRect:0 toView:{self->_previewIndicatorBoundingRect.origin.x, self->_previewIndicatorBoundingRect.origin.y, self->_previewIndicatorBoundingRect.size.width, self->_previewIndicatorBoundingRect.size.height}];
      width = v35;
      height = v36;
      v37 = v35 / self->_previewIndicatorBoundingRect.size.width;
      v34 = v37;
    }

    v38 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [v38 setPath:PathWithShrinkWrappedRects];
    CGPathRelease(PathWithShrinkWrappedRects);
    [v38 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    CATransform3DMakeScale(&v40, v34, v34, 1.0);
    CATransform3DTranslate(&v41, &v40, -self->_previewIndicatorBoundingRect.origin.x, -self->_previewIndicatorBoundingRect.origin.y, 0.0);
    v40 = v41;
    [v38 setTransform:&v40];
    layer = [(UIView *)self->_previewIndicatorView layer];
    [layer setMask:v38];

    [(UIView *)self->_previewIndicatorView setFrame:0.0, 0.0, width, height];
    [(UIView *)self->_previewIndicatorView bounds];
    [(UIImageView *)self->_previewIndicatorImageView setFrame:?];
  }

LABEL_25:
}

- (void)startInteraction
{
  if (self->_interactionInProgress)
  {
    NSLog(&cfstr_Uipreviewitemc.isa, a2);
    [(UIPreviewItemController *)self stopInteraction];
  }

  self->_interactionInProgress = 1;
  objc_storeStrong(&self->_strongSelf, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained _interactionStartedFromPreviewItemController:self];
  }
}

- (void)stopInteraction
{
  if (self->_interactionInProgress)
  {
    self->_interactionInProgress = 0;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _interactionStoppedFromPreviewItemController:self];
    }

    lookupItem = self->_lookupItem;
    self->_lookupItem = 0;

    strongSelf = self->_strongSelf;
    self->_strongSelf = 0;

    presentingViewController = self->_presentingViewController;
    self->_presentingViewController = 0;

    presentedViewController = self->_presentedViewController;
    self->_presentedViewController = 0;

    previewData = self->_previewData;
    self->_type = 0;
    self->_previewData = 0;
  }

  else
  {
    NSLog(&cfstr_Uipreviewitemc_0.isa, a2);
  }
}

- (UIPreviewItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end
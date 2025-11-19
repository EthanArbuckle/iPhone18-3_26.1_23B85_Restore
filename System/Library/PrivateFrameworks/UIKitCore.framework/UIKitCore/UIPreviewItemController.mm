@interface UIPreviewItemController
- (BOOL)_isMobileSafariRestricted;
- (BOOL)_shouldCancelPreviewWithNegativeFeedback;
- (UIPreviewItemController)initWithView:(id)a3;
- (UIPreviewItemDelegate)delegate;
- (UIView)view;
- (id)previewInteractionController:(id)a3 viewControllerForPreviewingAtPosition:(CGPoint)a4 inView:(id)a5 presentingViewController:(id *)a6;
- (id)previewViewControllerForPosition:(CGPoint)a3 inSourceView:(id)a4 documentProperties:(id)a5;
- (void)clearPreviewIndicator;
- (void)dealloc;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)preparePreviewIndicatorViewInSourceView:(id)a3 updateScreen:(BOOL)a4;
- (void)previewInteractionController:(id)a3 didDismissViewController:(id)a4 committing:(BOOL)a5;
- (void)previewInteractionController:(id)a3 interactionProgress:(id)a4 forRevealAtLocation:(CGPoint)a5 inSourceView:(id)a6 containerView:(id)a7;
- (void)previewInteractionController:(id)a3 performCommitForPreviewViewController:(id)a4 committedViewController:(id)a5;
- (void)previewInteractionController:(id)a3 performCustomCommitForPreviewViewController:(id)a4 completion:(id)a5;
- (void)previewInteractionController:(id)a3 willPresentViewController:(id)a4 forPosition:(CGPoint)a5 inSourceView:(id)a6;
- (void)setupPreviewIndicatorInSourceView:(id)a3;
- (void)startInteraction;
- (void)stopInteraction;
- (void)updatePreviewIndicatorAnimation:(id)a3;
@end

@implementation UIPreviewItemController

- (UIPreviewItemController)initWithView:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v21.receiver = self;
    v21.super_class = UIPreviewItemController;
    v5 = [(UIPreviewItemController *)&v21 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_view, v4);
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
      v9 = [(UIPreviewInteractionController *)v6->_previewInteractionController gestureRecognizers];
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
              objc_enumerationMutation(v9);
            }

            [v4 addGestureRecognizer:*(*(&v17 + 1) + 8 * i)];
          }

          v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v11);
      }

      v14 = [(UIPreviewInteractionController *)v6->_previewInteractionController presentationGestureRecognizer];
      if ([v14 _isGestureType:1] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v14 setDelay:0.13];
      }

      else
      {
        NSLog(&cfstr_WarningUiprevi.isa);
      }
    }

    self = v6;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(UIPreviewInteractionController *)self->_previewInteractionController gestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_view);
        [WeakRetained removeGestureRecognizer:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v4 = [v3 scheme];
    v5 = [v4 lowercaseString];
    if ([v5 isEqualToString:@"http"])
    {
    }

    else
    {
      v7 = [v3 scheme];
      v8 = [v7 lowercaseString];
      v9 = [v8 isEqualToString:@"https"];

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
      v14 = [v13 _tapticEngine];
      [v14 actuateFeedback:2];

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
  v3 = [v2 appState];
  v4 = [v3 isRestricted];

  return v4;
}

- (id)previewViewControllerForPosition:(CGPoint)a3 inSourceView:(id)a4 documentProperties:(id)a5
{
  y = a3.y;
  x = a3.x;
  v45[3] = *MEMORY[0x1E69E9840];
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![WeakRetained _interactionShouldBeginFromPreviewItemController:self forPosition:{x, y}])
  {
    v15 = 0;
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

    v15 = 0;
LABEL_8:
    self->_type = 0;
    goto LABEL_41;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [WeakRetained _presentedViewControllerForPreviewItemController:self];
    if (v16)
    {
      v15 = v16;
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
        [v8 addEntriesFromDictionary:v40];
      }
    }

    [(MLULookupItem *)self->_lookupItem setDocumentProperties:v8];
    if ([(MLULookupItem *)self->_lookupItem resolve])
    {
      v15 = [(MLULookupItem *)self->_lookupItem viewControllerToPresent];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  if (*p_type == 5)
  {
    v41 = [(NSDictionary *)self->_previewData objectForKeyedSubscript:@"UIPreviewDataAttachmentListIsContentManaged"];
    _UIShimSetIsContentManaged(v15, [v41 BOOLValue]);
  }

  if (!v15)
  {
    v43 = self->_lookupItem;
    self->_lookupItem = 0;

    v44 = self->_previewData;
    self->_previewData = 0;

    goto LABEL_8;
  }

LABEL_41:

  return v15;
}

- (void)previewInteractionController:(id)a3 performCommitForPreviewViewController:(id)a4 committedViewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_contentManagedByClient)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained _previewItemController:self commitPreview:v10];
    }

    [(UIPreviewItemController *)self stopInteraction];
  }

  else
  {
    lookupItem = self->_lookupItem;
    if (lookupItem)
    {
      v13 = [(MLULookupItem *)lookupItem commitType];
      if (v13 != 4)
      {
        if (v13 == 2)
        {
          presentingViewController = self->_presentingViewController;
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __118__UIPreviewItemController_previewInteractionController_performCommitForPreviewViewController_committedViewController___block_invoke;
          v15[3] = &unk_1E70F3590;
          v15[4] = self;
          [(UIViewController *)presentingViewController presentViewController:v10 animated:0 completion:v15];
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

- (id)previewInteractionController:(id)a3 viewControllerForPreviewingAtPosition:(CGPoint)a4 inView:(id)a5 presentingViewController:(id *)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a5;
  v11 = [(UIPreviewItemController *)self presentingViewController];
  if (!v11)
  {
    v12 = v10;
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        if (v14)
        {
          v15 = [v14 parentViewController];

          if (!v15)
          {
            break;
          }
        }

        v11 = [UIViewController viewControllerForView:v13];

        v16 = [v13 superview];

        v14 = v11;
        v13 = v16;
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      v11 = v14;
LABEL_10:
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = [v11 presentedViewController];

  if (v17)
  {

    v11 = 0;
  }

  if (a6)
  {
    v18 = v11;
    *a6 = v11;
  }

  if (v11)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v19 setObject:v11 forKeyedSubscript:@"Presenter"];
    v20 = [(UIPreviewItemController *)self presentationGestureRecognizer];
    [v19 setObject:v20 forKeyedSubscript:@"Gesture"];

    v21 = [(UIPreviewItemController *)self previewViewControllerForPosition:v10 inSourceView:v19 documentProperties:x, y];
    presentedViewController = self->_presentedViewController;
    self->_presentedViewController = v21;

    [v19 setObject:0 forKeyedSubscript:@"Gesture"];
    [v19 setObject:0 forKeyedSubscript:@"Presenter"];
    if (self->_presentedViewController)
    {
      objc_storeStrong(&self->_presentingViewController, v11);
    }
  }

  v23 = self->_presentedViewController;
  v24 = v23;

  return v23;
}

- (void)previewInteractionController:(id)a3 performCustomCommitForPreviewViewController:(id)a4 completion:(id)a5
{
  v7 = a5;
  lookupItem = self->_lookupItem;
  v9 = a4;
  v10 = [(UIPreviewItemController *)self presentingViewController];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __111__UIPreviewItemController_previewInteractionController_performCustomCommitForPreviewViewController_completion___block_invoke;
  v12[3] = &unk_1E70F4A50;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [(MLULookupItem *)lookupItem commitWithTransitionForPreviewViewController:v9 inViewController:v10 completion:v12];
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

- (void)previewInteractionController:(id)a3 interactionProgress:(id)a4 forRevealAtLocation:(CGPoint)a5 inSourceView:(id)a6 containerView:(id)a7
{
  v11 = a4;
  v9 = a7;
  if (!self->_previewIndicatorUsesStandardAnimation && self->_previewIndicatorView)
  {
    [(UIView *)self->_previewIndicatorImageView setAlpha:0.0];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [(UIPreviewItemController *)self preparePreviewIndicatorViewInSourceView:WeakRetained updateScreen:0];

    [v9 addSubview:self->_previewIndicatorView];
    [v11 addProgressObserver:self];
  }
}

- (void)interactionProgressDidUpdate:(id)a3
{
  [a3 percentComplete];
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
    v10 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v9 addToRunLoop:v10 forMode:*MEMORY[0x1E695D918]];

    self->_lastPreviewIndicatorAnimationTimestamp = CACurrentMediaTime();
  }
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  [(CADisplayLink *)self->_previewIndicatorDisplayLink invalidate:a3];
  previewIndicatorDisplayLink = self->_previewIndicatorDisplayLink;
  self->_previewIndicatorDisplayLink = 0;
}

- (void)updatePreviewIndicatorAnimation:(id)a3
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

- (void)previewInteractionController:(id)a3 willPresentViewController:(id)a4 forPosition:(CGPoint)a5 inSourceView:(id)a6
{
  y = a5.y;
  x = a5.x;
  v20 = a4;
  v10 = a6;
  [(UIPreviewItemController *)self startInteraction];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_contentManagedByClient && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained _previewItemController:self willPresentPreview:v20 forPosition:v10 inSourceView:{x, y}];
  }

  objc_opt_class();
  self->_previewIndicatorUsesStandardAnimation = objc_opt_isKindOfClass() & 1;
  [(UIPreviewItemController *)self setupPreviewIndicatorInSourceView:v10];
  if (self->_previewIndicatorUsesStandardAnimation)
  {
    [(UIView *)self->_previewIndicatorView setFrame:self->_previewIndicatorBoundingRect.origin.x, self->_previewIndicatorBoundingRect.origin.y, self->_previewIndicatorBoundingRect.size.width, self->_previewIndicatorBoundingRect.size.height];
    v12 = objc_loadWeakRetained(&self->_view);
    [(UIPreviewItemController *)self preparePreviewIndicatorViewInSourceView:v12 updateScreen:1];

    [v10 addSubview:self->_previewIndicatorView];
    v13 = [v20 presentationController];
    [v13 setSourceView:self->_previewIndicatorView];

    v14 = [v20 presentationController];
    [(UIView *)self->_previewIndicatorView bounds];
    v19 = v14;
  }

  else
  {
    v19 = [v20 presentationController];
    v14 = v19;
    v15 = self->_previewIndicatorBoundingRect.origin.x;
    v16 = self->_previewIndicatorBoundingRect.origin.y;
    width = self->_previewIndicatorBoundingRect.size.width;
    height = self->_previewIndicatorBoundingRect.size.height;
  }

  [v19 setSourceRect:{v15, v16, width, height}];
}

- (void)previewInteractionController:(id)a3 didDismissViewController:(id)a4 committing:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_contentManagedByClient && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained _previewItemController:self didDismissPreview:v8 committing:v5];
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

- (void)preparePreviewIndicatorViewInSourceView:(id)a3 updateScreen:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 window];
  v8 = [v6 window];
  [v6 convertRect:v8 toView:{self->_previewIndicatorBoundingRect.origin.x, self->_previewIndicatorBoundingRect.origin.y, self->_previewIndicatorBoundingRect.size.width, self->_previewIndicatorBoundingRect.size.height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = _UISnapshotViewRectAfterCommit(v7, v4, v10, v12, v14, v16);
  previewIndicatorSnapshotView = self->_previewIndicatorSnapshotView;
  self->_previewIndicatorSnapshotView = v17;

  [(UIView *)self->_previewIndicatorView insertSubview:self->_previewIndicatorSnapshotView atIndex:0];
  [(UIView *)self->_previewIndicatorView bounds];
  v19 = self->_previewIndicatorSnapshotView;

  [(UIView *)v19 setFrame:?];
}

- (void)setupPreviewIndicatorInSourceView:(id)a3
{
  v47[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v23 = [v4 window];
    if (v23)
    {
      v24 = [v4 window];
      v25 = [v24 screen];
      [v25 scale];
      v27 = v26;
    }

    else
    {
      v24 = [objc_opt_self() mainScreen];
      [v24 scale];
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
      [v4 convertRect:0 toView:{self->_previewIndicatorBoundingRect.origin.x, self->_previewIndicatorBoundingRect.origin.y, self->_previewIndicatorBoundingRect.size.width, self->_previewIndicatorBoundingRect.size.height}];
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
    v39 = [(UIView *)self->_previewIndicatorView layer];
    [v39 setMask:v38];

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
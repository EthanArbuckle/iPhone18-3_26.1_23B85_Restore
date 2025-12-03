@interface PXTranscriptBubbleViewController
- (BOOL)_requiresResizeForCurrentSize:(CGSize)size;
- (CGSize)_contentViewSizeThatFits:(CGSize)fits;
- (CGSize)contentSizeThatFits:(CGSize)fits;
- (PXTranscriptBubbleDelegate)delegate;
- (void)_resizeTimeoutForRequestID:(int64_t)d;
- (void)_scheduleContentViewUpdate;
- (void)_switchToPendingTargetViewIfNecessary;
- (void)setTargetContentView:(id)view;
- (void)transitionToContentView:(id)view;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation PXTranscriptBubbleViewController

- (PXTranscriptBubbleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PXTranscriptBubbleViewController;
  [(PXTranscriptBubbleViewController *)&v6 viewDidLoad];
  contentView = [(PXTranscriptBubbleViewController *)self contentView];

  if (contentView)
  {
    view = [(PXTranscriptBubbleViewController *)self view];
    contentView2 = [(PXTranscriptBubbleViewController *)self contentView];
    [view addSubview:contentView2];
  }
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = PXTranscriptBubbleViewController;
  [(PXTranscriptBubbleViewController *)&v7 viewDidLayoutSubviews];
  contentView = [(PXTranscriptBubbleViewController *)self contentView];
  if (contentView)
  {
    isReadyForDisplay = self->_isReadyForDisplay;

    if (!isReadyForDisplay)
    {
      px_screen = [(PXTranscriptBubbleViewController *)self px_screen];
      [px_screen bounds];

      view = [(PXTranscriptBubbleViewController *)self view];
      [view bounds];

      PXSizeApproximatelyEqualToSize();
    }
  }
}

void __57__PXTranscriptBubbleViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 1024) = 1;
  v2 = [*(a1 + 32) delegate];
  [v2 bubbleDidBecomeReadyForDisplay:*(a1 + 32)];

  if (*(a1 + 40) == 1)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Requesting resize on initial display for %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__PXTranscriptBubbleViewController_viewDidLayoutSubviews__block_invoke_9;
    block[3] = &unk_1E774C648;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __57__PXTranscriptBubbleViewController_viewDidLayoutSubviews__block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 requestResizeForBubble:*(a1 + 32)];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = PXTranscriptBubbleViewController;
  [(PXTranscriptBubbleViewController *)&v13 viewWillLayoutSubviews];
  if (!self->_transitionInProgress)
  {
    view = [(PXTranscriptBubbleViewController *)self view];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    contentView = [(PXTranscriptBubbleViewController *)self contentView];
    [contentView setFrame:{v5, v7, v9, v11}];
  }
}

- (void)_switchToPendingTargetViewIfNecessary
{
  targetContentView = [(PXTranscriptBubbleViewController *)self targetContentView];
  if (targetContentView)
  {
    contentView = [(PXTranscriptBubbleViewController *)self contentView];
    [(PXTranscriptBubbleViewController *)self setTargetContentView:0];
    [targetContentView setFrame:{0.0, 0.0, self->_lastRequestedSize.width, self->_lastRequestedSize.height}];
    [targetContentView setAlpha:0.0];
    view = [(PXTranscriptBubbleViewController *)self view];
    [view addSubview:targetContentView];

    self->_transitionInProgress = 1;
    v6 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__PXTranscriptBubbleViewController__switchToPendingTargetViewIfNecessary__block_invoke;
    v11[3] = &unk_1E774C620;
    v12 = contentView;
    v13 = targetContentView;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__PXTranscriptBubbleViewController__switchToPendingTargetViewIfNecessary__block_invoke_2;
    v8[3] = &unk_1E7747D28;
    v8[4] = self;
    v9 = v13;
    v10 = v12;
    v7 = v12;
    [v6 animateWithDuration:v11 animations:v8 completion:0.8];
  }
}

uint64_t __73__PXTranscriptBubbleViewController__switchToPendingTargetViewIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __73__PXTranscriptBubbleViewController__switchToPendingTargetViewIfNecessary__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 992) = 0;
  [*(a1 + 32) setContentView:*(a1 + 40)];
  [*(a1 + 48) removeFromSuperview];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "PXTranscriptBubbleViewController %@: Transitioned to new contentView", &v4, 0xCu);
  }
}

- (void)_resizeTimeoutForRequestID:(int64_t)d
{
  if (self->_lastResizeRequestID == d)
  {
    v9 = v3;
    v10 = v4;
    targetContentView = [(PXTranscriptBubbleViewController *)self targetContentView];

    if (targetContentView)
    {
      v7 = PLUIGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "PXTranscriptBubbleViewController: Never received size update after requestResize. Forcing UI update. UI may appear truncated", v8, 2u);
      }

      [(PXTranscriptBubbleViewController *)self _switchToPendingTargetViewIfNecessary];
    }
  }
}

- (void)_scheduleContentViewUpdate
{
  v20 = *MEMORY[0x1E69E9840];
  targetContentView = [(PXTranscriptBubbleViewController *)self targetContentView];

  if (targetContentView)
  {
    view = [(PXTranscriptBubbleViewController *)self view];
    [view bounds];
    v6 = v5;
    v8 = v7;

    v9 = [(PXTranscriptBubbleViewController *)self _requiresResizeForCurrentSize:v6, v8];
    v10 = PLUIGetLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Requesting resize on content view change for %@", buf, 0xCu);
      }

      v12 = (self->_lastResizeRequestID + 1);
      self->_lastResizeRequestID = v12;
      delegate = [(PXTranscriptBubbleViewController *)self delegate];
      [delegate requestResizeForBubble:self];

      objc_initWeak(buf, self);
      v14 = dispatch_time(0, 3000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__PXTranscriptBubbleViewController__scheduleContentViewUpdate__block_invoke;
      block[3] = &unk_1E7749808;
      objc_copyWeak(v17, buf);
      v17[1] = v12;
      dispatch_after(v14, MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(v17);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "Skipping resize on content view change for %@", buf, 0xCu);
      }

      self->_lastRequestedSize.width = v6;
      self->_lastRequestedSize.height = v8;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __62__PXTranscriptBubbleViewController__scheduleContentViewUpdate__block_invoke_5;
      v15[3] = &unk_1E774C648;
      v15[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], v15);
    }
  }
}

void __62__PXTranscriptBubbleViewController__scheduleContentViewUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resizeTimeoutForRequestID:*(a1 + 40)];
}

- (void)transitionToContentView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    targetContentView = [(PXTranscriptBubbleViewController *)self targetContentView];

    if (targetContentView)
    {
      v6 = PLUIGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "PXTranscriptBubbleViewController: attempting to transition to a new target view while waiting on a transition. This likely indicates a bug or will lead to visual glitches", buf, 2u);
      }
    }

    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "PXTranscriptBubbleViewController: Transitioning to new content view", v10, 2u);
    }

    contentView = [(PXTranscriptBubbleViewController *)self contentView];

    if (contentView)
    {
      [(PXTranscriptBubbleViewController *)self setTargetContentView:viewCopy];
    }

    else
    {
      [(PXTranscriptBubbleViewController *)self setContentView:viewCopy];
      viewIfLoaded = [(PXTranscriptBubbleViewController *)self viewIfLoaded];
      [viewIfLoaded addSubview:viewCopy];
    }
  }
}

- (void)setTargetContentView:(id)view
{
  viewCopy = view;
  if (self->_targetContentView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_targetContentView, view);
    [(PXTranscriptBubbleViewController *)self _scheduleContentViewUpdate];
    viewCopy = v6;
  }
}

- (BOOL)_requiresResizeForCurrentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x1E69E9840];
  [(PXTranscriptBubbleViewController *)self _contentViewSizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v10 = fmax(vabdd_f64(v8, height), vabdd_f64(v6, width)) > 10.0;
  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (v10)
    {
      v12 = @"Wants resize";
    }

    else
    {
      v12 = @"Skipping resize";
    }

    v25.width = width;
    v25.height = height;
    v13 = NSStringFromCGSize(v25);
    v26.width = v7;
    v26.height = v9;
    v14 = NSStringFromCGSize(v26);
    v16 = 138413058;
    v17 = v12;
    v18 = 2112;
    selfCopy = self;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "%@ for %@. Current size: %@. Target size: %@", &v16, 0x2Au);
  }

  return v10;
}

- (CGSize)_contentViewSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  targetContentView = [(PXTranscriptBubbleViewController *)self targetContentView];

  if (targetContentView)
  {
    targetContentView2 = [(PXTranscriptBubbleViewController *)self targetContentView];
LABEL_5:
    v9 = targetContentView2;
    [targetContentView2 sizeThatFits:{width, height}];
    v11 = v10;
    v13 = v12;

    v14 = v11;
    v15 = v13;
    goto LABEL_9;
  }

  contentView = [(PXTranscriptBubbleViewController *)self contentView];

  if (contentView)
  {
    targetContentView2 = [(PXTranscriptBubbleViewController *)self contentView];
    goto LABEL_5;
  }

  v16 = PLUIGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17[0] = 0;
    _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Unexpected request for transcript bubble content size with no view", v17, 2u);
  }

  [(PXTranscriptBubbleViewController *)self workaroundSizeForSize:width, height];
LABEL_9:
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)contentSizeThatFits:(CGSize)fits
{
  [(PXTranscriptBubbleViewController *)self _contentViewSizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  self->_lastRequestedSize.width = v4;
  self->_lastRequestedSize.height = v6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXTranscriptBubbleViewController_contentSizeThatFits___block_invoke;
  block[3] = &unk_1E7745A10;
  *&block[5] = v4;
  *&block[6] = v6;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

uint64_t __56__PXTranscriptBubbleViewController_contentSizeThatFits___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLSharingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromCGSize(*(a1 + 40));
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_DEFAULT, "Provided Messages with new size %@. Updating content view", &v5, 0xCu);
  }

  return [*(a1 + 32) _switchToPendingTargetViewIfNecessary];
}

@end
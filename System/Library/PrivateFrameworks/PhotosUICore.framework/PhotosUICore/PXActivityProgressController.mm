@interface PXActivityProgressController
- (BOOL)isCancelled;
- (PXActivityProgressController)init;
- (UIViewController)presentingViewController;
- (UIWindow)window;
- (id)_newProgressContainerView;
- (void)_cancel;
- (void)_didFinishHiding;
- (void)_updateFractionCompletedFromProgress;
- (void)_updatePrimaryText;
- (void)_updateSecondaryText;
- (void)dealloc;
- (void)handleShowingProgressView;
- (void)hideAnimated:(BOOL)animated allowDelay:(BOOL)delay;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setFractionCompleted:(double)completed;
- (void)setMessage:(id)message;
- (void)setProgress:(id)progress;
- (void)setShouldUseProgressText:(BOOL)text;
- (void)setTitle:(id)title;
- (void)showAnimated:(BOOL)animated allowDelay:(BOOL)delay;
@end

@implementation PXActivityProgressController

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (UIWindow)window
{
  WeakRetained = objc_loadWeakRetained(&self->_window);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (PXActivityProgressControllerProgressObserverContext == context)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __79__PXActivityProgressController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v16 = &unk_1E774C620;
    v17 = pathCopy;
    selfCopy = self;
    px_dispatch_on_main_queue();
  }

  v12.receiver = self;
  v12.super_class = PXActivityProgressController;
  [(PXActivityProgressController *)&v12 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
}

void __79__PXActivityProgressController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = NSStringFromSelector(sel_fractionCompleted);
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v4 = *(a1 + 40);

    [v4 _updateFractionCompletedFromProgress];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = NSStringFromSelector(sel_localizedDescription);
    LODWORD(v5) = [v5 isEqualToString:v6];

    if (v5)
    {
      v7 = *(a1 + 40);

      [v7 _updatePrimaryText];
    }

    else
    {
      v8 = *(a1 + 32);
      v9 = NSStringFromSelector(sel_localizedAdditionalDescription);
      LODWORD(v8) = [v8 isEqualToString:v9];

      if (v8)
      {
        v10 = *(a1 + 40);

        [v10 _updateSecondaryText];
      }
    }
  }
}

- (void)_didFinishHiding
{
  [(UIView *)self->_containerView removeFromSuperview];
  *&self->_didShow = 0;
  progressViewController = self->_progressViewController;

  [(PXActivityProgressViewController *)progressViewController reset];
}

- (void)hideAnimated:(BOOL)animated allowDelay:(BOOL)delay
{
  if (self->_didShow)
  {
    v14[6] = v7;
    v14[7] = v6;
    v14[10] = v4;
    v14[11] = v5;
    if (!self->_didHide)
    {
      animatedCopy = animated;
      self->_didHide = 1;
      if (delay && self->_whenDidShow > 0.0)
      {
        v10 = CFAbsoluteTimeGetCurrent() - self->_whenDidShow;
        if (v10 >= 1.0)
        {
          v11 = 0;
        }

        else
        {
          v11 = ((1.0 - v10) * 1000000000.0);
        }
      }

      else
      {
        v11 = 0;
      }

      if (animatedCopy)
      {
        v12 = 0.3;
      }

      else
      {
        v12 = 0.0;
      }

      v13 = dispatch_time(0, v11);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __56__PXActivityProgressController_hideAnimated_allowDelay___block_invoke;
      v14[3] = &unk_1E77498A0;
      v14[4] = self;
      *&v14[5] = v12;
      dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
    }
  }
}

void __56__PXActivityProgressController_hideAnimated_allowDelay___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = MEMORY[0x1E69DD250];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__PXActivityProgressController_hideAnimated_allowDelay___block_invoke_2;
  v6[3] = &unk_1E774C648;
  v6[4] = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PXActivityProgressController_hideAnimated_allowDelay___block_invoke_3;
  v4[3] = &unk_1E7747EB0;
  objc_copyWeak(&v5, &location);
  [v2 animateWithDuration:v6 animations:v4 completion:v3];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__PXActivityProgressController_hideAnimated_allowDelay___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _didFinishHiding];
}

- (void)showAnimated:(BOOL)animated allowDelay:(BOOL)delay
{
  if (!self->_didShow && !self->_didHide)
  {
    delayCopy = delay;
    animatedCopy = animated;
    self->_didShow = 1;
    window = [(PXActivityProgressController *)self window];
    v8 = window;
    if (window)
    {
      px_firstKeyWindow = window;
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
    }

    [px_firstKeyWindow bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v11, v13, v15, v17}];
    containerView = self->_containerView;
    self->_containerView = v19;

    [(UIView *)self->_containerView setAutoresizingMask:18];
    [(UIView *)self->_containerView setAlpha:1.0];
    [px_firstKeyWindow addSubview:self->_containerView];
    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v14, v16, v18}];
    dimmingView = self->_dimmingView;
    self->_dimmingView = v21;

    [(UIView *)self->_dimmingView setAutoresizingMask:18];
    v23 = 0.0;
    [(UIView *)self->_dimmingView setAlpha:0.0];
    v24 = self->_dimmingView;
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v24 setBackgroundColor:blackColor];

    [(UIView *)self->_containerView addSubview:self->_dimmingView];
    if (animatedCopy)
    {
      v23 = 0.3;
    }

    if (delayCopy)
    {
      v26 = 1000000000;
    }

    else
    {
      v26 = 0;
    }

    v27 = dispatch_time(0, v26);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __56__PXActivityProgressController_showAnimated_allowDelay___block_invoke;
    v28[3] = &unk_1E77498A0;
    v28[4] = self;
    *&v28[5] = v23;
    dispatch_after(v27, MEMORY[0x1E69E96A0], v28);
  }
}

void __56__PXActivityProgressController_showAnimated_allowDelay___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 57) & 1) == 0)
  {
    *(*(a1 + 32) + 48) = CFAbsoluteTimeGetCurrent();
    v2 = [*(a1 + 32) _newProgressContainerView];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    [*(*(a1 + 32) + 40) setAlpha:0.0];
    [*(*(a1 + 32) + 24) addSubview:*(*(a1 + 32) + 40)];
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E696ACD8] constraintWithItem:*(*(a1 + 32) + 24) attribute:9 relatedBy:0 toItem:*(*(a1 + 32) + 40) attribute:9 multiplier:1.0 constant:0.0];
    [v5 addObject:v6];

    v7 = [MEMORY[0x1E696ACD8] constraintWithItem:*(*(a1 + 32) + 24) attribute:10 relatedBy:0 toItem:*(*(a1 + 32) + 40) attribute:10 multiplier:1.0 constant:0.0];
    [v5 addObject:v7];

    [*(*(a1 + 32) + 24) addConstraints:v5];
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__PXActivityProgressController_showAnimated_allowDelay___block_invoke_2;
    v9[3] = &unk_1E774C648;
    v9[4] = *(a1 + 32);
    [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8];
  }
}

uint64_t __56__PXActivityProgressController_showAnimated_allowDelay___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAlpha:0.5];
  v2 = *(*(a1 + 32) + 40);

  return [v2 setAlpha:1.0];
}

- (void)handleShowingProgressView
{
  if (!self->_didHide)
  {
    self->_whenDidShow = CFAbsoluteTimeGetCurrent();
    _newProgressContainerView = [(PXActivityProgressController *)self _newProgressContainerView];
    progressContainerView = self->_progressContainerView;
    self->_progressContainerView = _newProgressContainerView;

    [(UIView *)self->_progressContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
    [WeakRetained presentViewController:self->_alertController animated:1 completion:0];
  }
}

- (void)_cancel
{
  cancellationHandler = [(PXActivityProgressController *)self cancellationHandler];
  [(PXActivityProgressController *)self setCancellationHandler:0];
  if (cancellationHandler)
  {
    cancellationHandler[2](cancellationHandler);
  }

  if ([(PXActivityProgressController *)self shouldAutoDisplay])
  {
    [(PXActivityProgressController *)self hideAnimated:1 allowDelay:1];
  }
}

- (id)_newProgressContainerView
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:1];
  objc_storeStrong(&self->_alertController, v3);
  objc_initWeak(&location, self);
  v4 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __57__PXActivityProgressController__newProgressContainerView__block_invoke;
  v10 = &unk_1E774C318;
  objc_copyWeak(&v11, &location);
  [v3 _addActionWithTitle:v4 style:1 handler:&v7 shouldDismissHandler:&__block_literal_global_212432];

  [v3 setContentViewController:{self->_progressViewController, v7, v8, v9, v10}];
  view = [v3 view];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return view;
}

void __57__PXActivityProgressController__newProgressContainerView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

- (void)_updateSecondaryText
{
  if ([(PXActivityProgressController *)self shouldUseProgressText])
  {
    progress = [(PXActivityProgressController *)self progress];
    localizedAdditionalDescription = [progress localizedAdditionalDescription];
    [(PXActivityProgressViewController *)self->_progressViewController setSecondaryText:localizedAdditionalDescription];
  }

  else
  {
    progress = [(PXActivityProgressController *)self message];
    [(PXActivityProgressViewController *)self->_progressViewController setSecondaryText:?];
  }
}

- (void)_updatePrimaryText
{
  if ([(PXActivityProgressController *)self shouldUseProgressText])
  {
    progress = [(PXActivityProgressController *)self progress];
    localizedDescription = [progress localizedDescription];
    [(PXActivityProgressViewController *)self->_progressViewController setPrimaryText:localizedDescription];
  }

  else
  {
    progress = [(PXActivityProgressController *)self title];
    [(PXActivityProgressViewController *)self->_progressViewController setPrimaryText:?];
  }
}

- (void)setShouldUseProgressText:(BOOL)text
{
  if (self->_shouldUseProgressText != text)
  {
    self->_shouldUseProgressText = text;
    [(PXActivityProgressController *)self _updatePrimaryText];

    [(PXActivityProgressController *)self _updateSecondaryText];
  }
}

- (BOOL)isCancelled
{
  cancellationHandler = [(PXActivityProgressController *)self cancellationHandler];
  v3 = cancellationHandler == 0;

  return v3;
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  v5 = self->_message;
  v6 = v5;
  if (v5 == messageCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_message, message);
      [(PXActivityProgressController *)self _updateSecondaryText];
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = self->_title;
  v6 = v5;
  if (v5 == titleCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_title, title);
      [(PXActivityProgressController *)self _updatePrimaryText];
    }
  }
}

- (void)setFractionCompleted:(double)completed
{
  [(PXActivityProgressViewController *)self->_progressViewController setFractionCompleted:?];
  if ([(PXActivityProgressController *)self shouldAutoDisplay])
  {
    v5 = completed > 0.0 && completed < 1.0;
    if (v5 && ![(PXActivityProgressController *)self isCancelled])
    {

      [(PXActivityProgressController *)self showAnimated:1 allowDelay:1];
    }

    else
    {

      [(PXActivityProgressController *)self hideAnimated:1 allowDelay:1];
    }
  }
}

- (void)_updateFractionCompletedFromProgress
{
  progress = [(PXActivityProgressController *)self progress];
  [progress fractionCompleted];
  [(PXActivityProgressController *)self setFractionCompleted:?];
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  progress = self->_progress;
  if (progress != progressCopy)
  {
    v7 = progressCopy;
    [(NSProgress *)progress removeObserver:self forKeyPath:@"fractionCompleted" context:PXActivityProgressControllerProgressObserverContext];
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"localizedDescription" context:PXActivityProgressControllerProgressObserverContext];
    [(NSProgress *)self->_progress removeObserver:self forKeyPath:@"localizedAdditionalDescription" context:PXActivityProgressControllerProgressObserverContext];
    objc_storeStrong(&self->_progress, progress);
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"fractionCompleted" options:4 context:PXActivityProgressControllerProgressObserverContext];
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"localizedDescription" options:4 context:PXActivityProgressControllerProgressObserverContext];
    [(NSProgress *)self->_progress addObserver:self forKeyPath:@"localizedAdditionalDescription" options:4 context:PXActivityProgressControllerProgressObserverContext];
    progressCopy = v7;
  }
}

- (void)dealloc
{
  [(PXActivityProgressController *)self setProgress:0];
  v3.receiver = self;
  v3.super_class = PXActivityProgressController;
  [(PXActivityProgressController *)&v3 dealloc];
}

- (PXActivityProgressController)init
{
  v6.receiver = self;
  v6.super_class = PXActivityProgressController;
  v2 = [(PXActivityProgressController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXActivityProgressViewController);
    progressViewController = v2->_progressViewController;
    v2->_progressViewController = v3;
  }

  return v2;
}

@end
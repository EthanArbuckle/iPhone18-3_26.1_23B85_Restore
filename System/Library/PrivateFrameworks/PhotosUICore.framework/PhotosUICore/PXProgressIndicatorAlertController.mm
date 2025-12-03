@interface PXProgressIndicatorAlertController
+ (id)beginShowingModalProgressWithConfiguration:(id)configuration;
- (PXProgressIndicatorAlertController)init;
- (void)_dismissAlert:(id)alert;
- (void)_presentAlert;
- (void)_startShowingProgress;
- (void)dealloc;
- (void)stopShowing:(id)showing;
@end

@implementation PXProgressIndicatorAlertController

- (void)_dismissAlert:(id)alert
{
  v11 = *MEMORY[0x1E69E9840];
  _Dismiss(self->_alertController, self->_window, alert);
  alertController = self->_alertController;
  self->_alertController = 0;

  window = self->_window;
  self->_window = 0;

  v6 = PLUIGetLog();
  v7 = os_signpost_id_make_with_pointer(v6, self);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      v9 = 134217984;
      selfCopy = self;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXProgressIndicatorAlertControllerShowing", "Context=%{signpost.telemetry:string2}lu ", &v9, 0xCu);
    }
  }
}

- (void)_presentAlert
{
  if (!self->_isCanceled)
  {
    date = [MEMORY[0x1E695DF00] date];
    alertPresentedDate = self->_alertPresentedDate;
    self->_alertPresentedDate = date;

    v22 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    [v6 setAutoresizingMask:18];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    view = [v22 view];
    [view setBounds:{v8, v10, v12, v14}];

    view2 = [v22 view];
    [view2 addSubview:v6];

    [v6 startAnimating];
    v17 = MEMORY[0x1E69DC650];
    title = [(PXProgressIndicatorAlertController *)self title];
    v19 = [v17 alertControllerWithTitle:title message:0 preferredStyle:1];
    alertController = self->_alertController;
    self->_alertController = v19;

    [(UIAlertController *)self->_alertController setContentViewController:v22];
    rootViewController = [(UIWindow *)self->_window rootViewController];
    [rootViewController px_presentOverTopmostPresentedViewController:self->_alertController animated:1 completion:0];
  }
}

- (void)_startShowingProgress
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  windows = [mEMORY[0x1E69DC668] windows];
  firstObject = [windows firstObject];
  window = self->_window;
  self->_window = firstObject;

  [(UIWindow *)self->_window setUserInteractionEnabled:0];
  [(PXProgressIndicatorAlertController *)self delay];
  v8 = v7;
  v9 = PLUIGetLog();
  v10 = os_signpost_id_make_with_pointer(v9, self);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      *buf = 134218240;
      selfCopy = self;
      v17 = 2048;
      v18 = v8;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PXProgressIndicatorAlertControllerShowing", "Context=%{signpost.telemetry:string2}lu delay:%.2f", buf, 0x16u);
    }
  }

  if (v8 <= 0.0)
  {
    [(PXProgressIndicatorAlertController *)self _presentAlert];
  }

  else
  {
    objc_initWeak(buf, self);
    v12 = dispatch_time(0, (v8 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__PXProgressIndicatorAlertController__startShowingProgress__block_invoke;
    block[3] = &unk_1E774C318;
    objc_copyWeak(&v14, buf);
    dispatch_after(v12, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __59__PXProgressIndicatorAlertController__startShowingProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAlert];
}

- (void)dealloc
{
  v3 = self->_alertController;
  v4 = self->_window;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __45__PXProgressIndicatorAlertController_dealloc__block_invoke;
  v10 = &unk_1E774C620;
  v11 = v3;
  v12 = v4;
  v5 = v4;
  v6 = v3;
  px_dispatch_on_main_queue();
}

- (void)stopShowing:(id)showing
{
  showingCopy = showing;
  if (!self->_isCanceled)
  {
    self->_isCanceled = 1;
    showingCopy;
    px_dispatch_on_main_queue();
  }
}

void __50__PXProgressIndicatorAlertController_stopShowing___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:*(*(a1 + 32) + 16)];
    v5 = v4;

    if (v5 > 0.0 && v5 < 0.8)
    {
      v6 = dispatch_time(0, ((0.8 - v5) * 1000000000.0));
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__PXProgressIndicatorAlertController_stopShowing___block_invoke_2;
      v9[3] = &unk_1E774C2F0;
      v7 = *(a1 + 40);
      v9[4] = *(a1 + 32);
      v10 = v7;
      dispatch_after(v6, MEMORY[0x1E69E96A0], v9);

      return;
    }

    v2 = *(a1 + 32);
  }

  v8 = *(a1 + 40);

  [v2 _dismissAlert:v8];
}

- (PXProgressIndicatorAlertController)init
{
  v3.receiver = self;
  v3.super_class = PXProgressIndicatorAlertController;
  result = [(PXProgressIndicatorAlertController *)&v3 init];
  if (result)
  {
    *&result->_delay = xmmword_1A5381320;
  }

  return result;
}

+ (id)beginShowingModalProgressWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = objc_alloc_init(PXProgressIndicatorAlertController);
  if (configurationCopy)
  {
    configurationCopy[2](configurationCopy, v4);
  }

  [(PXProgressIndicatorAlertController *)v4 _startShowingProgress];

  return v4;
}

@end
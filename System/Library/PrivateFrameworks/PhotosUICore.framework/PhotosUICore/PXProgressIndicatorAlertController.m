@interface PXProgressIndicatorAlertController
+ (id)beginShowingModalProgressWithConfiguration:(id)a3;
- (PXProgressIndicatorAlertController)init;
- (void)_dismissAlert:(id)a3;
- (void)_presentAlert;
- (void)_startShowingProgress;
- (void)dealloc;
- (void)stopShowing:(id)a3;
@end

@implementation PXProgressIndicatorAlertController

- (void)_dismissAlert:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  _Dismiss(self->_alertController, self->_window, a3);
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
      v10 = self;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PXProgressIndicatorAlertControllerShowing", "Context=%{signpost.telemetry:string2}lu ", &v9, 0xCu);
    }
  }
}

- (void)_presentAlert
{
  if (!self->_isCanceled)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    alertPresentedDate = self->_alertPresentedDate;
    self->_alertPresentedDate = v4;

    v22 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    [v6 setAutoresizingMask:18];
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v22 view];
    [v15 setBounds:{v8, v10, v12, v14}];

    v16 = [v22 view];
    [v16 addSubview:v6];

    [v6 startAnimating];
    v17 = MEMORY[0x1E69DC650];
    v18 = [(PXProgressIndicatorAlertController *)self title];
    v19 = [v17 alertControllerWithTitle:v18 message:0 preferredStyle:1];
    alertController = self->_alertController;
    self->_alertController = v19;

    [(UIAlertController *)self->_alertController setContentViewController:v22];
    v21 = [(UIWindow *)self->_window rootViewController];
    [v21 px_presentOverTopmostPresentedViewController:self->_alertController animated:1 completion:0];
  }
}

- (void)_startShowingProgress
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 windows];
  v5 = [v4 firstObject];
  window = self->_window;
  self->_window = v5;

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
      v16 = self;
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

- (void)stopShowing:(id)a3
{
  v4 = a3;
  if (!self->_isCanceled)
  {
    self->_isCanceled = 1;
    v4;
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

+ (id)beginShowingModalProgressWithConfiguration:(id)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v4 = objc_alloc_init(PXProgressIndicatorAlertController);
  if (v3)
  {
    v3[2](v3, v4);
  }

  [(PXProgressIndicatorAlertController *)v4 _startShowingProgress];

  return v4;
}

@end
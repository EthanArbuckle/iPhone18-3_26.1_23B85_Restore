@interface SSScreenshotsWindow
- (BOOL)hasRemoteViewController;
- (SSScreenshotsWindow)init;
- (SSScreenshotsWindowDelegate)delegate;
- (id)_hostViewControllerIfExists;
- (void)_deviceBacklightChanged:(unint64_t)changed;
- (void)_deviceLockStateChanged:(unint64_t)changed;
- (void)_dismiss;
- (void)_prepareRemoteViewControllerWithCompletionHandler:(id)handler;
- (void)activateRemoteViewControllerIfAppropriate;
- (void)activeInterfaceOrientationObserver:(id)observer observedChangeToInterfaceOrientation:(int64_t)orientation withDuration:(double)duration;
- (void)dealloc;
@end

@implementation SSScreenshotsWindow

void __27__SSScreenshotsWindow_init__block_invoke_2(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 952), &state64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SSScreenshotsWindow_init__block_invoke_3;
  block[3] = &unk_1E8590588;
  objc_copyWeak(v3, (a1 + 40));
  v3[1] = state64;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v3);
}

- (SSScreenshotsWindow)init
{
  v21.receiver = self;
  v21.super_class = SSScreenshotsWindow;
  v2 = [(SSScreenshotsWindow *)&v21 init];
  [(SSScreenshotsWindow *)v2 setHidden:0];
  layer = [(SSScreenshotsWindow *)v2 layer];
  [layer setDisableUpdateMask:2];

  [(SSScreenshotsWindow *)v2 setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(SSScreenshotsWindow *)v2 setBackgroundColor:clearColor];

  [(SSScreenshotsWindow *)v2 setWindowLevel:*MEMORY[0x1E69DE398]];
  [(SSScreenshotsWindow *)v2 _setWindowControlsStatusBarOrientation:0];
  v5 = objc_alloc_init(SSScreenshotsWindowRootViewController);
  root = v2->_root;
  v2->_root = v5;

  [(SSScreenshotsWindow *)v2 setRootViewController:v2->_root];
  v7 = objc_alloc_init(SSActiveInterfaceOrientationObserver);
  activeInterfaceOrientationObserver = v2->_activeInterfaceOrientationObserver;
  v2->_activeInterfaceOrientationObserver = v7;

  [(SSActiveInterfaceOrientationObserver *)v2->_activeInterfaceOrientationObserver setDelegate:v2];
  [(SSActiveInterfaceOrientationObserver *)v2->_activeInterfaceOrientationObserver beginObserving];
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v10 = dispatch_queue_create("com.apple.screenshotservices.notifyqueue", v9);
  notifyQueue = v2->_notifyQueue;
  v2->_notifyQueue = v10;

  objc_initWeak(&location, v2);
  v12 = v2->_notifyQueue;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __27__SSScreenshotsWindow_init__block_invoke;
  v18 = &unk_1E85905D8;
  objc_copyWeak(&v19, &location);
  dispatch_async(v12, &v15);
  purpleColor = [MEMORY[0x1E69DC888] purpleColor];
  SSApplyDebuggingCustomizationsToViewIfAppropriate(v2, purpleColor, 10.0);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v2;
}

void __27__SSScreenshotsWindow_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 238) = -1;
    v4 = *MEMORY[0x1E69D4568];
    v5 = WeakRetained[118];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__SSScreenshotsWindow_init__block_invoke_2;
    handler[3] = &unk_1E85905B0;
    v6 = WeakRetained;
    v12 = v6;
    objc_copyWeak(&v13, (a1 + 32));
    notify_register_dispatch(v4, v3 + 238, v5, handler);
    v6[239] = -1;
    v7 = v3[118];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __27__SSScreenshotsWindow_init__block_invoke_4;
    v8[3] = &unk_1E85905B0;
    v9 = v6;
    objc_copyWeak(&v10, (a1 + 32));
    notify_register_dispatch("com.apple.backboardd.backlight.changed", v6 + 239, v7, v8);
    objc_destroyWeak(&v10);

    objc_destroyWeak(&v13);
  }
}

void __27__SSScreenshotsWindow_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceLockStateChanged:*(a1 + 40)];
}

void __27__SSScreenshotsWindow_init__block_invoke_4(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 956), &state64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SSScreenshotsWindow_init__block_invoke_5;
  block[3] = &unk_1E8590588;
  objc_copyWeak(v3, (a1 + 40));
  v3[1] = state64;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v3);
}

void __27__SSScreenshotsWindow_init__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceBacklightChanged:*(a1 + 40)];
}

- (void)dealloc
{
  notifyQueue = self->_notifyQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SSScreenshotsWindow_dealloc__block_invoke;
  block[3] = &unk_1E8590600;
  block[4] = self;
  dispatch_sync(notifyQueue, block);
  [(SSActiveInterfaceOrientationObserver *)self->_activeInterfaceOrientationObserver stopObserving];
  v4.receiver = self;
  v4.super_class = SSScreenshotsWindow;
  [(SSScreenshotsWindow *)&v4 dealloc];
}

uint64_t __30__SSScreenshotsWindow_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 952);
  if (v3 != -1)
  {
    notify_cancel(v3);
    v2 = *(a1 + 32);
  }

  result = *(v2 + 956);
  if (result != -1)
  {

    return notify_cancel(result);
  }

  return result;
}

- (BOOL)hasRemoteViewController
{
  _hostViewControllerIfExists = [(SSScreenshotsWindow *)self _hostViewControllerIfExists];
  v3 = _hostViewControllerIfExists != 0;

  return v3;
}

- (void)activateRemoteViewControllerIfAppropriate
{
  v3 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to activate remote view controller", buf, 2u);
  }

  managedViewController = [(SSScreenshotsWindowRootViewController *)self->_root managedViewController];

  if (!managedViewController)
  {
    delegate = [(SSScreenshotsWindow *)self delegate];
    [delegate screenshotWindowWillBeDisplayed];

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__SSScreenshotsWindow_activateRemoteViewControllerIfAppropriate__block_invoke;
    v6[3] = &unk_1E8590628;
    v6[4] = self;
    [(SSScreenshotsWindow *)self _prepareRemoteViewControllerWithCompletionHandler:v6];
  }
}

- (void)_prepareRemoteViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_DEFAULT, "Preparing remote view controller", buf, 2u);
  }

  [(SSScreenshotsWindow *)self _setRotatableViewOrientation:self->_lastActiveInterfaceOrientation duration:1 force:0.0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__SSScreenshotsWindow__prepareRemoteViewControllerWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E8590650;
  v8[4] = self;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [SSDittoHostViewController requestViewController:@"SSSDittoRemoteViewController" fromServiceWithBundleIdentifier:@"com.apple.ScreenshotServicesService" connectionHandler:v8];
}

void __73__SSScreenshotsWindow__prepareRemoteViewControllerWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 setDelegate:*(a1 + 32)];
    [v5 setModalPresentationStyle:5];
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = os_log_create("com.apple.screenshotservices", "XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__SSScreenshotsWindow__prepareRemoteViewControllerWithCompletionHandler___block_invoke_cold_1(v6, v8);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

- (id)_hostViewControllerIfExists
{
  managedViewController = [(SSScreenshotsWindowRootViewController *)self->_root managedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = managedViewController;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_dismiss
{
  _hostViewControllerIfExists = [(SSScreenshotsWindow *)self _hostViewControllerIfExists];
  [_hostViewControllerIfExists setDelegate:0];

  _hostViewControllerIfExists2 = [(SSScreenshotsWindow *)self _hostViewControllerIfExists];
  disconnect = [_hostViewControllerIfExists2 disconnect];

  [(SSScreenshotsWindowRootViewController *)self->_root setManagedViewController:0];
  delegate = [(SSScreenshotsWindow *)self delegate];
  [delegate screenshotWindowWasDismissed];
}

- (void)activeInterfaceOrientationObserver:(id)observer observedChangeToInterfaceOrientation:(int64_t)orientation withDuration:(double)duration
{
  _hostViewControllerIfExists = [(SSScreenshotsWindow *)self _hostViewControllerIfExists];

  if (_hostViewControllerIfExists)
  {
    [(SSScreenshotsWindow *)self _setRotatableViewOrientation:orientation duration:duration];
  }

  self->_lastActiveInterfaceOrientation = orientation;
}

- (void)_deviceLockStateChanged:(unint64_t)changed
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_DEFAULT, "device lock state changed %llu", &v7, 0xCu);
  }

  if (changed == 1)
  {
    _hostViewControllerIfExists = [(SSScreenshotsWindow *)self _hostViewControllerIfExists];
    [_hostViewControllerIfExists dismissScreenshotExperience];
  }
}

- (void)_deviceBacklightChanged:(unint64_t)changed
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.screenshotservices", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    changedCopy = changed;
    _os_log_impl(&dword_1D9E04000, v5, OS_LOG_TYPE_DEFAULT, "device lock state changed, %llu", &v7, 0xCu);
  }

  if (!changed)
  {
    _hostViewControllerIfExists = [(SSScreenshotsWindow *)self _hostViewControllerIfExists];
    [_hostViewControllerIfExists dismissScreenshotExperience];
  }
}

- (SSScreenshotsWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __73__SSScreenshotsWindow__prepareRemoteViewControllerWithCompletionHandler___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D9E04000, a2, OS_LOG_TYPE_ERROR, "Couldn't prepare remote view controller, %@", &v4, 0xCu);
}

@end
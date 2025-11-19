@interface SSActiveInterfaceOrientationObserver
- (SSActiveInterfaceOrientationObserverDelegate)delegate;
- (id)_sbUIUserAgent;
- (void)_observeActiveInterfaceOrientationChangeToOrientation:(int64_t)a3 withDuration:(double)a4;
- (void)_registerForActiveInterfaceOrientationChanges;
- (void)_unregisterForActiveInterfaceOrientationChanges;
- (void)beginObserving;
@end

@implementation SSActiveInterfaceOrientationObserver

- (void)beginObserving
{
  [(SSActiveInterfaceOrientationObserver *)self _registerForActiveInterfaceOrientationChanges];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 activeInterfaceOrientation];

  [(SSActiveInterfaceOrientationObserver *)self _observeActiveInterfaceOrientationChangeToOrientation:v4 withDuration:0.0];
}

- (void)_observeActiveInterfaceOrientationChangeToOrientation:(int64_t)a3 withDuration:(double)a4
{
  v7 = [(SSActiveInterfaceOrientationObserver *)self delegate];
  [v7 activeInterfaceOrientationObserver:self observedChangeToInterfaceOrientation:a3 withDuration:a4];
}

- (id)_sbUIUserAgent
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getSBUIGetUserAgentSymbolLoc_ptr;
  v10 = getSBUIGetUserAgentSymbolLoc_ptr;
  if (!getSBUIGetUserAgentSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSBUIGetUserAgentSymbolLoc_block_invoke;
    v6[3] = &unk_1E8590188;
    v6[4] = &v7;
    __getSBUIGetUserAgentSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = [SSScreenshotAssetManagerPhotoLibraryBackend saveImageDataToTemporaryLocation:withName:imageDescription:completionHandler:];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2();

  return v3;
}

- (void)_registerForActiveInterfaceOrientationChanges
{
  v3 = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
    [v5 addActiveInterfaceOrientationObserver:self];
  }
}

- (void)_unregisterForActiveInterfaceOrientationChanges
{
  v3 = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(SSActiveInterfaceOrientationObserver *)self _sbUIUserAgent];
    [v5 removeActiveInterfaceOrientationObserver:self];
  }
}

- (SSActiveInterfaceOrientationObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
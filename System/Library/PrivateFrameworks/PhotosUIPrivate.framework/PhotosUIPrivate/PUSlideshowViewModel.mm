@interface PUSlideshowViewModel
- (PUSlideshowViewModel)initWithAssetCollection:(id)a3;
- (id)currentChange;
- (void)dealloc;
- (void)dismissSlideshowIfLocked;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)registerChangeObserver:(id)a3;
- (void)setCurrentState:(int64_t)a3;
- (void)setWantsChromeVisible:(BOOL)a3 changeReason:(int64_t)a4;
- (void)unregisterChangeObserver:(id)a3;
@end

@implementation PUSlideshowViewModel

- (void)dismissSlideshowIfLocked
{
  v3 = [(PUSlideshowViewModel *)self privacyController];
  v4 = [v3 isLocked];

  if (v4)
  {
    v5 = PLContentPrivacyUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEFAULT, "Slideshow dismissing because privacy controller is locked", buf, 2u);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PUSlideshowViewModel_dismissSlideshowIfLocked__block_invoke;
    v6[3] = &unk_1E7B80DD0;
    v6[4] = self;
    [(PUViewModel *)self performChanges:v6];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PrivacyControllerObservationContext_82779 != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUSlideshowViewModel.m" lineNumber:113 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v12, &location);
    px_dispatch_on_main_queue();
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __53__PUSlideshowViewModel_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissSlideshowIfLocked];
}

- (void)setWantsChromeVisible:(BOOL)a3 changeReason:(int64_t)a4
{
  if (self->_wantsChromeVisible != a3)
  {
    self->_wantsChromeVisible = a3;
    v5 = [(PUSlideshowViewModel *)self currentChange];
    [v5 _setWantsChromeVisibleDidChange:1];
  }
}

- (void)setCurrentState:(int64_t)a3
{
  if (self->_currentState != a3)
  {
    self->_currentState = a3;
    v4 = [(PUSlideshowViewModel *)self currentChange];
    [v4 _setCurrentStateDidChange:1];
  }
}

- (void)unregisterChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUSlideshowViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:a3];
}

- (void)registerChangeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUSlideshowViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:a3];
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowViewModel;
  v2 = [(PUViewModel *)&v4 currentChange];

  return v2;
}

- (void)dealloc
{
  [(PXContentPrivacyController *)self->_privacyController unregisterChangeObserver:self context:PrivacyControllerObservationContext_82779];
  v3.receiver = self;
  v3.super_class = PUSlideshowViewModel;
  [(PUSlideshowViewModel *)&v3 dealloc];
}

- (PUSlideshowViewModel)initWithAssetCollection:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PUSlideshowViewModel;
  v5 = [(PUViewModel *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69C33E8] privacyControllerForCollection:v4];
    privacyController = v5->_privacyController;
    v5->_privacyController = v6;

    if (v5->_privacyController)
    {
      v8 = PLContentPrivacyUIGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "Privacy controller found for asset collection representing the slideshow.", v10, 2u);
      }

      [(PXContentPrivacyController *)v5->_privacyController registerChangeObserver:v5 context:PrivacyControllerObservationContext_82779];
    }
  }

  return v5;
}

@end
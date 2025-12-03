@interface PUSlideshowViewModel
- (PUSlideshowViewModel)initWithAssetCollection:(id)collection;
- (id)currentChange;
- (void)dealloc;
- (void)dismissSlideshowIfLocked;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)registerChangeObserver:(id)observer;
- (void)setCurrentState:(int64_t)state;
- (void)setWantsChromeVisible:(BOOL)visible changeReason:(int64_t)reason;
- (void)unregisterChangeObserver:(id)observer;
@end

@implementation PUSlideshowViewModel

- (void)dismissSlideshowIfLocked
{
  privacyController = [(PUSlideshowViewModel *)self privacyController];
  isLocked = [privacyController isLocked];

  if (isLocked)
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PrivacyControllerObservationContext_82779 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSlideshowViewModel.m" lineNumber:113 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
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

- (void)setWantsChromeVisible:(BOOL)visible changeReason:(int64_t)reason
{
  if (self->_wantsChromeVisible != visible)
  {
    self->_wantsChromeVisible = visible;
    currentChange = [(PUSlideshowViewModel *)self currentChange];
    [currentChange _setWantsChromeVisibleDidChange:1];
  }
}

- (void)setCurrentState:(int64_t)state
{
  if (self->_currentState != state)
  {
    self->_currentState = state;
    currentChange = [(PUSlideshowViewModel *)self currentChange];
    [currentChange _setCurrentStateDidChange:1];
  }
}

- (void)unregisterChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUSlideshowViewModel;
  [(PUViewModel *)&v3 unregisterChangeObserver:observer];
}

- (void)registerChangeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = PUSlideshowViewModel;
  [(PUViewModel *)&v3 registerChangeObserver:observer];
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowViewModel;
  currentChange = [(PUViewModel *)&v4 currentChange];

  return currentChange;
}

- (void)dealloc
{
  [(PXContentPrivacyController *)self->_privacyController unregisterChangeObserver:self context:PrivacyControllerObservationContext_82779];
  v3.receiver = self;
  v3.super_class = PUSlideshowViewModel;
  [(PUSlideshowViewModel *)&v3 dealloc];
}

- (PUSlideshowViewModel)initWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v11.receiver = self;
  v11.super_class = PUSlideshowViewModel;
  v5 = [(PUViewModel *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E69C33E8] privacyControllerForCollection:collectionCopy];
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
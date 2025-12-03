@interface PXCPLStatusProviderMonitor
- (PXCPLStatusProviderMonitor)init;
- (PXCPLStatusProviderMonitor)initWithPhotoLibrary:(id)library;
- (void)_updateStatusProvider;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setStatusProvider:(id)provider;
@end

@implementation PXCPLStatusProviderMonitor

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXCPLPhotoLibrarySourceObservationContext_139684 == context)
  {
    [(PXCPLStatusProviderMonitor *)self _updateStatusProvider];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &PXMockCPLStatusProviderShouldUseMockServiceDefaultsContext)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXCPLStatusProviderMonitor_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PXCPLStatusProviderMonitor;
    [(PXCPLStatusProviderMonitor *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)_updateStatusProvider
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__PXCPLStatusProviderMonitor__updateStatusProvider__block_invoke;
  v3[3] = &unk_1E774C5F8;
  v3[4] = self;
  [(PXCPLStatusProviderMonitor *)self performChanges:v3];
}

void __51__PXCPLStatusProviderMonitor__updateStatusProvider__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _CreateStatusProviderIfNecessary(*(*(a1 + 32) + 96), *(*(a1 + 32) + 112));
  [*(a1 + 32) setStatusProvider:v2];
  if ([*(a1 + 32) currentChanges])
  {
    v3 = PLUserStatusGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138543618;
      v6 = v4;
      v7 = 2114;
      v8 = v2;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ New status provider: %{public}@", &v5, 0x16u);
    }
  }
}

- (void)setStatusProvider:(id)provider
{
  providerCopy = provider;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = self->_statusProvider;
  v6 = v5;
  if (v5 == providerCopy)
  {
  }

  else
  {
    v7 = [(PXCPLStatusProvider *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_statusProvider, provider);
      [(PXCPLStatusProviderMonitor *)self signalChange:1];
    }
  }
}

- (void)dealloc
{
  v3 = PXSharedUserDefaults();
  [v3 removeObserver:self forKeyPath:@"CPLStatusProviderMock" context:&PXMockCPLStatusProviderShouldUseMockServiceDefaultsContext];

  v4.receiver = self;
  v4.super_class = PXCPLStatusProviderMonitor;
  [(PXCPLStatusProviderMonitor *)&v4 dealloc];
}

- (PXCPLStatusProviderMonitor)initWithPhotoLibrary:(id)library
{
  v23 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLStatusProviderMonitor.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v18.receiver = self;
  v18.super_class = PXCPLStatusProviderMonitor;
  v7 = [(PXCPLStatusProviderMonitor *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_photoLibrary, library);
    v9 = [[PXCPLPhotoLibrarySource alloc] initWithPhotoLibrary:libraryCopy];
    photoLibrarySource = v8->_photoLibrarySource;
    v8->_photoLibrarySource = v9;

    [(PXCPLPhotoLibrarySource *)v8->_photoLibrarySource registerChangeObserver:v8 context:PXCPLPhotoLibrarySourceObservationContext_139684];
    v11 = _CreateStatusProviderIfNecessary(v8->_photoLibrarySource, 0);
    statusProvider = v8->_statusProvider;
    v8->_statusProvider = v11;

    v13 = PLUserStatusGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v8->_statusProvider;
      *buf = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Initial status provider: %{public}@", buf, 0x16u);
    }

    v15 = PXSharedUserDefaults();
    [v15 addObserver:v8 forKeyPath:@"CPLStatusProviderMock" options:0 context:&PXMockCPLStatusProviderShouldUseMockServiceDefaultsContext];
  }

  return v8;
}

- (PXCPLStatusProviderMonitor)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCPLStatusProviderMonitor.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXCPLStatusProviderMonitor init]"}];

  abort();
}

@end
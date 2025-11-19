@interface PXPhotosDetailsLoadCoordinationToken
- (PXPhotosDetailsLoadCoordinationToken)init;
- (PXPhotosDetailsLoadCoordinator)_loadCoordinator;
- (id)_initWithLoadCoordinator:(id)a3;
- (void)_timeout;
- (void)complete;
- (void)dealloc;
@end

@implementation PXPhotosDetailsLoadCoordinationToken

- (PXPhotosDetailsLoadCoordinator)_loadCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->__loadCoordinator);

  return WeakRetained;
}

- (void)_timeout
{
  if (!self->_didComplete)
  {
    v3 = PLRelatedGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, OS_LOG_TYPE_DEFAULT, "Photos details load coordination token did timeout. Related fetches might be unnecessarily delayed.", v4, 2u);
    }

    [(PXPhotosDetailsLoadCoordinationToken *)self complete];
  }
}

- (void)complete
{
  if (!self->_didComplete)
  {
    self->_didComplete = 1;
    v4 = [(PXPhotosDetailsLoadCoordinationToken *)self _loadCoordinator];
    [v4 _tokenDidComplete:self];
  }
}

- (void)dealloc
{
  if (!self->_didComplete)
  {
    self->_didComplete = 1;
    WeakRetained = objc_loadWeakRetained(&self->__loadCoordinator);
    [WeakRetained _tokenDidComplete:0];
  }

  v4.receiver = self;
  v4.super_class = PXPhotosDetailsLoadCoordinationToken;
  [(PXPhotosDetailsLoadCoordinationToken *)&v4 dealloc];
}

- (id)_initWithLoadCoordinator:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PXPhotosDetailsLoadCoordinationToken;
  v5 = [(PXPhotosDetailsLoadCoordinationToken *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__loadCoordinator, v4);
    objc_initWeak(&location, v6);
    [v4 timeoutDelay];
    v8 = dispatch_time(0, (v7 * 1000000000.0));
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PXPhotosDetailsLoadCoordinationToken__initWithLoadCoordinator___block_invoke;
    v10[3] = &unk_1E774C318;
    objc_copyWeak(&v11, &location);
    dispatch_after(v8, MEMORY[0x1E69E96A0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __65__PXPhotosDetailsLoadCoordinationToken__initWithLoadCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timeout];
}

- (PXPhotosDetailsLoadCoordinationToken)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsLoadCoordinator.m" lineNumber:130 description:{@"%s is not available as initializer", "-[PXPhotosDetailsLoadCoordinationToken init]"}];

  abort();
}

@end
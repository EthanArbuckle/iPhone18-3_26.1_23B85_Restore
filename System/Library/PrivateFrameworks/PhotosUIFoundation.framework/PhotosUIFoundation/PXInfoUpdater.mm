@interface PXInfoUpdater
- (PXInfoProvider)infoProvider;
- (PXInfoUpdater)init;
- (PXInfoUpdater)initWithInfoProvider:(id)provider infoKind:(id)kind;
- (PXInfoUpdaterObserver)observer;
- (id)info;
- (void)_handleCurrentUpdateWithInfo:(id)info generation:(int64_t)generation;
- (void)_updateInfo;
- (void)_updateInfoIfNeeded;
- (void)invalidateInfo;
- (void)performBlockWhenDoneUpdating:(id)updating;
- (void)setInfo:(id)info;
- (void)setObserver:(id)observer;
@end

@implementation PXInfoUpdater

- (void)_updateInfoIfNeeded
{
  if ([(PXInfoUpdater *)self shouldUpdateInfo])
  {
    if ([(PXInfoUpdater *)self isUpdatingInfo])
    {
      if (!self->_infoProviderRespondsTo.priorityForInfoRequestOfKind)
      {
        return;
      }

      infoProvider = [(PXInfoUpdater *)self infoProvider];
      infoKind = [(PXInfoUpdater *)self infoKind];
      v5 = [infoProvider priorityForInfoRequestOfKind:infoKind];

      if (v5 <= [(PXInfoUpdater *)self currentUpdatePriority])
      {
        return;
      }
    }

    else
    {
      v5 = 0;
    }

    if (!self->_observerRespondsTo.shouldUpdate || (-[PXInfoUpdater observer](self, "observer"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 infoUpdaterShouldUpdate:self], v6, v7))
    {
      [(PXInfoUpdater *)self setCurrentUpdatePriority:v5];

      [(PXInfoUpdater *)self _updateInfo];
    }
  }
}

- (void)_updateInfo
{
  v3 = ([(PXInfoUpdater *)self currentUpdateGeneration]+ 1);
  [(PXInfoUpdater *)self setCurrentUpdateGeneration:v3];
  [(PXInfoUpdater *)self setShouldUpdateInfo:0];
  [(PXInfoUpdater *)self setIsUpdatingInfo:1];
  currentUpdateProgress = [(PXInfoUpdater *)self currentUpdateProgress];
  [currentUpdateProgress cancel];

  infoProvider = [(PXInfoUpdater *)self infoProvider];
  if (infoProvider)
  {
    objc_initWeak(&location, self);
    infoKind = [(PXInfoUpdater *)self infoKind];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__PXInfoUpdater__updateInfo__block_invoke;
    v8[3] = &unk_1E7BB6A88;
    objc_copyWeak(v9, &location);
    v9[1] = v3;
    v7 = [infoProvider requestInfoOfKind:infoKind withResultHandler:v8];

    objc_destroyWeak(v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PXInfoUpdater *)self _handleCurrentUpdateWithInfo:0 generation:v3];
    v7 = 0;
  }

  [(PXInfoUpdater *)self setCurrentUpdateProgress:v7];
}

- (PXInfoProvider)infoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_infoProvider);

  return WeakRetained;
}

void __28__PXInfoUpdater__updateInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __28__PXInfoUpdater__updateInfo__block_invoke_2;
  v6[3] = &unk_1E7BB6A60;
  objc_copyWeak(v8, (a1 + 32));
  v4 = v3;
  v5 = *(a1 + 40);
  v7 = v4;
  v8[1] = v5;
  px_dispatch_on_main_queue(v6);

  objc_destroyWeak(v8);
}

void __28__PXInfoUpdater__updateInfo__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleCurrentUpdateWithInfo:*(a1 + 32) generation:*(a1 + 48)];
}

- (PXInfoUpdaterObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (id)info
{
  if ([(PXInfoUpdater *)self shouldUpdateInfo])
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __21__PXInfoUpdater_info__block_invoke;
    v5[3] = &unk_1E7BB8858;
    objc_copyWeak(&v6, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  info = self->_info;

  return info;
}

- (void)invalidateInfo
{
  [(PXInfoUpdater *)self setShouldUpdateInfo:1];

  [(PXInfoUpdater *)self _updateInfoIfNeeded];
}

void __21__PXInfoUpdater_info__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateInfoIfNeeded];
}

- (void)performBlockWhenDoneUpdating:(id)updating
{
  updatingCopy = updating;
  if ([(PXInfoUpdater *)self isUpdatingInfo]|| [(PXInfoUpdater *)self shouldUpdateInfo])
  {
    [(PXInfoUpdater *)self info];

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__PXInfoUpdater_performBlockWhenDoneUpdating___block_invoke;
    block[3] = &unk_1E7BB6AB0;
    objc_copyWeak(&v7, &location);
    v6 = updatingCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    updatingCopy[2](updatingCopy);
  }
}

void __46__PXInfoUpdater_performBlockWhenDoneUpdating___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performBlockWhenDoneUpdating:*(a1 + 32)];
}

- (void)_handleCurrentUpdateWithInfo:(id)info generation:(int64_t)generation
{
  infoCopy = info;
  if ([(PXInfoUpdater *)self currentUpdateGeneration]== generation)
  {
    [(PXInfoUpdater *)self setInfo:infoCopy];
    [(PXInfoUpdater *)self setIsUpdatingInfo:0];
    if ([(PXInfoUpdater *)self shouldUpdateInfo])
    {
      [(PXInfoUpdater *)self _updateInfo];
    }
  }
}

- (void)setInfo:(id)info
{
  infoCopy = info;
  p_info = &self->_info;
  if (self->_info != infoCopy)
  {
    v8 = infoCopy;
    objc_storeStrong(p_info, info);
    observer = [(PXInfoUpdater *)self observer];
    [observer infoUpdaterDidUpdate:self];

    infoCopy = v8;
  }

  MEMORY[0x1EEE66BB8](p_info, infoCopy);
}

- (void)setObserver:(id)observer
{
  obj = observer;
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_observer, obj);
    self->_observerRespondsTo.shouldUpdate = objc_opt_respondsToSelector() & 1;
    [(PXInfoUpdater *)self _updateInfoIfNeeded];
  }
}

- (PXInfoUpdater)initWithInfoProvider:(id)provider infoKind:(id)kind
{
  providerCopy = provider;
  kindCopy = kind;
  v13.receiver = self;
  v13.super_class = PXInfoUpdater;
  v8 = [(PXInfoUpdater *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_infoProvider, providerCopy);
    v9->_infoProviderRespondsTo.priorityForInfoRequestOfKind = objc_opt_respondsToSelector() & 1;
    v10 = [kindCopy copy];
    infoKind = v9->_infoKind;
    v9->_infoKind = v10;

    v9->_shouldUpdateInfo = 1;
  }

  return v9;
}

- (PXInfoUpdater)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXInfoUpdater.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXInfoUpdater init]"}];

  abort();
}

@end
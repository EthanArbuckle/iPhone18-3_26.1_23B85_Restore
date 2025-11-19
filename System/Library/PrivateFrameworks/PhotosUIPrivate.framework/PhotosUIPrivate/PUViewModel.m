@interface PUViewModel
- (PUViewModel)init;
- (PUViewModelChange)currentChange;
- (id)newViewModelChange;
- (void)_applyPendingChanges;
- (void)_didChange;
- (void)_publishChanges;
- (void)_willChange;
- (void)assertInsideChangesBlock;
- (void)performChanges:(id)a3;
- (void)registerChangeObserver:(id)a3;
- (void)unregisterChangeObserver:(id)a3;
@end

@implementation PUViewModel

- (PUViewModel)init
{
  v10.receiver = self;
  v10.super_class = PUViewModel;
  v2 = [(PUViewModel *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.photos.viewmodel.observer-queue", 0);
    observerQueue = v2->_observerQueue;
    v2->_observerQueue = v3;

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v2->__changeObservers;
    v2->__changeObservers = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    pendingChangeBlocks = v2->_pendingChangeBlocks;
    v2->_pendingChangeBlocks = v7;
  }

  return v2;
}

- (void)unregisterChangeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PUViewModel_unregisterChangeObserver___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

void __40__PUViewModel_unregisterChangeObserver___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isPublishingChanges])
  {
    v2 = [*(*(a1 + 32) + 56) mutableCopy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v5 = [*(a1 + 32) _changeObservers];
  [v5 removeObject:*(a1 + 40)];
}

- (void)registerChangeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PUViewModel_registerChangeObserver___block_invoke;
  v7[3] = &unk_1E7B80C38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

void __38__PUViewModel_registerChangeObserver___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isPublishingChanges])
  {
    v2 = [*(*(a1 + 32) + 56) mutableCopy];
    v3 = *(a1 + 32);
    v4 = *(v3 + 56);
    *(v3 + 56) = v2;
  }

  v5 = [*(a1 + 32) _changeObservers];
  [v5 addObject:*(a1 + 40)];
}

- (void)_applyPendingChanges
{
  numAppliedPendingChanges = self->_numAppliedPendingChanges;
  self->_numAppliedPendingChanges = numAppliedPendingChanges + 1;
  if (numAppliedPendingChanges >= 50)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:137 description:{@"Change depth limit reached (%ld), this indicates infinite state ping-ponging, investigate the stack trace and figure out why the model doesn't reach a stable state. Typically because two observers are trying to set different new values in response to the same change.", 50}];
  }

  if ([(NSMutableArray *)self->_pendingChangeBlocks count])
  {
    v4 = [(NSMutableArray *)self->_pendingChangeBlocks copy];
    [(NSMutableArray *)self->_pendingChangeBlocks removeAllObjects];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__PUViewModel__applyPendingChanges__block_invoke;
    v8[3] = &unk_1E7B80DD0;
    v9 = v4;
    v5 = v4;
    [(PUViewModel *)self performChanges:v8];
  }

  --self->_numAppliedPendingChanges;
}

void __35__PUViewModel__applyPendingChanges__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)_publishChanges
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__94557;
  v21 = __Block_byref_object_dispose__94558;
  v22 = 0;
  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__PUViewModel__publishChanges__block_invoke;
  block[3] = &unk_1E7B800C8;
  block[4] = self;
  block[5] = &v17;
  dispatch_sync(observerQueue, block);
  v4 = [(PUViewModel *)self currentChange];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v18[5];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 viewModel:self didChange:v4];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v12 objects:v23 count:16];
    }

    while (v6);
  }

  v10 = self->_observerQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __30__PUViewModel__publishChanges__block_invoke_2;
  v11[3] = &unk_1E7B80DD0;
  v11[4] = self;
  dispatch_sync(v10, v11);

  _Block_object_dispose(&v17, 8);
}

uint64_t __30__PUViewModel__publishChanges__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setPublishingChanges:1];
  v2 = [*(a1 + 32) _changeObservers];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)_didChange
{
  nestedChanges = self->_nestedChanges;
  if (nestedChanges <= 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:96 description:{@"%@ called without a change in progress.", v8}];

    nestedChanges = self->_nestedChanges;
  }

  if (nestedChanges == 1)
  {
    [(PUViewModel *)self didPerformChanges];
    if ([(PUViewModelChange *)self->_currentChange hasChanges])
    {
      [(PUViewModel *)self willPublishChanges];
    }
  }

  v4 = self->_nestedChanges - 1;
  self->_nestedChanges = v4;
  if (!v4)
  {
    if ([(PUViewModelChange *)self->_currentChange hasChanges])
    {
      [(PUViewModel *)self _publishChanges];
      [(PUViewModel *)self didPublishChanges];
    }

    currentChange = self->_currentChange;
    self->_currentChange = 0;

    [(PUViewModel *)self _applyPendingChanges];
  }
}

- (void)_willChange
{
  if ([(PUViewModel *)self _isPublishingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:90 description:{@"PUViewModel currently disallows new changes while publishing changes. This requirement might have to be relaxed, but for now it is strict. This makes debugging easier and avoids ping-ponging state. Please figure out if the changes that are being made has to be made in reaction to a viewModel change, or could be made in some other way."}];
  }

  ++self->_nestedChanges;
}

- (void)performChanges:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"changeBlock != nil"}];
  }

  if ([(PUViewModel *)self _isPublishingChanges])
  {
    pendingChangeBlocks = self->_pendingChangeBlocks;
    v6 = [v8 copy];
    [(NSMutableArray *)pendingChangeBlocks addObject:v6];
  }

  else
  {
    [(PUViewModel *)self _willChange];
    v8[2]();
    [(PUViewModel *)self _didChange];
  }
}

- (PUViewModelChange)currentChange
{
  if (self->_nestedChanges >= 1 && !self->_currentChange)
  {
    v4 = [(PUViewModel *)self newViewModelChange];
    currentChange = self->_currentChange;
    self->_currentChange = v4;

    if (!self->_currentChange)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"_currentChange != nil"}];
    }
  }

  v6 = self->_currentChange;

  return v6;
}

- (void)assertInsideChangesBlock
{
  if (self->_nestedChanges < 1 || [(PUViewModel *)self _isPublishingChanges])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:45 description:@"Changes must be made inside a block passed to performChanges"];
  }
}

- (id)newViewModelChange
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"PUViewModel.m" lineNumber:40 description:{@"Concrete subclass must implement %@", v5}];

  return 0;
}

@end
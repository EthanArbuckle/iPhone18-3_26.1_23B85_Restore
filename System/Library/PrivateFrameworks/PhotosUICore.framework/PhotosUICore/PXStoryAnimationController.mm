@interface PXStoryAnimationController
- (PXStoryAnimationController)initWithModel:(id)model;
- (PXStoryAnimationController)initWithObservableModel:(id)model;
- (PXStoryModel)model;
- (id)checkOutAnimationWithIdentifier:(id)identifier creationBlock:(id)block;
- (void)_configureAnimation:(id)animation withAnimationInfo:(id)info;
- (void)_enumerateAnimationInfosUsingBlock:(id)block;
- (void)_handleAnimationInvalidation;
- (void)_invalidateAnimations;
- (void)_updateAnimations;
- (void)addAnimation:(id)animation;
- (void)checkInAnimation:(id)animation;
- (void)configureUpdater:(id)updater;
- (void)enumerateAnimationsUsingBlock:(id)block;
- (void)handleModelChange:(unint64_t)change;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXStoryAnimationController

- (PXStoryModel)model
{
  WeakRetained = objc_loadWeakRetained(&self->_model);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (AnimationObservationContext == context)
  {
    if ((change & 2) != 0)
    {
      if (self->_isUpdatingAnimations)
      {
        objc_initWeak(&location, self);
        storyQueue = [(PXStoryController *)self storyQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__PXStoryAnimationController_observable_didChange_context___block_invoke;
        block[3] = &unk_1E774C318;
        objc_copyWeak(&v12, &location);
        dispatch_async(storyQueue, block);

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }

      else
      {
        [(PXStoryAnimationController *)self _handleAnimationInvalidation];
      }
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PXStoryAnimationController;
    [(PXStoryController *)&v10 observable:observableCopy didChange:change context:context];
  }
}

void __59__PXStoryAnimationController_observable_didChange_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleAnimationInvalidation];
}

- (void)handleModelChange:(unint64_t)change
{
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v7.receiver = self;
  v7.super_class = PXStoryAnimationController;
  [(PXStoryController *)&v7 handleModelChange:change];
  if ((change & 0x4001002) != 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__PXStoryAnimationController_handleModelChange___block_invoke;
    v6[3] = &unk_1E774A370;
    v6[4] = self;
    [(PXStoryController *)self performChanges:v6];
  }
}

- (void)_updateAnimations
{
  v28 = *MEMORY[0x1E69E9840];
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  isUpdatingAnimations = self->_isUpdatingAnimations;
  self->_isUpdatingAnimations = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__244575;
  v23 = __Block_byref_object_dispose__244576;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__PXStoryAnimationController__updateAnimations__block_invoke;
  v18[3] = &unk_1E774A408;
  v18[4] = self;
  v18[5] = &v19;
  [(PXStoryAnimationController *)self _enumerateAnimationInfosUsingBlock:v18];
  if ([v20[5] count])
  {
    v5 = PLStoryGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v20[5] componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v27 = v6;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "[77239634] Removing animations with identifiers: %{public}@", buf, 0xCu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v20[5];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(NSMutableDictionary *)self->_animationInfoByIdentifier removeObjectForKey:*(*(&v14 + 1) + 8 * v10++), v14];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v8);
  }

  if ([v20[5] count])
  {
    v11 = PLStoryGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [(NSMutableDictionary *)self->_animationInfoByIdentifier allKeys];
      v13 = [allKeys componentsJoinedByString:{@", "}];
      *buf = 138543362;
      v27 = v13;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_DEFAULT, "[77239634] Remaining animations: %{public}@", buf, 0xCu);
    }
  }

  self->_isUpdatingAnimations = isUpdatingAnimations;
  _Block_object_dispose(&v19, 8);
}

void __47__PXStoryAnimationController__updateAnimations__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 animation];
  v4 = [v3 isStopped];
  if (!v3 || v4)
  {
    v5 = *(*(*(a1 + 40) + 8) + 40);
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 40) + 8) + 40);
    }

    v9 = [v10 animationIdentifier];
    [v5 addObject:v9];
  }

  else
  {
    [*(a1 + 32) _configureAnimation:v3 withAnimationInfo:v10];
  }
}

- (void)_invalidateAnimations
{
  updater = [(PXStoryController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAnimations];
}

- (void)_configureAnimation:(id)animation withAnimationInfo:(id)info
{
  animationCopy = animation;
  infoCopy = info;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  model = [(PXStoryAnimationController *)self model];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__PXStoryAnimationController__configureAnimation_withAnimationInfo___block_invoke;
  v13[3] = &unk_1E774A3E0;
  v14 = model;
  v15 = infoCopy;
  v16 = animationCopy;
  v10 = animationCopy;
  v11 = infoCopy;
  v12 = model;
  [v10 performChanges:v13];
}

void __68__PXStoryAnimationController__configureAnimation_withAnimationInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    [v4 elapsedTime];
  }

  else
  {
    memset(&v7[1], 0, sizeof(CMTime));
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v5 startTime];
  }

  else
  {
    memset(v7, 0, 24);
  }

  lhs = v7[1];
  rhs = v7[0];
  CMTimeSubtract(&v8, &lhs, &rhs);
  lhs = v8;
  [v3 setElapsedTime:&lhs];
  if ([*(a1 + 48) canBePaused])
  {
    v6 = ([*(a1 + 32) isTouching] & 1) != 0 || objc_msgSend(*(a1 + 32), "desiredPlayState") == 0;
    [v3 setIsPaused:v6];
  }
}

- (void)checkInAnimation:(id)animation
{
  v15 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  if (animationCopy)
  {
    identifier = [animationCopy identifier];
    v7 = PLStoryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      isUpdatingAnimations = self->_isUpdatingAnimations;
      v11 = 138543618;
      v12 = identifier;
      v13 = 1024;
      v14 = isUpdatingAnimations;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[77239634] Check in animation with identifier: %{public}@, updatingAnimations: %d", &v11, 0x12u);
    }

    [(NSCountedSet *)self->_checkOutCountsByIdentifier removeObject:identifier];
    if (![(NSCountedSet *)self->_checkOutCountsByIdentifier countForObject:identifier])
    {
      v9 = [(NSMutableDictionary *)self->_animationInfoByIdentifier objectForKey:identifier];
      animation = [v9 animation];
      [animation performChanges:&__block_literal_global_244587];

      [(NSMutableDictionary *)self->_animationInfoByIdentifier removeObjectForKey:identifier];
    }
  }
}

- (id)checkOutAnimationWithIdentifier:(id)identifier creationBlock:(id)block
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v9 = PLStoryGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    isUpdatingAnimations = self->_isUpdatingAnimations;
    *buf = 138543618;
    *&buf[4] = identifierCopy;
    *&buf[12] = 1024;
    *&buf[14] = isUpdatingAnimations;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "[77239634] Check out animation with identifier: %{public}@, updatingAnimations: %d", buf, 0x12u);
  }

  v11 = [(NSMutableDictionary *)self->_animationInfoByIdentifier objectForKey:identifierCopy];
  animation = [v11 animation];
  animation2 = [v11 animation];

  if (animation2)
  {
    v14 = animation;
  }

  else
  {
    v14 = blockCopy[2](blockCopy);

    memset(buf, 0, sizeof(buf));
    model = [(PXStoryAnimationController *)self model];
    v16 = model;
    if (model)
    {
      [model elapsedTime];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v17 = [_PXStoryAnimationInfo alloc];
    v20 = *buf;
    v21 = *&buf[16];
    v18 = [(_PXStoryAnimationInfo *)v17 initWithAnimation:v14 startTime:&v20];

    [(PXStoryAnimationController *)self _configureAnimation:v14 withAnimationInfo:v18];
    [(PXStoryAnimationController *)self signalChange:1];
    [v14 registerChangeObserver:self context:AnimationObservationContext];
    [(NSMutableDictionary *)self->_animationInfoByIdentifier setObject:v18 forKey:identifierCopy];
    v11 = v18;
  }

  [(NSCountedSet *)self->_checkOutCountsByIdentifier addObject:identifierCopy];
  [(PXStoryAnimationController *)self signalChange:1];

  return v14;
}

- (void)addAnimation:(id)animation
{
  v17 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  identifier = [animationCopy identifier];
  v7 = PLStoryGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    isUpdatingAnimations = self->_isUpdatingAnimations;
    *buf = 138543618;
    v14 = identifier;
    v15 = 1024;
    v16 = isUpdatingAnimations;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "[77239634] Add existing animation with identifier: %{public}@, updatingAnimations: %d", buf, 0x12u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__PXStoryAnimationController_addAnimation___block_invoke;
  v11[3] = &unk_1E774A398;
  v12 = animationCopy;
  v9 = animationCopy;
  v10 = [(PXStoryAnimationController *)self checkOutAnimationWithIdentifier:identifier creationBlock:v11];
}

- (void)_handleAnimationInvalidation
{
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__PXStoryAnimationController__handleAnimationInvalidation__block_invoke;
  v4[3] = &unk_1E774A370;
  v4[4] = self;
  [(PXStoryController *)self performChanges:v4];
}

- (void)_enumerateAnimationInfosUsingBlock:(id)block
{
  blockCopy = block;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6 = [(NSMutableDictionary *)self->_animationInfoByIdentifier copy];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PXStoryAnimationController__enumerateAnimationInfosUsingBlock___block_invoke;
  v8[3] = &unk_1E774A348;
  v9 = blockCopy;
  v7 = blockCopy;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)enumerateAnimationsUsingBlock:(id)block
{
  blockCopy = block;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__PXStoryAnimationController_enumerateAnimationsUsingBlock___block_invoke;
  v7[3] = &unk_1E774A320;
  v8 = blockCopy;
  v6 = blockCopy;
  [(PXStoryAnimationController *)self _enumerateAnimationInfosUsingBlock:v7];
}

void __60__PXStoryAnimationController_enumerateAnimationsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 animation];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 animation];
    (*(v6 + 16))(v6, v7, a3);
  }
}

- (void)configureUpdater:(id)updater
{
  updaterCopy = updater;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryAnimationController;
  [(PXStoryController *)&v6 configureUpdater:updaterCopy];
  [updaterCopy addUpdateSelector:sel__updateAnimations];
}

- (PXStoryAnimationController)initWithModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = PXStoryAnimationController;
  v5 = [(PXStoryController *)&v12 initWithObservableModel:modelCopy];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_model, modelCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    animationInfoByIdentifier = v6->_animationInfoByIdentifier;
    v6->_animationInfoByIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AB50]);
    checkOutCountsByIdentifier = v6->_checkOutCountsByIdentifier;
    v6->_checkOutCountsByIdentifier = v9;
  }

  return v6;
}

- (PXStoryAnimationController)initWithObservableModel:(id)model
{
  modelCopy = model;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryAnimationController.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXStoryAnimationController initWithObservableModel:]"}];

  abort();
}

@end
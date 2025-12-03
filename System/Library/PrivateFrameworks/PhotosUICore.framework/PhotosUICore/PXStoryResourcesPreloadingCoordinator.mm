@interface PXStoryResourcesPreloadingCoordinator
- (PXStoryResourcesPreloadingCoordinator)initWithQueue:(id)queue;
- (id)_infoForPreloadingController:(id)controller createIfNeeded:(BOOL)needed;
- (void)_invalidateInfosOrder;
- (void)_invalidatePreloadingControllers;
- (void)_updatePreloadingControllers;
- (void)addPreloadingController:(id)controller withPriority:(int64_t)priority;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)removePreloadingController:(id)controller;
@end

@implementation PXStoryResourcesPreloadingCoordinator

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PreloadinControllerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryResourcesPreloadingCoordinator.m" lineNumber:144 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (([observableCopy isCompletedChangeDescriptor] & ~change) == 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__PXStoryResourcesPreloadingCoordinator_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E7736B08;
    v12[4] = self;
    [(PXStoryResourcesPreloadingCoordinator *)self performChanges:v12];
  }
}

- (void)_updatePreloadingControllers
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = self->_infos;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        preloadingController = [v8 preloadingController];
        isCompleted = [preloadingController isCompleted];

        if ((isCompleted & 1) == 0)
        {
          priority = [v8 priority];
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  priority = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_infos;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        v18 = [v17 priority] <= priority;
        preloadingController2 = [v17 preloadingController];
        [preloadingController2 setIsPreloadingEnabled:v18];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }
}

- (void)_invalidatePreloadingControllers
{
  updater = [(PXStoryResourcesPreloadingCoordinator *)self updater];
  [updater setNeedsUpdateOf:sel__updatePreloadingControllers];
}

uint64_t __58__PXStoryResourcesPreloadingCoordinator__updateInfosOrder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(a2, "priority")}];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v5 priority];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_invalidateInfosOrder
{
  updater = [(PXStoryResourcesPreloadingCoordinator *)self updater];
  [updater setNeedsUpdateOf:sel__updateInfosOrder];
}

- (void)removePreloadingController:(id)controller
{
  controllerCopy = controller;
  v4 = [PXStoryResourcesPreloadingCoordinator _infoForPreloadingController:"_infoForPreloadingController:createIfNeeded:" createIfNeeded:?];
  if (v4)
  {
    [controllerCopy setIsPreloadingEnabled:0];
    [controllerCopy unregisterChangeObserver:self context:PreloadinControllerObservationContext];
    [(NSMutableArray *)self->_infos removeObject:v4];
    [(PXStoryResourcesPreloadingCoordinator *)self _invalidatePreloadingControllers];
  }
}

- (void)addPreloadingController:(id)controller withPriority:(int64_t)priority
{
  v6 = [(PXStoryResourcesPreloadingCoordinator *)self _infoForPreloadingController:controller createIfNeeded:1];
  [v6 setPriority:priority];

  [(PXStoryResourcesPreloadingCoordinator *)self _invalidateInfosOrder];

  [(PXStoryResourcesPreloadingCoordinator *)self _invalidatePreloadingControllers];
}

- (id)_infoForPreloadingController:(id)controller createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_infos;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = (i + 1))
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        preloadingController = [v11 preloadingController];

        if (preloadingController == controllerCopy)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!v8 && neededCopy)
  {
    v8 = objc_alloc_init(_PXStoryPreloadingControllerInfo);
    [(_PXStoryPreloadingControllerInfo *)v8 setPreloadingController:controllerCopy];
    [controllerCopy registerChangeObserver:self context:PreloadinControllerObservationContext];
    [(NSMutableArray *)self->_infos addObject:v8];
  }

  return v8;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryResourcesPreloadingCoordinator;
  [(PXStoryResourcesPreloadingCoordinator *)&v4 didPerformChanges];
  updater = [(PXStoryResourcesPreloadingCoordinator *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryResourcesPreloadingCoordinator *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryResourcesPreloadingCoordinator;
  [(PXStoryResourcesPreloadingCoordinator *)&v6 performChanges:changesCopy];
}

- (PXStoryResourcesPreloadingCoordinator)initWithQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = PXStoryResourcesPreloadingCoordinator;
  v5 = [(PXStoryResourcesPreloadingCoordinator *)&v15 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = queueCopy;
      storyQueue = v5->_storyQueue;
      v5->_storyQueue = v6;
    }

    else
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
      storyQueue = v5->_storyQueue;
      v5->_storyQueue = v8;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    infos = v5->_infos;
    v5->_infos = v10;

    v12 = [[off_1E7721940 alloc] initWithTarget:v5 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v5->_updater;
    v5->_updater = v12;

    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateInfosOrder];
    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updatePreloadingControllers];
  }

  return v5;
}

@end
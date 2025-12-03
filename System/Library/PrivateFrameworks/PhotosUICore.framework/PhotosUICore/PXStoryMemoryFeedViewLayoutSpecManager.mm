@interface PXStoryMemoryFeedViewLayoutSpecManager
- (PXStoryMemoryFeedViewLayoutSpecManager)init;
- (PXStoryMemoryFeedViewLayoutSpecManager)initWithLayoutKind:(int64_t)kind extendedTraitCollection:(id)collection;
- (void)_invalidateSpec;
- (void)_updateSpec;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXStoryMemoryFeedViewLayoutSpecManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (MemoriesSpecManagerObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:92 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if (changeCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PXStoryMemoryFeedViewLayoutSpecManager_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774C5F8;
    v12[4] = self;
    [(PXStoryMemoryFeedViewLayoutSpecManager *)self performChanges:v12];
  }
}

- (void)_updateSpec
{
  memoriesSpecManager = [(PXStoryMemoryFeedViewLayoutSpecManager *)self memoriesSpecManager];
  spec = [memoriesSpecManager spec];

  v4 = [[PXStoryMemoryFeedViewLayoutSpec alloc] initWithMemoriesSpec:spec];
  [(PXFeedViewLayoutSpecManager *)self setSpec:v4];

  extendedTraitCollection = [spec extendedTraitCollection];
  [extendedTraitCollection layoutReferenceSize];
  v7 = v6;
  extendedTraitCollection2 = [spec extendedTraitCollection];
  rootExtendedTraitCollection = [extendedTraitCollection2 rootExtendedTraitCollection];
  [rootExtendedTraitCollection layoutReferenceSize];
  v11 = v7 == v10;
  spec2 = [(PXFeedViewLayoutSpecManager *)self spec];
  [spec2 setIsFullScreen:v11];
}

- (void)_invalidateSpec
{
  updater = [(PXStoryMemoryFeedViewLayoutSpecManager *)self updater];
  [updater setNeedsUpdateOf:sel__updateSpec];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryMemoryFeedViewLayoutSpecManager;
  [(PXStoryMemoryFeedViewLayoutSpecManager *)&v4 didPerformChanges];
  updater = [(PXStoryMemoryFeedViewLayoutSpecManager *)self updater];
  [updater updateIfNeeded];
}

- (PXStoryMemoryFeedViewLayoutSpecManager)initWithLayoutKind:(int64_t)kind extendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v8 = collectionCopy;
  if (kind == 1)
  {
    if (collectionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"layoutKind == PXStoryMemoryFeedLayoutKindVerticalFeed"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection != nil"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PXStoryMemoryFeedViewLayoutSpecManager;
  v9 = [(PXStoryMemoryFeedViewLayoutSpecManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_layoutKind = kind;
    v11 = [[PXMemoriesSpecManager alloc] initWithExtendedTraitCollection:v8 options:0 style:0];
    memoriesSpecManager = v10->_memoriesSpecManager;
    v10->_memoriesSpecManager = v11;

    [(PXMemoriesSpecManager *)v10->_memoriesSpecManager registerChangeObserver:v10 context:MemoriesSpecManagerObservationContext];
    v13 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v13;

    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateSpec];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__PXStoryMemoryFeedViewLayoutSpecManager_initWithLayoutKind_extendedTraitCollection___block_invoke;
    v18[3] = &unk_1E774C5F8;
    v19 = v10;
    [(PXStoryMemoryFeedViewLayoutSpecManager *)v19 performChanges:v18];
  }

  return v10;
}

- (PXStoryMemoryFeedViewLayoutSpecManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedViewLayoutSpecManager init]"}];

  abort();
}

@end
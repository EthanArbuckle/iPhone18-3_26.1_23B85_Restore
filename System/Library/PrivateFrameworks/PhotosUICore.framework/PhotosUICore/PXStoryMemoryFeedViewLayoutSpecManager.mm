@interface PXStoryMemoryFeedViewLayoutSpecManager
- (PXStoryMemoryFeedViewLayoutSpecManager)init;
- (PXStoryMemoryFeedViewLayoutSpecManager)initWithLayoutKind:(int64_t)a3 extendedTraitCollection:(id)a4;
- (void)_invalidateSpec;
- (void)_updateSpec;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
@end

@implementation PXStoryMemoryFeedViewLayoutSpecManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (MemoriesSpecManagerObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:92 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
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
  v3 = [(PXStoryMemoryFeedViewLayoutSpecManager *)self memoriesSpecManager];
  v13 = [v3 spec];

  v4 = [[PXStoryMemoryFeedViewLayoutSpec alloc] initWithMemoriesSpec:v13];
  [(PXFeedViewLayoutSpecManager *)self setSpec:v4];

  v5 = [v13 extendedTraitCollection];
  [v5 layoutReferenceSize];
  v7 = v6;
  v8 = [v13 extendedTraitCollection];
  v9 = [v8 rootExtendedTraitCollection];
  [v9 layoutReferenceSize];
  v11 = v7 == v10;
  v12 = [(PXFeedViewLayoutSpecManager *)self spec];
  [v12 setIsFullScreen:v11];
}

- (void)_invalidateSpec
{
  v2 = [(PXStoryMemoryFeedViewLayoutSpecManager *)self updater];
  [v2 setNeedsUpdateOf:sel__updateSpec];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryMemoryFeedViewLayoutSpecManager;
  [(PXStoryMemoryFeedViewLayoutSpecManager *)&v4 didPerformChanges];
  v3 = [(PXStoryMemoryFeedViewLayoutSpecManager *)self updater];
  [v3 updateIfNeeded];
}

- (PXStoryMemoryFeedViewLayoutSpecManager)initWithLayoutKind:(int64_t)a3 extendedTraitCollection:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 == 1)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"layoutKind == PXStoryMemoryFeedLayoutKindVerticalFeed"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"extendedTraitCollection != nil"}];

LABEL_3:
  v20.receiver = self;
  v20.super_class = PXStoryMemoryFeedViewLayoutSpecManager;
  v9 = [(PXStoryMemoryFeedViewLayoutSpecManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_layoutKind = a3;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedViewLayoutSpecManager init]"}];

  abort();
}

@end
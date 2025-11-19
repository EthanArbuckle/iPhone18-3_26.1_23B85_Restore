@interface PXStoryController
- (PXStoryController)init;
- (PXStoryController)initWithObservableModel:(id)a3;
- (PXStoryQueueParticipant)observableModel;
- (void)didPerformChanges;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
@end

@implementation PXStoryController

- (PXStoryQueueParticipant)observableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_observableModel);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (ModelObservationContext_171800 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryController.m" lineNumber:66 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXStoryController *)self handleModelChange:a4];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryController;
  [(PXStoryController *)&v4 didPerformChanges];
  v3 = [(PXStoryController *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryController;
  [(PXStoryController *)&v6 performChanges:v4];
}

- (PXStoryController)initWithObservableModel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXStoryController;
  v5 = [(PXStoryController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PXStoryController *)v5 copyLogConfigurationFrom:v4];
    v7 = objc_storeWeak(&v6->_observableModel, v4);
    [v4 registerChangeObserver:v6 context:ModelObservationContext_171800];

    WeakRetained = objc_loadWeakRetained(&v6->_observableModel);
    v9 = [WeakRetained storyQueue];
    storyQueue = v6->_storyQueue;
    v6->_storyQueue = v9;

    v11 = [[off_1E7721940 alloc] initWithTarget:v6 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v6->_updater;
    v6->_updater = v11;

    [(PXStoryController *)v6 configureUpdater:v6->_updater];
  }

  return v6;
}

- (PXStoryController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryController.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXStoryController init]"}];

  abort();
}

@end
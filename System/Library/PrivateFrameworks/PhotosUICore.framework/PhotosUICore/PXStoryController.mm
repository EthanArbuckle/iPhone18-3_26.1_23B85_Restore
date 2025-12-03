@interface PXStoryController
- (PXStoryController)init;
- (PXStoryController)initWithObservableModel:(id)model;
- (PXStoryQueueParticipant)observableModel;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
@end

@implementation PXStoryController

- (PXStoryQueueParticipant)observableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_observableModel);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_171800 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryController.m" lineNumber:66 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  [(PXStoryController *)self handleModelChange:change];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryController;
  [(PXStoryController *)&v4 didPerformChanges];
  updater = [(PXStoryController *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryController *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryController;
  [(PXStoryController *)&v6 performChanges:changesCopy];
}

- (PXStoryController)initWithObservableModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PXStoryController;
  v5 = [(PXStoryController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(PXStoryController *)v5 copyLogConfigurationFrom:modelCopy];
    v7 = objc_storeWeak(&v6->_observableModel, modelCopy);
    [modelCopy registerChangeObserver:v6 context:ModelObservationContext_171800];

    WeakRetained = objc_loadWeakRetained(&v6->_observableModel);
    storyQueue = [WeakRetained storyQueue];
    storyQueue = v6->_storyQueue;
    v6->_storyQueue = storyQueue;

    v11 = [[off_1E7721940 alloc] initWithTarget:v6 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v6->_updater;
    v6->_updater = v11;

    [(PXStoryController *)v6 configureUpdater:v6->_updater];
  }

  return v6;
}

- (PXStoryController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryController.m" lineNumber:22 description:{@"%s is not available as initializer", "-[PXStoryController init]"}];

  abort();
}

@end
@interface SBWaitForSceneContentAvailableTransaction
- (SBWaitForSceneContentAvailableTransaction)initWithSceneHandle:(id)handle manualListener:(BOOL)listener;
- (void)_begin;
- (void)_didComplete;
- (void)_noteSceneContentReadinessDidChange:(BOOL)change;
- (void)dealloc;
- (void)noteSceneContentIsReady:(BOOL)ready;
@end

@implementation SBWaitForSceneContentAvailableTransaction

- (SBWaitForSceneContentAvailableTransaction)initWithSceneHandle:(id)handle manualListener:(BOOL)listener
{
  handleCopy = handle;
  if (!handleCopy)
  {
    [SBWaitForSceneContentAvailableTransaction initWithSceneHandle:a2 manualListener:self];
  }

  v12.receiver = self;
  v12.super_class = SBWaitForSceneContentAvailableTransaction;
  v9 = [(SBTransaction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sceneHandle, handle);
    v10->_manualListener = listener;
    v10->_isContentStateReady = [handleCopy isContentReady];
    if (!v10->_manualListener)
    {
      [(SBSceneHandle *)v10->_sceneHandle addObserver:v10];
    }
  }

  return v10;
}

- (void)dealloc
{
  [(SBSceneHandle *)self->_sceneHandle removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBWaitForSceneContentAvailableTransaction;
  [(SBWaitForSceneContentAvailableTransaction *)&v3 dealloc];
}

- (void)noteSceneContentIsReady:(BOOL)ready
{
  if (self->_manualListener)
  {
    readyCopy = ready;
    if (([(SBWaitForSceneContentAvailableTransaction *)self isComplete]& 1) == 0)
    {

      [(SBWaitForSceneContentAvailableTransaction *)self _noteSceneContentReadinessDidChange:readyCopy];
    }
  }
}

- (void)_begin
{
  if (!self->_isContentStateReady)
  {
    [(SBWaitForSceneContentAvailableTransaction *)self addMilestone:@"SBWaitForSceneContentAvailableMilestone"];
  }

  v3.receiver = self;
  v3.super_class = SBWaitForSceneContentAvailableTransaction;
  [(SBWaitForSceneContentAvailableTransaction *)&v3 _begin];
}

- (void)_didComplete
{
  [(SBSceneHandle *)self->_sceneHandle removeObserver:self];
  v3.receiver = self;
  v3.super_class = SBWaitForSceneContentAvailableTransaction;
  [(SBWaitForSceneContentAvailableTransaction *)&v3 _didComplete];
}

- (void)_noteSceneContentReadinessDidChange:(BOOL)change
{
  if (self->_isContentStateReady != change)
  {
    self->_isContentStateReady = change;
    if (change)
    {
      [(SBWaitForSceneContentAvailableTransaction *)self evaluateMilestone:@"SBWaitForSceneContentAvailableMilestone" withEvaluator:&__block_literal_global_220];
    }
  }
}

- (void)initWithSceneHandle:(uint64_t)a1 manualListener:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBWaitForSceneContentAvailableTransaction.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"sceneHandle"}];
}

@end
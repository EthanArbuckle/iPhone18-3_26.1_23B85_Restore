@interface PLProgressFollower
- (PLProgressFollower)initWithSourceProgress:(id)progress progressHandler:(id)handler;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PLProgressFollower

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = objectCopy;
  os_unfair_lock_lock(&self->_lock);
  v14 = self->_outputProgress;
  v15 = _Block_copy(self->_progressHandler);
  invalidated = self->_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (context == @"PLProgressFollowerFractionCompletedContext")
  {
    if (!invalidated)
    {
      if (v15)
      {
        v15[2](v15, v13);
      }

      else
      {
        totalUnitCount = [v13 totalUnitCount];
        if (totalUnitCount != [(NSProgress *)v14 totalUnitCount])
        {
          -[NSProgress setTotalUnitCount:](v14, "setTotalUnitCount:", [v13 totalUnitCount]);
        }

        [v13 fractionCompleted];
        [(NSProgress *)v14 setCompletedUnitCount:(v18 * [(NSProgress *)v14 totalUnitCount])];
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = PLProgressFollower;
    [(PLProgressFollower *)&v19 observeValueForKeyPath:pathCopy ofObject:v13 change:changeCopy context:context];
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLProgressFollower.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"_invalidated"}];
  }

  v5.receiver = self;
  v5.super_class = PLProgressFollower;
  [(PLProgressFollower *)&v5 dealloc];
}

uint64_t __32__PLProgressFollower_invalidate__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) removeObserver:*(a1 + 32) forKeyPath:@"fractionCompleted" context:@"PLProgressFollowerFractionCompletedContext"];
  *(*(a1 + 32) + 16) = 1;
  return result;
}

- (PLProgressFollower)initWithSourceProgress:(id)progress progressHandler:(id)handler
{
  progressCopy = progress;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = PLProgressFollower;
  v9 = [(PLProgressFollower *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_sourceProgress, progress);
    v11 = _Block_copy(handlerCopy);
    progressHandler = v10->_progressHandler;
    v10->_progressHandler = v11;

    if (!handlerCopy)
    {
      v13 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(progressCopy, "totalUnitCount")}];
      outputProgress = v10->_outputProgress;
      v10->_outputProgress = v13;

      -[NSProgress setCompletedUnitCount:](v10->_outputProgress, "setCompletedUnitCount:", [progressCopy completedUnitCount]);
    }

    [(NSProgress *)v10->_sourceProgress addObserver:v10 forKeyPath:@"fractionCompleted" options:1 context:@"PLProgressFollowerFractionCompletedContext"];
  }

  return v10;
}

@end
@interface PXStoryProducerMonitor
- (PXStoryProducerMonitor)initWithStoryQueue:(id)queue;
- (double)currentTime;
- (void)_invalidateIsLikelyToKeepUp;
- (void)_updateIsLikelyToKeepUp;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)producerDidProduceResult:(id)result;
- (void)reset;
- (void)setEstimatedFractionCompletedPlaybackSpeed:(float)speed;
- (void)setIsLikelyToKeepUp:(BOOL)up;
- (void)setLastFractionCompleted:(float)completed;
- (void)setLastTime:(double)time;
- (void)setStartTime:(double)time;
@end

@implementation PXStoryProducerMonitor

- (void)_updateIsLikelyToKeepUp
{
  [(PXStoryProducerMonitor *)self startTime];
  v4 = v3;
  [(PXStoryProducerMonitor *)self lastTime];
  if (v5 > v4)
  {
    v6 = v5;
    [(PXStoryProducerMonitor *)self lastFractionCompleted];
    v8 = v7;
    v9 = v7 / (v6 - v4);
    [(PXStoryProducerMonitor *)self estimatedFractionCompletedPlaybackSpeed];
    v11 = v8 >= 1.0 || v9 > v10;

    [(PXStoryProducerMonitor *)self setIsLikelyToKeepUp:v11];
  }
}

- (void)_invalidateIsLikelyToKeepUp
{
  updater = [(PXStoryProducerMonitor *)self updater];
  [updater setNeedsUpdateOf:sel__updateIsLikelyToKeepUp];
}

- (void)reset
{
  [(PXStoryProducerMonitor *)self currentTime];
  [(PXStoryProducerMonitor *)self setStartTime:?];
  [(PXStoryProducerMonitor *)self setLastFractionCompleted:0.0];

  [(PXStoryProducerMonitor *)self setEstimatedFractionCompletedPlaybackSpeed:0.0];
}

- (void)producerDidProduceResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isDegraded])
  {
    fractionCompleted = [resultCopy fractionCompleted];
    [fractionCompleted floatValue];
    [(PXStoryProducerMonitor *)self setLastFractionCompleted:?];
  }

  else
  {
    LODWORD(v4) = 1.0;
    [(PXStoryProducerMonitor *)self setLastFractionCompleted:v4];
  }

  [(PXStoryProducerMonitor *)self currentTime];
  [(PXStoryProducerMonitor *)self setLastTime:?];
}

- (void)setEstimatedFractionCompletedPlaybackSpeed:(float)speed
{
  if (self->_estimatedFractionCompletedPlaybackSpeed != speed)
  {
    self->_estimatedFractionCompletedPlaybackSpeed = speed;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryProducerMonitor;
  [(PXStoryProducerMonitor *)&v4 didPerformChanges];
  updater = [(PXStoryProducerMonitor *)self updater];
  [updater updateIfNeeded];
}

- (double)currentTime
{
  v2 = +[PXStoryProducerMonitor currentDateForTesting];
  v3 = v2;
  if (!v2)
  {
    v2 = MEMORY[0x1E695DF00];
  }

  [v2 timeIntervalSinceReferenceDate];
  v5 = v4;

  return v5;
}

- (void)setIsLikelyToKeepUp:(BOOL)up
{
  if (self->_isLikelyToKeepUp != up)
  {
    self->_isLikelyToKeepUp = up;
    [(PXStoryProducerMonitor *)self signalChange:1];
  }
}

- (void)setLastTime:(double)time
{
  if (self->_lastTime != time)
  {
    self->_lastTime = time;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)setStartTime:(double)time
{
  if (self->_startTime != time)
  {
    self->_startTime = time;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)setLastFractionCompleted:(float)completed
{
  if (self->_lastFractionCompleted != completed)
  {
    self->_lastFractionCompleted = completed;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  storyQueue = [(PXStoryProducerMonitor *)self storyQueue];
  dispatch_assert_queue_V2(storyQueue);

  v6.receiver = self;
  v6.super_class = PXStoryProducerMonitor;
  [(PXStoryProducerMonitor *)&v6 performChanges:changesCopy];
}

- (PXStoryProducerMonitor)initWithStoryQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = PXStoryProducerMonitor;
  v5 = [(PXStoryProducerMonitor *)&v14 init];
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

    [(PXStoryProducerMonitor *)v5 currentTime];
    v5->_startTime = v10;
    v11 = [[off_1E7721940 alloc] initWithTarget:v5 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v5->_updater;
    v5->_updater = v11;

    [(PXUpdater *)v5->_updater addUpdateSelector:sel__updateIsLikelyToKeepUp];
  }

  return v5;
}

@end
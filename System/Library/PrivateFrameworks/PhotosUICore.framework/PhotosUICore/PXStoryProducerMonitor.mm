@interface PXStoryProducerMonitor
- (PXStoryProducerMonitor)initWithStoryQueue:(id)a3;
- (double)currentTime;
- (void)_invalidateIsLikelyToKeepUp;
- (void)_updateIsLikelyToKeepUp;
- (void)didPerformChanges;
- (void)performChanges:(id)a3;
- (void)producerDidProduceResult:(id)a3;
- (void)reset;
- (void)setEstimatedFractionCompletedPlaybackSpeed:(float)a3;
- (void)setIsLikelyToKeepUp:(BOOL)a3;
- (void)setLastFractionCompleted:(float)a3;
- (void)setLastTime:(double)a3;
- (void)setStartTime:(double)a3;
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
  v2 = [(PXStoryProducerMonitor *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsLikelyToKeepUp];
}

- (void)reset
{
  [(PXStoryProducerMonitor *)self currentTime];
  [(PXStoryProducerMonitor *)self setStartTime:?];
  [(PXStoryProducerMonitor *)self setLastFractionCompleted:0.0];

  [(PXStoryProducerMonitor *)self setEstimatedFractionCompletedPlaybackSpeed:0.0];
}

- (void)producerDidProduceResult:(id)a3
{
  v6 = a3;
  if ([v6 isDegraded])
  {
    v5 = [v6 fractionCompleted];
    [v5 floatValue];
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

- (void)setEstimatedFractionCompletedPlaybackSpeed:(float)a3
{
  if (self->_estimatedFractionCompletedPlaybackSpeed != a3)
  {
    self->_estimatedFractionCompletedPlaybackSpeed = a3;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXStoryProducerMonitor;
  [(PXStoryProducerMonitor *)&v4 didPerformChanges];
  v3 = [(PXStoryProducerMonitor *)self updater];
  [v3 updateIfNeeded];
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

- (void)setIsLikelyToKeepUp:(BOOL)a3
{
  if (self->_isLikelyToKeepUp != a3)
  {
    self->_isLikelyToKeepUp = a3;
    [(PXStoryProducerMonitor *)self signalChange:1];
  }
}

- (void)setLastTime:(double)a3
{
  if (self->_lastTime != a3)
  {
    self->_lastTime = a3;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)setStartTime:(double)a3
{
  if (self->_startTime != a3)
  {
    self->_startTime = a3;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)setLastFractionCompleted:(float)a3
{
  if (self->_lastFractionCompleted != a3)
  {
    self->_lastFractionCompleted = a3;
    [(PXStoryProducerMonitor *)self _invalidateIsLikelyToKeepUp];
  }
}

- (void)performChanges:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryProducerMonitor *)self storyQueue];
  dispatch_assert_queue_V2(v5);

  v6.receiver = self;
  v6.super_class = PXStoryProducerMonitor;
  [(PXStoryProducerMonitor *)&v6 performChanges:v4];
}

- (PXStoryProducerMonitor)initWithStoryQueue:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXStoryProducerMonitor;
  v5 = [(PXStoryProducerMonitor *)&v14 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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
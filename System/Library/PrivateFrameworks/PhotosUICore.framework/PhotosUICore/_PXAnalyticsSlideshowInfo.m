@interface _PXAnalyticsSlideshowInfo
- (void)pauseWithEvent:(id)a3;
- (void)unpauseWithEvent:(id)a3;
@end

@implementation _PXAnalyticsSlideshowInfo

- (void)unpauseWithEvent:(id)a3
{
  if (self->_lastPauseEvent)
  {
    v4 = [a3 timestamp];
    v5 = [(CPAnalyticsEventProtocol *)self->_lastPauseEvent timestamp];
    [v4 timeIntervalSinceDate:v5];
    self->_timePaused = v6 + self->_timePaused;

    lastPauseEvent = self->_lastPauseEvent;
    self->_lastPauseEvent = 0;
  }
}

- (void)pauseWithEvent:(id)a3
{
  v5 = a3;
  if (self->_lastPauseEvent != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_lastPauseEvent, a3);
    v5 = v6;
    ++self->_pauseCount;
  }
}

@end
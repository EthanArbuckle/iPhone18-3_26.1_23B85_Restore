@interface _PXAnalyticsSlideshowInfo
- (void)pauseWithEvent:(id)event;
- (void)unpauseWithEvent:(id)event;
@end

@implementation _PXAnalyticsSlideshowInfo

- (void)unpauseWithEvent:(id)event
{
  if (self->_lastPauseEvent)
  {
    timestamp = [event timestamp];
    timestamp2 = [(CPAnalyticsEventProtocol *)self->_lastPauseEvent timestamp];
    [timestamp timeIntervalSinceDate:timestamp2];
    self->_timePaused = v6 + self->_timePaused;

    lastPauseEvent = self->_lastPauseEvent;
    self->_lastPauseEvent = 0;
  }
}

- (void)pauseWithEvent:(id)event
{
  eventCopy = event;
  if (self->_lastPauseEvent != eventCopy)
  {
    v6 = eventCopy;
    objc_storeStrong(&self->_lastPauseEvent, event);
    eventCopy = v6;
    ++self->_pauseCount;
  }
}

@end
@interface TVPPlaybackReportingEvent
- (TVPPlaybackReportingEvent)startEvent;
- (double)duration;
@end

@implementation TVPPlaybackReportingEvent

- (double)duration
{
  if ([(TVPPlaybackReportingEvent *)self type]== 1 || (v3 = 0.0, [(TVPPlaybackReportingEvent *)self type]== 2))
  {
    [(TVPPlaybackReportingEvent *)self timestamp];
    v5 = v4;
    v6 = [(TVPPlaybackReportingEvent *)self startEvent];
    [v6 timestamp];
    v3 = v5 - v7;
  }

  return v3;
}

- (TVPPlaybackReportingEvent)startEvent
{
  WeakRetained = objc_loadWeakRetained(&self->_startEvent);

  return WeakRetained;
}

@end
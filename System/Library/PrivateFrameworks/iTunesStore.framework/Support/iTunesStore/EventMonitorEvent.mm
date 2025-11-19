@interface EventMonitorEvent
- (EventMonitorEvent)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EventMonitorEvent

- (EventMonitorEvent)init
{
  v3.receiver = self;
  v3.super_class = EventMonitorEvent;
  result = [(EventMonitorEvent *)&v3 init];
  if (result)
  {
    result->_lastOccurrenceCheckTime = -1.79769313e308;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 2) = self->_pollInterval;
  *(result + 24) = self->_shouldKeepDaemonAlive;
  return result;
}

@end
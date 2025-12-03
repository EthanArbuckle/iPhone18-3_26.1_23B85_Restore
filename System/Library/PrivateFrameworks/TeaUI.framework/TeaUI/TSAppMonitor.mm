@interface TSAppMonitor
- (void)triggerWithEvent:(int64_t)event;
@end

@implementation TSAppMonitor

- (void)triggerWithEvent:(int64_t)event
{
  selfCopy = self;
  AppMonitor.trigger(event:)(event);
}

@end
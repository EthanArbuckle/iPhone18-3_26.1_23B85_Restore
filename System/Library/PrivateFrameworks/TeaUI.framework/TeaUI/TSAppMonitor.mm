@interface TSAppMonitor
- (void)triggerWithEvent:(int64_t)a3;
@end

@implementation TSAppMonitor

- (void)triggerWithEvent:(int64_t)a3
{
  v4 = self;
  AppMonitor.trigger(event:)(a3);
}

@end
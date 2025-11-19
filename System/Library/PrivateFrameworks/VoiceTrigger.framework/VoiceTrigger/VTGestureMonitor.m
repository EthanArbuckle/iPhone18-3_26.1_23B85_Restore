@interface VTGestureMonitor
+ (id)defaultGestureMonitor;
- (VTGestureMonitorDelegate)delegate;
@end

@implementation VTGestureMonitor

+ (id)defaultGestureMonitor
{
  v2 = objc_alloc_init(VTGestureMonitorPhone);

  return v2;
}

- (VTGestureMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
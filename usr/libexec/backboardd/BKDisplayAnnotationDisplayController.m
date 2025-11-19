@interface BKDisplayAnnotationDisplayController
- (BKDisplayAnnotationDisplayController)init;
@end

@implementation BKDisplayAnnotationDisplayController

- (BKDisplayAnnotationDisplayController)init
{
  v9.receiver = self;
  v9.super_class = BKDisplayAnnotationDisplayController;
  v2 = [(BKDisplayAnnotationDisplayController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [BKCADisplayMonitor alloc];
    v5 = sub_1000525A0();
    v6 = [(BKCADisplayMonitor *)v4 initWithLog:v5];
    displayMonitor = v3->_displayMonitor;
    v3->_displayMonitor = v6;
  }

  return v3;
}

@end
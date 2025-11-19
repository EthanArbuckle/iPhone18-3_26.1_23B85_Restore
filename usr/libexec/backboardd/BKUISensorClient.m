@interface BKUISensorClient
- (void)dealloc;
@end

@implementation BKUISensorClient

- (void)dealloc
{
  [(BSProcessDeathWatcher *)self->_deathWatcher invalidate];
  v3.receiver = self;
  v3.super_class = BKUISensorClient;
  [(BKUISensorClient *)&v3 dealloc];
}

@end
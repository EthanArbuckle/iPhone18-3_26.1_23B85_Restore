@interface STAccountNotifier
- (STAccountNotifier)init;
- (void)registerObserver:(id)a3;
@end

@implementation STAccountNotifier

- (STAccountNotifier)init
{
  v3.receiver = self;
  v3.super_class = STAccountNotifier;
  return [(STAccountNotifier *)&v3 init];
}

- (void)registerObserver:(id)a3
{
  [(STAccountNotifier *)self setObserver:a3];
  v4 = [[STAccountStateMonitor alloc] initWithDelegate:self];
  [(STAccountNotifier *)self setMonitor:v4];
}

@end
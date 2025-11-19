@interface RestartableBlockOperation
- (void)main;
@end

@implementation RestartableBlockOperation

- (void)main
{
  v2 = self;
  RestartableBlockOperation.main()();
}

@end
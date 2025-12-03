@interface RestartableBlockOperation
- (void)main;
@end

@implementation RestartableBlockOperation

- (void)main
{
  selfCopy = self;
  RestartableBlockOperation.main()();
}

@end
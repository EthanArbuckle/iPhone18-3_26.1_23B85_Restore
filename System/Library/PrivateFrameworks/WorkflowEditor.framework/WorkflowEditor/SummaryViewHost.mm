@interface SummaryViewHost
- (void)willMoveToWindow:(id)window;
@end

@implementation SummaryViewHost

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_2745562CC(window);
}

@end
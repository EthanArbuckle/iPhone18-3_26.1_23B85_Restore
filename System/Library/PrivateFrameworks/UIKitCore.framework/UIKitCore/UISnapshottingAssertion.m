@interface UISnapshottingAssertion
- (void)dealloc;
@end

@implementation UISnapshottingAssertion

- (void)dealloc
{
  v3 = +[UISnapshottingAssertionManager sharedInstance];
  [v3 relinquishAssertion:self];

  v4.receiver = self;
  v4.super_class = UISnapshottingAssertion;
  [(UISnapshottingAssertion *)&v4 dealloc];
}

@end
@interface GQUWebViewWaiter
+ (id)waiter;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)waitForWebViewToFinishLoading:(id)loading;
@end

@implementation GQUWebViewWaiter

+ (id)waiter
{
  result = qword_A42A0;
  if (!qword_A42A0)
  {
    result = objc_alloc_init(self);
    qword_A42A0 = result;
  }

  return result;
}

- (void)waitForWebViewToFinishLoading:(id)loading
{
  [loading addObserver:self forKeyPath:@"loading" options:0 context:0];
  if ([loading isLoading])
  {
    while ([loading isLoading])
    {
      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.0, 1u);
    }
  }

  [loading removeObserver:self forKeyPath:@"loading"];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

@end
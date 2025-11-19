@interface GQUWebViewWaiter
+ (id)waiter;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)waitForWebViewToFinishLoading:(id)a3;
@end

@implementation GQUWebViewWaiter

+ (id)waiter
{
  result = qword_A42A0;
  if (!qword_A42A0)
  {
    result = objc_alloc_init(a1);
    qword_A42A0 = result;
  }

  return result;
}

- (void)waitForWebViewToFinishLoading:(id)a3
{
  [a3 addObserver:self forKeyPath:@"loading" options:0 context:0];
  if ([a3 isLoading])
  {
    while ([a3 isLoading])
    {
      CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.0, 1u);
    }
  }

  [a3 removeObserver:self forKeyPath:@"loading"];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

@end
@interface NSObject(WebNSObjectExtras)
+ (WebMainThreadInvoker)_webkit_invokeOnMainThread;
- (WebMainThreadInvoker)_webkit_invokeOnMainThread;
@end

@implementation NSObject(WebNSObjectExtras)

+ (WebMainThreadInvoker)_webkit_invokeOnMainThread
{
  result = [[WebMainThreadInvoker alloc] initWithTarget:self];
  if (result)
  {
    v2 = result;
    v3 = result;
    return v2;
  }

  return result;
}

- (WebMainThreadInvoker)_webkit_invokeOnMainThread
{
  result = [[WebMainThreadInvoker alloc] initWithTarget:self];
  if (result)
  {
    v2 = result;
    v3 = result;
    return v2;
  }

  return result;
}

@end
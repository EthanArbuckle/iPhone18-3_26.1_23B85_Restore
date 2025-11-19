@interface NSOperationQueue(WLKAdditions)
+ (id)wlkDefaultConcurrentQueue;
+ (id)wlkDefaultQueue;
@end

@implementation NSOperationQueue(WLKAdditions)

+ (id)wlkDefaultConcurrentQueue
{
  if (wlkDefaultConcurrentQueue___once != -1)
  {
    +[NSOperationQueue(WLKAdditions) wlkDefaultConcurrentQueue];
  }

  v1 = wlkDefaultConcurrentQueue___wlkDefaultConQueue;

  return v1;
}

+ (id)wlkDefaultQueue
{
  if (wlkDefaultQueue___once != -1)
  {
    +[NSOperationQueue(WLKAdditions) wlkDefaultQueue];
  }

  v1 = wlkDefaultQueue___wlkDefaultQueue;

  return v1;
}

@end
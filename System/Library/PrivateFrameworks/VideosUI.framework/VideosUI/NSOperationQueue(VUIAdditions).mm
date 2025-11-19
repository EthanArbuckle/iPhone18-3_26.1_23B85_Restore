@interface NSOperationQueue(VUIAdditions)
+ (id)vuiDefaultQueue;
@end

@implementation NSOperationQueue(VUIAdditions)

+ (id)vuiDefaultQueue
{
  if (vuiDefaultQueue__once != -1)
  {
    +[NSOperationQueue(VUIAdditions) vuiDefaultQueue];
  }

  v1 = vuiDefaultQueue__vuiDefaultQueue;

  return v1;
}

@end
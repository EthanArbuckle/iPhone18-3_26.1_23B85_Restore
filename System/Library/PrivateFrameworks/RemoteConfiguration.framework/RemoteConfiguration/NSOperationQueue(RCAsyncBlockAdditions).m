@interface NSOperationQueue(RCAsyncBlockAdditions)
- (void)rc_addAsyncOperationWithBlock:()RCAsyncBlockAdditions;
@end

@implementation NSOperationQueue(RCAsyncBlockAdditions)

- (void)rc_addAsyncOperationWithBlock:()RCAsyncBlockAdditions
{
  v2 = [RCAsyncBlockOperation asyncBlockOperationWithBlock:?];
  [a1 addOperation:v2];
}

@end
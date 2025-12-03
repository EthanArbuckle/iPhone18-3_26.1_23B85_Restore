@interface NSOperationQueue(RCAsyncBlockAdditions)
- (void)rc_addAsyncOperationWithBlock:()RCAsyncBlockAdditions;
@end

@implementation NSOperationQueue(RCAsyncBlockAdditions)

- (void)rc_addAsyncOperationWithBlock:()RCAsyncBlockAdditions
{
  v2 = [RCAsyncBlockOperation asyncBlockOperationWithBlock:?];
  [self addOperation:v2];
}

@end
@interface _PUScrollViewPageSwipeTestContext
- (CGPoint)originContentOffset;
- (_PUScrollViewPageSwipeTestContext)init;
@end

@implementation _PUScrollViewPageSwipeTestContext

- (CGPoint)originContentOffset
{
  x = self->_originContentOffset.x;
  y = self->_originContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (_PUScrollViewPageSwipeTestContext)init
{
  v3.receiver = self;
  v3.super_class = _PUScrollViewPageSwipeTestContext;
  result = [(_PUScrollViewPageSwipeTestContext *)&v3 init];
  if (result)
  {
    result->_currentDirection = 1;
  }

  return result;
}

@end
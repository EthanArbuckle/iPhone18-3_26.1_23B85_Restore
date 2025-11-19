@interface OZJSBehavior
+ (id)behaviorWithBehavior:(void *)a3;
- (OZJSBehavior)initWithBehavior:(void *)a3;
- (void)setStartTime:(float)a3;
@end

@implementation OZJSBehavior

+ (id)behaviorWithBehavior:(void *)a3
{
  v3 = [[OZJSBehavior alloc] initWithBehavior:a3];

  return v3;
}

- (OZJSBehavior)initWithBehavior:(void *)a3
{
  v5.receiver = self;
  v5.super_class = OZJSBehavior;
  result = [(OZJSBehavior *)&v5 init];
  if (result)
  {
    result->_behavior = a3;
  }

  return result;
}

- (void)setStartTime:(float)a3
{
  memset(&v11, 0, sizeof(v11));
  PC_CMTimeMakeWithSecondsRoundToNearest(30, &v11, a3);
  (*(*self->_behavior + 608))(&v8);
  v6 = v9;
  v7 = v10;
  v5 = v11;
  OZChannelObjectRootBase::setTimeExtent((self->_behavior + 56), &v5, 0);
  behavior = self->_behavior;
  v8 = v11;
  OZChannelObjectRootBase::setTimeOffset((behavior + 56), &v8, 0);
}

@end
@interface OZJSBehavior
+ (id)behaviorWithBehavior:(void *)behavior;
- (OZJSBehavior)initWithBehavior:(void *)behavior;
- (void)setStartTime:(float)time;
@end

@implementation OZJSBehavior

+ (id)behaviorWithBehavior:(void *)behavior
{
  v3 = [[OZJSBehavior alloc] initWithBehavior:behavior];

  return v3;
}

- (OZJSBehavior)initWithBehavior:(void *)behavior
{
  v5.receiver = self;
  v5.super_class = OZJSBehavior;
  result = [(OZJSBehavior *)&v5 init];
  if (result)
  {
    result->_behavior = behavior;
  }

  return result;
}

- (void)setStartTime:(float)time
{
  memset(&v11, 0, sizeof(v11));
  PC_CMTimeMakeWithSecondsRoundToNearest(30, &v11, time);
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
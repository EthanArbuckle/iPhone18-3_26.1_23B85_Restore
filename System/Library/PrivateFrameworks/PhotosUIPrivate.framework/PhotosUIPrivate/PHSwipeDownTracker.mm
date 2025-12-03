@interface PHSwipeDownTracker
- (BOOL)shouldFinishDismissal;
- (CGAffineTransform)trackedTransform;
- (CGPoint)trackedCenter;
- (CGRect)trackedBounds;
- (PHDisplayVelocity)trackedVelocity;
- (PHSwipeDownTracker)init;
- (double)dismissalProgress;
- (double)finalAnimationDuration;
- (double)finalAnimationSpringDamping;
- (void)startTrackingCenter:(CGPoint)center bounds:(CGRect)bounds transform:(CGAffineTransform *)transform withInitialGestureLocation:(CGPoint)location;
- (void)trackGestureTranslation:(CGPoint)translation velocity:(CGPoint)velocity;
@end

@implementation PHSwipeDownTracker

- (double)finalAnimationSpringDamping
{
  impl = [(PHSwipeDownTracker *)self impl];
  [impl finalAnimationSpringDamping];
  v4 = v3;

  return v4;
}

- (double)finalAnimationDuration
{
  impl = [(PHSwipeDownTracker *)self impl];
  [impl finalAnimationDuration];
  v4 = v3;

  return v4;
}

- (PHDisplayVelocity)trackedVelocity
{
  impl = [(PHSwipeDownTracker *)self impl];
  [impl trackedVelocity];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- (CGAffineTransform)trackedTransform
{
  impl = [(PHSwipeDownTracker *)self impl];
  if (impl)
  {
    v6 = impl;
    [impl trackedTransform];
    impl = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGRect)trackedBounds
{
  impl = [(PHSwipeDownTracker *)self impl];
  [impl trackedBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)trackedCenter
{
  impl = [(PHSwipeDownTracker *)self impl];
  [impl trackedCenter];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)shouldFinishDismissal
{
  impl = [(PHSwipeDownTracker *)self impl];
  shouldFinishDismissal = [impl shouldFinishDismissal];

  return shouldFinishDismissal;
}

- (double)dismissalProgress
{
  impl = [(PHSwipeDownTracker *)self impl];
  [impl dismissalProgress];
  v4 = v3;

  return v4;
}

- (void)trackGestureTranslation:(CGPoint)translation velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = translation.y;
  v7 = translation.x;
  impl = [(PHSwipeDownTracker *)self impl];
  [impl trackGestureTranslation:v7 velocity:{v6, x, y}];
}

- (void)startTrackingCenter:(CGPoint)center bounds:(CGRect)bounds transform:(CGAffineTransform *)transform withInitialGestureLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  height = bounds.size.height;
  width = bounds.size.width;
  v11 = bounds.origin.y;
  v12 = bounds.origin.x;
  v13 = center.y;
  v14 = center.x;
  impl = [(PHSwipeDownTracker *)self impl];
  v16 = *&transform->c;
  v17[0] = *&transform->a;
  v17[1] = v16;
  v17[2] = *&transform->tx;
  [impl startTrackingCenter:v17 bounds:v14 transform:v13 withInitialGestureLocation:v12 velocity:{v11, width, height, x, y, *MEMORY[0x1E69C48D8], *(MEMORY[0x1E69C48D8] + 8)}];
}

- (PHSwipeDownTracker)init
{
  v6.receiver = self;
  v6.super_class = PHSwipeDownTracker;
  v2 = [(PHSwipeDownTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C3B58]);
    impl = v2->_impl;
    v2->_impl = v3;
  }

  return v2;
}

@end
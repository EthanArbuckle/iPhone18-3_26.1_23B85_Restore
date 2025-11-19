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
- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6;
- (void)trackGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4;
@end

@implementation PHSwipeDownTracker

- (double)finalAnimationSpringDamping
{
  v2 = [(PHSwipeDownTracker *)self impl];
  [v2 finalAnimationSpringDamping];
  v4 = v3;

  return v4;
}

- (double)finalAnimationDuration
{
  v2 = [(PHSwipeDownTracker *)self impl];
  [v2 finalAnimationDuration];
  v4 = v3;

  return v4;
}

- (PHDisplayVelocity)trackedVelocity
{
  v2 = [(PHSwipeDownTracker *)self impl];
  [v2 trackedVelocity];
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
  v4 = [(PHSwipeDownTracker *)self impl];
  if (v4)
  {
    v6 = v4;
    [v4 trackedTransform];
    v4 = v6;
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
  v2 = [(PHSwipeDownTracker *)self impl];
  [v2 trackedBounds];
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
  v2 = [(PHSwipeDownTracker *)self impl];
  [v2 trackedCenter];
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
  v2 = [(PHSwipeDownTracker *)self impl];
  v3 = [v2 shouldFinishDismissal];

  return v3;
}

- (double)dismissalProgress
{
  v2 = [(PHSwipeDownTracker *)self impl];
  [v2 dismissalProgress];
  v4 = v3;

  return v4;
}

- (void)trackGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v8 = [(PHSwipeDownTracker *)self impl];
  [v8 trackGestureTranslation:v7 velocity:{v6, x, y}];
}

- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v13 = a3.y;
  v14 = a3.x;
  v15 = [(PHSwipeDownTracker *)self impl];
  v16 = *&a5->c;
  v17[0] = *&a5->a;
  v17[1] = v16;
  v17[2] = *&a5->tx;
  [v15 startTrackingCenter:v17 bounds:v14 transform:v13 withInitialGestureLocation:v12 velocity:{v11, width, height, x, y, *MEMORY[0x1E69C48D8], *(MEMORY[0x1E69C48D8] + 8)}];
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
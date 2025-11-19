@interface PXSwipeDownTracker
- (CGAffineTransform)trackedTransform;
- (CGPoint)trackedCenter;
- (CGRect)trackedBounds;
- (PXDisplayVelocity)trackedVelocity;
- (PXSwipeDownTracker)initWithOptions:(unint64_t)a3;
- (void)setTrackedTransform:(CGAffineTransform *)a3;
- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6 velocity:(CGPoint)a7;
- (void)trackGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4;
@end

@implementation PXSwipeDownTracker

- (PXDisplayVelocity)trackedVelocity
{
  x = self->_trackedVelocity.x;
  y = self->_trackedVelocity.y;
  scale = self->_trackedVelocity.scale;
  rotation = self->_trackedVelocity.rotation;
  result.rotation = rotation;
  result.scale = scale;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setTrackedTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_trackedTransform.c = *&a3->c;
  *&self->_trackedTransform.tx = v4;
  *&self->_trackedTransform.a = v3;
}

- (CGAffineTransform)trackedTransform
{
  v3 = *&self[5].ty;
  *&retstr->a = *&self[5].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].b;
  return self;
}

- (CGRect)trackedBounds
{
  x = self->_trackedBounds.origin.x;
  y = self->_trackedBounds.origin.y;
  width = self->_trackedBounds.size.width;
  height = self->_trackedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)trackedCenter
{
  x = self->_trackedCenter.x;
  y = self->_trackedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)trackGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(PXSwipeDownTracker *)self options]& 1;
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = x;
  }

  v9 = +[PXSwipeDownSettings sharedInstance];
  v10 = [(PXSwipeDownTracker *)self verticalDirectionFilter];
  if (!v10)
  {
    v11 = objc_alloc_init(off_1E7721510);
    [v11 setMinimumChange:5.0];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke;
    v36[3] = &unk_1E7733D80;
    v10 = v11;
    v37 = v10;
    [v10 performChanges:v36];
    [(PXSwipeDownTracker *)self setVerticalDirectionFilter:v10];
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_2;
  v35[3] = &__block_descriptor_48_e33_v16__0___PXMutableNumberFilter__8l;
  *&v35[4] = v8;
  *&v35[5] = y;
  [v10 performChanges:v35];
  [v9 transitionDistance];
  v13 = v12;
  [v10 output];
  if (self->_didStartTracking)
  {
    v15 = [(PXSwipeDownTracker *)self horizontalTranslationFilter];
    if (!v15)
    {
      v15 = objc_alloc_init(off_1E7721778);
      [v9 rotationHorizontalMotionHysteresisDistance];
      [v15 setHysteresis:?];
      [(PXSwipeDownTracker *)self setHorizontalTranslationFilter:v15];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_3;
    aBlock[3] = &unk_1E772D8D8;
    v34 = v7;
    aBlock[4] = v9;
    aBlock[5] = self;
    *&aBlock[6] = v8;
    *&aBlock[7] = y;
    v16 = _Block_copy(aBlock);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_5;
    v32[3] = &__block_descriptor_48_e33_v16__0___PXMutableNumberFilter__8l;
    *&v32[4] = v8;
    *&v32[5] = y;
    [v15 performChanges:v32];
    [v15 output];
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x3010000000;
    v30[3] = &unk_1A561E057;
    v31 = *MEMORY[0x1E695EFF8];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0x3FF0000000000000;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v16[2](v16, &v31, &v29, &v27, v8, y, v17);
    v18 = *&self->_initialTransform.tx;
    v19 = *&self->_initialTransform.a;
    *&v23.c = *&self->_initialTransform.c;
    *&v23.tx = v18;
    v20 = v25[3];
    *&v22.a = v19;
    *&v22.c = *&v23.c;
    *&v22.tx = *&self->_initialTransform.tx;
    *&v23.a = v19;
    CGAffineTransformRotate(&v23, &v22, v20);
    v16;
    v15;
    PXDerivative();
  }

  v21 = v14 >= 0.0;
  [(PXSwipeDownTracker *)self setDismissalProgress:y / v13];
  [(PXSwipeDownTracker *)self setShouldFinishDismissal:v21];
}

void __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 minimumChange];
  [v4 setInput:v3 + 1.0];
}

void __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_3(uint64_t a1, double a2, double a3)
{
  if (a3 > 0.0 && (*(a1 + 64) & 1) == 0)
  {
    v6 = [*(a1 + 32) scaleDownDistance];
    v8 = MEMORY[0x1A590C800](v6, a3 / v7);
    cos(v8);
    [*(a1 + 32) scaleDownFactor];
    PXFloatByLinearlyInterpolatingFloats();
  }

  v9 = [*(a1 + 32) horizontalMotionType];
  [*(a1 + 32) horizontalResistanceDistance];
  __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_4(v9, a2, v10);
  v13 = *(a1 + 32);
  if (a3 <= 0.0)
  {
    v14 = [v13 upMotionType];
    [*(a1 + 32) upResistanceDistance];
  }

  else
  {
    v14 = [v13 downMotionType];
    [*(a1 + 32) downResistanceDistance];
  }

  __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_4(v14, a3, v15);
  if ([*(a1 + 32) rotationOnHorizontalMotion])
  {
    [*(a1 + 32) rotationHorizontalMotionFactor];
    PXDegreesToRadians();
  }

  if ([*(a1 + 32) rotationOnVerticalMotion])
  {
    v17 = *(a1 + 40);
    v16 = *(v17 + 16);
    if (v16 - *(v17 + 32) != 0.0)
    {
      CGRectGetWidth(*(v17 + 48));
      [*(a1 + 32) rotationVerticalMotionResistanceDistance];
      log(fabs(a3 / v18) + 1.0);
      PXFloatSign();
    }
  }

  [*(a1 + 32) rotationMaximumAngle];
  PXDegreesToRadians();
}

double __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_6(uint64_t a1, double a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 56) + a2;
  v6 = *(a1 + 40);
  [*(a1 + 32) outputDerivative];
  (*(v6 + 16))(v6, *(*(a1 + 48) + 8) + 32, 0, 0, v5, v4, v7 * a2);
  return *(*(*(a1 + 48) + 8) + 32);
}

double __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_8(uint64_t a1, double a2)
{
  v4 = *(a1 + 56) + a2 * *(a1 + 72);
  v5 = *(a1 + 64) + a2 * *(a1 + 80);
  v6 = *(a1 + 40);
  [*(a1 + 32) outputDerivative];
  (*(v6 + 16))(v6, 0, *(*(a1 + 48) + 8) + 24, 0, v4, v5, v7 * a2 * *(a1 + 72));
  return *(*(*(a1 + 48) + 8) + 24);
}

double __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_9(uint64_t a1, double a2)
{
  v4 = *(a1 + 56) + a2 * *(a1 + 72);
  v5 = *(a1 + 64) + a2 * *(a1 + 80);
  v6 = *(a1 + 40);
  [*(a1 + 32) outputDerivative];
  (*(v6 + 16))(v6, 0, 0, *(*(a1 + 48) + 8) + 24, v4, v5, v7 * a2 * *(a1 + 72));
  return *(*(*(a1 + 48) + 8) + 24);
}

uint64_t __55__PXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_4(uint64_t result, double a2, double a3)
{
  if (result == 1)
  {
    log(fabs(a2) / a3 + 1.0);
    PXFloatSign();
  }

  return result;
}

- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6 velocity:(CGPoint)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  self->_didStartTracking = 1;
  self->_initialTouchLocation = a6;
  self->_initialCenter = a3;
  self->_initialBounds = a4;
  v13 = *&a5->a;
  v14 = *&a5->tx;
  *&self->_initialTransform.c = *&a5->c;
  *&self->_initialTransform.tx = v14;
  *&self->_initialTransform.a = v13;
  [(PXSwipeDownTracker *)self setTrackedCenter:?];
  [(PXSwipeDownTracker *)self setTrackedBounds:x, y, width, height];
  v15 = *&a5->c;
  v16[0] = *&a5->a;
  v16[1] = v15;
  v16[2] = *&a5->tx;
  [(PXSwipeDownTracker *)self setTrackedTransform:v16];
  PXPointIsNull();
}

- (PXSwipeDownTracker)initWithOptions:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PXSwipeDownTracker;
  result = [(PXSwipeDownTracker *)&v6 init];
  if (result)
  {
    result->_options = a3;
    v5 = *(off_1E7721F90 + 1);
    *&result->_trackedVelocity.x = *off_1E7721F90;
    *&result->_trackedVelocity.scale = v5;
    *&result->_finalAnimationDuration = xmmword_1A5380D40;
  }

  return result;
}

@end
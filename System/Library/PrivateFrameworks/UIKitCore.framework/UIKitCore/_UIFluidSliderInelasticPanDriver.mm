@interface _UIFluidSliderInelasticPanDriver
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (_UIFluidSliderDirectDrivingDelegate)delegate;
- (_UIFluidSliderDrivable)drivable;
- (_UIFluidSliderInelasticPanDriver)init;
- (double)_trackLength;
- (void)_handleGesture:(id)a3;
- (void)_issueUpdateWithValue:(double)a3 isActive:(BOOL)a4;
- (void)cancel;
- (void)setEnabled:(BOOL)a3;
- (void)setView:(id)a3;
@end

@implementation _UIFluidSliderInelasticPanDriver

- (_UIFluidSliderInelasticPanDriver)init
{
  v6.receiver = self;
  v6.super_class = _UIFluidSliderInelasticPanDriver;
  v2 = [(_UIFluidSliderInelasticPanDriver *)&v6 init];
  if (v2)
  {
    v3 = [[UIPanGestureRecognizer alloc] initWithTarget:v2 action:sel__handleGesture_];
    panGestureRecognizer = v2->_panGestureRecognizer;
    v2->_panGestureRecognizer = v3;

    [(UIGestureRecognizer *)v2->_panGestureRecognizer setName:@"com.apple.UIKit.FluidSliderInelasticPan"];
    [(UIGestureRecognizer *)v2->_panGestureRecognizer _setKeepTouchesOnContinuation:1];
    [(UIGestureRecognizer *)v2->_panGestureRecognizer setCancelsTouchesInView:0];
    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setDelegate:v2];
    [(UIPanGestureRecognizer *)v2->_panGestureRecognizer setAllowedScrollTypesMask:3];
  }

  return v2;
}

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    v7 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [v6 removeGestureRecognizer:v7];

    v8 = objc_storeWeak(&self->_view, obj);
    v5 = obj;
    if (obj)
    {
      v9 = objc_loadWeakRetained(&self->_view);
      v10 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
      [v9 addGestureRecognizer:v10];

      v5 = obj;
    }
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    v5 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [v5 setEnabled:v4];
  }
}

- (void)cancel
{
  v3 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
  v4 = [v3 isEnabled];

  if (v4)
  {
    v5 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [v5 setEnabled:0];

    v6 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [v6 setEnabled:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    [v4 locationInView:v6];
    v7 = [WeakRetained driver:self shouldBeginAtPoint:?];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_handleGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] < 1 || objc_msgSend(v4, "state") > 2)
  {
    v6 = 0;
  }

  else
  {
    if ([v4 state] == 1)
    {
      v5 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
      [v5 presentationValue];
      [(_UIFluidSliderInelasticPanDriver *)self set_previousValue:?];

      [(_UIFluidSliderInelasticPanDriver *)self set_previousTranslation:0.0];
    }

    v6 = 1;
  }

  v7 = [v4 view];
  [v4 translationInView:v7];
  v9 = v8;
  v11 = v10;

  if ([(_UIFluidSliderInelasticPanDriver *)self trackAxis]== 2)
  {
    v9 = -v11;
  }

  [(_UIFluidSliderInelasticPanDriver *)self _previousTranslation];
  v13 = v9 - v12;
  [(_UIFluidSliderInelasticPanDriver *)self set_previousTranslation:v9];
  [(_UIFluidSliderInelasticPanDriver *)self _previousValue];
  v15 = v14;
  [(_UIFluidSliderInelasticPanDriver *)self _trackLength];
  v17 = v13 / v16;
  [(_UIFluidSliderInelasticPanDriver *)self velocityMultiplier];
  v19 = v15 + v17 * v18;
  [(_UIFluidSliderInelasticPanDriver *)self set_previousValue:v19];
  v20 = [(_UIFluidSliderInelasticPanDriver *)self delegate];

  if (v20)
  {
    v35 = -1.0;
    v21 = [(_UIFluidSliderInelasticPanDriver *)self delegate];
    v22 = [v21 driver:self shouldAdjustValueForProposedValue:&v35 adjustedValue:0 startValue:0 endValue:v19];

    if (v22)
    {
      v19 = v35;
    }
  }

  v23 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  v24 = [v23 isLocked];
  v25 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  v26 = v25;
  if (v24)
  {
    [v25 value];
  }

  else
  {
    [v25 minValue];
  }

  v28 = v27;

  v29 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  v30 = [v29 isLocked];
  v31 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  v32 = v31;
  if (v30)
  {
    [v31 value];
  }

  else
  {
    [v31 maxValue];
  }

  v34 = v33;

  [(_UIFluidSliderInelasticPanDriver *)self _issueUpdateWithValue:v6 isActive:fmax(v28, fmin(v19, v34))];
}

- (void)_issueUpdateWithValue:(double)a3 isActive:(BOOL)a4
{
  v6 = a4;
  v7 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  *v8 = a3;
  v8[1] = 0x3FF0000000000000;
  v8[2] = v6;
  v8[3] = 1;
  v8[4] = 0xBFF0000000000000;
  [v7 fluidSliderDriver:self didGenerateUpdate:v8];
}

- (double)_trackLength
{
  v2 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  [v2 currentTrackLength];
  v4 = v3;

  return v4;
}

- (_UIFluidSliderDrivable)drivable
{
  WeakRetained = objc_loadWeakRetained(&self->_drivable);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (_UIFluidSliderDirectDrivingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
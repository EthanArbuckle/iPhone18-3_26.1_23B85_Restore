@interface _UIFluidSliderInelasticPanDriver
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (_UIFluidSliderDirectDrivingDelegate)delegate;
- (_UIFluidSliderDrivable)drivable;
- (_UIFluidSliderInelasticPanDriver)init;
- (double)_trackLength;
- (void)_handleGesture:(id)gesture;
- (void)_issueUpdateWithValue:(double)value isActive:(BOOL)active;
- (void)cancel;
- (void)setEnabled:(BOOL)enabled;
- (void)setView:(id)view;
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

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    panGestureRecognizer = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [v6 removeGestureRecognizer:panGestureRecognizer];

    v8 = objc_storeWeak(&self->_view, obj);
    v5 = obj;
    if (obj)
    {
      v9 = objc_loadWeakRetained(&self->_view);
      panGestureRecognizer2 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
      [v9 addGestureRecognizer:panGestureRecognizer2];

      v5 = obj;
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    panGestureRecognizer = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [panGestureRecognizer setEnabled:enabledCopy];
  }
}

- (void)cancel
{
  panGestureRecognizer = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
  isEnabled = [panGestureRecognizer isEnabled];

  if (isEnabled)
  {
    panGestureRecognizer2 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [panGestureRecognizer2 setEnabled:0];

    panGestureRecognizer3 = [(_UIFluidSliderInelasticPanDriver *)self panGestureRecognizer];
    [panGestureRecognizer3 setEnabled:1];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_view);
    [beginCopy locationInView:v6];
    v7 = [WeakRetained driver:self shouldBeginAtPoint:?];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_handleGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] < 1 || objc_msgSend(gestureCopy, "state") > 2)
  {
    v6 = 0;
  }

  else
  {
    if ([gestureCopy state] == 1)
    {
      drivable = [(_UIFluidSliderInelasticPanDriver *)self drivable];
      [drivable presentationValue];
      [(_UIFluidSliderInelasticPanDriver *)self set_previousValue:?];

      [(_UIFluidSliderInelasticPanDriver *)self set_previousTranslation:0.0];
    }

    v6 = 1;
  }

  view = [gestureCopy view];
  [gestureCopy translationInView:view];
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
  delegate = [(_UIFluidSliderInelasticPanDriver *)self delegate];

  if (delegate)
  {
    v35 = -1.0;
    delegate2 = [(_UIFluidSliderInelasticPanDriver *)self delegate];
    v22 = [delegate2 driver:self shouldAdjustValueForProposedValue:&v35 adjustedValue:0 startValue:0 endValue:v19];

    if (v22)
    {
      v19 = v35;
    }
  }

  drivable2 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  isLocked = [drivable2 isLocked];
  drivable3 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  v26 = drivable3;
  if (isLocked)
  {
    [drivable3 value];
  }

  else
  {
    [drivable3 minValue];
  }

  v28 = v27;

  drivable4 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  isLocked2 = [drivable4 isLocked];
  drivable5 = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  v32 = drivable5;
  if (isLocked2)
  {
    [drivable5 value];
  }

  else
  {
    [drivable5 maxValue];
  }

  v34 = v33;

  [(_UIFluidSliderInelasticPanDriver *)self _issueUpdateWithValue:v6 isActive:fmax(v28, fmin(v19, v34))];
}

- (void)_issueUpdateWithValue:(double)value isActive:(BOOL)active
{
  activeCopy = active;
  drivable = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  *v8 = value;
  v8[1] = 0x3FF0000000000000;
  v8[2] = activeCopy;
  v8[3] = 1;
  v8[4] = 0xBFF0000000000000;
  [drivable fluidSliderDriver:self didGenerateUpdate:v8];
}

- (double)_trackLength
{
  drivable = [(_UIFluidSliderInelasticPanDriver *)self drivable];
  [drivable currentTrackLength];
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
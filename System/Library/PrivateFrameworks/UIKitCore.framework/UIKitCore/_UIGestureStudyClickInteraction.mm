@interface _UIGestureStudyClickInteraction
- (CGPoint)locationInCoordinateSpace:(id)space;
- (CGPoint)originalCentroid;
- (NSString)description;
- (NSString)eventName;
- (UIView)view;
- (_UIGestureStudyClickInteraction)initWithTarget:(id)target action:(SEL)action useForce:(BOOL)force;
- (double)duration;
- (double)movement;
- (id)target;
- (void)clickDriver:(id)driver didPerformEvent:(unint64_t)event;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UIGestureStudyClickInteraction

- (_UIGestureStudyClickInteraction)initWithTarget:(id)target action:(SEL)action useForce:(BOOL)force
{
  forceCopy = force;
  targetCopy = target;
  v17.receiver = self;
  v17.super_class = _UIGestureStudyClickInteraction;
  v9 = [(_UIGestureStudyClickInteraction *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(_UIGestureStudyClickInteraction *)v9 setTarget:targetCopy];
    [(_UIGestureStudyClickInteraction *)v10 setAction:action];
    [(_UIGestureStudyClickInteraction *)v10 setUsesForce:forceCopy];
    objc_opt_class();
    v11 = objc_opt_new();
    [(_UIGestureStudyClickInteraction *)v10 setDriver:v11];

    driver = [(_UIGestureStudyClickInteraction *)v10 driver];
    [driver setDelegate:v10];

    driver2 = [(_UIGestureStudyClickInteraction *)v10 driver];
    v14 = _UIClickPresentationAllowableMovementForDriver(driver2, 0);
    driver3 = [(_UIGestureStudyClickInteraction *)v10 driver];
    [driver3 setAllowableMovement:v14];

    [(_UIGestureStudyClickInteraction *)v10 setStartTimestamp:978307200.0];
    [(_UIGestureStudyClickInteraction *)v10 setOriginalCentroid:1.79769313e308, 1.79769313e308];
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(_UIGestureStudyClickInteraction *)self usesForce];
  v5 = NSStringFromBOOL();
  v6 = [v3 stringWithFormat:@"<%@: %p usesForce = %@>", v4, self, v5];;

  return v6;
}

- (void)willMoveToView:(id)view
{
  driver = [(_UIGestureStudyClickInteraction *)self driver];
  [driver setView:0];
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    driver = [(_UIGestureStudyClickInteraction *)self driver];
    [driver setView:WeakRetained];
  }
}

- (void)clickDriver:(id)driver didPerformEvent:(unint64_t)event
{
  driverCopy = driver;
  if (event > 1)
  {
    if (event != 2)
    {
      if (event != 3)
      {
        goto LABEL_15;
      }

      v10 = driverCopy;
      [(_UIGestureStudyClickInteraction *)self setStartTimestamp:978307200.0];
      [(_UIGestureStudyClickInteraction *)self setOriginalCentroid:1.79769313e308, 1.79769313e308];
      driverCopy = v10;
      v7 = 0;
      goto LABEL_8;
    }

    v10 = driverCopy;
    target = [(_UIGestureStudyClickInteraction *)self target];
    action = [(_UIGestureStudyClickInteraction *)self action];
    if (dyld_program_sdk_at_least())
    {
      [target action];
    }

    else
    {
      [target performSelector:action withObject:self];
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!event)
  {
    v10 = driverCopy;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UIGestureStudyClickInteraction *)self setStartTimestamp:?];
    target = [(_UIGestureStudyClickInteraction *)self view];
    [(_UIGestureStudyClickInteraction *)self locationInCoordinateSpace:target];
    [(_UIGestureStudyClickInteraction *)self setOriginalCentroid:?];
    goto LABEL_13;
  }

  if (event != 1)
  {
    goto LABEL_15;
  }

  v10 = driverCopy;
  v7 = 1;
LABEL_8:
  [v10 setAllowableMovement:{_UIClickPresentationAllowableMovementForDriver(driverCopy, v7)}];
LABEL_14:
  driverCopy = v10;
LABEL_15:
}

- (NSString)eventName
{
  if ([(_UIGestureStudyClickInteraction *)self usesForce])
  {
    v2 = @"EventTypeForcePress";
  }

  else
  {
    v2 = @"EventTypeLongPress";
  }

  return v2;
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  spaceCopy = space;
  driver = [(_UIGestureStudyClickInteraction *)self driver];
  [driver locationInCoordinateSpace:spaceCopy];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)duration
{
  [(_UIGestureStudyClickInteraction *)self startTimestamp];
  v4 = v3;
  result = 0.0;
  if (v4 < 978307200.0)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    [(_UIGestureStudyClickInteraction *)self startTimestamp];
    return v7 - v8;
  }

  return result;
}

- (double)movement
{
  [(_UIGestureStudyClickInteraction *)self originalCentroid];
  if (v4 == 1.79769313e308 && v3 == 1.79769313e308)
  {
    return 0.0;
  }

  view = [(_UIGestureStudyClickInteraction *)self view];
  [(_UIGestureStudyClickInteraction *)self locationInCoordinateSpace:view];
  v8 = v7;
  v10 = v9;

  [(_UIGestureStudyClickInteraction *)self originalCentroid];
  return sqrt((v11 - v8) * (v11 - v8) + (v12 - v10) * (v12 - v10));
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (CGPoint)originalCentroid
{
  x = self->_originalCentroid.x;
  y = self->_originalCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
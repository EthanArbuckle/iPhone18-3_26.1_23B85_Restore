@interface _UIGestureStudyClickInteraction
- (CGPoint)locationInCoordinateSpace:(id)a3;
- (CGPoint)originalCentroid;
- (NSString)description;
- (NSString)eventName;
- (UIView)view;
- (_UIGestureStudyClickInteraction)initWithTarget:(id)a3 action:(SEL)a4 useForce:(BOOL)a5;
- (double)duration;
- (double)movement;
- (id)target;
- (void)clickDriver:(id)a3 didPerformEvent:(unint64_t)a4;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIGestureStudyClickInteraction

- (_UIGestureStudyClickInteraction)initWithTarget:(id)a3 action:(SEL)a4 useForce:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v17.receiver = self;
  v17.super_class = _UIGestureStudyClickInteraction;
  v9 = [(_UIGestureStudyClickInteraction *)&v17 init];
  v10 = v9;
  if (v9)
  {
    [(_UIGestureStudyClickInteraction *)v9 setTarget:v8];
    [(_UIGestureStudyClickInteraction *)v10 setAction:a4];
    [(_UIGestureStudyClickInteraction *)v10 setUsesForce:v5];
    objc_opt_class();
    v11 = objc_opt_new();
    [(_UIGestureStudyClickInteraction *)v10 setDriver:v11];

    v12 = [(_UIGestureStudyClickInteraction *)v10 driver];
    [v12 setDelegate:v10];

    v13 = [(_UIGestureStudyClickInteraction *)v10 driver];
    v14 = _UIClickPresentationAllowableMovementForDriver(v13, 0);
    v15 = [(_UIGestureStudyClickInteraction *)v10 driver];
    [v15 setAllowableMovement:v14];

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

- (void)willMoveToView:(id)a3
{
  v3 = [(_UIGestureStudyClickInteraction *)self driver];
  [v3 setView:0];
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [(_UIGestureStudyClickInteraction *)self driver];
    [v6 setView:WeakRetained];
  }
}

- (void)clickDriver:(id)a3 didPerformEvent:(unint64_t)a4
{
  v6 = a3;
  if (a4 > 1)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        goto LABEL_15;
      }

      v10 = v6;
      [(_UIGestureStudyClickInteraction *)self setStartTimestamp:978307200.0];
      [(_UIGestureStudyClickInteraction *)self setOriginalCentroid:1.79769313e308, 1.79769313e308];
      v6 = v10;
      v7 = 0;
      goto LABEL_8;
    }

    v10 = v6;
    v8 = [(_UIGestureStudyClickInteraction *)self target];
    v9 = [(_UIGestureStudyClickInteraction *)self action];
    if (dyld_program_sdk_at_least())
    {
      [v8 v9];
    }

    else
    {
      [v8 performSelector:v9 withObject:self];
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!a4)
  {
    v10 = v6;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(_UIGestureStudyClickInteraction *)self setStartTimestamp:?];
    v8 = [(_UIGestureStudyClickInteraction *)self view];
    [(_UIGestureStudyClickInteraction *)self locationInCoordinateSpace:v8];
    [(_UIGestureStudyClickInteraction *)self setOriginalCentroid:?];
    goto LABEL_13;
  }

  if (a4 != 1)
  {
    goto LABEL_15;
  }

  v10 = v6;
  v7 = 1;
LABEL_8:
  [v10 setAllowableMovement:{_UIClickPresentationAllowableMovementForDriver(v6, v7)}];
LABEL_14:
  v6 = v10;
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

- (CGPoint)locationInCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(_UIGestureStudyClickInteraction *)self driver];
  [v5 locationInCoordinateSpace:v4];
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

  v6 = [(_UIGestureStudyClickInteraction *)self view];
  [(_UIGestureStudyClickInteraction *)self locationInCoordinateSpace:v6];
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
@interface _UIControlCenterClickInteractionDriver
- (_UIControlCenterClickInteractionDriver)init;
- (double)clickDownDuration;
@end

@implementation _UIControlCenterClickInteractionDriver

- (_UIControlCenterClickInteractionDriver)init
{
  v6.receiver = self;
  v6.super_class = _UIControlCenterClickInteractionDriver;
  v2 = [(_UILongPressClickInteractionDriver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    primaryGestureRecognizer = [(_UILongPressClickInteractionDriver *)v2 primaryGestureRecognizer];
    [primaryGestureRecognizer setMinimumDurationRequired:0.0];
    [primaryGestureRecognizer _setKeepTouchesOnContinuation:1];
    -[_UILongPressClickInteractionDriver setCancelsTouchesInView:](v3, "setCancelsTouchesInView:", [objc_opt_class() prefersCancelsTouchesInView]);
  }

  return v3;
}

- (double)clickDownDuration
{
  v2 = _AXSForceTouchTimeDuration();
  result = dbl_18A679CF0[v2 == 1];
  if (!v2)
  {
    return 0.5;
  }

  return result;
}

@end
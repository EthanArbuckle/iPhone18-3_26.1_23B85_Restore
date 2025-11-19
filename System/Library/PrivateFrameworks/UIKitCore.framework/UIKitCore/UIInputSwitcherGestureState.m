@interface UIInputSwitcherGestureState
- (BOOL)gestureConflictsWithTypingWindow;
- (CGPoint)firstReferencePoint;
@end

@implementation UIInputSwitcherGestureState

- (BOOL)gestureConflictsWithTypingWindow
{
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 lastTouchDownTimestamp];
  v5 = v4;

  v6 = CFAbsoluteTimeGetCurrent() - v5 < 0.325;
  [(UIInputSwitcherGestureState *)self lastSeenKeyboardTouchDown];
  return vabdd_f64(v5, v7) > 0.00000011920929 || v6;
}

- (CGPoint)firstReferencePoint
{
  x = self->_firstReferencePoint.x;
  y = self->_firstReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
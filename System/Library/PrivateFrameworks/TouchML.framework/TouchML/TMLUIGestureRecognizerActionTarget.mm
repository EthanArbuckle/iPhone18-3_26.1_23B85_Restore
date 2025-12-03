@interface TMLUIGestureRecognizerActionTarget
- (TMLUIGestureRecognizerActionTarget)initWithSignal:(id)signal state:(int64_t)state;
- (void)handleGesture:(id)gesture;
@end

@implementation TMLUIGestureRecognizerActionTarget

- (TMLUIGestureRecognizerActionTarget)initWithSignal:(id)signal state:(int64_t)state
{
  signalCopy = signal;
  v13.receiver = self;
  v13.super_class = TMLUIGestureRecognizerActionTarget;
  v8 = [(TMLUIGestureRecognizerActionTarget *)&v13 init];
  if (v8)
  {
    v10 = objc_msgSend_copy(signalCopy, v7, v9);
    signalName = v8->_signalName;
    v8->_signalName = v10;

    v8->_state = state;
  }

  return v8;
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  if (objc_msgSend_state(gestureCopy, v4, v5) == self->_state)
  {
    objc_msgSend_emitTMLSignal_withArguments_(gestureCopy, v6, v7, self->_signalName, 0);
  }
}

@end
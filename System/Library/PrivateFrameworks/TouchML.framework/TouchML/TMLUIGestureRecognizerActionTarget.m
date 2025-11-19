@interface TMLUIGestureRecognizerActionTarget
- (TMLUIGestureRecognizerActionTarget)initWithSignal:(id)a3 state:(int64_t)a4;
- (void)handleGesture:(id)a3;
@end

@implementation TMLUIGestureRecognizerActionTarget

- (TMLUIGestureRecognizerActionTarget)initWithSignal:(id)a3 state:(int64_t)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = TMLUIGestureRecognizerActionTarget;
  v8 = [(TMLUIGestureRecognizerActionTarget *)&v13 init];
  if (v8)
  {
    v10 = objc_msgSend_copy(v6, v7, v9);
    signalName = v8->_signalName;
    v8->_signalName = v10;

    v8->_state = a4;
  }

  return v8;
}

- (void)handleGesture:(id)a3
{
  v8 = a3;
  if (objc_msgSend_state(v8, v4, v5) == self->_state)
  {
    objc_msgSend_emitTMLSignal_withArguments_(v8, v6, v7, self->_signalName, 0);
  }
}

@end
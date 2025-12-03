@interface SBPinchInteractionProgress
- (SBPinchInteractionProgress)initWithPinchGesture:(id)gesture minPinchScale:(double)scale;
- (void)_handlePinchGesture:(id)gesture;
- (void)_updatePinchScale:(double)scale;
@end

@implementation SBPinchInteractionProgress

- (SBPinchInteractionProgress)initWithPinchGesture:(id)gesture minPinchScale:(double)scale
{
  gestureCopy = gesture;
  v11.receiver = self;
  v11.super_class = SBPinchInteractionProgress;
  v8 = [(UIInteractionProgress *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_pinchGesture, gesture);
    [gestureCopy addTarget:v9 action:sel__handlePinchGesture_];
    v9->_pinchInterval.start.value = 1.0;
    v9->_pinchInterval.start.inclusive = 1;
    *(&v9->_pinchInterval.start.inclusive + 1) = 0;
    *(&v9->_pinchInterval.start.inclusive + 1) = 0;
    v9->_pinchInterval.end.value = scale;
    v9->_pinchInterval.end.inclusive = 1;
    *(&v9->_pinchInterval.end.inclusive + 1) = 0;
    *(&v9->_pinchInterval.end.inclusive + 1) = 0;
    [gestureCopy scale];
    [(SBPinchInteractionProgress *)v9 _updatePinchScale:?];
  }

  return v9;
}

- (void)_handlePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  pinchGesture = [(SBPinchInteractionProgress *)self pinchGesture];

  v5 = gestureCopy;
  if (pinchGesture == gestureCopy)
  {
    state = [gestureCopy state];
    if (state == 4)
    {
      [gestureCopy removeTarget:self action:sel__handlePinchGesture_];
    }

    else
    {
      if (state != 3)
      {
        v7 = state == 2;
        v5 = gestureCopy;
        if (!v7)
        {
          goto LABEL_13;
        }

        [gestureCopy scale];
        [(SBPinchInteractionProgress *)self _updatePinchScale:?];
LABEL_12:
        v5 = gestureCopy;
        goto LABEL_13;
      }

      [gestureCopy velocity];
      [gestureCopy removeTarget:self action:sel__handlePinchGesture_];
      if (!BSFloatGreaterThanFloat())
      {
        selfCopy2 = self;
        v9 = 1;
LABEL_11:
        [(UIInteractionProgress *)selfCopy2 endInteraction:v9];
        goto LABEL_12;
      }
    }

    selfCopy2 = self;
    v9 = 0;
    goto LABEL_11;
  }

LABEL_13:
}

- (void)_updatePinchScale:(double)scale
{
  [(SBPinchInteractionProgress *)self minPinchScale];
  if (BSFloatGreaterThanFloat())
  {
    start = self->_pinchInterval.start;
    end = self->_pinchInterval.end;
    BSIntervalFractionForValue();
    v5 = v4;
    [(UIInteractionProgress *)self percentComplete:start];
    if ((BSFloatEqualToFloat() & 1) == 0)
    {
      [(UIInteractionProgress *)self setPercentComplete:v5];
    }
  }

  else
  {
    pinchGesture = [(SBPinchInteractionProgress *)self pinchGesture];
    [pinchGesture removeTarget:self action:sel__handlePinchGesture_];

    [(UIInteractionProgress *)self endInteraction:1];
  }
}

@end
@interface _UIHIDScaleEventTracker
- (void)_setCompositePhase:(unint64_t)phase withEvent:(__IOHIDEvent *)event;
- (void)updateWithHIDEvent:(__IOHIDEvent *)event;
@end

@implementation _UIHIDScaleEventTracker

- (void)updateWithHIDEvent:(__IOHIDEvent *)event
{
  if (!event)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHIDTransformer.m" lineNumber:169 description:@"Attempting to update a scale tracker with no hidEvent"];
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  _UIEventHIDGetTransformEventComponents(event, &v14, &v13, &v12);
  if (v14 && (IOHIDEventGetDoubleValue(), v5 = v14, self->_scaleZ = v6, v5))
  {
    Phase = IOHIDEventGetPhase();
  }

  else
  {
    Phase = 0;
  }

  if (v13)
  {
    v8 = IOHIDEventGetPhase();
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    v9 = IOHIDEventGetPhase();
  }

  else
  {
    v9 = 0;
  }

  [(_UIHIDScaleEventTracker *)self _setCompositePhase:_UIEventHIDTransformPhaseForComponentPhases(Phase withEvent:v8, v9), event];
}

- (void)_setCompositePhase:(unint64_t)phase withEvent:(__IOHIDEvent *)event
{
  compositePhase = self->_compositePhase;
  if (compositePhase != phase)
  {
    if (phase <= 1)
    {
      if (!phase)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHIDTransformer.m" lineNumber:198 description:{@"Received event resulting in UITransformPhaseNone %@", event}];

        goto LABEL_15;
      }

      if (phase != 1 || !compositePhase)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (phase - 2 < 2)
      {
        if (compositePhase - 1 >= 2)
        {
          return;
        }

LABEL_15:
        self->_compositePhase = phase;
        return;
      }

      if (phase != 4 || compositePhase && compositePhase != 3)
      {
        goto LABEL_15;
      }
    }
  }
}

@end
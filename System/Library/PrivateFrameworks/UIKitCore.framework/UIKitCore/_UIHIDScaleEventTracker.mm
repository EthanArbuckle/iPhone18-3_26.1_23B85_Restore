@interface _UIHIDScaleEventTracker
- (void)_setCompositePhase:(unint64_t)a3 withEvent:(__IOHIDEvent *)a4;
- (void)updateWithHIDEvent:(__IOHIDEvent *)a3;
@end

@implementation _UIHIDScaleEventTracker

- (void)updateWithHIDEvent:(__IOHIDEvent *)a3
{
  if (!a3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIHIDTransformer.m" lineNumber:169 description:@"Attempting to update a scale tracker with no hidEvent"];
  }

  v13 = 0;
  v14 = 0;
  v12 = 0;
  _UIEventHIDGetTransformEventComponents(a3, &v14, &v13, &v12);
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

  [(_UIHIDScaleEventTracker *)self _setCompositePhase:_UIEventHIDTransformPhaseForComponentPhases(Phase withEvent:v8, v9), a3];
}

- (void)_setCompositePhase:(unint64_t)a3 withEvent:(__IOHIDEvent *)a4
{
  compositePhase = self->_compositePhase;
  if (compositePhase != a3)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        [v9 handleFailureInMethod:a2 object:self file:@"_UIHIDTransformer.m" lineNumber:198 description:{@"Received event resulting in UITransformPhaseNone %@", a4}];

        goto LABEL_15;
      }

      if (a3 != 1 || !compositePhase)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (a3 - 2 < 2)
      {
        if (compositePhase - 1 >= 2)
        {
          return;
        }

LABEL_15:
        self->_compositePhase = a3;
        return;
      }

      if (a3 != 4 || compositePhase && compositePhase != 3)
      {
        goto LABEL_15;
      }
    }
  }
}

@end
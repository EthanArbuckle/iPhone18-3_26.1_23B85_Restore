@interface SBUIDependencyGestureRecognizer
- (BOOL)_didExceedHysteresisWithTouches:(id)touches;
- (CGPoint)_convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view;
- (NSSet)observedControlClasses;
- (SBUIDependencyGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)setObservedControlClasses:(id)classes;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation SBUIDependencyGestureRecognizer

- (NSSet)observedControlClasses
{
  observedControlClasses = self->_observedControlClasses;
  if (!observedControlClasses)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v5 = self->_observedControlClasses;
    self->_observedControlClasses = v4;

    observedControlClasses = self->_observedControlClasses;
  }

  return observedControlClasses;
}

- (void)setObservedControlClasses:(id)classes
{
  classesCopy = classes;
  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_observedControlClasses, classes);
    if ([(SBUIDependencyGestureRecognizer *)self isEnabled])
    {
      [(SBUIDependencyGestureRecognizer *)self setEnabled:0];
      [(SBUIDependencyGestureRecognizer *)self setEnabled:1];
    }
  }
}

- (SBUIDependencyGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = SBUIDependencyGestureRecognizer;
  v4 = [(SBUIDependencyGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(SBUIDependencyGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SBUIDependencyGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    v5->_hysteresis = 9.0;
  }

  return v5;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBUIDependencyGestureRecognizer;
  beganCopy = began;
  [(SBUIDependencyGestureRecognizer *)&v10 touchesBegan:beganCopy withEvent:event];
  v7 = _CentroidOfTouches(beganCopy);
  v9 = v8;

  self->_initialSceneReferenceLocation.x = v7;
  self->_initialSceneReferenceLocation.y = v9;
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  v34.receiver = self;
  v34.super_class = SBUIDependencyGestureRecognizer;
  [(SBUIDependencyGestureRecognizer *)&v34 touchesMoved:movedCopy withEvent:eventCopy];
  if (![(SBUIDependencyGestureRecognizer *)self state]&& [(SBUIDependencyGestureRecognizer *)self _didExceedHysteresisWithTouches:movedCopy])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = movedCopy;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      v24 = *v31;
      while (2)
      {
        v12 = 0;
        v25 = v10;
        do
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          view = [*(*(&v30 + 1) + 8 * v12) view];
          if (objc_opt_respondsToSelector() & 1) != 0 && ([view sbui_wantsPriorityOverTargetOfDependencyGestureRecognizer:self])
          {
LABEL_27:

            v23 = 3;
            goto LABEL_29;
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          observedControlClasses = [(SBUIDependencyGestureRecognizer *)self observedControlClasses];
          v15 = [observedControlClasses countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v27;
            while (2)
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(observedControlClasses);
                }

                if (objc_opt_isKindOfClass())
                {

                  goto LABEL_27;
                }
              }

              v16 = [observedControlClasses countByEnumeratingWithState:&v26 objects:v35 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v19 = objc_opt_class();
          v20 = view;
          if (v19)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }
          }

          else
          {
            v21 = 0;
          }

          v11 = v24;
          v22 = v21;

          [v22 cancelTrackingWithEvent:eventCopy];
          ++v12;
        }

        while (v12 != v25);
        v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
        v23 = 5;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v23 = 5;
    }

LABEL_29:

    [(SBUIDependencyGestureRecognizer *)self setState:v23];
  }
}

- (CGPoint)_convertPoint:(CGPoint)point fromSceneReferenceCoordinatesToView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v8 = viewCopy;
  if (viewCopy)
  {
    window = viewCopy;
  }

  else
  {
    view = [(SBUIDependencyGestureRecognizer *)self view];
    window = [view window];
  }

  _window = [window _window];
  v12 = _window;
  if (_window)
  {
    [_window _convertPointFromSceneReferenceSpace:{x, y}];
    x = v13;
    y = v14;
  }

  [window convertPoint:0 fromView:{x, y}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_didExceedHysteresisWithTouches:(id)touches
{
  touchesCopy = touches;
  view = [(SBUIDependencyGestureRecognizer *)self view];
  [(SBUIDependencyGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:self->_initialSceneReferenceLocation.x, self->_initialSceneReferenceLocation.y];
  v7 = v6;
  v9 = v8;
  v10 = _CentroidOfTouches(touchesCopy);
  v12 = v11;

  [(SBUIDependencyGestureRecognizer *)self _convertPoint:view fromSceneReferenceCoordinatesToView:v10, v12];
  v14 = v13 - v7;
  v16 = v15 - v9;
  if (v14 < 0.0)
  {
    v14 = -v14;
  }

  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  v17 = fmax(v14, v16) > self->_hysteresis;

  return v17;
}

@end
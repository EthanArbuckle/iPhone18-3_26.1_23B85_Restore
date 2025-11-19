@interface SBUIDependencyGestureRecognizer
- (BOOL)_didExceedHysteresisWithTouches:(id)a3;
- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4;
- (NSSet)observedControlClasses;
- (SBUIDependencyGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)setObservedControlClasses:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (void)setObservedControlClasses:(id)a3
{
  v5 = a3;
  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_observedControlClasses, a3);
    if ([(SBUIDependencyGestureRecognizer *)self isEnabled])
    {
      [(SBUIDependencyGestureRecognizer *)self setEnabled:0];
      [(SBUIDependencyGestureRecognizer *)self setEnabled:1];
    }
  }
}

- (SBUIDependencyGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = SBUIDependencyGestureRecognizer;
  v4 = [(SBUIDependencyGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(SBUIDependencyGestureRecognizer *)v4 setCancelsTouchesInView:0];
    [(SBUIDependencyGestureRecognizer *)v5 setDelaysTouchesEnded:0];
    v5->_hysteresis = 9.0;
  }

  return v5;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBUIDependencyGestureRecognizer;
  v6 = a3;
  [(SBUIDependencyGestureRecognizer *)&v10 touchesBegan:v6 withEvent:a4];
  v7 = _CentroidOfTouches(v6);
  v9 = v8;

  self->_initialSceneReferenceLocation.x = v7;
  self->_initialSceneReferenceLocation.y = v9;
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v34.receiver = self;
  v34.super_class = SBUIDependencyGestureRecognizer;
  [(SBUIDependencyGestureRecognizer *)&v34 touchesMoved:v6 withEvent:v7];
  if (![(SBUIDependencyGestureRecognizer *)self state]&& [(SBUIDependencyGestureRecognizer *)self _didExceedHysteresisWithTouches:v6])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v6;
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

          v13 = [*(*(&v30 + 1) + 8 * v12) view];
          if (objc_opt_respondsToSelector() & 1) != 0 && ([v13 sbui_wantsPriorityOverTargetOfDependencyGestureRecognizer:self])
          {
LABEL_27:

            v23 = 3;
            goto LABEL_29;
          }

          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = [(SBUIDependencyGestureRecognizer *)self observedControlClasses];
          v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
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
                  objc_enumerationMutation(v14);
                }

                if (objc_opt_isKindOfClass())
                {

                  goto LABEL_27;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v19 = objc_opt_class();
          v20 = v13;
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

          [v22 cancelTrackingWithEvent:v7];
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

- (CGPoint)_convertPoint:(CGPoint)a3 fromSceneReferenceCoordinatesToView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(SBUIDependencyGestureRecognizer *)self view];
    v9 = [v10 window];
  }

  v11 = [v9 _window];
  v12 = v11;
  if (v11)
  {
    [v11 _convertPointFromSceneReferenceSpace:{x, y}];
    x = v13;
    y = v14;
  }

  [v9 convertPoint:0 fromView:{x, y}];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (BOOL)_didExceedHysteresisWithTouches:(id)a3
{
  v4 = a3;
  v5 = [(SBUIDependencyGestureRecognizer *)self view];
  [(SBUIDependencyGestureRecognizer *)self _convertPoint:v5 fromSceneReferenceCoordinatesToView:self->_initialSceneReferenceLocation.x, self->_initialSceneReferenceLocation.y];
  v7 = v6;
  v9 = v8;
  v10 = _CentroidOfTouches(v4);
  v12 = v11;

  [(SBUIDependencyGestureRecognizer *)self _convertPoint:v5 fromSceneReferenceCoordinatesToView:v10, v12];
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
@interface UIScreenEdgePanGestureRecognizer
- (UIScreenEdgePanGestureRecognizer)initWithCoder:(id)coder;
- (UIScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (UIScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options;
- (id)_beginRequiringIgnoresHIDEdgeFlagsForReason:(id)reason;
- (int64_t)_touchInterfaceOrientation;
- (void)_setHysteresis:(double)hysteresis;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)featureDidChangeState:(id)state;
- (void)reset;
- (void)setMinimumNumberOfTouches:(unint64_t)touches;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation UIScreenEdgePanGestureRecognizer

- (void)dealloc
{
  [(_UIInvalidatable *)self->_mustIgnoreHIDEdgeFlagsAssertion _invalidate];
  mustIgnoreHIDEdgeFlagsAssertion = self->_mustIgnoreHIDEdgeFlagsAssertion;
  self->_mustIgnoreHIDEdgeFlagsAssertion = 0;

  ignoreHIDEdgeFlagsAssertionController = self->_ignoreHIDEdgeFlagsAssertionController;
  self->_ignoreHIDEdgeFlagsAssertionController = 0;

  v5.receiver = self;
  v5.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIGestureRecognizer *)&v5 dealloc];
}

- (int64_t)_touchInterfaceOrientation
{
  view = [(UIGestureRecognizer *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  return interfaceOrientation;
}

- (void)reset
{
  [(_UISEGestureFeatureSettings *)self->_settings setBounds:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  [(_UISEGestureFeatureSettings *)self->_settings setTargetEdges:0];
  [(_UISEGestureFeature *)self->_rootFeature setDelegate:0];
  rootFeature = self->_rootFeature;
  self->_rootFeature = 0;

  self->_touchedEdges = 0;
  v4.receiver = self;
  v4.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIGestureRecognizer *)&v4 reset];
}

- (UIScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v8.receiver = self;
  v8.super_class = UIScreenEdgePanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v8 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    _commonInit(v4, 1, 0);
    [(UIPanGestureRecognizer *)v5 setMaximumNumberOfTouches:1];
    [(UIGestureRecognizer *)v5 setDelaysTouchesBegan:1];
    v6 = v5;
  }

  return v5;
}

- (UIScreenEdgePanGestureRecognizer)initWithTarget:(id)target action:(SEL)action type:(int64_t)type options:(unint64_t)options
{
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = UIScreenEdgePanGestureRecognizer;
  v8 = [(UIPanGestureRecognizer *)&v12 initWithTarget:target action:action];
  v9 = v8;
  if (v8)
  {
    _commonInit(v8, type, optionsCopy);
    [(UIPanGestureRecognizer *)v9 setMaximumNumberOfTouches:1];
    [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:1];
    v10 = v9;
  }

  return v9;
}

- (UIScreenEdgePanGestureRecognizer)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = UIScreenEdgePanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v8 initWithCoder:?];
  v5 = v4;
  if (v4)
  {
    _commonInit(v4, 1, 0);
    if ([coder containsValueForKey:@"UIScreenEdgePanGestureRecognizer.edges"])
    {
      -[UIScreenEdgePanGestureRecognizer setEdges:](v5, "setEdges:", [coder decodeIntegerForKey:@"UIScreenEdgePanGestureRecognizer.edges"]);
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v5 encodeWithCoder:?];
  [coder encodeInteger:-[UIScreenEdgePanGestureRecognizer edges](self forKey:{"edges"), @"UIScreenEdgePanGestureRecognizer.edges"}];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v37 = *MEMORY[0x1E69E9840];
  if (self->_rootFeature)
  {
    goto LABEL_18;
  }

  view = [(UIGestureRecognizer *)self view];
  _window = [view _window];
  [_window _sceneReferenceBounds];
  [(_UISEGestureFeatureSettings *)self->_settings setBounds:?];

  _touchInterfaceOrientation = [(UIScreenEdgePanGestureRecognizer *)self _touchInterfaceOrientation];
  edges = self->_edges;
  if (_touchInterfaceOrientation == 4)
  {
    [(_UISEGestureFeatureSettings *)self->_settings setTargetEdges:_rotatedEdgesGivenOrientationInDegrees(edges, 90)];
    v11 = 8;
  }

  else if (_touchInterfaceOrientation == 3)
  {
    [(_UISEGestureFeatureSettings *)self->_settings setTargetEdges:_rotatedEdgesGivenOrientationInDegrees(edges, -90)];
    v11 = 2;
  }

  else
  {
    if (_touchInterfaceOrientation == 1)
    {
      [(_UISEGestureFeatureSettings *)self->_settings setTargetEdges:_rotatedEdgesGivenOrientationInDegrees(edges, 0)];
LABEL_13:
      v11 = 4;
      goto LABEL_14;
    }

    if (_touchInterfaceOrientation == 2)
    {
      v12 = -180;
    }

    else
    {
      v12 = 0;
    }

    [(_UISEGestureFeatureSettings *)self->_settings setTargetEdges:_rotatedEdgesGivenOrientationInDegrees(edges, v12)];
    if (_touchInterfaceOrientation != 2)
    {
      goto LABEL_13;
    }

    v11 = 1;
  }

LABEL_14:
  [(_UISEGestureFeatureSettings *)self->_settings setInterfaceBottomEdge:v11];
  [(_UISEGestureFeatureSettings *)self->_settings setDisableEdgeRegionEnforcement:self->_recognizesWithoutEdge];
  v13 = self->_recognizesWithoutEdge || [(_UIAssertionController *)self->_ignoreHIDEdgeFlagsAssertionController hasAssertionsOfType:1];
  [(_UISEGestureFeatureSettings *)self->_settings setIgnoreHIDEdgeFlags:v13];
  v14 = [[_UISEMuxGestureFeature alloc] initWithSettings:self->_settings createFeatureBlock:self->_createFeatureBlock];
  rootFeature = self->_rootFeature;
  self->_rootFeature = v14;

  [(_UISEGestureFeature *)self->_rootFeature setDelegate:self];
  self->_touchedEdges = 0;
LABEL_18:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  beganCopy = began;
  v17 = [beganCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      v20 = 0;
      do
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(beganCopy);
        }

        v21 = *(*(&v32 + 1) + 8 * v20);
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v22 = v21;
        phase = [v22 phase];
        if (phase >= 2)
        {
          if (phase != 3)
          {
            abort();
          }

          phase = 2;
        }

        *&v29 = 0;
        *&v28 = phase;
        *(&v28 + 1) = [v22 _edgeAim];
        LOBYTE(v29) = [v22 _edgeForceActive];
        *(&v29 + 1) = [v22 _edgeType];
        *&v30 = [v22 _touchIdentifier];
        [v22 _locationInSceneReferenceSpace];
        *(&v30 + 1) = v24;
        *&v31 = v25;
        [v22 timestamp];
        *(&v31 + 1) = v26;

        [(_UISEGestureFeature *)self->_rootFeature incorporateSample:&v28];
        ++v20;
      }

      while (v18 != v20);
      v18 = [beganCopy countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v18);
  }

  v27.receiver = self;
  v27.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v27 touchesBegan:beganCopy withEvent:event];
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  movedCopy = moved;
  v7 = [movedCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(movedCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = v11;
        phase = [v12 phase];
        if (phase >= 2)
        {
          if (phase != 3)
          {
            abort();
          }

          phase = 2;
        }

        *&v19 = 0;
        *&v18 = phase;
        *(&v18 + 1) = [v12 _edgeAim];
        LOBYTE(v19) = [v12 _edgeForceActive];
        *(&v19 + 1) = [v12 _edgeType];
        *&v20 = [v12 _touchIdentifier];
        [v12 _locationInSceneReferenceSpace];
        *(&v20 + 1) = v14;
        *&v21 = v15;
        [v12 timestamp];
        *(&v21 + 1) = v16;

        [(_UISEGestureFeature *)self->_rootFeature incorporateSample:&v18];
        ++v10;
      }

      while (v8 != v10);
      v8 = [movedCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v17.receiver = self;
  v17.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v17 touchesMoved:movedCopy withEvent:event];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  endedCopy = ended;
  v7 = [endedCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(endedCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v12 = v11;
        phase = [v12 phase];
        if (phase >= 2)
        {
          if (phase != 3)
          {
            abort();
          }

          phase = 2;
        }

        *&v19 = 0;
        *&v18 = phase;
        *(&v18 + 1) = [v12 _edgeAim];
        LOBYTE(v19) = [v12 _edgeForceActive];
        *(&v19 + 1) = [v12 _edgeType];
        *&v20 = [v12 _touchIdentifier];
        [v12 _locationInSceneReferenceSpace];
        *(&v20 + 1) = v14;
        *&v21 = v15;
        [v12 timestamp];
        *(&v21 + 1) = v16;

        [(_UISEGestureFeature *)self->_rootFeature incorporateSample:&v18];
        ++v10;
      }

      while (v8 != v10);
      v8 = [endedCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v17.receiver = self;
  v17.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v17 touchesEnded:endedCopy withEvent:event];
}

- (void)featureDidChangeState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  state = [(_UISEGestureFeature *)self->_rootFeature state];
  if (state == 2)
  {
    self->_touchedEdges = 0;

    [(UIGestureRecognizer *)self setState:5];
  }

  else if (state == 1)
  {
    [(UIPanGestureRecognizer *)self _removeHysteresisFromTranslation];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    subfeatures = [(_UISEMuxGestureFeature *)self->_rootFeature subfeatures];
    v6 = [subfeatures countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      v9 = 15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(subfeatures);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          subfeatures2 = [(_UISEMuxGestureFeature *)self->_rootFeature subfeatures];
          v13 = [subfeatures2 objectForKeyedSubscript:v11];

          if ([v13 state] == 1)
          {
            v14 = objc_getAssociatedObject(v13, &__lastTouchedEdgesProviderKey);
            v9 &= [v14 touchedEdges];
          }
        }

        v7 = [subfeatures countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v9 = 15;
    }

    _touchInterfaceOrientation = [(UIScreenEdgePanGestureRecognizer *)self _touchInterfaceOrientation];
    v16 = 90;
    v17 = -90;
    v18 = 180;
    if (_touchInterfaceOrientation != 2)
    {
      v18 = 0;
    }

    if (_touchInterfaceOrientation != 4)
    {
      v17 = v18;
    }

    if (_touchInterfaceOrientation != 3)
    {
      v16 = v17;
    }

    if (_touchInterfaceOrientation == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    self->_touchedEdges = _rotatedEdgesGivenOrientationInDegrees(v9, v19);
    [(UIGestureRecognizer *)self setState:1];
  }
}

- (void)_setHysteresis:(double)hysteresis
{
  [(_UISEGestureFeatureSettings *)self->_settings setHysteresis:?];
  v5.receiver = self;
  v5.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v5 _setHysteresis:hysteresis];
}

- (void)setMinimumNumberOfTouches:(unint64_t)touches
{
  [(_UISEGestureFeatureSettings *)self->_settings setMinimumNumberOfSubfeatures:?];
  v5.receiver = self;
  v5.super_class = UIScreenEdgePanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v5 setMinimumNumberOfTouches:touches];
}

- (id)_beginRequiringIgnoresHIDEdgeFlagsForReason:(id)reason
{
  ignoreHIDEdgeFlagsAssertionController = self->_ignoreHIDEdgeFlagsAssertionController;
  if (!ignoreHIDEdgeFlagsAssertionController)
  {
    v6 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
    v7 = self->_ignoreHIDEdgeFlagsAssertionController;
    self->_ignoreHIDEdgeFlagsAssertionController = v6;

    ignoreHIDEdgeFlagsAssertionController = self->_ignoreHIDEdgeFlagsAssertionController;
  }

  return [(_UIAssertionController *)ignoreHIDEdgeFlagsAssertionController vendAssertionOfType:1 initialState:1 reason:reason requiresExplicitInvalidation:0];
}

@end
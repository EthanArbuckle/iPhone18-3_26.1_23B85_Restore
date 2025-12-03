@interface _UIKBProductivityPanGestureRecognizer
+ (id)productivityPanGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate;
- (BOOL)isShiftOrMoreKeyForTouch:(id)touch;
- (CGPoint)beginPanCentroid;
- (CGPoint)centroidOfTouches:(id)touches;
- (_UIKBProductivityPanGestureRecognizer)initWithCoder:(id)coder;
- (_UIKBProductivityPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation _UIKBProductivityPanGestureRecognizer

- (void)reset
{
  v7.receiver = self;
  v7.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIGestureRecognizer *)&v7 reset];
  activeTouches = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  [activeTouches removeAllObjects];

  [(_UIKBProductivityPanGestureRecognizer *)self setActiveTouches:0];
  shiftTouches = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
  [shiftTouches removeAllObjects];

  [(_UIKBProductivityPanGestureRecognizer *)self setShiftTouches:0];
  beginTouchLocations = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
  [beginTouchLocations removeAllObjects];

  [(_UIKBProductivityPanGestureRecognizer *)self setBeginTouchLocations:0];
  transformAnalyzer = [(_UIKBProductivityPanGestureRecognizer *)self transformAnalyzer];
  [transformAnalyzer reset];

  [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanTimestamp:0.0];
  [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanCentroid:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(_UIKBProductivityPanGestureRecognizer *)self setActiveTouches:0];
  [(_UIKBProductivityPanGestureRecognizer *)self setShiftTouches:0];
  [(_UIKBProductivityPanGestureRecognizer *)self setTooMuchSingleMovement:0];
}

+ (id)productivityPanGestureRecognizerWithTarget:(id)target action:(SEL)action delegate:(id)delegate
{
  delegateCopy = delegate;
  targetCopy = target;
  v9 = [[_UIKBProductivityPanGestureRecognizer alloc] initWithTarget:targetCopy action:action];

  if (v9)
  {
    [(UIGestureRecognizer *)v9 setAllowedTouchTypes:&unk_1EFE2C028];
    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.threeFingerPan"];
    [(UIPanGestureRecognizer *)v9 setDelegate:delegateCopy];
    [(UIPanGestureRecognizer *)v9 setMinimumNumberOfTouches:3];
    [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
    if (_systemGesturesDontCancelTouches(delegateCopy))
    {
      [(UIGestureRecognizer *)v9 setCancelsTouchesInView:0];
    }

    [(UIPanGestureRecognizer *)v9 _setFailsPastHysteresisWithoutMinTouches:1];
    v10 = +[_UITextSelectionSettings sharedInstance];
    [v10 allowableSeparation];
    [(UIPanGestureRecognizer *)v9 _setAllowableSeparation:v11 + v11];

    [(UIPanGestureRecognizer *)v9 _setRequiresImmediateMultipleTouches:1];
    [(UIPanGestureRecognizer *)v9 _setAllowableTouchTimeSeparation:0.08];
    v12 = v9;
  }

  return v9;
}

- (_UIKBProductivityPanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = _UIKBProductivityPanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    _UIUndoGestureRecognizerCommonInit(v4);
  }

  return v5;
}

- (_UIKBProductivityPanGestureRecognizer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _UIKBProductivityPanGestureRecognizer;
  v5 = [(UIPanGestureRecognizer *)&v9 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    _UIUndoGestureRecognizerCommonInit(v5);
    if ([coderCopy containsValueForKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"])
    {
      v6->super._minimumNumberOfTouches = [coderCopy decodeIntegerForKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"];
    }

    if ([coderCopy containsValueForKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"])
    {
      v6->super._maximumNumberOfTouches = [coderCopy decodeIntegerForKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"];
    }

    v7 = v6;
  }

  return v6;
}

- (BOOL)isShiftOrMoreKeyForTouch:(id)touch
{
  touchCopy = touch;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 callLayoutIsGeometricShiftOrMoreKeyForTouch:touchCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v52 = *MEMORY[0x1E69E9840];
  beganCopy = began;
  eventCopy = event;
  [(_UIKBProductivityPanGestureRecognizer *)self beginPanTimestamp];
  if (v8 == 0.0)
  {
    [eventCopy timestamp];
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanTimestamp:?];
  }

  v49.receiver = self;
  v49.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v49 touchesBegan:beganCopy withEvent:eventCopy];
  activeTouches = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];

  if (!activeTouches)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    [(_UIKBProductivityPanGestureRecognizer *)self setActiveTouches:v10];
  }

  v40 = eventCopy;
  activeTouches2 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  [activeTouches2 unionSet:beganCopy];

  beginTouchLocations = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];

  if (!beginTouchLocations)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginTouchLocations:dictionary];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  activeTouches3 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  v15 = [activeTouches3 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v46;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v46 != v17)
        {
          objc_enumerationMutation(activeTouches3);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        beginTouchLocations2 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
        v21 = [beginTouchLocations2 objectForKey:v19];

        if (!v21)
        {
          beginTouchLocations3 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
          v23 = MEMORY[0x1E696B098];
          [v19 locationInView:0];
          v24 = [v23 valueWithCGPoint:?];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "_touchIdentifier")}];
          [beginTouchLocations3 setObject:v24 forKey:v25];
        }
      }

      v16 = [activeTouches3 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v16);
  }

  activeTouches4 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  v27 = [activeTouches4 count];
  minimumNumberOfTouches = [(UIPanGestureRecognizer *)self minimumNumberOfTouches];

  if (v27 == minimumNumberOfTouches)
  {
    activeTouches5 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
    allObjects = [activeTouches5 allObjects];
    [(_UIKBProductivityPanGestureRecognizer *)self centroidOfTouches:allObjects];
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanCentroid:?];
  }

  else
  {
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanCentroid:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  shiftTouches = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];

  if (!shiftTouches)
  {
    v32 = [MEMORY[0x1E695DFA8] set];
    [(_UIKBProductivityPanGestureRecognizer *)self setShiftTouches:v32];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = beganCopy;
  v34 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v42;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v41 + 1) + 8 * j);
        if ([(_UIKBProductivityPanGestureRecognizer *)self isShiftOrMoreKeyForTouch:v38])
        {
          shiftTouches2 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
          [shiftTouches2 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v35);
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v45 = *MEMORY[0x1E69E9840];
  movedCopy = moved;
  eventCopy = event;
  [eventCopy timestamp];
  v9 = v8;
  [(_UIKBProductivityPanGestureRecognizer *)self beginPanTimestamp];
  v11 = v10;
  v12 = [(UIGestureRecognizer *)self _activeTouchesForEvent:eventCopy];
  transformAnalyzer = [(_UIKBProductivityPanGestureRecognizer *)self transformAnalyzer];
  [transformAnalyzer analyzeTouches:v12];

  v43.receiver = self;
  v43.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v43 touchesMoved:movedCopy withEvent:eventCopy];
  if ([v12 count] <= 2 && -[UIGestureRecognizer state](self, "state") <= UIGestureRecognizerStatePossible)
  {
    v37 = v12;
    v38 = movedCopy;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          [v19 locationInView:{0, v37, v38, v39}];
          v21 = v20;
          v23 = v22;
          beginTouchLocations = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "_touchIdentifier")}];
          v26 = [beginTouchLocations objectForKey:v25];
          [v26 CGPointValue];
          v28 = v27;
          v30 = v29;

          if (sqrt((v28 - v21) * (v28 - v21) + (v30 - v23) * (v30 - v23)) > 20.0)
          {
            [(_UIKBProductivityPanGestureRecognizer *)self setTooMuchSingleMovement:1];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    v12 = v37;
    movedCopy = v38;
  }

  v31 = v9 - v11;
  v32 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches:v37];
  v33 = [v32 count];

  activeTouches = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  if ([activeTouches count] == 3 || -[UIGestureRecognizer state](self, "state") > UIGestureRecognizerStatePossible)
  {
    v35 = 1;
  }

  else
  {
    transformAnalyzer2 = [(_UIKBProductivityPanGestureRecognizer *)self transformAnalyzer];
    v35 = [transformAnalyzer2 dominantComponent] == 1;
  }

  if ([(_UIKBProductivityPanGestureRecognizer *)self tooMuchSingleMovement]|| v33 || v31 > 0.24 && !v35)
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v24.receiver = self;
  v24.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v24 touchesEnded:endedCopy withEvent:event];
  delegate = [(UIGestureRecognizer *)self delegate];
  if ((_isSystemGestureForDelegate(delegate) & 1) != 0 || (([(_UIKBProductivityPanGestureRecognizer *)self beginPanCentroid], v9 == *MEMORY[0x1E695EFF8]) ? (v10 = v8 == *(MEMORY[0x1E695EFF8] + 8)) : (v10 = 0), v10))
  {
  }

  else
  {
    activeTouches = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
    v12 = [activeTouches count];
    minimumNumberOfTouches = [(UIPanGestureRecognizer *)self minimumNumberOfTouches];

    if (v12 == minimumNumberOfTouches)
    {
      allObjects = [endedCopy allObjects];
      [(_UIKBProductivityPanGestureRecognizer *)self centroidOfTouches:allObjects];
      v16 = v15;
      v18 = v17;

      [(_UIKBProductivityPanGestureRecognizer *)self beginPanCentroid];
      v20 = vabdd_f64(v16, v19);
      [(_UIKBProductivityPanGestureRecognizer *)self beginPanCentroid];
      if (v20 <= vabdd_f64(v18, v21))
      {
        [(UIGestureRecognizer *)self setState:5];
      }
    }
  }

  activeTouches2 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  [activeTouches2 minusSet:endedCopy];

  shiftTouches = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
  [shiftTouches minusSet:endedCopy];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _UIKBProductivityPanGestureRecognizer;
  cancelledCopy = cancelled;
  [(UIPanGestureRecognizer *)&v9 touchesCancelled:cancelledCopy withEvent:event];
  v7 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches:v9.receiver];
  [v7 minusSet:cancelledCopy];

  shiftTouches = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
  [shiftTouches minusSet:cancelledCopy];
}

- (CGPoint)centroidOfTouches:(id)touches
{
  v26 = *MEMORY[0x1E69E9840];
  touchesCopy = touches;
  if ([touchesCopy count])
  {
    if ([touchesCopy count] == 1)
    {
      v4 = [touchesCopy objectAtIndexedSubscript:0];
      [v4 locationInView:0];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = touchesCopy;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        v13 = 0.0;
        v14 = 0.0;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            [v16 locationInView:{0, v21}];
            v14 = v14 + v17;
            [v16 locationInView:0];
            v13 = v13 + v18;
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      else
      {
        v13 = 0.0;
        v14 = 0.0;
      }

      v6 = v14 / [v9 count];
      v8 = v13 / [v9 count];
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v19 = v6;
  v20 = v8;
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)beginPanCentroid
{
  x = self->_beginPanCentroid.x;
  y = self->_beginPanCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
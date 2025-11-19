@interface _UIKBProductivityPanGestureRecognizer
+ (id)productivityPanGestureRecognizerWithTarget:(id)a3 action:(SEL)a4 delegate:(id)a5;
- (BOOL)isShiftOrMoreKeyForTouch:(id)a3;
- (CGPoint)beginPanCentroid;
- (CGPoint)centroidOfTouches:(id)a3;
- (_UIKBProductivityPanGestureRecognizer)initWithCoder:(id)a3;
- (_UIKBProductivityPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation _UIKBProductivityPanGestureRecognizer

- (void)reset
{
  v7.receiver = self;
  v7.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIGestureRecognizer *)&v7 reset];
  v3 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  [v3 removeAllObjects];

  [(_UIKBProductivityPanGestureRecognizer *)self setActiveTouches:0];
  v4 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
  [v4 removeAllObjects];

  [(_UIKBProductivityPanGestureRecognizer *)self setShiftTouches:0];
  v5 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
  [v5 removeAllObjects];

  [(_UIKBProductivityPanGestureRecognizer *)self setBeginTouchLocations:0];
  v6 = [(_UIKBProductivityPanGestureRecognizer *)self transformAnalyzer];
  [v6 reset];

  [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanTimestamp:0.0];
  [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanCentroid:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  [(_UIKBProductivityPanGestureRecognizer *)self setActiveTouches:0];
  [(_UIKBProductivityPanGestureRecognizer *)self setShiftTouches:0];
  [(_UIKBProductivityPanGestureRecognizer *)self setTooMuchSingleMovement:0];
}

+ (id)productivityPanGestureRecognizerWithTarget:(id)a3 action:(SEL)a4 delegate:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[_UIKBProductivityPanGestureRecognizer alloc] initWithTarget:v8 action:a4];

  if (v9)
  {
    [(UIGestureRecognizer *)v9 setAllowedTouchTypes:&unk_1EFE2C028];
    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.kbProductivity.threeFingerPan"];
    [(UIPanGestureRecognizer *)v9 setDelegate:v7];
    [(UIPanGestureRecognizer *)v9 setMinimumNumberOfTouches:3];
    [(UIGestureRecognizer *)v9 setDelaysTouchesBegan:0];
    [(UIGestureRecognizer *)v9 setDelaysTouchesEnded:0];
    if (_systemGesturesDontCancelTouches(v7))
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

- (_UIKBProductivityPanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UIKBProductivityPanGestureRecognizer;
  v4 = [(UIPanGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    _UIUndoGestureRecognizerCommonInit(v4);
  }

  return v5;
}

- (_UIKBProductivityPanGestureRecognizer)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIKBProductivityPanGestureRecognizer;
  v5 = [(UIPanGestureRecognizer *)&v9 initWithCoder:v4];
  v6 = v5;
  if (v5)
  {
    _UIUndoGestureRecognizerCommonInit(v5);
    if ([v4 containsValueForKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"])
    {
      v6->super._minimumNumberOfTouches = [v4 decodeIntegerForKey:@"UIPanGestureRecognizer.minimumNumberOfTouches"];
    }

    if ([v4 containsValueForKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"])
    {
      v6->super._maximumNumberOfTouches = [v4 decodeIntegerForKey:@"UIPanGestureRecognizer.maximumNumberOfTouches"];
    }

    v7 = v6;
  }

  return v6;
}

- (BOOL)isShiftOrMoreKeyForTouch:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 callLayoutIsGeometricShiftOrMoreKeyForTouch:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_UIKBProductivityPanGestureRecognizer *)self beginPanTimestamp];
  if (v8 == 0.0)
  {
    [v7 timestamp];
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanTimestamp:?];
  }

  v49.receiver = self;
  v49.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v49 touchesBegan:v6 withEvent:v7];
  v9 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];

  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    [(_UIKBProductivityPanGestureRecognizer *)self setActiveTouches:v10];
  }

  v40 = v7;
  v11 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  [v11 unionSet:v6];

  v12 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];

  if (!v12)
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginTouchLocations:v13];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v14 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  v15 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v45 + 1) + 8 * i);
        v20 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
        v21 = [v20 objectForKey:v19];

        if (!v21)
        {
          v22 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
          v23 = MEMORY[0x1E696B098];
          [v19 locationInView:0];
          v24 = [v23 valueWithCGPoint:?];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "_touchIdentifier")}];
          [v22 setObject:v24 forKey:v25];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v16);
  }

  v26 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  v27 = [v26 count];
  v28 = [(UIPanGestureRecognizer *)self minimumNumberOfTouches];

  if (v27 == v28)
  {
    v29 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
    v30 = [v29 allObjects];
    [(_UIKBProductivityPanGestureRecognizer *)self centroidOfTouches:v30];
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanCentroid:?];
  }

  else
  {
    [(_UIKBProductivityPanGestureRecognizer *)self setBeginPanCentroid:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  }

  v31 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];

  if (!v31)
  {
    v32 = [MEMORY[0x1E695DFA8] set];
    [(_UIKBProductivityPanGestureRecognizer *)self setShiftTouches:v32];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = v6;
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
          v39 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
          [v39 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v35);
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v7 timestamp];
  v9 = v8;
  [(_UIKBProductivityPanGestureRecognizer *)self beginPanTimestamp];
  v11 = v10;
  v12 = [(UIGestureRecognizer *)self _activeTouchesForEvent:v7];
  v13 = [(_UIKBProductivityPanGestureRecognizer *)self transformAnalyzer];
  [v13 analyzeTouches:v12];

  v43.receiver = self;
  v43.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v43 touchesMoved:v6 withEvent:v7];
  if ([v12 count] <= 2 && -[UIGestureRecognizer state](self, "state") <= UIGestureRecognizerStatePossible)
  {
    v37 = v12;
    v38 = v6;
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
          v24 = [(_UIKBProductivityPanGestureRecognizer *)self beginTouchLocations];
          v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "_touchIdentifier")}];
          v26 = [v24 objectForKey:v25];
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
    v6 = v38;
  }

  v31 = v9 - v11;
  v32 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches:v37];
  v33 = [v32 count];

  v34 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  if ([v34 count] == 3 || -[UIGestureRecognizer state](self, "state") > UIGestureRecognizerStatePossible)
  {
    v35 = 1;
  }

  else
  {
    v36 = [(_UIKBProductivityPanGestureRecognizer *)self transformAnalyzer];
    v35 = [v36 dominantComponent] == 1;
  }

  if ([(_UIKBProductivityPanGestureRecognizer *)self tooMuchSingleMovement]|| v33 || v31 > 0.24 && !v35)
  {
    [(UIGestureRecognizer *)self setState:5];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = _UIKBProductivityPanGestureRecognizer;
  [(UIPanGestureRecognizer *)&v24 touchesEnded:v6 withEvent:a4];
  v7 = [(UIGestureRecognizer *)self delegate];
  if ((_isSystemGestureForDelegate(v7) & 1) != 0 || (([(_UIKBProductivityPanGestureRecognizer *)self beginPanCentroid], v9 == *MEMORY[0x1E695EFF8]) ? (v10 = v8 == *(MEMORY[0x1E695EFF8] + 8)) : (v10 = 0), v10))
  {
  }

  else
  {
    v11 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
    v12 = [v11 count];
    v13 = [(UIPanGestureRecognizer *)self minimumNumberOfTouches];

    if (v12 == v13)
    {
      v14 = [v6 allObjects];
      [(_UIKBProductivityPanGestureRecognizer *)self centroidOfTouches:v14];
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

  v22 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches];
  [v22 minusSet:v6];

  v23 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
  [v23 minusSet:v6];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIKBProductivityPanGestureRecognizer;
  v6 = a3;
  [(UIPanGestureRecognizer *)&v9 touchesCancelled:v6 withEvent:a4];
  v7 = [(_UIKBProductivityPanGestureRecognizer *)self activeTouches:v9.receiver];
  [v7 minusSet:v6];

  v8 = [(_UIKBProductivityPanGestureRecognizer *)self shiftTouches];
  [v8 minusSet:v6];
}

- (CGPoint)centroidOfTouches:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
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
      v9 = v3;
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
@interface _UIFocusMovementPressGestureRecognizer
- (NSMutableOrderedSet)_trackedPresses;
- (_UIFocusMovementPressGestureRecognizer)initWithCoder:(id)a3;
- (_UIFocusMovementPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_startTrackingPresses:(id)a3;
- (void)_stopTrackingPresses:(id)a3;
- (void)_updateForPresses:(id)a3 action:(unint64_t)a4;
- (void)_verifyTrackingPresses:(id)a3;
- (void)repeatingGestureClockDidTick:(id)a3;
- (void)reset;
- (void)setAllowedTouchTypes:(id)a3;
- (void)setFocusHeading:(unint64_t)a3 omitStateUpdate:(BOOL)a4;
- (void)setShouldRepeat:(BOOL)a3;
@end

@implementation _UIFocusMovementPressGestureRecognizer

- (_UIFocusMovementPressGestureRecognizer)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = _UIFocusMovementPressGestureRecognizer;
  v3 = [(UIGestureRecognizer *)&v8 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = MEMORY[0x1E695E0F0];
    [(UIGestureRecognizer *)v5 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
    [(_UIFocusMovementPressGestureRecognizer *)v5 setAllowedTouchTypes:v6];
    [(UIGestureRecognizer *)v5 setCancelsTouchesInView:0];
    *(&v5->super._gestureFlags + 4) &= ~0x40u;
    [(_UIFocusMovementPressGestureRecognizer *)v5 configureDefaults];
  }

  return v4;
}

- (_UIFocusMovementPressGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v9.receiver = self;
  v9.super_class = _UIFocusMovementPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v9 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = MEMORY[0x1E695E0F0];
    [(UIGestureRecognizer *)v6 setAllowedPressTypes:MEMORY[0x1E695E0F0]];
    [(_UIFocusMovementPressGestureRecognizer *)v6 setAllowedTouchTypes:v7];
    [(UIGestureRecognizer *)v6 setCancelsTouchesInView:0];
    *(&v6->super._gestureFlags + 4) &= ~0x40u;
    [(_UIFocusMovementPressGestureRecognizer *)v6 configureDefaults];
  }

  return v5;
}

- (NSMutableOrderedSet)_trackedPresses
{
  trackedPresses = self->_trackedPresses;
  if (!trackedPresses)
  {
    v4 = objc_opt_new();
    v5 = self->_trackedPresses;
    self->_trackedPresses = v4;

    trackedPresses = self->_trackedPresses;
  }

  return trackedPresses;
}

- (void)setAllowedTouchTypes:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPressGestureRecognizer.m" lineNumber:95 description:@"This gesture recognizer is not designed to work with touches."];
  }

  v7.receiver = self;
  v7.super_class = _UIFocusMovementPressGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setAllowedTouchTypes:v5];
}

- (void)setFocusHeading:(unint64_t)a3 omitStateUpdate:(BOOL)a4
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_focusHeading == a3)
  {
    if (a3)
    {
      return;
    }

    v5 = [(UIGestureRecognizer *)self state:0];
    goto LABEL_11;
  }

  self->_focusHeading = a3;
  if (!a3)
  {
    v5 = [(UIGestureRecognizer *)self state:0];
    if ((v5 - 1) < 2)
    {
      v11 = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
      [v11 stopClock];

      v9 = self;
      v10 = 3;
LABEL_13:

      [(UIGestureRecognizer *)v9 setState:v10];
      return;
    }

LABEL_11:
    if (v5)
    {
      return;
    }

    v9 = self;
    v10 = 5;
    goto LABEL_13;
  }

  [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:0];
  v7 = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
  [v7 startClock];

  v8 = [(UIGestureRecognizer *)self state];
  if ((v8 - 3) >= 3)
  {
    if (v8 > UIGestureRecognizerStateChanged || a4)
    {
      return;
    }

    v9 = self;
    v10 = 2;
    goto LABEL_13;
  }

  v12 = *(__UILogGetCategoryCachedImpl("UIFocus", &setFocusHeading_omitStateUpdate____s_category) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = self;
    v15 = v12;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v13 stringWithFormat:@"<%@: %p>", v17, v14];

    *buf = 138412290;
    v20 = v18;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%@ received a heading update while in an end state. This is considered an implementation error in the gesture recognizer.", buf, 0xCu);
  }
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = _UIFocusMovementPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 reset];
  v3 = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
  [v3 stopClock];

  v4 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  [v4 removeAllObjects];

  [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:0];
  self->_focusHeading = 0;
}

- (void)setShouldRepeat:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_shouldRepeat != a3)
  {
    v3 = a3;
    self->_shouldRepeat = a3;
    [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:0];
    if (v3)
    {
      v5 = objc_opt_new();
      [v5 setDelegate:self];
      [(_UIFocusMovementPressGestureRecognizer *)self setRepeatingClock:v5];
      if ([(_UIFocusMovementPressGestureRecognizer *)self _isRecognizing])
      {
        v6 = *(__UILogGetCategoryCachedImpl("UIFocus", &setShouldRepeat____s_category) + 8);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = self;
          v9 = v6;
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = [v7 stringWithFormat:@"<%@: %p>", v11, v8];

          *buf = 138412290;
          v15 = v12;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Changed %@ to repeat while a gesture is recongizing. Repeating will start working on next recognition.", buf, 0xCu);
        }
      }
    }

    else
    {
      v13 = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
      [v13 stopClock];

      [(_UIFocusMovementPressGestureRecognizer *)self setRepeatingClock:0];
    }
  }
}

- (void)repeatingGestureClockDidTick:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(_UIFocusMovementPressGestureRecognizer *)self _isRecognizing])
  {
    [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:[(_UIFocusMovementPressGestureRecognizer *)self repeatCount]+ 1];

    [(UIGestureRecognizer *)self setState:2];
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        if (self)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = self;
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v11 = [v12 stringWithFormat:@"<%@: %p>", v15, v13];
        }

        else
        {
          v11 = @"(nil)";
        }

        *buf = 138412546;
        v17 = v11;
        v18 = 1024;
        v19 = [(UIGestureRecognizer *)self state];
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "%@ received a repeating clock tick while not in a recognizing state. Current state: %d", buf, 0x12u);
      }
    }

    else
    {
      v4 = *(__UILogGetCategoryCachedImpl("Assert", &repeatingGestureClockDidTick____s_category) + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if (self)
        {
          v5 = MEMORY[0x1E696AEC0];
          v6 = self;
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = [v5 stringWithFormat:@"<%@: %p>", v8, v6];
        }

        else
        {
          v9 = @"(nil)";
        }

        v10 = v9;
        *buf = 138412546;
        v17 = v9;
        v18 = 1024;
        v19 = [(UIGestureRecognizer *)self state];
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@ received a repeating clock tick while not in a recognizing state. Current state: %d", buf, 0x12u);
      }
    }
  }
}

- (void)_startTrackingPresses:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  [v5 unionSet:v4];
}

- (void)_stopTrackingPresses:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  [v5 minusSet:v4];
}

- (void)_verifyTrackingPresses:(id)a3
{
  v5 = [a3 mutableCopy];
  v6 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  v7 = [v6 set];
  [v5 minusSet:v7];

  if ([v5 count])
  {
    [UIApp _isSpringBoard];
    if (_UIIsPrivateMainBundle())
    {
      [UIApp _isSpringBoard];
      [UIApp _isSpringBoard];
    }

    if (dyld_program_sdk_at_least())
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPressGestureRecognizer.m" lineNumber:247 description:@"Found untracked presses that are not in the began phase."];
    }

    else if (os_variant_has_internal_diagnostics())
    {
      v10 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v10, OS_LOG_TYPE_FAULT, "Found untracked presses that are not in the began phase.This may leave views in an invalid state and user interaction might be impacted. This will become an assert in a future version.", buf, 2u);
      }
    }

    else
    {
      v9 = *(__UILogGetCategoryCachedImpl("Assert", &_verifyTrackingPresses____s_category) + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Found untracked presses that are not in the began phase.This may leave views in an invalid state and user interaction might be impacted. This will become an assert in a future version.", v11, 2u);
      }
    }
  }
}

- (void)_updateForPresses:(id)a3 action:(unint64_t)a4
{
  v6 = a3;
  v11 = v6;
  switch(a4)
  {
    case 2uLL:
      [(_UIFocusMovementPressGestureRecognizer *)self _verifyTrackingPresses:v6];
      break;
    case 1uLL:
      [(_UIFocusMovementPressGestureRecognizer *)self _verifyTrackingPresses:v6];
      [(_UIFocusMovementPressGestureRecognizer *)self _stopTrackingPresses:v11];
      break;
    case 0uLL:
      [(_UIFocusMovementPressGestureRecognizer *)self _startTrackingPresses:v6];
      break;
  }

  v7 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
    v10 = [(_UIFocusMovementPressGestureRecognizer *)self focusHeadingForPresses:v9];

    [(_UIFocusMovementPressGestureRecognizer *)self setFocusHeading:v10 omitStateUpdate:a4 != 0];
  }

  else
  {
    [(_UIFocusMovementPressGestureRecognizer *)self setFocusHeading:0];
  }
}

@end
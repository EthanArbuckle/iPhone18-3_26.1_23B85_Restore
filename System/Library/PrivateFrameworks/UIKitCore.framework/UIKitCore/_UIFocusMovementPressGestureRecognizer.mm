@interface _UIFocusMovementPressGestureRecognizer
- (NSMutableOrderedSet)_trackedPresses;
- (_UIFocusMovementPressGestureRecognizer)initWithCoder:(id)coder;
- (_UIFocusMovementPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)_startTrackingPresses:(id)presses;
- (void)_stopTrackingPresses:(id)presses;
- (void)_updateForPresses:(id)presses action:(unint64_t)action;
- (void)_verifyTrackingPresses:(id)presses;
- (void)repeatingGestureClockDidTick:(id)tick;
- (void)reset;
- (void)setAllowedTouchTypes:(id)types;
- (void)setFocusHeading:(unint64_t)heading omitStateUpdate:(BOOL)update;
- (void)setShouldRepeat:(BOOL)repeat;
@end

@implementation _UIFocusMovementPressGestureRecognizer

- (_UIFocusMovementPressGestureRecognizer)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = _UIFocusMovementPressGestureRecognizer;
  v3 = [(UIGestureRecognizer *)&v8 initWithCoder:coder];
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

- (_UIFocusMovementPressGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = _UIFocusMovementPressGestureRecognizer;
  v4 = [(UIGestureRecognizer *)&v9 initWithTarget:target action:action];
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

- (void)setAllowedTouchTypes:(id)types
{
  typesCopy = types;
  if ([typesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPressGestureRecognizer.m" lineNumber:95 description:@"This gesture recognizer is not designed to work with touches."];
  }

  v7.receiver = self;
  v7.super_class = _UIFocusMovementPressGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setAllowedTouchTypes:typesCopy];
}

- (void)setFocusHeading:(unint64_t)heading omitStateUpdate:(BOOL)update
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_focusHeading == heading)
  {
    if (heading)
    {
      return;
    }

    v5 = [(UIGestureRecognizer *)self state:0];
    goto LABEL_11;
  }

  self->_focusHeading = heading;
  if (!heading)
  {
    v5 = [(UIGestureRecognizer *)self state:0];
    if ((v5 - 1) < 2)
    {
      repeatingClock = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
      [repeatingClock stopClock];

      selfCopy3 = self;
      v10 = 3;
LABEL_13:

      [(UIGestureRecognizer *)selfCopy3 setState:v10];
      return;
    }

LABEL_11:
    if (v5)
    {
      return;
    }

    selfCopy3 = self;
    v10 = 5;
    goto LABEL_13;
  }

  [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:0];
  repeatingClock2 = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
  [repeatingClock2 startClock];

  state = [(UIGestureRecognizer *)self state];
  if ((state - 3) >= 3)
  {
    if (state > UIGestureRecognizerStateChanged || update)
    {
      return;
    }

    selfCopy3 = self;
    v10 = 2;
    goto LABEL_13;
  }

  v12 = *(__UILogGetCategoryCachedImpl("UIFocus", &setFocusHeading_omitStateUpdate____s_category) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = MEMORY[0x1E696AEC0];
    selfCopy4 = self;
    v15 = v12;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    selfCopy4 = [v13 stringWithFormat:@"<%@: %p>", v17, selfCopy4];

    *buf = 138412290;
    v20 = selfCopy4;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "%@ received a heading update while in an end state. This is considered an implementation error in the gesture recognizer.", buf, 0xCu);
  }
}

- (void)reset
{
  v5.receiver = self;
  v5.super_class = _UIFocusMovementPressGestureRecognizer;
  [(UIGestureRecognizer *)&v5 reset];
  repeatingClock = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
  [repeatingClock stopClock];

  _trackedPresses = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  [_trackedPresses removeAllObjects];

  [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:0];
  self->_focusHeading = 0;
}

- (void)setShouldRepeat:(BOOL)repeat
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_shouldRepeat != repeat)
  {
    repeatCopy = repeat;
    self->_shouldRepeat = repeat;
    [(_UIFocusMovementPressGestureRecognizer *)self setRepeatCount:0];
    if (repeatCopy)
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
          selfCopy = self;
          v9 = v6;
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          selfCopy = [v7 stringWithFormat:@"<%@: %p>", v11, selfCopy];

          *buf = 138412290;
          v15 = selfCopy;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Changed %@ to repeat while a gesture is recongizing. Repeating will start working on next recognition.", buf, 0xCu);
        }
      }
    }

    else
    {
      repeatingClock = [(_UIFocusMovementPressGestureRecognizer *)self repeatingClock];
      [repeatingClock stopClock];

      [(_UIFocusMovementPressGestureRecognizer *)self setRepeatingClock:0];
    }
  }
}

- (void)repeatingGestureClockDidTick:(id)tick
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
          selfCopy = self;
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          selfCopy = [v12 stringWithFormat:@"<%@: %p>", v15, selfCopy];
        }

        else
        {
          selfCopy = @"(nil)";
        }

        *buf = 138412546;
        v17 = selfCopy;
        v18 = 1024;
        state = [(UIGestureRecognizer *)self state];
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
          selfCopy2 = self;
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          selfCopy2 = [v5 stringWithFormat:@"<%@: %p>", v8, selfCopy2];
        }

        else
        {
          selfCopy2 = @"(nil)";
        }

        v10 = selfCopy2;
        *buf = 138412546;
        v17 = selfCopy2;
        v18 = 1024;
        state = [(UIGestureRecognizer *)self state];
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "%@ received a repeating clock tick while not in a recognizing state. Current state: %d", buf, 0x12u);
      }
    }
  }
}

- (void)_startTrackingPresses:(id)presses
{
  pressesCopy = presses;
  _trackedPresses = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  [_trackedPresses unionSet:pressesCopy];
}

- (void)_stopTrackingPresses:(id)presses
{
  pressesCopy = presses;
  _trackedPresses = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  [_trackedPresses minusSet:pressesCopy];
}

- (void)_verifyTrackingPresses:(id)presses
{
  v5 = [presses mutableCopy];
  _trackedPresses = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  v7 = [_trackedPresses set];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementPressGestureRecognizer.m" lineNumber:247 description:@"Found untracked presses that are not in the began phase."];
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

- (void)_updateForPresses:(id)presses action:(unint64_t)action
{
  pressesCopy = presses;
  v11 = pressesCopy;
  switch(action)
  {
    case 2uLL:
      [(_UIFocusMovementPressGestureRecognizer *)self _verifyTrackingPresses:pressesCopy];
      break;
    case 1uLL:
      [(_UIFocusMovementPressGestureRecognizer *)self _verifyTrackingPresses:pressesCopy];
      [(_UIFocusMovementPressGestureRecognizer *)self _stopTrackingPresses:v11];
      break;
    case 0uLL:
      [(_UIFocusMovementPressGestureRecognizer *)self _startTrackingPresses:pressesCopy];
      break;
  }

  _trackedPresses = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
  v8 = [_trackedPresses count];

  if (v8)
  {
    _trackedPresses2 = [(_UIFocusMovementPressGestureRecognizer *)self _trackedPresses];
    v10 = [(_UIFocusMovementPressGestureRecognizer *)self focusHeadingForPresses:_trackedPresses2];

    [(_UIFocusMovementPressGestureRecognizer *)self setFocusHeading:v10 omitStateUpdate:action != 0];
  }

  else
  {
    [(_UIFocusMovementPressGestureRecognizer *)self setFocusHeading:0];
  }
}

@end
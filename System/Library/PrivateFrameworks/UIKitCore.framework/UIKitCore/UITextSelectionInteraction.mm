@interface UITextSelectionInteraction
- (BOOL)_hasMarkedTextAtLocation:(CGPoint)location;
- (BOOL)_hasTextAlternativesAtLocation:(CGPoint)location;
- (BOOL)_isRepeatedTap:(id)tap gestureLocationOut:(CGPoint *)out;
- (BOOL)_isShiftKeyBeingHeldForGesture:(id)gesture;
- (BOOL)_isWithinRepeatedTapTimeForTouch:(id)touch;
- (BOOL)_usesPencilSelectionBehaviorForGesture:(id)gesture;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)interaction_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldHandleOneFingerTapInUneditable:(id)uneditable;
- (UITextSelectionInteraction)initWithMode:(int64_t)mode indirect:(BOOL)indirect;
- (id)_transientState;
- (int64_t)_textGranularityForNumberOfTaps:(unint64_t)taps;
- (int64_t)handOffGranularity;
- (void)_applyTransientState:(id)state;
- (void)_checkForRepeatedTap:(id)tap gestureLocationOut:(CGPoint *)out;
- (void)_createGestureTuningIfNecessary;
- (void)_handleMultiTapGesture:(id)gesture;
- (void)_showSelectionCommandsIfApplicableAfterDelay:(double)delay;
- (void)_updateTapGestureHistoryWithLocation:(CGPoint)location;
- (void)confirmMarkedText:(id)text;
- (void)didMoveToView:(id)view;
- (void)didUpdateSelectionWithGesture:(id)gesture;
- (void)finishSetup;
- (void)oneFingerTapSelectsAll:(id)all;
- (void)setHybridSelectionWithPoint:(CGPoint)point;
- (void)tapAndAHalf:(id)half;
- (void)tappedToPositionCursorWithGesture:(id)gesture atPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler;
- (void)tappedToSelectTextWithGesture:(id)gesture atPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler;
- (void)tappedToUpdateSelectionWithGesture:(id)gesture atPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler;
- (void)toggleSelectionCommands;
- (void)twoFingerRangedSelectGesture:(id)gesture;
- (void)willUpdateSelectionWithGesture:(id)gesture;
@end

@implementation UITextSelectionInteraction

- (void)finishSetup
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = UITextSelectionInteraction;
  [(UITextInteraction *)&v18 finishSetup];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v19[0] = 0x1EFBA76B0;
  v19[1] = 0x1EFBA76D0;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:{2, 0}];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        root = [(UITextInteraction *)self root];
        v10 = [root recognizerForName:v8];

        if (v10)
        {
          _pairedGestureIdentifiers = [v10 _pairedGestureIdentifiers];
          [_pairedGestureIdentifiers addObject:0x1EFBA75D0];

          _pairedGestureIdentifiers2 = [v10 _pairedGestureIdentifiers];
          [_pairedGestureIdentifiers2 addObject:0x1EFBA7610];

          _pairedGestureIdentifiers3 = [v10 _pairedGestureIdentifiers];
          [_pairedGestureIdentifiers3 addObject:0x1EFBA75F0];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }
}

- (id)_transientState
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"lastTapTimestamp";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastTapTimestamp];
  v7[1] = @"lastTapLocation";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{self->_lastTapLocation.x, self->_lastTapLocation.y}];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (UITextSelectionInteraction)initWithMode:(int64_t)mode indirect:(BOOL)indirect
{
  indirectCopy = indirect;
  v18.receiver = self;
  v18.super_class = UITextSelectionInteraction;
  v6 = [(UITextInteraction *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_indirectSelectionType = indirectCopy;
    if (mode > 1)
    {
      if (mode == 2)
      {
        v8 = sel_confirmMarkedText_;
        if (sel_confirmMarkedText_)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }

      if (mode != 3)
      {
        goto LABEL_20;
      }

      v8 = 0;
      if (indirectCopy)
      {
LABEL_13:
        if (v8)
        {
          goto LABEL_14;
        }

LABEL_20:
        processInfo = [MEMORY[0x1E696AE30] processInfo];
        [processInfo systemUptime];
        v7->_lastTapTimestamp = v15 + -0.5;

        v16 = *(MEMORY[0x1E695F058] + 16);
        v7->_originalCaretRect.origin = *MEMORY[0x1E695F058];
        v7->_originalCaretRect.size = v16;
        v7->_granularityToHandOff = -1;
        v7->_isCharacterGranularityOnMarkedTextPresenceEnabled = _os_feature_enabled_impl();
        return v7;
      }
    }

    else
    {
      if (mode)
      {
        if (mode != 1)
        {
          goto LABEL_20;
        }

        v8 = sel_oneFingerTapSelectsAll_;
        if (!sel_oneFingerTapSelectsAll_)
        {
          goto LABEL_20;
        }

LABEL_14:
        v10 = [[UITextMultiTapRecognizer alloc] initWithTarget:v7 tapAction:v8];
        v11 = v10;
        if (indirectCopy)
        {
          [(UITextMultiTapRecognizer *)v10 setRequiredButtonMask:1];
          [(UITextMultiTapRecognizer *)v11 setRecognizesOnSubsequentTouchDowns:1];
          v12 = 10.0;
        }

        else
        {
          v12 = 60.0;
        }

        [(UITextMultiTapRecognizer *)v11 setAllowableMovement:v12];
        [(UIGestureRecognizer *)v11 setDelaysTouchesEnded:0];
        v13 = &UITextInteractionNameIndirectSingleTap;
        if (!indirectCopy)
        {
          v13 = &UITextInteractionNameSingleTap;
        }

        [(UITextInteraction *)v7 addGestureRecognizer:v11 withName:*v13];

        goto LABEL_20;
      }

      v8 = sel__handleMultiTapGesture_;
      if (indirectCopy)
      {
        goto LABEL_13;
      }
    }

    v9 = [[UITapAndAHalfRecognizer alloc] initWithTarget:v6 action:sel_tapAndAHalf_];
    [(UIGestureRecognizer *)v9 setName:@"com.apple.UIKit.textTapAndAHalf"];
    [(UITapAndAHalfRecognizer *)v9 setAllowableMovement:60.0];
    [(UITextInteraction *)v7 addGestureRecognizer:v9 withName:0x1EFBA7610];

    goto LABEL_13;
  }

  return v7;
}

- (void)didMoveToView:(id)view
{
  v6.receiver = self;
  v6.super_class = UITextSelectionInteraction;
  viewCopy = view;
  [(UITextInteraction *)&v6 didMoveToView:viewCopy];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:viewCopy, v6.receiver, v6.super_class];
  v5 = [viewCopy conformsToProtocol:&unk_1EFE8B2D0];

  self->_viewConformsToTextInput = v5;
}

- (void)_applyTransientState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    v13 = stateCopy;
    v5 = [stateCopy objectForKey:@"lastTapTimestamp"];
    v6 = v5;
    if (v5)
    {
      [v5 doubleValue];
      self->_lastTapTimestamp = v7;
    }

    v8 = [v13 objectForKey:@"lastTapLocation"];
    v9 = v8;
    if (v8)
    {
      p_lastTapLocation = &self->_lastTapLocation;
      [v8 CGPointValue];
      p_lastTapLocation->x = v11;
      p_lastTapLocation->y = v12;
    }

    stateCopy = v13;
  }
}

- (void)toggleSelectionCommands
{
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  _editMenuIsVisibleOrDismissedRecently = [_editMenuAssistant _editMenuIsVisibleOrDismissedRecently];

  assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant2 = [assistantDelegate2 _editMenuAssistant];
  v7 = _editMenuAssistant2;
  if (_editMenuIsVisibleOrDismissedRecently)
  {
    [_editMenuAssistant2 hideSelectionCommands];
  }

  else
  {
    [_editMenuAssistant2 showSelectionCommands];
  }
}

- (void)_showSelectionCommandsIfApplicableAfterDelay:(double)delay
{
  if (![(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    v6 = _editMenuAssistant;
    if (delay == 0.0)
    {
      [_editMenuAssistant showSelectionCommands];
    }

    else
    {
      [_editMenuAssistant showSelectionCommandsAfterDelay:delay];
    }
  }
}

- (BOOL)_usesPencilSelectionBehaviorForGesture:(id)gesture
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  touchesForTap = [gesture touchesForTap];
  v4 = [touchesForTap countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(touchesForTap);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [touchesForTap countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)_isShiftKeyBeingHeldForGesture:(id)gesture
{
  v3 = +[UIKeyboardImpl activeInstance];
  isShiftKeyBeingHeld = [v3 isShiftKeyBeingHeld];

  return isShiftKeyBeingHeld;
}

- (BOOL)_isWithinRepeatedTapTimeForTouch:(id)touch
{
  if (touch)
  {
    [touch timestamp];
    v5 = v4;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v5 = v7;
  }

  return v5 - self->_lastTapTimestamp <= 0.35;
}

- (BOOL)_isRepeatedTap:(id)tap gestureLocationOut:(CGPoint *)out
{
  tapCopy = tap;
  _textInput = [(UITextInteraction *)self _textInput];
  view = [tapCopy view];
  superview = [view superview];

  [tapCopy locationInView:superview];
  v11 = v10;
  v13 = v12;
  textInputView = [_textInput textInputView];
  [superview convertPoint:textInputView toView:{v11, v13}];
  v16 = v15;
  v18 = v17;

  if (out)
  {
    out->x = v16;
    out->y = v18;
  }

  tapCount = [tapCopy tapCount];

  return tapCount > 1;
}

- (int64_t)handOffGranularity
{
  granularityToHandOff = self->_granularityToHandOff;
  self->_granularityToHandOff = -1;
  return granularityToHandOff;
}

- (int64_t)_textGranularityForNumberOfTaps:(unint64_t)taps
{
  if (taps >= 2 && [(UITextInteraction *)self _shouldObscureTextInput])
  {
    return 5;
  }

  if (taps > 2)
  {
    return 3;
  }

  return qword_18A682BE8[taps];
}

- (void)_checkForRepeatedTap:(id)tap gestureLocationOut:(CGPoint *)out
{
  tapCopy = tap;
  view = [(UITextInteraction *)self view];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  activeSelectionController = [assistantDelegate activeSelectionController];
  selection = [activeSelectionController selection];

  v40 = 0;
  v11 = [(UITextSelectionInteraction *)self _isRepeatedTap:tapCopy gestureLocationOut:&v40];
  if ([tapCopy state] == 1)
  {
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v12 clearAnimationStyleForUserDrivenPresentation];

    [assistantDelegate setFirstResponderIfNecessary];
    [assistantDelegate setSelectionHighlightMode:0];
  }

  v13 = +[UIKeyboardImpl activeInstance];
  [v13 updateIdleDetection:4];

  [(UITextInteraction *)self _beginSelectionChange];
  if ([tapCopy state] == 1)
  {
    activeSelectionController2 = [assistantDelegate activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = activeSelectionController2;

    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant hideSelectionCommands];
  }

  [(UITextSelectionInteraction *)self willUpdateSelectionWithGesture:tapCopy];
  v17 = [(UITextSelectionInteraction *)self _isShiftKeyBeingHeldForGesture:tapCopy];
  if (v11)
  {
    v18 = -[UITextSelectionInteraction _textGranularityForNumberOfTaps:](self, "_textGranularityForNumberOfTaps:", [tapCopy tapCount]);
    self->_granularityToHandOff = v18;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __70__UITextSelectionInteraction__checkForRepeatedTap_gestureLocationOut___block_invoke;
    v38[3] = &unk_1E70F35B8;
    v38[4] = self;
    v39 = tapCopy;
    [(UITextSelectionInteraction *)self tappedToSelectTextWithGesture:v39 atPoint:v18 granularity:v38 completionHandler:v40];
    v19 = v39;
LABEL_17:

    goto LABEL_18;
  }

  v20 = v17;
  if ([(UITextInteraction *)self _shouldObscureTextInput])
  {
    v21 = 5;
  }

  else if (self->_isCharacterGranularityOnMarkedTextPresenceEnabled)
  {
    _textInput = [(UITextInteraction *)self _textInput];
    markedTextRange = [_textInput markedTextRange];
    v21 = markedTextRange == 0;
  }

  else
  {
    v21 = 1;
  }

  v24 = [(UITextSelectionInteraction *)self _usesPencilSelectionBehaviorForGesture:tapCopy];
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior]|| v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  if (v20)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __70__UITextSelectionInteraction__checkForRepeatedTap_gestureLocationOut___block_invoke_2;
    v36[3] = &unk_1E70F35B8;
    v36[4] = self;
    v37 = tapCopy;
    [(UITextSelectionInteraction *)self tappedToUpdateSelectionWithGesture:v37 atPoint:0 granularity:v36 completionHandler:v40];
    v19 = v37;
    goto LABEL_17;
  }

  v32 = v25;
  v33 = view;
  _textInput2 = [(UITextInteraction *)self _textInput];
  selectedTextRange = [_textInput2 selectedTextRange];
  isEmpty = [selectedTextRange isEmpty];

  containerChangesSelectionOnOneFingerTap = [(UITextInteraction *)self containerChangesSelectionOnOneFingerTap];
  v30 = self->_wasOriginallyFirstResponder && [(UITextInteraction *)self _textInputLivesInKeyWindow];
  v31 = [(UITextInteraction *)self selection:selection containsPoint:v40];
  if (((([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior]|| v24) | isEmpty) & 1) != 0 || !v31)
  {
    if (containerChangesSelectionOnOneFingerTap)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__UITextSelectionInteraction__checkForRepeatedTap_gestureLocationOut___block_invoke_3;
      v34[3] = &unk_1E70F35B8;
      v34[4] = self;
      v35 = tapCopy;
      [(UITextSelectionInteraction *)self tappedToPositionCursorWithGesture:v35 atPoint:v32 granularity:v34 completionHandler:v40];
    }

    else
    {
      [(UITextSelectionInteraction *)self didUpdateSelectionWithGesture:tapCopy];
    }

    view = v33;
  }

  else
  {
    view = v33;
    if (v30)
    {
      [(UITextSelectionInteraction *)self toggleSelectionCommands];
    }
  }

LABEL_18:
  [assistantDelegate notifyKeyboardSelectionChanged];
  [(UITextInteraction *)self _endSelectionChange];
  if (out)
  {
    *out = v40;
  }
}

- (void)tappedToUpdateSelectionWithGesture:(id)gesture atPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  activeSelectionController = self->_activeSelectionController;
  handlerCopy = handler;
  initialSelection = [(_UIKeyboardTextSelectionController *)activeSelectionController initialSelection];

  if (!initialSelection)
  {
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
  }

  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController modifySelectionWithExtentPoint:0 executionContext:x, y];
  handlerCopy[2]();
}

- (BOOL)_hasTextAlternativesAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  _textInput = [(UITextInteraction *)self _textInput];
  selectedTextRange = [_textInput selectedTextRange];
  _isRanged = [selectedTextRange _isRanged];

  if (_isRanged)
  {
    return 0;
  }

  _textInput2 = [(UITextInteraction *)self _textInput];
  v11 = [_textInput2 closestPositionToPoint:{x, y}];

  v14 = 0;
  v12 = [(UITextInteraction *)self rangeWithTextAlternatives:&v14 atPosition:v11];
  v9 = v12 != 0;

  return v9;
}

- (BOOL)_hasMarkedTextAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v26 = *MEMORY[0x1E69E9840];
  v6 = +[UIKeyboardImpl activeInstance];
  LODWORD(v7) = [v6 hasInlineCompletionAsMarkedText];

  if (v7)
  {
    _textInput = [(UITextInteraction *)self _textInput];
    markedTextRange = [_textInput markedTextRange];

    if (markedTextRange)
    {
      _textInput2 = [(UITextInteraction *)self _textInput];
      v11 = [_textInput2 selectionRectsForRange:markedTextRange];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = v11;
      v7 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v12);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            [v15 rect];
            v17 = fmin((v16 + -44.0) * 0.5, 0.0);
            [v15 rect];
            v19 = fmin((v18 + -44.0) * 0.5, 0.0);
            [v15 rect];
            v29 = CGRectInset(v28, v17, v19);
            v27.x = x;
            v27.y = y;
            if (CGRectContainsPoint(v29, v27))
            {
              LOBYTE(v7) = 1;
              goto LABEL_13;
            }
          }

          v7 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)tappedToPositionCursorWithGesture:(id)gesture atPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _textInput = [(UITextInteraction *)self _textInput];
  isFirstResponder = [_textInput isFirstResponder];

  _textInput2 = [(UITextInteraction *)self _textInput];
  selectedTextRange = [_textInput2 selectedTextRange];
  _isRanged = [selectedTextRange _isRanged];

  _textInput3 = [(UITextInteraction *)self _textInput];
  v18 = [_textInput3 closestPositionToPoint:{x, y}];

  v19 = 0;
  v20 = 0;
  if (_isRanged || !isFirstResponder)
  {
    goto LABEL_9;
  }

  v27 = 0;
  v20 = [(UITextInteraction *)self rangeWithTextAlternatives:&v27 atPosition:v18];
  v21 = v27;
  if (v21)
  {
    v19 = v21;
    [assistantDelegate scheduleDictationReplacementsForAlternatives:v21 range:v20];
    goto LABEL_12;
  }

  _textInput4 = [(UITextInteraction *)self _textInput];
  v23 = [_textInput4 textRangeFromPosition:v18 toPosition:v18];

  if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled](UITextSelectionDisplayInteraction, "isTextAccelerationUIEnabled") || ([assistantDelegate _textChoicesAssistant], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "rangeForTextChoicesAtPosition:", v18), v19 = objc_claimAutoreleasedReturnValue(), v24, !v19))
  {
    v19 = [assistantDelegate rangeForTextReplacement:v23];
  }

  v25 = [assistantDelegate scheduleReplacementsForRange:v19 withOptions:47];

  if ((v25 & 1) == 0)
  {
LABEL_9:
    if (([v19 isEmpty] & 1) == 0)
    {
      _textChoicesAssistant = [assistantDelegate _textChoicesAssistant];
      [_textChoicesAssistant clearUnderlinesInRange:v19 animated:1];
    }

    [assistantDelegate cancelAutoscroll];
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectPositionAtPoint:granularity granularity:handlerCopy completionHandler:x, y];
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
  }

LABEL_12:
}

- (void)tappedToSelectTextWithGesture:(id)gesture atPoint:(CGPoint)point granularity:(int64_t)granularity completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  activeSelectionController = self->_activeSelectionController;
  handlerCopy = handler;
  [(_UIKeyboardTextSelectionController *)activeSelectionController beginSelection];
  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:granularity atPoint:handlerCopy completionHandler:x, y];

  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  LOBYTE(activeSelectionController) = [assistantDelegate didPerformLoupeSelectionHandoff];

  if ((activeSelectionController & 1) == 0)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v13 inputDelegateManager];
    hasAsyncCapableInputDelegate = [inputDelegateManager hasAsyncCapableInputDelegate];

    if ((hasAsyncCapableInputDelegate & 1) == 0)
    {
      v16 = self->_activeSelectionController;

      [(_UIKeyboardTextSelectionController *)v16 endSelection];
    }
  }
}

- (void)oneFingerTapSelectsAll:(id)all
{
  allCopy = all;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    view = [(UITextInteraction *)self view];

    if (view)
    {
      [(UITextSelectionInteraction *)self tappedToSelectTextWithGesture:allCopy atPoint:5 granularity:0 completionHandler:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }

  else
  {
    [assistantDelegate setSelectionHighlightMode:0];
    [assistantDelegate setFirstResponderIfNecessary];
    activeSelectionController = [assistantDelegate activeSelectionController];
    selection = [activeSelectionController selection];

    [(UITextSelectionInteraction *)self tappedToSelectTextWithGesture:allCopy atPoint:5 granularity:0 completionHandler:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [selection commit];
    [assistantDelegate notifyKeyboardSelectionChanged];
  }
}

- (void)_handleMultiTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = [gestureCopy state] == 1 || objc_msgSend(gestureCopy, "state") == 2 || objc_msgSend(gestureCopy, "state") == 4;
  v6 = +[UIKeyboardImpl activeInstance];
  hasInlineCompletionAsMarkedText = [v6 hasInlineCompletionAsMarkedText];

  if (!hasInlineCompletionAsMarkedText)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_10:
    [(UITextInteraction *)self cancelLinkInteractionSession];
    _textInput = [(UITextInteraction *)self _textInput];
    [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:_textInput];

    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    _textInput2 = [(UITextInteraction *)self _textInput];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    if ([gestureCopy state] == 1)
    {
      activeSelectionController = [assistantDelegate activeSelectionController];
      activeSelectionController = self->_activeSelectionController;
      self->_activeSelectionController = activeSelectionController;
    }

    if ([gestureCopy state] != 1)
    {
      goto LABEL_25;
    }

    if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      obtainSelectionGrabberSuppressionAssertion = [assistantDelegate obtainSelectionGrabberSuppressionAssertion];
      grabberSuppressionAssertion = self->_grabberSuppressionAssertion;
      self->_grabberSuppressionAssertion = obtainSelectionGrabberSuppressionAssertion;

      [_editMenuAssistant hideSelectionCommands];
      v17 = dispatch_time(0, 750000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__UITextSelectionInteraction__handleMultiTapGesture___block_invoke;
      block[3] = &unk_1E70F35B8;
      block[4] = self;
      v28 = assistantDelegate;
      dispatch_after(v17, MEMORY[0x1E69E96A0], block);

      goto LABEL_25;
    }

    grabberSuppressionAssertion = [assistantDelegate grabberSuppressionAssertion];

    if (grabberSuppressionAssertion)
    {
      [assistantDelegate setGrabberSuppressionAssertion:0];
      selectedTextRange = [_textInput2 selectedTextRange];
      isEmpty = [selectedTextRange isEmpty];

      if (isEmpty)
      {
LABEL_25:
        if ([assistantDelegate viewCouldBecomeEditable:_textInput2])
        {
          v25 = 0.0;
          v26 = 0.0;
          [(UITextSelectionInteraction *)self _checkForRepeatedTap:gestureCopy gestureLocationOut:&v25];
          [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v25, v26];
        }

        else
        {
          [(UITextInteraction *)self setInGesture:1];
          v25 = 0.0;
          v26 = 0.0;
          [(UITextSelectionInteraction *)self _checkForRepeatedTap:gestureCopy gestureLocationOut:&v25];
          [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v25, v26];
          [(UITextInteraction *)self setInGesture:0];
        }

        goto LABEL_28;
      }

      _textChoicesAssistant = [assistantDelegate _textChoicesAssistant];
      [_textChoicesAssistant dismissWithoutSelection];
    }

    else
    {
      if (![(UITextInteraction *)self _textInputIsInteractive])
      {
        goto LABEL_25;
      }

      if ([assistantDelegate selectionHighlightMode] != 1)
      {
        goto LABEL_25;
      }

      v23 = +[UIKeyboardImpl activeInstance];
      _shouldSuppressSoftwareKeyboardByDictation = [v23 _shouldSuppressSoftwareKeyboardByDictation];

      if (_shouldSuppressSoftwareKeyboardByDictation)
      {
        goto LABEL_25;
      }

      [assistantDelegate setSelectionHighlightMode:0];
    }

    [_editMenuAssistant showSelectionCommands];
LABEL_28:

    goto LABEL_29;
  }

  [gestureCopy location];
  if ([(UITextSelectionInteraction *)self _hasMarkedTextAtLocation:?])
  {
    if ([gestureCopy state] == 3)
    {
      v8 = +[UIKeyboardImpl activeInstance];
      [v8 acceptInlineCompletionWithCompletionHandler:0];
    }

    goto LABEL_16;
  }

  v18 = +[UIKeyboardImpl activeInstance];
  [v18 removeInlineTextCompletionPrompt];

  if (v5)
  {
    goto LABEL_10;
  }

LABEL_16:
  if ([gestureCopy state] == 3)
  {
    self->_granularityToHandOff = -1;
  }

LABEL_29:
}

void __53__UITextSelectionInteraction__handleMultiTapGesture___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 224))
  {
    [*(a1 + 40) setGrabberSuppressionAssertion:?];
    v2 = *(a1 + 32);
    v3 = *(v2 + 224);
    *(v2 + 224) = 0;
  }
}

- (void)willUpdateSelectionWithGesture:(id)gesture
{
  p_originalCaretRect = &self->_originalCaretRect;
  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController caretRectForCursorPosition];
  p_originalCaretRect->origin.x = v4;
  p_originalCaretRect->origin.y = v5;
  p_originalCaretRect->size.width = v6;
  p_originalCaretRect->size.height = v7;
}

- (void)didUpdateSelectionWithGesture:(id)gesture
{
  gestureCopy = gesture;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  _textInput = [(UITextInteraction *)self _textInput];
  [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:_textInput];

  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  activeSelectionController = [assistantDelegate activeSelectionController];
  selection = [activeSelectionController selection];

  view = [(UITextInteraction *)self view];
  _textInput2 = [(UITextInteraction *)self _textInput];
  v31 = *MEMORY[0x1E695EFF8];
  _textInput3 = [(UITextInteraction *)self _textInput];
  selectedTextRange = [_textInput3 selectedTextRange];

  isEmpty = [selectedTextRange isEmpty];
  v13 = [(UITextSelectionInteraction *)self _isShiftKeyBeingHeldForGesture:gestureCopy];
  LODWORD(activeSelectionController) = [(UITextInteraction *)self selection:selection containsPoint:v31];
  v14 = [(UITextSelectionInteraction *)self _isRepeatedTap:gestureCopy gestureLocationOut:&v31];
  [(UITextSelectionInteraction *)self _usesPencilSelectionBehaviorForGesture:gestureCopy];

  if (activeSelectionController && !v13 && !v14)
  {
    [(UITextSelectionInteraction *)self toggleSelectionCommands];
    root = [(UITextInteraction *)self root];
    assistantDelegate2 = [root assistantDelegate];
    [assistantDelegate2 setGrabberSuppressionAssertion:0];

    goto LABEL_30;
  }

  if (isEmpty)
  {
    assistantDelegate3 = [(UITextInteraction *)self assistantDelegate];
    _editMenuAssistant = [assistantDelegate3 _editMenuAssistant];

    v19 = self->_wasOriginallyFirstResponder && [(UITextInteraction *)self _textInputLivesInKeyWindow];
    if ([_editMenuAssistant _editMenuIsVisibleOrDismissedRecently])
    {
      _hasTextReplacements = [_editMenuAssistant _hasTextReplacements];
    }

    else
    {
      _hasTextReplacements = 1;
    }

    [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:_textInput2];
    if (!v19)
    {
      goto LABEL_20;
    }

    [(UITextInteraction *)self disableClearsOnInsertion];
    if (![(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      v22 = +[UIKeyboardImpl activeInstance];
      [v22 showKeyboardIfNeeded];
    }

    if (_hasTextReplacements && ([(_UIKeyboardTextSelectionController *)self->_activeSelectionController caretRectForCursorPosition], x = v32.origin.x, y = v32.origin.y, width = v32.size.width, height = v32.size.height, !CGRectIsEmpty(v32)))
    {
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v27 = CGRectEqualToRect(v33, self->_originalCaretRect);
    }

    else
    {
LABEL_20:
      v27 = 0;
    }

    root2 = [(UITextInteraction *)self root];
    v29 = [root2 recognizerForName:0x1EFBA76D0];

    if ([v29 state] == 5)
    {
      if (!v27)
      {
LABEL_26:
        if (!v19 && [(UITextInteraction *)self _textInputIsInteractive])
        {
          [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v31];
          [assistantDelegate setGestureRecognizers];
        }

        goto LABEL_30;
      }
    }

    else if ([v29 state] != 4 || !v27)
    {
      goto LABEL_26;
    }

    [(UITextSelectionInteraction *)self _showSelectionCommandsIfApplicableAfterDelay:0.2];
    goto LABEL_26;
  }

  _editMenuAssistant2 = [assistantDelegate _editMenuAssistant];
  [_editMenuAssistant2 showSelectionCommands];

  if (self->_wasOriginallyFirstResponder && [(UITextInteraction *)self _textInputLivesInKeyWindow])
  {
    [(UITextInteraction *)self disableClearsOnInsertion];
  }

LABEL_30:
}

- (void)_updateTapGestureHistoryWithLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  self->_lastTapTimestamp = v7;

  self->_lastTapLocation.x = x;
  self->_lastTapLocation.y = y;
}

- (void)confirmMarkedText:(id)text
{
  if ([text state] != 4)
  {
    v3 = +[UIKeyboard activeKeyboard];
    [v3 acceptAutocorrectionWithCompletionHandler:0];
  }
}

- (void)_createGestureTuningIfNecessary
{
  if (!self->_gestureTuning)
  {
    v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v3 preferencesActions];
    v5 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

    if (v5)
    {
      v6 = objc_alloc_init(UITextGestureTuning);
      gestureTuning = self->_gestureTuning;
      self->_gestureTuning = v6;

      view = [(UITextInteraction *)self view];
      [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:view];

      [(UITextGestureTuning *)self->_gestureTuning setShouldUseLineThreshold:1];
      v9 = self->_gestureTuning;

      [(UITextGestureTuning *)v9 setStrongerBiasAgainstUp:1];
    }
  }
}

- (void)tapAndAHalf:(id)half
{
  halfCopy = half;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  v58 = +[UITextMagnifierRanged sharedRangedMagnifier];
  view = [(UITextInteraction *)self view];
  _textInput = [(UITextInteraction *)self _textInput];
  touch = [halfCopy touch];
  textInputView = [_textInput textInputView];
  [touch locationInView:textInputView];
  v9 = v8;
  v11 = v10;

  [halfCopy translationInWindowCoordinates];
  v13 = v12;
  v15 = v14;
  isDisplayingVerticalSelection = [assistantDelegate isDisplayingVerticalSelection];
  [assistantDelegate setSelectionHighlightMode:0];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  [_editMenuAssistant cancelDelayedCommandRequests];

  [(UITextSelectionInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;
  v19 = MEMORY[0x1E695DFD8];
  touch2 = [halfCopy touch];
  v21 = [v19 setWithObject:touch2];
  -[UITextGestureTuning updateWithTouches:gestureState:](gestureTuning, "updateWithTouches:gestureState:", v21, [halfCopy state]);

  name = [halfCopy name];
  LODWORD(v21) = [name isEqualToString:0x1EFBA7630];

  if (v21)
  {
    v23 = 3;
  }

  else
  {
    v23 = 1;
  }

  if (self->_activeLoupeSession && ![(UITextInteraction *)self _textInputIsInteractive])
  {
    [(UITextLoupeSession *)self->_activeLoupeSession invalidate];
    activeLoupeSession = self->_activeLoupeSession;
    self->_activeLoupeSession = 0;
  }

  if ([halfCopy state] == 1)
  {
    activeSelectionController = [assistantDelegate activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = activeSelectionController;

    textInputView2 = [_textInput textInputView];
    [halfCopy locationOfFirstTap];
    [textInputView2 convertPoint:0 fromView:?];
    v29 = v28;
    v31 = v30;

    [(UITextInteraction *)self setInGesture:1];
    if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      obtainSelectionGrabberSuppressionAssertion = [assistantDelegate obtainSelectionGrabberSuppressionAssertion];
      grabberSuppressionAssertion = self->_grabberSuppressionAssertion;
      self->_grabberSuppressionAssertion = obtainSelectionGrabberSuppressionAssertion;

      [(UITextInteraction *)self _cancelRecognizerWithName:0x1EFBA76B0];
      [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v29, v31];
    }

    [assistantDelegate setFirstResponderIfNecessary];
    selection = [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selection];
    [selection caretRect];
    v36 = v35;

    [(UITextGestureTuning *)self->_gestureTuning assertInitialPositionFromTopOfCaret:v31 - v36 distanceFromCaret:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if ([(UITextInteraction *)self _textInputIsInteractive])
    {
      if (![(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
      {
        touch3 = [halfCopy touch];
        v38 = [assistantDelegate shouldDisplayLoupeSessionForTouchType:{objc_msgSend(touch3, "type")}];

        if (v38)
        {
          _caretView = [assistantDelegate _caretView];
          textInputView3 = [_textInput textInputView];
          v41 = +[UITextLoupeSession _beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:](UITextLoupeSession, "_beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:", _caretView, textInputView3, [assistantDelegate loupeOrientation], v29, v31);
          v42 = self->_activeLoupeSession;
          self->_activeLoupeSession = v41;

          [(UITextLoupeSession *)self->_activeLoupeSession setGestureTuning:self->_gestureTuning];
        }
      }

      [assistantDelegate willBeginSelectionInteraction];
      [(UITextInteraction *)self _beginSelectionChange];
      [(UITextInteraction *)self _cancelRecognizerWithName:0x1EFBA75D0];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:v23 atPoint:0 completionHandler:v29, v31];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
    }

    [assistantDelegate notifyKeyboardSelectionChanged];
    v43 = v58;
  }

  else if ([halfCopy state] == 2 && -[UITextInteraction _textInputIsInteractive](self, "_textInputIsInteractive"))
  {
    if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:v23 withBoundary:0 executionContext:v9, v11];
      v44 = v9;
      v45 = v11;
      v43 = v58;
    }

    else
    {
      v48 = self->_gestureTuning;
      v44 = v9;
      v45 = v11;
      if (!((v48 == 0) | isDisplayingVerticalSelection & 1))
      {
        [(UITextGestureTuning *)v48 touchAlignedPointForPoint:v9 translation:v11, v13, v15];
        v44 = v49;
        v45 = v50;
      }

      v43 = v58;
      [v58 setMagnificationPoint:{v44, v45}];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:v23 withBoundary:0 executionContext:v44, v45];
      v51 = self->_activeLoupeSession;
      selection2 = [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selection];
      [selection2 caretRect];
      [(UITextLoupeSession *)v51 moveToPoint:0 withCaretRect:v9 trackingCaret:v11, v53, v54, v55, v56];
    }

    [assistantDelegate notifyKeyboardSelectionChanged];
    [assistantDelegate startAutoscroll:{v44, v45}];
  }

  else
  {
    v43 = v58;
    if (([halfCopy state] == 3 || objc_msgSend(halfCopy, "state") == 4) && -[UITextInteraction _textInputIsInteractive](self, "_textInputIsInteractive"))
    {
      [assistantDelegate cancelAutoscroll];
      if (self->_grabberSuppressionAssertion)
      {
        [assistantDelegate setGrabberSuppressionAssertion:?];
        v46 = self->_grabberSuppressionAssertion;
        self->_grabberSuppressionAssertion = 0;
      }

      [(UITextLoupeSession *)self->_activeLoupeSession invalidate];
      v47 = self->_activeLoupeSession;
      self->_activeLoupeSession = 0;

      [(UITextSelectionInteraction *)self _showSelectionCommandsIfApplicableAfterDelay:0.0];
      [(UITextInteraction *)self setInGesture:0];
      [assistantDelegate setExpectingCommit:1];
      [(UITextInteraction *)self _endSelectionChange];
      [assistantDelegate setExpectingCommit:0];
      [assistantDelegate didEndSelectionInteraction];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
    }
  }
}

- (void)twoFingerRangedSelectGesture:(id)gesture
{
  gestureCopy = gesture;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [assistantDelegate setFirstResponderIfNecessary];
  [assistantDelegate setSelectionHighlightMode:0];
  touches = [gestureCopy touches];
  v6 = [touches count];

  if (v6 >= 2)
  {
    touches2 = [gestureCopy touches];
    v8 = [touches2 objectAtIndex:0];

    touches3 = [gestureCopy touches];
    v10 = [touches3 objectAtIndex:1];

    view = [(UITextInteraction *)self view];
    _proxyTextInput = [view _proxyTextInput];
    textInputView = [_proxyTextInput textInputView];
    [v8 locationInView:textInputView];
    v15 = v14;
    v17 = v16;

    _proxyTextInput2 = [view _proxyTextInput];
    textInputView2 = [_proxyTextInput2 textInputView];
    [v10 locationInView:textInputView2];
    v21 = v20;
    v23 = v22;

    activeSelectionController = [assistantDelegate activeSelectionController];
    selection = [activeSelectionController selection];

    [selection setGranularity:1];
    [selection setSelectionWithFirstPoint:v15 secondPoint:{v17, v21, v23}];
    [selection commit];
    if ([gestureCopy state] == 3)
    {
      [(UITextSelectionInteraction *)self _showSelectionCommandsIfApplicableAfterDelay:0.0];
    }

    [assistantDelegate notifyKeyboardSelectionChanged];
  }
}

- (void)setHybridSelectionWithPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  activeSelectionController = [assistantDelegate activeSelectionController];
  selection = [activeSelectionController selection];

  view = [(UITextInteraction *)self view];
  if ([view isEditable])
  {
  }

  else
  {
    hasEditableSelection = [selection hasEditableSelection];

    if ((hasEditableSelection & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [selection setHybridSelectionWithPoint:{x, y}];
LABEL_5:
}

- (BOOL)interaction_gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    v18.receiver = self;
    v18.super_class = UITextSelectionInteraction;
    if (![(UITextInteraction *)&v18 interaction_gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy])
    {
      v14 = 0;
LABEL_13:

      goto LABEL_14;
    }

    _usesIndirectSelectionBehavior = [(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior];
    v10 = &UITextInteractionNameIndirectSingleTap;
    if (!_usesIndirectSelectionBehavior)
    {
      v10 = &UITextInteractionNameSingleTap;
    }

    v11 = *v10;
    v12 = [(UITextInteraction *)self recognizerForName:v11];
    v13 = v12;
    if (v12 == recognizerCopy)
    {
      useGesturesForEditableContent = [assistantDelegate useGesturesForEditableContent];

      if ((useGesturesForEditableContent & 1) == 0 && ![(UITextSelectionInteraction *)self shouldHandleOneFingerTapInUneditable:recognizerCopy])
      {
        v14 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v14 = 1;
LABEL_12:

    goto LABEL_13;
  }

  v17.receiver = self;
  v17.super_class = UITextSelectionInteraction;
  v14 = [(UITextInteraction *)&v17 interaction_gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
LABEL_14:

  return v14;
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  self->_wasOriginallyFirstResponder = [(UITextInteraction *)self _textInputIsInteractive];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  v16.receiver = self;
  v16.super_class = UITextSelectionInteraction;
  if ([(UITextInteraction *)&v16 interaction_gestureRecognizerShouldBegin:beginCopy])
  {
    _usesIndirectSelectionBehavior = [(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior];
    v7 = &UITextInteractionNameIndirectSingleTap;
    if (!_usesIndirectSelectionBehavior)
    {
      v7 = &UITextInteractionNameSingleTap;
    }

    v8 = *v7;
    v9 = [(UITextInteraction *)self recognizerForName:v8];
    v10 = v9;
    if (v9 == beginCopy)
    {
      useGesturesForEditableContent = [assistantDelegate useGesturesForEditableContent];

      if ((useGesturesForEditableContent & 1) == 0 && ![(UITextSelectionInteraction *)self shouldHandleOneFingerTapInUneditable:beginCopy])
      {
        v11 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    else
    {
    }

    if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      parent = [(UITextInteraction *)self parent];
      v14 = [parent recognizerForName:0x1EFBA76F0];

      if (v14)
      {
        if ([v14 state] == 3)
        {
          v11 = 0;
        }

        else
        {
          v11 = -1;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11 & 1;
}

- (BOOL)shouldHandleOneFingerTapInUneditable:(id)uneditable
{
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    v5 = [(UITextInteraction *)self recognizerForName:0x1EFBA75F0];
    activeSelectionController = [assistantDelegate activeSelectionController];
    selection = [activeSelectionController selection];
    selectedRange = [selection selectedRange];
    _isRanged = [selectedRange _isRanged];

    v10 = 1;
    if (_isRanged)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    [v5 setMinimumNumberOfTapsRequired:v11];
  }

  else
  {
    view = [(UITextInteraction *)self view];
    v13 = [assistantDelegate viewCouldBecomeEditable:view];

    if (v13 & 1) != 0 || ([assistantDelegate activeSelectionController], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "selection"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "selectedRange"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_isRanged"), v16, v15, v14, (v17))
    {
      v10 = 1;
    }

    else
    {
      linkInteractionSession = [(UITextInteraction *)self linkInteractionSession];

      v10 = linkInteractionSession != 0;
    }
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA7610];

  if (v8 != recognizerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_6;
  }

  _isForPointer = [gestureRecognizerCopy _isForPointer];
  _usesIndirectSelectionBehavior = [(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior];

  if (_isForPointer != _usesIndirectSelectionBehavior)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA75F0];
  if (v8 == recognizerCopy && [gestureRecognizerCopy _isGestureType:0])
  {
    if (self->_viewConformsToTextInput)
    {
      view = [gestureRecognizerCopy view];
      view2 = [(UITextInteraction *)self view];
      v11 = [view isDescendantOfView:view2];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = UITextSelectionInteraction;
    v11 = [(UITextInteraction *)&v13 gestureRecognizer:recognizerCopy shouldRecognizeSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy];
  }

  return v11;
}

@end
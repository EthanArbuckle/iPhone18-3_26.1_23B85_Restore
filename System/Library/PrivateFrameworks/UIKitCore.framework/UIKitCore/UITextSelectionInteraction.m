@interface UITextSelectionInteraction
- (BOOL)_hasMarkedTextAtLocation:(CGPoint)a3;
- (BOOL)_hasTextAlternativesAtLocation:(CGPoint)a3;
- (BOOL)_isRepeatedTap:(id)a3 gestureLocationOut:(CGPoint *)a4;
- (BOOL)_isShiftKeyBeingHeldForGesture:(id)a3;
- (BOOL)_isWithinRepeatedTapTimeForTouch:(id)a3;
- (BOOL)_usesPencilSelectionBehaviorForGesture:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)interaction_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldHandleOneFingerTapInUneditable:(id)a3;
- (UITextSelectionInteraction)initWithMode:(int64_t)a3 indirect:(BOOL)a4;
- (id)_transientState;
- (int64_t)_textGranularityForNumberOfTaps:(unint64_t)a3;
- (int64_t)handOffGranularity;
- (void)_applyTransientState:(id)a3;
- (void)_checkForRepeatedTap:(id)a3 gestureLocationOut:(CGPoint *)a4;
- (void)_createGestureTuningIfNecessary;
- (void)_handleMultiTapGesture:(id)a3;
- (void)_showSelectionCommandsIfApplicableAfterDelay:(double)a3;
- (void)_updateTapGestureHistoryWithLocation:(CGPoint)a3;
- (void)confirmMarkedText:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)didUpdateSelectionWithGesture:(id)a3;
- (void)finishSetup;
- (void)oneFingerTapSelectsAll:(id)a3;
- (void)setHybridSelectionWithPoint:(CGPoint)a3;
- (void)tapAndAHalf:(id)a3;
- (void)tappedToPositionCursorWithGesture:(id)a3 atPoint:(CGPoint)a4 granularity:(int64_t)a5 completionHandler:(id)a6;
- (void)tappedToSelectTextWithGesture:(id)a3 atPoint:(CGPoint)a4 granularity:(int64_t)a5 completionHandler:(id)a6;
- (void)tappedToUpdateSelectionWithGesture:(id)a3 atPoint:(CGPoint)a4 granularity:(int64_t)a5 completionHandler:(id)a6;
- (void)toggleSelectionCommands;
- (void)twoFingerRangedSelectGesture:(id)a3;
- (void)willUpdateSelectionWithGesture:(id)a3;
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
        v9 = [(UITextInteraction *)self root];
        v10 = [v9 recognizerForName:v8];

        if (v10)
        {
          v11 = [v10 _pairedGestureIdentifiers];
          [v11 addObject:0x1EFBA75D0];

          v12 = [v10 _pairedGestureIdentifiers];
          [v12 addObject:0x1EFBA7610];

          v13 = [v10 _pairedGestureIdentifiers];
          [v13 addObject:0x1EFBA75F0];
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

- (UITextSelectionInteraction)initWithMode:(int64_t)a3 indirect:(BOOL)a4
{
  v4 = a4;
  v18.receiver = self;
  v18.super_class = UITextSelectionInteraction;
  v6 = [(UITextInteraction *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_indirectSelectionType = v4;
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v8 = sel_confirmMarkedText_;
        if (sel_confirmMarkedText_)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }

      if (a3 != 3)
      {
        goto LABEL_20;
      }

      v8 = 0;
      if (v4)
      {
LABEL_13:
        if (v8)
        {
          goto LABEL_14;
        }

LABEL_20:
        v14 = [MEMORY[0x1E696AE30] processInfo];
        [v14 systemUptime];
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
      if (a3)
      {
        if (a3 != 1)
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
        if (v4)
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
        if (!v4)
        {
          v13 = &UITextInteractionNameSingleTap;
        }

        [(UITextInteraction *)v7 addGestureRecognizer:v11 withName:*v13];

        goto LABEL_20;
      }

      v8 = sel__handleMultiTapGesture_;
      if (v4)
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

- (void)didMoveToView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITextSelectionInteraction;
  v4 = a3;
  [(UITextInteraction *)&v6 didMoveToView:v4];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:v4, v6.receiver, v6.super_class];
  v5 = [v4 conformsToProtocol:&unk_1EFE8B2D0];

  self->_viewConformsToTextInput = v5;
}

- (void)_applyTransientState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    v5 = [v4 objectForKey:@"lastTapTimestamp"];
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

    v4 = v13;
  }
}

- (void)toggleSelectionCommands
{
  v3 = [(UITextInteraction *)self assistantDelegate];
  v4 = [v3 _editMenuAssistant];
  v5 = [v4 _editMenuIsVisibleOrDismissedRecently];

  v8 = [(UITextInteraction *)self assistantDelegate];
  v6 = [v8 _editMenuAssistant];
  v7 = v6;
  if (v5)
  {
    [v6 hideSelectionCommands];
  }

  else
  {
    [v6 showSelectionCommands];
  }
}

- (void)_showSelectionCommandsIfApplicableAfterDelay:(double)a3
{
  if (![(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    v7 = [(UITextInteraction *)self assistantDelegate];
    v5 = [v7 _editMenuAssistant];
    v6 = v5;
    if (a3 == 0.0)
    {
      [v5 showSelectionCommands];
    }

    else
    {
      [v5 showSelectionCommandsAfterDelay:a3];
    }
  }
}

- (BOOL)_usesPencilSelectionBehaviorForGesture:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 touchesForTap];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) type] == 2)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)_isShiftKeyBeingHeldForGesture:(id)a3
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [v3 isShiftKeyBeingHeld];

  return v4;
}

- (BOOL)_isWithinRepeatedTapTimeForTouch:(id)a3
{
  if (a3)
  {
    [a3 timestamp];
    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE30] processInfo];
    [v6 systemUptime];
    v5 = v7;
  }

  return v5 - self->_lastTapTimestamp <= 0.35;
}

- (BOOL)_isRepeatedTap:(id)a3 gestureLocationOut:(CGPoint *)a4
{
  v6 = a3;
  v7 = [(UITextInteraction *)self _textInput];
  v8 = [v6 view];
  v9 = [v8 superview];

  [v6 locationInView:v9];
  v11 = v10;
  v13 = v12;
  v14 = [v7 textInputView];
  [v9 convertPoint:v14 toView:{v11, v13}];
  v16 = v15;
  v18 = v17;

  if (a4)
  {
    a4->x = v16;
    a4->y = v18;
  }

  v19 = [v6 tapCount];

  return v19 > 1;
}

- (int64_t)handOffGranularity
{
  granularityToHandOff = self->_granularityToHandOff;
  self->_granularityToHandOff = -1;
  return granularityToHandOff;
}

- (int64_t)_textGranularityForNumberOfTaps:(unint64_t)a3
{
  if (a3 >= 2 && [(UITextInteraction *)self _shouldObscureTextInput])
  {
    return 5;
  }

  if (a3 > 2)
  {
    return 3;
  }

  return qword_18A682BE8[a3];
}

- (void)_checkForRepeatedTap:(id)a3 gestureLocationOut:(CGPoint *)a4
{
  v6 = a3;
  v7 = [(UITextInteraction *)self view];
  v8 = [(UITextInteraction *)self assistantDelegate];
  v9 = [v8 activeSelectionController];
  v10 = [v9 selection];

  v40 = 0;
  v11 = [(UITextSelectionInteraction *)self _isRepeatedTap:v6 gestureLocationOut:&v40];
  if ([v6 state] == 1)
  {
    v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v12 clearAnimationStyleForUserDrivenPresentation];

    [v8 setFirstResponderIfNecessary];
    [v8 setSelectionHighlightMode:0];
  }

  v13 = +[UIKeyboardImpl activeInstance];
  [v13 updateIdleDetection:4];

  [(UITextInteraction *)self _beginSelectionChange];
  if ([v6 state] == 1)
  {
    v14 = [v8 activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = v14;

    v16 = [v8 _editMenuAssistant];
    [v16 hideSelectionCommands];
  }

  [(UITextSelectionInteraction *)self willUpdateSelectionWithGesture:v6];
  v17 = [(UITextSelectionInteraction *)self _isShiftKeyBeingHeldForGesture:v6];
  if (v11)
  {
    v18 = -[UITextSelectionInteraction _textGranularityForNumberOfTaps:](self, "_textGranularityForNumberOfTaps:", [v6 tapCount]);
    self->_granularityToHandOff = v18;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __70__UITextSelectionInteraction__checkForRepeatedTap_gestureLocationOut___block_invoke;
    v38[3] = &unk_1E70F35B8;
    v38[4] = self;
    v39 = v6;
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
    v22 = [(UITextInteraction *)self _textInput];
    v23 = [v22 markedTextRange];
    v21 = v23 == 0;
  }

  else
  {
    v21 = 1;
  }

  v24 = [(UITextSelectionInteraction *)self _usesPencilSelectionBehaviorForGesture:v6];
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
    v37 = v6;
    [(UITextSelectionInteraction *)self tappedToUpdateSelectionWithGesture:v37 atPoint:0 granularity:v36 completionHandler:v40];
    v19 = v37;
    goto LABEL_17;
  }

  v32 = v25;
  v33 = v7;
  v26 = [(UITextInteraction *)self _textInput];
  v27 = [v26 selectedTextRange];
  v28 = [v27 isEmpty];

  v29 = [(UITextInteraction *)self containerChangesSelectionOnOneFingerTap];
  v30 = self->_wasOriginallyFirstResponder && [(UITextInteraction *)self _textInputLivesInKeyWindow];
  v31 = [(UITextInteraction *)self selection:v10 containsPoint:v40];
  if (((([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior]|| v24) | v28) & 1) != 0 || !v31)
  {
    if (v29)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __70__UITextSelectionInteraction__checkForRepeatedTap_gestureLocationOut___block_invoke_3;
      v34[3] = &unk_1E70F35B8;
      v34[4] = self;
      v35 = v6;
      [(UITextSelectionInteraction *)self tappedToPositionCursorWithGesture:v35 atPoint:v32 granularity:v34 completionHandler:v40];
    }

    else
    {
      [(UITextSelectionInteraction *)self didUpdateSelectionWithGesture:v6];
    }

    v7 = v33;
  }

  else
  {
    v7 = v33;
    if (v30)
    {
      [(UITextSelectionInteraction *)self toggleSelectionCommands];
    }
  }

LABEL_18:
  [v8 notifyKeyboardSelectionChanged];
  [(UITextInteraction *)self _endSelectionChange];
  if (a4)
  {
    *a4 = v40;
  }
}

- (void)tappedToUpdateSelectionWithGesture:(id)a3 atPoint:(CGPoint)a4 granularity:(int64_t)a5 completionHandler:(id)a6
{
  y = a4.y;
  x = a4.x;
  activeSelectionController = self->_activeSelectionController;
  v11 = a6;
  v10 = [(_UIKeyboardTextSelectionController *)activeSelectionController initialSelection];

  if (!v10)
  {
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
  }

  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController modifySelectionWithExtentPoint:0 executionContext:x, y];
  v11[2]();
}

- (BOOL)_hasTextAlternativesAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextInteraction *)self _textInput];
  v7 = [v6 selectedTextRange];
  v8 = [v7 _isRanged];

  if (v8)
  {
    return 0;
  }

  v10 = [(UITextInteraction *)self _textInput];
  v11 = [v10 closestPositionToPoint:{x, y}];

  v14 = 0;
  v12 = [(UITextInteraction *)self rangeWithTextAlternatives:&v14 atPosition:v11];
  v9 = v12 != 0;

  return v9;
}

- (BOOL)_hasMarkedTextAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v26 = *MEMORY[0x1E69E9840];
  v6 = +[UIKeyboardImpl activeInstance];
  LODWORD(v7) = [v6 hasInlineCompletionAsMarkedText];

  if (v7)
  {
    v8 = [(UITextInteraction *)self _textInput];
    v9 = [v8 markedTextRange];

    if (v9)
    {
      v10 = [(UITextInteraction *)self _textInput];
      v11 = [v10 selectionRectsForRange:v9];

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

- (void)tappedToPositionCursorWithGesture:(id)a3 atPoint:(CGPoint)a4 granularity:(int64_t)a5 completionHandler:(id)a6
{
  y = a4.y;
  x = a4.x;
  v10 = a6;
  v11 = [(UITextInteraction *)self assistantDelegate];
  v12 = [(UITextInteraction *)self _textInput];
  v13 = [v12 isFirstResponder];

  v14 = [(UITextInteraction *)self _textInput];
  v15 = [v14 selectedTextRange];
  v16 = [v15 _isRanged];

  v17 = [(UITextInteraction *)self _textInput];
  v18 = [v17 closestPositionToPoint:{x, y}];

  v19 = 0;
  v20 = 0;
  if (v16 || !v13)
  {
    goto LABEL_9;
  }

  v27 = 0;
  v20 = [(UITextInteraction *)self rangeWithTextAlternatives:&v27 atPosition:v18];
  v21 = v27;
  if (v21)
  {
    v19 = v21;
    [v11 scheduleDictationReplacementsForAlternatives:v21 range:v20];
    goto LABEL_12;
  }

  v22 = [(UITextInteraction *)self _textInput];
  v23 = [v22 textRangeFromPosition:v18 toPosition:v18];

  if (!+[UITextSelectionDisplayInteraction isTextAccelerationUIEnabled](UITextSelectionDisplayInteraction, "isTextAccelerationUIEnabled") || ([v11 _textChoicesAssistant], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "rangeForTextChoicesAtPosition:", v18), v19 = objc_claimAutoreleasedReturnValue(), v24, !v19))
  {
    v19 = [v11 rangeForTextReplacement:v23];
  }

  v25 = [v11 scheduleReplacementsForRange:v19 withOptions:47];

  if ((v25 & 1) == 0)
  {
LABEL_9:
    if (([v19 isEmpty] & 1) == 0)
    {
      v26 = [v11 _textChoicesAssistant];
      [v26 clearUnderlinesInRange:v19 animated:1];
    }

    [v11 cancelAutoscroll];
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectPositionAtPoint:a5 granularity:v10 completionHandler:x, y];
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
  }

LABEL_12:
}

- (void)tappedToSelectTextWithGesture:(id)a3 atPoint:(CGPoint)a4 granularity:(int64_t)a5 completionHandler:(id)a6
{
  y = a4.y;
  x = a4.x;
  activeSelectionController = self->_activeSelectionController;
  v11 = a6;
  [(_UIKeyboardTextSelectionController *)activeSelectionController beginSelection];
  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:a5 atPoint:v11 completionHandler:x, y];

  v12 = [(UITextInteraction *)self assistantDelegate];
  LOBYTE(activeSelectionController) = [v12 didPerformLoupeSelectionHandoff];

  if ((activeSelectionController & 1) == 0)
  {
    v13 = +[UIKeyboardImpl activeInstance];
    v14 = [v13 inputDelegateManager];
    v15 = [v14 hasAsyncCapableInputDelegate];

    if ((v15 & 1) == 0)
    {
      v16 = self->_activeSelectionController;

      [(_UIKeyboardTextSelectionController *)v16 endSelection];
    }
  }
}

- (void)oneFingerTapSelectsAll:(id)a3
{
  v8 = a3;
  v4 = [(UITextInteraction *)self assistantDelegate];
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    v5 = [(UITextInteraction *)self view];

    if (v5)
    {
      [(UITextSelectionInteraction *)self tappedToSelectTextWithGesture:v8 atPoint:5 granularity:0 completionHandler:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    }
  }

  else
  {
    [v4 setSelectionHighlightMode:0];
    [v4 setFirstResponderIfNecessary];
    v6 = [v4 activeSelectionController];
    v7 = [v6 selection];

    [(UITextSelectionInteraction *)self tappedToSelectTextWithGesture:v8 atPoint:5 granularity:0 completionHandler:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    [v7 commit];
    [v4 notifyKeyboardSelectionChanged];
  }
}

- (void)_handleMultiTapGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 state] == 1 || objc_msgSend(v4, "state") == 2 || objc_msgSend(v4, "state") == 4;
  v6 = +[UIKeyboardImpl activeInstance];
  v7 = [v6 hasInlineCompletionAsMarkedText];

  if (!v7)
  {
    if (!v5)
    {
      goto LABEL_16;
    }

LABEL_10:
    [(UITextInteraction *)self cancelLinkInteractionSession];
    v9 = [(UITextInteraction *)self _textInput];
    [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:v9];

    v10 = [(UITextInteraction *)self assistantDelegate];
    v11 = [(UITextInteraction *)self _textInput];
    v12 = [v10 _editMenuAssistant];
    if ([v4 state] == 1)
    {
      v13 = [v10 activeSelectionController];
      activeSelectionController = self->_activeSelectionController;
      self->_activeSelectionController = v13;
    }

    if ([v4 state] != 1)
    {
      goto LABEL_25;
    }

    if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      v15 = [v10 obtainSelectionGrabberSuppressionAssertion];
      grabberSuppressionAssertion = self->_grabberSuppressionAssertion;
      self->_grabberSuppressionAssertion = v15;

      [v12 hideSelectionCommands];
      v17 = dispatch_time(0, 750000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__UITextSelectionInteraction__handleMultiTapGesture___block_invoke;
      block[3] = &unk_1E70F35B8;
      block[4] = self;
      v28 = v10;
      dispatch_after(v17, MEMORY[0x1E69E96A0], block);

      goto LABEL_25;
    }

    v19 = [v10 grabberSuppressionAssertion];

    if (v19)
    {
      [v10 setGrabberSuppressionAssertion:0];
      v20 = [v11 selectedTextRange];
      v21 = [v20 isEmpty];

      if (v21)
      {
LABEL_25:
        if ([v10 viewCouldBecomeEditable:v11])
        {
          v25 = 0.0;
          v26 = 0.0;
          [(UITextSelectionInteraction *)self _checkForRepeatedTap:v4 gestureLocationOut:&v25];
          [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v25, v26];
        }

        else
        {
          [(UITextInteraction *)self setInGesture:1];
          v25 = 0.0;
          v26 = 0.0;
          [(UITextSelectionInteraction *)self _checkForRepeatedTap:v4 gestureLocationOut:&v25];
          [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v25, v26];
          [(UITextInteraction *)self setInGesture:0];
        }

        goto LABEL_28;
      }

      v22 = [v10 _textChoicesAssistant];
      [v22 dismissWithoutSelection];
    }

    else
    {
      if (![(UITextInteraction *)self _textInputIsInteractive])
      {
        goto LABEL_25;
      }

      if ([v10 selectionHighlightMode] != 1)
      {
        goto LABEL_25;
      }

      v23 = +[UIKeyboardImpl activeInstance];
      v24 = [v23 _shouldSuppressSoftwareKeyboardByDictation];

      if (v24)
      {
        goto LABEL_25;
      }

      [v10 setSelectionHighlightMode:0];
    }

    [v12 showSelectionCommands];
LABEL_28:

    goto LABEL_29;
  }

  [v4 location];
  if ([(UITextSelectionInteraction *)self _hasMarkedTextAtLocation:?])
  {
    if ([v4 state] == 3)
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
  if ([v4 state] == 3)
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

- (void)willUpdateSelectionWithGesture:(id)a3
{
  p_originalCaretRect = &self->_originalCaretRect;
  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController caretRectForCursorPosition];
  p_originalCaretRect->origin.x = v4;
  p_originalCaretRect->origin.y = v5;
  p_originalCaretRect->size.width = v6;
  p_originalCaretRect->size.height = v7;
}

- (void)didUpdateSelectionWithGesture:(id)a3
{
  v4 = a3;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  v5 = [(UITextInteraction *)self _textInput];
  [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:v5];

  v6 = [(UITextInteraction *)self assistantDelegate];
  v7 = [v6 activeSelectionController];
  v8 = [v7 selection];

  v9 = [(UITextInteraction *)self view];
  v30 = [(UITextInteraction *)self _textInput];
  v31 = *MEMORY[0x1E695EFF8];
  v10 = [(UITextInteraction *)self _textInput];
  v11 = [v10 selectedTextRange];

  v12 = [v11 isEmpty];
  v13 = [(UITextSelectionInteraction *)self _isShiftKeyBeingHeldForGesture:v4];
  LODWORD(v7) = [(UITextInteraction *)self selection:v8 containsPoint:v31];
  v14 = [(UITextSelectionInteraction *)self _isRepeatedTap:v4 gestureLocationOut:&v31];
  [(UITextSelectionInteraction *)self _usesPencilSelectionBehaviorForGesture:v4];

  if (v7 && !v13 && !v14)
  {
    [(UITextSelectionInteraction *)self toggleSelectionCommands];
    v15 = [(UITextInteraction *)self root];
    v16 = [v15 assistantDelegate];
    [v16 setGrabberSuppressionAssertion:0];

    goto LABEL_30;
  }

  if (v12)
  {
    v17 = [(UITextInteraction *)self assistantDelegate];
    v18 = [v17 _editMenuAssistant];

    v19 = self->_wasOriginallyFirstResponder && [(UITextInteraction *)self _textInputLivesInKeyWindow];
    if ([v18 _editMenuIsVisibleOrDismissedRecently])
    {
      v21 = [v18 _hasTextReplacements];
    }

    else
    {
      v21 = 1;
    }

    [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:v30];
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

    if (v21 && ([(_UIKeyboardTextSelectionController *)self->_activeSelectionController caretRectForCursorPosition], x = v32.origin.x, y = v32.origin.y, width = v32.size.width, height = v32.size.height, !CGRectIsEmpty(v32)))
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

    v28 = [(UITextInteraction *)self root];
    v29 = [v28 recognizerForName:0x1EFBA76D0];

    if ([v29 state] == 5)
    {
      if (!v27)
      {
LABEL_26:
        if (!v19 && [(UITextInteraction *)self _textInputIsInteractive])
        {
          [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v31];
          [v6 setGestureRecognizers];
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

  v20 = [v6 _editMenuAssistant];
  [v20 showSelectionCommands];

  if (self->_wasOriginallyFirstResponder && [(UITextInteraction *)self _textInputLivesInKeyWindow])
  {
    [(UITextInteraction *)self disableClearsOnInsertion];
  }

LABEL_30:
}

- (void)_updateTapGestureHistoryWithLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [MEMORY[0x1E696AE30] processInfo];
  [v6 systemUptime];
  self->_lastTapTimestamp = v7;

  self->_lastTapLocation.x = x;
  self->_lastTapLocation.y = y;
}

- (void)confirmMarkedText:(id)a3
{
  if ([a3 state] != 4)
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
    v4 = [v3 preferencesActions];
    v5 = [v4 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

    if (v5)
    {
      v6 = objc_alloc_init(UITextGestureTuning);
      gestureTuning = self->_gestureTuning;
      self->_gestureTuning = v6;

      v8 = [(UITextInteraction *)self view];
      [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:v8];

      [(UITextGestureTuning *)self->_gestureTuning setShouldUseLineThreshold:1];
      v9 = self->_gestureTuning;

      [(UITextGestureTuning *)v9 setStrongerBiasAgainstUp:1];
    }
  }
}

- (void)tapAndAHalf:(id)a3
{
  v59 = a3;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  v4 = [(UITextInteraction *)self assistantDelegate];
  v58 = +[UITextMagnifierRanged sharedRangedMagnifier];
  v57 = [(UITextInteraction *)self view];
  v5 = [(UITextInteraction *)self _textInput];
  v6 = [v59 touch];
  v7 = [v5 textInputView];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  [v59 translationInWindowCoordinates];
  v13 = v12;
  v15 = v14;
  v16 = [v4 isDisplayingVerticalSelection];
  [v4 setSelectionHighlightMode:0];
  v17 = [v4 _editMenuAssistant];
  [v17 cancelDelayedCommandRequests];

  [(UITextSelectionInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;
  v19 = MEMORY[0x1E695DFD8];
  v20 = [v59 touch];
  v21 = [v19 setWithObject:v20];
  -[UITextGestureTuning updateWithTouches:gestureState:](gestureTuning, "updateWithTouches:gestureState:", v21, [v59 state]);

  v22 = [v59 name];
  LODWORD(v21) = [v22 isEqualToString:0x1EFBA7630];

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

  if ([v59 state] == 1)
  {
    v25 = [v4 activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = v25;

    v27 = [v5 textInputView];
    [v59 locationOfFirstTap];
    [v27 convertPoint:0 fromView:?];
    v29 = v28;
    v31 = v30;

    [(UITextInteraction *)self setInGesture:1];
    if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
    {
      v32 = [v4 obtainSelectionGrabberSuppressionAssertion];
      grabberSuppressionAssertion = self->_grabberSuppressionAssertion;
      self->_grabberSuppressionAssertion = v32;

      [(UITextInteraction *)self _cancelRecognizerWithName:0x1EFBA76B0];
      [(UITextSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v29, v31];
    }

    [v4 setFirstResponderIfNecessary];
    v34 = [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selection];
    [v34 caretRect];
    v36 = v35;

    [(UITextGestureTuning *)self->_gestureTuning assertInitialPositionFromTopOfCaret:v31 - v36 distanceFromCaret:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if ([(UITextInteraction *)self _textInputIsInteractive])
    {
      if (![(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
      {
        v37 = [v59 touch];
        v38 = [v4 shouldDisplayLoupeSessionForTouchType:{objc_msgSend(v37, "type")}];

        if (v38)
        {
          v39 = [v4 _caretView];
          v40 = [v5 textInputView];
          v41 = +[UITextLoupeSession _beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:](UITextLoupeSession, "_beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:", v39, v40, [v4 loupeOrientation], v29, v31);
          v42 = self->_activeLoupeSession;
          self->_activeLoupeSession = v41;

          [(UITextLoupeSession *)self->_activeLoupeSession setGestureTuning:self->_gestureTuning];
        }
      }

      [v4 willBeginSelectionInteraction];
      [(UITextInteraction *)self _beginSelectionChange];
      [(UITextInteraction *)self _cancelRecognizerWithName:0x1EFBA75D0];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:v23 atPoint:0 completionHandler:v29, v31];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
    }

    [v4 notifyKeyboardSelectionChanged];
    v43 = v58;
  }

  else if ([v59 state] == 2 && -[UITextInteraction _textInputIsInteractive](self, "_textInputIsInteractive"))
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
      if (!((v48 == 0) | v16 & 1))
      {
        [(UITextGestureTuning *)v48 touchAlignedPointForPoint:v9 translation:v11, v13, v15];
        v44 = v49;
        v45 = v50;
      }

      v43 = v58;
      [v58 setMagnificationPoint:{v44, v45}];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:v23 withBoundary:0 executionContext:v44, v45];
      v51 = self->_activeLoupeSession;
      v52 = [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selection];
      [v52 caretRect];
      [(UITextLoupeSession *)v51 moveToPoint:0 withCaretRect:v9 trackingCaret:v11, v53, v54, v55, v56];
    }

    [v4 notifyKeyboardSelectionChanged];
    [v4 startAutoscroll:{v44, v45}];
  }

  else
  {
    v43 = v58;
    if (([v59 state] == 3 || objc_msgSend(v59, "state") == 4) && -[UITextInteraction _textInputIsInteractive](self, "_textInputIsInteractive"))
    {
      [v4 cancelAutoscroll];
      if (self->_grabberSuppressionAssertion)
      {
        [v4 setGrabberSuppressionAssertion:?];
        v46 = self->_grabberSuppressionAssertion;
        self->_grabberSuppressionAssertion = 0;
      }

      [(UITextLoupeSession *)self->_activeLoupeSession invalidate];
      v47 = self->_activeLoupeSession;
      self->_activeLoupeSession = 0;

      [(UITextSelectionInteraction *)self _showSelectionCommandsIfApplicableAfterDelay:0.0];
      [(UITextInteraction *)self setInGesture:0];
      [v4 setExpectingCommit:1];
      [(UITextInteraction *)self _endSelectionChange];
      [v4 setExpectingCommit:0];
      [v4 didEndSelectionInteraction];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
    }
  }
}

- (void)twoFingerRangedSelectGesture:(id)a3
{
  v26 = a3;
  v4 = [(UITextInteraction *)self assistantDelegate];
  [v4 setFirstResponderIfNecessary];
  [v4 setSelectionHighlightMode:0];
  v5 = [v26 touches];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    v7 = [v26 touches];
    v8 = [v7 objectAtIndex:0];

    v9 = [v26 touches];
    v10 = [v9 objectAtIndex:1];

    v11 = [(UITextInteraction *)self view];
    v12 = [v11 _proxyTextInput];
    v13 = [v12 textInputView];
    [v8 locationInView:v13];
    v15 = v14;
    v17 = v16;

    v18 = [v11 _proxyTextInput];
    v19 = [v18 textInputView];
    [v10 locationInView:v19];
    v21 = v20;
    v23 = v22;

    v24 = [v4 activeSelectionController];
    v25 = [v24 selection];

    [v25 setGranularity:1];
    [v25 setSelectionWithFirstPoint:v15 secondPoint:{v17, v21, v23}];
    [v25 commit];
    if ([v26 state] == 3)
    {
      [(UITextSelectionInteraction *)self _showSelectionCommandsIfApplicableAfterDelay:0.0];
    }

    [v4 notifyKeyboardSelectionChanged];
  }
}

- (void)setHybridSelectionWithPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextInteraction *)self assistantDelegate];
  v7 = [v6 activeSelectionController];
  v10 = [v7 selection];

  v8 = [(UITextInteraction *)self view];
  if ([v8 isEditable])
  {
  }

  else
  {
    v9 = [v10 hasEditableSelection];

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  [v10 setHybridSelectionWithPoint:{x, y}];
LABEL_5:
}

- (BOOL)interaction_gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    v8 = [(UITextInteraction *)self assistantDelegate];
    v18.receiver = self;
    v18.super_class = UITextSelectionInteraction;
    if (![(UITextInteraction *)&v18 interaction_gestureRecognizer:v6 shouldReceiveTouch:v7])
    {
      v14 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v9 = [(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior];
    v10 = &UITextInteractionNameIndirectSingleTap;
    if (!v9)
    {
      v10 = &UITextInteractionNameSingleTap;
    }

    v11 = *v10;
    v12 = [(UITextInteraction *)self recognizerForName:v11];
    v13 = v12;
    if (v12 == v6)
    {
      v15 = [v8 useGesturesForEditableContent];

      if ((v15 & 1) == 0 && ![(UITextSelectionInteraction *)self shouldHandleOneFingerTapInUneditable:v6])
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
  v14 = [(UITextInteraction *)&v17 interaction_gestureRecognizer:v6 shouldReceiveTouch:v7];
LABEL_14:

  return v14;
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  self->_wasOriginallyFirstResponder = [(UITextInteraction *)self _textInputIsInteractive];
  v5 = [(UITextInteraction *)self assistantDelegate];
  v16.receiver = self;
  v16.super_class = UITextSelectionInteraction;
  if ([(UITextInteraction *)&v16 interaction_gestureRecognizerShouldBegin:v4])
  {
    v6 = [(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior];
    v7 = &UITextInteractionNameIndirectSingleTap;
    if (!v6)
    {
      v7 = &UITextInteractionNameSingleTap;
    }

    v8 = *v7;
    v9 = [(UITextInteraction *)self recognizerForName:v8];
    v10 = v9;
    if (v9 == v4)
    {
      v12 = [v5 useGesturesForEditableContent];

      if ((v12 & 1) == 0 && ![(UITextSelectionInteraction *)self shouldHandleOneFingerTapInUneditable:v4])
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
      v13 = [(UITextInteraction *)self parent];
      v14 = [v13 recognizerForName:0x1EFBA76F0];

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

- (BOOL)shouldHandleOneFingerTapInUneditable:(id)a3
{
  v4 = [(UITextInteraction *)self assistantDelegate];
  if ([(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior])
  {
    v5 = [(UITextInteraction *)self recognizerForName:0x1EFBA75F0];
    v6 = [v4 activeSelectionController];
    v7 = [v6 selection];
    v8 = [v7 selectedRange];
    v9 = [v8 _isRanged];

    v10 = 1;
    if (v9)
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
    v12 = [(UITextInteraction *)self view];
    v13 = [v4 viewCouldBecomeEditable:v12];

    if (v13 & 1) != 0 || ([v4 activeSelectionController], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "selection"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "selectedRange"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "_isRanged"), v16, v15, v14, (v17))
    {
      v10 = 1;
    }

    else
    {
      v18 = [(UITextInteraction *)self linkInteractionSession];

      v10 = v18 != 0;
    }
  }

  return v10;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA7610];

  if (v8 != v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_6;
  }

  v9 = [v6 _isForPointer];
  v10 = [(UITextSelectionInteraction *)self _usesIndirectSelectionBehavior];

  if (v9 != v10)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v11 = 1;
LABEL_7:

  return v11;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA75F0];
  if (v8 == v6 && [v7 _isGestureType:0])
  {
    if (self->_viewConformsToTextInput)
    {
      v9 = [v7 view];
      v10 = [(UITextInteraction *)self view];
      v11 = [v9 isDescendantOfView:v10];
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
    v11 = [(UITextInteraction *)&v13 gestureRecognizer:v6 shouldRecognizeSimultaneouslyWithGestureRecognizer:v7];
  }

  return v11;
}

@end
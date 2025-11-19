@interface _UIKeyboardBasedNonEditableTextSelectionInteraction
- (void)_synchronousGranularityExpandingGestureWithTimeInterval:(double)a3 timeGranularity:(double)a4 isMidPan:(BOOL)a5;
- (void)oneFingerForcePan:(id)a3;
- (void)oneFingerForcePress:(id)a3;
- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)a3 viaDrag:(BOOL)a4;
@end

@implementation _UIKeyboardBasedNonEditableTextSelectionInteraction

- (void)_synchronousGranularityExpandingGestureWithTimeInterval:(double)a3 timeGranularity:(double)a4 isMidPan:(BOOL)a5
{
  v9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v9 caretRectForCursorPosition];
  IsNull = CGRectIsNull(v36);

  if (!IsNull)
  {
    v11 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v11 caretRectForCursorPosition];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (a3 >= a4)
    {
      v21 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v20 = [v21 hasRangedSelection];
    }

    else
    {
      v20 = 0;
    }

    if (a5)
    {
      v22 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
      v23 = [v22 previousRepeatedGranularity];
    }

    else
    {
      v22 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v23 = [v22 selectionGranularity];
    }

    v24 = v23;

    if (v20)
    {
      v25 = 0;
    }

    else
    {
      v25 = [UITextInteractionAssistant _nextGranularityInCycle:v24 forTouchType:0];
    }

    v26 = v17 * 0.5;
    v27 = v19 * 0.5;
    v28 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
    [v28 setPreviousRepeatedGranularity:v25];

    if (!a5)
    {
      v29 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v29 beginSelection];
    }

    v30 = v13 + v26;
    v31 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v32 = v31;
    if (v25)
    {
      [v31 selectTextWithGranularity:v25 atPoint:0 executionContext:{v30, v15 + v27}];
    }

    else
    {
      [v31 selectPositionAtPoint:0 executionContext:{v30, v15 + v27}];
    }

    v33 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v34 = v33;
    if (a5)
    {
      [v33 restartSelection];
    }

    else
    {
      [v33 endSelection];
    }
  }
}

- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)a3 viaDrag:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v12 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v8 setRangedSelectionShouldShowGrabbers:1];

  [v12 setDidSuppressSelectionGrabbers:0];
  [v12 setPreviousRepeatedGranularity:1];
  [v12 setPanGestureState:6];
  v9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v10 = v9;
  if (v4)
  {
    [v9 beginSelection];

    v11 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v11 updateSelectionWithExtentPoint:objc_msgSend(v12 withBoundary:"previousRepeatedGranularity") executionContext:{0, x, y}];
  }

  else
  {
    [v9 selectTextWithGranularity:objc_msgSend(v12 atPoint:"previousRepeatedGranularity") executionContext:{0, x, y}];

    v11 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v11 beginSelection];
  }
}

- (void)oneFingerForcePan:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v6 = [v5 delegate];
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v8 = [v7 textInputView];
  [v4 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [v7 textInputView];
  [v4 _translationInView:v13];
  v15 = v14;
  v17 = v16;

  if ([v4 didLongPress])
  {
    v18 = v4;
    if ([v18 state] == 3 || objc_msgSend(v18, "state") == 4)
    {
      v19 = 0;
LABEL_5:

      goto LABEL_9;
    }

    v20 = [v18 state];

    if (v20 != 5 && ![(_UIKeyboardBasedTextSelectionInteraction *)self enclosingScrollViewIsScrolling])
    {
      v42 = hypot(v15, v17);
      v18 = +[_UITextSelectionSettings sharedInstance];
      [v18 allowableForceMovement];
      v19 = v42 <= v43;
      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_9:
  [(_UIKeyboardBasedTextSelectionInteraction *)self _createGestureTuningIfNecessary];
  v21 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];

  if (v21)
  {
    v22 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];
    v23 = MEMORY[0x1E695DFD8];
    v24 = [v4 touches];
    v25 = [v23 setWithArray:v24];
    [v22 updateWithTouches:v25 gestureState:{objc_msgSend(v4, "state")}];

    v26 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];
    [v26 touchAlignedPointForPoint:v10 translation:{v12, v15, v17}];
    v10 = v27;
    v12 = v28;
  }

  if (([v5 didLongForcePress] & 1) == 0 && objc_msgSend(v4, "didLongPress") && objc_msgSend(v5, "panGestureState") == 5)
  {
    v29 = v4;
    if ([v29 state] == 3 || objc_msgSend(v29, "state") == 4)
    {
    }

    else
    {
      v44 = [v29 state];

      if (v44 != 5)
      {
        if (!v19)
        {
          [(_UIKeyboardBasedNonEditableTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:1 viaDrag:v10, v12];
        }

        [v5 setDidLongForcePress:1];
        v45 = [v29 view];
        [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePan:_isViewKeyboardLayoutPresent(v45)];

        v46 = [MEMORY[0x1E69D4E18] sharedInstance];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __73___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePan___block_invoke;
        v65[3] = &unk_1E7118DA0;
        v66 = v29;
        v67 = v7;
        v68 = v5;
        [v46 logBlock:v65 domain:@"com.apple.keyboard.UIKit"];
      }
    }
  }

  v30 = [(UITextInteraction *)self root];
  v31 = [v30 delegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    [(_UIKeyboardBasedTextSelectionInteraction *)self _processGestureForCustomHighlighter:v4];
    goto LABEL_69;
  }

  if ([v5 panGestureState] == 0 && v19)
  {
    [v5 setPanGestureState:1];
    v33 = +[UIKeyboardImpl activeInstance];
    self->_isShiftKeyBeingHeld = [v33 isShiftKeyBeingHeld];

    v34 = [(UITextInteraction *)self root];
    [v34 _createFeedbackIfNecessary];

    v35 = [(UITextInteraction *)self root];
    [v35 _prepareFeedbackForGesture];

    self->_isShiftKeyBeingHeld = 1;
    [v5 setPanGestureState:6];
    [v5 setPreviousRepeatedGranularity:1];
    if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v6 willBeginGesture];
    }

    [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
    [v7 willBeginHighlighterGesture];
    v36 = [(UITextInteraction *)self root];
    [v36 _playFeedbackForCursorMovement];

    [v7 beginSelection];
    [v7 setRangedSelectionShouldShowGrabbers:1];
    [v5 setDidSuppressSelectionGrabbers:1];
    v56 = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __73___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePan___block_invoke_2;
    v59 = &unk_1E7118C68;
    v64 = 1;
    v62 = v10;
    v63 = v12;
    v60 = v7;
    v61 = self;
    [v60 selectTextWithGranularity:1 atPoint:&v56 completionHandler:{v10, v12}];

    goto LABEL_59;
  }

  if ([v5 panGestureState] == 1)
  {
    v37 = v4;
    if ([v37 state] == 3 || objc_msgSend(v37, "state") == 4)
    {

LABEL_28:
      [v5 setDidFloatCursor:0];
      [v7 endRangedMagnifierAtPoint:{v10, v12}];
      [v7 selectTextWithGranularity:1 atPoint:0 executionContext:{v10, v12}];
LABEL_34:
      [v5 setPanGestureState:0];
      goto LABEL_59;
    }

    v47 = [v37 state];

    if (v47 == 5)
    {
      goto LABEL_28;
    }

    [v7 updateRangedMagnifierAtPoint:{v10, v12}];
    v41 = v7;
    v40 = 1;
    goto LABEL_49;
  }

  if ([v5 panGestureState] != 3)
  {
    if ([v5 panGestureState] != 5)
    {
      if ([v5 panGestureState] == 6)
      {
        if (_gestureIsEnded(v4))
        {
          [(_UIKeyboardBasedTextSelectionInteraction *)self endOneFingerSelectWithExecutionContext:0];
          [v5 setPanGestureState:0];
          [v7 endRangedMagnifierAtPoint:{v10, v12}];
          [v5 setDidFloatCursor:0];
        }

        else
        {
          [v7 updateSelectionWithExtentPoint:objc_msgSend(v5 withBoundary:"previousRepeatedGranularity") executionContext:{0, v10, v12}];
          [v7 updateRangedMagnifierAtPoint:{v10, v12}];
        }
      }

      goto LABEL_59;
    }

    v39 = v4;
    if ([v39 state] == 3 || objc_msgSend(v39, "state") == 4)
    {
    }

    else
    {
      v49 = [v39 state];

      if (v49 != 5)
      {
        if (([v5 delayForceMagnify] & 1) == 0)
        {
          [v7 updateRangedMagnifierAtPoint:{v10, v12}];
        }

        goto LABEL_41;
      }
    }

    [v5 setDidFloatCursor:0];
    if (([v5 delayForceMagnify] & 1) == 0)
    {
      [v7 endRangedMagnifierAtPoint:{v10, v12}];
    }

LABEL_41:
    v40 = [v5 previousRepeatedGranularity];
    v41 = v7;
LABEL_49:
    [v41 selectTextWithGranularity:v40 atPoint:0 executionContext:{v10, v12}];
    goto LABEL_59;
  }

  v38 = v4;
  if ([v38 state] == 3 || objc_msgSend(v38, "state") == 4)
  {

LABEL_33:
    [v5 setDidFloatCursor:0];
    [v7 endSelection];
    [v7 endRangedMagnifierAtPoint:{v10, v12}];
    goto LABEL_34;
  }

  v48 = [v38 state];

  if (v48 == 5)
  {
    goto LABEL_33;
  }

  [v7 updateRangedMagnifierAtPoint:{v10, v12}];
  [v7 updateSelectionWithExtentPoint:0 executionContext:{v10, v12}];
LABEL_59:
  v50 = v4;
  if ([v50 state] == 3 || objc_msgSend(v50, "state") == 4)
  {
  }

  else
  {
    v55 = [v50 state];

    if (v55 != 5)
    {
      goto LABEL_69;
    }
  }

  [v5 setDidLongForcePress:{0, v56, v57, v58, v59}];
  [v5 setDidFloatCursor:0];
  [v5 setPreviousForcePressCount:0];
  [v5 setPanGestureState:0];
  v51 = [(UITextInteraction *)self root];
  [v51 _cleanUpFeedbackForGesture];

  v52 = [v6 textSelectionController];
  if (v52)
  {
    v53 = v52;
    v54 = [v5 didSuppressSelectionGrabbers];

    if (v54)
    {
      [v7 setRangedSelectionShouldShowGrabbers:1];
      [v5 setDidSuppressSelectionGrabbers:0];
    }
  }

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 didEndGesture];
  }

  [v7 showSelectionCommands];
LABEL_69:
}

- (void)oneFingerForcePress:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v6 = [v5 delegate];
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v8 = [v4 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v6 textSelectionController];

    if (v10)
    {
      v11 = [v7 textInputView];
      [v4 velocityInView:v11];
      v13 = v12;
      v15 = v14;

      v16 = hypot(v13, v15);
      LOBYTE(v17) = 0;
      if ([v5 panGestureState] && v16 > 65.0)
      {
        v17 = [v4 touchEclipsesVelocity] ^ 1;
      }

      v18 = [v7 textInputView];
      [v4 locationInView:v18];
      v20 = v19;
      v22 = v21;

      if ([v4 currentPreviewForceState] >= 1)
      {
        v23 = v4 ? v4[19] : 0;
        if (!((v23 <= [v5 previousForcePressCount]) | v17 & 1))
        {
          Current = CFAbsoluteTimeGetCurrent();
          [v5 lastPressTimestamp];
          v26 = v25;
          if ([v5 panGestureState] == 6)
          {
            if (Current - v26 <= 0.8)
            {
              [(_UIKeyboardBasedNonEditableTextSelectionInteraction *)self _synchronousGranularityExpandingGestureWithTimeInterval:1 timeGranularity:Current - v26 isMidPan:?];
            }

            else
            {
              [v7 endRangedMagnifierAtPoint:{v20, v22}];
            }
          }

          if ([v5 panGestureState] || -[_UIKeyboardBasedTextSelectionInteraction enclosingScrollViewIsScrolling](self, "enclosingScrollViewIsScrolling") || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v4, "view"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "locationInView:", v32), v33 = objc_msgSend(v6, "shouldAllowSelectionGestures:atPoint:toBegin:", 1, 1), v32, !v33))
          {
            if ([v5 panGestureState] == 1 || objc_msgSend(v5, "panGestureState") == 5)
            {
              [(_UIKeyboardBasedNonEditableTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:0 viaDrag:v20, v22];
            }
          }

          else
          {
            [v5 setPanGestureState:5];
            self->_isShiftKeyBeingHeld = 1;
            [v5 setPanGestureState:6];
            [v5 setPreviousRepeatedGranularity:1];
            if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v6 willBeginGesture];
            }

            [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
            [v7 willBeginHighlighterGesture];
            v34 = [(UITextInteraction *)self root];
            [v34 _playFeedbackForCursorMovement];

            [v7 beginSelection];
            [v7 setRangedSelectionShouldShowGrabbers:1];
            [v5 setDidSuppressSelectionGrabbers:0];
            v35 = [v5 previousRepeatedGranularity];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __75___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePress___block_invoke_2;
            v39[3] = &unk_1E7118C68;
            v44 = 1;
            v42 = v20;
            v43 = v22;
            v40 = v7;
            v41 = self;
            [v40 selectTextWithGranularity:v35 atPoint:v39 completionHandler:{v20, v22}];
          }

          [v5 setLastPressTimestamp:Current];
          v27 = [v4 view];
          isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v27);
          if (v4)
          {
            v29 = *(v4 + 38);
          }

          else
          {
            v29 = 0;
          }

          [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePress:isViewKeyboardLayoutPresent withPressCount:v29];

          v30 = [MEMORY[0x1E69D4E18] sharedInstance];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __75___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePress___block_invoke_3;
          v36[3] = &unk_1E70FB4F0;
          v37 = v5;
          v38 = v4;
          [v30 logBlock:v36 domain:@"com.apple.keyboard.UIKit"];
        }
      }

      if (v4)
      {
        v31 = *(v4 + 38);
      }

      else
      {
        v31 = 0;
      }

      [v5 setPreviousForcePressCount:v31];
    }
  }
}

@end
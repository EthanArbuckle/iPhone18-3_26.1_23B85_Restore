@interface _UIKeyboardBasedNonEditableTextSelectionInteraction
- (void)_synchronousGranularityExpandingGestureWithTimeInterval:(double)interval timeGranularity:(double)granularity isMidPan:(BOOL)pan;
- (void)oneFingerForcePan:(id)pan;
- (void)oneFingerForcePress:(id)press;
- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)location viaDrag:(BOOL)drag;
@end

@implementation _UIKeyboardBasedNonEditableTextSelectionInteraction

- (void)_synchronousGranularityExpandingGestureWithTimeInterval:(double)interval timeGranularity:(double)granularity isMidPan:(BOOL)pan
{
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController caretRectForCursorPosition];
  IsNull = CGRectIsNull(v36);

  if (!IsNull)
  {
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController2 caretRectForCursorPosition];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (interval >= granularity)
    {
      selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      hasRangedSelection = [selectionController3 hasRangedSelection];
    }

    else
    {
      hasRangedSelection = 0;
    }

    if (pan)
    {
      owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
      previousRepeatedGranularity = [owner previousRepeatedGranularity];
    }

    else
    {
      owner = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      previousRepeatedGranularity = [owner selectionGranularity];
    }

    v24 = previousRepeatedGranularity;

    if (hasRangedSelection)
    {
      v25 = 0;
    }

    else
    {
      v25 = [UITextInteractionAssistant _nextGranularityInCycle:v24 forTouchType:0];
    }

    v26 = v17 * 0.5;
    v27 = v19 * 0.5;
    owner2 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
    [owner2 setPreviousRepeatedGranularity:v25];

    if (!pan)
    {
      selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController4 beginSelection];
    }

    v30 = v13 + v26;
    selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v32 = selectionController5;
    if (v25)
    {
      [selectionController5 selectTextWithGranularity:v25 atPoint:0 executionContext:{v30, v15 + v27}];
    }

    else
    {
      [selectionController5 selectPositionAtPoint:0 executionContext:{v30, v15 + v27}];
    }

    selectionController6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v34 = selectionController6;
    if (pan)
    {
      [selectionController6 restartSelection];
    }

    else
    {
      [selectionController6 endSelection];
    }
  }
}

- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)location viaDrag:(BOOL)drag
{
  dragCopy = drag;
  y = location.y;
  x = location.x;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController setRangedSelectionShouldShowGrabbers:1];

  [owner setDidSuppressSelectionGrabbers:0];
  [owner setPreviousRepeatedGranularity:1];
  [owner setPanGestureState:6];
  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v10 = selectionController2;
  if (dragCopy)
  {
    [selectionController2 beginSelection];

    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 updateSelectionWithExtentPoint:objc_msgSend(owner withBoundary:"previousRepeatedGranularity") executionContext:{0, x, y}];
  }

  else
  {
    [selectionController2 selectTextWithGranularity:objc_msgSend(owner atPoint:"previousRepeatedGranularity") executionContext:{0, x, y}];

    selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController3 beginSelection];
  }
}

- (void)oneFingerForcePan:(id)pan
{
  panCopy = pan;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView = [selectionController textInputView];
  [panCopy locationInView:textInputView];
  v10 = v9;
  v12 = v11;

  textInputView2 = [selectionController textInputView];
  [panCopy _translationInView:textInputView2];
  v15 = v14;
  v17 = v16;

  if ([panCopy didLongPress])
  {
    v18 = panCopy;
    if ([v18 state] == 3 || objc_msgSend(v18, "state") == 4)
    {
      v19 = 0;
LABEL_5:

      goto LABEL_9;
    }

    state = [v18 state];

    if (state != 5 && ![(_UIKeyboardBasedTextSelectionInteraction *)self enclosingScrollViewIsScrolling])
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
  gestureTuning = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];

  if (gestureTuning)
  {
    gestureTuning2 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];
    v23 = MEMORY[0x1E695DFD8];
    touches = [panCopy touches];
    v25 = [v23 setWithArray:touches];
    [gestureTuning2 updateWithTouches:v25 gestureState:{objc_msgSend(panCopy, "state")}];

    gestureTuning3 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];
    [gestureTuning3 touchAlignedPointForPoint:v10 translation:{v12, v15, v17}];
    v10 = v27;
    v12 = v28;
  }

  if (([owner didLongForcePress] & 1) == 0 && objc_msgSend(panCopy, "didLongPress") && objc_msgSend(owner, "panGestureState") == 5)
  {
    v29 = panCopy;
    if ([v29 state] == 3 || objc_msgSend(v29, "state") == 4)
    {
    }

    else
    {
      state2 = [v29 state];

      if (state2 != 5)
      {
        if (!v19)
        {
          [(_UIKeyboardBasedNonEditableTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:1 viaDrag:v10, v12];
        }

        [owner setDidLongForcePress:1];
        view = [v29 view];
        [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePan:_isViewKeyboardLayoutPresent(view)];

        mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __73___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePan___block_invoke;
        v65[3] = &unk_1E7118DA0;
        v66 = v29;
        v67 = selectionController;
        v68 = owner;
        [mEMORY[0x1E69D4E18] logBlock:v65 domain:@"com.apple.keyboard.UIKit"];
      }
    }
  }

  root = [(UITextInteraction *)self root];
  delegate2 = [root delegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    [(_UIKeyboardBasedTextSelectionInteraction *)self _processGestureForCustomHighlighter:panCopy];
    goto LABEL_69;
  }

  if ([owner panGestureState] == 0 && v19)
  {
    [owner setPanGestureState:1];
    v33 = +[UIKeyboardImpl activeInstance];
    self->_isShiftKeyBeingHeld = [v33 isShiftKeyBeingHeld];

    root2 = [(UITextInteraction *)self root];
    [root2 _createFeedbackIfNecessary];

    root3 = [(UITextInteraction *)self root];
    [root3 _prepareFeedbackForGesture];

    self->_isShiftKeyBeingHeld = 1;
    [owner setPanGestureState:6];
    [owner setPreviousRepeatedGranularity:1];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate willBeginGesture];
    }

    [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
    [selectionController willBeginHighlighterGesture];
    root4 = [(UITextInteraction *)self root];
    [root4 _playFeedbackForCursorMovement];

    [selectionController beginSelection];
    [selectionController setRangedSelectionShouldShowGrabbers:1];
    [owner setDidSuppressSelectionGrabbers:1];
    v56 = MEMORY[0x1E69E9820];
    v57 = 3221225472;
    v58 = __73___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePan___block_invoke_2;
    v59 = &unk_1E7118C68;
    v64 = 1;
    v62 = v10;
    v63 = v12;
    v60 = selectionController;
    selfCopy = self;
    [v60 selectTextWithGranularity:1 atPoint:&v56 completionHandler:{v10, v12}];

    goto LABEL_59;
  }

  if ([owner panGestureState] == 1)
  {
    v37 = panCopy;
    if ([v37 state] == 3 || objc_msgSend(v37, "state") == 4)
    {

LABEL_28:
      [owner setDidFloatCursor:0];
      [selectionController endRangedMagnifierAtPoint:{v10, v12}];
      [selectionController selectTextWithGranularity:1 atPoint:0 executionContext:{v10, v12}];
LABEL_34:
      [owner setPanGestureState:0];
      goto LABEL_59;
    }

    state3 = [v37 state];

    if (state3 == 5)
    {
      goto LABEL_28;
    }

    [selectionController updateRangedMagnifierAtPoint:{v10, v12}];
    v41 = selectionController;
    previousRepeatedGranularity = 1;
    goto LABEL_49;
  }

  if ([owner panGestureState] != 3)
  {
    if ([owner panGestureState] != 5)
    {
      if ([owner panGestureState] == 6)
      {
        if (_gestureIsEnded(panCopy))
        {
          [(_UIKeyboardBasedTextSelectionInteraction *)self endOneFingerSelectWithExecutionContext:0];
          [owner setPanGestureState:0];
          [selectionController endRangedMagnifierAtPoint:{v10, v12}];
          [owner setDidFloatCursor:0];
        }

        else
        {
          [selectionController updateSelectionWithExtentPoint:objc_msgSend(owner withBoundary:"previousRepeatedGranularity") executionContext:{0, v10, v12}];
          [selectionController updateRangedMagnifierAtPoint:{v10, v12}];
        }
      }

      goto LABEL_59;
    }

    v39 = panCopy;
    if ([v39 state] == 3 || objc_msgSend(v39, "state") == 4)
    {
    }

    else
    {
      state4 = [v39 state];

      if (state4 != 5)
      {
        if (([owner delayForceMagnify] & 1) == 0)
        {
          [selectionController updateRangedMagnifierAtPoint:{v10, v12}];
        }

        goto LABEL_41;
      }
    }

    [owner setDidFloatCursor:0];
    if (([owner delayForceMagnify] & 1) == 0)
    {
      [selectionController endRangedMagnifierAtPoint:{v10, v12}];
    }

LABEL_41:
    previousRepeatedGranularity = [owner previousRepeatedGranularity];
    v41 = selectionController;
LABEL_49:
    [v41 selectTextWithGranularity:previousRepeatedGranularity atPoint:0 executionContext:{v10, v12}];
    goto LABEL_59;
  }

  v38 = panCopy;
  if ([v38 state] == 3 || objc_msgSend(v38, "state") == 4)
  {

LABEL_33:
    [owner setDidFloatCursor:0];
    [selectionController endSelection];
    [selectionController endRangedMagnifierAtPoint:{v10, v12}];
    goto LABEL_34;
  }

  state5 = [v38 state];

  if (state5 == 5)
  {
    goto LABEL_33;
  }

  [selectionController updateRangedMagnifierAtPoint:{v10, v12}];
  [selectionController updateSelectionWithExtentPoint:0 executionContext:{v10, v12}];
LABEL_59:
  v50 = panCopy;
  if ([v50 state] == 3 || objc_msgSend(v50, "state") == 4)
  {
  }

  else
  {
    state6 = [v50 state];

    if (state6 != 5)
    {
      goto LABEL_69;
    }
  }

  [owner setDidLongForcePress:{0, v56, v57, v58, v59}];
  [owner setDidFloatCursor:0];
  [owner setPreviousForcePressCount:0];
  [owner setPanGestureState:0];
  root5 = [(UITextInteraction *)self root];
  [root5 _cleanUpFeedbackForGesture];

  textSelectionController = [delegate textSelectionController];
  if (textSelectionController)
  {
    v53 = textSelectionController;
    didSuppressSelectionGrabbers = [owner didSuppressSelectionGrabbers];

    if (didSuppressSelectionGrabbers)
    {
      [selectionController setRangedSelectionShouldShowGrabbers:1];
      [owner setDidSuppressSelectionGrabbers:0];
    }
  }

  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate didEndGesture];
  }

  [selectionController showSelectionCommands];
LABEL_69:
}

- (void)oneFingerForcePress:(id)press
{
  pressCopy = press;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  view = [pressCopy view];
  if (view)
  {
    v9 = view;
    textSelectionController = [delegate textSelectionController];

    if (textSelectionController)
    {
      textInputView = [selectionController textInputView];
      [pressCopy velocityInView:textInputView];
      v13 = v12;
      v15 = v14;

      v16 = hypot(v13, v15);
      LOBYTE(v17) = 0;
      if ([owner panGestureState] && v16 > 65.0)
      {
        v17 = [pressCopy touchEclipsesVelocity] ^ 1;
      }

      textInputView2 = [selectionController textInputView];
      [pressCopy locationInView:textInputView2];
      v20 = v19;
      v22 = v21;

      if ([pressCopy currentPreviewForceState] >= 1)
      {
        v23 = pressCopy ? pressCopy[19] : 0;
        if (!((v23 <= [owner previousForcePressCount]) | v17 & 1))
        {
          Current = CFAbsoluteTimeGetCurrent();
          [owner lastPressTimestamp];
          v26 = v25;
          if ([owner panGestureState] == 6)
          {
            if (Current - v26 <= 0.8)
            {
              [(_UIKeyboardBasedNonEditableTextSelectionInteraction *)self _synchronousGranularityExpandingGestureWithTimeInterval:1 timeGranularity:Current - v26 isMidPan:?];
            }

            else
            {
              [selectionController endRangedMagnifierAtPoint:{v20, v22}];
            }
          }

          if ([owner panGestureState] || -[_UIKeyboardBasedTextSelectionInteraction enclosingScrollViewIsScrolling](self, "enclosingScrollViewIsScrolling") || (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(pressCopy, "view"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(pressCopy, "locationInView:", v32), v33 = objc_msgSend(delegate, "shouldAllowSelectionGestures:atPoint:toBegin:", 1, 1), v32, !v33))
          {
            if ([owner panGestureState] == 1 || objc_msgSend(owner, "panGestureState") == 5)
            {
              [(_UIKeyboardBasedNonEditableTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:0 viaDrag:v20, v22];
            }
          }

          else
          {
            [owner setPanGestureState:5];
            self->_isShiftKeyBeingHeld = 1;
            [owner setPanGestureState:6];
            [owner setPreviousRepeatedGranularity:1];
            if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [delegate willBeginGesture];
            }

            [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
            [selectionController willBeginHighlighterGesture];
            root = [(UITextInteraction *)self root];
            [root _playFeedbackForCursorMovement];

            [selectionController beginSelection];
            [selectionController setRangedSelectionShouldShowGrabbers:1];
            [owner setDidSuppressSelectionGrabbers:0];
            previousRepeatedGranularity = [owner previousRepeatedGranularity];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = __75___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePress___block_invoke_2;
            v39[3] = &unk_1E7118C68;
            v44 = 1;
            v42 = v20;
            v43 = v22;
            v40 = selectionController;
            selfCopy = self;
            [v40 selectTextWithGranularity:previousRepeatedGranularity atPoint:v39 completionHandler:{v20, v22}];
          }

          [owner setLastPressTimestamp:Current];
          view2 = [pressCopy view];
          isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view2);
          if (pressCopy)
          {
            v29 = *(pressCopy + 38);
          }

          else
          {
            v29 = 0;
          }

          [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePress:isViewKeyboardLayoutPresent withPressCount:v29];

          mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __75___UIKeyboardBasedNonEditableTextSelectionInteraction_oneFingerForcePress___block_invoke_3;
          v36[3] = &unk_1E70FB4F0;
          v37 = owner;
          v38 = pressCopy;
          [mEMORY[0x1E69D4E18] logBlock:v36 domain:@"com.apple.keyboard.UIKit"];
        }
      }

      if (pressCopy)
      {
        v31 = *(pressCopy + 38);
      }

      else
      {
        v31 = 0;
      }

      [owner setPreviousForcePressCount:v31];
    }
  }
}

@end
@interface _UIKeyboardBasedTextSelectionInteraction
- (BOOL)enclosingScrollViewIsScrolling;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (id)owner;
- (void)_createGestureTuningIfNecessary;
- (void)_processGestureForCustomHighlighter:(id)a3;
- (void)beginOneFingerSelectWithTranslation:(CGPoint)a3 executionContext:(id)a4;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)endOneFingerSelectWithExecutionContext:(id)a3;
- (void)oneFingerForcePan:(id)a3;
- (void)oneFingerForcePress:(id)a3;
- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)a3 viaDrag:(BOOL)a4;
- (void)updateOneFingerSelectWithTranslation:(CGPoint)a3 executionContext:(id)a4;
@end

@implementation _UIKeyboardBasedTextSelectionInteraction

- (id)owner
{
  v4.receiver = self;
  v4.super_class = _UIKeyboardBasedTextSelectionInteraction;
  v2 = [(_UIKeyboardTextSelectionInteraction *)&v4 owner];

  return v2;
}

- (void)dealloc
{
  gestureTuning = self->_gestureTuning;
  self->_gestureTuning = 0;

  v4.receiver = self;
  v4.super_class = _UIKeyboardBasedTextSelectionInteraction;
  [(_UIKeyboardTextSelectionInteraction *)&v4 dealloc];
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
      [(UITextGestureTuning *)self->_gestureTuning setIncludeTipProjection:1];
      v9 = self->_gestureTuning;

      [(UITextGestureTuning *)v9 setStrongerBiasAgainstUp:1];
    }
  }
}

- (void)didMoveToView:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardBasedTextSelectionInteraction;
  v4 = a3;
  [(UITextInteraction *)&v5 didMoveToView:v4];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:v4, v5.receiver, v5.super_class];
}

- (void)_processGestureForCustomHighlighter:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v6 = [(UITextInteraction *)self _textInput];
  v7 = [v6 textInputView];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(UITextInteraction *)self _textInput];
  v13 = [v12 textInputView];
  [v4 _translationInView:v13];
  v15 = v14;
  v17 = v16;

  if (![v4 didLongPress])
  {
    goto LABEL_8;
  }

  v18 = v4;
  if ([v18 state] != 3 && objc_msgSend(v18, "state") != 4)
  {
    v20 = [v18 state];

    if (v20 != 5 && ![(_UIKeyboardBasedTextSelectionInteraction *)self enclosingScrollViewIsScrolling])
    {
      v33 = hypot(v15, v17);
      v18 = +[_UITextSelectionSettings sharedInstance];
      [v18 allowableForceMovement];
      v19 = v33 > v34;
      goto LABEL_5;
    }

LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v19 = 1;
LABEL_5:

LABEL_9:
  v21 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v22 = [v21 preferencesActions];
  v23 = [v22 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v23)
  {
    if ([v5 panGestureState] == 0 && !v19)
    {
      [v5 setPanGestureState:6];
      v28 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v28 willBeginHighlighterGesture];

      v29 = [(UITextInteraction *)self root];
      [v29 _playFeedbackForCursorMovement];

      v25 = 1;
      goto LABEL_19;
    }

    if ([v5 panGestureState] == 6)
    {
      v24 = v4;
      if ([v24 state] == 3 || objc_msgSend(v24, "state") == 4)
      {
      }

      else
      {
        v35 = [v24 state];

        if (v35 != 5)
        {
          v25 = 2;
LABEL_16:
          [(UITextGestureTuning *)self->_gestureTuning touchAlignedPointForPoint:v9 translation:v11, v15, v17];
          if (v25)
          {
            v9 = v26;
            v11 = v27;
LABEL_19:
            v30 = [(UITextInteraction *)self root];
            v31 = [v30 delegate];
            [v31 _performHighlighterActionWithGestureState:v25 location:{v9, v11}];

            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      v25 = [v24 state];
      goto LABEL_16;
    }
  }

LABEL_20:
  v36 = v4;
  if ([v36 state] == 3 || objc_msgSend(v36, "state") == 4)
  {

LABEL_23:
    [v5 setDidLongForcePress:0];
    [v5 setDidFloatCursor:0];
    [v5 setDelayForceMagnify:0];
    [v5 setPreviousForcePressCount:0];
    [v5 setPanGestureState:0];
    [v36 setShouldFailWithoutForce:{objc_msgSend(v5, "oneFingerForcePressShouldFailWithoutForce")}];
    goto LABEL_24;
  }

  v32 = [v36 state];

  if (v32 == 5)
  {
    goto LABEL_23;
  }

LABEL_24:
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a4;
  v7 = [a3 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  return ![(UITextInteraction *)self currentSelectionContainsPoint:v9, v11];
}

- (BOOL)enclosingScrollViewIsScrolling
{
  v3 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v4 = [v3 delegate];
  v5 = [v4 textSelectionController];

  if (!v5)
  {
    return 0;
  }

  v6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v7 = [v6 textInputView];
  v8 = [v7 _scroller];

  if (v8)
  {
    v9 = [v8 isDragging];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)a3 viaDrag:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v9 = [v8 delayForceMagnify];
  v10 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v11 = v10;
  if (v9)
  {
    [v10 beginLoupeMagnifierAtPoint:{x, y}];

    [v8 setDelayForceMagnify:0];
  }

  else
  {
    [v10 willHandoffLoupeMagnifier];
  }

  v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v12 setRangedSelectionShouldShowGrabbers:1];

  [v8 setDidSuppressSelectionGrabbers:0];
  [v8 setPreviousRepeatedGranularity:1];
  v13 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v13 endSelection];

  v14 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v14 switchToRangedSelection];

  [v8 setPanGestureState:2];
  if (v4)
  {
    if (qword_1ED498F70 != -1)
    {
      dispatch_once(&qword_1ED498F70, &__block_literal_global_474_0);
    }

    v15 = [v8 delegate];
    v16 = [v15 taskQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_3;
    v28[3] = &unk_1E70FD460;
    *&v29[1] = x;
    *&v29[2] = y;
    v17 = v29;
    v28[4] = self;
    v29[0] = v8;
    v18 = qword_1ED498F68;
    v19 = v8;
    v20 = v28;
  }

  else
  {
    if (qword_1ED498F80 != -1)
    {
      dispatch_once(&qword_1ED498F80, &__block_literal_global_480_0);
    }

    v15 = [v8 delegate];
    v16 = [v15 taskQueue];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_7;
    v25 = &unk_1E70FD460;
    v17 = v27;
    v26 = self;
    v27[0] = v8;
    *&v27[1] = x;
    *&v27[2] = y;
    v18 = qword_1ED498F78;
    v21 = v8;
    v20 = &v22;
  }

  [v16 addTask:v20 breadcrumb:{v18, v22, v23, v24, v25, v26}];
}

- (void)beginOneFingerSelectWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v8)
  {
    v9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v10 = v9;
    if (v7)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __97___UIKeyboardBasedTextSelectionInteraction_beginOneFingerSelectWithTranslation_executionContext___block_invoke;
      v13[3] = &unk_1E70FD058;
      v13[4] = self;
      v11 = [v7 childWithContinuation:v13];
      [v10 selectPositionAtPoint:v11 executionContext:{x, y}];
    }

    else
    {
      [v9 selectPositionAtPoint:0 executionContext:{x, y}];

      v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v12 beginSelection];
    }
  }

  else
  {
    [v7 returnExecutionToParent];
  }
}

- (void)updateOneFingerSelectWithTranslation:(CGPoint)a3 executionContext:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (v7)
  {
    v8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v8 updateSelectionWithExtentPoint:v9 executionContext:{x, y}];
  }

  else
  {
    [v9 returnExecutionToParent];
  }
}

- (void)endOneFingerSelectWithExecutionContext:(id)a3
{
  v5 = a3;
  v4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v4 endSelection];

  [v5 returnExecutionToParent];
}

- (void)oneFingerForcePan:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v7 = [v6 textInputView];
  [v4 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v13 = [v12 textInputView];
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
      v48 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v49 = [v48 textInputView];
      [v18 _translationInView:v49];
      v51 = v50;
      v53 = v52;

      v54 = hypot(v51, v53);
      v18 = +[_UITextSelectionSettings sharedInstance];
      [v18 allowableForceMovement];
      v19 = v54 <= v55;
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
    [v26 touchAlignedPointForPoint:v9 translation:{v11, v15, v17}];
    v9 = v27;
    v11 = v28;
  }

  if (([v5 didLongForcePress] & 1) == 0 && objc_msgSend(v4, "didLongPress") && objc_msgSend(v5, "panGestureState") == 5)
  {
    v29 = v4;
    if ([v29 state] == 3 || objc_msgSend(v29, "state") == 4)
    {
    }

    else
    {
      v56 = [v29 state];

      if (v56 != 5)
      {
        if (!v19)
        {
          [(_UIKeyboardBasedTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:1 viaDrag:v9, v11];
        }

        [v5 setDidLongForcePress:1];
        v57 = [v29 view];
        [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePan:_isViewKeyboardLayoutPresent(v57)];

        v58 = [MEMORY[0x1E69D4E18] sharedInstance];
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke;
        v91[3] = &unk_1E70FB518;
        v91[4] = self;
        v94 = v15;
        v95 = v17;
        v92 = v5;
        v93 = v29;
        [v58 logBlock:v91 domain:@"com.apple.keyboard.UIKit"];
      }
    }
  }

  v30 = [(UITextInteraction *)self root];
  v31 = [v30 delegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    [(_UIKeyboardBasedTextSelectionInteraction *)self _processGestureForCustomHighlighter:v4];
    goto LABEL_40;
  }

  if ([v5 panGestureState] == 0 && v19)
  {
    [v5 setPanGestureState:1];
    [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
    v33 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v33 beginLoupeGestureAtPoint:v9 translation:{v11, v15, v17}];
LABEL_21:

    goto LABEL_36;
  }

  if ([v5 panGestureState] == 1)
  {
    v34 = v4;
    if ([v34 state] == 3 || objc_msgSend(v34, "state") == 4)
    {
    }

    else
    {
      v59 = [v34 state];

      if (v59 != 5)
      {
        v60 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        v61 = [v60 textInputView];
        [v34 velocityInView:v61];
        v63 = v62;
        v65 = v64;

        v33 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [v33 updateLoupeGestureAtPoint:v9 translation:v11 velocity:{v15, v17, v63, v65}];
        goto LABEL_21;
      }
    }

    [v5 setDidFloatCursor:0];
    v35 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v35 endLoupeGestureAtPoint:v9 translation:{v11, v15, v17}];

    goto LABEL_27;
  }

  if ([v5 panGestureState] == 3)
  {
    v36 = v4;
    if ([v36 state] == 3 || objc_msgSend(v36, "state") == 4)
    {

LABEL_32:
      if (qword_1ED498F90 != -1)
      {
        dispatch_once(&qword_1ED498F90, &__block_literal_global_487_1);
      }

      v37 = [v5 delegate];
      v38 = [v37 taskQueue];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_4;
      v87[3] = &unk_1E70FD460;
      v87[4] = self;
      v88 = v5;
      v89 = v9;
      v90 = v11;
      [v38 addTask:v87 breadcrumb:qword_1ED498F88];

      v39 = v88;
LABEL_35:

      goto LABEL_36;
    }

    v68 = [v36 state];

    if (v68 == 5)
    {
      goto LABEL_32;
    }

    if (qword_1ED498FA0 != -1)
    {
      dispatch_once(&qword_1ED498FA0, &__block_literal_global_493);
    }

    v33 = [v5 delegate];
    v69 = [v33 taskQueue];
    v70 = v69;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_8;
    v86[3] = &unk_1E70FDA90;
    v86[4] = self;
    *&v86[5] = v9;
    *&v86[6] = v11;
    v71 = qword_1ED498F98;
    v72 = v86;
LABEL_72:
    [v69 addTask:v72 breadcrumb:v71];

    goto LABEL_21;
  }

  if ([v5 panGestureState] == 5)
  {
    v45 = v4;
    if ([v45 state] == 3 || objc_msgSend(v45, "state") == 4)
    {
    }

    else
    {
      v73 = [v45 state];

      if (v73 != 5)
      {
        if (([v5 delayForceMagnify] & 1) == 0)
        {
          v74 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
          [v74 updateLoupeMagnifierAtPoint:{v9, v11}];
        }

        if (qword_1ED498FB0 != -1)
        {
          dispatch_once(&qword_1ED498FB0, &__block_literal_global_499_0);
        }

        v33 = [v5 delegate];
        v69 = [v33 taskQueue];
        v70 = v69;
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_12;
        v85[3] = &unk_1E70FDA90;
        v85[4] = self;
        *&v85[5] = v9;
        *&v85[6] = v11;
        v71 = qword_1ED498FA8;
        v72 = v85;
        goto LABEL_72;
      }
    }

    [v5 setDidFloatCursor:0];
    if (([v5 delayForceMagnify] & 1) == 0)
    {
      v46 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [v46 endLoupeMagnifierAtPoint:{v9, v11}];
    }

    v47 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [v47 setRangedSelectionShouldShowGrabbers:1];

    [v5 setDidSuppressSelectionGrabbers:0];
LABEL_27:
    [v5 setPanGestureState:0];
    goto LABEL_36;
  }

  if ([v5 panGestureState] == 6)
  {
    if (_gestureIsEnded(v4))
    {
      if (qword_1ED498FC0 != -1)
      {
        dispatch_once(&qword_1ED498FC0, &__block_literal_global_505);
      }

      v66 = [v5 delegate];
      v67 = [v66 taskQueue];
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_15;
      v81[3] = &unk_1E70FD460;
      v81[4] = self;
      v82 = v5;
      v83 = v9;
      v84 = v11;
      [v67 addTask:v81 breadcrumb:qword_1ED498FB8];

      v39 = v82;
    }

    else
    {
      if (qword_1ED498FD0 != -1)
      {
        dispatch_once(&qword_1ED498FD0, &__block_literal_global_511);
      }

      v75 = [v5 delegate];
      v76 = [v75 taskQueue];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_19;
      v77[3] = &unk_1E70FD460;
      v77[4] = self;
      v79 = v9;
      v80 = v11;
      v78 = v5;
      [v76 addTask:v77 breadcrumb:qword_1ED498FC8];

      v39 = v78;
    }

    goto LABEL_35;
  }

LABEL_36:
  v40 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v41 = [v40 textInputView];
  [v4 _translationInView:v41];
  [v5 setLastPanTranslation:?];

  v42 = v4;
  if ([v42 state] == 3 || objc_msgSend(v42, "state") == 4)
  {
  }

  else
  {
    v44 = [v42 state];

    if (v44 != 5)
    {
      goto LABEL_40;
    }
  }

  [v5 setDidLongForcePress:0];
  [v5 setDidFloatCursor:0];
  [v5 setDelayForceMagnify:0];
  [v5 setPreviousForcePressCount:0];
  [v5 setPanGestureState:0];
  v43 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [v43 showSelectionCommands];

  [v42 setShouldFailWithoutForce:{objc_msgSend(v5, "oneFingerForcePressShouldFailWithoutForce")}];
LABEL_40:
}

- (void)oneFingerForcePress:(id)a3
{
  v4 = a3;
  v5 = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  v6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v7 = [v4 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v5 delegate];
    v10 = [v9 textSelectionController];

    if (v10)
    {
      v11 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      v17 = [v11 textInputView];
      [v4 velocityInView:v17];
      v13 = v12;
      v15 = v14;

      v16 = hypot(v13, v15);
      LOBYTE(v17) = 0;
      if ([v5 panGestureState] && v16 > 65.0)
      {
        LODWORD(v17) = [v4 touchEclipsesVelocity] ^ 1;
      }

      v18 = [v6 textInputView];
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
          v27 = [v5 delegate];
          if (objc_opt_respondsToSelector())
          {
            v28 = [v5 delegate];
            v29 = [v28 hasMarkedText];
          }

          else
          {
            v29 = 0;
          }

          if ([v5 panGestureState] == 6)
          {
            if (Current - v26 <= 0.8)
            {
              [(_UIKeyboardTextSelectionInteraction *)self _granularityExpandingGestureWithTimeInterval:1 timeGranularity:Current - v26 isMidPan:?];
            }

            else
            {
              if (qword_1ED498FE0 != -1)
              {
                dispatch_once(&qword_1ED498FE0, &__block_literal_global_515_0);
              }

              v30 = [v5 delegate];
              v31 = [v30 taskQueue];
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 3221225472;
              v49[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_3;
              v49[3] = &unk_1E70FD900;
              v49[4] = self;
              v50 = v5;
              v51 = v6;
              v52 = v20;
              v53 = v22;
              [v31 addTask:v49 breadcrumb:qword_1ED498FD8];
            }
          }

          if ([v5 panGestureState] || ((-[_UIKeyboardBasedTextSelectionInteraction enclosingScrollViewIsScrolling](self, "enclosingScrollViewIsScrolling") | v29) & 1) != 0)
          {
            if ([v5 panGestureState] == 1 || objc_msgSend(v5, "panGestureState") == 5)
            {
              [(_UIKeyboardBasedTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:0 viaDrag:v20, v22];
            }
          }

          else
          {
            [v5 setPanGestureState:5];
            [v5 setPanGestureState:6];
            [v5 setPreviousRepeatedGranularity:1];
            [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
            [v6 willBeginHighlighterGesture];
            v32 = [(UITextInteraction *)self root];
            [v32 _playFeedbackForCursorMovement];

            [v6 beginSelection];
            [v6 setRangedSelectionShouldShowGrabbers:1];
            [v5 setDidSuppressSelectionGrabbers:0];
            if (qword_1ED498FF0 != -1)
            {
              dispatch_once(&qword_1ED498FF0, &__block_literal_global_521_1);
            }

            v33 = [v5 delegate];
            v34 = [v33 taskQueue];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_8;
            v43[3] = &unk_1E70FD928;
            v43[4] = self;
            v44 = v5;
            v46 = v20;
            v47 = v22;
            v48 = 1;
            v45 = v6;
            [v34 addTask:v43 breadcrumb:qword_1ED498FE8];
          }

          [v5 setLastPressTimestamp:Current];
          v35 = [v4 view];
          isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v35);
          if (v4)
          {
            v37 = *(v4 + 38);
          }

          else
          {
            v37 = 0;
          }

          [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePress:isViewKeyboardLayoutPresent withPressCount:v37];

          v38 = [MEMORY[0x1E69D4E18] sharedInstance];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_10;
          v40[3] = &unk_1E70FB4F0;
          v41 = v5;
          v42 = v4;
          [v38 logBlock:v40 domain:@"com.apple.keyboard.UIKit"];
        }
      }

      if (v4)
      {
        v39 = *(v4 + 38);
      }

      else
      {
        v39 = 0;
      }

      [v5 setPreviousForcePressCount:v39];
    }
  }
}

@end
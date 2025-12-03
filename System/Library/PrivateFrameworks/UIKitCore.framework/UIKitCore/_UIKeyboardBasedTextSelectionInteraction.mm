@interface _UIKeyboardBasedTextSelectionInteraction
- (BOOL)enclosingScrollViewIsScrolling;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (id)owner;
- (void)_createGestureTuningIfNecessary;
- (void)_processGestureForCustomHighlighter:(id)highlighter;
- (void)beginOneFingerSelectWithTranslation:(CGPoint)translation executionContext:(id)context;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)endOneFingerSelectWithExecutionContext:(id)context;
- (void)oneFingerForcePan:(id)pan;
- (void)oneFingerForcePress:(id)press;
- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)location viaDrag:(BOOL)drag;
- (void)updateOneFingerSelectWithTranslation:(CGPoint)translation executionContext:(id)context;
@end

@implementation _UIKeyboardBasedTextSelectionInteraction

- (id)owner
{
  v4.receiver = self;
  v4.super_class = _UIKeyboardBasedTextSelectionInteraction;
  owner = [(_UIKeyboardTextSelectionInteraction *)&v4 owner];

  return owner;
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
      [(UITextGestureTuning *)self->_gestureTuning setIncludeTipProjection:1];
      v9 = self->_gestureTuning;

      [(UITextGestureTuning *)v9 setStrongerBiasAgainstUp:1];
    }
  }
}

- (void)didMoveToView:(id)view
{
  v5.receiver = self;
  v5.super_class = _UIKeyboardBasedTextSelectionInteraction;
  viewCopy = view;
  [(UITextInteraction *)&v5 didMoveToView:viewCopy];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:viewCopy, v5.receiver, v5.super_class];
}

- (void)_processGestureForCustomHighlighter:(id)highlighter
{
  highlighterCopy = highlighter;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  _textInput = [(UITextInteraction *)self _textInput];
  textInputView = [_textInput textInputView];
  [highlighterCopy locationInView:textInputView];
  v9 = v8;
  v11 = v10;

  _textInput2 = [(UITextInteraction *)self _textInput];
  textInputView2 = [_textInput2 textInputView];
  [highlighterCopy _translationInView:textInputView2];
  v15 = v14;
  v17 = v16;

  if (![highlighterCopy didLongPress])
  {
    goto LABEL_8;
  }

  v18 = highlighterCopy;
  if ([v18 state] != 3 && objc_msgSend(v18, "state") != 4)
  {
    state = [v18 state];

    if (state != 5 && ![(_UIKeyboardBasedTextSelectionInteraction *)self enclosingScrollViewIsScrolling])
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
  preferencesActions = [v21 preferencesActions];
  v23 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v23)
  {
    if ([owner panGestureState] == 0 && !v19)
    {
      [owner setPanGestureState:6];
      selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController willBeginHighlighterGesture];

      root = [(UITextInteraction *)self root];
      [root _playFeedbackForCursorMovement];

      state3 = 1;
      goto LABEL_19;
    }

    if ([owner panGestureState] == 6)
    {
      v24 = highlighterCopy;
      if ([v24 state] == 3 || objc_msgSend(v24, "state") == 4)
      {
      }

      else
      {
        state2 = [v24 state];

        if (state2 != 5)
        {
          state3 = 2;
LABEL_16:
          [(UITextGestureTuning *)self->_gestureTuning touchAlignedPointForPoint:v9 translation:v11, v15, v17];
          if (state3)
          {
            v9 = v26;
            v11 = v27;
LABEL_19:
            root2 = [(UITextInteraction *)self root];
            delegate = [root2 delegate];
            [delegate _performHighlighterActionWithGestureState:state3 location:{v9, v11}];

            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }

      state3 = [v24 state];
      goto LABEL_16;
    }
  }

LABEL_20:
  v36 = highlighterCopy;
  if ([v36 state] == 3 || objc_msgSend(v36, "state") == 4)
  {

LABEL_23:
    [owner setDidLongForcePress:0];
    [owner setDidFloatCursor:0];
    [owner setDelayForceMagnify:0];
    [owner setPreviousForcePressCount:0];
    [owner setPanGestureState:0];
    [v36 setShouldFailWithoutForce:{objc_msgSend(owner, "oneFingerForcePressShouldFailWithoutForce")}];
    goto LABEL_24;
  }

  state4 = [v36 state];

  if (state4 == 5)
  {
    goto LABEL_23;
  }

LABEL_24:
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  view = [recognizer view];
  [touchCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  return ![(UITextInteraction *)self currentSelectionContainsPoint:v9, v11];
}

- (BOOL)enclosingScrollViewIsScrolling
{
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  delegate = [owner delegate];
  textSelectionController = [delegate textSelectionController];

  if (!textSelectionController)
  {
    return 0;
  }

  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView = [selectionController textInputView];
  _scroller = [textInputView _scroller];

  if (_scroller)
  {
    isDragging = [_scroller isDragging];
  }

  else
  {
    isDragging = 0;
  }

  return isDragging;
}

- (void)transitionFromBlockMagnifyToBlockSelectWithLocation:(CGPoint)location viaDrag:(BOOL)drag
{
  dragCopy = drag;
  y = location.y;
  x = location.x;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  delayForceMagnify = [owner delayForceMagnify];
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  v11 = selectionController;
  if (delayForceMagnify)
  {
    [selectionController beginLoupeMagnifierAtPoint:{x, y}];

    [owner setDelayForceMagnify:0];
  }

  else
  {
    [selectionController willHandoffLoupeMagnifier];
  }

  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController2 setRangedSelectionShouldShowGrabbers:1];

  [owner setDidSuppressSelectionGrabbers:0];
  [owner setPreviousRepeatedGranularity:1];
  selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController3 endSelection];

  selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController4 switchToRangedSelection];

  [owner setPanGestureState:2];
  if (dragCopy)
  {
    if (qword_1ED498F70 != -1)
    {
      dispatch_once(&qword_1ED498F70, &__block_literal_global_474_0);
    }

    delegate = [owner delegate];
    taskQueue = [delegate taskQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_3;
    v28[3] = &unk_1E70FD460;
    *&v29[1] = x;
    *&v29[2] = y;
    v17 = v29;
    v28[4] = self;
    v29[0] = owner;
    v18 = qword_1ED498F68;
    v19 = owner;
    v20 = v28;
  }

  else
  {
    if (qword_1ED498F80 != -1)
    {
      dispatch_once(&qword_1ED498F80, &__block_literal_global_480_0);
    }

    delegate = [owner delegate];
    taskQueue = [delegate taskQueue];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __104___UIKeyboardBasedTextSelectionInteraction_transitionFromBlockMagnifyToBlockSelectWithLocation_viaDrag___block_invoke_7;
    v25 = &unk_1E70FD460;
    v17 = v27;
    selfCopy = self;
    v27[0] = owner;
    *&v27[1] = x;
    *&v27[2] = y;
    v18 = qword_1ED498F78;
    v21 = owner;
    v20 = &v22;
  }

  [taskQueue addTask:v20 breadcrumb:{v18, v22, v23, v24, v25, selfCopy}];
}

- (void)beginOneFingerSelectWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
  {
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    v10 = selectionController2;
    if (contextCopy)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __97___UIKeyboardBasedTextSelectionInteraction_beginOneFingerSelectWithTranslation_executionContext___block_invoke;
      v13[3] = &unk_1E70FD058;
      v13[4] = self;
      v11 = [contextCopy childWithContinuation:v13];
      [v10 selectPositionAtPoint:v11 executionContext:{x, y}];
    }

    else
    {
      [selectionController2 selectPositionAtPoint:0 executionContext:{x, y}];

      selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController3 beginSelection];
    }
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)updateOneFingerSelectWithTranslation:(CGPoint)translation executionContext:(id)context
{
  y = translation.y;
  x = translation.x;
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];

  if (selectionController)
  {
    selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController2 updateSelectionWithExtentPoint:contextCopy executionContext:{x, y}];
  }

  else
  {
    [contextCopy returnExecutionToParent];
  }
}

- (void)endOneFingerSelectWithExecutionContext:(id)context
{
  contextCopy = context;
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController endSelection];

  [contextCopy returnExecutionToParent];
}

- (void)oneFingerForcePan:(id)pan
{
  panCopy = pan;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView = [selectionController textInputView];
  [panCopy locationInView:textInputView];
  v9 = v8;
  v11 = v10;

  selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView2 = [selectionController2 textInputView];
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
      selectionController3 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      textInputView3 = [selectionController3 textInputView];
      [v18 _translationInView:textInputView3];
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
  gestureTuning = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];

  if (gestureTuning)
  {
    gestureTuning2 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];
    v23 = MEMORY[0x1E695DFD8];
    touches = [panCopy touches];
    v25 = [v23 setWithArray:touches];
    [gestureTuning2 updateWithTouches:v25 gestureState:{objc_msgSend(panCopy, "state")}];

    gestureTuning3 = [(_UIKeyboardBasedTextSelectionInteraction *)self gestureTuning];
    [gestureTuning3 touchAlignedPointForPoint:v9 translation:{v11, v15, v17}];
    v9 = v27;
    v11 = v28;
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
          [(_UIKeyboardBasedTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:1 viaDrag:v9, v11];
        }

        [owner setDidLongForcePress:1];
        view = [v29 view];
        [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePan:_isViewKeyboardLayoutPresent(view)];

        mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke;
        v91[3] = &unk_1E70FB518;
        v91[4] = self;
        v94 = v15;
        v95 = v17;
        v92 = owner;
        v93 = v29;
        [mEMORY[0x1E69D4E18] logBlock:v91 domain:@"com.apple.keyboard.UIKit"];
      }
    }
  }

  root = [(UITextInteraction *)self root];
  delegate = [root delegate];
  v32 = objc_opt_respondsToSelector();

  if (v32)
  {
    [(_UIKeyboardBasedTextSelectionInteraction *)self _processGestureForCustomHighlighter:panCopy];
    goto LABEL_40;
  }

  if ([owner panGestureState] == 0 && v19)
  {
    [owner setPanGestureState:1];
    [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
    selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController4 beginLoupeGestureAtPoint:v9 translation:{v11, v15, v17}];
LABEL_21:

    goto LABEL_36;
  }

  if ([owner panGestureState] == 1)
  {
    v34 = panCopy;
    if ([v34 state] == 3 || objc_msgSend(v34, "state") == 4)
    {
    }

    else
    {
      state3 = [v34 state];

      if (state3 != 5)
      {
        selectionController5 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        textInputView4 = [selectionController5 textInputView];
        [v34 velocityInView:textInputView4];
        v63 = v62;
        v65 = v64;

        selectionController4 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
        [selectionController4 updateLoupeGestureAtPoint:v9 translation:v11 velocity:{v15, v17, v63, v65}];
        goto LABEL_21;
      }
    }

    [owner setDidFloatCursor:0];
    selectionController6 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController6 endLoupeGestureAtPoint:v9 translation:{v11, v15, v17}];

    goto LABEL_27;
  }

  if ([owner panGestureState] == 3)
  {
    v36 = panCopy;
    if ([v36 state] == 3 || objc_msgSend(v36, "state") == 4)
    {

LABEL_32:
      if (qword_1ED498F90 != -1)
      {
        dispatch_once(&qword_1ED498F90, &__block_literal_global_487_1);
      }

      delegate2 = [owner delegate];
      taskQueue = [delegate2 taskQueue];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_4;
      v87[3] = &unk_1E70FD460;
      v87[4] = self;
      v88 = owner;
      v89 = v9;
      v90 = v11;
      [taskQueue addTask:v87 breadcrumb:qword_1ED498F88];

      v39 = v88;
LABEL_35:

      goto LABEL_36;
    }

    state4 = [v36 state];

    if (state4 == 5)
    {
      goto LABEL_32;
    }

    if (qword_1ED498FA0 != -1)
    {
      dispatch_once(&qword_1ED498FA0, &__block_literal_global_493);
    }

    selectionController4 = [owner delegate];
    taskQueue2 = [selectionController4 taskQueue];
    v70 = taskQueue2;
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
    [taskQueue2 addTask:v72 breadcrumb:v71];

    goto LABEL_21;
  }

  if ([owner panGestureState] == 5)
  {
    v45 = panCopy;
    if ([v45 state] == 3 || objc_msgSend(v45, "state") == 4)
    {
    }

    else
    {
      state5 = [v45 state];

      if (state5 != 5)
      {
        if (([owner delayForceMagnify] & 1) == 0)
        {
          selectionController7 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
          [selectionController7 updateLoupeMagnifierAtPoint:{v9, v11}];
        }

        if (qword_1ED498FB0 != -1)
        {
          dispatch_once(&qword_1ED498FB0, &__block_literal_global_499_0);
        }

        selectionController4 = [owner delegate];
        taskQueue2 = [selectionController4 taskQueue];
        v70 = taskQueue2;
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

    [owner setDidFloatCursor:0];
    if (([owner delayForceMagnify] & 1) == 0)
    {
      selectionController8 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      [selectionController8 endLoupeMagnifierAtPoint:{v9, v11}];
    }

    selectionController9 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
    [selectionController9 setRangedSelectionShouldShowGrabbers:1];

    [owner setDidSuppressSelectionGrabbers:0];
LABEL_27:
    [owner setPanGestureState:0];
    goto LABEL_36;
  }

  if ([owner panGestureState] == 6)
  {
    if (_gestureIsEnded(panCopy))
    {
      if (qword_1ED498FC0 != -1)
      {
        dispatch_once(&qword_1ED498FC0, &__block_literal_global_505);
      }

      delegate3 = [owner delegate];
      taskQueue3 = [delegate3 taskQueue];
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_15;
      v81[3] = &unk_1E70FD460;
      v81[4] = self;
      v82 = owner;
      v83 = v9;
      v84 = v11;
      [taskQueue3 addTask:v81 breadcrumb:qword_1ED498FB8];

      v39 = v82;
    }

    else
    {
      if (qword_1ED498FD0 != -1)
      {
        dispatch_once(&qword_1ED498FD0, &__block_literal_global_511);
      }

      delegate4 = [owner delegate];
      taskQueue4 = [delegate4 taskQueue];
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __62___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePan___block_invoke_19;
      v77[3] = &unk_1E70FD460;
      v77[4] = self;
      v79 = v9;
      v80 = v11;
      v78 = owner;
      [taskQueue4 addTask:v77 breadcrumb:qword_1ED498FC8];

      v39 = v78;
    }

    goto LABEL_35;
  }

LABEL_36:
  selectionController10 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  textInputView5 = [selectionController10 textInputView];
  [panCopy _translationInView:textInputView5];
  [owner setLastPanTranslation:?];

  v42 = panCopy;
  if ([v42 state] == 3 || objc_msgSend(v42, "state") == 4)
  {
  }

  else
  {
    state6 = [v42 state];

    if (state6 != 5)
    {
      goto LABEL_40;
    }
  }

  [owner setDidLongForcePress:0];
  [owner setDidFloatCursor:0];
  [owner setDelayForceMagnify:0];
  [owner setPreviousForcePressCount:0];
  [owner setPanGestureState:0];
  selectionController11 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  [selectionController11 showSelectionCommands];

  [v42 setShouldFailWithoutForce:{objc_msgSend(owner, "oneFingerForcePressShouldFailWithoutForce")}];
LABEL_40:
}

- (void)oneFingerForcePress:(id)press
{
  pressCopy = press;
  owner = [(_UIKeyboardBasedTextSelectionInteraction *)self owner];
  selectionController = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
  view = [pressCopy view];
  if (view)
  {
    v8 = view;
    delegate = [owner delegate];
    textSelectionController = [delegate textSelectionController];

    if (textSelectionController)
    {
      selectionController2 = [(_UIKeyboardTextSelectionInteraction *)self selectionController];
      textInputView = [selectionController2 textInputView];
      [pressCopy velocityInView:textInputView];
      v13 = v12;
      v15 = v14;

      v16 = hypot(v13, v15);
      LOBYTE(textInputView) = 0;
      if ([owner panGestureState] && v16 > 65.0)
      {
        LODWORD(textInputView) = [pressCopy touchEclipsesVelocity] ^ 1;
      }

      textInputView2 = [selectionController textInputView];
      [pressCopy locationInView:textInputView2];
      v20 = v19;
      v22 = v21;

      if ([pressCopy currentPreviewForceState] >= 1)
      {
        v23 = pressCopy ? pressCopy[19] : 0;
        if (!((v23 <= [owner previousForcePressCount]) | textInputView & 1))
        {
          Current = CFAbsoluteTimeGetCurrent();
          [owner lastPressTimestamp];
          v26 = v25;
          delegate2 = [owner delegate];
          if (objc_opt_respondsToSelector())
          {
            delegate3 = [owner delegate];
            hasMarkedText = [delegate3 hasMarkedText];
          }

          else
          {
            hasMarkedText = 0;
          }

          if ([owner panGestureState] == 6)
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

              delegate4 = [owner delegate];
              taskQueue = [delegate4 taskQueue];
              v49[0] = MEMORY[0x1E69E9820];
              v49[1] = 3221225472;
              v49[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_3;
              v49[3] = &unk_1E70FD900;
              v49[4] = self;
              v50 = owner;
              v51 = selectionController;
              v52 = v20;
              v53 = v22;
              [taskQueue addTask:v49 breadcrumb:qword_1ED498FD8];
            }
          }

          if ([owner panGestureState] || ((-[_UIKeyboardBasedTextSelectionInteraction enclosingScrollViewIsScrolling](self, "enclosingScrollViewIsScrolling") | hasMarkedText) & 1) != 0)
          {
            if ([owner panGestureState] == 1 || objc_msgSend(owner, "panGestureState") == 5)
            {
              [(_UIKeyboardBasedTextSelectionInteraction *)self transitionFromBlockMagnifyToBlockSelectWithLocation:0 viaDrag:v20, v22];
            }
          }

          else
          {
            [owner setPanGestureState:5];
            [owner setPanGestureState:6];
            [owner setPreviousRepeatedGranularity:1];
            [(_UIKeyboardTextSelectionInteraction *)self disableEnclosingScrollViewScrolling];
            [selectionController willBeginHighlighterGesture];
            root = [(UITextInteraction *)self root];
            [root _playFeedbackForCursorMovement];

            [selectionController beginSelection];
            [selectionController setRangedSelectionShouldShowGrabbers:1];
            [owner setDidSuppressSelectionGrabbers:0];
            if (qword_1ED498FF0 != -1)
            {
              dispatch_once(&qword_1ED498FF0, &__block_literal_global_521_1);
            }

            delegate5 = [owner delegate];
            taskQueue2 = [delegate5 taskQueue];
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_8;
            v43[3] = &unk_1E70FD928;
            v43[4] = self;
            v44 = owner;
            v46 = v20;
            v47 = v22;
            v48 = 1;
            v45 = selectionController;
            [taskQueue2 addTask:v43 breadcrumb:qword_1ED498FE8];
          }

          [owner setLastPressTimestamp:Current];
          view2 = [pressCopy view];
          isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(view2);
          if (pressCopy)
          {
            v37 = *(pressCopy + 38);
          }

          else
          {
            v37 = 0;
          }

          [_UIKeyboardUsageTracking keyboardGestureOneFingerForcePress:isViewKeyboardLayoutPresent withPressCount:v37];

          mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __64___UIKeyboardBasedTextSelectionInteraction_oneFingerForcePress___block_invoke_10;
          v40[3] = &unk_1E70FB4F0;
          v41 = owner;
          v42 = pressCopy;
          [mEMORY[0x1E69D4E18] logBlock:v40 domain:@"com.apple.keyboard.UIKit"];
        }
      }

      if (pressCopy)
      {
        v39 = *(pressCopy + 38);
      }

      else
      {
        v39 = 0;
      }

      [owner setPreviousForcePressCount:v39];
    }
  }
}

@end
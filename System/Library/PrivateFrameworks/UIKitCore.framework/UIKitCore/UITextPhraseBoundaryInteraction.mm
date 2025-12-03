@interface UITextPhraseBoundaryInteraction
- (CGPoint)pointIfPlacedCarefully:(CGPoint)result;
- (CGPoint)touchAlignedPointForPoint:(CGPoint)result translation:(CGPoint)translation;
- (UITextPhraseBoundaryInteraction)initWithTextInput:(id)input;
- (id)_phraseBoundaryGestureRecognizer;
- (id)closestPositionToPoint:(CGPoint)point translation:(CGPoint)translation;
- (void)_createGestureTuningIfNecessary;
- (void)_phraseBoundaryGesture:(id)gesture;
- (void)didMoveToView:(id)view;
- (void)updateVisibilityOffsetForGesture:(id)gesture;
@end

@implementation UITextPhraseBoundaryInteraction

- (UITextPhraseBoundaryInteraction)initWithTextInput:(id)input
{
  inputCopy = input;
  v9.receiver = self;
  v9.super_class = UITextPhraseBoundaryInteraction;
  v5 = [(UITextInteraction *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(UITextInteraction *)v5 setTextInput:inputCopy];
    _phraseBoundaryGestureRecognizer = [(UITextPhraseBoundaryInteraction *)v6 _phraseBoundaryGestureRecognizer];
    [(UITextInteraction *)v6 addGestureRecognizer:_phraseBoundaryGestureRecognizer withName:0x1EFBA7710];
  }

  return v6;
}

- (void)didMoveToView:(id)view
{
  v5.receiver = self;
  v5.super_class = UITextPhraseBoundaryInteraction;
  viewCopy = view;
  [(UITextInteraction *)&v5 didMoveToView:viewCopy];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:viewCopy, v5.receiver, v5.super_class];
}

- (CGPoint)pointIfPlacedCarefully:(CGPoint)result
{
  gestureTuning = self->_gestureTuning;
  if (gestureTuning)
  {
    [(UITextGestureTuning *)gestureTuning pointIfPlacedCarefully:result.x, result.y];
  }

  return result;
}

- (CGPoint)touchAlignedPointForPoint:(CGPoint)result translation:(CGPoint)translation
{
  gestureTuning = self->_gestureTuning;
  if (gestureTuning)
  {
    [(UITextGestureTuning *)gestureTuning touchAlignedPointForPoint:result.x translation:result.y, translation.x, translation.y];
  }

  return result;
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

      v9 = self->_gestureTuning;

      [(UITextGestureTuning *)v9 setShouldUseLineThreshold:1];
    }
  }
}

- (void)updateVisibilityOffsetForGesture:(id)gesture
{
  gestureCopy = gesture;
  [(UITextPhraseBoundaryInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;
  _allActiveTouches = [gestureCopy _allActiveTouches];
  state = [gestureCopy state];

  [(UITextGestureTuning *)gestureTuning updateWithTouches:_allActiveTouches gestureState:state];
}

- (id)_phraseBoundaryGestureRecognizer
{
  v3 = [[UIPhraseBoundaryGestureRecognizer alloc] initWithTarget:self action:sel__phraseBoundaryGesture_];
  textInput = [(UITextInteraction *)self textInput];
  [(UIPhraseBoundaryGestureRecognizer *)v3 setTextInput:textInput];

  [(UILongPressGestureRecognizer *)v3 setDelay:0.0];
  [(UIPhraseBoundaryGestureRecognizer *)v3 setSecondDelay:0.2];
  [(UILongPressGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];
  [(UILongPressGestureRecognizer *)v3 setAllowableMovement:1.79769313e308];

  return v3;
}

- (void)_phraseBoundaryGesture:(id)gesture
{
  gestureCopy = gesture;
  _textInput = [(UITextInteraction *)self _textInput];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [(UITextPhraseBoundaryInteraction *)self updateVisibilityOffsetForGesture:gestureCopy];
  v7 = +[UIKeyboardImpl activeInstance];
  if (([_textInput isFirstResponder] & 1) == 0)
  {
    inputDelegate = [v7 inputDelegate];
    v8 = _textInput != inputDelegate;

    if (assistantDelegate)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  if (!assistantDelegate)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [assistantDelegate useGesturesForEditableContent] ^ 1;
LABEL_6:
  if (((v8 | v9) & 1) != 0 || ([_textInput _hasMarkedText] & 1) == 0)
  {
    NSLog(&cfstr_WarningPhraseB_0.isa);
    [(UITextInteraction *)self setInGesture:0];
    [assistantDelegate setGestureRecognizers];
    goto LABEL_12;
  }

  if (![_textInput _usesAsynchronousProtocol])
  {
    userData = [gestureCopy userData];
    markedTextRange = [_textInput markedTextRange];
    aBlock = MEMORY[0x1E69E9820];
    v101 = 3221225472;
    v102 = __58__UITextPhraseBoundaryInteraction__phraseBoundaryGesture___block_invoke;
    v103 = &unk_1E7125360;
    v18 = _textInput;
    v104 = v18;
    v98 = markedTextRange;
    v105 = v98;
    v106 = v7;
    v19 = _Block_copy(&aBlock);
    state = [gestureCopy state];
    if ((state - 3) < 2)
    {
      textInputView = [v18 textInputView];
      [gestureCopy centroid];
      v58 = v57;
      v60 = v59;
      view = [gestureCopy view];
      [textInputView convertPoint:view fromView:{v58, v60}];
      v63 = v62;
      v65 = v64;

      textInputView2 = [v18 textInputView];
      [gestureCopy _translationInView:textInputView2];
      v68 = v67;
      v70 = v69;

      v34 = [(UITextPhraseBoundaryInteraction *)self closestPositionToPoint:v63 translation:v65, v68, v70];
      [v18 caretRectForPosition:v34];
      v72 = v71;
      v74 = v73;
      v19[2](v19, 1, v34);
      if (userData)
      {
        [userData setMagnificationPoint:{v72, v74}];
        [userData stopMagnifying:1];
        [gestureCopy setUserData:0];
      }

      [(UITextCursorAssertion *)self->_blinkAssertion invalidate:v98];
      blinkAssertion = self->_blinkAssertion;
      self->_blinkAssertion = 0;

      inputDelegate2 = [v18 inputDelegate];
      [inputDelegate2 selectionDidChange:v18];

      [assistantDelegate cancelAutoscroll];
      [(UITextInteraction *)self setInGesture:0];
    }

    else
    {
      if (state != 2)
      {
        if (state != 1)
        {
          v33 = v98;
LABEL_35:

          goto LABEL_12;
        }

        [(UITextInteraction *)self setInGesture:1];
        inputDelegate3 = [v18 inputDelegate];
        [inputDelegate3 selectionWillChange:v18];

        textInputView3 = [v18 textInputView];
        [gestureCopy centroid];
        v24 = v23;
        v26 = v25;
        view2 = [gestureCopy view];
        [textInputView3 convertPoint:view2 fromView:{v24, v26}];
        v29 = v28;
        v31 = v30;

        v32 = v18;
        v33 = v98;
        v34 = [v32 closestPositionToPoint:v98 withinRange:{v29, v31}];
        v19[2](v19, 0, v34);
        _assertionController = [(UITextInteraction *)self _assertionController];
        v36 = [_assertionController nonBlinkingAssertionWithReason:@"Phrase Boundary gesture"];
        v37 = self->_blinkAssertion;
        self->_blinkAssertion = v36;

LABEL_34:
        goto LABEL_35;
      }

      textInputView4 = [v18 textInputView];
      [gestureCopy centroid];
      v79 = v78;
      v81 = v80;
      view3 = [gestureCopy view];
      [textInputView4 convertPoint:view3 fromView:{v79, v81}];
      v84 = v83;
      v86 = v85;

      textInputView5 = [v18 textInputView];
      [gestureCopy _translationInView:textInputView5];
      v89 = v88;
      v91 = v90;

      v34 = [(UITextPhraseBoundaryInteraction *)self closestPositionToPoint:v84 translation:v86, v89, v91];
      [v18 caretRectForPosition:v34];
      v93 = v92;
      v95 = v94;
      v96 = (v19[2])(v19, 1, v34);
      if (userData)
      {
        [userData setMagnificationPoint:{v93, v95}];
      }

      else if (v96 & 1) != 0 || ([gestureCopy secondDelayElapsed])
      {
        userData = [UITextMagnifierRanged sharedRangedMagnifier:v98];
        [gestureCopy setUserData:userData];
        textInputView6 = [v18 textInputView];
        [userData beginMagnifyingTarget:textInputView6 text:v18 magnificationPoint:1 offset:v93 animated:{v95, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }

      else
      {
        userData = 0;
      }

      [assistantDelegate startAutoscroll:{v93, v95, v98}];
    }

    v33 = v99;
    goto LABEL_34;
  }

  [gestureCopy centroid];
  v12 = v11;
  v14 = v13;
  if ([gestureCopy state] == 1)
  {
    inputDelegate4 = [_textInput inputDelegate];
    [inputDelegate4 selectionWillChange:_textInput];
  }

  else
  {
    textInputView7 = [_textInput textInputView];
    [gestureCopy _translationInView:textInputView7];
    v40 = v39;
    v42 = v41;

    [(UITextPhraseBoundaryInteraction *)self touchAlignedPointForPoint:v12 translation:v14, v40, v42];
    v12 = v43;
    v14 = v44;
  }

  if ([_textInput conformsToProtocolCached:&unk_1F016C810])
  {
    view5 = _textInput;
    textInputView8 = [view5 textInputView];
    view4 = [gestureCopy view];
    [textInputView8 convertPoint:view4 fromView:{v12, v14}];
    v49 = v48;
    v51 = v50;

    [view5 updateCurrentSelectionTo:14 fromGesture:objc_msgSend(gestureCopy inState:{"state"), v49, v51}];
  }

  else
  {
    [_textInput conformsToProtocolCached:&unk_1F016C7B0];
    view5 = [assistantDelegate view];
    textInputView9 = [_textInput textInputView];
    view6 = [gestureCopy view];
    [textInputView9 convertPoint:view6 fromView:{v12, v14}];
    [view5 changeSelectionWithGestureAt:14 withGesture:objc_msgSend(gestureCopy withState:{"state"), v54, v55}];
  }

LABEL_12:
}

uint64_t __58__UITextPhraseBoundaryInteraction__phraseBoundaryGesture___block_invoke(id *a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[4];
    v7 = [a1[5] start];
    v8 = [a1[4] selectedTextRange];
    v9 = [v8 start];
    v10 = [v6 offsetFromPosition:v7 toPosition:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1[4] textRangeFromPosition:v5 toPosition:v5];
  [a1[4] setSelectedTextRange:v11];

  v12 = a1[4];
  v13 = [a1[5] start];
  v14 = [v12 offsetFromPosition:v13 toPosition:v5];

  if (v14 == v10)
  {
    v15 = a2 ^ 1u;
  }

  else
  {
    v15 = 1;
  }

  if (v15 == 1)
  {
    [a1[6] didChangePhraseBoundary];
  }

  return v15;
}

- (id)closestPositionToPoint:(CGPoint)point translation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  v6 = point.y;
  v7 = point.x;
  _textInput = [(UITextInteraction *)self _textInput];
  markedTextRange = [_textInput markedTextRange];
  v11 = [_textInput closestPositionToPoint:markedTextRange withinRange:{v7, v6}];
  [_textInput caretRectForPosition:v11];
  UIDistanceBetweenPointAndRect(v7, v6, v12, v13, v14, v15);
  v17 = v16;
  [(UITextPhraseBoundaryInteraction *)self touchAlignedPointForPoint:v7 translation:v6, x, y];
  v19 = v18;
  v21 = v20;
  v22 = [_textInput closestPositionToPoint:markedTextRange withinRange:?];
  [_textInput caretRectForPosition:v22];
  UIDistanceBetweenPointAndRect(v19, v21, v23, v24, v25, v26);
  if (v17 >= v27)
  {
    v28 = v22;
  }

  else
  {
    v28 = v11;
  }

  v29 = v28;

  return v28;
}

@end
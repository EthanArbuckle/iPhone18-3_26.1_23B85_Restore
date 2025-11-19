@interface UITextPhraseBoundaryInteraction
- (CGPoint)pointIfPlacedCarefully:(CGPoint)result;
- (CGPoint)touchAlignedPointForPoint:(CGPoint)result translation:(CGPoint)a4;
- (UITextPhraseBoundaryInteraction)initWithTextInput:(id)a3;
- (id)_phraseBoundaryGestureRecognizer;
- (id)closestPositionToPoint:(CGPoint)a3 translation:(CGPoint)a4;
- (void)_createGestureTuningIfNecessary;
- (void)_phraseBoundaryGesture:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)updateVisibilityOffsetForGesture:(id)a3;
@end

@implementation UITextPhraseBoundaryInteraction

- (UITextPhraseBoundaryInteraction)initWithTextInput:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITextPhraseBoundaryInteraction;
  v5 = [(UITextInteraction *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(UITextInteraction *)v5 setTextInput:v4];
    v7 = [(UITextPhraseBoundaryInteraction *)v6 _phraseBoundaryGestureRecognizer];
    [(UITextInteraction *)v6 addGestureRecognizer:v7 withName:0x1EFBA7710];
  }

  return v6;
}

- (void)didMoveToView:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITextPhraseBoundaryInteraction;
  v4 = a3;
  [(UITextInteraction *)&v5 didMoveToView:v4];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:v4, v5.receiver, v5.super_class];
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

- (CGPoint)touchAlignedPointForPoint:(CGPoint)result translation:(CGPoint)a4
{
  gestureTuning = self->_gestureTuning;
  if (gestureTuning)
  {
    [(UITextGestureTuning *)gestureTuning touchAlignedPointForPoint:result.x translation:result.y, a4.x, a4.y];
  }

  return result;
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

      v9 = self->_gestureTuning;

      [(UITextGestureTuning *)v9 setShouldUseLineThreshold:1];
    }
  }
}

- (void)updateVisibilityOffsetForGesture:(id)a3
{
  v4 = a3;
  [(UITextPhraseBoundaryInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;
  v7 = [v4 _allActiveTouches];
  v6 = [v4 state];

  [(UITextGestureTuning *)gestureTuning updateWithTouches:v7 gestureState:v6];
}

- (id)_phraseBoundaryGestureRecognizer
{
  v3 = [[UIPhraseBoundaryGestureRecognizer alloc] initWithTarget:self action:sel__phraseBoundaryGesture_];
  v4 = [(UITextInteraction *)self textInput];
  [(UIPhraseBoundaryGestureRecognizer *)v3 setTextInput:v4];

  [(UILongPressGestureRecognizer *)v3 setDelay:0.0];
  [(UIPhraseBoundaryGestureRecognizer *)v3 setSecondDelay:0.2];
  [(UILongPressGestureRecognizer *)v3 setNumberOfTouchesRequired:1];
  [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];
  [(UILongPressGestureRecognizer *)v3 setAllowableMovement:1.79769313e308];

  return v3;
}

- (void)_phraseBoundaryGesture:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteraction *)self _textInput];
  v6 = [(UITextInteraction *)self assistantDelegate];
  [(UITextPhraseBoundaryInteraction *)self updateVisibilityOffsetForGesture:v4];
  v7 = +[UIKeyboardImpl activeInstance];
  if (([v5 isFirstResponder] & 1) == 0)
  {
    v10 = [v7 inputDelegate];
    v8 = v5 != v10;

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = [v6 useGesturesForEditableContent] ^ 1;
LABEL_6:
  if (((v8 | v9) & 1) != 0 || ([v5 _hasMarkedText] & 1) == 0)
  {
    NSLog(&cfstr_WarningPhraseB_0.isa);
    [(UITextInteraction *)self setInGesture:0];
    [v6 setGestureRecognizers];
    goto LABEL_12;
  }

  if (![v5 _usesAsynchronousProtocol])
  {
    v16 = [v4 userData];
    v17 = [v5 markedTextRange];
    aBlock = MEMORY[0x1E69E9820];
    v101 = 3221225472;
    v102 = __58__UITextPhraseBoundaryInteraction__phraseBoundaryGesture___block_invoke;
    v103 = &unk_1E7125360;
    v18 = v5;
    v104 = v18;
    v98 = v17;
    v105 = v98;
    v106 = v7;
    v19 = _Block_copy(&aBlock);
    v20 = [v4 state];
    if ((v20 - 3) < 2)
    {
      v56 = [v18 textInputView];
      [v4 centroid];
      v58 = v57;
      v60 = v59;
      v61 = [v4 view];
      [v56 convertPoint:v61 fromView:{v58, v60}];
      v63 = v62;
      v65 = v64;

      v66 = [v18 textInputView];
      [v4 _translationInView:v66];
      v68 = v67;
      v70 = v69;

      v34 = [(UITextPhraseBoundaryInteraction *)self closestPositionToPoint:v63 translation:v65, v68, v70];
      [v18 caretRectForPosition:v34];
      v72 = v71;
      v74 = v73;
      v19[2](v19, 1, v34);
      if (v16)
      {
        [v16 setMagnificationPoint:{v72, v74}];
        [v16 stopMagnifying:1];
        [v4 setUserData:0];
      }

      [(UITextCursorAssertion *)self->_blinkAssertion invalidate:v98];
      blinkAssertion = self->_blinkAssertion;
      self->_blinkAssertion = 0;

      v76 = [v18 inputDelegate];
      [v76 selectionDidChange:v18];

      [v6 cancelAutoscroll];
      [(UITextInteraction *)self setInGesture:0];
    }

    else
    {
      if (v20 != 2)
      {
        if (v20 != 1)
        {
          v33 = v98;
LABEL_35:

          goto LABEL_12;
        }

        [(UITextInteraction *)self setInGesture:1];
        v21 = [v18 inputDelegate];
        [v21 selectionWillChange:v18];

        v22 = [v18 textInputView];
        [v4 centroid];
        v24 = v23;
        v26 = v25;
        v27 = [v4 view];
        [v22 convertPoint:v27 fromView:{v24, v26}];
        v29 = v28;
        v31 = v30;

        v32 = v18;
        v33 = v98;
        v34 = [v32 closestPositionToPoint:v98 withinRange:{v29, v31}];
        v19[2](v19, 0, v34);
        v35 = [(UITextInteraction *)self _assertionController];
        v36 = [v35 nonBlinkingAssertionWithReason:@"Phrase Boundary gesture"];
        v37 = self->_blinkAssertion;
        self->_blinkAssertion = v36;

LABEL_34:
        goto LABEL_35;
      }

      v77 = [v18 textInputView];
      [v4 centroid];
      v79 = v78;
      v81 = v80;
      v82 = [v4 view];
      [v77 convertPoint:v82 fromView:{v79, v81}];
      v84 = v83;
      v86 = v85;

      v87 = [v18 textInputView];
      [v4 _translationInView:v87];
      v89 = v88;
      v91 = v90;

      v34 = [(UITextPhraseBoundaryInteraction *)self closestPositionToPoint:v84 translation:v86, v89, v91];
      [v18 caretRectForPosition:v34];
      v93 = v92;
      v95 = v94;
      v96 = (v19[2])(v19, 1, v34);
      if (v16)
      {
        [v16 setMagnificationPoint:{v93, v95}];
      }

      else if (v96 & 1) != 0 || ([v4 secondDelayElapsed])
      {
        v16 = [UITextMagnifierRanged sharedRangedMagnifier:v98];
        [v4 setUserData:v16];
        v97 = [v18 textInputView];
        [v16 beginMagnifyingTarget:v97 text:v18 magnificationPoint:1 offset:v93 animated:{v95, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }

      else
      {
        v16 = 0;
      }

      [v6 startAutoscroll:{v93, v95, v98}];
    }

    v33 = v99;
    goto LABEL_34;
  }

  [v4 centroid];
  v12 = v11;
  v14 = v13;
  if ([v4 state] == 1)
  {
    v15 = [v5 inputDelegate];
    [v15 selectionWillChange:v5];
  }

  else
  {
    v38 = [v5 textInputView];
    [v4 _translationInView:v38];
    v40 = v39;
    v42 = v41;

    [(UITextPhraseBoundaryInteraction *)self touchAlignedPointForPoint:v12 translation:v14, v40, v42];
    v12 = v43;
    v14 = v44;
  }

  if ([v5 conformsToProtocolCached:&unk_1F016C810])
  {
    v45 = v5;
    v46 = [v45 textInputView];
    v47 = [v4 view];
    [v46 convertPoint:v47 fromView:{v12, v14}];
    v49 = v48;
    v51 = v50;

    [v45 updateCurrentSelectionTo:14 fromGesture:objc_msgSend(v4 inState:{"state"), v49, v51}];
  }

  else
  {
    [v5 conformsToProtocolCached:&unk_1F016C7B0];
    v45 = [v6 view];
    v52 = [v5 textInputView];
    v53 = [v4 view];
    [v52 convertPoint:v53 fromView:{v12, v14}];
    [v45 changeSelectionWithGestureAt:14 withGesture:objc_msgSend(v4 withState:{"state"), v54, v55}];
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

- (id)closestPositionToPoint:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(UITextInteraction *)self _textInput];
  v10 = [v9 markedTextRange];
  v11 = [v9 closestPositionToPoint:v10 withinRange:{v7, v6}];
  [v9 caretRectForPosition:v11];
  UIDistanceBetweenPointAndRect(v7, v6, v12, v13, v14, v15);
  v17 = v16;
  [(UITextPhraseBoundaryInteraction *)self touchAlignedPointForPoint:v7 translation:v6, x, y];
  v19 = v18;
  v21 = v20;
  v22 = [v9 closestPositionToPoint:v10 withinRange:?];
  [v9 caretRectForPosition:v22];
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
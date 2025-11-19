@interface UITextRefinementInteraction
- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)a3 forGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)translationIsWithinAllowableMovement:(CGPoint)a3;
- (CGPoint)pointIfPlacedCarefully:(CGPoint)result;
- (CGPoint)touchAlignedPointForPoint:(CGPoint)a3 translation:(CGPoint)a4;
- (UITextRefinementInteraction)initWithBehaviorDelegate:(id)a3;
- (void)_createGestureTuningIfNecessary;
- (void)_performGestureType:(int64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 forTouchType:(int64_t)a7;
- (void)_processGestureForCustomHighlighter:(id)a3;
- (void)canBeginDragCursor:(id)a3;
- (void)cancelDelayedLoupeActionIfNecessary;
- (void)delayedDisplayLoupe:(id)a3;
- (void)delayedLoupeAction:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)finishSetup;
- (void)loupeGesture:(id)a3;
- (void)loupeGestureWithState:(int64_t)a3 location:(id)a4 translation:(id)a5 velocity:(id)a6 modifierFlags:(int64_t)a7 shouldCancel:(BOOL *)a8;
- (void)setShouldUseLineThreshold:(BOOL)a3;
- (void)setStrongerBiasAgainstUp:(BOOL)a3;
- (void)setupDelayedLoupeActionWithInitialPoint:(CGPoint)a3;
- (void)setupGestureExclusionRequirements;
- (void)updateInitialPoint:(CGPoint)a3;
- (void)updateOrCancelDelayedLoupeActionWithPoint:(CGPoint)a3 translation:(CGPoint)a4;
- (void)updateVisibilityOffsetForGesture:(id)a3;
- (void)willBeginExternalGesture;
- (void)willMoveToView:(id)a3;
@end

@implementation UITextRefinementInteraction

- (void)finishSetup
{
  v7.receiver = self;
  v7.super_class = UITextRefinementInteraction;
  [(UITextInteraction *)&v7 finishSetup];
  v3 = [(UITextRefinementInteraction *)self behaviorDelegate];
  [v3 adjustVariableDelaySettingsForLoupeInteraction:self];

  [(UITextRefinementInteraction *)self setupGestureExclusionRequirements];
  v4 = [(UITextInteraction *)self _textInput];
  v5 = [_UITextLoupeResponderProxy _proxyWithResponder:v4];
  [(UITextRefinementInteraction *)self setResponderProxy:v5];

  v6 = [(UITextRefinementInteraction *)self responderProxy];
  [v6 setDelegate:self];
}

- (void)setupGestureExclusionRequirements
{
  v3 = [(UITextRefinementInteraction *)self behaviorDelegate];
  [v3 configureGestureExclusionRequirementsForTextLoupeInteraction:self];
}

- (UITextRefinementInteraction)initWithBehaviorDelegate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = UITextRefinementInteraction;
  v6 = [(UITextInteraction *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_behaviorDelegate, a3);
    v8 = [objc_alloc(objc_msgSend(v5 gestureRecognizerClassForLoupeInteraction:{v7)), "initWithTarget:action:", v7, sel_loupeGesture_}];
    [v5 configureLoupeGestureRecognizer:v8 forTextLoupeInteraction:v7];
  }

  return v7;
}

- (void)willMoveToView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITextRefinementInteraction;
  [(UITextInteraction *)&v6 willMoveToView:a3];
  [(UIDelayedAction *)self->_delayedLoupeAction cancel];
  delayedLoupeAction = self->_delayedLoupeAction;
  self->_delayedLoupeAction = 0;

  [(UIDelayedAction *)self->_delayedSelectionAction cancel];
  delayedSelectionAction = self->_delayedSelectionAction;
  self->_delayedSelectionAction = 0;
}

- (void)didMoveToView:(id)a3
{
  v6.receiver = self;
  v6.super_class = UITextRefinementInteraction;
  v4 = a3;
  [(UITextInteraction *)&v6 didMoveToView:v4];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:v4, v6.receiver, v6.super_class];

  v5 = [(UITextRefinementInteraction *)self behaviorDelegate];
  [v5 adjustVariableDelaySettingsForLoupeInteraction:self];

  self->_inheritedGranularity = -1;
}

- (void)updateInitialPoint:(CGPoint)a3
{
  self->_hasPerformedInteraction = 1;
  self->_initialPointFromPreviousInteraction = a3;
  [(UITextGestureTuning *)self->_gestureTuning setStrongerBiasAgainstUp:1];
}

- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)a3 forGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextRefinementInteraction *)self behaviorDelegate];
  v9 = [v8 shouldAllowEnforcedTouchTypeForTouch:v7 forGestureRecognizer:v6];

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = UITextRefinementInteraction;
  if ([(UITextInteraction *)&v15 gestureRecognizer:v6 shouldRecognizeSimultaneouslyWithGestureRecognizer:v7])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(UITextInteraction *)self recognizerForName:0x1EFBA76B0];

    if (v9 != v6)
    {
      goto LABEL_4;
    }

    if (![(UITextInteraction *)self inGesture])
    {
      v8 = [v7 _isGestureType:0];
      goto LABEL_9;
    }

    v10 = [v7 view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [v7 view];
      v13 = [v12 panGestureRecognizer];
      v8 = v13 == v7;
    }

    else
    {
LABEL_4:
      v8 = 0;
    }
  }

LABEL_9:

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA76B0];

  v9 = 0;
  if (v8 == v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA76B0];

  if (v8 != v7)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = [v6 _isGestureType:10];

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = 1;
LABEL_6:

  return v10;
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UITextRefinementInteraction *)self behaviorDelegate];
  LOBYTE(self) = [v5 loupeGestureRecognizerShouldBegin:v4 forTextLoupeInteraction:self];

  return self;
}

- (void)loupeGesture:(id)a3
{
  v4 = a3;
  v25 = 0;
  [(UITextRefinementInteraction *)self updateVisibilityOffsetForGesture:v4];
  v5 = [(UITextInteraction *)self root];
  v6 = [v5 delegate];

  if ((objc_opt_respondsToSelector() & 1) == 0 || ((v7 = [v4 modifierFlags], objc_msgSend(v4, "_activeEventOfType:", 0), v8 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v8, "_containsHIDPointerEvent")) ? (v9 = 0) : (v9 = 3), v10 = objc_msgSend(v6, "_shouldBeginCustomHighlighterActionForTouchType:modifierFlags:", v9, v7), v8, v10)) && (-[UITextInteraction root](self, "root"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, v11, (v13))
  {
    [(UITextRefinementInteraction *)self _processGestureForCustomHighlighter:v4];
  }

  else
  {
    v14 = [(UITextRefinementInteraction *)self behaviorDelegate];
    -[UITextRefinementInteraction setTriggeredByLongPress:](self, "setTriggeredByLongPress:", [v14 triggeredByLongPressGesture:v4]);

    v15 = [v4 state];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __44__UITextRefinementInteraction_loupeGesture___block_invoke;
    v22[3] = &unk_1E7109020;
    v23 = v4;
    v24 = self;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __44__UITextRefinementInteraction_loupeGesture___block_invoke_2;
    v20[3] = &unk_1E7109020;
    v20[4] = self;
    v21 = v23;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__UITextRefinementInteraction_loupeGesture___block_invoke_3;
    v18[3] = &unk_1E7109020;
    v18[4] = self;
    v16 = v21;
    v19 = v16;
    [(UITextRefinementInteraction *)self loupeGestureWithState:v15 location:v22 translation:v20 velocity:v18 modifierFlags:0 shouldCancel:&v25];
    if (v25 == 1)
    {
      [(UIGestureRecognizer *)v16 _cancelRecognition];
    }
  }
}

double __44__UITextRefinementInteraction_loupeGesture___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state] == 1)
  {
    v2 = [*(a1 + 40) behaviorDelegate];
    [v2 startPointForLoupeGesture:*(a1 + 32)];
    v4 = v3;
    v6 = v5;

    v7 = [*(a1 + 32) view];
    v8 = [*(a1 + 40) _textInput];
    v9 = [v8 textInputView];
    [v7 convertPoint:v9 toView:{v4, v6}];
    v11 = v10;
  }

  else
  {
    v12 = *(a1 + 32);
    v7 = [*(a1 + 40) _textInput];
    v8 = [v7 textInputView];
    [v12 locationInView:v8];
    v11 = v13;
  }

  return v11;
}

double __44__UITextRefinementInteraction_loupeGesture___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) behaviorDelegate];
  v3 = [*(a1 + 32) _textInput];
  v4 = [v3 textInputView];
  [v2 translationInView:v4 forLoupeGesture:*(a1 + 40)];
  v6 = v5;

  return v6;
}

double __44__UITextRefinementInteraction_loupeGesture___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) behaviorDelegate];
  v3 = [*(a1 + 32) _textInput];
  v4 = [v3 textInputView];
  [v2 velocityInView:v4 forLoupeGesture:*(a1 + 40)];
  v6 = v5;

  return v6;
}

- (void)_processGestureForCustomHighlighter:(id)a3
{
  v31 = a3;
  v4 = [(UITextInteraction *)self _textInput];
  v5 = [v4 textInputView];
  [v31 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(UITextRefinementInteraction *)self behaviorDelegate];
  v11 = [(UITextInteraction *)self _textInput];
  v12 = [v11 textInputView];
  [v10 translationInView:v12 forLoupeGesture:v31];
  v14 = v13;
  v16 = v15;

  v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v18 = [v17 preferencesActions];
  LODWORD(v12) = [v18 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v12)
  {
    if ([v31 state] == 1)
    {
      [(UITextRefinementInteraction *)self updateInitialPoint:v7, v9];
      v19 = [(UITextInteraction *)self root];
      [v19 _playFeedbackForCursorMovement];
LABEL_4:

      goto LABEL_10;
    }

    if ([v31 state] != 2)
    {
      if ([v31 state] != 3 && objc_msgSend(v31, "state") != 4)
      {
        goto LABEL_10;
      }

      [(UITextRefinementInteraction *)self pointIfPlacedCarefully:v7, v9];
      [UITextRefinementInteraction touchAlignedPointForPoint:"touchAlignedPointForPoint:translation:" translation:?];
      v7 = v22;
      v9 = v23;
      v24 = _UIGetTextRefinement_AllowableMovement();
      v25 = [(UITextInteraction *)self _textInput];
      v26 = [v25 isEditable];

      if (v26)
      {
        goto LABEL_10;
      }

      v29 = [(UITextInteraction *)self assistantDelegate];
      v19 = v29;
      if (v14 * v14 + v16 * v16 <= v24 * v24)
      {
        v30 = [v29 _editMenuAssistant];
        [v30 showSelectionCommands];
      }

      [v19 setNeedsSelectionDisplayUpdate];
      goto LABEL_4;
    }

    [(UITextRefinementInteraction *)self touchAlignedPointForPoint:v7 translation:v9, v14, v16];
    v7 = v20;
    v9 = v21;
  }

LABEL_10:
  v27 = [(UITextInteraction *)self root];
  v28 = [v27 delegate];
  [v28 _performHighlighterActionWithGestureState:objc_msgSend(v31 location:{"state"), v7, v9}];
}

- (void)loupeGestureWithState:(int64_t)a3 location:(id)a4 translation:(id)a5 velocity:(id)a6 modifierFlags:(int64_t)a7 shouldCancel:(BOOL *)a8
{
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [(UITextRefinementInteraction *)self behaviorDelegate];
  [v17 textLoupeInteraction:self gestureChangedWithState:a3 location:v16 translation:v15 velocity:v14 modifierFlags:a7 shouldCancel:a8];
}

- (void)willBeginExternalGesture
{
  gestureTuning = self->_gestureTuning;
  self->_gestureTuning = 0;
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

- (void)setShouldUseLineThreshold:(BOOL)a3
{
  v3 = a3;
  [(UITextRefinementInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;

  [(UITextGestureTuning *)gestureTuning setShouldUseLineThreshold:v3];
}

- (void)setStrongerBiasAgainstUp:(BOOL)a3
{
  v3 = a3;
  [(UITextRefinementInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;

  [(UITextGestureTuning *)gestureTuning setStrongerBiasAgainstUp:v3];
}

- (void)updateVisibilityOffsetForGesture:(id)a3
{
  v4 = a3;
  [(UITextRefinementInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;
  v7 = [v4 _allActiveTouches];
  v6 = [v4 state];

  [(UITextGestureTuning *)gestureTuning updateWithTouches:v7 gestureState:v6];
}

- (CGPoint)touchAlignedPointForPoint:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_gestureTuning)
  {
    v6 = a4.y;
    v7 = a4.x;
    v9 = [(UITextRefinementInteraction *)self behaviorDelegate];
    v10 = [v9 usesTouchAlignment];

    if (v10)
    {
      [(UITextGestureTuning *)self->_gestureTuning touchAlignedPointForPoint:x translation:y, v7, v6];
      x = v11;
      y = v12;
    }
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setupDelayedLoupeActionWithInitialPoint:(CGPoint)a3
{
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{a3.x, a3.y}];
  delayedLoupeAction = self->_delayedLoupeAction;
  v11 = v4;
  if (!delayedLoupeAction)
  {
    v6 = [[UIDelayedAction alloc] initWithTarget:self action:sel_delayedLoupeAction_ userInfo:0 delay:0.0];
    v7 = self->_delayedLoupeAction;
    self->_delayedLoupeAction = v6;

    v4 = v11;
    delayedLoupeAction = self->_delayedLoupeAction;
  }

  [(UIDelayedAction *)delayedLoupeAction setUserInfo:v4];
  [(UIDelayedAction *)self->_delayedLoupeAction touch];
  delayedSelectionAction = self->_delayedSelectionAction;
  if (!delayedSelectionAction)
  {
    v9 = [[UIDelayedAction alloc] initWithTarget:self action:sel_delayedSelectionAction_ userInfo:0 delay:0.5];
    v10 = self->_delayedSelectionAction;
    self->_delayedSelectionAction = v9;

    delayedSelectionAction = self->_delayedSelectionAction;
  }

  [(UIDelayedAction *)delayedSelectionAction setUserInfo:v11];
  [(UIDelayedAction *)self->_delayedSelectionAction touch];
}

- (BOOL)translationIsWithinAllowableMovement:(CGPoint)a3
{
  v3 = a3.x * a3.x + a3.y * a3.y;
  v4 = _UIGetTextRefinement_AllowableMovement();
  return v3 < v4 * v4;
}

- (void)updateOrCancelDelayedLoupeActionWithPoint:(CGPoint)a3 translation:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(UITextRefinementInteraction *)self translationIsWithinAllowableMovement:a4.x, a4.y];
  if (self->_delayedLoupeAction)
  {
    v8 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [(UIDelayedAction *)self->_delayedLoupeAction setUserInfo:v8];

    if (!v7)
    {
      if ([(UIDelayedAction *)self->_delayedLoupeAction scheduled])
      {
        if ([(UITextGestureTuning *)self->_gestureTuning shouldUseLineThreshold])
        {
          v9 = [(UITextInteraction *)self assistantDelegate];
          [v9 willBeginFloatingCursor:0];
          [v9 beginFloatingCursorAtPoint:{x, y}];
        }

        [(UIDelayedAction *)self->_delayedLoupeAction cancel];
        v10 = +[UITextMagnifierCaret sharedCaretMagnifier];
        v11 = [(UITextInteraction *)self _textInput];
        v12 = [v11 textInputView];
        [v10 beginMagnifyingTarget:v12 text:v11 magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      }
    }
  }

  if (self->_delayedSelectionAction)
  {
    v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
    [(UIDelayedAction *)self->_delayedSelectionAction setUserInfo:v13];

    if (!v7)
    {
      if ([(UIDelayedAction *)self->_delayedSelectionAction scheduled])
      {
        delayedSelectionAction = self->_delayedSelectionAction;

        [(UIDelayedAction *)delayedSelectionAction cancel];
      }
    }
  }
}

- (void)cancelDelayedLoupeActionIfNecessary
{
  delayedLoupeAction = self->_delayedLoupeAction;
  if (delayedLoupeAction)
  {
    [(UIDelayedAction *)delayedLoupeAction cancel];
  }

  delayedSelectionAction = self->_delayedSelectionAction;
  if (delayedSelectionAction)
  {

    [(UIDelayedAction *)delayedSelectionAction cancel];
  }
}

- (void)delayedLoupeAction:(id)a3
{
  v5 = a3;
  if ([(UITextGestureTuning *)self->_gestureTuning shouldUseLineThreshold])
  {
    v4 = [(UITextInteraction *)self assistantDelegate];
    [v4 willBeginFloatingCursor:0];
    [v5 CGPointValue];
    [v4 beginFloatingCursorAtPoint:?];
  }
}

- (void)delayedDisplayLoupe:(id)a3
{
  [a3 CGPointValue];
  v5 = v4;
  v7 = v6;
  v10 = +[UITextMagnifierCaret sharedCaretMagnifier];
  v8 = [(UITextInteraction *)self _textInput];
  v9 = [v8 textInputView];
  [v10 beginMagnifyingTarget:v9 text:v8 magnificationPoint:1 offset:v5 animated:{v7, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)canBeginDragCursor:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteraction *)self assistantDelegate];
  [v5 canBeginDragCursor:v4];
}

- (void)_performGestureType:(int64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 forTouchType:(int64_t)a7
{
  y = a5.y;
  x = a5.x;
  if (a3 == 4)
  {
    v11 = a6.y;
    v12 = a6.x;
    v13 = [(UITextInteraction *)self assistantDelegate];
    [v13 lollipopGestureWithState:a4 location:a7 locationOfFirstTouch:x forTouchType:{y, v12, v11}];
  }

  else if (a3 == 3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__UITextRefinementInteraction__performGestureType_state_location_locationOfFirstTouch_forTouchType___block_invoke;
    v14[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
    v15 = a5;
    [(UITextRefinementInteraction *)self loupeGestureWithState:a4 location:v14 translation:&__block_literal_global_602 velocity:&__block_literal_global_47_5 modifierFlags:0 shouldCancel:0];
  }
}

@end
@interface UITextRefinementInteraction
- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)touch forGestureRecognizer:(id)recognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin;
- (BOOL)translationIsWithinAllowableMovement:(CGPoint)movement;
- (CGPoint)pointIfPlacedCarefully:(CGPoint)result;
- (CGPoint)touchAlignedPointForPoint:(CGPoint)point translation:(CGPoint)translation;
- (UITextRefinementInteraction)initWithBehaviorDelegate:(id)delegate;
- (void)_createGestureTuningIfNecessary;
- (void)_performGestureType:(int64_t)type state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)touchType;
- (void)_processGestureForCustomHighlighter:(id)highlighter;
- (void)canBeginDragCursor:(id)cursor;
- (void)cancelDelayedLoupeActionIfNecessary;
- (void)delayedDisplayLoupe:(id)loupe;
- (void)delayedLoupeAction:(id)action;
- (void)didMoveToView:(id)view;
- (void)finishSetup;
- (void)loupeGesture:(id)gesture;
- (void)loupeGestureWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel;
- (void)setShouldUseLineThreshold:(BOOL)threshold;
- (void)setStrongerBiasAgainstUp:(BOOL)up;
- (void)setupDelayedLoupeActionWithInitialPoint:(CGPoint)point;
- (void)setupGestureExclusionRequirements;
- (void)updateInitialPoint:(CGPoint)point;
- (void)updateOrCancelDelayedLoupeActionWithPoint:(CGPoint)point translation:(CGPoint)translation;
- (void)updateVisibilityOffsetForGesture:(id)gesture;
- (void)willBeginExternalGesture;
- (void)willMoveToView:(id)view;
@end

@implementation UITextRefinementInteraction

- (void)finishSetup
{
  v7.receiver = self;
  v7.super_class = UITextRefinementInteraction;
  [(UITextInteraction *)&v7 finishSetup];
  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  [behaviorDelegate adjustVariableDelaySettingsForLoupeInteraction:self];

  [(UITextRefinementInteraction *)self setupGestureExclusionRequirements];
  _textInput = [(UITextInteraction *)self _textInput];
  v5 = [_UITextLoupeResponderProxy _proxyWithResponder:_textInput];
  [(UITextRefinementInteraction *)self setResponderProxy:v5];

  responderProxy = [(UITextRefinementInteraction *)self responderProxy];
  [responderProxy setDelegate:self];
}

- (void)setupGestureExclusionRequirements
{
  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  [behaviorDelegate configureGestureExclusionRequirementsForTextLoupeInteraction:self];
}

- (UITextRefinementInteraction)initWithBehaviorDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = UITextRefinementInteraction;
  v6 = [(UITextInteraction *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_behaviorDelegate, delegate);
    v8 = [objc_alloc(objc_msgSend(delegateCopy gestureRecognizerClassForLoupeInteraction:{v7)), "initWithTarget:action:", v7, sel_loupeGesture_}];
    [delegateCopy configureLoupeGestureRecognizer:v8 forTextLoupeInteraction:v7];
  }

  return v7;
}

- (void)willMoveToView:(id)view
{
  v6.receiver = self;
  v6.super_class = UITextRefinementInteraction;
  [(UITextInteraction *)&v6 willMoveToView:view];
  [(UIDelayedAction *)self->_delayedLoupeAction cancel];
  delayedLoupeAction = self->_delayedLoupeAction;
  self->_delayedLoupeAction = 0;

  [(UIDelayedAction *)self->_delayedSelectionAction cancel];
  delayedSelectionAction = self->_delayedSelectionAction;
  self->_delayedSelectionAction = 0;
}

- (void)didMoveToView:(id)view
{
  v6.receiver = self;
  v6.super_class = UITextRefinementInteraction;
  viewCopy = view;
  [(UITextInteraction *)&v6 didMoveToView:viewCopy];
  [(UITextGestureTuning *)self->_gestureTuning setContainerCoordinateSpace:viewCopy, v6.receiver, v6.super_class];

  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  [behaviorDelegate adjustVariableDelaySettingsForLoupeInteraction:self];

  self->_inheritedGranularity = -1;
}

- (void)updateInitialPoint:(CGPoint)point
{
  self->_hasPerformedInteraction = 1;
  self->_initialPointFromPreviousInteraction = point;
  [(UITextGestureTuning *)self->_gestureTuning setStrongerBiasAgainstUp:1];
}

- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)touch forGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  v9 = [behaviorDelegate shouldAllowEnforcedTouchTypeForTouch:touchCopy forGestureRecognizer:recognizerCopy];

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v15.receiver = self;
  v15.super_class = UITextRefinementInteraction;
  if ([(UITextInteraction *)&v15 gestureRecognizer:recognizerCopy shouldRecognizeSimultaneouslyWithGestureRecognizer:gestureRecognizerCopy])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(UITextInteraction *)self recognizerForName:0x1EFBA76B0];

    if (v9 != recognizerCopy)
    {
      goto LABEL_4;
    }

    if (![(UITextInteraction *)self inGesture])
    {
      v8 = [gestureRecognizerCopy _isGestureType:0];
      goto LABEL_9;
    }

    view = [gestureRecognizerCopy view];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      view2 = [gestureRecognizerCopy view];
      panGestureRecognizer = [view2 panGestureRecognizer];
      v8 = panGestureRecognizer == gestureRecognizerCopy;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA76B0];

  v9 = 0;
  if (v8 == recognizerCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = 1;
    }
  }

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA76B0];

  if (v8 != recognizerCopy)
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = [gestureRecognizerCopy _isGestureType:10];

  if ((v9 & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = 1;
LABEL_6:

  return v10;
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  LOBYTE(self) = [behaviorDelegate loupeGestureRecognizerShouldBegin:beginCopy forTextLoupeInteraction:self];

  return self;
}

- (void)loupeGesture:(id)gesture
{
  gestureCopy = gesture;
  v25 = 0;
  [(UITextRefinementInteraction *)self updateVisibilityOffsetForGesture:gestureCopy];
  root = [(UITextInteraction *)self root];
  delegate = [root delegate];

  if ((objc_opt_respondsToSelector() & 1) == 0 || ((v7 = [gestureCopy modifierFlags], objc_msgSend(gestureCopy, "_activeEventOfType:", 0), v8 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v8, "_containsHIDPointerEvent")) ? (v9 = 0) : (v9 = 3), v10 = objc_msgSend(delegate, "_shouldBeginCustomHighlighterActionForTouchType:modifierFlags:", v9, v7), v8, v10)) && (-[UITextInteraction root](self, "root"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, v11, (v13))
  {
    [(UITextRefinementInteraction *)self _processGestureForCustomHighlighter:gestureCopy];
  }

  else
  {
    behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
    -[UITextRefinementInteraction setTriggeredByLongPress:](self, "setTriggeredByLongPress:", [behaviorDelegate triggeredByLongPressGesture:gestureCopy]);

    state = [gestureCopy state];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __44__UITextRefinementInteraction_loupeGesture___block_invoke;
    v22[3] = &unk_1E7109020;
    v23 = gestureCopy;
    selfCopy = self;
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
    [(UITextRefinementInteraction *)self loupeGestureWithState:state location:v22 translation:v20 velocity:v18 modifierFlags:0 shouldCancel:&v25];
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

- (void)_processGestureForCustomHighlighter:(id)highlighter
{
  highlighterCopy = highlighter;
  _textInput = [(UITextInteraction *)self _textInput];
  textInputView = [_textInput textInputView];
  [highlighterCopy locationInView:textInputView];
  v7 = v6;
  v9 = v8;

  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  _textInput2 = [(UITextInteraction *)self _textInput];
  textInputView2 = [_textInput2 textInputView];
  [behaviorDelegate translationInView:textInputView2 forLoupeGesture:highlighterCopy];
  v14 = v13;
  v16 = v15;

  v17 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v17 preferencesActions];
  LODWORD(textInputView2) = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (textInputView2)
  {
    if ([highlighterCopy state] == 1)
    {
      [(UITextRefinementInteraction *)self updateInitialPoint:v7, v9];
      root = [(UITextInteraction *)self root];
      [root _playFeedbackForCursorMovement];
LABEL_4:

      goto LABEL_10;
    }

    if ([highlighterCopy state] != 2)
    {
      if ([highlighterCopy state] != 3 && objc_msgSend(highlighterCopy, "state") != 4)
      {
        goto LABEL_10;
      }

      [(UITextRefinementInteraction *)self pointIfPlacedCarefully:v7, v9];
      [UITextRefinementInteraction touchAlignedPointForPoint:"touchAlignedPointForPoint:translation:" translation:?];
      v7 = v22;
      v9 = v23;
      v24 = _UIGetTextRefinement_AllowableMovement();
      _textInput3 = [(UITextInteraction *)self _textInput];
      isEditable = [_textInput3 isEditable];

      if (isEditable)
      {
        goto LABEL_10;
      }

      assistantDelegate = [(UITextInteraction *)self assistantDelegate];
      root = assistantDelegate;
      if (v14 * v14 + v16 * v16 <= v24 * v24)
      {
        _editMenuAssistant = [assistantDelegate _editMenuAssistant];
        [_editMenuAssistant showSelectionCommands];
      }

      [root setNeedsSelectionDisplayUpdate];
      goto LABEL_4;
    }

    [(UITextRefinementInteraction *)self touchAlignedPointForPoint:v7 translation:v9, v14, v16];
    v7 = v20;
    v9 = v21;
  }

LABEL_10:
  root2 = [(UITextInteraction *)self root];
  delegate = [root2 delegate];
  [delegate _performHighlighterActionWithGestureState:objc_msgSend(highlighterCopy location:{"state"), v7, v9}];
}

- (void)loupeGestureWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel
{
  velocityCopy = velocity;
  translationCopy = translation;
  locationCopy = location;
  behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
  [behaviorDelegate textLoupeInteraction:self gestureChangedWithState:state location:locationCopy translation:translationCopy velocity:velocityCopy modifierFlags:flags shouldCancel:cancel];
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

- (void)setShouldUseLineThreshold:(BOOL)threshold
{
  thresholdCopy = threshold;
  [(UITextRefinementInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;

  [(UITextGestureTuning *)gestureTuning setShouldUseLineThreshold:thresholdCopy];
}

- (void)setStrongerBiasAgainstUp:(BOOL)up
{
  upCopy = up;
  [(UITextRefinementInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;

  [(UITextGestureTuning *)gestureTuning setStrongerBiasAgainstUp:upCopy];
}

- (void)updateVisibilityOffsetForGesture:(id)gesture
{
  gestureCopy = gesture;
  [(UITextRefinementInteraction *)self _createGestureTuningIfNecessary];
  gestureTuning = self->_gestureTuning;
  _allActiveTouches = [gestureCopy _allActiveTouches];
  state = [gestureCopy state];

  [(UITextGestureTuning *)gestureTuning updateWithTouches:_allActiveTouches gestureState:state];
}

- (CGPoint)touchAlignedPointForPoint:(CGPoint)point translation:(CGPoint)translation
{
  y = point.y;
  x = point.x;
  if (self->_gestureTuning)
  {
    v6 = translation.y;
    v7 = translation.x;
    behaviorDelegate = [(UITextRefinementInteraction *)self behaviorDelegate];
    usesTouchAlignment = [behaviorDelegate usesTouchAlignment];

    if (usesTouchAlignment)
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

- (void)setupDelayedLoupeActionWithInitialPoint:(CGPoint)point
{
  v4 = [MEMORY[0x1E696B098] valueWithCGPoint:{point.x, point.y}];
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

- (BOOL)translationIsWithinAllowableMovement:(CGPoint)movement
{
  v3 = movement.x * movement.x + movement.y * movement.y;
  v4 = _UIGetTextRefinement_AllowableMovement();
  return v3 < v4 * v4;
}

- (void)updateOrCancelDelayedLoupeActionWithPoint:(CGPoint)point translation:(CGPoint)translation
{
  y = point.y;
  x = point.x;
  v7 = [(UITextRefinementInteraction *)self translationIsWithinAllowableMovement:translation.x, translation.y];
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
          assistantDelegate = [(UITextInteraction *)self assistantDelegate];
          [assistantDelegate willBeginFloatingCursor:0];
          [assistantDelegate beginFloatingCursorAtPoint:{x, y}];
        }

        [(UIDelayedAction *)self->_delayedLoupeAction cancel];
        v10 = +[UITextMagnifierCaret sharedCaretMagnifier];
        _textInput = [(UITextInteraction *)self _textInput];
        textInputView = [_textInput textInputView];
        [v10 beginMagnifyingTarget:textInputView text:_textInput magnificationPoint:1 offset:x animated:{y, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
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

- (void)delayedLoupeAction:(id)action
{
  actionCopy = action;
  if ([(UITextGestureTuning *)self->_gestureTuning shouldUseLineThreshold])
  {
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    [assistantDelegate willBeginFloatingCursor:0];
    [actionCopy CGPointValue];
    [assistantDelegate beginFloatingCursorAtPoint:?];
  }
}

- (void)delayedDisplayLoupe:(id)loupe
{
  [loupe CGPointValue];
  v5 = v4;
  v7 = v6;
  v10 = +[UITextMagnifierCaret sharedCaretMagnifier];
  _textInput = [(UITextInteraction *)self _textInput];
  textInputView = [_textInput textInputView];
  [v10 beginMagnifyingTarget:textInputView text:_textInput magnificationPoint:1 offset:v5 animated:{v7, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

- (void)canBeginDragCursor:(id)cursor
{
  cursorCopy = cursor;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [assistantDelegate canBeginDragCursor:cursorCopy];
}

- (void)_performGestureType:(int64_t)type state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)touchType
{
  y = location.y;
  x = location.x;
  if (type == 4)
  {
    v11 = touch.y;
    v12 = touch.x;
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    [assistantDelegate lollipopGestureWithState:state location:touchType locationOfFirstTouch:x forTouchType:{y, v12, v11}];
  }

  else if (type == 3)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __100__UITextRefinementInteraction__performGestureType_state_location_locationOfFirstTouch_forTouchType___block_invoke;
    v14[3] = &__block_descriptor_48_e16__CGPoint_dd_8__0l;
    locationCopy = location;
    [(UITextRefinementInteraction *)self loupeGestureWithState:state location:v14 translation:&__block_literal_global_602 velocity:&__block_literal_global_47_5 modifierFlags:0 shouldCancel:0];
  }
}

@end
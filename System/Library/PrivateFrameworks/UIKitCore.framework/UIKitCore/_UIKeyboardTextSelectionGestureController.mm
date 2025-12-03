@interface _UIKeyboardTextSelectionGestureController
+ (_UIKeyboardTextSelectionGestureController)sharedInstance;
- (BOOL)shouldAddForceGesture;
- (CGPoint)accumulatedAcceleration;
- (CGPoint)accumulatedBounding;
- (CGPoint)cursorLocationBase;
- (CGPoint)lastPanTranslation;
- (_UIKeyboardTextSelectionGestureController)init;
- (_UIKeyboardTextSelectionGestureControllerDelegate)delegate;
- (id)addDeallocationHandler:(id)handler;
- (id)addLongPressTextSelectionInteractionsToView:(id)view;
- (id)addOneFingerTextSelectionInteractionsToView:(id)view;
- (id)addTwoFingerTextSelectionInteractionsToView:(id)view;
- (id)selectionController;
- (id)textSelectionInteractionForRTIForwarding;
- (void)_cleanupDeadGesturesIfNecessary;
- (void)configureOneFingerForcePressRecognizer:(id)recognizer;
- (void)configureTwoFingerPanGestureRecognizer:(id)recognizer;
- (void)configureTwoFingerTapGestureRecognizer:(id)recognizer;
- (void)dealloc;
- (void)enableEnclosingScrollViewNestedPinching;
- (void)redisableEnclosingScrollViewNestedPinching;
- (void)removeDeallocationHandler:(id)handler;
- (void)setDelegate:(id)delegate;
- (void)willRemoveSelectionController;
@end

@implementation _UIKeyboardTextSelectionGestureController

- (_UIKeyboardTextSelectionGestureController)init
{
  v10.receiver = self;
  v10.super_class = _UIKeyboardTextSelectionGestureController;
  v2 = [(_UIKeyboardTextSelectionGestureController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    activeGestures = v2->_activeGestures;
    v2->_activeGestures = v3;

    v5 = objc_alloc_init(UITextMagnifierTimeWeightedPoint);
    weightedPoint = v2->_weightedPoint;
    v2->_weightedPoint = v5;

    v7 = [[_UIStatesFeedbackGenerator alloc] initWithStyle:0];
    feedbackBehaviour = v2->_feedbackBehaviour;
    v2->_feedbackBehaviour = v7;
  }

  return v2;
}

- (_UIKeyboardTextSelectionGestureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)enableEnclosingScrollViewNestedPinching
{
  delegate = [(_UIKeyboardTextSelectionGestureController *)self delegate];
  textSelectionController = [delegate textSelectionController];

  if (textSelectionController)
  {
    selectionController = [(_UIKeyboardTextSelectionGestureController *)self selectionController];
    textInputView = [selectionController textInputView];
    _scroller = [textInputView _scroller];

    v7 = _scroller;
    if (_scroller)
    {
      pinchGestureRecognizer = [_scroller pinchGestureRecognizer];

      v7 = _scroller;
      if (pinchGestureRecognizer)
      {
        [(_UIKeyboardTextSelectionGestureController *)self setWasNestedPinchingDisabled:1];
        pinchGestureRecognizer2 = [_scroller pinchGestureRecognizer];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && pinchGestureRecognizer2 && (pinchGestureRecognizer2[313] & 1) == 0)
        {
          pinchGestureRecognizer2[313] = 1;
          [(UIScrollViewPinchGestureRecognizer *)pinchGestureRecognizer2 _updateHysteresis];
        }

        v7 = _scroller;
      }
    }
  }
}

- (void)_cleanupDeadGesturesIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  textSelectionController = [WeakRetained textSelectionController];

  if (textSelectionController)
  {
    [(_UIKeyboardTextSelectionGestureController *)self redisableEnclosingScrollViewNestedPinching];
    if ([(_UIKeyboardTextSelectionGestureController *)self didSuppressSelectionGrabbers])
    {
      selectionController = [(_UIKeyboardTextSelectionGestureController *)self selectionController];
      [selectionController setRangedSelectionShouldShowGrabbers:1];

      [(_UIKeyboardTextSelectionGestureController *)self setDidSuppressSelectionGrabbers:0];
    }
  }
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_deallocHandlers copy];
  deallocHandlers = self->_deallocHandlers;
  self->_deallocHandlers = 0;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v16 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(UIDelayedAction *)self->_longForcePressAction cancel];
  longForcePressAction = self->_longForcePressAction;
  self->_longForcePressAction = 0;

  feedbackBehaviour = self->_feedbackBehaviour;
  self->_feedbackBehaviour = 0;

  weightedPoint = self->_weightedPoint;
  self->_weightedPoint = 0;

  activeGestures = self->_activeGestures;
  self->_activeGestures = 0;

  tapLogTimer = self->_tapLogTimer;
  self->_tapLogTimer = 0;

  v15.receiver = self;
  v15.super_class = _UIKeyboardTextSelectionGestureController;
  [(_UIKeyboardTextSelectionGestureController *)&v15 dealloc];
}

+ (_UIKeyboardTextSelectionGestureController)sharedInstance
{
  if (qword_1ED498F58 != -1)
  {
    dispatch_once(&qword_1ED498F58, &__block_literal_global_277_2);
  }

  v3 = qword_1ED498F60;

  return v3;
}

- (BOOL)shouldAddForceGesture
{
  v2 = +[UIDevice currentDevice];
  _supportsForceTouch = [v2 _supportsForceTouch];

  return _supportsForceTouch;
}

- (id)selectionController
{
  delegate = [(_UIKeyboardTextSelectionGestureController *)self delegate];
  textSelectionController = [delegate textSelectionController];

  return textSelectionController;
}

- (id)addDeallocationHandler:(id)handler
{
  handlerCopy = handler;
  if (!self->_deallocHandlers)
  {
    array = [MEMORY[0x1E695DF70] array];
    deallocHandlers = self->_deallocHandlers;
    self->_deallocHandlers = array;
  }

  v7 = [handlerCopy copy];
  v8 = self->_deallocHandlers;
  v9 = _Block_copy(v7);
  [(NSMutableArray *)v8 addObject:v9];

  v10 = _Block_copy(v7);

  return v10;
}

- (void)removeDeallocationHandler:(id)handler
{
  if (handler)
  {
    [(NSMutableArray *)self->_deallocHandlers removeObject:?];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  [(_UIKeyboardTextSelectionGestureController *)self _cleanupDeadGesturesIfNecessary];
  objc_storeWeak(&self->_delegate, obj);
}

- (void)willRemoveSelectionController
{
  v3 = [(NSMutableArray *)self->_activeGestures copy];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_286];
  [(_UIKeyboardTextSelectionGestureController *)self _cleanupDeadGesturesIfNecessary];
}

- (void)redisableEnclosingScrollViewNestedPinching
{
  delegate = [(_UIKeyboardTextSelectionGestureController *)self delegate];
  textSelectionController = [delegate textSelectionController];

  if (textSelectionController && [(_UIKeyboardTextSelectionGestureController *)self wasNestedPinchingDisabled])
  {
    selectionController = [(_UIKeyboardTextSelectionGestureController *)self selectionController];
    textInputView = [selectionController textInputView];
    _scroller = [textInputView _scroller];

    v7 = _scroller;
    if (_scroller)
    {
      [(_UIKeyboardTextSelectionGestureController *)self setWasNestedPinchingDisabled:0];
      pinchGestureRecognizer = [_scroller pinchGestureRecognizer];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && pinchGestureRecognizer && pinchGestureRecognizer[313])
      {
        pinchGestureRecognizer[313] = 0;
        [(UIScrollViewPinchGestureRecognizer *)pinchGestureRecognizer _updateHysteresis];
      }

      v7 = _scroller;
    }
  }
}

- (id)textSelectionInteractionForRTIForwarding
{
  v2 = [objc_alloc(-[_UIKeyboardTextSelectionGestureController textInteractionClass](self "textInteractionClass"))];

  return v2;
}

- (id)addOneFingerTextSelectionInteractionsToView:(id)view
{
  viewCopy = view;
  shouldAddForceGesture = [(_UIKeyboardTextSelectionGestureController *)self shouldAddForceGesture];
  if ([(_UIKeyboardTextSelectionGestureController *)self _longPressAllowedForView:viewCopy])
  {
    shouldAddForceGesture |= 8uLL;
  }

  v6 = [objc_alloc(-[_UIKeyboardTextSelectionGestureController textInteractionClass](self "textInteractionClass"))];
  if (v6)
  {
    [viewCopy addInteraction:v6];
  }

  return v6;
}

- (id)addTwoFingerTextSelectionInteractionsToView:(id)view
{
  viewCopy = view;
  v5 = [objc_alloc(-[_UIKeyboardTextSelectionGestureController textInteractionClass](self "textInteractionClass"))];
  if (v5)
  {
    [viewCopy addInteraction:v5];
  }

  return v5;
}

- (id)addLongPressTextSelectionInteractionsToView:(id)view
{
  viewCopy = view;
  if ([(_UIKeyboardTextSelectionGestureController *)self _longPressAllowedForView:viewCopy])
  {
    v5 = [objc_alloc(-[_UIKeyboardTextSelectionGestureController textInteractionClass](self "textInteractionClass"))];
    if (v5)
    {
      [viewCopy addInteraction:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configureTwoFingerPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(objc_class *)[(_UIKeyboardTextSelectionGestureController *)self textInteractionClass] attachToExistingRecogniser:recognizerCopy owner:self forType:4];
}

- (void)configureTwoFingerTapGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(objc_class *)[(_UIKeyboardTextSelectionGestureController *)self textInteractionClass] attachToExistingRecogniser:recognizerCopy owner:self forType:2];
}

- (void)configureOneFingerForcePressRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(objc_class *)[(_UIKeyboardTextSelectionGestureController *)self textInteractionClass] attachToExistingRecogniser:recognizerCopy owner:self forType:1];
}

- (CGPoint)lastPanTranslation
{
  x = self->_lastPanTranslation.x;
  y = self->_lastPanTranslation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)accumulatedAcceleration
{
  x = self->_accumulatedAcceleration.x;
  y = self->_accumulatedAcceleration.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)accumulatedBounding
{
  x = self->_accumulatedBounding.x;
  y = self->_accumulatedBounding.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)cursorLocationBase
{
  x = self->_cursorLocationBase.x;
  y = self->_cursorLocationBase.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
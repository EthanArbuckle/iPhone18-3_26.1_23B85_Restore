@interface UITextRefinementCursorBehavior
- (CGPoint)startPointForLoupeGesture:(id)gesture;
- (CGPoint)translationInView:(id)view forLoupeGesture:(id)gesture;
- (CGPoint)velocityInView:(id)view forLoupeGesture:(id)gesture;
- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)interaction;
- (void)configureLoupeGestureRecognizer:(id)recognizer forTextLoupeInteraction:(id)interaction;
- (void)textLoupeInteraction:(id)interaction gestureChangedWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel;
@end

@implementation UITextRefinementCursorBehavior

- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)interaction
{
  interactionCopy = interaction;
  v6 = [interactionCopy recognizerForName:0x1EFBA76B0];
  root = [interactionCopy root];

  v5 = [root recognizerForName:0x1EFBA76F0];

  if (v5)
  {
    [v6 requireGestureRecognizerToFail:v5];
  }
}

- (void)configureLoupeGestureRecognizer:(id)recognizer forTextLoupeInteraction:(id)interaction
{
  recognizerCopy = recognizer;
  interactionCopy = interaction;
  [recognizerCopy _setHysteresis:8.0];
  [interactionCopy addGestureRecognizer:recognizerCopy withName:0x1EFBA76B0];
}

- (CGPoint)startPointForLoupeGesture:(id)gesture
{
  [gesture startPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationInView:(id)view forLoupeGesture:(id)gesture
{
  [gesture translationInView:view];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)velocityInView:(id)view forLoupeGesture:(id)gesture
{
  [gesture velocityInView:view];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)textLoupeInteraction:(id)interaction gestureChangedWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel
{
  flagsCopy = flags;
  interactionCopy = interaction;
  locationCopy = location;
  [interactionCopy cancelLinkInteractionSession];
  v14 = locationCopy[2](locationCopy);
  v16 = v15;

  view = [interactionCopy view];
  _textInput = [interactionCopy _textInput];
  assistantDelegate = [interactionCopy assistantDelegate];
  if (state == 1)
  {
    root = [interactionCopy root];
    v21 = [root interactionWithGestureForName:0x1EFBA75F0];

    [interactionCopy setInheritedGranularity:{objc_msgSend(v21, "handOffGranularity")}];
  }

  if ([interactionCopy inheritedGranularity] == -1)
  {
    inheritedGranularity = 0;
  }

  else
  {
    inheritedGranularity = [interactionCopy inheritedGranularity];
  }

  _usesAsynchronousProtocol = [_textInput _usesAsynchronousProtocol];
  if ((flagsCopy & 0x20000) != 0)
  {
    isShiftKeyBeingHeld = 1;
  }

  else
  {
    v24 = +[UIKeyboardImpl activeInstance];
    isShiftKeyBeingHeld = [v24 isShiftKeyBeingHeld];
  }

  if (state == 1)
  {
    [interactionCopy setInGesture:1];
    [assistantDelegate setNeedsGestureUpdate:{objc_msgSend(interactionCopy, "_textInputIsInteractive") ^ 1}];
    [assistantDelegate setFirstResponderIfNecessary];
    activeSelectionController = [assistantDelegate activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = activeSelectionController;

    if ([interactionCopy _textInputIsInteractive])
    {
      obtainSelectionGrabberSuppressionAssertion = [assistantDelegate obtainSelectionGrabberSuppressionAssertion];
      grabberHandleSuppressionAssertion = self->_grabberHandleSuppressionAssertion;
      self->_grabberHandleSuppressionAssertion = obtainSelectionGrabberSuppressionAssertion;

      [assistantDelegate willBeginSelectionInteraction];
      [interactionCopy _cancelRecognizerWithName:0x1EFBA75D0];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
      if ((isShiftKeyBeingHeld & 1) == 0 && [interactionCopy inheritedGranularity] == -1)
      {
        v34 = self->_activeSelectionController;
        if (_usesAsynchronousProtocol)
        {
          [(_UIKeyboardTextSelectionController *)v34 selectTextWithGranularity:0 atPoint:0 executionContext:v14, v16];
        }

        else
        {
          [(_UIKeyboardTextSelectionController *)v34 selectPositionAtPoint:0 executionContext:v14, v16];
        }
      }

      else
      {
        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:inheritedGranularity withBoundary:0 executionContext:v14, v16];
      }

      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
    }

    else if (cancel)
    {
      *cancel = 1;
    }

    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant hideSelectionCommands];

    [assistantDelegate resetWillHandoffLoupeMagnifier];
  }

  else if (state == 2)
  {
    v30 = self->_activeSelectionController;
    if ((inheritedGranularity != 0) | _usesAsynchronousProtocol & 1)
    {
      [(_UIKeyboardTextSelectionController *)v30 updateSelectionWithExtentPoint:inheritedGranularity withBoundary:0 executionContext:v14, v16];
    }

    else
    {
      [(_UIKeyboardTextSelectionController *)v30 updateSelectionWithExtentPoint:0 executionContext:v14, v16];
    }

    [assistantDelegate startAutoscroll:{v14, v16}];
  }

  else if ((state - 3) <= 1)
  {
    if (isShiftKeyBeingHeld)
    {
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:0 executionContext:v14, v16];
    }

    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
    [assistantDelegate didEndSelectionInteraction];
    [assistantDelegate cancelAutoscroll];
    [interactionCopy setInGesture:0];
    v32 = self->_activeSelectionController;
    self->_activeSelectionController = 0;

    [assistantDelegate setGrabberSuppressionAssertion:self->_grabberHandleSuppressionAssertion];
    v33 = self->_grabberHandleSuppressionAssertion;
    self->_grabberHandleSuppressionAssertion = 0;

    [interactionCopy setInheritedGranularity:-1];
  }
}

@end
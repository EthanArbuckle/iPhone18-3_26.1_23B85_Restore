@interface UITextRefinementAcceleratedTouchBehavior
- (BOOL)loupeGestureRecognizerShouldBegin:(id)begin forTextLoupeInteraction:(id)interaction;
- (CGPoint)startPointForLoupeGesture:(id)gesture;
- (CGPoint)translationInView:(id)view forLoupeGesture:(id)gesture;
- (CGPoint)velocityInView:(id)view forLoupeGesture:(id)gesture;
- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)interaction;
- (void)configureLoupeGestureRecognizer:(id)recognizer forTextLoupeInteraction:(id)interaction;
- (void)textLoupeInteraction:(id)interaction gestureChangedWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel;
@end

@implementation UITextRefinementAcceleratedTouchBehavior

- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)interaction
{
  root = [interaction root];
  v5 = [root recognizerForName:0x1EFBA75D0];

  _pairedGestureIdentifiers = [v5 _pairedGestureIdentifiers];
  [_pairedGestureIdentifiers addObject:0x1EFBA76D0];
}

- (void)configureLoupeGestureRecognizer:(id)recognizer forTextLoupeInteraction:(id)interaction
{
  recognizerCopy = recognizer;
  interactionCopy = interaction;
  [recognizerCopy setMaximumNumberOfTouches:1];
  [recognizerCopy setMinimumNumberOfTouches:1];
  [recognizerCopy setAllowedTouchTypes:&unk_1EFE2DE70];
  [interactionCopy addGestureRecognizer:recognizerCopy withName:0x1EFBA76D0];
}

- (BOOL)loupeGestureRecognizerShouldBegin:(id)begin forTextLoupeInteraction:(id)interaction
{
  interactionCopy = interaction;
  beginCopy = begin;
  view = [beginCopy view];
  [beginCopy locationInView:view];
  v9 = v8;
  v11 = v10;

  LOBYTE(beginCopy) = [interactionCopy currentSelectionContainsPoint:{v9, v11}];
  return beginCopy ^ 1;
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
  interactionCopy = interaction;
  locationCopy = location;
  translationCopy = translation;
  [interactionCopy cancelLinkInteractionSession];
  _textInput = [interactionCopy _textInput];
  assistantDelegate = [interactionCopy assistantDelegate];
  root = [interactionCopy root];
  _allowsSelectionCommands = [root _allowsSelectionCommands];

  if (state == 2)
  {
    if ([interactionCopy inGesture])
    {
      v25 = locationCopy[2](locationCopy);
      v27 = v26;
      v28 = translationCopy[2](translationCopy);
      v30 = v29;
      [interactionCopy touchAlignedPointForPoint:v25 translation:{v27, v28, v29}];
      v32 = v31;
      v34 = v33;
      selectedTextRange = [_textInput selectedTextRange];
      isEmpty = [selectedTextRange isEmpty];

      if (!isEmpty)
      {
        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:1 withBoundary:0 executionContext:v32, v34];
      }

      [assistantDelegate startAutoscroll:{v32, v34}];
      [interactionCopy updateOrCancelDelayedLoupeActionWithPoint:v32 translation:{v34, v28, v30}];
      v37 = [interactionCopy translationIsWithinAllowableMovement:{v28, v30}];
      gestureTuning = [interactionCopy gestureTuning];
      shouldUseLineThreshold = [gestureTuning shouldUseLineThreshold];

      if (shouldUseLineThreshold && (v37 & 1) == 0)
      {
        [assistantDelegate updateFloatingCursorAtPoint:1 animated:{v32, v34}];
        loupeSession = self->_loupeSession;
        activeSelection = [assistantDelegate activeSelection];
        [activeSelection caretRect];
        [(UITextLoupeSession *)loupeSession moveToPoint:1 withCaretRect:v25 trackingCaret:v27, v42, v43, v44, v45];
      }
    }
  }

  else if (state == 1)
  {
    root2 = [interactionCopy root];
    [root2 _createFeedbackIfNecessary];

    root3 = [interactionCopy root];
    [root3 _prepareFeedbackForGesture];

    [assistantDelegate stashCurrentSelection];
    [assistantDelegate setAutoscrolled:0];
    [interactionCopy setInGesture:1];
    [assistantDelegate setGrabberSuppressionAssertion:0];
    v21 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v22 = [v21 vendKeyboardSuppressionAssertionForReason:@"Loupe gesture"];
    [assistantDelegate setKeyboardSuppressionAssertion:v22];

    selectedTextRange2 = [_textInput selectedTextRange];
    originalTextRange = self->_originalTextRange;
    self->_originalTextRange = selectedTextRange2;

    [assistantDelegate setLoupeGestureEndPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    if (_allowsSelectionCommands)
    {
      [assistantDelegate setNeedsGestureUpdate:{objc_msgSend(interactionCopy, "_textInputIsInteractive") ^ 1}];
      [assistantDelegate setFirstResponderIfNecessary];
    }

    else
    {
      [assistantDelegate setNeedsGestureUpdate:1];
    }

    activeSelectionController = [assistantDelegate activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = activeSelectionController;

    if (_allowsSelectionCommands && ![interactionCopy _textInputIsInteractive])
    {
      if (cancel)
      {
        *cancel = 1;
      }
    }

    else
    {
      [interactionCopy disableClearsOnInsertion];
      [assistantDelegate willBeginSelectionInteraction];
      [interactionCopy _beginSelectionChange];
      v59 = locationCopy[2](locationCopy);
      v61 = v60;
      [interactionCopy updateInitialPoint:?];
      root4 = [interactionCopy root];
      [root4 _playFeedbackForCursorMovement];

      [interactionCopy _cancelRecognizerWithName:0x1EFBA75D0];
      [interactionCopy setStrongerBiasAgainstUp:1];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:1 atPoint:0 executionContext:v59, v61];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
      if (_allowsSelectionCommands)
      {
        _editMenuAssistant = [assistantDelegate _editMenuAssistant];
        [_editMenuAssistant hideSelectionCommands];
      }

      [assistantDelegate resetWillHandoffLoupeMagnifier];
    }
  }

  else if ((state - 3) <= 1)
  {
    [interactionCopy setInGesture:0];
    root5 = [interactionCopy root];
    [root5 _cleanUpFeedbackForGesture];

    [interactionCopy cancelDelayedLoupeActionIfNecessary];
    v47 = self->_loupeSession;
    self->_loupeSession = 0;

    [assistantDelegate setKeyboardSuppressionAssertion:0];
    if ([interactionCopy _textInputIsInteractive])
    {
      v48 = locationCopy[2](locationCopy);
      v50 = v49;
      translationCopy[2](translationCopy);
      [interactionCopy pointIfPlacedCarefully:{v48, v50}];
      [interactionCopy touchAlignedPointForPoint:? translation:?];
      v52 = v51;
      v54 = v53;
      if (([assistantDelegate autoscrolled] & 1) == 0)
      {
        [assistantDelegate setLoupeGestureEndPoint:{v52, v54}];
        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:0 executionContext:v52, v54];
      }

      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
      v55 = self->_activeSelectionController;
      self->_activeSelectionController = 0;

      [interactionCopy _endSelectionChange];
      [assistantDelegate didEndSelectionInteraction];
      [assistantDelegate cancelAutoscroll];
      if ([assistantDelegate needsGestureUpdate] && (objc_msgSend(assistantDelegate, "willHandoffLoupeMagnifier") & 1) == 0)
      {
        [assistantDelegate setGestureRecognizers];
      }

      if (_allowsSelectionCommands)
      {
        _editMenuAssistant2 = [assistantDelegate _editMenuAssistant];
        [_editMenuAssistant2 showSelectionCommands];
      }

      [assistantDelegate setNeedsSelectionDisplayUpdate];
    }

    [assistantDelegate endFloatingCursor];
    [assistantDelegate clearStashedSelection];
  }
}

@end
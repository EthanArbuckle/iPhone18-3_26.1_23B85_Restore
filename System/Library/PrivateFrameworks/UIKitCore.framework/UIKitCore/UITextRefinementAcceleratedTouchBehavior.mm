@interface UITextRefinementAcceleratedTouchBehavior
- (BOOL)loupeGestureRecognizerShouldBegin:(id)a3 forTextLoupeInteraction:(id)a4;
- (CGPoint)startPointForLoupeGesture:(id)a3;
- (CGPoint)translationInView:(id)a3 forLoupeGesture:(id)a4;
- (CGPoint)velocityInView:(id)a3 forLoupeGesture:(id)a4;
- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)a3;
- (void)configureLoupeGestureRecognizer:(id)a3 forTextLoupeInteraction:(id)a4;
- (void)textLoupeInteraction:(id)a3 gestureChangedWithState:(int64_t)a4 location:(id)a5 translation:(id)a6 velocity:(id)a7 modifierFlags:(int64_t)a8 shouldCancel:(BOOL *)a9;
@end

@implementation UITextRefinementAcceleratedTouchBehavior

- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)a3
{
  v3 = [a3 root];
  v5 = [v3 recognizerForName:0x1EFBA75D0];

  v4 = [v5 _pairedGestureIdentifiers];
  [v4 addObject:0x1EFBA76D0];
}

- (void)configureLoupeGestureRecognizer:(id)a3 forTextLoupeInteraction:(id)a4
{
  v6 = a3;
  v5 = a4;
  [v6 setMaximumNumberOfTouches:1];
  [v6 setMinimumNumberOfTouches:1];
  [v6 setAllowedTouchTypes:&unk_1EFE2DE70];
  [v5 addGestureRecognizer:v6 withName:0x1EFBA76D0];
}

- (BOOL)loupeGestureRecognizerShouldBegin:(id)a3 forTextLoupeInteraction:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  LOBYTE(v6) = [v5 currentSelectionContainsPoint:{v9, v11}];
  return v6 ^ 1;
}

- (CGPoint)startPointForLoupeGesture:(id)a3
{
  [a3 startPoint];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)translationInView:(id)a3 forLoupeGesture:(id)a4
{
  [a4 translationInView:a3];
  result.y = v5;
  result.x = v4;
  return result;
}

- (CGPoint)velocityInView:(id)a3 forLoupeGesture:(id)a4
{
  [a4 velocityInView:a3];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)textLoupeInteraction:(id)a3 gestureChangedWithState:(int64_t)a4 location:(id)a5 translation:(id)a6 velocity:(id)a7 modifierFlags:(int64_t)a8 shouldCancel:(BOOL *)a9
{
  v64 = a3;
  v13 = a5;
  v14 = a6;
  [v64 cancelLinkInteractionSession];
  v15 = [v64 _textInput];
  v16 = [v64 assistantDelegate];
  v17 = [v64 root];
  v18 = [v17 _allowsSelectionCommands];

  if (a4 == 2)
  {
    if ([v64 inGesture])
    {
      v25 = v13[2](v13);
      v27 = v26;
      v28 = v14[2](v14);
      v30 = v29;
      [v64 touchAlignedPointForPoint:v25 translation:{v27, v28, v29}];
      v32 = v31;
      v34 = v33;
      v35 = [v15 selectedTextRange];
      v36 = [v35 isEmpty];

      if (!v36)
      {
        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:1 withBoundary:0 executionContext:v32, v34];
      }

      [v16 startAutoscroll:{v32, v34}];
      [v64 updateOrCancelDelayedLoupeActionWithPoint:v32 translation:{v34, v28, v30}];
      v37 = [v64 translationIsWithinAllowableMovement:{v28, v30}];
      v38 = [v64 gestureTuning];
      v39 = [v38 shouldUseLineThreshold];

      if (v39 && (v37 & 1) == 0)
      {
        [v16 updateFloatingCursorAtPoint:1 animated:{v32, v34}];
        loupeSession = self->_loupeSession;
        v41 = [v16 activeSelection];
        [v41 caretRect];
        [(UITextLoupeSession *)loupeSession moveToPoint:1 withCaretRect:v25 trackingCaret:v27, v42, v43, v44, v45];
      }
    }
  }

  else if (a4 == 1)
  {
    v19 = [v64 root];
    [v19 _createFeedbackIfNecessary];

    v20 = [v64 root];
    [v20 _prepareFeedbackForGesture];

    [v16 stashCurrentSelection];
    [v16 setAutoscrolled:0];
    [v64 setInGesture:1];
    [v16 setGrabberSuppressionAssertion:0];
    v21 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v22 = [v21 vendKeyboardSuppressionAssertionForReason:@"Loupe gesture"];
    [v16 setKeyboardSuppressionAssertion:v22];

    v23 = [v15 selectedTextRange];
    originalTextRange = self->_originalTextRange;
    self->_originalTextRange = v23;

    [v16 setLoupeGestureEndPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    if (v18)
    {
      [v16 setNeedsGestureUpdate:{objc_msgSend(v64, "_textInputIsInteractive") ^ 1}];
      [v16 setFirstResponderIfNecessary];
    }

    else
    {
      [v16 setNeedsGestureUpdate:1];
    }

    v57 = [v16 activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = v57;

    if (v18 && ![v64 _textInputIsInteractive])
    {
      if (a9)
      {
        *a9 = 1;
      }
    }

    else
    {
      [v64 disableClearsOnInsertion];
      [v16 willBeginSelectionInteraction];
      [v64 _beginSelectionChange];
      v59 = v13[2](v13);
      v61 = v60;
      [v64 updateInitialPoint:?];
      v62 = [v64 root];
      [v62 _playFeedbackForCursorMovement];

      [v64 _cancelRecognizerWithName:0x1EFBA75D0];
      [v64 setStrongerBiasAgainstUp:1];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:1 atPoint:0 executionContext:v59, v61];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
      if (v18)
      {
        v63 = [v16 _editMenuAssistant];
        [v63 hideSelectionCommands];
      }

      [v16 resetWillHandoffLoupeMagnifier];
    }
  }

  else if ((a4 - 3) <= 1)
  {
    [v64 setInGesture:0];
    v46 = [v64 root];
    [v46 _cleanUpFeedbackForGesture];

    [v64 cancelDelayedLoupeActionIfNecessary];
    v47 = self->_loupeSession;
    self->_loupeSession = 0;

    [v16 setKeyboardSuppressionAssertion:0];
    if ([v64 _textInputIsInteractive])
    {
      v48 = v13[2](v13);
      v50 = v49;
      v14[2](v14);
      [v64 pointIfPlacedCarefully:{v48, v50}];
      [v64 touchAlignedPointForPoint:? translation:?];
      v52 = v51;
      v54 = v53;
      if (([v16 autoscrolled] & 1) == 0)
      {
        [v16 setLoupeGestureEndPoint:{v52, v54}];
        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:0 executionContext:v52, v54];
      }

      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
      v55 = self->_activeSelectionController;
      self->_activeSelectionController = 0;

      [v64 _endSelectionChange];
      [v16 didEndSelectionInteraction];
      [v16 cancelAutoscroll];
      if ([v16 needsGestureUpdate] && (objc_msgSend(v16, "willHandoffLoupeMagnifier") & 1) == 0)
      {
        [v16 setGestureRecognizers];
      }

      if (v18)
      {
        v56 = [v16 _editMenuAssistant];
        [v56 showSelectionCommands];
      }

      [v16 setNeedsSelectionDisplayUpdate];
    }

    [v16 endFloatingCursor];
    [v16 clearStashedSelection];
  }
}

@end
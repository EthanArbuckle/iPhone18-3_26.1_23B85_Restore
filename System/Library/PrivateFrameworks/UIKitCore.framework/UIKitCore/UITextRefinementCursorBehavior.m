@interface UITextRefinementCursorBehavior
- (CGPoint)startPointForLoupeGesture:(id)a3;
- (CGPoint)translationInView:(id)a3 forLoupeGesture:(id)a4;
- (CGPoint)velocityInView:(id)a3 forLoupeGesture:(id)a4;
- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)a3;
- (void)configureLoupeGestureRecognizer:(id)a3 forTextLoupeInteraction:(id)a4;
- (void)textLoupeInteraction:(id)a3 gestureChangedWithState:(int64_t)a4 location:(id)a5 translation:(id)a6 velocity:(id)a7 modifierFlags:(int64_t)a8 shouldCancel:(BOOL *)a9;
@end

@implementation UITextRefinementCursorBehavior

- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)a3
{
  v3 = a3;
  v6 = [v3 recognizerForName:0x1EFBA76B0];
  v4 = [v3 root];

  v5 = [v4 recognizerForName:0x1EFBA76F0];

  if (v5)
  {
    [v6 requireGestureRecognizerToFail:v5];
  }
}

- (void)configureLoupeGestureRecognizer:(id)a3 forTextLoupeInteraction:(id)a4
{
  v6 = a3;
  v5 = a4;
  [v6 _setHysteresis:8.0];
  [v5 addGestureRecognizer:v6 withName:0x1EFBA76B0];
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
  v9 = a8;
  v35 = a3;
  v13 = a5;
  [v35 cancelLinkInteractionSession];
  v14 = v13[2](v13);
  v16 = v15;

  v17 = [v35 view];
  v18 = [v35 _textInput];
  v19 = [v35 assistantDelegate];
  if (a4 == 1)
  {
    v20 = [v35 root];
    v21 = [v20 interactionWithGestureForName:0x1EFBA75F0];

    [v35 setInheritedGranularity:{objc_msgSend(v21, "handOffGranularity")}];
  }

  if ([v35 inheritedGranularity] == -1)
  {
    v22 = 0;
  }

  else
  {
    v22 = [v35 inheritedGranularity];
  }

  v23 = [v18 _usesAsynchronousProtocol];
  if ((v9 & 0x20000) != 0)
  {
    v25 = 1;
  }

  else
  {
    v24 = +[UIKeyboardImpl activeInstance];
    v25 = [v24 isShiftKeyBeingHeld];
  }

  if (a4 == 1)
  {
    [v35 setInGesture:1];
    [v19 setNeedsGestureUpdate:{objc_msgSend(v35, "_textInputIsInteractive") ^ 1}];
    [v19 setFirstResponderIfNecessary];
    v26 = [v19 activeSelectionController];
    activeSelectionController = self->_activeSelectionController;
    self->_activeSelectionController = v26;

    if ([v35 _textInputIsInteractive])
    {
      v28 = [v19 obtainSelectionGrabberSuppressionAssertion];
      grabberHandleSuppressionAssertion = self->_grabberHandleSuppressionAssertion;
      self->_grabberHandleSuppressionAssertion = v28;

      [v19 willBeginSelectionInteraction];
      [v35 _cancelRecognizerWithName:0x1EFBA75D0];
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
      if ((v25 & 1) == 0 && [v35 inheritedGranularity] == -1)
      {
        v34 = self->_activeSelectionController;
        if (v23)
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
        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:v22 withBoundary:0 executionContext:v14, v16];
      }

      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
    }

    else if (a9)
    {
      *a9 = 1;
    }

    v31 = [v19 _editMenuAssistant];
    [v31 hideSelectionCommands];

    [v19 resetWillHandoffLoupeMagnifier];
  }

  else if (a4 == 2)
  {
    v30 = self->_activeSelectionController;
    if ((v22 != 0) | v23 & 1)
    {
      [(_UIKeyboardTextSelectionController *)v30 updateSelectionWithExtentPoint:v22 withBoundary:0 executionContext:v14, v16];
    }

    else
    {
      [(_UIKeyboardTextSelectionController *)v30 updateSelectionWithExtentPoint:0 executionContext:v14, v16];
    }

    [v19 startAutoscroll:{v14, v16}];
  }

  else if ((a4 - 3) <= 1)
  {
    if (v25)
    {
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:0 executionContext:v14, v16];
    }

    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
    [v19 didEndSelectionInteraction];
    [v19 cancelAutoscroll];
    [v35 setInGesture:0];
    v32 = self->_activeSelectionController;
    self->_activeSelectionController = 0;

    [v19 setGrabberSuppressionAssertion:self->_grabberHandleSuppressionAssertion];
    v33 = self->_grabberHandleSuppressionAssertion;
    self->_grabberHandleSuppressionAssertion = 0;

    [v35 setInheritedGranularity:-1];
  }
}

@end
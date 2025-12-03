@interface UITextRefinementTouchBehavior
- (BOOL)_allowsPaintSelectionForLoupeInteraction:(id)interaction;
- (BOOL)loupeGestureRecognizerShouldBegin:(id)begin forTextLoupeInteraction:(id)interaction;
- (BOOL)triggeredByLongPressGesture:(id)gesture;
- (CGPoint)startPointForLoupeGesture:(id)gesture;
- (CGPoint)translationInView:(id)view forLoupeGesture:(id)gesture;
- (CGPoint)velocityInView:(id)view forLoupeGesture:(id)gesture;
- (void)adjustVariableDelaySettingsForLoupeInteraction:(id)interaction;
- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)interaction;
- (void)configureLoupeGestureRecognizer:(id)recognizer forTextLoupeInteraction:(id)interaction;
- (void)textLoupeInteraction:(id)interaction gestureChangedWithState:(int64_t)state location:(id)location translation:(id)translation velocity:(id)velocity modifierFlags:(int64_t)flags shouldCancel:(BOOL *)cancel;
@end

@implementation UITextRefinementTouchBehavior

- (void)adjustVariableDelaySettingsForLoupeInteraction:(id)interaction
{
  interactionCopy = interaction;
  _textInput = [interactionCopy _textInput];
  v4 = [interactionCopy recognizerForName:0x1EFBA76D0];

  [v4 setTextView:_textInput];
  if (_textInput)
  {
    isEditing = [_textInput isEditing];
    v6 = 0.5;
    if (isEditing)
    {
      v6 = 0.0;
    }
  }

  else
  {
    v6 = 0.0;
  }

  [v4 setDelay:v6];
}

- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)interaction
{
  interactionCopy = interaction;
  root = [interactionCopy root];
  v12 = [root recognizerForName:0x1EFBA75D0];

  _pairedGestureIdentifiers = [v12 _pairedGestureIdentifiers];
  [_pairedGestureIdentifiers addObject:0x1EFBA76D0];

  root2 = [interactionCopy root];
  v7 = [root2 recognizerForName:0x1EFBA75F0];

  _pairedGestureIdentifiers2 = [v7 _pairedGestureIdentifiers];
  [_pairedGestureIdentifiers2 addObject:0x1EFBA76D0];

  root3 = [interactionCopy root];

  v10 = [root3 recognizerForName:0x1EFBA7610];

  _pairedGestureIdentifiers3 = [v10 _pairedGestureIdentifiers];
  [_pairedGestureIdentifiers3 addObject:0x1EFBA76D0];
}

- (void)configureLoupeGestureRecognizer:(id)recognizer forTextLoupeInteraction:(id)interaction
{
  recognizerCopy = recognizer;
  interactionCopy = interaction;
  [recognizerCopy setNumberOfTouchesRequired:1];
  [recognizerCopy setDelaysTouchesEnded:0];
  v6 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_TextRefinement_AllowableMovement, @"TextRefinement_AllowableMovement");
  v7 = *&qword_1ED48AA30;
  if (v6)
  {
    v7 = 8.0;
  }

  [recognizerCopy setAllowableMovement:v7];
  [recognizerCopy setAllowedTouchTypes:&unk_1EFE2BDD0];
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

- (BOOL)_allowsPaintSelectionForLoupeInteraction:(id)interaction
{
  _textInput = [interaction _textInput];
  isEditable = [_textInput isEditable];

  return isEditable ^ 1;
}

- (BOOL)triggeredByLongPressGesture:(id)gesture
{
  v13 = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      v10 = objc_opt_class();
      v9 = NSStringFromClass(v10);
      v11 = 138412290;
      v12 = v9;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Gesture recognizer is type %@, but it should be a UIVariableDelayLoupeGesture", &v11, 0xCu);
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &triggeredByLongPressGesture____s_category) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Gesture recognizer is type %@, but it should be a UIVariableDelayLoupeGesture", &v11, 0xCu);
    }

LABEL_7:
  }

LABEL_2:
  isLongPress = [gestureCopy isLongPress];

  return isLongPress;
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
  [gesture _translationInView:view];
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
  activeSelectionController = [assistantDelegate activeSelectionController];
  selection = [activeSelectionController selection];

  v19 = [(UITextRefinementTouchBehavior *)self _allowsPaintSelectionForLoupeInteraction:interactionCopy];
  if (state != 2)
  {
    if (state == 1)
    {
      v20 = v19;
      root = [interactionCopy root];
      [root _createFeedbackIfNecessary];

      root2 = [interactionCopy root];
      [root2 _prepareFeedbackForGesture];

      [assistantDelegate stashCurrentSelection];
      [assistantDelegate setAutoscrolled:0];
      [interactionCopy setInGesture:1];
      [assistantDelegate setGrabberSuppressionAssertion:0];
      v23 = 0;
      if (objc_opt_respondsToSelector())
      {
        v23 = [_textInput keyboardType] == 122;
      }

      if (([_textInput isEditing] & 1) == 0 && !v23)
      {
        v24 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v25 = [v24 vendKeyboardSuppressionAssertionForReason:@"Loupe gesture"];
        [assistantDelegate setKeyboardSuppressionAssertion:v25];
      }

      selectedTextRange = [_textInput selectedTextRange];
      originalTextRange = self->_originalTextRange;
      self->_originalTextRange = selectedTextRange;

      v28 = +[UIKeyboardImpl activeInstance];
      self->_isShiftKeyBeingHeld = [v28 isShiftKeyBeingHeld];

      v29 = *MEMORY[0x1E695EFF8];
      v30 = *(MEMORY[0x1E695EFF8] + 8);
      [assistantDelegate setLoupeGestureEndPoint:{*MEMORY[0x1E695EFF8], v30}];
      [assistantDelegate setNeedsGestureUpdate:{objc_msgSend(interactionCopy, "_textInputIsInteractive") ^ 1}];
      [assistantDelegate setFirstResponderIfNecessary];
      activeSelectionController2 = [assistantDelegate activeSelectionController];
      activeSelectionController = self->_activeSelectionController;
      self->_activeSelectionController = activeSelectionController2;

      if ([interactionCopy _textInputIsInteractive])
      {
        [interactionCopy disableClearsOnInsertion];
        [assistantDelegate willBeginSelectionInteraction];
        [interactionCopy _beginSelectionChange];
        v33 = locationCopy[2](locationCopy);
        v35 = v34;
        selectedRange = [selection selectedRange];
        [assistantDelegate convertPointToRenderSpace:selectedRange textRange:{v33, v35}];
        v38 = v37;
        v40 = v39;

        [interactionCopy updateInitialPoint:{v38, v40}];
        [selection caretRect];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v126 = v40;
        v127 = v38;
        UIDistanceBetweenPointAndRect(v38, v40, v41, v43, v45, v47);
        v50 = v49;
        if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_TextRefinement_NearCaretDistance, @"TextRefinement_NearCaretDistance"))
        {
          v51 = 40.0;
        }

        else
        {
          v51 = *&qword_1EA95E168;
        }

        if ([_textInput isEditing] && v50 < v51)
        {
          self->_activeSelectionMode = 0;
          v53 = v126;
          v52 = v127;
          gestureTuning = [interactionCopy gestureTuning];
          [gestureTuning assertInitialPositionFromTopOfCaret:v126 - v44 distanceFromCaret:{v127 - (v42 + v46 * 0.5), v126 - (v44 + v48 * 0.5)}];
          v55 = 0;
        }

        else
        {
          if (v20)
          {
            self->_activeSelectionMode = 2;
          }

          root3 = [interactionCopy root];
          [root3 _playFeedbackForCursorMovement];

          [interactionCopy _cancelRecognizerWithName:0x1EFBA75D0];
          gestureTuning = [interactionCopy gestureTuning];
          [gestureTuning assertInitialPositionFromTopOfCaret:0.0 distanceFromCaret:{v29, v30}];
          v55 = 1;
          v53 = v126;
          v52 = v127;
        }

        activeSelectionMode = self->_activeSelectionMode;
        if ((activeSelectionMode - 1) >= 2)
        {
          if (!activeSelectionMode)
          {
            [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectPositionAtPoint:0 executionContext:v52, v53];
            [assistantDelegate willBeginFloatingCursor:0];
            [assistantDelegate beginFloatingCursorAtPoint:{v52, v53}];
          }
        }

        else
        {
          [interactionCopy setStrongerBiasAgainstUp:1];
          [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
          [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:v55 atPoint:0 executionContext:v52, v53];
          [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
        }

        _editMenuAssistant = [assistantDelegate _editMenuAssistant];
        [_editMenuAssistant hideSelectionCommands];

        [assistantDelegate resetWillHandoffLoupeMagnifier];
        if ([interactionCopy triggeredByLongPress])
        {
          root4 = [interactionCopy root];
          [root4 _playFeedbackForCursorMovement];
        }

        if ([assistantDelegate shouldDisplayLoupeSessionForTouchType:0])
        {
          _caretView = [assistantDelegate _caretView];
          view = [interactionCopy view];
          textInputView = [view textInputView];
          v91 = +[UITextLoupeSession _beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:](UITextLoupeSession, "_beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:", _caretView, textInputView, [assistantDelegate loupeOrientation], v52, v53);
          loupeSession = self->_loupeSession;
          self->_loupeSession = v91;

          gestureTuning2 = [interactionCopy gestureTuning];
          [(UITextLoupeSession *)self->_loupeSession setGestureTuning:gestureTuning2];
        }
      }

      else if (cancel)
      {
        *cancel = 1;
      }
    }

    else if ((state - 3) <= 1)
    {
      [interactionCopy setInGesture:0];
      root5 = [interactionCopy root];
      [root5 _cleanUpFeedbackForGesture];

      [interactionCopy cancelDelayedLoupeActionIfNecessary];
      [assistantDelegate setKeyboardSuppressionAssertion:0];
      grabberHandleSuppressionAssertion = self->_grabberHandleSuppressionAssertion;
      self->_grabberHandleSuppressionAssertion = 0;

      if ([interactionCopy _textInputIsInteractive])
      {
        v71 = locationCopy[2](locationCopy);
        v73 = v72;
        v74 = translationCopy[2](translationCopy);
        v76 = v75;
        [interactionCopy pointIfPlacedCarefully:{v71, v73}];
        [interactionCopy touchAlignedPointForPoint:? translation:?];
        v78 = v77;
        v80 = v79;
        if (_UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_TextRefinement_AllowableMovement, @"TextRefinement_AllowableMovement"))
        {
          v81 = 8.0;
        }

        else
        {
          v81 = *&qword_1ED48AA30;
        }

        if (([assistantDelegate autoscrolled] & 1) == 0)
        {
          [assistantDelegate setLoupeGestureEndPoint:{v78, v80}];
          selectedTextRange2 = [_textInput selectedTextRange];
          isEmpty = [selectedTextRange2 isEmpty];

          if (isEmpty)
          {
            [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectPositionAtPoint:0 executionContext:v78, v80];
          }

          else if ([_textInput conformsToProtocol:&unk_1F016C810])
          {
            v102 = _textInput;
            if (objc_opt_respondsToSelector())
            {
              [v102 updateSelectionWithExtentPoint:1 boundary:&__block_literal_global_211 completionHandler:{v78, v80}];
            }

            else if (objc_opt_respondsToSelector())
            {
              [v102 updateSelectionWithExtentPoint:1 withBoundary:&__block_literal_global_355_0 completionHandler:{v78, v80}];
            }
          }

          else if ([_textInput conformsToProtocol:&unk_1F016CC30])
          {
            [_textInput updateSelectionWithExtentPoint:1 withBoundary:&__block_literal_global_413_0 completionHandler:{v78, v80}];
          }

          else if (self->_activeSelectionMode == 2)
          {
            [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:0 executionContext:v78, v80];
          }
        }

        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
        v103 = self->_activeSelectionController;
        self->_activeSelectionController = 0;

        [interactionCopy _endSelectionChange];
        [assistantDelegate didEndSelectionInteraction];
        [assistantDelegate cancelAutoscroll];
        if ([assistantDelegate needsGestureUpdate] && (objc_msgSend(assistantDelegate, "willHandoffLoupeMagnifier") & 1) == 0)
        {
          [assistantDelegate setGestureRecognizers];
        }

        v104 = self->_originalTextRange;
        selectedTextRange3 = [_textInput selectedTextRange];
        v106 = [(UITextRange *)v104 isEqual:selectedTextRange3];

        selectedTextRange4 = [_textInput selectedTextRange];
        isEmpty2 = [selectedTextRange4 isEmpty];

        if (isEmpty2 && v74 * v74 + v76 * v76 > v81 * v81 && !self->_isShiftKeyBeingHeld)
        {
          [assistantDelegate setSelectionHighlightMode:0];
        }

        else if (v106)
        {
          _editMenuAssistant2 = [assistantDelegate _editMenuAssistant];
          [_editMenuAssistant2 showSelectionCommands];
        }

        if (([_textInput isEditable] & 1) == 0)
        {
          _editMenuAssistant3 = [assistantDelegate _editMenuAssistant];
          [_editMenuAssistant3 showSelectionCommands];
        }

        [assistantDelegate updateDisplayedSelection];
        [selection caretRect];
        if (v106)
        {
          v115 = v111;
          v116 = v112;
          v117 = v113;
          v118 = v114;
          selectedTextRange5 = [_textInput selectedTextRange];

          if (selectedTextRange5)
          {
            UIDistanceBetweenPointAndRect(v78, v80, v115, v116, v117, v118);
            v121 = v120;
            v122 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_TextRefinement_NearCaretDistance, @"TextRefinement_NearCaretDistance");
            v123 = *&qword_1EA95E168;
            if (v122)
            {
              v123 = 40.0;
            }

            if (v121 < v123)
            {
              _editMenuAssistant4 = [assistantDelegate _editMenuAssistant];
              [_editMenuAssistant4 showSelectionCommandsAfterDelay:0.2];
            }
          }
        }
      }

      [(UITextLoupeSession *)self->_loupeSession invalidate];
      v125 = self->_loupeSession;
      self->_loupeSession = 0;

      [assistantDelegate endFloatingCursor];
      [assistantDelegate clearStashedSelection];
    }

    goto LABEL_75;
  }

  if (![interactionCopy inGesture])
  {
    goto LABEL_75;
  }

  v56 = locationCopy[2](locationCopy);
  v58 = v57;
  v59 = translationCopy[2](translationCopy);
  v61 = v60;
  [interactionCopy touchAlignedPointForPoint:v56 translation:{v58, v59, v60}];
  v63 = v62;
  v65 = v64;
  v66 = self->_activeSelectionMode;
  if (v66 == 2)
  {
    selectedTextRange6 = [_textInput selectedTextRange];
    isEmpty3 = [selectedTextRange6 isEmpty];

    if ((isEmpty3 & 1) == 0)
    {
      [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:1 withBoundary:0 executionContext:v63, v65];
      goto LABEL_46;
    }

    v66 = self->_activeSelectionMode;
  }

  if (!v66)
  {
    [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectPositionAtPoint:0 executionContext:v63, v65];
    goto LABEL_44;
  }

  if (v66 != 1)
  {
LABEL_44:
    v94 = 1;
    goto LABEL_47;
  }

  [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:1 atPoint:0 executionContext:v63, v65];
LABEL_46:
  v94 = 0;
LABEL_47:
  [assistantDelegate startAutoscroll:{v63, v65}];
  [interactionCopy updateOrCancelDelayedLoupeActionWithPoint:v63 translation:{v65, v59, v61}];
  gestureTuning3 = [interactionCopy gestureTuning];
  shouldUseLineThreshold = [gestureTuning3 shouldUseLineThreshold];

  if (shouldUseLineThreshold)
  {
    [assistantDelegate updateFloatingCursorAtPoint:0 animated:{v63, v65}];
    v97 = self->_loupeSession;
    [selection caretRect];
    [(UITextLoupeSession *)v97 moveToPoint:v94 withCaretRect:v63 trackingCaret:v65, v98, v99, v100, v101];
  }

LABEL_75:
}

@end
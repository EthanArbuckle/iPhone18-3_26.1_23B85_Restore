@interface UITextRefinementTouchBehavior
- (BOOL)_allowsPaintSelectionForLoupeInteraction:(id)a3;
- (BOOL)loupeGestureRecognizerShouldBegin:(id)a3 forTextLoupeInteraction:(id)a4;
- (BOOL)triggeredByLongPressGesture:(id)a3;
- (CGPoint)startPointForLoupeGesture:(id)a3;
- (CGPoint)translationInView:(id)a3 forLoupeGesture:(id)a4;
- (CGPoint)velocityInView:(id)a3 forLoupeGesture:(id)a4;
- (void)adjustVariableDelaySettingsForLoupeInteraction:(id)a3;
- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)a3;
- (void)configureLoupeGestureRecognizer:(id)a3 forTextLoupeInteraction:(id)a4;
- (void)textLoupeInteraction:(id)a3 gestureChangedWithState:(int64_t)a4 location:(id)a5 translation:(id)a6 velocity:(id)a7 modifierFlags:(int64_t)a8 shouldCancel:(BOOL *)a9;
@end

@implementation UITextRefinementTouchBehavior

- (void)adjustVariableDelaySettingsForLoupeInteraction:(id)a3
{
  v3 = a3;
  v7 = [v3 _textInput];
  v4 = [v3 recognizerForName:0x1EFBA76D0];

  [v4 setTextView:v7];
  if (v7)
  {
    v5 = [v7 isEditing];
    v6 = 0.5;
    if (v5)
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

- (void)configureGestureExclusionRequirementsForTextLoupeInteraction:(id)a3
{
  v3 = a3;
  v4 = [v3 root];
  v12 = [v4 recognizerForName:0x1EFBA75D0];

  v5 = [v12 _pairedGestureIdentifiers];
  [v5 addObject:0x1EFBA76D0];

  v6 = [v3 root];
  v7 = [v6 recognizerForName:0x1EFBA75F0];

  v8 = [v7 _pairedGestureIdentifiers];
  [v8 addObject:0x1EFBA76D0];

  v9 = [v3 root];

  v10 = [v9 recognizerForName:0x1EFBA7610];

  v11 = [v10 _pairedGestureIdentifiers];
  [v11 addObject:0x1EFBA76D0];
}

- (void)configureLoupeGestureRecognizer:(id)a3 forTextLoupeInteraction:(id)a4
{
  v8 = a3;
  v5 = a4;
  [v8 setNumberOfTouchesRequired:1];
  [v8 setDelaysTouchesEnded:0];
  v6 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_TextRefinement_AllowableMovement, @"TextRefinement_AllowableMovement");
  v7 = *&qword_1ED48AA30;
  if (v6)
  {
    v7 = 8.0;
  }

  [v8 setAllowableMovement:v7];
  [v8 setAllowedTouchTypes:&unk_1EFE2BDD0];
  [v5 addGestureRecognizer:v8 withName:0x1EFBA76D0];
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

- (BOOL)_allowsPaintSelectionForLoupeInteraction:(id)a3
{
  v3 = [a3 _textInput];
  v4 = [v3 isEditable];

  return v4 ^ 1;
}

- (BOOL)triggeredByLongPressGesture:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
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
  v4 = [v3 isLongPress];

  return v4;
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
  [a4 _translationInView:a3];
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
  v128 = a3;
  v13 = a5;
  v14 = a6;
  [v128 cancelLinkInteractionSession];
  v15 = [v128 _textInput];
  v16 = [v128 assistantDelegate];
  v17 = [v16 activeSelectionController];
  v18 = [v17 selection];

  v19 = [(UITextRefinementTouchBehavior *)self _allowsPaintSelectionForLoupeInteraction:v128];
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      v20 = v19;
      v21 = [v128 root];
      [v21 _createFeedbackIfNecessary];

      v22 = [v128 root];
      [v22 _prepareFeedbackForGesture];

      [v16 stashCurrentSelection];
      [v16 setAutoscrolled:0];
      [v128 setInGesture:1];
      [v16 setGrabberSuppressionAssertion:0];
      v23 = 0;
      if (objc_opt_respondsToSelector())
      {
        v23 = [v15 keyboardType] == 122;
      }

      if (([v15 isEditing] & 1) == 0 && !v23)
      {
        v24 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v25 = [v24 vendKeyboardSuppressionAssertionForReason:@"Loupe gesture"];
        [v16 setKeyboardSuppressionAssertion:v25];
      }

      v26 = [v15 selectedTextRange];
      originalTextRange = self->_originalTextRange;
      self->_originalTextRange = v26;

      v28 = +[UIKeyboardImpl activeInstance];
      self->_isShiftKeyBeingHeld = [v28 isShiftKeyBeingHeld];

      v29 = *MEMORY[0x1E695EFF8];
      v30 = *(MEMORY[0x1E695EFF8] + 8);
      [v16 setLoupeGestureEndPoint:{*MEMORY[0x1E695EFF8], v30}];
      [v16 setNeedsGestureUpdate:{objc_msgSend(v128, "_textInputIsInteractive") ^ 1}];
      [v16 setFirstResponderIfNecessary];
      v31 = [v16 activeSelectionController];
      activeSelectionController = self->_activeSelectionController;
      self->_activeSelectionController = v31;

      if ([v128 _textInputIsInteractive])
      {
        [v128 disableClearsOnInsertion];
        [v16 willBeginSelectionInteraction];
        [v128 _beginSelectionChange];
        v33 = v13[2](v13);
        v35 = v34;
        v36 = [v18 selectedRange];
        [v16 convertPointToRenderSpace:v36 textRange:{v33, v35}];
        v38 = v37;
        v40 = v39;

        [v128 updateInitialPoint:{v38, v40}];
        [v18 caretRect];
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

        if ([v15 isEditing] && v50 < v51)
        {
          self->_activeSelectionMode = 0;
          v53 = v126;
          v52 = v127;
          v54 = [v128 gestureTuning];
          [v54 assertInitialPositionFromTopOfCaret:v126 - v44 distanceFromCaret:{v127 - (v42 + v46 * 0.5), v126 - (v44 + v48 * 0.5)}];
          v55 = 0;
        }

        else
        {
          if (v20)
          {
            self->_activeSelectionMode = 2;
          }

          v84 = [v128 root];
          [v84 _playFeedbackForCursorMovement];

          [v128 _cancelRecognizerWithName:0x1EFBA75D0];
          v54 = [v128 gestureTuning];
          [v54 assertInitialPositionFromTopOfCaret:0.0 distanceFromCaret:{v29, v30}];
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
            [v16 willBeginFloatingCursor:0];
            [v16 beginFloatingCursorAtPoint:{v52, v53}];
          }
        }

        else
        {
          [v128 setStrongerBiasAgainstUp:1];
          [(_UIKeyboardTextSelectionController *)self->_activeSelectionController beginSelection];
          [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectTextWithGranularity:v55 atPoint:0 executionContext:v52, v53];
          [(_UIKeyboardTextSelectionController *)self->_activeSelectionController restartSelection];
        }

        v86 = [v16 _editMenuAssistant];
        [v86 hideSelectionCommands];

        [v16 resetWillHandoffLoupeMagnifier];
        if ([v128 triggeredByLongPress])
        {
          v87 = [v128 root];
          [v87 _playFeedbackForCursorMovement];
        }

        if ([v16 shouldDisplayLoupeSessionForTouchType:0])
        {
          v88 = [v16 _caretView];
          v89 = [v128 view];
          v90 = [v89 textInputView];
          v91 = +[UITextLoupeSession _beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:](UITextLoupeSession, "_beginLoupeSessionAtPoint:fromSelectionWidgetView:inView:orientation:", v88, v90, [v16 loupeOrientation], v52, v53);
          loupeSession = self->_loupeSession;
          self->_loupeSession = v91;

          v93 = [v128 gestureTuning];
          [(UITextLoupeSession *)self->_loupeSession setGestureTuning:v93];
        }
      }

      else if (a9)
      {
        *a9 = 1;
      }
    }

    else if ((a4 - 3) <= 1)
    {
      [v128 setInGesture:0];
      v69 = [v128 root];
      [v69 _cleanUpFeedbackForGesture];

      [v128 cancelDelayedLoupeActionIfNecessary];
      [v16 setKeyboardSuppressionAssertion:0];
      grabberHandleSuppressionAssertion = self->_grabberHandleSuppressionAssertion;
      self->_grabberHandleSuppressionAssertion = 0;

      if ([v128 _textInputIsInteractive])
      {
        v71 = v13[2](v13);
        v73 = v72;
        v74 = v14[2](v14);
        v76 = v75;
        [v128 pointIfPlacedCarefully:{v71, v73}];
        [v128 touchAlignedPointForPoint:? translation:?];
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

        if (([v16 autoscrolled] & 1) == 0)
        {
          [v16 setLoupeGestureEndPoint:{v78, v80}];
          v82 = [v15 selectedTextRange];
          v83 = [v82 isEmpty];

          if (v83)
          {
            [(_UIKeyboardTextSelectionController *)self->_activeSelectionController selectPositionAtPoint:0 executionContext:v78, v80];
          }

          else if ([v15 conformsToProtocol:&unk_1F016C810])
          {
            v102 = v15;
            if (objc_opt_respondsToSelector())
            {
              [v102 updateSelectionWithExtentPoint:1 boundary:&__block_literal_global_211 completionHandler:{v78, v80}];
            }

            else if (objc_opt_respondsToSelector())
            {
              [v102 updateSelectionWithExtentPoint:1 withBoundary:&__block_literal_global_355_0 completionHandler:{v78, v80}];
            }
          }

          else if ([v15 conformsToProtocol:&unk_1F016CC30])
          {
            [v15 updateSelectionWithExtentPoint:1 withBoundary:&__block_literal_global_413_0 completionHandler:{v78, v80}];
          }

          else if (self->_activeSelectionMode == 2)
          {
            [(_UIKeyboardTextSelectionController *)self->_activeSelectionController updateSelectionWithExtentPoint:0 executionContext:v78, v80];
          }
        }

        [(_UIKeyboardTextSelectionController *)self->_activeSelectionController endSelection];
        v103 = self->_activeSelectionController;
        self->_activeSelectionController = 0;

        [v128 _endSelectionChange];
        [v16 didEndSelectionInteraction];
        [v16 cancelAutoscroll];
        if ([v16 needsGestureUpdate] && (objc_msgSend(v16, "willHandoffLoupeMagnifier") & 1) == 0)
        {
          [v16 setGestureRecognizers];
        }

        v104 = self->_originalTextRange;
        v105 = [v15 selectedTextRange];
        v106 = [(UITextRange *)v104 isEqual:v105];

        v107 = [v15 selectedTextRange];
        v108 = [v107 isEmpty];

        if (v108 && v74 * v74 + v76 * v76 > v81 * v81 && !self->_isShiftKeyBeingHeld)
        {
          [v16 setSelectionHighlightMode:0];
        }

        else if (v106)
        {
          v109 = [v16 _editMenuAssistant];
          [v109 showSelectionCommands];
        }

        if (([v15 isEditable] & 1) == 0)
        {
          v110 = [v16 _editMenuAssistant];
          [v110 showSelectionCommands];
        }

        [v16 updateDisplayedSelection];
        [v18 caretRect];
        if (v106)
        {
          v115 = v111;
          v116 = v112;
          v117 = v113;
          v118 = v114;
          v119 = [v15 selectedTextRange];

          if (v119)
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
              v124 = [v16 _editMenuAssistant];
              [v124 showSelectionCommandsAfterDelay:0.2];
            }
          }
        }
      }

      [(UITextLoupeSession *)self->_loupeSession invalidate];
      v125 = self->_loupeSession;
      self->_loupeSession = 0;

      [v16 endFloatingCursor];
      [v16 clearStashedSelection];
    }

    goto LABEL_75;
  }

  if (![v128 inGesture])
  {
    goto LABEL_75;
  }

  v56 = v13[2](v13);
  v58 = v57;
  v59 = v14[2](v14);
  v61 = v60;
  [v128 touchAlignedPointForPoint:v56 translation:{v58, v59, v60}];
  v63 = v62;
  v65 = v64;
  v66 = self->_activeSelectionMode;
  if (v66 == 2)
  {
    v67 = [v15 selectedTextRange];
    v68 = [v67 isEmpty];

    if ((v68 & 1) == 0)
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
  [v16 startAutoscroll:{v63, v65}];
  [v128 updateOrCancelDelayedLoupeActionWithPoint:v63 translation:{v65, v59, v61}];
  v95 = [v128 gestureTuning];
  v96 = [v95 shouldUseLineThreshold];

  if (v96)
  {
    [v16 updateFloatingCursorAtPoint:0 animated:{v63, v65}];
    v97 = self->_loupeSession;
    [v18 caretRect];
    [(UITextLoupeSession *)v97 moveToPoint:v94 withCaretRect:v63 trackingCaret:v65, v98, v99, v100, v101];
  }

LABEL_75:
}

@end
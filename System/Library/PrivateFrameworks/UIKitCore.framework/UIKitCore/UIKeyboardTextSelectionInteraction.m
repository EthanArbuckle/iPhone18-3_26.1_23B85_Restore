@interface UIKeyboardTextSelectionInteraction
@end

@implementation UIKeyboardTextSelectionInteraction

uint64_t __53___UIKeyboardTextSelectionInteraction_registerOwner___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  *(v2 + 128) = 0;

  v4 = *(a1 + 32);

  return [v4 detach];
}

void __108___UIKeyboardTextSelectionInteraction_indirectCursorPanGestureWithState_withTranslation_withFlickDirection___block_invoke()
{
  v0 = [&__block_literal_global_67_1 copy];
  v1 = _MergedGlobals_13_3;
  _MergedGlobals_13_3 = v0;
}

void __108___UIKeyboardTextSelectionInteraction_indirectCursorPanGestureWithState_withTranslation_withFlickDirection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  switch(v5)
  {
    case 3:
      v6 = *(a1 + 32);
      if (*(a1 + 64))
      {
        v7 = [*(a1 + 32) layoutDirectionFromFlickDirection:?];
        v8 = *(a1 + 32);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __108___UIKeyboardTextSelectionInteraction_indirectCursorPanGestureWithState_withTranslation_withFlickDirection___block_invoke_4;
        v11[3] = &unk_1E70FD058;
        v11[4] = v8;
        v9 = [v4 childWithContinuation:v11];
        [v8 handleTwoFingerFlickInDirection:v7 executionContext:v9];
      }

      else
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __108___UIKeyboardTextSelectionInteraction_indirectCursorPanGestureWithState_withTranslation_withFlickDirection___block_invoke_5;
        v10[3] = &unk_1E70FD058;
        v10[4] = v6;
        v9 = [v3 childWithContinuation:v10];
        [v6 updateTwoFingerPanWithTranslation:v9 executionContext:{*(a1 + 48), *(a1 + 56)}];
      }

      break;
    case 2:
      [*(a1 + 32) updateTwoFingerPanWithTranslation:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
      break;
    case 1:
      [*(a1 + 32) beginTwoFingerCursorPanWithTranslation:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
      break;
    default:
      [*(a1 + 32) cancelTwoFingerPanWithExecutionContext:v3];
      break;
  }
}

void __88___UIKeyboardTextSelectionInteraction_indirectBlockPanGestureWithState_withTranslation___block_invoke()
{
  v0 = [&__block_literal_global_72_1 copy];
  v1 = qword_1ED498F08;
  qword_1ED498F08 = v0;
}

void __88___UIKeyboardTextSelectionInteraction_indirectBlockPanGestureWithState_withTranslation___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  switch(v5)
  {
    case 3:
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __88___UIKeyboardTextSelectionInteraction_indirectBlockPanGestureWithState_withTranslation___block_invoke_4;
      v8[3] = &unk_1E70FD058;
      v8[4] = v6;
      v7 = [v3 childWithContinuation:v8];
      [v6 updateIndirectBlockPanWithTranslation:v7 executionContext:{*(a1 + 48), *(a1 + 56)}];

      break;
    case 2:
      [*(a1 + 32) updateIndirectBlockPanWithTranslation:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
      break;
    case 1:
      [*(a1 + 32) beginIndirectBlockPanWithTranslation:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
      break;
    default:
      [*(a1 + 32) endIndirectBlockPanWithExecutionContext:v3];
      break;
  }
}

void __93___UIKeyboardTextSelectionInteraction_beginIndirectBlockPanWithTranslation_executionContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 selectionController];
  [v3 beginSelection];

  [v4 returnExecutionToParent];
}

void __88___UIKeyboardTextSelectionInteraction_handleTwoFingerFlickInDirection_executionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];

  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = [*(a1 + 32) selectionController];
    v5 = v4;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
    if (v3 == 1)
    {
      [v4 selectPositionAtBoundary:v6 inDirection:v7 executionContext:v8];
    }

    else
    {
      [v4 selectImmediatePositionAtBoundary:v6 inDirection:v7 executionContext:v8];
    }

    v10 = [*(a1 + 32) selectionController];
    [v10 scrollSelectionToVisible];
  }

  else
  {
    v9 = *(a1 + 40);

    [v9 returnExecutionToParent];
  }
}

void __70___UIKeyboardTextSelectionInteraction_clearKeyboardTouchesForGesture___block_invoke()
{
  v0 = [&__block_literal_global_76_2 copy];
  v1 = qword_1ED498F18;
  qword_1ED498F18 = v0;
}

void __70___UIKeyboardTextSelectionInteraction_clearKeyboardTouchesForGesture___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 cancelTouchesForTwoFingerTapGesture:v3];
  [v4 returnExecutionToParent];
}

void __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke()
{
  v0 = [&__block_literal_global_80_2 copy];
  v1 = qword_1ED498F28;
  qword_1ED498F28 = v0;
}

void __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) selectionController];
  [v4 caretRectForCursorPosition];
  IsNull = CGRectIsNull(v33);

  if (IsNull)
  {
LABEL_19:
    [v3 returnExecutionToParent];
    goto LABEL_22;
  }

  v6 = [*(a1 + 32) selectionController];
  [v6 caretRectForCursorPosition];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  if (v15 < v16)
  {
    v18 = 0;
  }

  else
  {
    v17 = [*(a1 + 32) selectionController];
    v18 = [v17 hasRangedSelection];
  }

  if (*(a1 + 64) != 1)
  {
    v21 = [*(a1 + 32) selectionController];
    v19 = [v21 selectionGranularity];

    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

  v19 = [*(a1 + 40) previousRepeatedGranularity];
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = [UITextInteractionAssistant _nextGranularityInCycle:v19 forTouchType:0];
LABEL_10:
  if (v15 < v16 && (*(a1 + 64) & 1) == 0 && ![*(a1 + 40) previousRepeatedGranularity])
  {
    v20 = 2;
  }

  [*(a1 + 40) setPreviousRepeatedGranularity:v20];
  v22 = [*(a1 + 32) selectionController];

  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v12 * 0.5;
  v24 = v14 * 0.5;
  if ((*(a1 + 64) & 1) == 0)
  {
    v25 = [*(a1 + 32) selectionController];
    [v25 beginSelection];
  }

  v26 = v8 + v23;
  v27 = [*(a1 + 32) selectionController];
  if (v20)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_5;
    v29[3] = &unk_1E70FDD10;
    v30 = *(a1 + 64);
    v29[4] = *(a1 + 32);
    v28 = [v3 childWithContinuation:v29];
    [v27 selectTextWithGranularity:v20 atPoint:v28 executionContext:{v26, v10 + v24}];
  }

  else
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_4;
    v31[3] = &unk_1E70FDD10;
    v32 = *(a1 + 64);
    v31[4] = *(a1 + 32);
    v28 = [v3 childWithContinuation:v31];
    [v27 selectPositionAtPoint:v28 executionContext:{v26, v10 + v24}];
  }

LABEL_22:
}

void __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 selectionController];
  v5 = v4;
  if (v2)
  {
    [v4 restartSelection];
  }

  else
  {
    [v4 endSelection];
  }

  [v6 returnExecutionToParent];
}

void __109___UIKeyboardTextSelectionInteraction__granularityExpandingGestureWithTimeInterval_timeGranularity_isMidPan___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 selectionController];
  v5 = v4;
  if (v2)
  {
    [v4 restartSelection];
  }

  else
  {
    [v4 endSelection];
  }

  [v6 returnExecutionToParent];
}

void __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke()
{
  v0 = [&__block_literal_global_86_1 copy];
  v1 = qword_1ED498F38;
  qword_1ED498F38 = v0;
}

void __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v5 == 3)
  {
    [v4 endLongPressWithExecutionContext:v3];
    v6 = [MEMORY[0x1E69D4E18] sharedInstance];
    v7 = v6;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_5;
    v22 = &unk_1E7118CB8;
    v10 = *(a1 + 40);
    v23 = *(a1 + 32);
    v24 = *(a1 + 48);
    v25 = v10;
    v9 = &v19;
LABEL_8:
    [v6 logBlock:v9 domain:{@"com.apple.keyboard.UIKit", v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32}];

    goto LABEL_9;
  }

  if (v5 != 2)
  {
    if (v5 == 1)
    {
      [v4 beginLongPressWithTranslation:*(a1 + 64) touchCount:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
      v6 = [MEMORY[0x1E69D4E18] sharedInstance];
      v7 = v6;
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_4;
      v29 = &unk_1E7118CB8;
      v8 = *(a1 + 40);
      v30 = *(a1 + 32);
      v31 = *(a1 + 48);
      v32 = v8;
      v9 = &v26;
    }

    else
    {
      [v4 cancelLongPressWithExecutionContext:v3];
      v6 = [MEMORY[0x1E69D4E18] sharedInstance];
      v7 = v6;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_6;
      v15 = &unk_1E7118CB8;
      v11 = *(a1 + 40);
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = v11;
      v9 = &v12;
    }

    goto LABEL_8;
  }

  [v4 updateLongPressWithTranslation:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
LABEL_9:
}

id __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_4(uint64_t a1)
{
  v21[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 40), *(a1 + 48)}];
  v3 = v2;
  v5 = v4;
  v21[0] = @"KeyboardTextSelection";
  v20[0] = @"KeyboardEventType";
  v20[1] = @"Operation";
  v6 = [*(a1 + 32) owner];
  v7 = [v6 delegate];
  v8 = [v7 textSelectionController];
  v9 = [v8 hasRangedSelection];
  v10 = MEMORY[0x1E69D9C08];
  if (!v9)
  {
    v10 = MEMORY[0x1E69D9C10];
  }

  v21[1] = *v10;
  v20[2] = @"TriggerType";
  v11 = [*(a1 + 32) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v11);
  v13 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v13 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v14 = [@"Two fingers" stringByAppendingString:*v13];
  v21[2] = v14;
  v20[3] = @"CursorLocationX";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v21[3] = v15;
  v20[4] = @"CursorLocationY";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v21[4] = v16;
  v20[5] = @"GestureState";
  v17 = _UIGestureRecognizerStateString(*(a1 + 56));
  v21[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];

  return v18;
}

id __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_5(uint64_t a1)
{
  v21[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 40), *(a1 + 48)}];
  v3 = v2;
  v5 = v4;
  v21[0] = @"KeyboardTextSelection";
  v20[0] = @"KeyboardEventType";
  v20[1] = @"Operation";
  v6 = [*(a1 + 32) owner];
  v7 = [v6 delegate];
  v8 = [v7 textSelectionController];
  v9 = [v8 hasRangedSelection];
  v10 = MEMORY[0x1E69D9C08];
  if (!v9)
  {
    v10 = MEMORY[0x1E69D9C10];
  }

  v21[1] = *v10;
  v20[2] = @"TriggerType";
  v11 = [*(a1 + 32) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v11);
  v13 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v13 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v14 = [@"Two fingers" stringByAppendingString:*v13];
  v21[2] = v14;
  v20[3] = @"CursorLocationX";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v21[3] = v15;
  v20[4] = @"CursorLocationY";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v21[4] = v16;
  v20[5] = @"GestureState";
  v17 = _UIGestureRecognizerStateString(*(a1 + 56));
  v21[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:6];

  return v18;
}

id __92___UIKeyboardTextSelectionInteraction_longPressGestureWithState_withTranslation_touchCount___block_invoke_6(uint64_t a1)
{
  v16[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 40), *(a1 + 48)}];
  v3 = v2;
  v5 = v4;
  v15[0] = @"KeyboardEventType";
  v15[1] = @"Operation";
  v16[0] = @"KeyboardTextSelection";
  v16[1] = @"Cancel cursor";
  v15[2] = @"TriggerType";
  v6 = [*(a1 + 32) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v6);
  v8 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v8 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v9 = [@"Two fingers" stringByAppendingString:*v8];
  v16[2] = v9;
  v15[3] = @"CursorLocationX";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v16[3] = v10;
  v15[4] = @"CursorLocationY";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v16[4] = v11;
  v15[5] = @"GestureState";
  v12 = _UIGestureRecognizerStateString(*(a1 + 56));
  v16[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];

  return v13;
}

void __122___UIKeyboardTextSelectionInteraction_indirectPanGestureWithState_withTranslation_withFlickDirection_isShiftKeyBeingHeld___block_invoke()
{
  v0 = [&__block_literal_global_97_1 copy];
  v1 = qword_1ED498F48;
  qword_1ED498F48 = v0;
}

void __122___UIKeyboardTextSelectionInteraction_indirectPanGestureWithState_withTranslation_withFlickDirection_isShiftKeyBeingHeld___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    if (v5 == 1)
    {
      v6 = [*(a1 + 32) owner];
      v7 = [v6 didFloatCursor];

      if (v7)
      {
        [v4 returnExecutionToParent];
        goto LABEL_15;
      }

LABEL_10:
      [*(a1 + 32) beginTwoFingerPanWithTranslation:*(a1 + 72) isShiftKeyBeingHeld:v4 executionContext:{*(a1 + 48), *(a1 + 56)}];
      goto LABEL_15;
    }

LABEL_11:
    [*(a1 + 32) cancelTwoFingerPanWithExecutionContext:v3];
    goto LABEL_15;
  }

  if (v5 == 2)
  {
    [*(a1 + 32) updateTwoFingerPanWithTranslation:v3 executionContext:{*(a1 + 48), *(a1 + 56)}];
    goto LABEL_15;
  }

  if (v5 != 3)
  {
    goto LABEL_11;
  }

  v8 = *(a1 + 32);
  if (*(a1 + 64))
  {
    v9 = [*(a1 + 32) layoutDirectionFromFlickDirection:?];
    v10 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __122___UIKeyboardTextSelectionInteraction_indirectPanGestureWithState_withTranslation_withFlickDirection_isShiftKeyBeingHeld___block_invoke_4;
    v13[3] = &unk_1E70FD058;
    v13[4] = v10;
    v11 = [v4 childWithContinuation:v13];
    [v10 handleTwoFingerFlickInDirection:v9 executionContext:v11];
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __122___UIKeyboardTextSelectionInteraction_indirectPanGestureWithState_withTranslation_withFlickDirection_isShiftKeyBeingHeld___block_invoke_5;
    v12[3] = &unk_1E70FD058;
    v12[4] = v8;
    v11 = [v3 childWithContinuation:v12];
    [v8 updateTwoFingerPanWithTranslation:v11 executionContext:{*(a1 + 48), *(a1 + 56)}];
  }

LABEL_15:
}

id __57___UIKeyboardTextSelectionInteraction_oneFingerForcePan___block_invoke(uint64_t a1)
{
  v17[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 56), *(a1 + 64)}];
  v3 = v2;
  v5 = v4;
  v17[0] = @"KeyboardTextSelection";
  v16[0] = @"KeyboardEventType";
  v16[1] = @"Operation";
  v6 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 40) previousRepeatedGranularity]);
  v17[1] = v6;
  v16[2] = @"TriggerType";
  v7 = [*(a1 + 48) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v7);
  v9 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v9 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v10 = [@"Force pan" stringByAppendingString:*v9];
  v17[2] = v10;
  v16[3] = @"CursorLocationX";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v17[3] = v11;
  v16[4] = @"CursorLocationY";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v17[4] = v12;
  v16[5] = @"GestureState";
  v13 = _UIGestureRecognizerStateString([*(a1 + 48) state]);
  v17[5] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  return v14;
}

id __57___UIKeyboardTextSelectionInteraction_oneFingerForcePan___block_invoke_2(uint64_t a1)
{
  v10[6] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 48), *(a1 + 56)}];
  v3 = v2;
  v9[0] = @"KeyboardEventType";
  v9[1] = @"Operation";
  v10[0] = @"KeyboardTextSelection";
  v10[1] = @"End selection gesture";
  v10[2] = @"Force pan";
  v9[2] = @"TriggerType";
  v9[3] = @"CursorLocationX";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v10[3] = v4;
  v9[4] = @"CursorLocationY";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v10[4] = v5;
  v9[5] = @"GestureState";
  v6 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v10[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

id __52___UIKeyboardTextSelectionInteraction_twoFingerTap___block_invoke(uint64_t a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[0] = @"KeyboardTextSelection";
  v8[0] = @"KeyboardEventType";
  v8[1] = @"Operation";
  v2 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 32) previousRepeatedGranularity]);
  v9[1] = v2;
  v8[2] = @"TriggerType";
  v3 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!*(a1 + 48))
  {
    v3 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v4 = [@"Two fingers" stringByAppendingString:*v3];
  v9[2] = v4;
  v8[3] = @"GestureState";
  v5 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v8[4] = @"Count";
  v9[3] = v5;
  v9[4] = &unk_1EFE31FC0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  return v6;
}

id __52___UIKeyboardTextSelectionInteraction_twoFingerTap___block_invoke_2(uint64_t a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"KeyboardTextSelection";
  v11[0] = @"KeyboardEventType";
  v11[1] = @"Operation";
  v2 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 32) previousRepeatedGranularity]);
  v12[1] = v2;
  v11[2] = @"TriggerType";
  v3 = [*(a1 + 40) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v3);
  v5 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v5 = UIKBAnalyticsGestureIsOnCanvas;
  }

  v6 = [@"Two fingers" stringByAppendingString:*v5];
  v12[2] = v6;
  v11[3] = @"GestureState";
  v7 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v12[3] = v7;
  v11[4] = @"Count";
  v8 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 48)];
  v12[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

id __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke(uint64_t a1)
{
  v18[7] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([*(a1 + 32) isSpacePan])
  {
    v3 = UIKBAnalyticsSpaceBarPan;
  }

  else
  {
    GestureKeyboardFlag = _getGestureKeyboardFlag(*(a1 + 40));
    v3 = UIKBAnalyticsOneFingerTap;
    if ((GestureKeyboardFlag & 4) == 0)
    {
      v3 = UIKBAnalyticsTwoFingerTap;
    }
  }

  [v2 appendString:*v3];
  v5 = [*(a1 + 40) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v5);
  v7 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v7 = UIKBAnalyticsGestureIsOnCanvas;
  }

  [v2 appendString:*v7];

  v18[0] = @"TextEditing";
  v17[0] = @"KeyboardEventType";
  v17[1] = @"Operation";
  v8 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 32) previousRepeatedGranularity]);
  v18[1] = v8;
  v18[2] = v2;
  v17[2] = @"TriggerType";
  v17[3] = @"GestureState";
  v9 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v18[3] = v9;
  v17[4] = @"CursorLocationX";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v18[4] = v10;
  v17[5] = @"CursorLocationY";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v18[5] = v11;
  v17[6] = @"UsingShiftKey";
  v12 = MEMORY[0x1E696AD98];
  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "isShiftKeyBeingHeld")}];
  v18[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v15;
}

id __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke_2(uint64_t a1)
{
  v18[7] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([*(a1 + 32) isSpacePan])
  {
    v3 = UIKBAnalyticsSpaceBarPan;
  }

  else
  {
    GestureKeyboardFlag = _getGestureKeyboardFlag(*(a1 + 40));
    v3 = UIKBAnalyticsOneFingerTap;
    if ((GestureKeyboardFlag & 4) == 0)
    {
      v3 = UIKBAnalyticsTwoFingerTap;
    }
  }

  [v2 appendString:*v3];
  v5 = [*(a1 + 40) view];
  isViewKeyboardLayoutPresent = _isViewKeyboardLayoutPresent(v5);
  v7 = UIKBAnalyticsGestureIsOnKeyboard;
  if (!isViewKeyboardLayoutPresent)
  {
    v7 = UIKBAnalyticsGestureIsOnCanvas;
  }

  [v2 appendString:*v7];

  v18[0] = @"TextEditing";
  v17[0] = @"KeyboardEventType";
  v17[1] = @"Operation";
  v8 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 32) previousRepeatedGranularity]);
  v18[1] = v8;
  v18[2] = v2;
  v17[2] = @"TriggerType";
  v17[3] = @"GestureState";
  v9 = _UIGestureRecognizerStateString([*(a1 + 40) state]);
  v18[3] = v9;
  v17[4] = @"CursorLocationX";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v18[4] = v10;
  v17[5] = @"CursorLocationY";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v18[5] = v11;
  v17[6] = @"UsingShiftKey";
  v12 = MEMORY[0x1E696AD98];
  v13 = +[UIKeyboardImpl activeInstance];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "isShiftKeyBeingHeld")}];
  v18[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v15;
}

void __54___UIKeyboardTextSelectionInteraction_panningGesture___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) recognizerForName:@"_UIKeyboardTextSelectionGestureForcePress"];
  [v2 setShouldFailWithoutForce:{objc_msgSend(*(a1 + 40), "oneFingerForcePressShouldFailWithoutForce")}];
  [*(a1 + 32) _didEndIndirectSelectionGesture:*(a1 + 48)];
  [*(a1 + 32) _clearTouchPadCallback];
}

void __73___UIKeyboardTextSelectionInteraction__startTouchPadTimerWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelTouchPadTimer];
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  [*(a1 + 32) _clearTouchPadCallback];
  v2[2]();
}

id __59___UIKeyboardTextSelectionInteraction_oneFingerForcePress___block_invoke(uint64_t a1)
{
  v16[7] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cursorLocationForTranslation:{*(a1 + 56), *(a1 + 64)}];
  v3 = v2;
  v5 = v4;
  v16[0] = @"KeyboardTextSelection";
  v15[0] = @"KeyboardEventType";
  v15[1] = @"Operation";
  v6 = UIKBAnalyticsSelectionTypeForGranularity([*(a1 + 40) previousRepeatedGranularity]);
  v16[1] = v6;
  v16[2] = @"Force press";
  v15[2] = @"TriggerType";
  v15[3] = @"Count";
  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = *(v7 + 152);
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v16[3] = v9;
  v15[4] = @"GestureState";
  v10 = UIKBAnalyticsSelectionTypeForGestureState([*(a1 + 40) panGestureState]);
  v16[4] = v10;
  v15[5] = @"CursorLocationX";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v16[5] = v11;
  v15[6] = @"CursorLocationY";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v16[6] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:7];

  return v13;
}

@end
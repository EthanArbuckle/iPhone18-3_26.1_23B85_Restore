@interface UIKeyboardAsyncTextSelectionController
@end

@implementation UIKeyboardAsyncTextSelectionController

void __82___UIKeyboardAsyncTextSelectionController_selectPositionAtPoint_executionContext___block_invoke(uint64_t a1)
{
  if (qword_1ED49F608 != -1)
  {
    dispatch_once(&qword_1ED49F608, &__block_literal_global_415);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __82___UIKeyboardAsyncTextSelectionController_selectPositionAtPoint_executionContext___block_invoke_4;
  v4[3] = &unk_1E70FD460;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 transferExecutionToMainThreadWithTask:v4 breadcrumb:_MergedGlobals_1210];
}

void __82___UIKeyboardAsyncTextSelectionController_selectPositionAtPoint_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_3_5 copy];
  v1 = _MergedGlobals_1210;
  _MergedGlobals_1210 = v0;
}

void __82___UIKeyboardAsyncTextSelectionController_selectPositionAtPoint_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) inputDelegate];
  v4 = [v3 selectedTextRange];
  v5 = [v4 start];
  [*(a1 + 32) setCursorPosition:v5];

  [*(a1 + 32) setSelectionGranularity:0];
  v6 = [*(a1 + 40) conformsToProtocolCached:&unk_1F016C810];
  v7 = *(a1 + 40);
  if (v6)
  {
    if (![v7 hasMarkedText])
    {
      goto LABEL_10;
    }

    v8 = *(a1 + 40);
    [v8 updateCurrentSelectionTo:14 fromGesture:2 inState:{*(a1 + 48), *(a1 + 56)}];
    v9 = [*(a1 + 32) inputDelegate];
    v10 = [v9 inputDelegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

    v12 = [*(a1 + 32) inputDelegate];
    v13 = [v12 inputDelegate];
    [v13 didChangePhraseBoundary];

LABEL_8:
LABEL_9:

    goto LABEL_10;
  }

  [v7 conformsToProtocolCached:&unk_1F0139608];
  if ([*(a1 + 40) hasMarkedText])
  {
    [*(a1 + 40) changeSelectionWithGestureAt:14 withGesture:2 withState:{*(a1 + 48), *(a1 + 56)}];
    v14 = [*(a1 + 32) inputDelegate];
    v15 = [v14 inputDelegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v8 = [*(a1 + 32) inputDelegate];
      v12 = [v8 inputDelegate];
      [v12 didChangePhraseBoundary];
      goto LABEL_8;
    }
  }

LABEL_10:
  [v17 returnExecutionToParent];
}

uint64_t __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke(uint64_t a1)
{
  if (qword_1ED49F618 != -1)
  {
    dispatch_once(&qword_1ED49F618, &__block_literal_global_398);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_4;
  v4[3] = &unk_1E70FD058;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 transferExecutionToMainThreadWithTask:v4 breadcrumb:qword_1ED49F610];
}

void __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_400 copy];
  v1 = qword_1ED49F610;
  qword_1ED49F610 = v0;
}

void __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 inputDelegate];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  [*(a1 + 32) setCursorPosition:v6];

  [*(a1 + 32) setSelectionGranularity:0];
  v7 = [*(a1 + 32) interactionAssistant];
  [v7 scrollSelectionToVisible:0];

  [v8 returnExecutionToParent];
}

uint64_t __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_5(uint64_t a1)
{
  if (qword_1ED49F628 != -1)
  {
    dispatch_once(&qword_1ED49F628, &__block_literal_global_402);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_8;
  v4[3] = &unk_1E70FD058;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 transferExecutionToMainThreadWithTask:v4 breadcrumb:qword_1ED49F620];
}

void __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_6()
{
  v0 = [&__block_literal_global_404 copy];
  v1 = qword_1ED49F620;
  qword_1ED49F620 = v0;
}

void __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 inputDelegate];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  [*(a1 + 32) setCursorPosition:v6];

  [*(a1 + 32) setSelectionGranularity:0];
  v7 = [*(a1 + 32) interactionAssistant];
  [v7 scrollSelectionToVisible:0];

  [v8 returnExecutionToParent];
}

uint64_t __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_9(uint64_t a1)
{
  if (qword_1ED49F638 != -1)
  {
    dispatch_once(&qword_1ED49F638, &__block_literal_global_406);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_12;
  v4[3] = &unk_1E70FD058;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 transferExecutionToMainThreadWithTask:v4 breadcrumb:qword_1ED49F630];
}

void __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_10()
{
  v0 = [&__block_literal_global_408 copy];
  v1 = qword_1ED49F630;
  qword_1ED49F630 = v0;
}

void __117___UIKeyboardAsyncTextSelectionController_selectPositionAtBoundary_inDirection_relativeToSelection_executionContext___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 inputDelegate];
  v5 = [v4 selectedTextRange];
  v6 = [v5 start];
  [*(a1 + 32) setCursorPosition:v6];

  [*(a1 + 32) setSelectionGranularity:0];
  v7 = [*(a1 + 32) interactionAssistant];
  [v7 scrollSelectionToVisible:0];

  [v8 returnExecutionToParent];
}

_BYTE *__94___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_executionContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1ED49F648 != -1)
    {
      dispatch_once(&qword_1ED49F648, &__block_literal_global_410);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_executionContext___block_invoke_4;
    v6[3] = &unk_1E70FDAE0;
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v6[4] = *(a1 + 40);
    v6[5] = v3;
    return [v2 transferExecutionToMainThreadWithTask:v6 breadcrumb:qword_1ED49F640];
  }

  else
  {
    [*(a1 + 40) setSelectionGranularity:*(a1 + 48)];
    [*(a1 + 40) showSelectionView];
    v5 = [*(a1 + 40) selectionInteractionAssistant];
    [v5 updateSelectionRects:1];

    [*(a1 + 40) scrollSelectionToVisible];
    result = *(a1 + 40);
    if (result[96] == 1)
    {

      return [result showSelectionCommands];
    }
  }

  return result;
}

void __94___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_412 copy];
  v1 = qword_1ED49F640;
  qword_1ED49F640 = v0;
}

void __94___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  [v4 setSelectionGranularity:v3];
  [*(a1 + 32) scrollSelectionToVisible];
  [v5 returnExecutionToParent];
}

uint64_t __95___UIKeyboardAsyncTextSelectionController_selectTextWithGranularity_atPoint_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1 && [*(a1 + 32) isEmpty])
  {
    v2 = [*(a1 + 40) inputDelegate];
    v3 = [v2 _rangeOfSmartSelectionIncludingRange:*(a1 + 32)];

    if (v3 && ([v3 isEmpty] & 1) == 0)
    {
      v4 = [*(a1 + 40) inputDelegate];
      [v4 setSelectedTextRange:v3];
    }
  }

  [*(a1 + 40) setSelectionGranularity:*(a1 + 56)];
  [*(a1 + 40) showSelectionView];
  v5 = [*(a1 + 40) selectionInteractionAssistant];
  [v5 updateSelectionRects:1];

  [*(a1 + 40) scrollSelectionToVisible];
  v6 = *(a1 + 40);
  if (v6[96] == 1)
  {
    [v6 showSelectionCommands];
  }

  result = *(a1 + 48);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

uint64_t __132___UIKeyboardAsyncTextSelectionController_beginSelectionWithBaseAtSelectionBoundaryInDirection_initialExtentPoint_executionContext___block_invoke(uint64_t a1, char a2)
{
  if (qword_1ED49F658 != -1)
  {
    dispatch_once(&qword_1ED49F658, &__block_literal_global_417_0);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __132___UIKeyboardAsyncTextSelectionController_beginSelectionWithBaseAtSelectionBoundaryInDirection_initialExtentPoint_executionContext___block_invoke_4;
  v6[3] = &unk_1E70FDD10;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = a2;
  return [v4 transferExecutionToMainThreadWithTask:v6 breadcrumb:qword_1ED49F650];
}

void __132___UIKeyboardAsyncTextSelectionController_beginSelectionWithBaseAtSelectionBoundaryInDirection_initialExtentPoint_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_419 copy];
  v1 = qword_1ED49F650;
  qword_1ED49F650 = v0;
}

void __132___UIKeyboardAsyncTextSelectionController_beginSelectionWithBaseAtSelectionBoundaryInDirection_initialExtentPoint_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v16 = a2;
  v4 = [v3 inputDelegate];
  v5 = [*(a1 + 32) inputDelegate];
  v6 = [v5 selectedTextRange];
  v7 = [v6 start];
  [v4 caretRectForPosition:v7];

  v8 = [*(a1 + 32) inputDelegate];
  v9 = [*(a1 + 32) inputDelegate];
  v10 = [v9 selectedTextRange];
  v11 = [v10 end];
  [v8 caretRectForPosition:v11];

  LOBYTE(v10) = *(a1 + 40);
  v12 = [*(a1 + 32) inputDelegate];
  v13 = [v12 selectedTextRange];
  v14 = v13;
  if (v10)
  {
    [v13 end];
  }

  else
  {
    [v13 start];
  }
  v15 = ;
  [*(a1 + 32) setCursorPosition:v15];

  [*(a1 + 32) setSelectionGranularity:0];
  [v16 returnExecutionToParent];
}

uint64_t __91___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_executionContext___block_invoke(uint64_t a1, char a2)
{
  if (qword_1ED49F668 != -1)
  {
    dispatch_once(&qword_1ED49F668, &__block_literal_global_422);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __91___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_executionContext___block_invoke_4;
  v6[3] = &unk_1E70FDD10;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = a2;
  return [v4 transferExecutionToMainThreadWithTask:v6 breadcrumb:qword_1ED49F660];
}

void __91___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_424 copy];
  v1 = qword_1ED49F660;
  qword_1ED49F660 = v0;
}

void __91___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v16 = a2;
  v4 = [v3 inputDelegate];
  v5 = [*(a1 + 32) inputDelegate];
  v6 = [v5 selectedTextRange];
  v7 = [v6 start];
  [v4 caretRectForPosition:v7];

  v8 = [*(a1 + 32) inputDelegate];
  v9 = [*(a1 + 32) inputDelegate];
  v10 = [v9 selectedTextRange];
  v11 = [v10 end];
  [v8 caretRectForPosition:v11];

  LOBYTE(v10) = *(a1 + 40);
  v12 = [*(a1 + 32) inputDelegate];
  v13 = [v12 selectedTextRange];
  v14 = v13;
  if (v10)
  {
    [v13 end];
  }

  else
  {
    [v13 start];
  }
  v15 = ;
  [*(a1 + 32) setCursorPosition:v15];

  [*(a1 + 32) setSelectionGranularity:0];
  [v16 returnExecutionToParent];
}

uint64_t __104___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_withBoundary_executionContext___block_invoke(uint64_t a1, char a2)
{
  if (qword_1ED49F678 != -1)
  {
    dispatch_once(&qword_1ED49F678, &__block_literal_global_429_0);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __104___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_withBoundary_executionContext___block_invoke_4;
  v6[3] = &unk_1E70FDD10;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = a2;
  return [v4 transferExecutionToMainThreadWithTask:v6 breadcrumb:qword_1ED49F670];
}

void __104___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_withBoundary_executionContext___block_invoke_2()
{
  v0 = [&__block_literal_global_431 copy];
  v1 = qword_1ED49F670;
  qword_1ED49F670 = v0;
}

void __104___UIKeyboardAsyncTextSelectionController_updateSelectionWithExtentPoint_withBoundary_executionContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v9 = a2;
  v5 = [v4 inputDelegate];
  v6 = [v5 selectedTextRange];
  v7 = v6;
  if (v3)
  {
    [v6 end];
  }

  else
  {
    [v6 start];
  }
  v8 = ;
  [*(a1 + 32) setCursorPosition:v8];

  [*(a1 + 32) setSelectionGranularity:0];
  [v9 returnExecutionToParent];
}

@end
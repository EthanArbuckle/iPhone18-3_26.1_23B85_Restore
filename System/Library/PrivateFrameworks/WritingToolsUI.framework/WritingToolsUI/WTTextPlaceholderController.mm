@interface WTTextPlaceholderController
@end

@implementation WTTextPlaceholderController

void __95___WTTextPlaceholderController__insertPlaceholderAndBeginShimmerWithCaretRect_placeholderSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
    v6 = v3;

    [*(a1 + 32) _beginShowingShimmerHighlightsWithCaretRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __95___WTTextPlaceholderController__insertPlaceholderAndBeginShimmerWithCaretRect_placeholderSize___block_invoke_2;
    v9[3] = &unk_1E8481048;
    v9[4] = *(a1 + 32);
    v10 = v3;
    v7 = *(a1 + 56);
    v11 = *(a1 + 40);
    v12 = v7;
    v8 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

uint64_t __95___WTTextPlaceholderController__insertPlaceholderAndBeginShimmerWithCaretRect_placeholderSize___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);

  return [v2 _beginShowingShimmerHighlightsWithCaretRect:{v3, v4, v5, v6}];
}

void __79___WTTextPlaceholderController__visualRectsForRects_containerBounds_caretRect___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 count] - 1 == a3;
  v8 = *(a1 + 80);
  [*(a1 + 40) _widthRatioForIteration:*(*(*(a1 + 56) + 8) + 24) isFinal:v7];
  v10 = v8 * v9;
  [v6 rect];
  MinX = CGRectGetMinX(v24);
  [v6 rect];
  MinY = CGRectGetMinY(v25);
  [v6 rect];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v26.origin.x = v14;
  v26.origin.y = v16;
  v26.size.width = v18;
  v26.size.height = v20;
  Height = CGRectGetHeight(v26);
  if (*(a1 + 96) == 1)
  {
    MinX = *(a1 + 80) - v10;
  }

  v22 = *(a1 + 48);
  v23 = [WTTextSelectionRect rectWithRect:MinX, MinY + 1.5, v10, Height + -1.5 + -1.5];
  [v22 addObject:v23];

  ++*(*(*(a1 + 56) + 8) + 24);
}

uint64_t __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v7 = WeakRetained;
  if (WeakRetained[2])
  {
    [WeakRetained[1] removeTextPlaceholder:?];
    v4 = v7[2];
    v7[2] = 0;

    v3 = v7;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  return MEMORY[0x1EEE66BB8]();
}

void __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v4 = WeakRetained[2];
  if (v4)
  {
    v5 = WeakRetained[1];
    v6 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_3;
    v8[3] = &unk_1E8480DD0;
    v8[4] = WeakRetained;
    v9 = *(a1 + 32);
    [v5 removeTextPlaceholder:v4 willInsertText:v6 completionHandler:v8];
  }

  else
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }
}

void __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_3(uint64_t a1)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 16);
    *(v2 + 16) = 0;

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_4;
    v7[3] = &unk_1E8480DD0;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

uint64_t __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __75___WTTextPlaceholderController_endPlaceholderAndWillInsertText_completion___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained[2];
  v5 = WeakRetained;
  WeakRetained[2] = 0;

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void __75___WTTextPlaceholderController__endShowingShimmerHighlightsWithCompletion___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *(WeakRetained + 8);
  *(WeakRetained + 8) = 0;

  [*(WeakRetained + 3) removeFromSuperview];
  v3 = *(WeakRetained + 3);
  *(WeakRetained + 3) = 0;

  os_unfair_lock_lock(WeakRetained + 18);
  v4 = [*(WeakRetained + 6) copy];
  [*(WeakRetained + 6) removeAllObjects];
  os_unfair_lock_unlock(WeakRetained + 18);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end
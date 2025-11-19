@interface UIInternalDraggingSessionSource
@end

@implementation UIInternalDraggingSessionSource

void __46___UIInternalDraggingSessionSource_beginDrag___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    *(*(a1 + 32) + 116) = a2;
    objc_storeStrong((*(a1 + 32) + 56), a3);
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _didBeginDrag];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setState:3];
    [*(a1 + 32) setDruidConnection:0];
  }
}

void __94___UIInternalDraggingSessionSource__sendDragPreviewReplyWithIndexSet_dragPreviews_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 88))
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    if (*(v2 + 48))
    {
      v4 = 0;
    }

    else
    {
      v4 = +[UIScene _synchronizedDrawingFence];
      *(*(a1 + 32) + 48) = 1;
      [*(a1 + 32) _sendHandedOffDragImage];
      v2 = *(a1 + 32);
    }

    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94___UIInternalDraggingSessionSource__sendDragPreviewReplyWithIndexSet_dragPreviews_completion___block_invoke_2;
    v6[3] = &unk_1E70F3B48;
    v6[4] = v2;
    [v5 enumerateIndexesUsingBlock:v6];
    (*(*(a1 + 56) + 16))();
  }
}

void __94___UIInternalDraggingSessionSource__sendDragPreviewReplyWithIndexSet_dragPreviews_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) internalItems];
  v5 = [v4 objectAtIndexedSubscript:a2];

  [*(a1 + 32) _sendHandedOffDragImageForItem:v5];
}

void __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained && (WeakRetained[88] & 1) == 0)
  {
    v8 = [WeakRetained internalItems];
    v9 = dragPreviewsOfItems(v8, v10, v7);
    [v7 _sendDragPreviewReplyWithIndexSet:v10 dragPreviews:v9 completion:v5];
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

void __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatedPresentation:v3];
}

uint64_t __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!WeakRetained || WeakRetained[48] != 1)
  {
    goto LABEL_13;
  }

  v8 = [UIApp _canAnimateDragCancelInApp];
  v9 = v7[90];
  if (v9 != 1 || v8 == 0)
  {
    if (((v9 ^ 1) & v8) != 1)
    {
      goto LABEL_13;
    }
  }

  else if ((v7[89] & 1) == 0)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (![v7 _canHandOffCancelledItems:v5])
  {
    goto LABEL_13;
  }

  [v7 _setupAnimationForCancelledItems:v5 returningLayerContext:a3];
  v11 = 1;
LABEL_14:

  return v11;
}

void __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [UIScene _synchronizeDrawingWithFence:v7];
    [WeakRetained _handOffCancelledItems:v10 completion:v8];
    WeakRetained[10] = 5;
  }
}

void __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_5(uint64_t a1, unint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (a2 >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2 + 4;
    }

    v7 = WeakRetained;
    [WeakRetained setResultOperation:a3];
    WeakRetained = v7;
    if (v7[9])
    {
      v7[10] = v6;
    }

    else
    {
      [v7 setState:v6];
      WeakRetained = v7;
    }
  }
}

void __49___UIInternalDraggingSessionSource__didBeginDrag__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _sendDataTransferFinished];
    v2 = [v3 dragManager];
    [v2 sessionSourceDidEnd:v3];

    WeakRetained = v3;
  }
}

void __50___UIInternalDraggingSessionSource_dragDidExitApp__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained state] == 2;
    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 druidConnection];
      [v3 dragDidExitApp];

      WeakRetained = v4;
    }
  }
}

uint64_t __91___UIInternalDraggingSessionSource__setupAnimationForCancelledItems_returningLayerContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = *(a1 + 32);
  v5 = v4[10];

  return [v4 setState:v5];
}

@end
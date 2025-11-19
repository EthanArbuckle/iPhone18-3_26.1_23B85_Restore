@interface UISlotView
@end

@implementation UISlotView

void *__35___UISlotView__setContentDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _contentDelegate];
  v6 = [v5 currentTagForSlotView:WeakRetained];
  v7 = [v6 resolvedStyleForStyle:v3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v9;
}

void __35___UISlotView__setContentDelegate___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained _contentDelegate];
  v11 = [v10 currentTagForSlotView:WeakRetained];
  if ([v10 slotView:WeakRetained shouldSetInitialContentForStyle:v7 tag:v11])
  {
    v12 = [v10 slotView:WeakRetained initialContentForStyle:v7 tag:v11];
    if (v12)
    {
      v13 = v8[2](v8, v12);
    }

    else
    {
      v13 = 0;
    }

    [v10 slotView:WeakRetained didSetInitialContent:v13 forStyle:v7 tag:v11];
  }

  if ([v10 slotView:WeakRetained shouldSetFinalContentForStyle:v7 tag:v11])
  {
    v14 = [v10 slotMachineForFinalContentInSlotView:WeakRetained];
    if ([v10 shouldGetFinalContentSynchronouslyInSlotView:WeakRetained])
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __35___UISlotView__setContentDelegate___block_invoke_3;
      v22[3] = &unk_1E7124068;
      objc_copyWeak(&v26, (a1 + 32));
      v23 = v7;
      v24 = v11;
      v25 = v8;
      [v14 getRemoteContentForLayerContextWithId:a2 style:v23 tag:v24 reply:v22];

      objc_destroyWeak(&v26);
    }

    else
    {
      v15 = dispatch_get_global_queue(33, 0);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __35___UISlotView__setContentDelegate___block_invoke_4;
      v16[3] = &unk_1E71240B8;
      v17 = v14;
      v21[1] = a2;
      v18 = v7;
      v19 = v11;
      objc_copyWeak(v21, (a1 + 32));
      v20 = v8;
      dispatch_async(v15, v16);

      objc_destroyWeak(v21);
    }
  }
}

void __35___UISlotView__setContentDelegate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained _contentDelegate];
  v5 = [v4 slotView:WeakRetained replacementForFinalContent:v3 style:*(a1 + 32) tag:*(a1 + 40)];

  if (v5)
  {
    v6 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = 0;
  }

  [v4 slotView:WeakRetained didSetFinalContent:v6 forStyle:*(a1 + 32) tag:*(a1 + 40)];
}

void __35___UISlotView__setContentDelegate___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35___UISlotView__setContentDelegate___block_invoke_5;
  v6[3] = &unk_1E7124068;
  objc_copyWeak(&v10, (a1 + 64));
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  [v3 getRemoteContentForLayerContextWithId:v2 style:v4 tag:v5 reply:v6];

  objc_destroyWeak(&v10);
}

void __35___UISlotView__setContentDelegate___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35___UISlotView__setContentDelegate___block_invoke_6;
  block[3] = &unk_1E7124090;
  objc_copyWeak(&v10, a1 + 7);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v10);
}

void __35___UISlotView__setContentDelegate___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [WeakRetained _contentDelegate];
  v3 = [v2 slotView:WeakRetained replacementForFinalContent:*(a1 + 32) style:*(a1 + 40) tag:*(a1 + 48)];
  if (v3)
  {
    v4 = (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = 0;
  }

  [v2 slotView:WeakRetained didSetFinalContent:v4 forStyle:*(a1 + 40) tag:*(a1 + 48)];
}

void __25___UISlotView__slotStyle__block_invoke(void *a1, void *a2)
{
  v7 = a2;
  if (*(*(a1[4] + 8) + 24) == -1)
  {
    *(*(a1[4] + 8) + 24) = [v7 accessibilityContrast];
  }

  if (*(*(a1[5] + 8) + 24) == -1)
  {
    *(*(a1[5] + 8) + 24) = [v7 displayGamut];
  }

  if (*(*(a1[6] + 8) + 24) == 0.0)
  {
    [v7 displayScale];
    *(*(a1[6] + 8) + 24) = v3;
  }

  if (*(*(a1[7] + 8) + 24) == -1)
  {
    *(*(a1[7] + 8) + 24) = [v7 layoutDirection];
  }

  if (*(*(a1[8] + 8) + 24) == -1)
  {
    *(*(a1[8] + 8) + 24) = [v7 legibilityWeight];
  }

  if (*(*(a1[9] + 8) + 40) == @"_UICTContentSizeCategoryUnspecified")
  {
    v4 = [v7 preferredContentSizeCategory];
    v5 = *(a1[9] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  if (*(*(a1[10] + 8) + 24) == -1)
  {
    *(*(a1[10] + 8) + 24) = [v7 userInterfaceIdiom];
  }

  if (!*(*(a1[11] + 8) + 24))
  {
    *(*(a1[11] + 8) + 24) = [v7 userInterfaceStyle];
  }
}

void __34___UISlotView__sharedLayerContext__block_invoke()
{
  v0 = [MEMORY[0x1E69DEC70] newLayerContext];
  v1 = qword_1ED49AD28;
  qword_1ED49AD28 = v0;
}

uint64_t __29___UISlotView__updateContent__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = *(a1 + 40);
  v7 = v4;
  v8 = v7;
  if (WeakRetained && *(WeakRetained + 59) == v6)
  {
    [v7 contentSize];
    if (*(WeakRetained + 56) != v9 || *(WeakRetained + 57) != v10)
    {
      *(WeakRetained + 56) = v9;
      *(WeakRetained + 57) = v10;
      [WeakRetained invalidateIntrinsicContentSize];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0 || [v8 shouldReplaceExistingContent])
    {
      v12 = *(WeakRetained + 58);
      v13 = +[_UISlotView _sharedLayerContext];
      [v12 deleteFromLayerContext:v13];

      objc_storeStrong(WeakRetained + 58, a2);
      v14 = [WeakRetained layer];
      [v14 setNeedsDisplay];
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end
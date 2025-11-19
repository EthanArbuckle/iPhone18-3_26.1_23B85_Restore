@interface UIEditMenuListViewCell
@end

@implementation UIEditMenuListViewCell

void __41___UIEditMenuListViewCell__setupSlotView__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41___UIEditMenuListViewCell__setupSlotView__block_invoke_3;
  block[3] = &unk_1E71162E8;
  v16[1] = a2;
  v13 = v7;
  v14 = *(a1 + 32);
  v10 = v7;
  objc_copyWeak(v16, (a1 + 40));
  v15 = v8;
  v11 = v8;
  dispatch_async(v9, block);

  objc_destroyWeak(v16);
}

void __41___UIEditMenuListViewCell__setupSlotView__block_invoke_3(uint64_t a1)
{
  v2 = [_UIConcretePasteboard _remoteContentForLayerContextWithId:*(a1 + 64) slotStyle:*(a1 + 32) pasteButtonTag:*(a1 + 40)];
  if (v2)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41___UIEditMenuListViewCell__setupSlotView__block_invoke_4;
    block[3] = &unk_1E7103FA8;
    objc_copyWeak(&v6, (a1 + 56));
    v5 = *(a1 + 48);
    v4 = v2;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v6);
  }
}

void __41___UIEditMenuListViewCell__setupSlotView__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained _wantsPasteSlotView] && (*(*(a1 + 40) + 16))())
  {
    [WeakRetained _hideContents];
  }
}

@end
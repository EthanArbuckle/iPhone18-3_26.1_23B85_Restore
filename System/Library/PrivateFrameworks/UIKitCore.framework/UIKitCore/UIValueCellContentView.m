@interface UIValueCellContentView
@end

@implementation UIValueCellContentView

void __44___UIValueCellContentView_setConfiguration___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = 2;
    if (!a2)
    {
      v4 = 1;
    }

    v5 = *(WeakRetained + OBJC_IVAR____UIValueCellContentView__configuration[v4]);
    if (WeakRetained[54] != v5)
    {
      v6 = WeakRetained;
      [(_UIValueCellContentView *)WeakRetained _applyConfiguration:v5];
      WeakRetained = v6;
    }
  }
}

void __44___UIValueCellContentView_setConfiguration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[52];
    WeakRetained[52] = 0;
    v4 = WeakRetained;

    v3 = v4[51];
    v4[51] = 0;

    WeakRetained = v4;
  }
}

uint64_t __92___UIValueCellContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) setNumberOfLines:2];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v3 setBounds:{0.0, 0.0, v2, 99999.0}];
}

void __92___UIValueCellContentView__intrinsicSizeForLabel_inAvailableSpace_outRequiresMultipleLines___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNumberOfLines:*(a1 + 48)];
  if ((*(a1 + 88) & 1) != 0 || ([*(a1 + 40) _isInLayoutSubviews] & 1) == 0 && (objc_msgSend(*(a1 + 40), "layer"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "needsLayout"), v10, (v11 & 1) == 0))
  {
    [*(a1 + 40) bounds];
    if (v3 != *MEMORY[0x1E695F060] || v2 != *(MEMORY[0x1E695F060] + 8))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 64);
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);
      v9 = *(a1 + 32);

      [v9 setBounds:{v5, v6, v7, v8}];
    }
  }
}

@end
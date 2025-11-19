@interface UIStatusBarCellularNetworkTypeView
@end

@implementation UIStatusBarCellularNetworkTypeView

uint64_t __53___UIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) widthConstraint];
  [v3 setConstant:v2];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53___UIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke_2;
  v5[3] = &unk_1E70F3590;
  v5[4] = *(a1 + 32);
  return [UIView animateWithDuration:v5 animations:0.5];
}

void __53___UIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) superview];
  [v1 layoutSubviews];
}

void __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setHidden:0];
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  [*(*(a1 + 32) + 440) setHidden:0];
  if (*(a1 + 72) == 1)
  {
    [*(*(a1 + 32) + 440) setAlpha:0.0];
    v2 = [*(a1 + 40) substringFromIndex:*(a1 + 64)];
    [*(*(a1 + 32) + 440) setText:v2];

    v3 = *(a1 + 48);
    if (v3)
    {
      v7 = [v3 attributesAtIndex:*(a1 + 64) effectiveRange:0];
      v4 = [v7 objectForKeyedSubscript:*off_1E70EC918];
      [*(*(a1 + 32) + 440) setFont:v4];

      v5 = [v7 objectForKeyedSubscript:*off_1E70EC920];
      [*(*(a1 + 32) + 440) setTextColor:v5];
    }

    else
    {
      v6 = [*(a1 + 56) fontForStyle:{objc_msgSend(*(*(a1 + 32) + 424), "fontStyle")}];
      [*(*(a1 + 32) + 440) setFont:v6];

      v7 = [*(a1 + 56) textColor];
      [*(*(a1 + 32) + 440) setTextColor:?];
    }
  }
}

void __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_2(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_3;
  v9[3] = &unk_1E70FF800;
  v7 = *(a1 + 32);
  v2 = *(&v7 + 1);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  v10 = v7;
  v11 = v5;
  v12 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_9;
  v8[3] = &unk_1E70F9B38;
  v6 = *(a1 + 64);
  v8[4] = *(a1 + 32);
  v8[5] = v6;
  [UIView animateWithDuration:v9 animations:v8 completion:0.5];
}

void __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_3(uint64_t a1)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 408) == 1)
  {
    if (*(a1 + 40))
    {
      [*(v1 + 424) setAttributedText:?];
      v3 = [*(a1 + 40) attributesAtIndex:0 effectiveRange:0];
      v4 = *off_1E70EC918;
      v5 = [v3 objectForKeyedSubscript:*off_1E70EC918];
      v6 = *off_1E70EC920;
      v7 = [v3 objectForKeyedSubscript:*off_1E70EC920];
    }

    else
    {
      [*(v1 + 424) setText:*(a1 + 48)];
      [*(*(a1 + 32) + 424) applyStyleAttributes:*(a1 + 56)];
      v5 = [*(a1 + 56) fontForStyle:{objc_msgSend(*(*(a1 + 32) + 424), "fontStyle")}];
      v7 = [*(a1 + 56) textColor];
      v4 = *off_1E70EC918;
      v6 = *off_1E70EC920;
    }

    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [*(*(a1 + 32) + 432) text];
    v13[0] = *off_1E70EC950;
    v13[1] = v4;
    v14[0] = &unk_1EFE2EFD8;
    v14[1] = v5;
    v13[2] = v6;
    v14[2] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v11 = [v8 initWithString:v9 attributes:v10];
    [*(*(a1 + 32) + 432) _setAttributedText:v11];

    v12 = 0.0;
    if (*(a1 + 64))
    {
      v12 = 1.0;
    }

    [*(*(a1 + 32) + 440) setAlpha:v12];
  }
}

uint64_t __109___UIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_9(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 408) == 1)
  {
    v2 = result;
    [*(v1 + 432) setHidden:1];
    [*(*(v2 + 32) + 440) setHidden:1];
    result = [*(*(v2 + 32) + 424) setAlpha:1.0];
    *(*(v2 + 32) + 416) = *(v2 + 40);
    *(*(v2 + 32) + 408) = 0;
  }

  return result;
}

@end
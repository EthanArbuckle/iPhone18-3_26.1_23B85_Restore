@interface UISearchAtomBackgroundView
@end

@implementation UISearchAtomBackgroundView

void __70___UISearchAtomBackgroundView__transitionFromBlurEffect_toBlurEffect___block_invoke(uint64_t a1)
{
  v2 = [[UIVisualEffectView alloc] initWithEffect:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 408);
  *(v3 + 408) = v2;

  [*(a1 + 32) addSubview:*(*(a1 + 32) + 408)];
  [*(a1 + 32) bounds];
  [*(*(a1 + 32) + 408) setFrame:?];
  v5 = *(a1 + 32);
  v6 = v5[51];
  v13 = [v5 layer];
  [v13 cornerRadius];
  v8 = v7;
  v9 = [*(a1 + 32) layer];
  v10 = [v9 cornerCurve];
  v11 = v10 == *MEMORY[0x1E69796E8];
  v12 = [*(a1 + 32) layer];
  [v6 _setCornerRadius:v11 continuous:objc_msgSend(v12 maskedCorners:{"maskedCorners"), v8}];
}

uint64_t __70___UISearchAtomBackgroundView__transitionFromBlurEffect_toBlurEffect___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    objc_storeStrong((*(a1 + 32) + 408), *(a1 + 40));
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 32) + 408);

    return [v5 setEffect:v4];
  }

  else
  {
    v7 = *(*(a1 + 32) + 408);

    return [v7 removeFromSuperview];
  }
}

@end
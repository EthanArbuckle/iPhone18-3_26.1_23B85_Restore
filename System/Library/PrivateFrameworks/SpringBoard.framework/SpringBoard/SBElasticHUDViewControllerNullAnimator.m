@interface SBElasticHUDViewControllerNullAnimator
@end

@implementation SBElasticHUDViewControllerNullAnimator

id __47___SBElasticHUDViewControllerNullAnimator_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc(MEMORY[0x277D75D40]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47___SBElasticHUDViewControllerNullAnimator_init__block_invoke_2;
  v10[3] = &unk_2783A8C18;
  v4 = v2;
  v11 = v4;
  v5 = [v3 initWithDuration:3 curve:v10 animations:0.001];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47___SBElasticHUDViewControllerNullAnimator_init__block_invoke_3;
  v8[3] = &unk_2783ACA48;
  v9 = v4;
  v6 = v4;
  [v5 addCompletion:v8];

  return v5;
}

void __47___SBElasticHUDViewControllerNullAnimator_init__block_invoke_2(uint64_t a1)
{
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v8 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x277D77240]];
  v2 = [*(a1 + 32) viewControllerForKey:*MEMORY[0x277D77230]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v8 view];
    v4 = [*(a1 + 32) containerView];
    [v4 bounds];
    [v3 setFrame:?];

    v5 = [*(a1 + 32) containerView];
    v6 = [v8 view];
    [v5 addSubview:v6];
  }

  v7 = [v2 view];
  [v7 removeFromSuperview];

  [MEMORY[0x277CD9FF0] commit];
}

@end
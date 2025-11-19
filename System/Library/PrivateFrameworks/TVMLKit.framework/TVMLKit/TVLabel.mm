@interface TVLabel
@end

@implementation TVLabel

void __30___TVLabel_setAttributedText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [*(a1 + 32) effectiveUserInterfaceLayoutDirection] == 1;
    v6 = [v4 tintColor];
    [v4 tv_setCurrentTintColor:v6];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30___TVLabel_setAttributedText___block_invoke_2;
    v7[3] = &unk_279D6E890;
    objc_copyWeak(&v8, (a1 + 40));
    [v4 tv_resolveWithTextLayoutDirection:v5 layoutObserver:v7];
    objc_destroyWeak(&v8);
  }
}

void __30___TVLabel_setAttributedText___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsDisplay];
}

void __30___TVLabel_setAttributedText___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v11;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [WeakRetained _accessibilityHigherContrastTintColorForColor:v7];

    v10 = *MEMORY[0x277D740C0];
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D740C0] range:{a3, a4}];
    [*(a1 + 32) addAttribute:v10 value:v9 range:{a3, a4}];
  }
}

void __27___TVLabel_setHighlighted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [*(a1 + 32) effectiveUserInterfaceLayoutDirection] == 1;
    if (*(a1 + 48))
    {
      [v4 tv_highlightColor];
    }

    else
    {
      [v4 tintColor];
    }
    v6 = ;
    [v4 tv_setCurrentTintColor:v6];

    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __27___TVLabel_setHighlighted___block_invoke_2;
    v7[3] = &unk_279D6E890;
    objc_copyWeak(&v8, (a1 + 40));
    [v4 tv_resolveWithTextLayoutDirection:v5 layoutObserver:v7];
    objc_destroyWeak(&v8);
  }
}

void __27___TVLabel_setHighlighted___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsDisplay];
}

@end
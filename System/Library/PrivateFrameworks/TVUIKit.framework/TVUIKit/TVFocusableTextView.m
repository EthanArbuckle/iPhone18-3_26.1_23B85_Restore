@interface TVFocusableTextView
@end

@implementation TVFocusableTextView

id __38___TVFocusableTextView_initWithFrame___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D75C40]);
  v1 = [v0 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setBackgroundColor:0];
  [v1 setTextContainerInset:{0.0, -5.0, 0.0, -5.0}];
  [v1 setScrollEnabled:0];
  [v1 setEditable:0];
  [v1 setUserInteractionEnabled:0];
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setSelectable:0];
  v2 = [v1 layer];
  [v2 setCornerRadius:0.0];

  v3 = [v1 textContainer];
  [v3 setMaximumNumberOfLines:0];

  v4 = [v1 textContainer];
  [v4 setLineBreakMode:4];

  return v1;
}

uint64_t __43___TVFocusableTextView_setDescriptionText___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v15 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x277D74240]);
    }

    v10 = v9;

    [v10 setLineBreakMode:0];
    [v10 setAlignment:4];
    v11 = *MEMORY[0x277D74118];
    [*(a1 + 32) removeAttribute:*MEMORY[0x277D74118] range:{a3, a4}];
    v12 = *(a1 + 32);
    v13 = [v10 copy];
    [v12 addAttribute:v11 value:v13 range:{a3, a4}];
  }

  return MEMORY[0x2821F96F8]();
}

void __43___TVFocusableTextView_setDescriptionText___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

@end
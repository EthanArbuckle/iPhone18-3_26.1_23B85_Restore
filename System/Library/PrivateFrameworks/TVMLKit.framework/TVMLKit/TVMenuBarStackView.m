@interface TVMenuBarStackView
@end

@implementation TVMenuBarStackView

void __40___TVMenuBarStackView_setSelectedIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v7;
    if (v5)
    {
      v6 = v5;
      [v5 setSelected:*(*(a1 + 32) + 448) == a3];
    }
  }
}

void __49___TVMenuBarStackView__buttonEventTouchUpInside___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 32) isEqual:v7])
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end
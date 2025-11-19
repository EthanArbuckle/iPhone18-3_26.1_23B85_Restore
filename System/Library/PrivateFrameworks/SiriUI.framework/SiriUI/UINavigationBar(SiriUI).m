@interface UINavigationBar(SiriUI)
- (void)siriui_customizeAppearanceGivenSAEEnabled:()SiriUI;
@end

@implementation UINavigationBar(SiriUI)

- (void)siriui_customizeAppearanceGivenSAEEnabled:()SiriUI
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if ((SiriSharedUIDeviceIsPad() & 1) == 0)
    {
      v15 = objc_alloc_init(MEMORY[0x277D75788]);
      [a1 setStandardAppearance:v15];
      [a1 setScrollEdgeAppearance:v15];
      [a1 setCompactAppearance:v15];
      [a1 setCompactScrollEdgeAppearance:v15];
      v4 = [a1 _backgroundView];
      v5 = [v4 layer];
      v6 = [MEMORY[0x277D759A0] mainScreen];
      v7 = [v6 traitCollection];
      [v7 displayCornerRadius];
      [v5 setCornerRadius:?];

      v8 = [a1 _backgroundView];
      v9 = [v8 layer];
      [v9 setMaskedCorners:3];

      v10 = [a1 _backgroundView];
      [v10 setClipsToBounds:1];
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D755B8]);
    [a1 setBackgroundImage:v11 forBarMetrics:0];

    v12 = [MEMORY[0x277D75348] whiteColor];
    [a1 setTintColor:v12];
    v16 = *MEMORY[0x277D740C0];
    v17[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [a1 setTitleTextAttributes:v13];

    v14 = [a1 backItem];
    [v14 setTitle:&stru_2879FFD58];

    [a1 _setHidesShadow:1];
  }
}

@end
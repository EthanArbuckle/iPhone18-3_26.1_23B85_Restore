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
      [self setStandardAppearance:v15];
      [self setScrollEdgeAppearance:v15];
      [self setCompactAppearance:v15];
      [self setCompactScrollEdgeAppearance:v15];
      _backgroundView = [self _backgroundView];
      layer = [_backgroundView layer];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      traitCollection = [mainScreen traitCollection];
      [traitCollection displayCornerRadius];
      [layer setCornerRadius:?];

      _backgroundView2 = [self _backgroundView];
      layer2 = [_backgroundView2 layer];
      [layer2 setMaskedCorners:3];

      _backgroundView3 = [self _backgroundView];
      [_backgroundView3 setClipsToBounds:1];
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277D755B8]);
    [self setBackgroundImage:v11 forBarMetrics:0];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [self setTintColor:whiteColor];
    v16 = *MEMORY[0x277D740C0];
    v17[0] = whiteColor;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [self setTitleTextAttributes:v13];

    backItem = [self backItem];
    [backItem setTitle:&stru_2879FFD58];

    [self _setHidesShadow:1];
  }
}

@end
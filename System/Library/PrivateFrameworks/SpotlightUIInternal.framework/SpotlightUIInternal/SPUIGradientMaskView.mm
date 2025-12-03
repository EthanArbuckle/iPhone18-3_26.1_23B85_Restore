@interface SPUIGradientMaskView
- (SPUIGradientMaskView)init;
@end

@implementation SPUIGradientMaskView

- (SPUIGradientMaskView)init
{
  v19[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SPUIGradientMaskView;
  v2 = [(SPUIGradientMaskView *)&v17 init];
  if (v2)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      v19[0] = [clearColor CGColor];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v7 = 0.5;
      v8 = 0.0;
      v9 = v19;
      v10 = 0.1;
    }

    else
    {
      clearColor = [MEMORY[0x277D75348] whiteColor];
      cGColor = [clearColor CGColor];
      whiteColor = [MEMORY[0x277D75348] clearColor];
      v7 = 0.5;
      v10 = 1.0;
      v9 = &cGColor;
      v8 = 0.9;
    }

    v9[1] = [whiteColor CGColor];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    layer = [(SPUIGradientMaskView *)v2 layer];
    [layer setColors:v11];

    layer2 = [(SPUIGradientMaskView *)v2 layer];
    [layer2 setStartPoint:{v8, v7}];

    layer3 = [(SPUIGradientMaskView *)v2 layer];
    [layer3 setEndPoint:{v10, v7}];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

@end
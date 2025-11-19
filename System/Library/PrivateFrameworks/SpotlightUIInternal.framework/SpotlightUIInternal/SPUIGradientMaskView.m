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
    v3 = [MEMORY[0x277D75128] sharedApplication];
    v4 = [v3 userInterfaceLayoutDirection];

    if (v4 == 1)
    {
      v5 = [MEMORY[0x277D75348] clearColor];
      v19[0] = [v5 CGColor];
      v6 = [MEMORY[0x277D75348] whiteColor];
      v7 = 0.5;
      v8 = 0.0;
      v9 = v19;
      v10 = 0.1;
    }

    else
    {
      v5 = [MEMORY[0x277D75348] whiteColor];
      v18 = [v5 CGColor];
      v6 = [MEMORY[0x277D75348] clearColor];
      v7 = 0.5;
      v10 = 1.0;
      v9 = &v18;
      v8 = 0.9;
    }

    v9[1] = [v6 CGColor];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v12 = [(SPUIGradientMaskView *)v2 layer];
    [v12 setColors:v11];

    v13 = [(SPUIGradientMaskView *)v2 layer];
    [v13 setStartPoint:{v8, v7}];

    v14 = [(SPUIGradientMaskView *)v2 layer];
    [v14 setEndPoint:{v10, v7}];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

@end
@interface STUsageColors
+ (NSArray)orderedUsageColors;
+ (void)updateVibrancyStylingForView:(id)a3 withUsageColor:(id)a4;
@end

@implementation STUsageColors

+ (NSArray)orderedUsageColors
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75348] systemBlueColor];
  v3 = [MEMORY[0x277D75348] systemTealColor];
  v7[1] = v3;
  v4 = [MEMORY[0x277D75348] systemOrangeColor];
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

+ (void)updateVibrancyStylingForView:(id)a3 withUsageColor:(id)a4
{
  v18 = a3;
  v5 = a4;
  v6 = MEMORY[0x277D26740];
  v7 = [v18 traitCollection];
  v8 = [v6 _visualStylingProviderForRecipe:0 category:3 andUserInterfaceStyle:{objc_msgSend(v7, "userInterfaceStyle")}];

  v9 = [MEMORY[0x277D75348] systemGrayColor];
  v10 = [v5 isEqual:v9];

  if (v10)
  {
    v11 = 20;
  }

  else
  {
    v12 = [MEMORY[0x277D75348] systemBlueColor];
    v13 = [v5 isEqual:v12];

    if (v13)
    {
      v11 = 21;
    }

    else
    {
      v14 = [MEMORY[0x277D75348] systemTealColor];
      v15 = [v5 isEqual:v14];

      if (v15)
      {
        v11 = 22;
      }

      else
      {
        v16 = [MEMORY[0x277D75348] systemOrangeColor];
        v17 = [v5 isEqual:v16];

        if (!v17)
        {
          goto LABEL_10;
        }

        v11 = 23;
      }
    }
  }

  [v8 automaticallyUpdateView:v18 withStyle:v11];
LABEL_10:
}

@end
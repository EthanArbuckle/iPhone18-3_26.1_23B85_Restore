@interface STUsageColors
+ (NSArray)orderedUsageColors;
+ (void)updateVibrancyStylingForView:(id)view withUsageColor:(id)color;
@end

@implementation STUsageColors

+ (NSArray)orderedUsageColors
{
  v7[3] = *MEMORY[0x277D85DE8];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  systemTealColor = [MEMORY[0x277D75348] systemTealColor];
  v7[1] = systemTealColor;
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  v7[2] = systemOrangeColor;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

+ (void)updateVibrancyStylingForView:(id)view withUsageColor:(id)color
{
  viewCopy = view;
  colorCopy = color;
  v6 = MEMORY[0x277D26740];
  traitCollection = [viewCopy traitCollection];
  v8 = [v6 _visualStylingProviderForRecipe:0 category:3 andUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v10 = [colorCopy isEqual:systemGrayColor];

  if (v10)
  {
    v11 = 20;
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    v13 = [colorCopy isEqual:systemBlueColor];

    if (v13)
    {
      v11 = 21;
    }

    else
    {
      systemTealColor = [MEMORY[0x277D75348] systemTealColor];
      v15 = [colorCopy isEqual:systemTealColor];

      if (v15)
      {
        v11 = 22;
      }

      else
      {
        systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
        v17 = [colorCopy isEqual:systemOrangeColor];

        if (!v17)
        {
          goto LABEL_10;
        }

        v11 = 23;
      }
    }
  }

  [v8 automaticallyUpdateView:viewCopy withStyle:v11];
LABEL_10:
}

@end
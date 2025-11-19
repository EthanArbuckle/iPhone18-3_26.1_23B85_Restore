@interface StocksUtilities
+ (BOOL)shouldStackCellContentsForStocks:(id)a3 withWidth:(double)a4 andBoxWidth:(double)a5;
@end

@implementation StocksUtilities

+ (BOOL)shouldStackCellContentsForStocks:(id)a3 withWidth:(double)a4 andBoxWidth:(double)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([v7 count] && (objc_msgSend(MEMORY[0x277D75128], "sharedApplication"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "preferredContentSizeCategory"), v9 = objc_claimAutoreleasedReturnValue(), IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v9), v9, v8, IsAccessibilityCategory))
  {
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    v12 = [v7 count];
    if (v12 < 1)
    {
      v17 = 0;
    }

    else
    {
      v13 = v12;
      v14 = 0;
      v15 = a4 + -16.0 - a5;
      v16 = *MEMORY[0x277D740A8];
      v17 = 1;
      do
      {
        v18 = [v7 objectAtIndexedSubscript:v14];
        v19 = [v18 listName];
        v31 = v16;
        v32[0] = v11;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        [v19 boundingRectWithSize:0 options:v20 attributes:0 context:{1.79769313e308, 0.0}];
        v22 = v21;

        v23 = [v18 price];

        if (v23)
        {
          v24 = [v18 formattedPriceDroppingFractionDigitsIfLengthExceeds:10];
        }

        else
        {
          v24 = &stru_287C73C90;
        }

        v29 = v16;
        v30 = v11;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [(__CFString *)v24 boundingRectWithSize:0 options:v25 attributes:0 context:1.79769313e308, 0.0];
        v27 = ceil(v26);

        if (ceil(v22) + 8.0 > v15 - v27 + -16.0)
        {
          break;
        }

        v17 = ++v14 < v13;
      }

      while (v13 != v14);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
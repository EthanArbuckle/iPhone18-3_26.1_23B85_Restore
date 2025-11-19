@interface SFHeroCardSection(SearchUILeadingTrailingSectionModel)
+ (void)customizeSection:()SearchUILeadingTrailingSectionModel isLeading:;
@end

@implementation SFHeroCardSection(SearchUILeadingTrailingSectionModel)

+ (void)customizeSection:()SearchUILeadingTrailingSectionModel isLeading:
{
  v5 = a3;
  v23 = v5;
  if (a4)
  {
    v6 = [v5 rowModels];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [v23 rowModels];
        v10 = [v9 objectAtIndexedSubscript:v8];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v12 = [v23 rowModels];
          v13 = [v12 objectAtIndexedSubscript:v8];

          [v13 setShouldFillAvailableSpace:1];
        }

        ++v8;
        v14 = [v23 rowModels];
        v15 = [v14 count];
      }

      while (v8 < v15);
    }

    [v23 setLeadingFractionalWidth:0.666666667];
    [v23 setPreferredHeight:275.0];
  }

  else
  {
    v16 = [MEMORY[0x1E69D9240] isMacOS];
    v17 = 16.0;
    if (v16)
    {
      v17 = 12.0;
    }

    v18 = 0.0;
    [v23 setTrailingGroupContentInsets:{v17, 0.0, 0.0, 0.0}];
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      v19 = 2.0;
    }

    else
    {
      v19 = 0.0;
    }

    if (![MEMORY[0x1E69D9240] isMacOS])
    {
      v18 = 8.0;
    }

    +[SearchUIUtilities standardTableCellContentInset];
    [v23 setSectionInsets:{4.0, v19, v18, v19 + v20}];
    [v23 setCustomSectionInsets:1];
    [v23 setVerticalSpacing:0.0];
    [v23 setLeadingFractionalWidth:0.590163934];
    v21 = [v23 trailingRowModels];
    v22 = [v21 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 setMinimumLayoutSize:{240.0, 1.79769313e308}];
      [v22 setShouldFillAvailableSpace:1];
    }
  }
}

@end
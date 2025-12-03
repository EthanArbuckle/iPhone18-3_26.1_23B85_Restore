@interface SFAppIconCardSection(SearchUILeadingTrailingSectionModel)
- (uint64_t)preferredBackgroundStyleForIsLeadingPrimaryCard:()SearchUILeadingTrailingSectionModel;
- (void)customizeRowModelsForAppTopHitWithShortcuts:()SearchUILeadingTrailingSectionModel;
- (void)customizeSection:()SearchUILeadingTrailingSectionModel isLeading:;
@end

@implementation SFAppIconCardSection(SearchUILeadingTrailingSectionModel)

- (void)customizeSection:()SearchUILeadingTrailingSectionModel isLeading:
{
  if (a4)
  {
    v16 = a3;
    v5 = +[SearchUIAppIconUtilities numberOfAppIconsPerRow];
    +[SearchUIAppIconUtilities appIconItemSize];
    v7 = v6;
    v8 = +[SearchUIUtilities isIpad];
    v9 = 28.0;
    if (!v8)
    {
      +[SearchUIAppIconUtilities idealHorizontalSpacingBetweenAppIcons];
    }

    v10 = (v5 + -1.0) * v9 + v5 * v7;
    v11 = +[SearchUIUtilities isIpad];
    v12 = 12.0;
    if (!v11)
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen bounds];
      v15 = (v14 + -32.0 - v10) * 0.5;

      v12 = fmax(v15, 0.0);
    }

    [v16 setLeadingFractionalWidth:(v7 + v12 * 2.0) / v10];
    [v16 setVerticalSpacing:0.0];
    [v16 setPrefersSeparatorsInTrailingGroup:1];
    [self customizeRowModelsForAppTopHitWithShortcuts:v16];
  }
}

- (uint64_t)preferredBackgroundStyleForIsLeadingPrimaryCard:()SearchUILeadingTrailingSectionModel
{
  if (a3)
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (void)customizeRowModelsForAppTopHitWithShortcuts:()SearchUILeadingTrailingSectionModel
{
  v18 = a3;
  rowModels = [v18 rowModels];
  v4 = [rowModels count];

  trailingRowModels = [v18 trailingRowModels];
  v6 = [trailingRowModels count];

  if (v4)
  {
    v7 = 0;
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    v10 = 110.0 / v6;
    do
    {
      rowModels2 = [v18 rowModels];
      v12 = [rowModels2 objectAtIndexedSubscript:v7];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
        v14 = v13;
        if (v7)
        {
          v15 = 0.0;
          if (v7 == 1)
          {
            v16 = 2;
          }

          else
          {
            v16 = 8 * (v4 == 1);
          }

          v17 = v10;
        }

        else
        {
          v16 = 5;
          v17 = v9;
          v15 = v8;
        }

        [v13 setCornerMask:v16];
        [v14 setMinimumLayoutSize:{v15, v17}];
      }

      ++v7;
      --v4;
    }

    while (v4);
  }
}

@end
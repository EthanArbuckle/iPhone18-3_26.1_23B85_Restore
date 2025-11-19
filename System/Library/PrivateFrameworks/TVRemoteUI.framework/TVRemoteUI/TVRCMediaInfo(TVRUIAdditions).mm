@interface TVRCMediaInfo(TVRUIAdditions)
- (id)tvrui_RTReviewPercentage;
- (id)tvrui_effectiveIdentifier;
- (id)tvrui_formattedDuration;
- (id)tvrui_formattedReleaseDate;
- (id)tvrui_formattedSummary;
@end

@implementation TVRCMediaInfo(TVRUIAdditions)

- (id)tvrui_formattedReleaseDate
{
  v2 = [a1 releaseDate];
  if (v2)
  {
    if ([a1 kind] == 1)
    {
      if (tvrui_formattedReleaseDate_onceToken != -1)
      {
        [TVRCMediaInfo(TVRUIAdditions) tvrui_formattedReleaseDate];
      }

      v3 = [tvrui_formattedReleaseDate_formatter stringFromDate:v2];
    }

    else
    {
      v4 = [MEMORY[0x277CBEA80] currentCalendar];
      v5 = [v4 components:4 fromDate:v2];

      v6 = [v5 year];
      if (v6)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
        v3 = [v7 stringWithFormat:@"%@", v8];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)tvrui_formattedDuration
{
  v2 = [a1 duration];

  if (v2 && ([a1 duration], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "doubleValue"), v5 = v4, v3, v5 > 0.0))
  {
    v6 = [TVRUIDateUtilities localizedPlaybackTimeForInterval:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tvrui_RTReviewPercentage
{
  v1 = [a1 rottenTomatoesReview];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 percentage];
    if ([v3 integerValue] < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%%", v3];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tvrui_formattedSummary
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __55__TVRCMediaInfo_TVRUIAdditions__tvrui_formattedSummary__block_invoke;
  v16 = &unk_279D87C90;
  v3 = v2;
  v17 = v3;
  v4 = _Block_copy(&aBlock);
  v5 = [a1 genre];
  v4[2](v4, v5);

  v6 = [a1 tvrui_formattedReleaseDate];
  v4[2](v4, v6);

  v7 = [a1 tvrui_formattedDuration];
  v4[2](v4, v7);

  if (+[TVRUIFeatures includeRTReviewInInfoPanel])
  {
    v8 = [a1 tvrui_RTReviewPercentage];
    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"RT %@", v8, aBlock, v14, v15, v16];
      v4[2](v4, v9);
    }
  }

  v10 = [a1 ratingDescription];
  v4[2](v4, v10);

  v11 = [v3 componentsJoinedByString:@" • "];

  return v11;
}

- (id)tvrui_effectiveIdentifier
{
  v2 = [a1 identifier];
  if ([a1 kind] == 1)
  {
    v3 = [a1 showIdentifier];
    v4 = [v3 length];

    if (v4)
    {
      v5 = [a1 showIdentifier];

      v2 = v5;
    }
  }

  return v2;
}

@end
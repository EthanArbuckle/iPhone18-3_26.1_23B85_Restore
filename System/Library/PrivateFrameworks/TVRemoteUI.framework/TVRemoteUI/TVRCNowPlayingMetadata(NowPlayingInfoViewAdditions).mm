@interface TVRCNowPlayingMetadata(NowPlayingInfoViewAdditions)
- (id)infoview_formattedReleaseDate;
- (id)tvrui_RTReviewPercentage;
- (id)tvrui_formattedDuration;
- (id)tvrui_formattedInfo;
@end

@implementation TVRCNowPlayingMetadata(NowPlayingInfoViewAdditions)

- (id)tvrui_formattedInfo
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__TVRCNowPlayingMetadata_NowPlayingInfoViewAdditions__tvrui_formattedInfo__block_invoke;
  aBlock[3] = &unk_279D87C90;
  v3 = v2;
  v12 = v3;
  v4 = _Block_copy(aBlock);
  v5 = [a1 genre];
  v4[2](v4, v5);

  v6 = [a1 infoview_formattedReleaseDate];
  v4[2](v4, v6);

  v7 = [a1 tvrui_formattedDuration];
  v4[2](v4, v7);

  if (+[TVRUIFeatures includeRTReviewInInfoPanel])
  {
    v8 = [a1 tvrui_RTReviewPercentage];
    v4[2](v4, v8);
  }

  v9 = [v3 componentsJoinedByString:@" • "];

  return v9;
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

- (id)infoview_formattedReleaseDate
{
  v2 = [a1 releaseDate];
  if (v2)
  {
    if ([a1 kind] == 2)
    {
      if (infoview_formattedReleaseDate_onceToken != -1)
      {
        [TVRCNowPlayingMetadata(NowPlayingInfoViewAdditions) infoview_formattedReleaseDate];
      }

      v3 = [infoview_formattedReleaseDate_formatter stringFromDate:v2];
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

@end
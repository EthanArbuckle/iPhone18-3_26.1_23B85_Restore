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
  genre = [self genre];
  v4[2](v4, genre);

  infoview_formattedReleaseDate = [self infoview_formattedReleaseDate];
  v4[2](v4, infoview_formattedReleaseDate);

  tvrui_formattedDuration = [self tvrui_formattedDuration];
  v4[2](v4, tvrui_formattedDuration);

  if (+[TVRUIFeatures includeRTReviewInInfoPanel])
  {
    tvrui_RTReviewPercentage = [self tvrui_RTReviewPercentage];
    v4[2](v4, tvrui_RTReviewPercentage);
  }

  v9 = [v3 componentsJoinedByString:@" • "];

  return v9;
}

- (id)tvrui_formattedDuration
{
  duration = [self duration];

  if (duration && ([self duration], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "doubleValue"), v5 = v4, v3, v5 > 0.0))
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
  releaseDate = [self releaseDate];
  if (releaseDate)
  {
    if ([self kind] == 2)
    {
      if (infoview_formattedReleaseDate_onceToken != -1)
      {
        [TVRCNowPlayingMetadata(NowPlayingInfoViewAdditions) infoview_formattedReleaseDate];
      }

      v3 = [infoview_formattedReleaseDate_formatter stringFromDate:releaseDate];
    }

    else
    {
      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      v5 = [currentCalendar components:4 fromDate:releaseDate];

      year = [v5 year];
      if (year)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:year];
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
  rottenTomatoesReview = [self rottenTomatoesReview];
  v2 = rottenTomatoesReview;
  if (rottenTomatoesReview)
  {
    percentage = [rottenTomatoesReview percentage];
    if ([percentage integerValue] < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%%", percentage];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
@interface TVRCNowPlayingMetadata(TVRUIAdditions)
- (BOOL)tvrui_isTVEpisode;
- (__CFString)tvrui_secondaryTitle;
- (id)metadataMergedFromTVRCMediaInfo:()TVRUIAdditions;
- (id)tvrui_localizedTitleWithFormatString:()TVRUIAdditions;
- (uint64_t)_nowPlayingKindForMediaInfoKind:()TVRUIAdditions;
@end

@implementation TVRCNowPlayingMetadata(TVRUIAdditions)

- (BOOL)tvrui_isTVEpisode
{
  episodeNumber = [self episodeNumber];
  if (episodeNumber)
  {
    seasonNumber = [self seasonNumber];
    if (seasonNumber)
    {
      episodeTitle = [self episodeTitle];
      v5 = [episodeTitle length] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tvrui_localizedTitleWithFormatString:()TVRUIAdditions
{
  v4 = a3;
  if ([self tvrui_isTVEpisode])
  {
    v5 = [v4 componentsSeparatedByString:@"%@"];
    if ([v5 count] < 4)
    {
      v6 = @"S%@, E%@ • %@";
    }

    else
    {
      v6 = v4;
    }

    v8 = MEMORY[0x277CCACA8];
    seasonNumber = [self seasonNumber];
    episodeNumber = [self episodeNumber];
    episodeTitle = [self episodeTitle];
    title = [v8 stringWithFormat:v6, seasonNumber, episodeNumber, episodeTitle];
  }

  else
  {
    title = [self title];
  }

  return title;
}

- (__CFString)tvrui_secondaryTitle
{
  if ([self tvrui_isTVEpisode])
  {
    title = [self title];
  }

  else
  {
    title = &stru_287E6AEF8;
  }

  return title;
}

- (id)metadataMergedFromTVRCMediaInfo:()TVRUIAdditions
{
  v4 = a3;
  v5 = [self copy];
  kind = [v4 kind];
  title = [v4 title];

  if (kind != 1)
  {
    if (!title)
    {
      goto LABEL_9;
    }

    title2 = [v4 title];
    goto LABEL_8;
  }

  if (title)
  {
    title3 = [v4 title];
    [v5 setEpisodeTitle:title3];
  }

  showTitle = [v4 showTitle];

  if (showTitle)
  {
    title2 = [v4 showTitle];
LABEL_8:
    v11 = title2;
    [v5 setTitle:title2];
  }

LABEL_9:
  genre = [v4 genre];

  if (genre)
  {
    genre2 = [v4 genre];
    [v5 setGenre:genre2];
  }

  duration = [v5 duration];
  if (!duration)
  {
    duration2 = [v4 duration];

    if (!duration2)
    {
      goto LABEL_15;
    }

    duration = [v4 duration];
    [v5 setDuration:duration];
  }

LABEL_15:
  showID = [v5 showID];
  if (!showID)
  {
    showIdentifier = [v4 showIdentifier];

    if (!showIdentifier)
    {
      goto LABEL_19;
    }

    showID = [v4 showIdentifier];
    [v5 setShowID:showID];
  }

LABEL_19:
  seasonNumber = [v5 seasonNumber];
  if (!seasonNumber)
  {
    seasonNumber2 = [v4 seasonNumber];

    if (!seasonNumber2)
    {
      goto LABEL_23;
    }

    seasonNumber = [v4 seasonNumber];
    [v5 setSeasonNumber:seasonNumber];
  }

LABEL_23:
  episodeNumber = [v5 episodeNumber];
  if (!episodeNumber)
  {
    episodeNumber2 = [v4 episodeNumber];

    if (!episodeNumber2)
    {
      goto LABEL_27;
    }

    episodeNumber = [v4 episodeNumber];
    [v5 setEpisodeNumber:episodeNumber];
  }

LABEL_27:
  ratingDescription = [v5 ratingDescription];
  if (!ratingDescription)
  {
    ratingDescription2 = [v4 ratingDescription];

    if (!ratingDescription2)
    {
      goto LABEL_31;
    }

    ratingDescription = [v4 ratingDescription];
    [v5 setRatingDescription:ratingDescription];
  }

LABEL_31:
  extendedDescription = [v5 extendedDescription];
  if (!extendedDescription)
  {
    extendedDescription2 = [v4 extendedDescription];

    if (!extendedDescription2)
    {
      goto LABEL_35;
    }

    extendedDescription = [v4 extendedDescription];
    [v5 setExtendedDescription:extendedDescription];
  }

LABEL_35:
  productPageURL = [v5 productPageURL];
  if (!productPageURL)
  {
    productURL = [v4 productURL];

    if (!productURL)
    {
      goto LABEL_39;
    }

    productPageURL = [v4 productURL];
    [v5 setProductPageURL:productPageURL];
  }

LABEL_39:
  showProductPageURL = [v5 showProductPageURL];
  if (!showProductPageURL)
  {
    showURL = [v4 showURL];

    if (!showURL)
    {
      goto LABEL_43;
    }

    showProductPageURL = [v4 showURL];
    [v5 setShowProductPageURL:showProductPageURL];
  }

LABEL_43:
  releaseDate = [v5 releaseDate];
  if (!releaseDate)
  {
    releaseDate2 = [v4 releaseDate];

    if (!releaseDate2)
    {
      goto LABEL_47;
    }

    releaseDate = [v4 releaseDate];
    [v5 setReleaseDate:releaseDate];
  }

LABEL_47:
  rottenTomatoesReview = [v5 rottenTomatoesReview];
  if (!rottenTomatoesReview)
  {
    rottenTomatoesReview2 = [v4 rottenTomatoesReview];

    if (!rottenTomatoesReview2)
    {
      goto LABEL_51;
    }

    rottenTomatoesReview = [v4 rottenTomatoesReview];
    v34 = [rottenTomatoesReview copy];
    [v5 setRottenTomatoesReview:v34];
  }

LABEL_51:
  [v5 setIsAppleOriginal:{objc_msgSend(v4, "isAppleOriginal")}];
  [v5 setKind:{objc_msgSend(self, "_nowPlayingKindForMediaInfoKind:", objc_msgSend(v4, "kind"))}];
  imageURLTemplate = [v4 imageURLTemplate];
  [v5 setImageURLTemplate:imageURLTemplate];

  return v5;
}

- (uint64_t)_nowPlayingKindForMediaInfoKind:()TVRUIAdditions
{
  if ((a3 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_26D0D2478[a3 - 1];
  }
}

@end
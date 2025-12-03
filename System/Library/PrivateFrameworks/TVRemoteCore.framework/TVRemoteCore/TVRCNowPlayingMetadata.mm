@interface TVRCNowPlayingMetadata
+ (id)currentAudioLanguageOptionFromContentItem:(id)item;
+ (id)metadataFromContentItem:(id)item;
- (BOOL)isEqualToNowPlayingMetadata:(id)metadata;
- (BOOL)isMissingCriticalMetadata;
- (BOOL)isPlayingOnTVApp;
- (TVRCNowPlayingMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCNowPlayingMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  canonicalID = [(TVRCNowPlayingMetadata *)self canonicalID];
  title = [(TVRCNowPlayingMetadata *)self title];
  v8 = [v3 stringWithFormat:@"<%@ %p: canonicalID=%@ title=%@>", v5, self, canonicalID, title];;

  return v8;
}

- (BOOL)isEqualToNowPlayingMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (!metadataCopy)
  {
    goto LABEL_73;
  }

  canonicalID = [(TVRCNowPlayingMetadata *)self canonicalID];
  canonicalID2 = [metadataCopy canonicalID];
  v7 = (canonicalID == 0) ^ (canonicalID2 == 0);

  if (v7)
  {
    goto LABEL_73;
  }

  title = [(TVRCNowPlayingMetadata *)self title];
  title2 = [metadataCopy title];
  v10 = (title == 0) ^ (title2 == 0);

  if (v10)
  {
    goto LABEL_73;
  }

  genre = [(TVRCNowPlayingMetadata *)self genre];
  genre2 = [metadataCopy genre];
  v13 = (genre == 0) ^ (genre2 == 0);

  if (v13)
  {
    goto LABEL_73;
  }

  episodeTitle = [(TVRCNowPlayingMetadata *)self episodeTitle];
  episodeTitle2 = [metadataCopy episodeTitle];
  v16 = (episodeTitle == 0) ^ (episodeTitle2 == 0);

  if (v16)
  {
    goto LABEL_73;
  }

  duration = [(TVRCNowPlayingMetadata *)self duration];
  duration2 = [metadataCopy duration];
  v19 = (duration == 0) ^ (duration2 == 0);

  if (v19)
  {
    goto LABEL_73;
  }

  showID = [(TVRCNowPlayingMetadata *)self showID];
  showID2 = [metadataCopy showID];
  v22 = (showID == 0) ^ (showID2 == 0);

  if (v22)
  {
    goto LABEL_73;
  }

  seasonNumber = [(TVRCNowPlayingMetadata *)self seasonNumber];
  seasonNumber2 = [metadataCopy seasonNumber];
  v25 = (seasonNumber == 0) ^ (seasonNumber2 == 0);

  if (v25)
  {
    goto LABEL_73;
  }

  episodeNumber = [(TVRCNowPlayingMetadata *)self episodeNumber];
  episodeNumber2 = [metadataCopy episodeNumber];
  v28 = (episodeNumber == 0) ^ (episodeNumber2 == 0);

  if (v28)
  {
    goto LABEL_73;
  }

  ratingDescription = [(TVRCNowPlayingMetadata *)self ratingDescription];
  ratingDescription2 = [metadataCopy ratingDescription];
  v31 = (ratingDescription == 0) ^ (ratingDescription2 == 0);

  if (v31)
  {
    goto LABEL_73;
  }

  extendedDescription = [(TVRCNowPlayingMetadata *)self extendedDescription];
  extendedDescription2 = [metadataCopy extendedDescription];
  v34 = (extendedDescription == 0) ^ (extendedDescription2 == 0);

  if (v34)
  {
    goto LABEL_73;
  }

  iTunesStoreIdentifier = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
  iTunesStoreIdentifier2 = [metadataCopy iTunesStoreIdentifier];
  v37 = (iTunesStoreIdentifier == 0) ^ (iTunesStoreIdentifier2 == 0);

  if (v37)
  {
    goto LABEL_73;
  }

  productPageURL = [(TVRCNowPlayingMetadata *)self productPageURL];
  productPageURL2 = [metadataCopy productPageURL];
  v40 = (productPageURL == 0) ^ (productPageURL2 == 0);

  if (v40)
  {
    goto LABEL_73;
  }

  showProductPageURL = [(TVRCNowPlayingMetadata *)self showProductPageURL];
  showProductPageURL2 = [metadataCopy showProductPageURL];
  v43 = (showProductPageURL == 0) ^ (showProductPageURL2 == 0);

  if (v43)
  {
    goto LABEL_73;
  }

  mainContentStartTime = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
  mainContentStartTime2 = [metadataCopy mainContentStartTime];
  v46 = (mainContentStartTime == 0) ^ (mainContentStartTime2 == 0);

  if (v46)
  {
    goto LABEL_73;
  }

  programID = [(TVRCNowPlayingMetadata *)self programID];
  programID2 = [metadataCopy programID];
  v49 = (programID == 0) ^ (programID2 == 0);

  if (v49)
  {
    goto LABEL_73;
  }

  timeOffset = [(TVRCNowPlayingMetadata *)self timeOffset];
  timeOffset2 = [metadataCopy timeOffset];
  v52 = (timeOffset == 0) ^ (timeOffset2 == 0);

  if (v52)
  {
    goto LABEL_73;
  }

  audioLanguage = [(TVRCNowPlayingMetadata *)self audioLanguage];
  audioLanguage2 = [metadataCopy audioLanguage];
  v55 = (audioLanguage == 0) ^ (audioLanguage2 == 0);

  if (v55)
  {
    goto LABEL_73;
  }

  timestamp = [(TVRCNowPlayingMetadata *)self timestamp];
  timestamp2 = [metadataCopy timestamp];
  v58 = (timestamp == 0) ^ (timestamp2 == 0);

  if (v58)
  {
    goto LABEL_73;
  }

  currentlyPlayingSongID = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
  currentlyPlayingSongID2 = [metadataCopy currentlyPlayingSongID];
  v61 = (currentlyPlayingSongID == 0) ^ (currentlyPlayingSongID2 == 0);

  if (v61)
  {
    goto LABEL_73;
  }

  bundleID = [(TVRCNowPlayingMetadata *)self bundleID];
  bundleID2 = [metadataCopy bundleID];
  v64 = (bundleID == 0) ^ (bundleID2 == 0);

  if (v64)
  {
    goto LABEL_73;
  }

  releaseDate = [(TVRCNowPlayingMetadata *)self releaseDate];
  releaseDate2 = [metadataCopy releaseDate];
  v67 = (releaseDate == 0) ^ (releaseDate2 == 0);

  if (v67)
  {
    goto LABEL_73;
  }

  rottenTomatoesReview = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
  rottenTomatoesReview2 = [metadataCopy rottenTomatoesReview];
  v70 = (rottenTomatoesReview == 0) ^ (rottenTomatoesReview2 == 0);

  if (v70)
  {
    goto LABEL_73;
  }

  canonicalID3 = [(TVRCNowPlayingMetadata *)self canonicalID];
  if (canonicalID3)
  {
    v72 = canonicalID3;
    canonicalID4 = [(TVRCNowPlayingMetadata *)self canonicalID];
    canonicalID5 = [metadataCopy canonicalID];
    v75 = [canonicalID4 isEqualToString:canonicalID5];

    if (!v75)
    {
      goto LABEL_73;
    }
  }

  title3 = [(TVRCNowPlayingMetadata *)self title];
  if (title3)
  {
    v77 = title3;
    title4 = [(TVRCNowPlayingMetadata *)self title];
    title5 = [metadataCopy title];
    v80 = [title4 isEqualToString:title5];

    if (!v80)
    {
      goto LABEL_73;
    }
  }

  genre3 = [(TVRCNowPlayingMetadata *)self genre];
  if (genre3)
  {
    v82 = genre3;
    genre4 = [(TVRCNowPlayingMetadata *)self genre];
    genre5 = [metadataCopy genre];
    v85 = [genre4 isEqualToString:genre5];

    if (!v85)
    {
      goto LABEL_73;
    }
  }

  episodeTitle3 = [(TVRCNowPlayingMetadata *)self episodeTitle];
  if (episodeTitle3)
  {
    v87 = episodeTitle3;
    episodeTitle4 = [(TVRCNowPlayingMetadata *)self episodeTitle];
    episodeTitle5 = [metadataCopy episodeTitle];
    v90 = [episodeTitle4 isEqualToString:episodeTitle5];

    if (!v90)
    {
      goto LABEL_73;
    }
  }

  showID3 = [(TVRCNowPlayingMetadata *)self showID];
  if (showID3)
  {
    v92 = showID3;
    showID4 = [(TVRCNowPlayingMetadata *)self showID];
    showID5 = [metadataCopy showID];
    v95 = [showID4 isEqualToString:showID5];

    if (!v95)
    {
      goto LABEL_73;
    }
  }

  duration3 = [(TVRCNowPlayingMetadata *)self duration];
  if (duration3)
  {
    v97 = duration3;
    duration4 = [(TVRCNowPlayingMetadata *)self duration];
    duration5 = [metadataCopy duration];
    v100 = [duration4 isEqualToNumber:duration5];

    if (!v100)
    {
      goto LABEL_73;
    }
  }

  seasonNumber3 = [(TVRCNowPlayingMetadata *)self seasonNumber];
  if (seasonNumber3)
  {
    v102 = seasonNumber3;
    seasonNumber4 = [(TVRCNowPlayingMetadata *)self seasonNumber];
    seasonNumber5 = [metadataCopy seasonNumber];
    v105 = [seasonNumber4 isEqualToNumber:seasonNumber5];

    if (!v105)
    {
      goto LABEL_73;
    }
  }

  episodeNumber3 = [(TVRCNowPlayingMetadata *)self episodeNumber];
  if (episodeNumber3)
  {
    v107 = episodeNumber3;
    episodeNumber4 = [(TVRCNowPlayingMetadata *)self episodeNumber];
    episodeNumber5 = [metadataCopy episodeNumber];
    v110 = [episodeNumber4 isEqualToNumber:episodeNumber5];

    if (!v110)
    {
      goto LABEL_73;
    }
  }

  ratingDescription3 = [(TVRCNowPlayingMetadata *)self ratingDescription];
  if (ratingDescription3)
  {
    v112 = ratingDescription3;
    ratingDescription4 = [(TVRCNowPlayingMetadata *)self ratingDescription];
    ratingDescription5 = [metadataCopy ratingDescription];
    v115 = [ratingDescription4 isEqualToString:ratingDescription5];

    if (!v115)
    {
      goto LABEL_73;
    }
  }

  extendedDescription3 = [(TVRCNowPlayingMetadata *)self extendedDescription];
  if (extendedDescription3)
  {
    v117 = extendedDescription3;
    extendedDescription4 = [(TVRCNowPlayingMetadata *)self extendedDescription];
    extendedDescription5 = [metadataCopy extendedDescription];
    v120 = [extendedDescription4 isEqualToString:extendedDescription5];

    if (!v120)
    {
      goto LABEL_73;
    }
  }

  iTunesStoreIdentifier3 = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
  if (iTunesStoreIdentifier3)
  {
    v122 = iTunesStoreIdentifier3;
    iTunesStoreIdentifier4 = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
    iTunesStoreIdentifier5 = [metadataCopy iTunesStoreIdentifier];
    v125 = [iTunesStoreIdentifier4 isEqualToString:iTunesStoreIdentifier5];

    if (!v125)
    {
      goto LABEL_73;
    }
  }

  productPageURL3 = [(TVRCNowPlayingMetadata *)self productPageURL];
  if (productPageURL3)
  {
    v127 = productPageURL3;
    productPageURL4 = [(TVRCNowPlayingMetadata *)self productPageURL];
    productPageURL5 = [metadataCopy productPageURL];
    v130 = [productPageURL4 isEqual:productPageURL5];

    if (!v130)
    {
      goto LABEL_73;
    }
  }

  showProductPageURL3 = [(TVRCNowPlayingMetadata *)self showProductPageURL];
  if (showProductPageURL3)
  {
  }

  else
  {
    showProductPageURL4 = [(TVRCNowPlayingMetadata *)self showProductPageURL];
    showProductPageURL5 = [metadataCopy showProductPageURL];
    v134 = [showProductPageURL4 isEqual:showProductPageURL5];

    if (!v134)
    {
LABEL_73:
      v186 = 0;
      goto LABEL_74;
    }
  }

  mainContentStartTime3 = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
  if (mainContentStartTime3)
  {
    v136 = mainContentStartTime3;
    mainContentStartTime4 = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
    mainContentStartTime5 = [metadataCopy mainContentStartTime];
    v139 = [mainContentStartTime4 isEqual:mainContentStartTime5];

    if (!v139)
    {
      goto LABEL_73;
    }
  }

  programID3 = [(TVRCNowPlayingMetadata *)self programID];
  if (programID3)
  {
    v141 = programID3;
    programID4 = [(TVRCNowPlayingMetadata *)self programID];
    programID5 = [metadataCopy programID];
    v144 = [programID4 isEqualToString:programID5];

    if (!v144)
    {
      goto LABEL_73;
    }
  }

  timeOffset3 = [(TVRCNowPlayingMetadata *)self timeOffset];
  if (timeOffset3)
  {
    v146 = timeOffset3;
    timeOffset4 = [(TVRCNowPlayingMetadata *)self timeOffset];
    timeOffset5 = [metadataCopy timeOffset];
    v149 = [timeOffset4 isEqualToNumber:timeOffset5];

    if (!v149)
    {
      goto LABEL_73;
    }
  }

  audioLanguage3 = [(TVRCNowPlayingMetadata *)self audioLanguage];
  if (audioLanguage3)
  {
    v151 = audioLanguage3;
    audioLanguage4 = [(TVRCNowPlayingMetadata *)self audioLanguage];
    audioLanguage5 = [metadataCopy audioLanguage];
    v154 = [audioLanguage4 isEqualToString:audioLanguage5];

    if (!v154)
    {
      goto LABEL_73;
    }
  }

  timestamp3 = [(TVRCNowPlayingMetadata *)self timestamp];
  if (timestamp3)
  {
    v156 = timestamp3;
    timestamp4 = [(TVRCNowPlayingMetadata *)self timestamp];
    timestamp5 = [metadataCopy timestamp];
    v159 = [timestamp4 isEqual:timestamp5];

    if (!v159)
    {
      goto LABEL_73;
    }
  }

  currentlyPlayingSongID3 = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
  if (currentlyPlayingSongID3)
  {
    v161 = currentlyPlayingSongID3;
    currentlyPlayingSongID4 = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
    currentlyPlayingSongID5 = [metadataCopy currentlyPlayingSongID];
    v164 = [currentlyPlayingSongID4 isEqualToString:currentlyPlayingSongID5];

    if (!v164)
    {
      goto LABEL_73;
    }
  }

  bundleID3 = [(TVRCNowPlayingMetadata *)self bundleID];
  if (bundleID3)
  {
    v166 = bundleID3;
    bundleID4 = [(TVRCNowPlayingMetadata *)self bundleID];
    bundleID5 = [metadataCopy bundleID];
    v169 = [bundleID4 isEqualToString:bundleID5];

    if (!v169)
    {
      goto LABEL_73;
    }
  }

  releaseDate3 = [(TVRCNowPlayingMetadata *)self releaseDate];
  if (releaseDate3)
  {
    v171 = releaseDate3;
    releaseDate4 = [(TVRCNowPlayingMetadata *)self releaseDate];
    releaseDate5 = [metadataCopy releaseDate];
    v174 = [releaseDate4 isEqualToDate:releaseDate5];

    if (!v174)
    {
      goto LABEL_73;
    }
  }

  kind = [(TVRCNowPlayingMetadata *)self kind];
  if (kind != [metadataCopy kind])
  {
    goto LABEL_73;
  }

  isAppleOriginal = [(TVRCNowPlayingMetadata *)self isAppleOriginal];
  if (isAppleOriginal != [metadataCopy isAppleOriginal])
  {
    goto LABEL_73;
  }

  rottenTomatoesReview3 = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
  if (rottenTomatoesReview3)
  {
    v178 = rottenTomatoesReview3;
    rottenTomatoesReview4 = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
    rottenTomatoesReview5 = [metadataCopy rottenTomatoesReview];
    v181 = [rottenTomatoesReview4 isEqualToRottenTomatoesReview:rottenTomatoesReview5];

    if (!v181)
    {
      goto LABEL_73;
    }
  }

  imageURLTemplate = [(TVRCNowPlayingMetadata *)self imageURLTemplate];
  if (imageURLTemplate)
  {
    v183 = imageURLTemplate;
    imageURLTemplate2 = [(TVRCNowPlayingMetadata *)self imageURLTemplate];
    imageURLTemplate3 = [metadataCopy imageURLTemplate];
    v186 = [imageURLTemplate2 isEqualToString:imageURLTemplate3];
  }

  else
  {
    v186 = 1;
  }

LABEL_74:

  return v186 & 1;
}

- (BOOL)isMissingCriticalMetadata
{
  extendedDescription = [(TVRCNowPlayingMetadata *)self extendedDescription];
  v3 = [extendedDescription length] == 0;

  return v3;
}

- (BOOL)isPlayingOnTVApp
{
  bundleID = [(TVRCNowPlayingMetadata *)self bundleID];
  v3 = [bundleID isEqualToString:@"com.apple.TVWatchList"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TVRCNowPlayingMetadata);
  canonicalID = [(TVRCNowPlayingMetadata *)self canonicalID];
  [(TVRCNowPlayingMetadata *)v4 setCanonicalID:canonicalID];

  title = [(TVRCNowPlayingMetadata *)self title];
  [(TVRCNowPlayingMetadata *)v4 setTitle:title];

  genre = [(TVRCNowPlayingMetadata *)self genre];
  [(TVRCNowPlayingMetadata *)v4 setGenre:genre];

  episodeTitle = [(TVRCNowPlayingMetadata *)self episodeTitle];
  [(TVRCNowPlayingMetadata *)v4 setEpisodeTitle:episodeTitle];

  duration = [(TVRCNowPlayingMetadata *)self duration];
  [(TVRCNowPlayingMetadata *)v4 setDuration:duration];

  showID = [(TVRCNowPlayingMetadata *)self showID];
  [(TVRCNowPlayingMetadata *)v4 setShowID:showID];

  seasonNumber = [(TVRCNowPlayingMetadata *)self seasonNumber];
  [(TVRCNowPlayingMetadata *)v4 setSeasonNumber:seasonNumber];

  episodeNumber = [(TVRCNowPlayingMetadata *)self episodeNumber];
  [(TVRCNowPlayingMetadata *)v4 setEpisodeNumber:episodeNumber];

  ratingDescription = [(TVRCNowPlayingMetadata *)self ratingDescription];
  [(TVRCNowPlayingMetadata *)v4 setRatingDescription:ratingDescription];

  extendedDescription = [(TVRCNowPlayingMetadata *)self extendedDescription];
  [(TVRCNowPlayingMetadata *)v4 setExtendedDescription:extendedDescription];

  iTunesStoreIdentifier = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
  [(TVRCNowPlayingMetadata *)v4 setITunesStoreIdentifier:iTunesStoreIdentifier];

  productPageURL = [(TVRCNowPlayingMetadata *)self productPageURL];
  [(TVRCNowPlayingMetadata *)v4 setProductPageURL:productPageURL];

  showProductPageURL = [(TVRCNowPlayingMetadata *)self showProductPageURL];
  [(TVRCNowPlayingMetadata *)v4 setShowProductPageURL:showProductPageURL];

  mainContentStartTime = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
  [(TVRCNowPlayingMetadata *)v4 setMainContentStartTime:mainContentStartTime];

  programID = [(TVRCNowPlayingMetadata *)self programID];
  [(TVRCNowPlayingMetadata *)v4 setProgramID:programID];

  timeOffset = [(TVRCNowPlayingMetadata *)self timeOffset];
  [(TVRCNowPlayingMetadata *)v4 setTimeOffset:timeOffset];

  audioLanguage = [(TVRCNowPlayingMetadata *)self audioLanguage];
  [(TVRCNowPlayingMetadata *)v4 setAudioLanguage:audioLanguage];

  timestamp = [(TVRCNowPlayingMetadata *)self timestamp];
  [(TVRCNowPlayingMetadata *)v4 setTimestamp:timestamp];

  currentlyPlayingSongID = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
  [(TVRCNowPlayingMetadata *)v4 setCurrentlyPlayingSongID:currentlyPlayingSongID];

  bundleID = [(TVRCNowPlayingMetadata *)self bundleID];
  [(TVRCNowPlayingMetadata *)v4 setBundleID:bundleID];

  releaseDate = [(TVRCNowPlayingMetadata *)self releaseDate];
  [(TVRCNowPlayingMetadata *)v4 setReleaseDate:releaseDate];

  [(TVRCNowPlayingMetadata *)v4 setIsAppleOriginal:[(TVRCNowPlayingMetadata *)self isAppleOriginal]];
  [(TVRCNowPlayingMetadata *)v4 setKind:[(TVRCNowPlayingMetadata *)self kind]];
  rottenTomatoesReview = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
  v27 = [rottenTomatoesReview copy];
  [(TVRCNowPlayingMetadata *)v4 setRottenTomatoesReview:v27];

  imageURLTemplate = [(TVRCNowPlayingMetadata *)self imageURLTemplate];
  [(TVRCNowPlayingMetadata *)v4 setImageURLTemplate:imageURLTemplate];

  return v4;
}

- (TVRCNowPlayingMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = TVRCNowPlayingMetadata;
  v5 = [(TVRCNowPlayingMetadata *)&v53 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"episodeTitle"];
    episodeTitle = v5->_episodeTitle;
    v5->_episodeTitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showID"];
    showID = v5->_showID;
    v5->_showID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seasonNumber"];
    seasonNumber = v5->_seasonNumber;
    v5->_seasonNumber = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"episodeNumber"];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingDescription"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendedDescription"];
    extendedDescription = v5->_extendedDescription;
    v5->_extendedDescription = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iTunesStoreIdentifier"];
    iTunesStoreIdentifier = v5->_iTunesStoreIdentifier;
    v5->_iTunesStoreIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productPageURL"];
    productPageURL = v5->_productPageURL;
    v5->_productPageURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showProductPageURL"];
    showProductPageURL = v5->_showProductPageURL;
    v5->_showProductPageURL = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mainContentStartTime"];
    mainContentStartTime = v5->_mainContentStartTime;
    v5->_mainContentStartTime = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"programID"];
    programID = v5->_programID;
    v5->_programID = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeOffset"];
    timeOffset = v5->_timeOffset;
    v5->_timeOffset = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioLanguage"];
    audioLanguage = v5->_audioLanguage;
    v5->_audioLanguage = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentlyPlayingSongID"];
    currentlyPlayingSongID = v5->_currentlyPlayingSongID;
    v5->_currentlyPlayingSongID = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v46;

    v5->_isAppleOriginal = [coderCopy decodeBoolForKey:@"isAppleOriginal"];
    v5->_kind = [coderCopy decodeIntForKey:@"kind"];
    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rottenTomatoesReview"];
    rottenTomatoesReview = v5->_rottenTomatoesReview;
    v5->_rottenTomatoesReview = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  canonicalID = self->_canonicalID;
  coderCopy = coder;
  [coderCopy encodeObject:canonicalID forKey:@"canonicalID"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_genre forKey:@"genre"];
  [coderCopy encodeObject:self->_episodeTitle forKey:@"episodeTitle"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
  [coderCopy encodeObject:self->_showID forKey:@"showID"];
  [coderCopy encodeObject:self->_seasonNumber forKey:@"seasonNumber"];
  [coderCopy encodeObject:self->_episodeNumber forKey:@"episodeNumber"];
  [coderCopy encodeObject:self->_ratingDescription forKey:@"ratingDescription"];
  [coderCopy encodeObject:self->_extendedDescription forKey:@"extendedDescription"];
  [coderCopy encodeObject:self->_iTunesStoreIdentifier forKey:@"iTunesStoreIdentifier"];
  [coderCopy encodeObject:self->_productPageURL forKey:@"productPageURL"];
  [coderCopy encodeObject:self->_showProductPageURL forKey:@"showProductPageURL"];
  [coderCopy encodeObject:self->_mainContentStartTime forKey:@"mainContentStartTime"];
  [coderCopy encodeObject:self->_programID forKey:@"programID"];
  [coderCopy encodeObject:self->_timeOffset forKey:@"timeOffset"];
  [coderCopy encodeObject:self->_audioLanguage forKey:@"audioLanguage"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_currentlyPlayingSongID forKey:@"currentlyPlayingSongID"];
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [coderCopy encodeInt:LODWORD(self->_kind) forKey:@"kind"];
  [coderCopy encodeObject:self->_rottenTomatoesReview forKey:@"rottenTomatoesReview"];
  [coderCopy encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
}

+ (id)metadataFromContentItem:(id)item
{
  v50 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (!itemCopy)
  {
    v5 = 0;
    goto LABEL_57;
  }

  v5 = objc_alloc_init(TVRCNowPlayingMetadata);
  metadata = [itemCopy metadata];
  v7 = MEMORY[0x277CCABB0];
  [metadata duration];
  v8 = [v7 numberWithDouble:?];
  [(TVRCNowPlayingMetadata *)v5 setDuration:v8];

  title = [metadata title];
  [(TVRCNowPlayingMetadata *)v5 setTitle:title];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(metadata, "iTunesStoreIdentifier")}];
  v12 = [v10 stringWithFormat:@"%@", v11];
  [(TVRCNowPlayingMetadata *)v5 setITunesStoreIdentifier:v12];

  v13 = [self currentAudioLanguageOptionFromContentItem:itemCopy];
  [(TVRCNowPlayingMetadata *)v5 setAudioLanguage:v13];

  v14 = MEMORY[0x277CCABB0];
  metadata2 = [itemCopy metadata];
  [metadata2 elapsedTimeTimestamp];
  v16 = [v14 numberWithDouble:?];
  [(TVRCNowPlayingMetadata *)v5 setTimestamp:v16];

  v17 = MEMORY[0x277CCABB0];
  metadata3 = [itemCopy metadata];
  [metadata3 elapsedTime];
  v19 = [v17 numberWithDouble:?];
  [(TVRCNowPlayingMetadata *)v5 setTimeOffset:v19];

  metadata4 = [itemCopy metadata];
  nowPlayingInfo = [metadata4 nowPlayingInfo];
  v22 = [nowPlayingInfo objectForKeyedSubscript:@"TVRAdditionalMetadata"];

  if (!v22)
  {
    goto LABEL_55;
  }

  v42 = metadata;
  v43 = itemCopy;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v22 allKeys];
  v23 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v23)
  {
    goto LABEL_54;
  }

  v24 = v23;
  v25 = *v46;
  do
  {
    v26 = 0;
    do
    {
      if (*v46 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v45 + 1) + 8 * v26);
      v28 = [v22 objectForKeyedSubscript:v27];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v28;
      }

      else
      {
        v31 = 0;
      }

      v32 = v31;
      if (![v27 isEqual:@"avkt/com.apple.avkit.iTunesStoreIdentifier"])
      {
        v33 = [v27 isEqual:@"avkt/com.apple.avkit.seasonNumber"];
        if (v33)
        {
          stringValue2 = __50__TVRCNowPlayingMetadata_metadataFromContentItem___block_invoke(v33, v30, v32);
          [(TVRCNowPlayingMetadata *)v5 setSeasonNumber:stringValue2];
        }

        else
        {
          v35 = [v27 isEqual:@"avkt/com.apple.avkit.episodeNumber"];
          if (!v35)
          {
            if ([v27 isEqual:@"mdta/com.apple.hls.episode-title"])
            {
              if (v30)
              {
                [(TVRCNowPlayingMetadata *)v5 setEpisodeTitle:v30];
              }
            }

            else if ([v27 isEqual:@"mdta/com.apple.hls.description"])
            {
              if (v30)
              {
                extendedDescription = [(TVRCNowPlayingMetadata *)v5 extendedDescription];
                v37 = [extendedDescription length];

                if (!v37)
                {
                  [(TVRCNowPlayingMetadata *)v5 setExtendedDescription:v30];
                }
              }
            }

            else if ([v27 isEqual:@"mdta/com.apple.hls.genre"])
            {
              if (v30)
              {
                [(TVRCNowPlayingMetadata *)v5 setGenre:v30];
              }
            }

            else if ([v27 isEqual:@"mdta/com.apple.hls.rating-display-name"])
            {
              if (v30)
              {
                [(TVRCNowPlayingMetadata *)v5 setRatingDescription:v30];
              }
            }

            else if ([v27 isEqual:@"avkt/TVRMainContentStartTime"])
            {
              if (v32)
              {
                [(TVRCNowPlayingMetadata *)v5 setMainContentStartTime:v32];
              }
            }

            else if ([v27 isEqual:@"avkt/TVRProgramID"])
            {
              if (v30)
              {
                [(TVRCNowPlayingMetadata *)v5 setProgramID:v30];
              }
            }

            else if ([v27 isEqual:@"avkt/TVRTimeOffset"])
            {
              if (v32)
              {
                [(TVRCNowPlayingMetadata *)v5 setTimeOffset:v32];
              }
            }

            else if ([v27 isEqual:@"avkt/TVRCurrentlyPlayingSongID"])
            {
              if (v30)
              {
                [(TVRCNowPlayingMetadata *)v5 setCurrentlyPlayingSongID:v30];
              }

              else if (v32)
              {
                stringValue = [v32 stringValue];
                [(TVRCNowPlayingMetadata *)v5 setCurrentlyPlayingSongID:stringValue];
              }
            }

            goto LABEL_24;
          }

          stringValue2 = __50__TVRCNowPlayingMetadata_metadataFromContentItem___block_invoke(v35, v30, v32);
          [(TVRCNowPlayingMetadata *)v5 setEpisodeNumber:stringValue2];
        }

LABEL_23:

        goto LABEL_24;
      }

      if (v30)
      {
        [(TVRCNowPlayingMetadata *)v5 setITunesStoreIdentifier:v30];
        goto LABEL_24;
      }

      if (v32)
      {
        stringValue2 = [v32 stringValue];
        [(TVRCNowPlayingMetadata *)v5 setITunesStoreIdentifier:stringValue2];
        goto LABEL_23;
      }

LABEL_24:

      ++v26;
    }

    while (v24 != v26);
    v39 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    v24 = v39;
  }

  while (v39);
LABEL_54:

  metadata = v42;
  itemCopy = v43;
LABEL_55:

LABEL_57:
  v40 = *MEMORY[0x277D85DE8];

  return v5;
}

id __50__TVRCNowPlayingMetadata_metadataFromContentItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
LABEL_5:
    v8 = v7;
    goto LABEL_6;
  }

  if (v4)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "integerValue")}];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

+ (id)currentAudioLanguageOptionFromContentItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v4 = itemCopy;
  if (itemCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    currentLanguageOptions = [itemCopy currentLanguageOptions];
    languageTag = [currentLanguageOptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (languageTag)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != languageTag; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(currentLanguageOptions);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (![v9 type])
          {
            languageTag = [v9 languageTag];
            goto LABEL_12;
          }
        }

        languageTag = [currentLanguageOptions countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (languageTag)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    languageTag = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return languageTag;
}

@end
@interface VUIMediaTagsViewHelper
- (BOOL)_isValidNumber:(id)number;
- (VUIMediaTagsViewHelper)initWithContentMetadata:(id)metadata additionalMetadata:(id)additionalMetadata;
- (VUIMediaTagsViewHelper)initWithVUIMediaEntity:(id)entity;
- (VUIMediaTagsViewHelper)initWithVUIMediaItem:(id)item;
- (id)_commonSenseString:(id)string;
- (id)_durationDescriptionFromDuration:(id)duration;
- (id)_releaseDateDescriptionFromDate:(id)date;
- (void)_mediaBagdesWithVUIMediaEntity:(id)entity;
- (void)parseDictionaryForContentMetadata:(id)metadata additionalMetadata:(id)additionalMetadata;
@end

@implementation VUIMediaTagsViewHelper

- (VUIMediaTagsViewHelper)initWithContentMetadata:(id)metadata additionalMetadata:(id)additionalMetadata
{
  metadataCopy = metadata;
  additionalMetadataCopy = additionalMetadata;
  v11.receiver = self;
  v11.super_class = VUIMediaTagsViewHelper;
  v8 = [(VUIMediaTagsViewHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VUIMediaTagsViewHelper *)v8 parseDictionaryForContentMetadata:metadataCopy additionalMetadata:additionalMetadataCopy];
  }

  return v9;
}

- (VUIMediaTagsViewHelper)initWithVUIMediaItem:(id)item
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = VUIMediaTagsViewHelper;
  v5 = [(VUIMediaTagsViewHelper *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagsViewDictionary = v5->_tagsViewDictionary;
    v5->_tagsViewDictionary = v6;

    v8 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
    duration = [itemCopy duration];
    v10 = [v8 transformedValue:duration];

    releaseDate = [itemCopy releaseDate];
    v12 = [MEMORY[0x1E696AB78] localizedStringFromDate:releaseDate dateStyle:3 timeStyle:0];
    [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v10 forKeyedSubscript:VUIMediaTagKeyDuration];
    [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v12 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIMediaTagsViewHelper *)v5 _mediaBagdesWithVUIMediaEntity:itemCopy];
    }
  }

  return v5;
}

- (VUIMediaTagsViewHelper)initWithVUIMediaEntity:(id)entity
{
  entityCopy = entity;
  v22.receiver = self;
  v22.super_class = VUIMediaTagsViewHelper;
  v5 = [(VUIMediaTagsViewHelper *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagsViewDictionary = v5->_tagsViewDictionary;
    v5->_tagsViewDictionary = v6;

    type = [entityCopy type];
    v9 = +[VUIMediaEntityType movie];
    if (type != v9)
    {
      type2 = [entityCopy type];
      v11 = +[VUIMediaEntityType movieRental];
      v12 = v11;
      if (type2 != v11)
      {
        type3 = [entityCopy type];
        v14 = +[VUIMediaEntityType homeVideo];

        if (type3 != v14)
        {
LABEL_9:
          releaseYear = [entityCopy releaseYear];
          stringValue = [releaseYear stringValue];

          [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:stringValue forKeyedSubscript:VUIMediaTagKeyReleasedDate];
          genreTitle = [entityCopy genreTitle];
          [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:genreTitle forKeyedSubscript:VUIMediaTagKeyGenre];

          [(VUIMediaTagsViewHelper *)v5 _mediaBagdesWithVUIMediaEntity:entityCopy];
          goto LABEL_10;
        }

LABEL_8:
        v15 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
        duration = [entityCopy duration];
        v17 = [v15 transformedValue:duration];

        [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v17 forKeyedSubscript:VUIMediaTagKeyDuration];
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_10:

  return v5;
}

- (void)parseDictionaryForContentMetadata:(id)metadata additionalMetadata:(id)additionalMetadata
{
  metadataCopy = metadata;
  additionalMetadataCopy = additionalMetadata;
  if (!self->_tagsViewDictionary)
  {
    v7 = objc_opt_new();
    tagsViewDictionary = self->_tagsViewDictionary;
    self->_tagsViewDictionary = v7;
  }

  if (!self->_dateComponentFormatter)
  {
    v9 = objc_opt_new();
    dateComponentFormatter = self->_dateComponentFormatter;
    self->_dateComponentFormatter = v9;

    [(NSDateComponentsFormatter *)self->_dateComponentFormatter setUnitsStyle:2];
    [(NSDateComponentsFormatter *)self->_dateComponentFormatter setAllowedUnits:96];
  }

  if (!self->_tomatoPercentFormatter)
  {
    v11 = objc_opt_new();
    tomatoPercentFormatter = self->_tomatoPercentFormatter;
    self->_tomatoPercentFormatter = v11;

    [(NSNumberFormatter *)self->_tomatoPercentFormatter setNumberStyle:3];
    [(NSNumberFormatter *)self->_tomatoPercentFormatter setMultiplier:&unk_1F5E5C9C0];
  }

  [(NSMutableDictionary *)self->_tagsViewDictionary removeAllObjects];
  title = [metadataCopy title];
  v14 = [title length];

  if (v14)
  {
    title2 = [metadataCopy title];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:title2 forKeyedSubscript:VUIMediaTagKeyTitle];
  }

  subtitle = [metadataCopy subtitle];
  v17 = [subtitle length];

  if (v17)
  {
    subtitle2 = [metadataCopy subtitle];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:subtitle2 forKeyedSubscript:VUIMediaTagKeySubtitle];
  }

  mediaDescription = [metadataCopy mediaDescription];
  v20 = [mediaDescription length];

  if (v20)
  {
    mediaDescription2 = [metadataCopy mediaDescription];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:mediaDescription2 forKeyedSubscript:VUIMediaTagKeyDescription];
  }

  formattedReleaseDate = [metadataCopy formattedReleaseDate];

  if (formattedReleaseDate)
  {
    formattedReleaseDate2 = [metadataCopy formattedReleaseDate];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:formattedReleaseDate2 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
  }

  else
  {
    releasedDate = [metadataCopy releasedDate];

    if (!releasedDate)
    {
      goto LABEL_18;
    }

    formattedReleaseDate2 = [metadataCopy releasedDate];
    v25 = [(VUIMediaTagsViewHelper *)self _releaseDateDescriptionFromDate:formattedReleaseDate2];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v25 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
  }

LABEL_18:
  duration = [metadataCopy duration];

  if (duration)
  {
    duration2 = [metadataCopy duration];
    v28 = [(VUIMediaTagsViewHelper *)self _durationDescriptionFromDuration:duration2];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v28 forKeyedSubscript:VUIMediaTagKeyDuration];
  }

  genre = [metadataCopy genre];
  v30 = [genre length];

  if (v30)
  {
    genre2 = [metadataCopy genre];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:genre2 forKeyedSubscript:VUIMediaTagKeyGenre];
  }

  genres = [metadataCopy genres];

  if (genres)
  {
    genres2 = [metadataCopy genres];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:genres2 forKeyedSubscript:VUIMediaTagKeyGenres];
  }

  genreSeparator = [metadataCopy genreSeparator];
  v35 = [genreSeparator length];

  if (v35)
  {
    genreSeparator2 = [metadataCopy genreSeparator];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:genreSeparator2 forKeyedSubscript:VUIMediaTagKeyGenreSeparator];
  }

  hasClosedCaptions = [metadataCopy hasClosedCaptions];
  bOOLValue = [hasClosedCaptions BOOLValue];

  if (bOOLValue)
  {
    v39 = +[VUILocalizationManager sharedInstance];
    v40 = [v39 localizedStringForKey:@"TV.Accessibility.CC"];
    v41 = [VUIMediaTagsImageHelper imageWithName:@"cc" flatten:1 accessibilityDescription:v40];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v41 forKeyedSubscript:VUIMediaTagKeyClosedCaptionImage];
  }

  hasADLocales = [metadataCopy hasADLocales];
  bOOLValue2 = [hasADLocales BOOLValue];

  if (bOOLValue2)
  {
    v44 = +[VUILocalizationManager sharedInstance];
    v45 = [v44 localizedStringForKey:@"TV.Accessibility.AD"];
    v46 = [VUIMediaTagsImageHelper imageWithName:@"metadata-ad" flatten:1 accessibilityDescription:v45];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v46 forKeyedSubscript:VUIMediaTagKeyADLocalesImage];
  }

  hasSDHLocales = [metadataCopy hasSDHLocales];
  bOOLValue3 = [hasSDHLocales BOOLValue];

  if (bOOLValue3)
  {
    v49 = +[VUILocalizationManager sharedInstance];
    v50 = [v49 localizedStringForKey:@"TV.Accessibility.SDH"];
    v51 = [VUIMediaTagsImageHelper imageWithName:@"metadata-sdh" flatten:1 accessibilityDescription:v50];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v51 forKeyedSubscript:VUIMediaTagKeySDHLocalesImage];
  }

  tomatoPercentage = [metadataCopy tomatoPercentage];
  v53 = [(VUIMediaTagsViewHelper *)self _isValidNumber:tomatoPercentage];

  if (v53)
  {
    v54 = self->_tomatoPercentFormatter;
    tomatoPercentage2 = [metadataCopy tomatoPercentage];
    v56 = [(NSNumberFormatter *)v54 stringFromNumber:tomatoPercentage2];

    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v56 forKeyedSubscript:VUIMediaTagKeyTomatoPercentage];
  }

  commonSenseRecommendedAge = [metadataCopy commonSenseRecommendedAge];
  v58 = [(VUIMediaTagsViewHelper *)self _isValidNumber:commonSenseRecommendedAge];

  if (v58)
  {
    commonSenseRecommendedAge2 = [metadataCopy commonSenseRecommendedAge];
    v60 = [(VUIMediaTagsViewHelper *)self _commonSenseString:commonSenseRecommendedAge2];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v60 forKeyedSubscript:VUIMediaTagKeyCommonSenseRating];

    v61 = +[VUILocalizationManager sharedInstance];
    [v61 localizedStringForKey:@"ACCESSIBILITY_COMMON_SENSE"];
    v63 = v62 = additionalMetadataCopy;
    v64 = [VUIMediaTagsImageHelper imageWithName:@"cs_badge_white" flatten:0 accessibilityDescription:v63];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v64 forKeyedSubscript:VUIMediaTagKeyCommonSenseImage];

    additionalMetadataCopy = v62;
    v65 = +[VUILocalizationManager sharedInstance];
    v66 = [v65 localizedStringForKey:@"ACCESSIBILITY_COMMON_SENSE"];
    v67 = [VUIMediaTagsImageHelper imageWithName:@"cs_badge_black" flatten:0 accessibilityDescription:v66];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v67 forKeyedSubscript:VUIMediaTagKeyCommonSenseDarkImage];
  }

  ratingAuxiliaryName = [metadataCopy ratingAuxiliaryName];
  if ([ratingAuxiliaryName length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:ratingAuxiliaryName forKeyedSubscript:VUIMediaTagKeyContentRatingAuxiliaryName];
  }

  v173 = ratingAuxiliaryName;
  ratingName = [metadataCopy ratingName];
  ratingSystem = [metadataCopy ratingSystem];
  if ([ratingSystem length] && objc_msgSend(ratingName, "length"))
  {
    ratingValue = [metadataCopy ratingValue];
    v72 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:ratingSystem ratingLabel:ratingName rank:objc_msgSend(ratingValue ratingDescription:{"unsignedIntegerValue"), 0}];
    mEMORY[0x1E69DF6C0] = [MEMORY[0x1E69DF6C0] sharedInstance];
    v74 = [mEMORY[0x1E69DF6C0] badgeForContentRating:v72 drawUnknownRatingBadge:1];

    if (v74)
    {
      [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v74 forKeyedSubscript:VUIMediaTagKeyRatingImage];
    }
  }

  v172 = ratingName;
  tomatoFreshness = [metadataCopy tomatoFreshness];
  v76 = +[VUILocalizationManager sharedInstance];
  v77 = [v76 localizedStringForKey:@"TV.Accessibility.TomatoRating"];
  v78 = [VUIMediaTagsImageHelper imageWithName:@"RTLargeRotten" flatten:0 accessibilityDescription:v77];

  if (tomatoFreshness == 1)
  {
    v79 = @"RTLargeFresh";
    goto LABEL_47;
  }

  if (tomatoFreshness == 2)
  {
    v79 = @"RTLargeCertified";
LABEL_47:
    v80 = +[VUILocalizationManager sharedInstance];
    v81 = [v80 localizedStringForKey:@"TV.Accessibility.TomatoRating"];
    v82 = [VUIMediaTagsImageHelper imageWithName:v79 flatten:0 accessibilityDescription:v81];

    v83 = v82;
    goto LABEL_49;
  }

  v83 = v78;
LABEL_49:
  v170 = v83;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  videoDynamicRange = [metadataCopy videoDynamicRange];
  if (![(VUIMediaTagsViewHelper *)self _isValidNumber:?])
  {
    goto LABEL_58;
  }

  integerValue = [videoDynamicRange integerValue];
  if (integerValue == 2)
  {
    v85 = +[VUILocalizationManager sharedInstance];
    v86 = [v85 localizedStringForKey:@"ACCESSIBILITY_HDR"];
    v87 = @"hdr";
LABEL_56:
    v88 = [VUIMediaTagsImageHelper imageWithName:v87 flatten:1 accessibilityDescription:v86];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v88 forKeyedSubscript:VUIMediaTagKeyVideoDynamicRangeImage];

    goto LABEL_57;
  }

  if (integerValue != 4)
  {
    if (integerValue != 3)
    {
      goto LABEL_58;
    }

    v85 = +[VUILocalizationManager sharedInstance];
    v86 = [v85 localizedStringForKey:@"ACCESSIBILITY_DOLBY_VISION"];
    v87 = @"dolby-vision";
    goto LABEL_56;
  }

  v85 = [VUIMediaTagsImageHelper imageWithName:@"hdr10+" flatten:1 accessibilityDescription:0];
  [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v85 forKeyedSubscript:VUIMediaTagKeyVideoDynamicRangeImage];
LABEL_57:

LABEL_58:
  videoResolutionClass = [metadataCopy videoResolutionClass];
  if ([(VUIMediaTagsViewHelper *)self _isValidNumber:videoResolutionClass])
  {
    integerValue2 = [videoResolutionClass integerValue];
    if (integerValue2 == 3)
    {
      v91 = @"4k";
      v92 = @"ACCESSIBILITY_4K";
      goto LABEL_63;
    }

    if (integerValue2 == 2)
    {
      v91 = @"hd";
      v92 = @"TV.Accessibility.HD";
LABEL_63:
      v93 = +[VUILocalizationManager sharedInstance];
      v94 = [v93 localizedStringForKey:v92];
      v95 = [VUIMediaTagsImageHelper imageWithName:v91 flatten:1 accessibilityDescription:v94];
      [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v95 forKeyedSubscript:VUIMediaTagKeyVideoResolutionImage];
    }
  }

  has3D = [metadataCopy has3D];
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:", has3D) && [has3D BOOLValue])
  {
    v97 = +[VUILocalizationManager sharedInstance];
    v98 = [v97 localizedStringForKey:@"LIBRARY_MOVIES_3D"];
    v99 = [VUIMediaTagsImageHelper imageWithName:@"tv.visionpro.3d" flatten:1 accessibilityDescription:v98];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v99 forKeyedSubscript:VUIMediaTagKey3DImage];
  }

  hasImmersive = [metadataCopy hasImmersive];
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:") && [hasImmersive BOOLValue])
  {
    v100 = +[VUILocalizationManager sharedInstance];
    v101 = [v100 localizedStringForKey:@"TV.Immersive"];
    v102 = [VUIMediaTagsImageHelper imageWithName:@"immersive.badge.fill" flatten:1 accessibilityDescription:v101];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v102 forKeyedSubscript:VUIMediaTagKeyImmersiveImage];
  }

  immersiveText = [metadataCopy immersiveText];
  if ([immersiveText length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:immersiveText forKeyedSubscript:VUIMediaTagKeyImmersiveText];
  }

  hasHighMotion = [metadataCopy hasHighMotion];
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:") && [hasHighMotion BOOLValue])
  {
    v104 = [VUIMediaTagsImageHelper imageWithName:@"high.motion.badge" flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v104 forKeyedSubscript:VUIMediaTagKeyHighMotionImage];
  }

  highMotionText = [metadataCopy highMotionText];
  if ([highMotionText length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:highMotionText forKeyedSubscript:VUIMediaTagKeyHighMotionText];
  }

  hasDolbyAtmos = [metadataCopy hasDolbyAtmos];
  v166 = highMotionText;
  v167 = immersiveText;
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:") && [hasDolbyAtmos BOOLValue])
  {
    v106 = +[VUILocalizationManager sharedInstance];
    v107 = [v106 localizedStringForKey:@"ACCESSIBILITY_DOLBY_ATMOS"];
    v108 = [VUIMediaTagsImageHelper imageWithName:@"dolby-atmos" flatten:1 accessibilityDescription:v107];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v108 forKeyedSubscript:VUIMediaTagKeyDolbyAtmosImage];
  }

  rentalExpiration = [metadataCopy rentalExpiration];
  if (rentalExpiration)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:rentalExpiration forKeyedSubscript:VUIMediaTagKeyRentalExpiration];
  }

  v165 = rentalExpiration;
  v110 = [additionalMetadataCopy vui_stringForKey:@"comingSoonText"];
  if ([v110 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v110 forKeyedSubscript:VUIMediaTagKeyComingSoonText];
  }

  v164 = v110;
  v111 = [additionalMetadataCopy vui_stringForKey:@"availabilityText"];
  v112 = [additionalMetadataCopy vui_attrStringForKey:@"availabilityText"];
  if ([v111 length] || objc_msgSend(v112, "length"))
  {
    if ([v111 length])
    {
      v113 = v111;
    }

    else
    {
      v113 = v112;
    }

    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v113 forKeyedSubscript:VUIMediaTagKeyAvailabilityText];
  }

  [(VUIMediaTagsViewHelper *)self addSeperatorKey:@"·"];
  v114 = [additionalMetadataCopy vui_stringForKey:@"availabilityImage"];
  v161 = v114;
  if ([v114 length])
  {
    v115 = [VUIMediaTagsImageHelper imageWithName:v114 flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v115 forKeyedSubscript:VUIMediaTagKeyAvailabilityImage];
  }

  v116 = [additionalMetadataCopy vui_stringForKey:@"episodeNumberTitleAbbreviated"];
  if ([v116 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v116 forKeyedSubscript:VUIMediaTagKeyEpisodeNumberTitle];
  }

  v160 = v116;
  if ([metadataCopy isSharedWatchEnabled] && objc_msgSend(additionalMetadataCopy, "vui_BOOLForKey:defaultValue:", @"isGroupWatchActivityEligible", 0))
  {
    v117 = [VUIMediaTagsImageHelper imageWithName:@"shareplay" flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v117 forKeyedSubscript:VUIMediaTagKeyGroupActivityImage];
  }

  episodeNumber = [metadataCopy episodeNumber];
  seasonNumber = [metadataCopy seasonNumber];
  numberOfSeasons = [metadataCopy numberOfSeasons];
  seasonTitle = [metadataCopy seasonTitle];
  v175 = seasonNumber;
  v176 = episodeNumber;
  v171 = ratingSystem;
  v168 = has3D;
  v169 = videoResolutionClass;
  v162 = v112;
  v163 = v111;
  v174 = seasonTitle;
  if (episodeNumber && seasonNumber)
  {
    v121 = +[VUILocalizationManager sharedInstance];
    v122 = [v121 localizedStringForKey:@"TV.SeasonEpisode.Abbreviated"];
    vui_languageAwareDescription = [seasonNumber vui_languageAwareDescription];
    v124 = [v122 stringByReplacingOccurrencesOfString:@"@@seasonNumber@@" withString:vui_languageAwareDescription];
    [v176 vui_languageAwareDescription];
    v126 = v125 = additionalMetadataCopy;
    v127 = [v124 stringByReplacingOccurrencesOfString:@"@@episodeNumber@@" withString:v126];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v127 forKeyedSubscript:VUIMediaTagKeySeasonEpisode];

    additionalMetadataCopy = v125;
  }

  else if (seasonTitle)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:seasonTitle forKeyedSubscript:VUIMediaTagKeySeasonEpisode];
  }

  if (numberOfSeasons)
  {
    v128 = MEMORY[0x1E696AEC0];
    v129 = +[VUILocalizationManager sharedInstance];
    v130 = [v129 localizedStringForKey:@"TV.SeasonsCount"];
    vui_languageAwareDescription2 = [v128 stringWithValidatedFormat:v130 validFormatSpecifiers:@"%d" error:0, objc_msgSend(numberOfSeasons, "intValue")];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:vui_languageAwareDescription2 forKeyedSubscript:VUIMediaTagKeySeasonCount];
  }

  else
  {
    if (!seasonNumber)
    {
      goto LABEL_107;
    }

    v129 = +[VUILocalizationManager sharedInstance];
    v130 = [v129 localizedStringForKey:@"TV.SeasonsOrdinalCount"];
    vui_languageAwareDescription2 = [seasonNumber vui_languageAwareDescription];
    v132 = [v130 stringByReplacingOccurrencesOfString:@"@@seasonNumber@@" withString:vui_languageAwareDescription2];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v132 forKeyedSubscript:VUIMediaTagKeySeasonCount];
  }

LABEL_107:
  channelName = [metadataCopy channelName];
  if (channelName)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:channelName forKeyedSubscript:VUIMediaTagKeyChannel];
  }

  if ([metadataCopy isFederated])
  {
    v134 = [VUIMediaTagsImageHelper imageWithName:@"arrow.up.forward.square.fill" flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v134 forKeyedSubscript:VUIMediaTagKeyFederated];
  }

  leagueShortName = [metadataCopy leagueShortName];
  if (leagueShortName)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:leagueShortName forKeyedSubscript:VUIMediaTagKeyLeagueShortName];
  }

  gameStartTime = [metadataCopy gameStartTime];
  if (gameStartTime)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:gameStartTime forKeyedSubscript:VUIMediaTagKeyGameStartTime];
  }

  gameVenue = [metadataCopy gameVenue];
  if (gameVenue)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:gameVenue forKeyedSubscript:VUIMediaTagKeyGameVenue];
  }

  liveTextBadge = [metadataCopy liveTextBadge];
  if (liveTextBadge)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:liveTextBadge forKeyedSubscript:VUIMediaTagKeyLiveTextBadge];
  }

  v155 = liveTextBadge;
  timeTextBadge = [metadataCopy timeTextBadge];
  if (timeTextBadge)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:timeTextBadge forKeyedSubscript:VUIMediaTagKeyTimeTextBadge];
  }

  versionCount = [metadataCopy versionCount];
  if ([versionCount length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:versionCount forKeyedSubscript:VUIMediaTagKeyVersionCount];
  }

  v159 = channelName;
  teamAbbreviation = [metadataCopy teamAbbreviation];
  if ([teamAbbreviation length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:teamAbbreviation forKeyedSubscript:VUIMediaTagKeyTeamAbbreviation];
  }

  v158 = leagueShortName;
  shootoutsText = [metadataCopy shootoutsText];
  if ([shootoutsText length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:shootoutsText forKeyedSubscript:VUIMediaTagKeyShootoutsText];
  }

  v182 = additionalMetadataCopy;
  v143 = [additionalMetadataCopy objectForKey:VUIMediaTagKeyEntitlementCue];
  if (v143)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v143 forKeyedSubscript:VUIMediaTagKeyEntitlementCue];
  }

  contentUnavailabilityText = [metadataCopy contentUnavailabilityText];
  v145 = contentUnavailabilityText;
  if (contentUnavailabilityText && [contentUnavailabilityText length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v145 forKeyedSubscript:VUIMediaTagKeyContentUnavailabilityText];
  }

  v156 = gameVenue;
  v157 = gameStartTime;
  v146 = [v182 objectForKey:@"BrandLinkbutton"];
  if (v146)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v146 forKeyedSubscript:VUIMediaTagKeyBrandLinkButton];
  }

  isBlackedOut = [metadataCopy isBlackedOut];
  bOOLValue4 = [isBlackedOut BOOLValue];

  if (bOOLValue4)
  {
    v149 = +[VUILocalizationManager sharedInstance];
    v150 = [v149 localizedStringForKey:@"TV.Blackout"];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v150 forKeyedSubscript:VUIMediaTagKeyIsBlackedOut];
  }

  isUpgradeEligible = [metadataCopy isUpgradeEligible];
  bOOLValue5 = [isUpgradeEligible BOOLValue];

  if (bOOLValue5)
  {
    v153 = +[VUILocalizationManager sharedInstance];
    v154 = [v153 localizedStringForKey:@"TV.UpgradeToWatch"];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v154 forKeyedSubscript:VUIMediaTagKeyUpgradeText];
  }
}

- (BOOL)_isValidNumber:(id)number
{
  numberCopy = number;
  if (numberCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v5 = [numberCopy isEqualToNumber:notANumber] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_releaseDateDescriptionFromDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    if (_releaseDateDescriptionFromDate__onceToken != -1)
    {
      [VUIMediaTagsViewHelper _releaseDateDescriptionFromDate:];
    }

    v4 = [_releaseDateDescriptionFromDate__dateFormatter stringFromDate:dateCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __58__VUIMediaTagsViewHelper__releaseDateDescriptionFromDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _releaseDateDescriptionFromDate__dateFormatter;
  _releaseDateDescriptionFromDate__dateFormatter = v0;

  v2 = _releaseDateDescriptionFromDate__dateFormatter;

  return [v2 setLocalizedDateFormatFromTemplate:@"y"];
}

- (id)_durationDescriptionFromDuration:(id)duration
{
  if (duration)
  {
    [duration doubleValue];
    v5 = v4;
    if (v4 >= 600.0)
    {
      v6 = 96;
    }

    else
    {
      v6 = 192;
    }

    [(NSDateComponentsFormatter *)self->_dateComponentFormatter setAllowedUnits:v6];
    v7 = [(NSDateComponentsFormatter *)self->_dateComponentFormatter stringFromTimeInterval:v5];
    v8 = [v7 stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F5DB25C0}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_mediaBagdesWithVUIMediaEntity:(id)entity
{
  entityCopy = entity;
  hLSResolution = [entityCopy HLSResolution];
  v5 = hLSResolution;
  if (hLSResolution)
  {
    resolution = hLSResolution;
  }

  else
  {
    resolution = [entityCopy resolution];
  }

  v7 = resolution;

  hLSColorCapability = [entityCopy HLSColorCapability];
  v9 = hLSColorCapability;
  if (hLSColorCapability)
  {
    colorCapability = hLSColorCapability;
  }

  else
  {
    colorCapability = [entityCopy colorCapability];
  }

  v11 = colorCapability;

  hLSAudioCapability = [entityCopy HLSAudioCapability];
  if (hLSAudioCapability)
  {
    audioCapability = hLSAudioCapability;
  }

  else
  {
    audioCapability = [entityCopy audioCapability];
  }

  v14 = audioCapability;

  unsignedIntegerValue = [v7 unsignedIntegerValue];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];
  unsignedIntegerValue3 = [v14 unsignedIntegerValue];
  if ((unsignedIntegerValue - 1) >= 2)
  {
    if (unsignedIntegerValue != 3)
    {
      goto LABEL_15;
    }

    v18 = @"4k";
    v19 = @"ACCESSIBILITY_4K";
  }

  else
  {
    v18 = @"hd";
    v19 = @"TV.Accessibility.CC";
  }

  v20 = +[VUILocalizationManager sharedInstance];
  v21 = [v20 localizedStringForKey:v19];
  v22 = [VUIMediaTagsImageHelper imageWithName:v18 flatten:1 accessibilityDescription:v21];
  [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v22 forKeyedSubscript:VUIMediaTagKeyVideoResolutionImage];

LABEL_15:
  IsHDRCapable = SSDeviceIsHDRCapable();
  v24 = entityCopy;
  if (!IsHDRCapable)
  {
    goto LABEL_21;
  }

  if ((unsignedIntegerValue2 & 2) != 0)
  {
    v25 = @"dolby-vision";
    v26 = @"ACCESSIBILITY_DOLBY_VISION";
  }

  else
  {
    if ((unsignedIntegerValue2 & 1) == 0)
    {
      goto LABEL_21;
    }

    v25 = @"hdr";
    v26 = @"ACCESSIBILITY_HDR";
  }

  v27 = +[VUILocalizationManager sharedInstance];
  v28 = [v27 localizedStringForKey:v26];
  v29 = [VUIMediaTagsImageHelper imageWithName:v25 flatten:1 accessibilityDescription:v28];
  [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v29 forKeyedSubscript:VUIMediaTagKeyVideoDynamicRangeImage];

  v24 = entityCopy;
LABEL_21:
  contentRating = [v24 contentRating];
  mEMORY[0x1E69DF6C0] = [MEMORY[0x1E69DF6C0] sharedInstance];
  v32 = [mEMORY[0x1E69DF6C0] badgeForContentRating:contentRating drawUnknownRatingBadge:1];

  if (v32)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v32 forKeyedSubscript:VUIMediaTagKeyRatingImage];
  }

  if (unsignedIntegerValue3)
  {
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"ACCESSIBILITY_DOLBY_ATMOS"];
    v35 = [VUIMediaTagsImageHelper imageWithName:@"dolby-atmos" flatten:1 accessibilityDescription:v34];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v35 forKeyedSubscript:VUIMediaTagKeyDolbyAtmosImage];
  }

  type = [entityCopy type];
  v37 = +[VUIMediaEntityType movie];
  v38 = v37;
  if (type == v37)
  {
  }

  else
  {
    type2 = [entityCopy type];
    v40 = +[VUIMediaEntityType homeVideo];

    if (type2 != v40)
    {
      goto LABEL_31;
    }
  }

  extrasURL = [entityCopy extrasURL];
  absoluteString = [extrasURL absoluteString];
  v43 = [absoluteString length];

  if (v43)
  {
    v44 = [VUIMediaTagsImageHelper imageWithName:@"itunes-extras-badge" flatten:0 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v44 forKeyedSubscript:VUIMediaTagKeyItunesExtras];
  }

LABEL_31:
}

- (id)_commonSenseString:(id)string
{
  unsignedIntValue = [string unsignedIntValue];
  v4 = MEMORY[0x1E696AEC0];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"TV.CommonSense.AgeRating"];
  v7 = [v4 localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%u" error:0, unsignedIntValue];

  return v7;
}

@end
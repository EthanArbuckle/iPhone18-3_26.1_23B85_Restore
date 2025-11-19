@interface VUIMediaTagsViewHelper
- (BOOL)_isValidNumber:(id)a3;
- (VUIMediaTagsViewHelper)initWithContentMetadata:(id)a3 additionalMetadata:(id)a4;
- (VUIMediaTagsViewHelper)initWithVUIMediaEntity:(id)a3;
- (VUIMediaTagsViewHelper)initWithVUIMediaItem:(id)a3;
- (id)_commonSenseString:(id)a3;
- (id)_durationDescriptionFromDuration:(id)a3;
- (id)_releaseDateDescriptionFromDate:(id)a3;
- (void)_mediaBagdesWithVUIMediaEntity:(id)a3;
- (void)parseDictionaryForContentMetadata:(id)a3 additionalMetadata:(id)a4;
@end

@implementation VUIMediaTagsViewHelper

- (VUIMediaTagsViewHelper)initWithContentMetadata:(id)a3 additionalMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = VUIMediaTagsViewHelper;
  v8 = [(VUIMediaTagsViewHelper *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(VUIMediaTagsViewHelper *)v8 parseDictionaryForContentMetadata:v6 additionalMetadata:v7];
  }

  return v9;
}

- (VUIMediaTagsViewHelper)initWithVUIMediaItem:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = VUIMediaTagsViewHelper;
  v5 = [(VUIMediaTagsViewHelper *)&v14 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagsViewDictionary = v5->_tagsViewDictionary;
    v5->_tagsViewDictionary = v6;

    v8 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
    v9 = [v4 duration];
    v10 = [v8 transformedValue:v9];

    v11 = [v4 releaseDate];
    v12 = [MEMORY[0x1E696AB78] localizedStringFromDate:v11 dateStyle:3 timeStyle:0];
    [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v10 forKeyedSubscript:VUIMediaTagKeyDuration];
    [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v12 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VUIMediaTagsViewHelper *)v5 _mediaBagdesWithVUIMediaEntity:v4];
    }
  }

  return v5;
}

- (VUIMediaTagsViewHelper)initWithVUIMediaEntity:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = VUIMediaTagsViewHelper;
  v5 = [(VUIMediaTagsViewHelper *)&v22 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagsViewDictionary = v5->_tagsViewDictionary;
    v5->_tagsViewDictionary = v6;

    v8 = [v4 type];
    v9 = +[VUIMediaEntityType movie];
    if (v8 != v9)
    {
      v10 = [v4 type];
      v11 = +[VUIMediaEntityType movieRental];
      v12 = v11;
      if (v10 != v11)
      {
        v13 = [v4 type];
        v14 = +[VUIMediaEntityType homeVideo];

        if (v13 != v14)
        {
LABEL_9:
          v18 = [v4 releaseYear];
          v19 = [v18 stringValue];

          [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v19 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
          v20 = [v4 genreTitle];
          [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v20 forKeyedSubscript:VUIMediaTagKeyGenre];

          [(VUIMediaTagsViewHelper *)v5 _mediaBagdesWithVUIMediaEntity:v4];
          goto LABEL_10;
        }

LABEL_8:
        v15 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E69DF858]];
        v16 = [v4 duration];
        v17 = [v15 transformedValue:v16];

        [(NSMutableDictionary *)v5->_tagsViewDictionary setObject:v17 forKeyedSubscript:VUIMediaTagKeyDuration];
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_10:

  return v5;
}

- (void)parseDictionaryForContentMetadata:(id)a3 additionalMetadata:(id)a4
{
  v183 = a3;
  v6 = a4;
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
  v13 = [v183 title];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [v183 title];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v15 forKeyedSubscript:VUIMediaTagKeyTitle];
  }

  v16 = [v183 subtitle];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [v183 subtitle];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v18 forKeyedSubscript:VUIMediaTagKeySubtitle];
  }

  v19 = [v183 mediaDescription];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [v183 mediaDescription];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v21 forKeyedSubscript:VUIMediaTagKeyDescription];
  }

  v22 = [v183 formattedReleaseDate];

  if (v22)
  {
    v23 = [v183 formattedReleaseDate];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v23 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
  }

  else
  {
    v24 = [v183 releasedDate];

    if (!v24)
    {
      goto LABEL_18;
    }

    v23 = [v183 releasedDate];
    v25 = [(VUIMediaTagsViewHelper *)self _releaseDateDescriptionFromDate:v23];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v25 forKeyedSubscript:VUIMediaTagKeyReleasedDate];
  }

LABEL_18:
  v26 = [v183 duration];

  if (v26)
  {
    v27 = [v183 duration];
    v28 = [(VUIMediaTagsViewHelper *)self _durationDescriptionFromDuration:v27];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v28 forKeyedSubscript:VUIMediaTagKeyDuration];
  }

  v29 = [v183 genre];
  v30 = [v29 length];

  if (v30)
  {
    v31 = [v183 genre];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v31 forKeyedSubscript:VUIMediaTagKeyGenre];
  }

  v32 = [v183 genres];

  if (v32)
  {
    v33 = [v183 genres];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v33 forKeyedSubscript:VUIMediaTagKeyGenres];
  }

  v34 = [v183 genreSeparator];
  v35 = [v34 length];

  if (v35)
  {
    v36 = [v183 genreSeparator];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v36 forKeyedSubscript:VUIMediaTagKeyGenreSeparator];
  }

  v37 = [v183 hasClosedCaptions];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    v39 = +[VUILocalizationManager sharedInstance];
    v40 = [v39 localizedStringForKey:@"TV.Accessibility.CC"];
    v41 = [VUIMediaTagsImageHelper imageWithName:@"cc" flatten:1 accessibilityDescription:v40];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v41 forKeyedSubscript:VUIMediaTagKeyClosedCaptionImage];
  }

  v42 = [v183 hasADLocales];
  v43 = [v42 BOOLValue];

  if (v43)
  {
    v44 = +[VUILocalizationManager sharedInstance];
    v45 = [v44 localizedStringForKey:@"TV.Accessibility.AD"];
    v46 = [VUIMediaTagsImageHelper imageWithName:@"metadata-ad" flatten:1 accessibilityDescription:v45];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v46 forKeyedSubscript:VUIMediaTagKeyADLocalesImage];
  }

  v47 = [v183 hasSDHLocales];
  v48 = [v47 BOOLValue];

  if (v48)
  {
    v49 = +[VUILocalizationManager sharedInstance];
    v50 = [v49 localizedStringForKey:@"TV.Accessibility.SDH"];
    v51 = [VUIMediaTagsImageHelper imageWithName:@"metadata-sdh" flatten:1 accessibilityDescription:v50];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v51 forKeyedSubscript:VUIMediaTagKeySDHLocalesImage];
  }

  v52 = [v183 tomatoPercentage];
  v53 = [(VUIMediaTagsViewHelper *)self _isValidNumber:v52];

  if (v53)
  {
    v54 = self->_tomatoPercentFormatter;
    v55 = [v183 tomatoPercentage];
    v56 = [(NSNumberFormatter *)v54 stringFromNumber:v55];

    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v56 forKeyedSubscript:VUIMediaTagKeyTomatoPercentage];
  }

  v57 = [v183 commonSenseRecommendedAge];
  v58 = [(VUIMediaTagsViewHelper *)self _isValidNumber:v57];

  if (v58)
  {
    v59 = [v183 commonSenseRecommendedAge];
    v60 = [(VUIMediaTagsViewHelper *)self _commonSenseString:v59];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v60 forKeyedSubscript:VUIMediaTagKeyCommonSenseRating];

    v61 = +[VUILocalizationManager sharedInstance];
    [v61 localizedStringForKey:@"ACCESSIBILITY_COMMON_SENSE"];
    v63 = v62 = v6;
    v64 = [VUIMediaTagsImageHelper imageWithName:@"cs_badge_white" flatten:0 accessibilityDescription:v63];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v64 forKeyedSubscript:VUIMediaTagKeyCommonSenseImage];

    v6 = v62;
    v65 = +[VUILocalizationManager sharedInstance];
    v66 = [v65 localizedStringForKey:@"ACCESSIBILITY_COMMON_SENSE"];
    v67 = [VUIMediaTagsImageHelper imageWithName:@"cs_badge_black" flatten:0 accessibilityDescription:v66];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v67 forKeyedSubscript:VUIMediaTagKeyCommonSenseDarkImage];
  }

  v68 = [v183 ratingAuxiliaryName];
  if ([v68 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v68 forKeyedSubscript:VUIMediaTagKeyContentRatingAuxiliaryName];
  }

  v173 = v68;
  v69 = [v183 ratingName];
  v70 = [v183 ratingSystem];
  if ([v70 length] && objc_msgSend(v69, "length"))
  {
    v71 = [v183 ratingValue];
    v72 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:v70 ratingLabel:v69 rank:objc_msgSend(v71 ratingDescription:{"unsignedIntegerValue"), 0}];
    v73 = [MEMORY[0x1E69DF6C0] sharedInstance];
    v74 = [v73 badgeForContentRating:v72 drawUnknownRatingBadge:1];

    if (v74)
    {
      [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v74 forKeyedSubscript:VUIMediaTagKeyRatingImage];
    }
  }

  v172 = v69;
  v75 = [v183 tomatoFreshness];
  v76 = +[VUILocalizationManager sharedInstance];
  v77 = [v76 localizedStringForKey:@"TV.Accessibility.TomatoRating"];
  v78 = [VUIMediaTagsImageHelper imageWithName:@"RTLargeRotten" flatten:0 accessibilityDescription:v77];

  if (v75 == 1)
  {
    v79 = @"RTLargeFresh";
    goto LABEL_47;
  }

  if (v75 == 2)
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
  v180 = [v183 videoDynamicRange];
  if (![(VUIMediaTagsViewHelper *)self _isValidNumber:?])
  {
    goto LABEL_58;
  }

  v84 = [v180 integerValue];
  if (v84 == 2)
  {
    v85 = +[VUILocalizationManager sharedInstance];
    v86 = [v85 localizedStringForKey:@"ACCESSIBILITY_HDR"];
    v87 = @"hdr";
LABEL_56:
    v88 = [VUIMediaTagsImageHelper imageWithName:v87 flatten:1 accessibilityDescription:v86];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v88 forKeyedSubscript:VUIMediaTagKeyVideoDynamicRangeImage];

    goto LABEL_57;
  }

  if (v84 != 4)
  {
    if (v84 != 3)
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
  v89 = [v183 videoResolutionClass];
  if ([(VUIMediaTagsViewHelper *)self _isValidNumber:v89])
  {
    v90 = [v89 integerValue];
    if (v90 == 3)
    {
      v91 = @"4k";
      v92 = @"ACCESSIBILITY_4K";
      goto LABEL_63;
    }

    if (v90 == 2)
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

  v96 = [v183 has3D];
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:", v96) && [v96 BOOLValue])
  {
    v97 = +[VUILocalizationManager sharedInstance];
    v98 = [v97 localizedStringForKey:@"LIBRARY_MOVIES_3D"];
    v99 = [VUIMediaTagsImageHelper imageWithName:@"tv.visionpro.3d" flatten:1 accessibilityDescription:v98];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v99 forKeyedSubscript:VUIMediaTagKey3DImage];
  }

  v179 = [v183 hasImmersive];
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:") && [v179 BOOLValue])
  {
    v100 = +[VUILocalizationManager sharedInstance];
    v101 = [v100 localizedStringForKey:@"TV.Immersive"];
    v102 = [VUIMediaTagsImageHelper imageWithName:@"immersive.badge.fill" flatten:1 accessibilityDescription:v101];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v102 forKeyedSubscript:VUIMediaTagKeyImmersiveImage];
  }

  v103 = [v183 immersiveText];
  if ([v103 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v103 forKeyedSubscript:VUIMediaTagKeyImmersiveText];
  }

  v178 = [v183 hasHighMotion];
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:") && [v178 BOOLValue])
  {
    v104 = [VUIMediaTagsImageHelper imageWithName:@"high.motion.badge" flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v104 forKeyedSubscript:VUIMediaTagKeyHighMotionImage];
  }

  v105 = [v183 highMotionText];
  if ([v105 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v105 forKeyedSubscript:VUIMediaTagKeyHighMotionText];
  }

  v177 = [v183 hasDolbyAtmos];
  v166 = v105;
  v167 = v103;
  if (-[VUIMediaTagsViewHelper _isValidNumber:](self, "_isValidNumber:") && [v177 BOOLValue])
  {
    v106 = +[VUILocalizationManager sharedInstance];
    v107 = [v106 localizedStringForKey:@"ACCESSIBILITY_DOLBY_ATMOS"];
    v108 = [VUIMediaTagsImageHelper imageWithName:@"dolby-atmos" flatten:1 accessibilityDescription:v107];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v108 forKeyedSubscript:VUIMediaTagKeyDolbyAtmosImage];
  }

  v109 = [v183 rentalExpiration];
  if (v109)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v109 forKeyedSubscript:VUIMediaTagKeyRentalExpiration];
  }

  v165 = v109;
  v110 = [v6 vui_stringForKey:@"comingSoonText"];
  if ([v110 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v110 forKeyedSubscript:VUIMediaTagKeyComingSoonText];
  }

  v164 = v110;
  v111 = [v6 vui_stringForKey:@"availabilityText"];
  v112 = [v6 vui_attrStringForKey:@"availabilityText"];
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
  v114 = [v6 vui_stringForKey:@"availabilityImage"];
  v161 = v114;
  if ([v114 length])
  {
    v115 = [VUIMediaTagsImageHelper imageWithName:v114 flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v115 forKeyedSubscript:VUIMediaTagKeyAvailabilityImage];
  }

  v116 = [v6 vui_stringForKey:@"episodeNumberTitleAbbreviated"];
  if ([v116 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v116 forKeyedSubscript:VUIMediaTagKeyEpisodeNumberTitle];
  }

  v160 = v116;
  if ([v183 isSharedWatchEnabled] && objc_msgSend(v6, "vui_BOOLForKey:defaultValue:", @"isGroupWatchActivityEligible", 0))
  {
    v117 = [VUIMediaTagsImageHelper imageWithName:@"shareplay" flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v117 forKeyedSubscript:VUIMediaTagKeyGroupActivityImage];
  }

  v118 = [v183 episodeNumber];
  v119 = [v183 seasonNumber];
  v181 = [v183 numberOfSeasons];
  v120 = [v183 seasonTitle];
  v175 = v119;
  v176 = v118;
  v171 = v70;
  v168 = v96;
  v169 = v89;
  v162 = v112;
  v163 = v111;
  v174 = v120;
  if (v118 && v119)
  {
    v121 = +[VUILocalizationManager sharedInstance];
    v122 = [v121 localizedStringForKey:@"TV.SeasonEpisode.Abbreviated"];
    v123 = [v119 vui_languageAwareDescription];
    v124 = [v122 stringByReplacingOccurrencesOfString:@"@@seasonNumber@@" withString:v123];
    [v176 vui_languageAwareDescription];
    v126 = v125 = v6;
    v127 = [v124 stringByReplacingOccurrencesOfString:@"@@episodeNumber@@" withString:v126];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v127 forKeyedSubscript:VUIMediaTagKeySeasonEpisode];

    v6 = v125;
  }

  else if (v120)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v120 forKeyedSubscript:VUIMediaTagKeySeasonEpisode];
  }

  if (v181)
  {
    v128 = MEMORY[0x1E696AEC0];
    v129 = +[VUILocalizationManager sharedInstance];
    v130 = [v129 localizedStringForKey:@"TV.SeasonsCount"];
    v131 = [v128 stringWithValidatedFormat:v130 validFormatSpecifiers:@"%d" error:0, objc_msgSend(v181, "intValue")];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v131 forKeyedSubscript:VUIMediaTagKeySeasonCount];
  }

  else
  {
    if (!v119)
    {
      goto LABEL_107;
    }

    v129 = +[VUILocalizationManager sharedInstance];
    v130 = [v129 localizedStringForKey:@"TV.SeasonsOrdinalCount"];
    v131 = [v119 vui_languageAwareDescription];
    v132 = [v130 stringByReplacingOccurrencesOfString:@"@@seasonNumber@@" withString:v131];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v132 forKeyedSubscript:VUIMediaTagKeySeasonCount];
  }

LABEL_107:
  v133 = [v183 channelName];
  if (v133)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v133 forKeyedSubscript:VUIMediaTagKeyChannel];
  }

  if ([v183 isFederated])
  {
    v134 = [VUIMediaTagsImageHelper imageWithName:@"arrow.up.forward.square.fill" flatten:1 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v134 forKeyedSubscript:VUIMediaTagKeyFederated];
  }

  v135 = [v183 leagueShortName];
  if (v135)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v135 forKeyedSubscript:VUIMediaTagKeyLeagueShortName];
  }

  v136 = [v183 gameStartTime];
  if (v136)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v136 forKeyedSubscript:VUIMediaTagKeyGameStartTime];
  }

  v137 = [v183 gameVenue];
  if (v137)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v137 forKeyedSubscript:VUIMediaTagKeyGameVenue];
  }

  v138 = [v183 liveTextBadge];
  if (v138)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v138 forKeyedSubscript:VUIMediaTagKeyLiveTextBadge];
  }

  v155 = v138;
  v139 = [v183 timeTextBadge];
  if (v139)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v139 forKeyedSubscript:VUIMediaTagKeyTimeTextBadge];
  }

  v140 = [v183 versionCount];
  if ([v140 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v140 forKeyedSubscript:VUIMediaTagKeyVersionCount];
  }

  v159 = v133;
  v141 = [v183 teamAbbreviation];
  if ([v141 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v141 forKeyedSubscript:VUIMediaTagKeyTeamAbbreviation];
  }

  v158 = v135;
  v142 = [v183 shootoutsText];
  if ([v142 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v142 forKeyedSubscript:VUIMediaTagKeyShootoutsText];
  }

  v182 = v6;
  v143 = [v6 objectForKey:VUIMediaTagKeyEntitlementCue];
  if (v143)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v143 forKeyedSubscript:VUIMediaTagKeyEntitlementCue];
  }

  v144 = [v183 contentUnavailabilityText];
  v145 = v144;
  if (v144 && [v144 length])
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v145 forKeyedSubscript:VUIMediaTagKeyContentUnavailabilityText];
  }

  v156 = v137;
  v157 = v136;
  v146 = [v182 objectForKey:@"BrandLinkbutton"];
  if (v146)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v146 forKeyedSubscript:VUIMediaTagKeyBrandLinkButton];
  }

  v147 = [v183 isBlackedOut];
  v148 = [v147 BOOLValue];

  if (v148)
  {
    v149 = +[VUILocalizationManager sharedInstance];
    v150 = [v149 localizedStringForKey:@"TV.Blackout"];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v150 forKeyedSubscript:VUIMediaTagKeyIsBlackedOut];
  }

  v151 = [v183 isUpgradeEligible];
  v152 = [v151 BOOLValue];

  if (v152)
  {
    v153 = +[VUILocalizationManager sharedInstance];
    v154 = [v153 localizedStringForKey:@"TV.UpgradeToWatch"];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v154 forKeyedSubscript:VUIMediaTagKeyUpgradeText];
  }
}

- (BOOL)_isValidNumber:(id)a3
{
  v3 = a3;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [MEMORY[0x1E696AB90] notANumber];
    v5 = [v3 isEqualToNumber:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_releaseDateDescriptionFromDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (_releaseDateDescriptionFromDate__onceToken != -1)
    {
      [VUIMediaTagsViewHelper _releaseDateDescriptionFromDate:];
    }

    v4 = [_releaseDateDescriptionFromDate__dateFormatter stringFromDate:v3];
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

- (id)_durationDescriptionFromDuration:(id)a3
{
  if (a3)
  {
    [a3 doubleValue];
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

- (void)_mediaBagdesWithVUIMediaEntity:(id)a3
{
  v45 = a3;
  v4 = [v45 HLSResolution];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v45 resolution];
  }

  v7 = v6;

  v8 = [v45 HLSColorCapability];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v45 colorCapability];
  }

  v11 = v10;

  v12 = [v45 HLSAudioCapability];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [v45 audioCapability];
  }

  v14 = v13;

  v15 = [v7 unsignedIntegerValue];
  v16 = [v11 unsignedIntegerValue];
  v17 = [v14 unsignedIntegerValue];
  if ((v15 - 1) >= 2)
  {
    if (v15 != 3)
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
  v24 = v45;
  if (!IsHDRCapable)
  {
    goto LABEL_21;
  }

  if ((v16 & 2) != 0)
  {
    v25 = @"dolby-vision";
    v26 = @"ACCESSIBILITY_DOLBY_VISION";
  }

  else
  {
    if ((v16 & 1) == 0)
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

  v24 = v45;
LABEL_21:
  v30 = [v24 contentRating];
  v31 = [MEMORY[0x1E69DF6C0] sharedInstance];
  v32 = [v31 badgeForContentRating:v30 drawUnknownRatingBadge:1];

  if (v32)
  {
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v32 forKeyedSubscript:VUIMediaTagKeyRatingImage];
  }

  if (v17)
  {
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"ACCESSIBILITY_DOLBY_ATMOS"];
    v35 = [VUIMediaTagsImageHelper imageWithName:@"dolby-atmos" flatten:1 accessibilityDescription:v34];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v35 forKeyedSubscript:VUIMediaTagKeyDolbyAtmosImage];
  }

  v36 = [v45 type];
  v37 = +[VUIMediaEntityType movie];
  v38 = v37;
  if (v36 == v37)
  {
  }

  else
  {
    v39 = [v45 type];
    v40 = +[VUIMediaEntityType homeVideo];

    if (v39 != v40)
    {
      goto LABEL_31;
    }
  }

  v41 = [v45 extrasURL];
  v42 = [v41 absoluteString];
  v43 = [v42 length];

  if (v43)
  {
    v44 = [VUIMediaTagsImageHelper imageWithName:@"itunes-extras-badge" flatten:0 accessibilityDescription:0];
    [(NSMutableDictionary *)self->_tagsViewDictionary setObject:v44 forKeyedSubscript:VUIMediaTagKeyItunesExtras];
  }

LABEL_31:
}

- (id)_commonSenseString:(id)a3
{
  v3 = [a3 unsignedIntValue];
  v4 = MEMORY[0x1E696AEC0];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"TV.CommonSense.AgeRating"];
  v7 = [v4 localizedStringWithValidatedFormat:v6 validFormatSpecifiers:@"%u" error:0, v3];

  return v7;
}

@end
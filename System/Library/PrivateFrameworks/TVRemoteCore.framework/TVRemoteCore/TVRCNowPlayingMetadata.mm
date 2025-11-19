@interface TVRCNowPlayingMetadata
+ (id)currentAudioLanguageOptionFromContentItem:(id)a3;
+ (id)metadataFromContentItem:(id)a3;
- (BOOL)isEqualToNowPlayingMetadata:(id)a3;
- (BOOL)isMissingCriticalMetadata;
- (BOOL)isPlayingOnTVApp;
- (TVRCNowPlayingMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCNowPlayingMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TVRCNowPlayingMetadata *)self canonicalID];
  v7 = [(TVRCNowPlayingMetadata *)self title];
  v8 = [v3 stringWithFormat:@"<%@ %p: canonicalID=%@ title=%@>", v5, self, v6, v7];;

  return v8;
}

- (BOOL)isEqualToNowPlayingMetadata:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_73;
  }

  v5 = [(TVRCNowPlayingMetadata *)self canonicalID];
  v6 = [v4 canonicalID];
  v7 = (v5 == 0) ^ (v6 == 0);

  if (v7)
  {
    goto LABEL_73;
  }

  v8 = [(TVRCNowPlayingMetadata *)self title];
  v9 = [v4 title];
  v10 = (v8 == 0) ^ (v9 == 0);

  if (v10)
  {
    goto LABEL_73;
  }

  v11 = [(TVRCNowPlayingMetadata *)self genre];
  v12 = [v4 genre];
  v13 = (v11 == 0) ^ (v12 == 0);

  if (v13)
  {
    goto LABEL_73;
  }

  v14 = [(TVRCNowPlayingMetadata *)self episodeTitle];
  v15 = [v4 episodeTitle];
  v16 = (v14 == 0) ^ (v15 == 0);

  if (v16)
  {
    goto LABEL_73;
  }

  v17 = [(TVRCNowPlayingMetadata *)self duration];
  v18 = [v4 duration];
  v19 = (v17 == 0) ^ (v18 == 0);

  if (v19)
  {
    goto LABEL_73;
  }

  v20 = [(TVRCNowPlayingMetadata *)self showID];
  v21 = [v4 showID];
  v22 = (v20 == 0) ^ (v21 == 0);

  if (v22)
  {
    goto LABEL_73;
  }

  v23 = [(TVRCNowPlayingMetadata *)self seasonNumber];
  v24 = [v4 seasonNumber];
  v25 = (v23 == 0) ^ (v24 == 0);

  if (v25)
  {
    goto LABEL_73;
  }

  v26 = [(TVRCNowPlayingMetadata *)self episodeNumber];
  v27 = [v4 episodeNumber];
  v28 = (v26 == 0) ^ (v27 == 0);

  if (v28)
  {
    goto LABEL_73;
  }

  v29 = [(TVRCNowPlayingMetadata *)self ratingDescription];
  v30 = [v4 ratingDescription];
  v31 = (v29 == 0) ^ (v30 == 0);

  if (v31)
  {
    goto LABEL_73;
  }

  v32 = [(TVRCNowPlayingMetadata *)self extendedDescription];
  v33 = [v4 extendedDescription];
  v34 = (v32 == 0) ^ (v33 == 0);

  if (v34)
  {
    goto LABEL_73;
  }

  v35 = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
  v36 = [v4 iTunesStoreIdentifier];
  v37 = (v35 == 0) ^ (v36 == 0);

  if (v37)
  {
    goto LABEL_73;
  }

  v38 = [(TVRCNowPlayingMetadata *)self productPageURL];
  v39 = [v4 productPageURL];
  v40 = (v38 == 0) ^ (v39 == 0);

  if (v40)
  {
    goto LABEL_73;
  }

  v41 = [(TVRCNowPlayingMetadata *)self showProductPageURL];
  v42 = [v4 showProductPageURL];
  v43 = (v41 == 0) ^ (v42 == 0);

  if (v43)
  {
    goto LABEL_73;
  }

  v44 = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
  v45 = [v4 mainContentStartTime];
  v46 = (v44 == 0) ^ (v45 == 0);

  if (v46)
  {
    goto LABEL_73;
  }

  v47 = [(TVRCNowPlayingMetadata *)self programID];
  v48 = [v4 programID];
  v49 = (v47 == 0) ^ (v48 == 0);

  if (v49)
  {
    goto LABEL_73;
  }

  v50 = [(TVRCNowPlayingMetadata *)self timeOffset];
  v51 = [v4 timeOffset];
  v52 = (v50 == 0) ^ (v51 == 0);

  if (v52)
  {
    goto LABEL_73;
  }

  v53 = [(TVRCNowPlayingMetadata *)self audioLanguage];
  v54 = [v4 audioLanguage];
  v55 = (v53 == 0) ^ (v54 == 0);

  if (v55)
  {
    goto LABEL_73;
  }

  v56 = [(TVRCNowPlayingMetadata *)self timestamp];
  v57 = [v4 timestamp];
  v58 = (v56 == 0) ^ (v57 == 0);

  if (v58)
  {
    goto LABEL_73;
  }

  v59 = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
  v60 = [v4 currentlyPlayingSongID];
  v61 = (v59 == 0) ^ (v60 == 0);

  if (v61)
  {
    goto LABEL_73;
  }

  v62 = [(TVRCNowPlayingMetadata *)self bundleID];
  v63 = [v4 bundleID];
  v64 = (v62 == 0) ^ (v63 == 0);

  if (v64)
  {
    goto LABEL_73;
  }

  v65 = [(TVRCNowPlayingMetadata *)self releaseDate];
  v66 = [v4 releaseDate];
  v67 = (v65 == 0) ^ (v66 == 0);

  if (v67)
  {
    goto LABEL_73;
  }

  v68 = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
  v69 = [v4 rottenTomatoesReview];
  v70 = (v68 == 0) ^ (v69 == 0);

  if (v70)
  {
    goto LABEL_73;
  }

  v71 = [(TVRCNowPlayingMetadata *)self canonicalID];
  if (v71)
  {
    v72 = v71;
    v73 = [(TVRCNowPlayingMetadata *)self canonicalID];
    v74 = [v4 canonicalID];
    v75 = [v73 isEqualToString:v74];

    if (!v75)
    {
      goto LABEL_73;
    }
  }

  v76 = [(TVRCNowPlayingMetadata *)self title];
  if (v76)
  {
    v77 = v76;
    v78 = [(TVRCNowPlayingMetadata *)self title];
    v79 = [v4 title];
    v80 = [v78 isEqualToString:v79];

    if (!v80)
    {
      goto LABEL_73;
    }
  }

  v81 = [(TVRCNowPlayingMetadata *)self genre];
  if (v81)
  {
    v82 = v81;
    v83 = [(TVRCNowPlayingMetadata *)self genre];
    v84 = [v4 genre];
    v85 = [v83 isEqualToString:v84];

    if (!v85)
    {
      goto LABEL_73;
    }
  }

  v86 = [(TVRCNowPlayingMetadata *)self episodeTitle];
  if (v86)
  {
    v87 = v86;
    v88 = [(TVRCNowPlayingMetadata *)self episodeTitle];
    v89 = [v4 episodeTitle];
    v90 = [v88 isEqualToString:v89];

    if (!v90)
    {
      goto LABEL_73;
    }
  }

  v91 = [(TVRCNowPlayingMetadata *)self showID];
  if (v91)
  {
    v92 = v91;
    v93 = [(TVRCNowPlayingMetadata *)self showID];
    v94 = [v4 showID];
    v95 = [v93 isEqualToString:v94];

    if (!v95)
    {
      goto LABEL_73;
    }
  }

  v96 = [(TVRCNowPlayingMetadata *)self duration];
  if (v96)
  {
    v97 = v96;
    v98 = [(TVRCNowPlayingMetadata *)self duration];
    v99 = [v4 duration];
    v100 = [v98 isEqualToNumber:v99];

    if (!v100)
    {
      goto LABEL_73;
    }
  }

  v101 = [(TVRCNowPlayingMetadata *)self seasonNumber];
  if (v101)
  {
    v102 = v101;
    v103 = [(TVRCNowPlayingMetadata *)self seasonNumber];
    v104 = [v4 seasonNumber];
    v105 = [v103 isEqualToNumber:v104];

    if (!v105)
    {
      goto LABEL_73;
    }
  }

  v106 = [(TVRCNowPlayingMetadata *)self episodeNumber];
  if (v106)
  {
    v107 = v106;
    v108 = [(TVRCNowPlayingMetadata *)self episodeNumber];
    v109 = [v4 episodeNumber];
    v110 = [v108 isEqualToNumber:v109];

    if (!v110)
    {
      goto LABEL_73;
    }
  }

  v111 = [(TVRCNowPlayingMetadata *)self ratingDescription];
  if (v111)
  {
    v112 = v111;
    v113 = [(TVRCNowPlayingMetadata *)self ratingDescription];
    v114 = [v4 ratingDescription];
    v115 = [v113 isEqualToString:v114];

    if (!v115)
    {
      goto LABEL_73;
    }
  }

  v116 = [(TVRCNowPlayingMetadata *)self extendedDescription];
  if (v116)
  {
    v117 = v116;
    v118 = [(TVRCNowPlayingMetadata *)self extendedDescription];
    v119 = [v4 extendedDescription];
    v120 = [v118 isEqualToString:v119];

    if (!v120)
    {
      goto LABEL_73;
    }
  }

  v121 = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
  if (v121)
  {
    v122 = v121;
    v123 = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
    v124 = [v4 iTunesStoreIdentifier];
    v125 = [v123 isEqualToString:v124];

    if (!v125)
    {
      goto LABEL_73;
    }
  }

  v126 = [(TVRCNowPlayingMetadata *)self productPageURL];
  if (v126)
  {
    v127 = v126;
    v128 = [(TVRCNowPlayingMetadata *)self productPageURL];
    v129 = [v4 productPageURL];
    v130 = [v128 isEqual:v129];

    if (!v130)
    {
      goto LABEL_73;
    }
  }

  v131 = [(TVRCNowPlayingMetadata *)self showProductPageURL];
  if (v131)
  {
  }

  else
  {
    v132 = [(TVRCNowPlayingMetadata *)self showProductPageURL];
    v133 = [v4 showProductPageURL];
    v134 = [v132 isEqual:v133];

    if (!v134)
    {
LABEL_73:
      v186 = 0;
      goto LABEL_74;
    }
  }

  v135 = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
  if (v135)
  {
    v136 = v135;
    v137 = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
    v138 = [v4 mainContentStartTime];
    v139 = [v137 isEqual:v138];

    if (!v139)
    {
      goto LABEL_73;
    }
  }

  v140 = [(TVRCNowPlayingMetadata *)self programID];
  if (v140)
  {
    v141 = v140;
    v142 = [(TVRCNowPlayingMetadata *)self programID];
    v143 = [v4 programID];
    v144 = [v142 isEqualToString:v143];

    if (!v144)
    {
      goto LABEL_73;
    }
  }

  v145 = [(TVRCNowPlayingMetadata *)self timeOffset];
  if (v145)
  {
    v146 = v145;
    v147 = [(TVRCNowPlayingMetadata *)self timeOffset];
    v148 = [v4 timeOffset];
    v149 = [v147 isEqualToNumber:v148];

    if (!v149)
    {
      goto LABEL_73;
    }
  }

  v150 = [(TVRCNowPlayingMetadata *)self audioLanguage];
  if (v150)
  {
    v151 = v150;
    v152 = [(TVRCNowPlayingMetadata *)self audioLanguage];
    v153 = [v4 audioLanguage];
    v154 = [v152 isEqualToString:v153];

    if (!v154)
    {
      goto LABEL_73;
    }
  }

  v155 = [(TVRCNowPlayingMetadata *)self timestamp];
  if (v155)
  {
    v156 = v155;
    v157 = [(TVRCNowPlayingMetadata *)self timestamp];
    v158 = [v4 timestamp];
    v159 = [v157 isEqual:v158];

    if (!v159)
    {
      goto LABEL_73;
    }
  }

  v160 = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
  if (v160)
  {
    v161 = v160;
    v162 = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
    v163 = [v4 currentlyPlayingSongID];
    v164 = [v162 isEqualToString:v163];

    if (!v164)
    {
      goto LABEL_73;
    }
  }

  v165 = [(TVRCNowPlayingMetadata *)self bundleID];
  if (v165)
  {
    v166 = v165;
    v167 = [(TVRCNowPlayingMetadata *)self bundleID];
    v168 = [v4 bundleID];
    v169 = [v167 isEqualToString:v168];

    if (!v169)
    {
      goto LABEL_73;
    }
  }

  v170 = [(TVRCNowPlayingMetadata *)self releaseDate];
  if (v170)
  {
    v171 = v170;
    v172 = [(TVRCNowPlayingMetadata *)self releaseDate];
    v173 = [v4 releaseDate];
    v174 = [v172 isEqualToDate:v173];

    if (!v174)
    {
      goto LABEL_73;
    }
  }

  v175 = [(TVRCNowPlayingMetadata *)self kind];
  if (v175 != [v4 kind])
  {
    goto LABEL_73;
  }

  v176 = [(TVRCNowPlayingMetadata *)self isAppleOriginal];
  if (v176 != [v4 isAppleOriginal])
  {
    goto LABEL_73;
  }

  v177 = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
  if (v177)
  {
    v178 = v177;
    v179 = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
    v180 = [v4 rottenTomatoesReview];
    v181 = [v179 isEqualToRottenTomatoesReview:v180];

    if (!v181)
    {
      goto LABEL_73;
    }
  }

  v182 = [(TVRCNowPlayingMetadata *)self imageURLTemplate];
  if (v182)
  {
    v183 = v182;
    v184 = [(TVRCNowPlayingMetadata *)self imageURLTemplate];
    v185 = [v4 imageURLTemplate];
    v186 = [v184 isEqualToString:v185];
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
  v2 = [(TVRCNowPlayingMetadata *)self extendedDescription];
  v3 = [v2 length] == 0;

  return v3;
}

- (BOOL)isPlayingOnTVApp
{
  v2 = [(TVRCNowPlayingMetadata *)self bundleID];
  v3 = [v2 isEqualToString:@"com.apple.TVWatchList"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(TVRCNowPlayingMetadata);
  v5 = [(TVRCNowPlayingMetadata *)self canonicalID];
  [(TVRCNowPlayingMetadata *)v4 setCanonicalID:v5];

  v6 = [(TVRCNowPlayingMetadata *)self title];
  [(TVRCNowPlayingMetadata *)v4 setTitle:v6];

  v7 = [(TVRCNowPlayingMetadata *)self genre];
  [(TVRCNowPlayingMetadata *)v4 setGenre:v7];

  v8 = [(TVRCNowPlayingMetadata *)self episodeTitle];
  [(TVRCNowPlayingMetadata *)v4 setEpisodeTitle:v8];

  v9 = [(TVRCNowPlayingMetadata *)self duration];
  [(TVRCNowPlayingMetadata *)v4 setDuration:v9];

  v10 = [(TVRCNowPlayingMetadata *)self showID];
  [(TVRCNowPlayingMetadata *)v4 setShowID:v10];

  v11 = [(TVRCNowPlayingMetadata *)self seasonNumber];
  [(TVRCNowPlayingMetadata *)v4 setSeasonNumber:v11];

  v12 = [(TVRCNowPlayingMetadata *)self episodeNumber];
  [(TVRCNowPlayingMetadata *)v4 setEpisodeNumber:v12];

  v13 = [(TVRCNowPlayingMetadata *)self ratingDescription];
  [(TVRCNowPlayingMetadata *)v4 setRatingDescription:v13];

  v14 = [(TVRCNowPlayingMetadata *)self extendedDescription];
  [(TVRCNowPlayingMetadata *)v4 setExtendedDescription:v14];

  v15 = [(TVRCNowPlayingMetadata *)self iTunesStoreIdentifier];
  [(TVRCNowPlayingMetadata *)v4 setITunesStoreIdentifier:v15];

  v16 = [(TVRCNowPlayingMetadata *)self productPageURL];
  [(TVRCNowPlayingMetadata *)v4 setProductPageURL:v16];

  v17 = [(TVRCNowPlayingMetadata *)self showProductPageURL];
  [(TVRCNowPlayingMetadata *)v4 setShowProductPageURL:v17];

  v18 = [(TVRCNowPlayingMetadata *)self mainContentStartTime];
  [(TVRCNowPlayingMetadata *)v4 setMainContentStartTime:v18];

  v19 = [(TVRCNowPlayingMetadata *)self programID];
  [(TVRCNowPlayingMetadata *)v4 setProgramID:v19];

  v20 = [(TVRCNowPlayingMetadata *)self timeOffset];
  [(TVRCNowPlayingMetadata *)v4 setTimeOffset:v20];

  v21 = [(TVRCNowPlayingMetadata *)self audioLanguage];
  [(TVRCNowPlayingMetadata *)v4 setAudioLanguage:v21];

  v22 = [(TVRCNowPlayingMetadata *)self timestamp];
  [(TVRCNowPlayingMetadata *)v4 setTimestamp:v22];

  v23 = [(TVRCNowPlayingMetadata *)self currentlyPlayingSongID];
  [(TVRCNowPlayingMetadata *)v4 setCurrentlyPlayingSongID:v23];

  v24 = [(TVRCNowPlayingMetadata *)self bundleID];
  [(TVRCNowPlayingMetadata *)v4 setBundleID:v24];

  v25 = [(TVRCNowPlayingMetadata *)self releaseDate];
  [(TVRCNowPlayingMetadata *)v4 setReleaseDate:v25];

  [(TVRCNowPlayingMetadata *)v4 setIsAppleOriginal:[(TVRCNowPlayingMetadata *)self isAppleOriginal]];
  [(TVRCNowPlayingMetadata *)v4 setKind:[(TVRCNowPlayingMetadata *)self kind]];
  v26 = [(TVRCNowPlayingMetadata *)self rottenTomatoesReview];
  v27 = [v26 copy];
  [(TVRCNowPlayingMetadata *)v4 setRottenTomatoesReview:v27];

  v28 = [(TVRCNowPlayingMetadata *)self imageURLTemplate];
  [(TVRCNowPlayingMetadata *)v4 setImageURLTemplate:v28];

  return v4;
}

- (TVRCNowPlayingMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = TVRCNowPlayingMetadata;
  v5 = [(TVRCNowPlayingMetadata *)&v53 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canonicalID"];
    canonicalID = v5->_canonicalID;
    v5->_canonicalID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"episodeTitle"];
    episodeTitle = v5->_episodeTitle;
    v5->_episodeTitle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showID"];
    showID = v5->_showID;
    v5->_showID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seasonNumber"];
    seasonNumber = v5->_seasonNumber;
    v5->_seasonNumber = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"episodeNumber"];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingDescription"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extendedDescription"];
    extendedDescription = v5->_extendedDescription;
    v5->_extendedDescription = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iTunesStoreIdentifier"];
    iTunesStoreIdentifier = v5->_iTunesStoreIdentifier;
    v5->_iTunesStoreIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productPageURL"];
    productPageURL = v5->_productPageURL;
    v5->_productPageURL = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showProductPageURL"];
    showProductPageURL = v5->_showProductPageURL;
    v5->_showProductPageURL = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mainContentStartTime"];
    mainContentStartTime = v5->_mainContentStartTime;
    v5->_mainContentStartTime = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"programID"];
    programID = v5->_programID;
    v5->_programID = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeOffset"];
    timeOffset = v5->_timeOffset;
    v5->_timeOffset = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioLanguage"];
    audioLanguage = v5->_audioLanguage;
    v5->_audioLanguage = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentlyPlayingSongID"];
    currentlyPlayingSongID = v5->_currentlyPlayingSongID;
    v5->_currentlyPlayingSongID = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v46;

    v5->_isAppleOriginal = [v4 decodeBoolForKey:@"isAppleOriginal"];
    v5->_kind = [v4 decodeIntForKey:@"kind"];
    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rottenTomatoesReview"];
    rottenTomatoesReview = v5->_rottenTomatoesReview;
    v5->_rottenTomatoesReview = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v50;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  canonicalID = self->_canonicalID;
  v5 = a3;
  [v5 encodeObject:canonicalID forKey:@"canonicalID"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_genre forKey:@"genre"];
  [v5 encodeObject:self->_episodeTitle forKey:@"episodeTitle"];
  [v5 encodeObject:self->_duration forKey:@"duration"];
  [v5 encodeObject:self->_showID forKey:@"showID"];
  [v5 encodeObject:self->_seasonNumber forKey:@"seasonNumber"];
  [v5 encodeObject:self->_episodeNumber forKey:@"episodeNumber"];
  [v5 encodeObject:self->_ratingDescription forKey:@"ratingDescription"];
  [v5 encodeObject:self->_extendedDescription forKey:@"extendedDescription"];
  [v5 encodeObject:self->_iTunesStoreIdentifier forKey:@"iTunesStoreIdentifier"];
  [v5 encodeObject:self->_productPageURL forKey:@"productPageURL"];
  [v5 encodeObject:self->_showProductPageURL forKey:@"showProductPageURL"];
  [v5 encodeObject:self->_mainContentStartTime forKey:@"mainContentStartTime"];
  [v5 encodeObject:self->_programID forKey:@"programID"];
  [v5 encodeObject:self->_timeOffset forKey:@"timeOffset"];
  [v5 encodeObject:self->_audioLanguage forKey:@"audioLanguage"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_currentlyPlayingSongID forKey:@"currentlyPlayingSongID"];
  [v5 encodeObject:self->_bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [v5 encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [v5 encodeInt:LODWORD(self->_kind) forKey:@"kind"];
  [v5 encodeObject:self->_rottenTomatoesReview forKey:@"rottenTomatoesReview"];
  [v5 encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
}

+ (id)metadataFromContentItem:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_57;
  }

  v5 = objc_alloc_init(TVRCNowPlayingMetadata);
  v6 = [v4 metadata];
  v7 = MEMORY[0x277CCABB0];
  [v6 duration];
  v8 = [v7 numberWithDouble:?];
  [(TVRCNowPlayingMetadata *)v5 setDuration:v8];

  v9 = [v6 title];
  [(TVRCNowPlayingMetadata *)v5 setTitle:v9];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "iTunesStoreIdentifier")}];
  v12 = [v10 stringWithFormat:@"%@", v11];
  [(TVRCNowPlayingMetadata *)v5 setITunesStoreIdentifier:v12];

  v13 = [a1 currentAudioLanguageOptionFromContentItem:v4];
  [(TVRCNowPlayingMetadata *)v5 setAudioLanguage:v13];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v4 metadata];
  [v15 elapsedTimeTimestamp];
  v16 = [v14 numberWithDouble:?];
  [(TVRCNowPlayingMetadata *)v5 setTimestamp:v16];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v4 metadata];
  [v18 elapsedTime];
  v19 = [v17 numberWithDouble:?];
  [(TVRCNowPlayingMetadata *)v5 setTimeOffset:v19];

  v20 = [v4 metadata];
  v21 = [v20 nowPlayingInfo];
  v22 = [v21 objectForKeyedSubscript:@"TVRAdditionalMetadata"];

  if (!v22)
  {
    goto LABEL_55;
  }

  v42 = v6;
  v43 = v4;
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
          v34 = __50__TVRCNowPlayingMetadata_metadataFromContentItem___block_invoke(v33, v30, v32);
          [(TVRCNowPlayingMetadata *)v5 setSeasonNumber:v34];
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
                v36 = [(TVRCNowPlayingMetadata *)v5 extendedDescription];
                v37 = [v36 length];

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
                v38 = [v32 stringValue];
                [(TVRCNowPlayingMetadata *)v5 setCurrentlyPlayingSongID:v38];
              }
            }

            goto LABEL_24;
          }

          v34 = __50__TVRCNowPlayingMetadata_metadataFromContentItem___block_invoke(v35, v30, v32);
          [(TVRCNowPlayingMetadata *)v5 setEpisodeNumber:v34];
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
        v34 = [v32 stringValue];
        [(TVRCNowPlayingMetadata *)v5 setITunesStoreIdentifier:v34];
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

  v6 = v42;
  v4 = v43;
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

+ (id)currentAudioLanguageOptionFromContentItem:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 currentLanguageOptions];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (![v9 type])
          {
            v6 = [v9 languageTag];
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
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
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

@end
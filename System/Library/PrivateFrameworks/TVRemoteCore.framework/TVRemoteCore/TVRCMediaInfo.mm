@interface TVRCMediaInfo
+ (id)imageTemplateFromDict:(id)a3;
+ (id)mediaInfoWithDictionary:(id)a3;
+ (unint64_t)kindForMediaType:(id)a3;
- (BOOL)isEqualToMediaInfo:(id)a3;
- (NSArray)roleCategories;
- (NSString)primaryTitle;
- (TVRCMediaInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCMediaInfo

+ (id)mediaInfoWithDictionary:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v4 objectForKeyedSubscript:@"content"];
  if (!v6)
  {
    v6 = v4;
  }

  v7 = [v4 objectForKeyedSubscript:@"roles"];
  if (!v7)
  {
    v7 = [v4 objectForKeyedSubscript:@"roles"];
  }

  v8 = [v6 objectForKeyedSubscript:@"id"];
  [v5 setIdentifier:v8];

  v9 = [v6 objectForKeyedSubscript:@"title"];
  [v5 setTitle:v9];

  v10 = [v6 objectForKeyedSubscript:@"type"];
  [v5 setKind:{objc_msgSend(a1, "kindForMediaType:", v10)}];

  v11 = [v6 objectForKeyedSubscript:@"description"];
  [v5 setExtendedDescription:v11];

  v12 = [v6 objectForKeyedSubscript:@"genres"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKeyedSubscript:@"name"];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  [v5 setGenre:v14];
  v15 = [a1 imageTemplateFromDict:v6];
  [v5 setImageURLTemplate:v15];

  v16 = [v6 objectForKeyedSubscript:@"rating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 objectForKeyedSubscript:@"displayName"];
  }

  else
  {
    v17 = 0;
  }

  [v5 setRatingDescription:v17];
  v18 = [v6 objectForKeyedSubscript:@"duration"];
  [v5 setDuration:v18];

  v19 = [v6 objectForKeyedSubscript:@"showTitle"];
  [v5 setShowTitle:v19];

  v20 = [v6 objectForKeyedSubscript:@"seasonNumber"];
  [v5 setSeasonNumber:v20];

  v21 = [v6 objectForKeyedSubscript:@"episodeNumber"];
  [v5 setEpisodeNumber:v21];

  v23 = __41__TVRCMediaInfo_mediaInfoWithDictionary___block_invoke(v22, v6);
  [v5 setProductURL:v23];

  v25 = __41__TVRCMediaInfo_mediaInfoWithDictionary___block_invoke(v24, v6);
  [v5 setShowURL:v25];

  v26 = [v6 objectForKeyedSubscript:@"showId"];
  [v5 setShowIdentifier:v26];

  v27 = [v6 objectForKeyedSubscript:@"isAppleOriginal"];
  [v5 setIsAppleOriginal:{objc_msgSend(v27, "BOOLValue")}];

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v44;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [TVRCMediaInfoRole roleWithDictionary:*(*(&v43 + 1) + 8 * i), v43];
        [v28 addObject:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v31);
  }

  [v5 setRoles:v28];
  v35 = [v6 objectForKeyedSubscript:@"releaseDate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 doubleValue], v36 > 0.0))
  {
    v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v36 / 1000.0];
  }

  else
  {
    v37 = 0;
  }

  [v5 setReleaseDate:v37];
  v38 = [v6 objectForKeyedSubscript:@"rottenTomatoesReviews"];
  if (v38)
  {
    v39 = [TVRCRottenTomatoesReview rottenTomatoesReviewWithDictionary:v38];
  }

  else
  {
    v39 = [TVRCRottenTomatoesReview rottenTomatoesReviewWithDictionary:v6];
    v40 = [v39 percentage];

    if (!v40)
    {

      v39 = 0;
    }
  }

  [v5 setRottenTomatoesReview:v39];
  v41 = *MEMORY[0x277D85DE8];

  return v5;
}

id __41__TVRCMediaInfo_mediaInfoWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:?];
  if ([v2 length])
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TVRCMediaInfo *)self identifier];
  [v4 setIdentifier:v5];

  v6 = [(TVRCMediaInfo *)self title];
  [v4 setTitle:v6];

  [v4 setKind:{-[TVRCMediaInfo kind](self, "kind")}];
  v7 = [(TVRCMediaInfo *)self extendedDescription];
  [v4 setExtendedDescription:v7];

  v8 = [(TVRCMediaInfo *)self genre];
  [v4 setGenre:v8];

  v9 = [(TVRCMediaInfo *)self imageURLTemplate];
  [v4 setImageURLTemplate:v9];

  v10 = [(TVRCMediaInfo *)self channelImageURLTemplate];
  [v4 setChannelImageURLTemplate:v10];

  v11 = [(TVRCMediaInfo *)self ratingDescription];
  [v4 setRatingDescription:v11];

  v12 = [(TVRCMediaInfo *)self duration];
  [v4 setDuration:v12];

  v13 = [(TVRCMediaInfo *)self showTitle];
  [v4 setShowTitle:v13];

  v14 = [(TVRCMediaInfo *)self seasonNumber];
  [v4 setSeasonNumber:v14];

  v15 = [(TVRCMediaInfo *)self episodeNumber];
  [v4 setEpisodeNumber:v15];

  v16 = [(TVRCMediaInfo *)self productURL];
  [v4 setProductURL:v16];

  v17 = [(TVRCMediaInfo *)self showURL];
  [v4 setShowURL:v17];

  v18 = [(TVRCMediaInfo *)self showIdentifier];
  [v4 setShowIdentifier:v18];

  [v4 setIsAppleOriginal:{-[TVRCMediaInfo isAppleOriginal](self, "isAppleOriginal")}];
  v19 = [(TVRCMediaInfo *)self roles];
  [v4 setRoles:v19];

  v20 = [(TVRCMediaInfo *)self releaseDate];
  [v4 setReleaseDate:v20];

  v21 = [(TVRCMediaInfo *)self rottenTomatoesReview];
  v22 = [v21 copy];
  [v4 setRottenTomatoesReview:v22];

  return v4;
}

- (BOOL)isEqualToMediaInfo:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_46;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_46;
  }

  v5 = [(TVRCMediaInfo *)self extendedDescription];
  v6 = [v4 extendedDescription];
  v7 = (v5 == 0) ^ (v6 == 0);

  if (v7)
  {
    goto LABEL_46;
  }

  v8 = [(TVRCMediaInfo *)self genre];
  v9 = [v4 genre];
  v10 = (v8 == 0) ^ (v9 == 0);

  if (v10)
  {
    goto LABEL_46;
  }

  v11 = [(TVRCMediaInfo *)self imageURLTemplate];
  v12 = [v4 imageURLTemplate];
  v13 = (v11 == 0) ^ (v12 == 0);

  if (v13)
  {
    goto LABEL_46;
  }

  v14 = [(TVRCMediaInfo *)self channelImageURLTemplate];
  v15 = [v4 channelImageURLTemplate];
  v16 = (v14 == 0) ^ (v15 == 0);

  if (v16)
  {
    goto LABEL_46;
  }

  v17 = [(TVRCMediaInfo *)self ratingDescription];
  v18 = [v4 ratingDescription];
  v19 = (v17 == 0) ^ (v18 == 0);

  if (v19)
  {
    goto LABEL_46;
  }

  v20 = [(TVRCMediaInfo *)self showTitle];
  v21 = [v4 showTitle];
  v22 = (v20 == 0) ^ (v21 == 0);

  if (v22)
  {
    goto LABEL_46;
  }

  v23 = [(TVRCMediaInfo *)self seasonNumber];
  v24 = [v4 seasonNumber];
  v25 = (v23 == 0) ^ (v24 == 0);

  if (v25)
  {
    goto LABEL_46;
  }

  v26 = [(TVRCMediaInfo *)self episodeNumber];
  v27 = [v4 episodeNumber];
  v28 = (v26 == 0) ^ (v27 == 0);

  if (v28)
  {
    goto LABEL_46;
  }

  v29 = [(TVRCMediaInfo *)self showURL];
  v30 = [v4 showURL];
  v31 = (v29 == 0) ^ (v30 == 0);

  if (v31)
  {
    goto LABEL_46;
  }

  v32 = [(TVRCMediaInfo *)self showIdentifier];
  v33 = [v4 showIdentifier];
  v34 = (v32 == 0) ^ (v33 == 0);

  if (v34)
  {
    goto LABEL_46;
  }

  v35 = [(TVRCMediaInfo *)self releaseDate];
  v36 = [v4 releaseDate];
  v37 = (v35 == 0) ^ (v36 == 0);

  if (v37)
  {
    goto LABEL_46;
  }

  v38 = [(TVRCMediaInfo *)self rottenTomatoesReview];
  v39 = [v4 rottenTomatoesReview];
  v40 = (v38 == 0) ^ (v39 == 0);

  if (v40)
  {
    goto LABEL_46;
  }

  v41 = [(TVRCMediaInfo *)self identifier];
  v42 = [v4 identifier];
  v43 = [v41 isEqualToString:v42];

  if (!v43)
  {
    goto LABEL_46;
  }

  v44 = [(TVRCMediaInfo *)self title];
  v45 = [v4 title];
  v46 = [v44 isEqualToString:v45];

  if (!v46)
  {
    goto LABEL_46;
  }

  v47 = [(TVRCMediaInfo *)self kind];
  if (v47 != [v4 kind])
  {
    goto LABEL_46;
  }

  v48 = [(TVRCMediaInfo *)self extendedDescription];
  if (v48)
  {
    v49 = v48;
    v50 = [(TVRCMediaInfo *)self extendedDescription];
    v51 = [v4 extendedDescription];
    v52 = [v50 isEqualToString:v51];

    if (!v52)
    {
      goto LABEL_46;
    }
  }

  v53 = [(TVRCMediaInfo *)self genre];
  if (v53)
  {
    v54 = v53;
    v55 = [(TVRCMediaInfo *)self genre];
    v56 = [v4 genre];
    v57 = [v55 isEqualToString:v56];

    if (!v57)
    {
      goto LABEL_46;
    }
  }

  v58 = [(TVRCMediaInfo *)self imageURLTemplate];
  if (v58)
  {
    v59 = v58;
    v60 = [(TVRCMediaInfo *)self imageURLTemplate];
    v61 = [v4 imageURLTemplate];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_46;
    }
  }

  v63 = [(TVRCMediaInfo *)self channelImageURLTemplate];
  if (v63)
  {
    v64 = v63;
    v65 = [(TVRCMediaInfo *)self channelImageURLTemplate];
    v66 = [v4 channelImageURLTemplate];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_46;
    }
  }

  v68 = [(TVRCMediaInfo *)self ratingDescription];
  if (v68)
  {
    v69 = v68;
    v70 = [(TVRCMediaInfo *)self ratingDescription];
    v71 = [v4 ratingDescription];
    v72 = [v70 isEqualToString:v71];

    if (!v72)
    {
      goto LABEL_46;
    }
  }

  v73 = [(TVRCMediaInfo *)self duration];
  v74 = [v4 duration];
  v75 = [v73 isEqualToNumber:v74];

  if (!v75)
  {
    goto LABEL_46;
  }

  v76 = [(TVRCMediaInfo *)self showTitle];
  if (v76)
  {
    v77 = v76;
    v78 = [(TVRCMediaInfo *)self showTitle];
    v79 = [v4 showTitle];
    v80 = [v78 isEqualToString:v79];

    if (!v80)
    {
      goto LABEL_46;
    }
  }

  v81 = [(TVRCMediaInfo *)self seasonNumber];
  if (v81)
  {
    v82 = v81;
    v83 = [(TVRCMediaInfo *)self seasonNumber];
    v84 = [v4 seasonNumber];
    v85 = [v83 isEqualToNumber:v84];

    if (!v85)
    {
      goto LABEL_46;
    }
  }

  v86 = [(TVRCMediaInfo *)self episodeNumber];
  if (v86)
  {
    v87 = v86;
    v88 = [(TVRCMediaInfo *)self episodeNumber];
    v89 = [v4 episodeNumber];
    v90 = [v88 isEqualToNumber:v89];

    if (!v90)
    {
      goto LABEL_46;
    }
  }

  v91 = [(TVRCMediaInfo *)self productURL];
  v92 = [v4 productURL];
  v93 = [v91 isEqual:v92];

  if (!v93)
  {
    goto LABEL_46;
  }

  v94 = [(TVRCMediaInfo *)self showURL];
  if (v94)
  {
    v95 = v94;
    v96 = [(TVRCMediaInfo *)self showURL];
    v97 = [v4 showURL];
    v98 = [v96 isEqual:v97];

    if (!v98)
    {
      goto LABEL_46;
    }
  }

  v99 = [(TVRCMediaInfo *)self showIdentifier];
  if (v99)
  {
    v100 = v99;
    v101 = [(TVRCMediaInfo *)self showIdentifier];
    v102 = [v4 showIdentifier];
    v103 = [v101 isEqualToString:v102];

    if (!v103)
    {
      goto LABEL_46;
    }
  }

  v104 = [(TVRCMediaInfo *)self isAppleOriginal];
  if (v104 != [v4 isAppleOriginal])
  {
    goto LABEL_46;
  }

  v105 = [(TVRCMediaInfo *)self roles];
  v106 = [v4 roles];
  v107 = [v105 isEqualToArray:v106];

  if (!v107)
  {
    goto LABEL_46;
  }

  v108 = [(TVRCMediaInfo *)self releaseDate];
  if (!v108)
  {
    goto LABEL_44;
  }

  v109 = v108;
  v110 = [(TVRCMediaInfo *)self releaseDate];
  v111 = [v4 releaseDate];
  v112 = [v110 isEqualToDate:v111];

  if (!v112)
  {
LABEL_46:
    v117 = 0;
  }

  else
  {
LABEL_44:
    v113 = [(TVRCMediaInfo *)self rottenTomatoesReview];
    if (v113)
    {
      v114 = v113;
      v115 = [(TVRCMediaInfo *)self rottenTomatoesReview];
      v116 = [v4 rottenTomatoesReview];
      v117 = [v115 isEqualToRottenTomatoesReview:v116];
    }

    else
    {
      v117 = 1;
    }
  }

  return v117 & 1;
}

- (NSArray)roleCategories
{
  v38 = *MEMORY[0x277D85DE8];
  roleCategories = self->_roleCategories;
  if (!roleCategories)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = self;
    v6 = [(TVRCMediaInfo *)self roles];
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = [v11 roleDescription];
          if ([v12 length])
          {
            v13 = [v11 roleDescription];
            v14 = [v5 objectForKeyedSubscript:v13];

            if (!v14)
            {
              [v4 addObject:v12];
              v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v5 setObject:v14 forKeyedSubscript:v12];
            }

            [v14 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * j);
          v22 = [v5 objectForKeyedSubscript:v21];
          if (v22)
          {
            v23 = [TVRCMediaInfoRoleCategory roleCategoryWithRoleDescription:v21 roles:v22];
            [(NSArray *)v15 addObject:v23];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v18);
    }

    v24 = v27->_roleCategories;
    v27->_roleCategories = v15;

    roleCategories = v27->_roleCategories;
  }

  v25 = *MEMORY[0x277D85DE8];

  return roleCategories;
}

- (NSString)primaryTitle
{
  v3 = [(TVRCMediaInfo *)self showTitle];
  v4 = [v3 length];

  if (v4)
  {
    [(TVRCMediaInfo *)self showTitle];
  }

  else
  {
    [(TVRCMediaInfo *)self title];
  }
  v5 = ;

  return v5;
}

- (TVRCMediaInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = TVRCMediaInfo;
  v5 = [(TVRCMediaInfo *)&v41 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_kind = [v4 decodeIntegerForKey:@"kind"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extendedDescription"];
    extendedDescription = v5->_extendedDescription;
    v5->_extendedDescription = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelImageURLTemplate"];
    channelImageURLTemplate = v5->_channelImageURLTemplate;
    v5->_channelImageURLTemplate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ratingDescription"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showTitle"];
    showTitle = v5->_showTitle;
    v5->_showTitle = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seasonNumber"];
    seasonNumber = v5->_seasonNumber;
    v5->_seasonNumber = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"episodeNumber"];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productURL"];
    productURL = v5->_productURL;
    v5->_productURL = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showURL"];
    showURL = v5->_showURL;
    v5->_showURL = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"showIdentifier"];
    showIdentifier = v5->_showIdentifier;
    v5->_showIdentifier = v32;

    v5->_isAppleOriginal = [v4 decodeBoolForKey:@"isAppleOriginal"];
    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roles"];
    roles = v5->_roles;
    v5->_roles = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rottenTomatoesReview"];
    rottenTomatoesReview = v5->_rottenTomatoesReview;
    v5->_rottenTomatoesReview = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_kind forKey:@"kind"];
  [v5 encodeObject:self->_extendedDescription forKey:@"extendedDescription"];
  [v5 encodeObject:self->_genre forKey:@"genre"];
  [v5 encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
  [v5 encodeObject:self->_channelImageURLTemplate forKey:@"channelImageURLTemplate"];
  [v5 encodeObject:self->_ratingDescription forKey:@"ratingDescription"];
  [v5 encodeObject:self->_duration forKey:@"duration"];
  [v5 encodeObject:self->_showTitle forKey:@"showTitle"];
  [v5 encodeObject:self->_seasonNumber forKey:@"seasonNumber"];
  [v5 encodeObject:self->_episodeNumber forKey:@"episodeNumber"];
  [v5 encodeObject:self->_productURL forKey:@"productURL"];
  [v5 encodeObject:self->_showURL forKey:@"showURL"];
  [v5 encodeObject:self->_showIdentifier forKey:@"showIdentifier"];
  [v5 encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [v5 encodeObject:self->_roles forKey:@"roles"];
  [v5 encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [v5 encodeObject:self->_rottenTomatoesReview forKey:@"rottenTomatoesReview"];
}

+ (unint64_t)kindForMediaType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Episode"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Movie"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Show"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SportingEvent"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageTemplateFromDict:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [a3 objectForKeyedSubscript:@"images"];
  if (v3 && (v15 = 0u, v16 = 0u, v13 = 0u, v14 = 0u, (v4 = [&unk_287E66CA0 countByEnumeratingWithState:&v13 objects:v17 count:16]) != 0))
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(&unk_287E66CA0);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        if (v8)
        {
          v10 = v8;
          v9 = [v8 objectForKeyedSubscript:@"url"];

          goto LABEL_13;
        }
      }

      v5 = [&unk_287E66CA0 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
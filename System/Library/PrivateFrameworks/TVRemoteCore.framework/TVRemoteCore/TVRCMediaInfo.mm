@interface TVRCMediaInfo
+ (id)imageTemplateFromDict:(id)dict;
+ (id)mediaInfoWithDictionary:(id)dictionary;
+ (unint64_t)kindForMediaType:(id)type;
- (BOOL)isEqualToMediaInfo:(id)info;
- (NSArray)roleCategories;
- (NSString)primaryTitle;
- (TVRCMediaInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCMediaInfo

+ (id)mediaInfoWithDictionary:(id)dictionary
{
  v48 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(self);
  v6 = [dictionaryCopy objectForKeyedSubscript:@"content"];
  if (!v6)
  {
    v6 = dictionaryCopy;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"roles"];
  if (!v7)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"roles"];
  }

  v8 = [v6 objectForKeyedSubscript:@"id"];
  [v5 setIdentifier:v8];

  v9 = [v6 objectForKeyedSubscript:@"title"];
  [v5 setTitle:v9];

  v10 = [v6 objectForKeyedSubscript:@"type"];
  [v5 setKind:{objc_msgSend(self, "kindForMediaType:", v10)}];

  v11 = [v6 objectForKeyedSubscript:@"description"];
  [v5 setExtendedDescription:v11];

  v12 = [v6 objectForKeyedSubscript:@"genres"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v12 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [firstObject objectForKeyedSubscript:@"name"];
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
  v15 = [self imageTemplateFromDict:v6];
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
    percentage = [v39 percentage];

    if (!percentage)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(TVRCMediaInfo *)self identifier];
  [v4 setIdentifier:identifier];

  title = [(TVRCMediaInfo *)self title];
  [v4 setTitle:title];

  [v4 setKind:{-[TVRCMediaInfo kind](self, "kind")}];
  extendedDescription = [(TVRCMediaInfo *)self extendedDescription];
  [v4 setExtendedDescription:extendedDescription];

  genre = [(TVRCMediaInfo *)self genre];
  [v4 setGenre:genre];

  imageURLTemplate = [(TVRCMediaInfo *)self imageURLTemplate];
  [v4 setImageURLTemplate:imageURLTemplate];

  channelImageURLTemplate = [(TVRCMediaInfo *)self channelImageURLTemplate];
  [v4 setChannelImageURLTemplate:channelImageURLTemplate];

  ratingDescription = [(TVRCMediaInfo *)self ratingDescription];
  [v4 setRatingDescription:ratingDescription];

  duration = [(TVRCMediaInfo *)self duration];
  [v4 setDuration:duration];

  showTitle = [(TVRCMediaInfo *)self showTitle];
  [v4 setShowTitle:showTitle];

  seasonNumber = [(TVRCMediaInfo *)self seasonNumber];
  [v4 setSeasonNumber:seasonNumber];

  episodeNumber = [(TVRCMediaInfo *)self episodeNumber];
  [v4 setEpisodeNumber:episodeNumber];

  productURL = [(TVRCMediaInfo *)self productURL];
  [v4 setProductURL:productURL];

  showURL = [(TVRCMediaInfo *)self showURL];
  [v4 setShowURL:showURL];

  showIdentifier = [(TVRCMediaInfo *)self showIdentifier];
  [v4 setShowIdentifier:showIdentifier];

  [v4 setIsAppleOriginal:{-[TVRCMediaInfo isAppleOriginal](self, "isAppleOriginal")}];
  roles = [(TVRCMediaInfo *)self roles];
  [v4 setRoles:roles];

  releaseDate = [(TVRCMediaInfo *)self releaseDate];
  [v4 setReleaseDate:releaseDate];

  rottenTomatoesReview = [(TVRCMediaInfo *)self rottenTomatoesReview];
  v22 = [rottenTomatoesReview copy];
  [v4 setRottenTomatoesReview:v22];

  return v4;
}

- (BOOL)isEqualToMediaInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    goto LABEL_46;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_46;
  }

  extendedDescription = [(TVRCMediaInfo *)self extendedDescription];
  extendedDescription2 = [infoCopy extendedDescription];
  v7 = (extendedDescription == 0) ^ (extendedDescription2 == 0);

  if (v7)
  {
    goto LABEL_46;
  }

  genre = [(TVRCMediaInfo *)self genre];
  genre2 = [infoCopy genre];
  v10 = (genre == 0) ^ (genre2 == 0);

  if (v10)
  {
    goto LABEL_46;
  }

  imageURLTemplate = [(TVRCMediaInfo *)self imageURLTemplate];
  imageURLTemplate2 = [infoCopy imageURLTemplate];
  v13 = (imageURLTemplate == 0) ^ (imageURLTemplate2 == 0);

  if (v13)
  {
    goto LABEL_46;
  }

  channelImageURLTemplate = [(TVRCMediaInfo *)self channelImageURLTemplate];
  channelImageURLTemplate2 = [infoCopy channelImageURLTemplate];
  v16 = (channelImageURLTemplate == 0) ^ (channelImageURLTemplate2 == 0);

  if (v16)
  {
    goto LABEL_46;
  }

  ratingDescription = [(TVRCMediaInfo *)self ratingDescription];
  ratingDescription2 = [infoCopy ratingDescription];
  v19 = (ratingDescription == 0) ^ (ratingDescription2 == 0);

  if (v19)
  {
    goto LABEL_46;
  }

  showTitle = [(TVRCMediaInfo *)self showTitle];
  showTitle2 = [infoCopy showTitle];
  v22 = (showTitle == 0) ^ (showTitle2 == 0);

  if (v22)
  {
    goto LABEL_46;
  }

  seasonNumber = [(TVRCMediaInfo *)self seasonNumber];
  seasonNumber2 = [infoCopy seasonNumber];
  v25 = (seasonNumber == 0) ^ (seasonNumber2 == 0);

  if (v25)
  {
    goto LABEL_46;
  }

  episodeNumber = [(TVRCMediaInfo *)self episodeNumber];
  episodeNumber2 = [infoCopy episodeNumber];
  v28 = (episodeNumber == 0) ^ (episodeNumber2 == 0);

  if (v28)
  {
    goto LABEL_46;
  }

  showURL = [(TVRCMediaInfo *)self showURL];
  showURL2 = [infoCopy showURL];
  v31 = (showURL == 0) ^ (showURL2 == 0);

  if (v31)
  {
    goto LABEL_46;
  }

  showIdentifier = [(TVRCMediaInfo *)self showIdentifier];
  showIdentifier2 = [infoCopy showIdentifier];
  v34 = (showIdentifier == 0) ^ (showIdentifier2 == 0);

  if (v34)
  {
    goto LABEL_46;
  }

  releaseDate = [(TVRCMediaInfo *)self releaseDate];
  releaseDate2 = [infoCopy releaseDate];
  v37 = (releaseDate == 0) ^ (releaseDate2 == 0);

  if (v37)
  {
    goto LABEL_46;
  }

  rottenTomatoesReview = [(TVRCMediaInfo *)self rottenTomatoesReview];
  rottenTomatoesReview2 = [infoCopy rottenTomatoesReview];
  v40 = (rottenTomatoesReview == 0) ^ (rottenTomatoesReview2 == 0);

  if (v40)
  {
    goto LABEL_46;
  }

  identifier = [(TVRCMediaInfo *)self identifier];
  identifier2 = [infoCopy identifier];
  v43 = [identifier isEqualToString:identifier2];

  if (!v43)
  {
    goto LABEL_46;
  }

  title = [(TVRCMediaInfo *)self title];
  title2 = [infoCopy title];
  v46 = [title isEqualToString:title2];

  if (!v46)
  {
    goto LABEL_46;
  }

  kind = [(TVRCMediaInfo *)self kind];
  if (kind != [infoCopy kind])
  {
    goto LABEL_46;
  }

  extendedDescription3 = [(TVRCMediaInfo *)self extendedDescription];
  if (extendedDescription3)
  {
    v49 = extendedDescription3;
    extendedDescription4 = [(TVRCMediaInfo *)self extendedDescription];
    extendedDescription5 = [infoCopy extendedDescription];
    v52 = [extendedDescription4 isEqualToString:extendedDescription5];

    if (!v52)
    {
      goto LABEL_46;
    }
  }

  genre3 = [(TVRCMediaInfo *)self genre];
  if (genre3)
  {
    v54 = genre3;
    genre4 = [(TVRCMediaInfo *)self genre];
    genre5 = [infoCopy genre];
    v57 = [genre4 isEqualToString:genre5];

    if (!v57)
    {
      goto LABEL_46;
    }
  }

  imageURLTemplate3 = [(TVRCMediaInfo *)self imageURLTemplate];
  if (imageURLTemplate3)
  {
    v59 = imageURLTemplate3;
    imageURLTemplate4 = [(TVRCMediaInfo *)self imageURLTemplate];
    imageURLTemplate5 = [infoCopy imageURLTemplate];
    v62 = [imageURLTemplate4 isEqual:imageURLTemplate5];

    if (!v62)
    {
      goto LABEL_46;
    }
  }

  channelImageURLTemplate3 = [(TVRCMediaInfo *)self channelImageURLTemplate];
  if (channelImageURLTemplate3)
  {
    v64 = channelImageURLTemplate3;
    channelImageURLTemplate4 = [(TVRCMediaInfo *)self channelImageURLTemplate];
    channelImageURLTemplate5 = [infoCopy channelImageURLTemplate];
    v67 = [channelImageURLTemplate4 isEqual:channelImageURLTemplate5];

    if (!v67)
    {
      goto LABEL_46;
    }
  }

  ratingDescription3 = [(TVRCMediaInfo *)self ratingDescription];
  if (ratingDescription3)
  {
    v69 = ratingDescription3;
    ratingDescription4 = [(TVRCMediaInfo *)self ratingDescription];
    ratingDescription5 = [infoCopy ratingDescription];
    v72 = [ratingDescription4 isEqualToString:ratingDescription5];

    if (!v72)
    {
      goto LABEL_46;
    }
  }

  duration = [(TVRCMediaInfo *)self duration];
  duration2 = [infoCopy duration];
  v75 = [duration isEqualToNumber:duration2];

  if (!v75)
  {
    goto LABEL_46;
  }

  showTitle3 = [(TVRCMediaInfo *)self showTitle];
  if (showTitle3)
  {
    v77 = showTitle3;
    showTitle4 = [(TVRCMediaInfo *)self showTitle];
    showTitle5 = [infoCopy showTitle];
    v80 = [showTitle4 isEqualToString:showTitle5];

    if (!v80)
    {
      goto LABEL_46;
    }
  }

  seasonNumber3 = [(TVRCMediaInfo *)self seasonNumber];
  if (seasonNumber3)
  {
    v82 = seasonNumber3;
    seasonNumber4 = [(TVRCMediaInfo *)self seasonNumber];
    seasonNumber5 = [infoCopy seasonNumber];
    v85 = [seasonNumber4 isEqualToNumber:seasonNumber5];

    if (!v85)
    {
      goto LABEL_46;
    }
  }

  episodeNumber3 = [(TVRCMediaInfo *)self episodeNumber];
  if (episodeNumber3)
  {
    v87 = episodeNumber3;
    episodeNumber4 = [(TVRCMediaInfo *)self episodeNumber];
    episodeNumber5 = [infoCopy episodeNumber];
    v90 = [episodeNumber4 isEqualToNumber:episodeNumber5];

    if (!v90)
    {
      goto LABEL_46;
    }
  }

  productURL = [(TVRCMediaInfo *)self productURL];
  productURL2 = [infoCopy productURL];
  v93 = [productURL isEqual:productURL2];

  if (!v93)
  {
    goto LABEL_46;
  }

  showURL3 = [(TVRCMediaInfo *)self showURL];
  if (showURL3)
  {
    v95 = showURL3;
    showURL4 = [(TVRCMediaInfo *)self showURL];
    showURL5 = [infoCopy showURL];
    v98 = [showURL4 isEqual:showURL5];

    if (!v98)
    {
      goto LABEL_46;
    }
  }

  showIdentifier3 = [(TVRCMediaInfo *)self showIdentifier];
  if (showIdentifier3)
  {
    v100 = showIdentifier3;
    showIdentifier4 = [(TVRCMediaInfo *)self showIdentifier];
    showIdentifier5 = [infoCopy showIdentifier];
    v103 = [showIdentifier4 isEqualToString:showIdentifier5];

    if (!v103)
    {
      goto LABEL_46;
    }
  }

  isAppleOriginal = [(TVRCMediaInfo *)self isAppleOriginal];
  if (isAppleOriginal != [infoCopy isAppleOriginal])
  {
    goto LABEL_46;
  }

  roles = [(TVRCMediaInfo *)self roles];
  roles2 = [infoCopy roles];
  v107 = [roles isEqualToArray:roles2];

  if (!v107)
  {
    goto LABEL_46;
  }

  releaseDate3 = [(TVRCMediaInfo *)self releaseDate];
  if (!releaseDate3)
  {
    goto LABEL_44;
  }

  v109 = releaseDate3;
  releaseDate4 = [(TVRCMediaInfo *)self releaseDate];
  releaseDate5 = [infoCopy releaseDate];
  v112 = [releaseDate4 isEqualToDate:releaseDate5];

  if (!v112)
  {
LABEL_46:
    v117 = 0;
  }

  else
  {
LABEL_44:
    rottenTomatoesReview3 = [(TVRCMediaInfo *)self rottenTomatoesReview];
    if (rottenTomatoesReview3)
    {
      v114 = rottenTomatoesReview3;
      rottenTomatoesReview4 = [(TVRCMediaInfo *)self rottenTomatoesReview];
      rottenTomatoesReview5 = [infoCopy rottenTomatoesReview];
      v117 = [rottenTomatoesReview4 isEqualToRottenTomatoesReview:rottenTomatoesReview5];
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
    selfCopy = self;
    roles = [(TVRCMediaInfo *)self roles];
    v7 = [roles countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            objc_enumerationMutation(roles);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          roleDescription = [v11 roleDescription];
          if ([roleDescription length])
          {
            roleDescription2 = [v11 roleDescription];
            v14 = [v5 objectForKeyedSubscript:roleDescription2];

            if (!v14)
            {
              [v4 addObject:roleDescription];
              v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v5 setObject:v14 forKeyedSubscript:roleDescription];
            }

            [v14 addObject:v11];
          }
        }

        v8 = [roles countByEnumeratingWithState:&v32 objects:v37 count:16];
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

    v24 = selfCopy->_roleCategories;
    selfCopy->_roleCategories = v15;

    roleCategories = selfCopy->_roleCategories;
  }

  v25 = *MEMORY[0x277D85DE8];

  return roleCategories;
}

- (NSString)primaryTitle
{
  showTitle = [(TVRCMediaInfo *)self showTitle];
  v4 = [showTitle length];

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

- (TVRCMediaInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = TVRCMediaInfo;
  v5 = [(TVRCMediaInfo *)&v41 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v5->_kind = [coderCopy decodeIntegerForKey:@"kind"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extendedDescription"];
    extendedDescription = v5->_extendedDescription;
    v5->_extendedDescription = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"genre"];
    genre = v5->_genre;
    v5->_genre = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURLTemplate"];
    imageURLTemplate = v5->_imageURLTemplate;
    v5->_imageURLTemplate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelImageURLTemplate"];
    channelImageURLTemplate = v5->_channelImageURLTemplate;
    v5->_channelImageURLTemplate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ratingDescription"];
    ratingDescription = v5->_ratingDescription;
    v5->_ratingDescription = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"duration"];
    duration = v5->_duration;
    v5->_duration = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showTitle"];
    showTitle = v5->_showTitle;
    v5->_showTitle = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seasonNumber"];
    seasonNumber = v5->_seasonNumber;
    v5->_seasonNumber = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"episodeNumber"];
    episodeNumber = v5->_episodeNumber;
    v5->_episodeNumber = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productURL"];
    productURL = v5->_productURL;
    v5->_productURL = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showURL"];
    showURL = v5->_showURL;
    v5->_showURL = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"showIdentifier"];
    showIdentifier = v5->_showIdentifier;
    v5->_showIdentifier = v32;

    v5->_isAppleOriginal = [coderCopy decodeBoolForKey:@"isAppleOriginal"];
    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roles"];
    roles = v5->_roles;
    v5->_roles = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rottenTomatoesReview"];
    rottenTomatoesReview = v5->_rottenTomatoesReview;
    v5->_rottenTomatoesReview = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_kind forKey:@"kind"];
  [coderCopy encodeObject:self->_extendedDescription forKey:@"extendedDescription"];
  [coderCopy encodeObject:self->_genre forKey:@"genre"];
  [coderCopy encodeObject:self->_imageURLTemplate forKey:@"imageURLTemplate"];
  [coderCopy encodeObject:self->_channelImageURLTemplate forKey:@"channelImageURLTemplate"];
  [coderCopy encodeObject:self->_ratingDescription forKey:@"ratingDescription"];
  [coderCopy encodeObject:self->_duration forKey:@"duration"];
  [coderCopy encodeObject:self->_showTitle forKey:@"showTitle"];
  [coderCopy encodeObject:self->_seasonNumber forKey:@"seasonNumber"];
  [coderCopy encodeObject:self->_episodeNumber forKey:@"episodeNumber"];
  [coderCopy encodeObject:self->_productURL forKey:@"productURL"];
  [coderCopy encodeObject:self->_showURL forKey:@"showURL"];
  [coderCopy encodeObject:self->_showIdentifier forKey:@"showIdentifier"];
  [coderCopy encodeBool:self->_isAppleOriginal forKey:@"isAppleOriginal"];
  [coderCopy encodeObject:self->_roles forKey:@"roles"];
  [coderCopy encodeObject:self->_releaseDate forKey:@"releaseDate"];
  [coderCopy encodeObject:self->_rottenTomatoesReview forKey:@"rottenTomatoesReview"];
}

+ (unint64_t)kindForMediaType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Episode"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Movie"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Show"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"SportingEvent"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)imageTemplateFromDict:(id)dict
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [dict objectForKeyedSubscript:@"images"];
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
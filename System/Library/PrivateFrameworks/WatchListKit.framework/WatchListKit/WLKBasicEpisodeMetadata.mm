@interface WLKBasicEpisodeMetadata
+ (id)episodesWithDictionaries:(id)dictionaries context:(id)context;
- (WLKBasicEpisodeMetadata)initWithDictionary:(id)dictionary context:(id)context;
- (WLKBasicEpisodeMetadata)initWithDictionary:(id)dictionary context:(id)context playablesDict:(id)dict playablesId:(id)id seasonsDict:(id)seasonsDict;
@end

@implementation WLKBasicEpisodeMetadata

+ (id)episodesWithDictionaries:(id)dictionaries context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  contextCopy = context;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = dictionariesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [self alloc];
          v16 = [v15 initWithDictionary:v14 context:{contextCopy, v19}];
          [v8 addObject:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (WLKBasicEpisodeMetadata)initWithDictionary:(id)dictionary context:(id)context
{
  dictionaryCopy = dictionary;
  contextCopy = context;
  v37.receiver = self;
  v37.super_class = WLKBasicEpisodeMetadata;
  v8 = [(WLKBasicContentMetadata *)&v37 initWithDictionary:dictionaryCopy];
  if (v8)
  {
    v9 = [dictionaryCopy wlk_stringForKey:@"showTitle"];
    v10 = [v9 copy];
    showTitle = v8->_showTitle;
    v8->_showTitle = v10;

    v12 = [dictionaryCopy wlk_stringForKey:@"showId"];
    v13 = [v12 copy];
    canonicalShowID = v8->_canonicalShowID;
    v8->_canonicalShowID = v13;

    v15 = [dictionaryCopy wlk_stringForKey:@"seasonId"];
    v16 = [v15 copy];
    canonicalSeasonID = v8->_canonicalSeasonID;
    v8->_canonicalSeasonID = v16;

    v18 = [dictionaryCopy wlk_numberForKey:@"seasonNumber"];
    seasonNumber = v8->_seasonNumber;
    v8->_seasonNumber = v18;

    v20 = [dictionaryCopy wlk_numberForKey:@"episodeNumber"];
    episodeNumber = v8->_episodeNumber;
    v8->_episodeNumber = v20;

    v22 = [dictionaryCopy wlk_stringForKey:@"seasonTitle"];
    seasonTitle = v8->_seasonTitle;
    v8->_seasonTitle = v22;

    v24 = [dictionaryCopy wlk_numberForKey:@"duration"];
    [v24 doubleValue];
    v8->_duration = v25;

    v26 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v8->_releaseDate;
    v8->_releaseDate = v26;

    v28 = [dictionaryCopy wlk_artworkVariantListingForKey:@"showImages"];
    showImages = v8->_showImages;
    v8->_showImages = v28;

    v30 = [dictionaryCopy wlk_artworkVariantListingForKey:@"seasonImages"];
    seasonImages = v8->_seasonImages;
    v8->_seasonImages = v30;

    v32 = [WLKPlayable alloc];
    v33 = [dictionaryCopy wlk_dictionaryForKey:@"playable"];
    v34 = [(WLKPlayable *)v32 initWithDictionary:v33 context:contextCopy];
    playable = v8->_playable;
    v8->_playable = v34;
  }

  return v8;
}

- (WLKBasicEpisodeMetadata)initWithDictionary:(id)dictionary context:(id)context playablesDict:(id)dict playablesId:(id)id seasonsDict:(id)seasonsDict
{
  v61 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  contextCopy = context;
  dictCopy = dict;
  idCopy = id;
  seasonsDictCopy = seasonsDict;
  v59.receiver = self;
  v59.super_class = WLKBasicEpisodeMetadata;
  v17 = [(WLKBasicContentMetadata *)&v59 initWithDictionary:dictionaryCopy];
  if (v17)
  {
    v18 = [dictionaryCopy wlk_stringForKey:@"showTitle"];
    v19 = [v18 copy];
    showTitle = v17->_showTitle;
    v17->_showTitle = v19;

    v21 = [dictionaryCopy wlk_stringForKey:@"showId"];
    v22 = [v21 copy];
    canonicalShowID = v17->_canonicalShowID;
    v17->_canonicalShowID = v22;

    v24 = [dictionaryCopy wlk_stringForKey:@"seasonId"];
    v25 = [v24 copy];
    canonicalSeasonID = v17->_canonicalSeasonID;
    v17->_canonicalSeasonID = v25;

    v27 = [dictionaryCopy wlk_numberForKey:@"seasonNumber"];
    seasonNumber = v17->_seasonNumber;
    v17->_seasonNumber = v27;

    v29 = [dictionaryCopy wlk_numberForKey:@"episodeNumber"];
    episodeNumber = v17->_episodeNumber;
    v17->_episodeNumber = v29;

    v31 = [dictionaryCopy wlk_stringForKey:@"seasonTitle"];
    seasonTitle = v17->_seasonTitle;
    v17->_seasonTitle = v31;

    v33 = [dictionaryCopy wlk_numberForKey:@"duration"];
    [v33 doubleValue];
    v17->_duration = v34;

    v35 = [dictionaryCopy wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v17->_releaseDate;
    v17->_releaseDate = v35;

    v37 = [dictionaryCopy wlk_artworkVariantListingForKey:@"images"];
    showImages = v17->_showImages;
    v17->_showImages = v37;

    v53 = seasonsDictCopy;
    v39 = [seasonsDictCopy wlk_artworkVariantListingForKey:@"images"];
    seasonImages = v17->_seasonImages;
    v17->_seasonImages = v39;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = idCopy;
    v41 = idCopy;
    v42 = [v41 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v56;
      v52 = contextCopy;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v56 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v55 + 1) + 8 * i) wlk_stringForKey:@"playableId"];
          v47 = [dictCopy wlk_dictionaryForKey:v46];

          if (v47)
          {
            contextCopy = v52;
            v48 = [[WLKPlayable alloc] initWithDictionary:v47 context:v52];
            playable = v17->_playable;
            v17->_playable = v48;

            goto LABEL_12;
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v55 objects:v60 count:16];
        contextCopy = v52;
        if (v43)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    seasonsDictCopy = v53;
    idCopy = v54;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v17;
}

@end
@interface WLKBasicEpisodeMetadata
+ (id)episodesWithDictionaries:(id)a3 context:(id)a4;
- (WLKBasicEpisodeMetadata)initWithDictionary:(id)a3 context:(id)a4;
- (WLKBasicEpisodeMetadata)initWithDictionary:(id)a3 context:(id)a4 playablesDict:(id)a5 playablesId:(id)a6 seasonsDict:(id)a7;
@end

@implementation WLKBasicEpisodeMetadata

+ (id)episodesWithDictionaries:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v6;
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
          v15 = [a1 alloc];
          v16 = [v15 initWithDictionary:v14 context:{v7, v19}];
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

- (WLKBasicEpisodeMetadata)initWithDictionary:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = WLKBasicEpisodeMetadata;
  v8 = [(WLKBasicContentMetadata *)&v37 initWithDictionary:v6];
  if (v8)
  {
    v9 = [v6 wlk_stringForKey:@"showTitle"];
    v10 = [v9 copy];
    showTitle = v8->_showTitle;
    v8->_showTitle = v10;

    v12 = [v6 wlk_stringForKey:@"showId"];
    v13 = [v12 copy];
    canonicalShowID = v8->_canonicalShowID;
    v8->_canonicalShowID = v13;

    v15 = [v6 wlk_stringForKey:@"seasonId"];
    v16 = [v15 copy];
    canonicalSeasonID = v8->_canonicalSeasonID;
    v8->_canonicalSeasonID = v16;

    v18 = [v6 wlk_numberForKey:@"seasonNumber"];
    seasonNumber = v8->_seasonNumber;
    v8->_seasonNumber = v18;

    v20 = [v6 wlk_numberForKey:@"episodeNumber"];
    episodeNumber = v8->_episodeNumber;
    v8->_episodeNumber = v20;

    v22 = [v6 wlk_stringForKey:@"seasonTitle"];
    seasonTitle = v8->_seasonTitle;
    v8->_seasonTitle = v22;

    v24 = [v6 wlk_numberForKey:@"duration"];
    [v24 doubleValue];
    v8->_duration = v25;

    v26 = [v6 wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v8->_releaseDate;
    v8->_releaseDate = v26;

    v28 = [v6 wlk_artworkVariantListingForKey:@"showImages"];
    showImages = v8->_showImages;
    v8->_showImages = v28;

    v30 = [v6 wlk_artworkVariantListingForKey:@"seasonImages"];
    seasonImages = v8->_seasonImages;
    v8->_seasonImages = v30;

    v32 = [WLKPlayable alloc];
    v33 = [v6 wlk_dictionaryForKey:@"playable"];
    v34 = [(WLKPlayable *)v32 initWithDictionary:v33 context:v7];
    playable = v8->_playable;
    v8->_playable = v34;
  }

  return v8;
}

- (WLKBasicEpisodeMetadata)initWithDictionary:(id)a3 context:(id)a4 playablesDict:(id)a5 playablesId:(id)a6 seasonsDict:(id)a7
{
  v61 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v59.receiver = self;
  v59.super_class = WLKBasicEpisodeMetadata;
  v17 = [(WLKBasicContentMetadata *)&v59 initWithDictionary:v12];
  if (v17)
  {
    v18 = [v12 wlk_stringForKey:@"showTitle"];
    v19 = [v18 copy];
    showTitle = v17->_showTitle;
    v17->_showTitle = v19;

    v21 = [v12 wlk_stringForKey:@"showId"];
    v22 = [v21 copy];
    canonicalShowID = v17->_canonicalShowID;
    v17->_canonicalShowID = v22;

    v24 = [v12 wlk_stringForKey:@"seasonId"];
    v25 = [v24 copy];
    canonicalSeasonID = v17->_canonicalSeasonID;
    v17->_canonicalSeasonID = v25;

    v27 = [v12 wlk_numberForKey:@"seasonNumber"];
    seasonNumber = v17->_seasonNumber;
    v17->_seasonNumber = v27;

    v29 = [v12 wlk_numberForKey:@"episodeNumber"];
    episodeNumber = v17->_episodeNumber;
    v17->_episodeNumber = v29;

    v31 = [v12 wlk_stringForKey:@"seasonTitle"];
    seasonTitle = v17->_seasonTitle;
    v17->_seasonTitle = v31;

    v33 = [v12 wlk_numberForKey:@"duration"];
    [v33 doubleValue];
    v17->_duration = v34;

    v35 = [v12 wlk_dateFromMillisecondsSince1970ForKey:@"releaseDate"];
    releaseDate = v17->_releaseDate;
    v17->_releaseDate = v35;

    v37 = [v12 wlk_artworkVariantListingForKey:@"images"];
    showImages = v17->_showImages;
    v17->_showImages = v37;

    v53 = v16;
    v39 = [v16 wlk_artworkVariantListingForKey:@"images"];
    seasonImages = v17->_seasonImages;
    v17->_seasonImages = v39;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = v15;
    v41 = v15;
    v42 = [v41 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v56;
      v52 = v13;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v56 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [*(*(&v55 + 1) + 8 * i) wlk_stringForKey:@"playableId"];
          v47 = [v14 wlk_dictionaryForKey:v46];

          if (v47)
          {
            v13 = v52;
            v48 = [[WLKPlayable alloc] initWithDictionary:v47 context:v52];
            playable = v17->_playable;
            v17->_playable = v48;

            goto LABEL_12;
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v55 objects:v60 count:16];
        v13 = v52;
        if (v43)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v16 = v53;
    v15 = v54;
  }

  v50 = *MEMORY[0x277D85DE8];
  return v17;
}

@end
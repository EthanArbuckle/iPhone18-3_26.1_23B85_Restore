@interface VUIFamilySharingEntityRequestResponseParser
+ (id)_parseContentRatingBag:(id)a3;
+ (id)_parsePlaybackPositionBag:(id)a3;
+ (id)_parseRelationship:(id)a3;
+ (id)_parseRelationshipBag:(id)a3;
+ (id)mediaEntityFromAMSEntityDictionary:(id)a3;
- (VUIFamilySharingEntityRequestResponseParser)init;
- (id)_processRawMediaEntities:(id)a3;
- (id)parseAMSURLResult:(id)a3;
@end

@implementation VUIFamilySharingEntityRequestResponseParser

- (VUIFamilySharingEntityRequestResponseParser)init
{
  v6.receiver = self;
  v6.super_class = VUIFamilySharingEntityRequestResponseParser;
  v2 = [(VUIFamilySharingEntityRequestResponseParser *)&v6 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.tv.mediaAPI", "VUIFamilySharingEntityRequestResponseParser");
    v4 = sLogObject;
    sLogObject = v3;
  }

  return v2;
}

- (id)parseAMSURLResult:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    v8 = [v7 vui_arrayForKey:@"data"];

    v9 = [(VUIFamilySharingEntityRequestResponseParser *)self _processRawMediaEntities:v8];
  }

  else
  {
    v10 = sLogObject;
    if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Parsing AMS Purchases Fetch with no object dictionary", v12, 2u);
    }

    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

+ (id)mediaEntityFromAMSEntityDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 vui_stringForKey:@"id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 vui_stringForKey:@"type"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no type provided", v64, 2u);
      }

      v10 = 0;
      goto LABEL_45;
    }

    v7 = [v4 vui_dictionaryForKey:@"relationships"];
    if (v7)
    {
      v8 = [a1 _parseRelationshipBag:v7];
    }

    else
    {
      v8 = 0;
    }

    v12 = [v4 vui_dictionaryForKey:@"attributes"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 0;
        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no attribute dictionary", v63, 2u);
      }

      v10 = 0;
      goto LABEL_44;
    }

    v13 = [v12 vui_arrayForKey:@"offers"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no offers array", v62, 2u);
      }

      v10 = 0;
      goto LABEL_43;
    }

    v58 = v8;
    v59 = v13;
    v14 = [v12 vui_arrayForKey:@"personalizedOffers"];
    v57 = v14;
    if (v14)
    {
      v14 = [objc_alloc(MEMORY[0x1E69E1560]) initWithMAPIDictionaries:v14];
    }

    v15 = [v12 vui_arrayForKey:@"genreNames"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = v15;
      v24 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 0;
        _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no genre array", v61, 2u);
      }

      v10 = 0;
      v13 = v59;
      goto LABEL_42;
    }

    v51 = v15;
    v50 = [v15 firstObject];
    v56 = [v12 vui_numberForKey:@"episodeSeasonNumber"];
    v55 = [v12 vui_numberForKey:@"episodeNumber"];
    v54 = [v12 vui_stringForKey:@"iTunesExtrasUrl"];
    v13 = v59;
    v53 = [objc_alloc(MEMORY[0x1E69E1560]) initWithMAPIDictionaries:v59];
    v49 = [v12 vui_dictionaryForKey:@"description"];
    v52 = [v49 vui_stringForKey:@"standard"];
    v16 = [v12 vui_dictionaryForKey:@"widescreenArtwork"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = v16;
      v26 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v60 = 0;
        _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no preview artwork dictionary", v60, 2u);
      }

      v10 = 0;
      v27 = v50;
      goto LABEL_41;
    }

    v42 = v16;
    v48 = [v16 vui_stringForKey:@"url"];
    v17 = [v12 vui_stringForKey:@"releaseDate"];
    v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v18 setDateFormat:@"yyyy-MM-dd"];
    v40 = v18;
    v41 = v17;
    v47 = [v18 dateFromString:v17];
    v39 = [v12 vui_dictionaryForKey:@"contentRatingsBySystem"];
    v46 = [a1 _parseContentRatingBag:?];
    v38 = [v12 vui_dictionaryForKey:@"previewArtwork"];
    v45 = [v38 vui_stringForKey:@"url"];
    v44 = [v12 vui_stringForKey:@"name"];
    v19 = +[VUIMediaEntityType movie];
    if ([v6 isEqualToString:@"movies"])
    {
      v20 = +[VUIMediaEntityType movie];
    }

    else
    {
      if (![v6 isEqualToString:@"tv-episodes"])
      {
        NSLog(&cfstr_Unexpectedtype.isa, v6);
        goto LABEL_36;
      }

      v20 = +[VUIMediaEntityType episode];
    }

    v28 = v20;

    v19 = v28;
LABEL_36:
    v37 = [v12 vui_arrayForKey:@"capabilities"];
    v29 = objc_alloc_init(VUIFamilySharingEntity);
    v30 = +[VUIMediaEntityType episode];
    v43 = v19;
    v31 = [v19 isEqual:v30];

    if (v31)
    {
      v32 = [v12 vui_stringForKey:@"artistName"];
      [(VUIFamilySharingEntity *)v29 setShowTitle:v32];
    }

    [(VUIFamilySharingEntity *)v29 setIdentifier:v5];
    [(VUIFamilySharingEntity *)v29 setType:v19];
    [(VUIFamilySharingEntity *)v29 setTitle:v44];
    [(VUIFamilySharingEntity *)v29 setArtworkURL:v48];
    [(VUIFamilySharingEntity *)v29 setPreviewArtworkURL:v45];
    [(VUIFamilySharingEntity *)v29 setOfferListing:v53];
    [(VUIFamilySharingEntity *)v29 setRelationships:v58];
    [(VUIFamilySharingEntity *)v29 setEpisodeNumber:v55];
    [(VUIFamilySharingEntity *)v29 setSeasonNumber:v56];
    [(VUIFamilySharingEntity *)v29 setStandardDescription:v52];
    [(VUIFamilySharingEntity *)v29 setReleaseDate:v47];
    [(VUIFamilySharingEntity *)v29 setContentRating:v46];
    v27 = v50;
    [(VUIFamilySharingEntity *)v29 setGenreTitle:v50];
    [(VUIFamilySharingEntity *)v29 setPersonalizedOfferListing:v14];
    [(VUIFamilySharingEntity *)v29 setITunesExtrasUrl:v54];
    if ([v37 count])
    {
      v33 = [MEMORY[0x1E695DFD8] setWithArray:v37];
      [(VUIFamilySharingEntity *)v29 setCapabilities:v33];
    }

    v34 = [VUIFamilySharingMediaItem alloc];
    v35 = VUIMediaEntityFetchRequestAllPropertiesSet();
    v10 = [(VUIFamilySharingMediaItem *)v34 initWithAMSEntity:v29 requestedProperties:v35];

    v13 = v59;
    v25 = v42;
LABEL_41:

    v23 = v51;
LABEL_42:

    v8 = v58;
LABEL_43:

LABEL_44:
LABEL_45:

    goto LABEL_46;
  }

  v9 = sLogObject;
  if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no entity provided", buf, 2u);
  }

  v10 = 0;
LABEL_46:

  return v10;
}

- (id)_processRawMediaEntities:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [VUIFamilySharingEntityRequestResponseParser mediaEntityFromAMSEntityDictionary:v10];
          if (v11)
          {
            [v4 addObject:v11];
          }
        }

        else
        {
          v12 = sLogObject;
          if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch invalid entity dictionary", v15, 2u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)_parseRelationshipBag:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VUIFamilySharingRelationships);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 vui_dictionaryForKey:@"seasons"];
    v7 = [a1 _parseRelationship:v6];
    [(VUIFamilySharingRelationships *)v5 setSeason:v7];
    v8 = [v4 vui_dictionaryForKey:@"shows"];
    v9 = [a1 _parseRelationship:v8];
    [(VUIFamilySharingRelationships *)v5 setShow:v9];
    v10 = [v4 vui_dictionaryForKey:@"playback-position"];
    v11 = [a1 _parsePlaybackPositionBag:v10];
    [(VUIFamilySharingRelationships *)v5 setPlaybackPosition:v11];
  }

  else
  {
    v12 = sLogObject;
    if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Parsing relationship bag thats not a dictionary", v14, 2u);
    }
  }

  return v5;
}

+ (id)_parsePlaybackPositionBag:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VUIFamilySharingPlaybackPositionRelationship);
  v5 = [v3 vui_arrayForKey:@"data"];

  if (v5 && [v5 count])
  {
    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 vui_stringForKey:@"id"];
      [(VUIFamilySharingRelationship *)v4 setIdentifier:v8];
      v9 = [v7 vui_dictionaryForKey:@"attributes"];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 vui_dateForKey:@"recordedAtTimestamp"];
        [(VUIFamilySharingPlaybackPositionRelationship *)v4 setRecordedAtTimestamp:v11];
        v12 = [v10 vui_numberForKey:@"positionInMilliseconds"];
        [(VUIFamilySharingPlaybackPositionRelationship *)v4 setPositionInMilliseconds:v12];
      }
    }
  }

  return v4;
}

+ (id)_parseContentRatingBag:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 allKeys];
    v5 = [v4 firstObject];
    v6 = [v3 objectForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 vui_stringForKey:@"name"];
      v9 = [v7 vui_numberForKey:@"value"];
      v10 = [v7 vui_arrayForKey:@"advisories"];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 firstObject];
      }

      else
      {
        v12 = &stru_1F5DB25C0;
      }

      if (objc_opt_respondsToSelector())
      {
        v16 = [v9 unsignedIntegerValue];
        v15 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:v5 ratingLabel:v8 rank:v16 ratingDescription:v12];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v14 = v15;
  }

  else
  {
    v13 = sLogObject;
    if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Parsing content rating bag thats not a dictionary", v18, 2u);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)_parseRelationship:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(VUIFamilySharingRelationship);
  v6 = [v4 vui_arrayForKey:@"data"];

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [v6 firstObject];
  v8 = v7;
  if (!v7)
  {
LABEL_13:

LABEL_14:
    v22 = v5;
    goto LABEL_16;
  }

  v9 = [v7 vui_stringForKey:@"id"];
  [(VUIFamilySharingRelationship *)v5 setIdentifier:v9];
  v10 = [v8 vui_dictionaryForKey:@"attributes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v10 vui_dictionaryForKey:@"contentRatingsBySystem"];
    v28 = [a1 _parseContentRatingBag:?];
    [(VUIFamilySharingRelationship *)v5 setContentRating:?];
    v27 = [v10 vui_dictionaryForKey:@"description"];
    v26 = [v27 vui_stringForKey:@"standard"];
    [(VUIFamilySharingRelationship *)v5 setStandardDescription:?];
    v11 = [v10 vui_stringForKey:@"releaseDate"];
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setDateFormat:@"yyyy-MM-dd"];
    v25 = v11;
    v24 = [v12 dateFromString:v11];
    [(VUIFamilySharingRelationship *)v5 setReleaseDate:?];
    v13 = [v10 vui_arrayForKey:@"genreNames"];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 firstObject];
      [(VUIFamilySharingRelationship *)v5 setGenreTitle:v15];
    }

    v16 = [v10 vui_dictionaryForKey:@"widescreenArtwork"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v18 = [v16 vui_stringForKey:@"url"];
      [(VUIFamilySharingRelationship *)v5 setArtworkURL:v18];
    }

    else
    {
      v20 = sLogObject;
      if (os_log_type_enabled(sLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Parsing AMS Entity Fetch no preview artwork dictionary", buf, 2u);
      }

      v21 = v5;
    }

    if (isKindOfClass)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v19 = v5;
  }

LABEL_16:

  return v5;
}

@end
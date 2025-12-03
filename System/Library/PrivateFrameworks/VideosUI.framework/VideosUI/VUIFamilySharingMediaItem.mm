@interface VUIFamilySharingMediaItem
- (NSString)artworkURL;
- (NSString)buyParams;
- (NSString)personalizedBuyParams;
- (NSString)previewArtworkURL;
- (VUIExtrasInfo)iTunesExtrasInfo;
- (VUIFamilySharingMediaItem)initWithAMSEntity:(id)entity requestedProperties:(id)properties;
- (VUIFamilySharingRelationships)relationships;
- (VUIMediaEntityAssetController)assetController;
- (VUIVideosPlayable)videosPlayable;
- (id)_bestOffer;
- (id)_bestRedownloadOffer;
- (id)_itunesExtrasDictionary;
- (id)audioCapability;
- (id)bookmark;
- (id)colorCapability;
- (id)contentDescription;
- (id)contentRating;
- (id)duration;
- (id)episodeNumber;
- (id)extrasURL;
- (id)genreTitle;
- (id)releaseDate;
- (id)releaseYear;
- (id)resolution;
- (id)seasonIdentifier;
- (id)seasonNumber;
- (id)showIdentifier;
- (id)showTitle;
- (id)storeID;
- (id)title;
@end

@implementation VUIFamilySharingMediaItem

- (VUIFamilySharingMediaItem)initWithAMSEntity:(id)entity requestedProperties:(id)properties
{
  entityCopy = entity;
  propertiesCopy = properties;
  v9 = [VUIFamilySharingMediaEntityIdentifier alloc];
  identifier = [entityCopy identifier];
  type = [entityCopy type];
  v12 = [(VUIFamilySharingMediaEntityIdentifier *)v9 initWithEntityIdentifier:identifier mediaEntityType:type];

  v13 = VUIFamilySharingMediaItemKind();
  v16.receiver = self;
  v16.super_class = VUIFamilySharingMediaItem;
  v14 = [(VUIMediaEntity *)&v16 initWithMediaLibrary:0 identifier:v12 requestedProperties:propertiesCopy kind:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_entity, entity);
  }

  return v14;
}

- (id)storeID
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  identifier = [entity identifier];

  if (identifier)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    v5 = [v4 numberFromString:identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)title
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  title = [entity title];

  if (title)
  {
    entity2 = [(VUIFamilySharingMediaItem *)self entity];
    title2 = [entity2 title];
  }

  else
  {
    title2 = &stru_1F5DB25C0;
  }

  return title2;
}

- (NSString)artworkURL
{
  artworkURL = self->_artworkURL;
  if (artworkURL)
  {
    v3 = artworkURL;
  }

  else
  {
    entity = [(VUIFamilySharingMediaItem *)self entity];
    artworkURL = [entity artworkURL];

    if (artworkURL)
    {
      entity2 = [(VUIFamilySharingMediaItem *)self entity];
      artworkURL2 = [entity2 artworkURL];

      objc_storeStrong(&self->_artworkURL, artworkURL2);
    }

    else
    {
      artworkURL2 = &stru_1F5DB25C0;
    }

    v3 = self->_artworkURL;
  }

  return v3;
}

- (id)extrasURL
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  iTunesExtrasUrl = [entity iTunesExtrasUrl];

  if (iTunesExtrasUrl)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:iTunesExtrasUrl];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (VUIExtrasInfo)iTunesExtrasInfo
{
  iTunesExtrasInfo = self->_iTunesExtrasInfo;
  if (iTunesExtrasInfo)
  {
    v3 = iTunesExtrasInfo;
  }

  else
  {
    _itunesExtrasDictionary = [(VUIFamilySharingMediaItem *)self _itunesExtrasDictionary];
    v6 = [[VUIExtrasInfo alloc] initWithDictionary:_itunesExtrasDictionary];
    v7 = self->_iTunesExtrasInfo;
    self->_iTunesExtrasInfo = v6;
    v8 = v6;

    v3 = self->_iTunesExtrasInfo;
  }

  return v3;
}

- (NSString)previewArtworkURL
{
  previewArtworkURL = self->_previewArtworkURL;
  if (previewArtworkURL)
  {
    v3 = previewArtworkURL;
  }

  else
  {
    entity = [(VUIFamilySharingMediaItem *)self entity];
    previewArtworkURL = [entity previewArtworkURL];

    if (previewArtworkURL)
    {
      entity2 = [(VUIFamilySharingMediaItem *)self entity];
      previewArtworkURL2 = [entity2 previewArtworkURL];

      objc_storeStrong(&self->_previewArtworkURL, previewArtworkURL2);
    }

    else
    {
      previewArtworkURL2 = &stru_1F5DB25C0;
    }

    v3 = self->_previewArtworkURL;
  }

  return v3;
}

- (VUIVideosPlayable)videosPlayable
{
  v74[1] = *MEMORY[0x1E69E9840];
  videosPlayable = self->_videosPlayable;
  if (videosPlayable)
  {
    v3 = videosPlayable;
    goto LABEL_37;
  }

  _itunesExtrasDictionary = [(VUIFamilySharingMediaItem *)self _itunesExtrasDictionary];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  _bestRedownloadOffer = [(VUIFamilySharingMediaItem *)self _bestRedownloadOffer];
  if (!_bestRedownloadOffer)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "[VUIFamilySharingMediaItem] - No personalized redownload offer found. Falling back to buy offers", buf, 2u);
    }

    _bestRedownloadOffer = [(VUIFamilySharingMediaItem *)self _bestOffer];
  }

  entity = [(VUIFamilySharingMediaItem *)self entity];
  type = [entity type];

  stringDescription = [type stringDescription];
  dictionary2 = [_bestRedownloadOffer dictionary];
  v69 = [dictionary2 objectForKey:@"hlsUrl"];
  if ([v69 length])
  {
    [v5 setObject:v69 forKey:@"hlsUrl"];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v69];
    v12 = [v11 vui_URLByAddingQueryParamWithName:@"playback-type" value:@"download"];
    absoluteString = [v12 absoluteString];

    if ([absoluteString length])
    {
      [v5 setObject:absoluteString forKey:@"hlsDownloadUrl"];
    }
  }

  v68 = _bestRedownloadOffer;
  buyParameters = [_bestRedownloadOffer buyParameters];
  [v5 setValue:buyParameters forKey:@"buyParams"];

  [v5 setValue:stringDescription forKey:@"mediaType"];
  [v5 setValue:&unk_1F5E5D458 forKey:@"sharedPurchase"];
  [v5 setValue:*MEMORY[0x1E69E1688] forKey:@"channelId"];
  entity2 = [(VUIFamilySharingMediaItem *)self entity];
  identifier = [entity2 identifier];
  [v5 setValue:identifier forKey:@"externalId"];

  entity3 = [(VUIFamilySharingMediaItem *)self entity];
  identifier2 = [entity3 identifier];
  [v5 setValue:identifier2 forKey:@"bookmarkId"];

  entity4 = [(VUIFamilySharingMediaItem *)self entity];
  identifier3 = [entity4 identifier];
  [v5 setValue:identifier3 forKey:@"adamId"];

  entity5 = [(VUIFamilySharingMediaItem *)self entity];
  relationships = [entity5 relationships];
  show = [relationships show];
  identifier4 = [show identifier];

  entity6 = [(VUIFamilySharingMediaItem *)self entity];
  relationships2 = [entity6 relationships];
  season = [relationships2 season];
  identifier5 = [season identifier];

  if (identifier4)
  {
    [v5 setObject:identifier4 forKey:@"showAdamID"];
  }

  if (identifier5)
  {
    [v5 setObject:identifier5 forKey:@"seasonAdamID"];
  }

  v66 = identifier4;
  if (_itunesExtrasDictionary)
  {
    [v5 setValue:_itunesExtrasDictionary forKey:@"extras"];
  }

  entity7 = [(VUIFamilySharingMediaItem *)self entity];
  contentRating = [entity7 contentRating];
  rank = [contentRating rank];

  v32 = [stringDescription rangeOfString:@"Movie"];
  v33 = +[VUIMediaEntityType movie];

  v70 = type;
  if (type == v33)
  {
    v37 = VUIContentMetadataTypeMovie;
  }

  else
  {
    v34 = +[VUIMediaEntityType show];

    if (type == v34)
    {
      v37 = VUIContentMetadataTypeShow;
    }

    else
    {
      v35 = +[VUIMediaEntityType episode];

      if (type != v35)
      {
        v36 = 0;
        goto LABEL_25;
      }

      v37 = VUIContentMetadataTypeEpisode;
    }
  }

  v36 = *v37;
LABEL_25:
  v64 = v36;
  [dictionary vui_setObjectIfNotNil:v36 forKey:@"type"];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:rank];
  [dictionary vui_setObjectIfNotNil:v38 forKey:@"ratingValue"];

  v39 = MEMORY[0x1E69D5B10];
  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = MEMORY[0x1E69D5B18];
  }

  [dictionary vui_setObjectIfNotNil:*v39 forKey:@"ratingDomain"];
  entity8 = [(VUIFamilySharingMediaItem *)self entity];
  title = [entity8 title];
  [dictionary vui_setObjectIfNotNil:title forKey:@"title"];

  entity9 = [(VUIFamilySharingMediaItem *)self entity];
  showTitle = [entity9 showTitle];
  [dictionary vui_setObjectIfNotNil:showTitle forKey:@"showTitle"];

  entity10 = [(VUIFamilySharingMediaItem *)self entity];
  episodeNumber = [entity10 episodeNumber];
  [dictionary vui_setObjectIfNotNil:episodeNumber forKey:@"episodeNumber"];

  entity11 = [(VUIFamilySharingMediaItem *)self entity];
  seasonNumber = [entity11 seasonNumber];
  [dictionary vui_setObjectIfNotNil:seasonNumber forKey:@"seasonNumber"];

  entity12 = [(VUIFamilySharingMediaItem *)self entity];
  artworkURL = [entity12 artworkURL];

  v65 = identifier5;
  if (![artworkURL length])
  {
    goto LABEL_34;
  }

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary3 setObject:artworkURL forKey:@"url"];
  [dictionary3 setObject:&unk_1F5E5D470 forKey:@"width"];
  [dictionary3 setObject:&unk_1F5E5D488 forKey:@"height"];
  [dictionary setObject:dictionary3 forKey:@"artwork"];
  v51 = +[VUIMediaEntityType episode];
  v52 = v51;
  if (v70 == v51)
  {

LABEL_32:
    [dictionary setObject:dictionary3 forKey:@"showArtwork"];
    goto LABEL_33;
  }

  v53 = +[VUIMediaEntityType show];

  if (v70 == v53)
  {
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  entity13 = [(VUIFamilySharingMediaItem *)self entity];
  previewArtworkURL = [entity13 previewArtworkURL];

  if ([previewArtworkURL length])
  {
    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary4 setObject:previewArtworkURL forKey:@"url"];
    [dictionary4 setObject:&unk_1F5E5D470 forKey:@"width"];
    [dictionary4 setObject:&unk_1F5E5D488 forKey:@"height"];
    [dictionary setObject:dictionary4 forKey:@"previewFrameArtwork"];
  }

  v57 = [v5 copy];
  v74[0] = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  v59 = [VUIVideosPlayable videosPlayablesFromDictionaries:v58 andMetadataDictionary:dictionary];

  firstObject = [v59 firstObject];
  v61 = self->_videosPlayable;
  self->_videosPlayable = firstObject;
  v62 = firstObject;

  v3 = self->_videosPlayable;
LABEL_37:

  return v3;
}

- (id)showIdentifier
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  relationships = [entity relationships];

  if (relationships)
  {
    entity2 = [(VUIFamilySharingMediaItem *)self entity];
    relationships2 = [entity2 relationships];
    show = [relationships2 show];

    identifier = [show identifier];
    v9 = [VUIFamilySharingMediaEntityIdentifier alloc];
    v10 = +[VUIMediaEntityType show];
    v11 = [(VUIFamilySharingMediaEntityIdentifier *)v9 initWithEntityIdentifier:identifier mediaEntityType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)seasonIdentifier
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  relationships = [entity relationships];

  if (relationships)
  {
    entity2 = [(VUIFamilySharingMediaItem *)self entity];
    relationships2 = [entity2 relationships];
    season = [relationships2 season];

    identifier = [season identifier];
    v9 = [VUIFamilySharingMediaEntityIdentifier alloc];
    v10 = +[VUIMediaEntityType season];
    v11 = [(VUIFamilySharingMediaEntityIdentifier *)v9 initWithEntityIdentifier:identifier mediaEntityType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)episodeNumber
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  episodeNumber = [entity episodeNumber];

  return episodeNumber;
}

- (id)seasonNumber
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  seasonNumber = [entity seasonNumber];

  return seasonNumber;
}

- (id)showTitle
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  showTitle = [entity showTitle];

  return showTitle;
}

- (id)genreTitle
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  genreTitle = [entity genreTitle];

  return genreTitle;
}

- (id)bookmark
{
  relationships = [(VUIFamilySharingMediaItem *)self relationships];
  playbackPosition = [relationships playbackPosition];
  v4 = playbackPosition;
  v5 = MEMORY[0x1E696AD98];
  if (playbackPosition)
  {
    positionInMilliseconds = [playbackPosition positionInMilliseconds];
    [positionInMilliseconds floatValue];
    *&v8 = v7 / 1000.0;
    v9 = [v5 numberWithFloat:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  }

  return v9;
}

- (id)duration
{
  _bestOffer = [(VUIFamilySharingMediaItem *)self _bestOffer];
  v3 = _bestOffer;
  if (_bestOffer)
  {
    dictionary = [_bestOffer dictionary];
    v5 = [dictionary vui_numberForKey:@"durationInMilliseconds"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v5 doubleValue], v6 / 1000.0 > 0.0))
    {
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)releaseDate
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  releaseDate = [entity releaseDate];

  return releaseDate;
}

- (id)releaseYear
{
  releaseDate = [(VUIFamilySharingMediaItem *)self releaseDate];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 components:4 fromDate:releaseDate];
  year = [v5 year];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:year];

  return v7;
}

- (id)contentRating
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  contentRating = [entity contentRating];

  return contentRating;
}

- (id)contentDescription
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  standardDescription = [entity standardDescription];

  return standardDescription;
}

- (VUIFamilySharingRelationships)relationships
{
  relationships = self->_relationships;
  if (!relationships)
  {
    entity = [(VUIFamilySharingMediaItem *)self entity];
    relationships = [entity relationships];
    v6 = self->_relationships;
    self->_relationships = relationships;

    relationships = self->_relationships;
  }

  v7 = relationships;

  return v7;
}

- (id)_bestOffer
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  offerListing = [entity offerListing];
  bestStoreBuyOffer = [offerListing bestStoreBuyOffer];

  if (!bestStoreBuyOffer)
  {
    entity2 = [(VUIFamilySharingMediaItem *)self entity];
    offerListing2 = [entity2 offerListing];
    bestStoreBuyOffer = [offerListing2 bestStoreGetOffer];
  }

  return bestStoreBuyOffer;
}

- (id)_bestRedownloadOffer
{
  entity = [(VUIFamilySharingMediaItem *)self entity];
  personalizedOfferListing = [entity personalizedOfferListing];
  bestStoreRedownloadOffer = [personalizedOfferListing bestStoreRedownloadOffer];

  return bestStoreRedownloadOffer;
}

- (NSString)buyParams
{
  buyParams = self->_buyParams;
  if (buyParams)
  {
    v3 = buyParams;
  }

  else
  {
    _bestOffer = [(VUIFamilySharingMediaItem *)self _bestOffer];
    v6 = _bestOffer;
    if (_bestOffer)
    {
      buyParameters = [_bestOffer buyParameters];
    }

    else
    {
      buyParameters = &stru_1F5DB25C0;
    }

    v8 = self->_buyParams;
    self->_buyParams = &buyParameters->isa;

    v3 = self->_buyParams;
  }

  return v3;
}

- (NSString)personalizedBuyParams
{
  personalizedBuyParams = self->_personalizedBuyParams;
  if (personalizedBuyParams)
  {
    v3 = personalizedBuyParams;
  }

  else
  {
    _bestRedownloadOffer = [(VUIFamilySharingMediaItem *)self _bestRedownloadOffer];
    v6 = _bestRedownloadOffer;
    if (_bestRedownloadOffer)
    {
      buyParameters = [_bestRedownloadOffer buyParameters];
    }

    else
    {
      buyParameters = &stru_1F5DB25C0;
    }

    v8 = self->_personalizedBuyParams;
    self->_personalizedBuyParams = &buyParameters->isa;

    v3 = self->_personalizedBuyParams;
  }

  return v3;
}

- (VUIMediaEntityAssetController)assetController
{
  assetController = self->_assetController;
  if (!assetController)
  {
    v4 = [VUIUniversalAssetController alloc];
    videosPlayable = [(VUIFamilySharingMediaItem *)self videosPlayable];
    v6 = [(VUIUniversalAssetController *)v4 initWithVideosPlayable:videosPlayable];
    v7 = self->_assetController;
    self->_assetController = v6;

    assetController = self->_assetController;
  }

  return assetController;
}

- (id)_itunesExtrasDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _bestRedownloadOffer = [(VUIFamilySharingMediaItem *)self _bestRedownloadOffer];
  if (!_bestRedownloadOffer)
  {
    _bestRedownloadOffer = [(VUIFamilySharingMediaItem *)self _bestOffer];
  }

  dictionary = [_bestRedownloadOffer dictionary];
  v6 = [dictionary vui_arrayForKey:@"capabilities"];

  if ([v6 containsObject:@"iTunesExtras"])
  {
    entity = [(VUIFamilySharingMediaItem *)self entity];
    iTunesExtrasUrl = [entity iTunesExtrasUrl];

    if (iTunesExtrasUrl)
    {
      [v3 setValue:iTunesExtrasUrl forKey:@"extrasUrl"];
      buyParameters = [_bestRedownloadOffer buyParameters];
      [v3 setValue:buyParameters forKey:@"buyParams"];

      storeID = [(VUIFamilySharingMediaItem *)self storeID];
      [v3 setValue:storeID forKey:@"adamId"];

      contentRating = [(VUIFamilySharingMediaItem *)self contentRating];
      v12 = contentRating;
      if (contentRating)
      {
        rank = [contentRating rank];
        if (rank)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:rank];
          [v3 setValue:v14 forKey:@"ratingValue"];
        }
      }
    }
  }

  v15 = [v3 copy];

  return v15;
}

- (id)resolution
{
  capabilities = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v3 = [capabilities containsObject:@"4K"];

  if (v3)
  {
    return &unk_1F5E5D4A0;
  }

  else
  {
    return 0;
  }
}

- (id)colorCapability
{
  capabilities = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v4 = [capabilities containsObject:@"dolbyVision"];

  if (v4)
  {
    return &unk_1F5E5D4B8;
  }

  capabilities2 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  if ([capabilities2 containsObject:@"HDR"])
  {

    return &unk_1F5E5D4D0;
  }

  capabilities3 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v8 = [capabilities3 containsObject:@"HDR10+"];

  if (v8)
  {
    return &unk_1F5E5D4D0;
  }

  return 0;
}

- (id)audioCapability
{
  capabilities = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v3 = [capabilities containsObject:@"dolbyAtmos"];

  if (v3)
  {
    return &unk_1F5E5D4D0;
  }

  else
  {
    return 0;
  }
}

@end
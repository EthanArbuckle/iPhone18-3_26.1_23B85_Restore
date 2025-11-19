@interface VUIFamilySharingMediaItem
- (NSString)artworkURL;
- (NSString)buyParams;
- (NSString)personalizedBuyParams;
- (NSString)previewArtworkURL;
- (VUIExtrasInfo)iTunesExtrasInfo;
- (VUIFamilySharingMediaItem)initWithAMSEntity:(id)a3 requestedProperties:(id)a4;
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

- (VUIFamilySharingMediaItem)initWithAMSEntity:(id)a3 requestedProperties:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [VUIFamilySharingMediaEntityIdentifier alloc];
  v10 = [v7 identifier];
  v11 = [v7 type];
  v12 = [(VUIFamilySharingMediaEntityIdentifier *)v9 initWithEntityIdentifier:v10 mediaEntityType:v11];

  v13 = VUIFamilySharingMediaItemKind();
  v16.receiver = self;
  v16.super_class = VUIFamilySharingMediaItem;
  v14 = [(VUIMediaEntity *)&v16 initWithMediaLibrary:0 identifier:v12 requestedProperties:v8 kind:v13];

  if (v14)
  {
    objc_storeStrong(&v14->_entity, a3);
  }

  return v14;
}

- (id)storeID
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 identifier];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v4 setNumberStyle:1];
    v5 = [v4 numberFromString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)title
{
  v3 = [(VUIFamilySharingMediaItem *)self entity];
  v4 = [v3 title];

  if (v4)
  {
    v5 = [(VUIFamilySharingMediaItem *)self entity];
    v6 = [v5 title];
  }

  else
  {
    v6 = &stru_1F5DB25C0;
  }

  return v6;
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
    v5 = [(VUIFamilySharingMediaItem *)self entity];
    v6 = [v5 artworkURL];

    if (v6)
    {
      v7 = [(VUIFamilySharingMediaItem *)self entity];
      v8 = [v7 artworkURL];

      objc_storeStrong(&self->_artworkURL, v8);
    }

    else
    {
      v8 = &stru_1F5DB25C0;
    }

    v3 = self->_artworkURL;
  }

  return v3;
}

- (id)extrasURL
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 iTunesExtrasUrl];

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
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
    v5 = [(VUIFamilySharingMediaItem *)self _itunesExtrasDictionary];
    v6 = [[VUIExtrasInfo alloc] initWithDictionary:v5];
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
    v5 = [(VUIFamilySharingMediaItem *)self entity];
    v6 = [v5 previewArtworkURL];

    if (v6)
    {
      v7 = [(VUIFamilySharingMediaItem *)self entity];
      v8 = [v7 previewArtworkURL];

      objc_storeStrong(&self->_previewArtworkURL, v8);
    }

    else
    {
      v8 = &stru_1F5DB25C0;
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

  v71 = [(VUIFamilySharingMediaItem *)self _itunesExtrasDictionary];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [(VUIFamilySharingMediaItem *)self _bestRedownloadOffer];
  if (!v7)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "[VUIFamilySharingMediaItem] - No personalized redownload offer found. Falling back to buy offers", buf, 2u);
    }

    v7 = [(VUIFamilySharingMediaItem *)self _bestOffer];
  }

  v9 = [(VUIFamilySharingMediaItem *)self entity];
  v10 = [v9 type];

  v72 = [v10 stringDescription];
  v67 = [v7 dictionary];
  v69 = [v67 objectForKey:@"hlsUrl"];
  if ([v69 length])
  {
    [v5 setObject:v69 forKey:@"hlsUrl"];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v69];
    v12 = [v11 vui_URLByAddingQueryParamWithName:@"playback-type" value:@"download"];
    v13 = [v12 absoluteString];

    if ([v13 length])
    {
      [v5 setObject:v13 forKey:@"hlsDownloadUrl"];
    }
  }

  v68 = v7;
  v14 = [v7 buyParameters];
  [v5 setValue:v14 forKey:@"buyParams"];

  [v5 setValue:v72 forKey:@"mediaType"];
  [v5 setValue:&unk_1F5E5D458 forKey:@"sharedPurchase"];
  [v5 setValue:*MEMORY[0x1E69E1688] forKey:@"channelId"];
  v15 = [(VUIFamilySharingMediaItem *)self entity];
  v16 = [v15 identifier];
  [v5 setValue:v16 forKey:@"externalId"];

  v17 = [(VUIFamilySharingMediaItem *)self entity];
  v18 = [v17 identifier];
  [v5 setValue:v18 forKey:@"bookmarkId"];

  v19 = [(VUIFamilySharingMediaItem *)self entity];
  v20 = [v19 identifier];
  [v5 setValue:v20 forKey:@"adamId"];

  v21 = [(VUIFamilySharingMediaItem *)self entity];
  v22 = [v21 relationships];
  v23 = [v22 show];
  v24 = [v23 identifier];

  v25 = [(VUIFamilySharingMediaItem *)self entity];
  v26 = [v25 relationships];
  v27 = [v26 season];
  v28 = [v27 identifier];

  if (v24)
  {
    [v5 setObject:v24 forKey:@"showAdamID"];
  }

  if (v28)
  {
    [v5 setObject:v28 forKey:@"seasonAdamID"];
  }

  v66 = v24;
  if (v71)
  {
    [v5 setValue:v71 forKey:@"extras"];
  }

  v29 = [(VUIFamilySharingMediaItem *)self entity];
  v30 = [v29 contentRating];
  v31 = [v30 rank];

  v32 = [v72 rangeOfString:@"Movie"];
  v33 = +[VUIMediaEntityType movie];

  v70 = v10;
  if (v10 == v33)
  {
    v37 = VUIContentMetadataTypeMovie;
  }

  else
  {
    v34 = +[VUIMediaEntityType show];

    if (v10 == v34)
    {
      v37 = VUIContentMetadataTypeShow;
    }

    else
    {
      v35 = +[VUIMediaEntityType episode];

      if (v10 != v35)
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
  [v6 vui_setObjectIfNotNil:v36 forKey:@"type"];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v31];
  [v6 vui_setObjectIfNotNil:v38 forKey:@"ratingValue"];

  v39 = MEMORY[0x1E69D5B10];
  if (v32 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v39 = MEMORY[0x1E69D5B18];
  }

  [v6 vui_setObjectIfNotNil:*v39 forKey:@"ratingDomain"];
  v40 = [(VUIFamilySharingMediaItem *)self entity];
  v41 = [v40 title];
  [v6 vui_setObjectIfNotNil:v41 forKey:@"title"];

  v42 = [(VUIFamilySharingMediaItem *)self entity];
  v43 = [v42 showTitle];
  [v6 vui_setObjectIfNotNil:v43 forKey:@"showTitle"];

  v44 = [(VUIFamilySharingMediaItem *)self entity];
  v45 = [v44 episodeNumber];
  [v6 vui_setObjectIfNotNil:v45 forKey:@"episodeNumber"];

  v46 = [(VUIFamilySharingMediaItem *)self entity];
  v47 = [v46 seasonNumber];
  [v6 vui_setObjectIfNotNil:v47 forKey:@"seasonNumber"];

  v48 = [(VUIFamilySharingMediaItem *)self entity];
  v49 = [v48 artworkURL];

  v65 = v28;
  if (![v49 length])
  {
    goto LABEL_34;
  }

  v50 = [MEMORY[0x1E695DF90] dictionary];
  [v50 setObject:v49 forKey:@"url"];
  [v50 setObject:&unk_1F5E5D470 forKey:@"width"];
  [v50 setObject:&unk_1F5E5D488 forKey:@"height"];
  [v6 setObject:v50 forKey:@"artwork"];
  v51 = +[VUIMediaEntityType episode];
  v52 = v51;
  if (v70 == v51)
  {

LABEL_32:
    [v6 setObject:v50 forKey:@"showArtwork"];
    goto LABEL_33;
  }

  v53 = +[VUIMediaEntityType show];

  if (v70 == v53)
  {
    goto LABEL_32;
  }

LABEL_33:

LABEL_34:
  v54 = [(VUIFamilySharingMediaItem *)self entity];
  v55 = [v54 previewArtworkURL];

  if ([v55 length])
  {
    v56 = [MEMORY[0x1E695DF90] dictionary];
    [v56 setObject:v55 forKey:@"url"];
    [v56 setObject:&unk_1F5E5D470 forKey:@"width"];
    [v56 setObject:&unk_1F5E5D488 forKey:@"height"];
    [v6 setObject:v56 forKey:@"previewFrameArtwork"];
  }

  v57 = [v5 copy];
  v74[0] = v57;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
  v59 = [VUIVideosPlayable videosPlayablesFromDictionaries:v58 andMetadataDictionary:v6];

  v60 = [v59 firstObject];
  v61 = self->_videosPlayable;
  self->_videosPlayable = v60;
  v62 = v60;

  v3 = self->_videosPlayable;
LABEL_37:

  return v3;
}

- (id)showIdentifier
{
  v3 = [(VUIFamilySharingMediaItem *)self entity];
  v4 = [v3 relationships];

  if (v4)
  {
    v5 = [(VUIFamilySharingMediaItem *)self entity];
    v6 = [v5 relationships];
    v7 = [v6 show];

    v8 = [v7 identifier];
    v9 = [VUIFamilySharingMediaEntityIdentifier alloc];
    v10 = +[VUIMediaEntityType show];
    v11 = [(VUIFamilySharingMediaEntityIdentifier *)v9 initWithEntityIdentifier:v8 mediaEntityType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)seasonIdentifier
{
  v3 = [(VUIFamilySharingMediaItem *)self entity];
  v4 = [v3 relationships];

  if (v4)
  {
    v5 = [(VUIFamilySharingMediaItem *)self entity];
    v6 = [v5 relationships];
    v7 = [v6 season];

    v8 = [v7 identifier];
    v9 = [VUIFamilySharingMediaEntityIdentifier alloc];
    v10 = +[VUIMediaEntityType season];
    v11 = [(VUIFamilySharingMediaEntityIdentifier *)v9 initWithEntityIdentifier:v8 mediaEntityType:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)episodeNumber
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 episodeNumber];

  return v3;
}

- (id)seasonNumber
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 seasonNumber];

  return v3;
}

- (id)showTitle
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 showTitle];

  return v3;
}

- (id)genreTitle
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 genreTitle];

  return v3;
}

- (id)bookmark
{
  v2 = [(VUIFamilySharingMediaItem *)self relationships];
  v3 = [v2 playbackPosition];
  v4 = v3;
  v5 = MEMORY[0x1E696AD98];
  if (v3)
  {
    v6 = [v3 positionInMilliseconds];
    [v6 floatValue];
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
  v2 = [(VUIFamilySharingMediaItem *)self _bestOffer];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 dictionary];
    v5 = [v4 vui_numberForKey:@"durationInMilliseconds"];

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
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 releaseDate];

  return v3;
}

- (id)releaseYear
{
  v2 = [(VUIFamilySharingMediaItem *)self releaseDate];
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [v4 components:4 fromDate:v2];
  v6 = [v5 year];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v6];

  return v7;
}

- (id)contentRating
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 contentRating];

  return v3;
}

- (id)contentDescription
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 standardDescription];

  return v3;
}

- (VUIFamilySharingRelationships)relationships
{
  relationships = self->_relationships;
  if (!relationships)
  {
    v4 = [(VUIFamilySharingMediaItem *)self entity];
    v5 = [v4 relationships];
    v6 = self->_relationships;
    self->_relationships = v5;

    relationships = self->_relationships;
  }

  v7 = relationships;

  return v7;
}

- (id)_bestOffer
{
  v3 = [(VUIFamilySharingMediaItem *)self entity];
  v4 = [v3 offerListing];
  v5 = [v4 bestStoreBuyOffer];

  if (!v5)
  {
    v6 = [(VUIFamilySharingMediaItem *)self entity];
    v7 = [v6 offerListing];
    v5 = [v7 bestStoreGetOffer];
  }

  return v5;
}

- (id)_bestRedownloadOffer
{
  v2 = [(VUIFamilySharingMediaItem *)self entity];
  v3 = [v2 personalizedOfferListing];
  v4 = [v3 bestStoreRedownloadOffer];

  return v4;
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
    v5 = [(VUIFamilySharingMediaItem *)self _bestOffer];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 buyParameters];
    }

    else
    {
      v7 = &stru_1F5DB25C0;
    }

    v8 = self->_buyParams;
    self->_buyParams = &v7->isa;

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
    v5 = [(VUIFamilySharingMediaItem *)self _bestRedownloadOffer];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 buyParameters];
    }

    else
    {
      v7 = &stru_1F5DB25C0;
    }

    v8 = self->_personalizedBuyParams;
    self->_personalizedBuyParams = &v7->isa;

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
    v5 = [(VUIFamilySharingMediaItem *)self videosPlayable];
    v6 = [(VUIUniversalAssetController *)v4 initWithVideosPlayable:v5];
    v7 = self->_assetController;
    self->_assetController = v6;

    assetController = self->_assetController;
  }

  return assetController;
}

- (id)_itunesExtrasDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(VUIFamilySharingMediaItem *)self _bestRedownloadOffer];
  if (!v4)
  {
    v4 = [(VUIFamilySharingMediaItem *)self _bestOffer];
  }

  v5 = [v4 dictionary];
  v6 = [v5 vui_arrayForKey:@"capabilities"];

  if ([v6 containsObject:@"iTunesExtras"])
  {
    v7 = [(VUIFamilySharingMediaItem *)self entity];
    v8 = [v7 iTunesExtrasUrl];

    if (v8)
    {
      [v3 setValue:v8 forKey:@"extrasUrl"];
      v9 = [v4 buyParameters];
      [v3 setValue:v9 forKey:@"buyParams"];

      v10 = [(VUIFamilySharingMediaItem *)self storeID];
      [v3 setValue:v10 forKey:@"adamId"];

      v11 = [(VUIFamilySharingMediaItem *)self contentRating];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 rank];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
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
  v2 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v3 = [v2 containsObject:@"4K"];

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
  v3 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v4 = [v3 containsObject:@"dolbyVision"];

  if (v4)
  {
    return &unk_1F5E5D4B8;
  }

  v6 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  if ([v6 containsObject:@"HDR"])
  {

    return &unk_1F5E5D4D0;
  }

  v7 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v8 = [v7 containsObject:@"HDR10+"];

  if (v8)
  {
    return &unk_1F5E5D4D0;
  }

  return 0;
}

- (id)audioCapability
{
  v2 = [(VUIFamilySharingEntity *)self->_entity capabilities];
  v3 = [v2 containsObject:@"dolbyAtmos"];

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
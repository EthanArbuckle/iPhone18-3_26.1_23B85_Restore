@interface MPMediaItem(VideosUI)
+ (id)vui_mediaItemForPersistentIdentifier:()VideosUI;
+ (id)vui_mediaItemForStoreIdentifier:()VideosUI;
+ (id)vui_mediaItemForStoreIdentifierString:()VideosUI;
+ (uint64_t)_vui_isLocalWithPropertyValues:()VideosUI;
+ (uint64_t)_vui_isNetworkPlayableWithPropertyValues:()VideosUI;
+ (uint64_t)vui_MPMediaItemVideoQualityFromVUIMediaEntityResolution:()VideosUI;
+ (uint64_t)vui_VUIMediaEntityResolutionFromMPMediaItemVideoQuality:()VideosUI;
- (BOOL)vui_isHomeSharingMediaItem;
- (VUIMPMediaEntityImageLoadParams)vui_imageLoadParamsWithImageType:()VideosUI;
- (VUIMediaItemCredits)vui_credits;
- (id)_vui_imageIdentifierWithImageType:()VideosUI;
- (id)vui_HLSAudioCapability;
- (id)vui_HLSColorCapability;
- (id)vui_HLSResolution;
- (id)vui_adamIDString;
- (id)vui_artworkCatalogWithImageType:()VideosUI;
- (id)vui_assetTypeIgnoringLocalAsset:()VideosUI;
- (id)vui_audioCapability;
- (id)vui_colorCapability;
- (id)vui_contentRating;
- (id)vui_extrasURL;
- (id)vui_homeSharingLibrary;
- (id)vui_imageIdentifierWithImageType:()VideosUI;
- (id)vui_isLocalCheckingSidebandLibrary:()VideosUI;
- (id)vui_isPlayable;
- (id)vui_mediaEntityType;
- (id)vui_playedState;
- (id)vui_rentalEndDate;
- (id)vui_rentalPlaybackEndDate;
- (id)vui_resolution;
- (id)vui_seasonIdentifier;
- (id)vui_showIdentifier;
- (id)vui_studio;
- (uint64_t)vui_isDownloadedOrDownloadingOrEnqueued;
- (void)vui_rentalExpirationDate;
@end

@implementation MPMediaItem(VideosUI)

- (id)vui_mediaEntityType
{
  mediaType = [self mediaType];
  if ((mediaType & 0x100) != 0)
  {
    if ([self isRental])
    {
      +[VUIMediaEntityType movieRental];
    }

    else
    {
      +[VUIMediaEntityType movie];
    }
    v3 = ;
  }

  else if ((mediaType & 0x200) != 0)
  {
    v3 = +[VUIMediaEntityType episode];
  }

  else if ((mediaType & 0x2000) != 0)
  {
    v3 = +[VUIMediaEntityType homeVideo];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)vui_resolution
{
  v1 = [self valueForProperty:*MEMORY[0x1E696FB90]];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "vui_VUIMediaEntityResolutionFromMPMediaItemVideoQuality:", objc_msgSend(v1, "integerValue"))}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vui_colorCapability
{
  v1 = [self valueForProperty:*MEMORY[0x1E696F960]];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "vui_VUIMediaEntityColorCapabilityFromMPMediaItemColorCapability:", objc_msgSend(v1, "integerValue"))}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vui_audioCapability
{
  v1 = [self valueForProperty:*MEMORY[0x1E696F948]];
  if (v1)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "vui_VUIMediaEntityAudioCapabilityFromMPMediaItemAudioCapability:", objc_msgSend(v1, "integerValue"))}];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vui_HLSResolution
{
  v2 = *MEMORY[0x1E696FA08];
  v3 = *MEMORY[0x1E696F9F0];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA08], *MEMORY[0x1E696F9F0], 0}];
  v5 = [self valuesForProperties:v4];

  v6 = [v5 objectForKey:v2];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = 0;
  if (v4)
  {
    v8 = [v5 objectForKey:v3];
    if (v8)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "vui_VUIMediaEntityResolutionFromMPMediaItemVideoQuality:", objc_msgSend(v8, "integerValue"))}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)vui_HLSColorCapability
{
  v2 = *MEMORY[0x1E696FA08];
  v3 = *MEMORY[0x1E696F9C8];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA08], *MEMORY[0x1E696F9C8], 0}];
  v5 = [self valuesForProperties:v4];

  v6 = [v5 objectForKey:v2];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = 0;
  if (v4)
  {
    v8 = [v5 objectForKey:v3];
    if (v8)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "vui_VUIMediaEntityColorCapabilityFromMPMediaItemColorCapability:", objc_msgSend(v8, "integerValue"))}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)vui_HLSAudioCapability
{
  v2 = *MEMORY[0x1E696FA08];
  v3 = *MEMORY[0x1E696F9C0];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA08], *MEMORY[0x1E696F9C0], 0}];
  v5 = [self valuesForProperties:v4];

  v6 = [v5 objectForKey:v2];
  LODWORD(v4) = [v6 BOOLValue];

  v7 = 0;
  if (v4)
  {
    v8 = [v5 objectForKey:v3];
    if (v8)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(objc_opt_class(), "vui_VUIMediaEntityAudioCapabilityFromMPMediaItemAudioCapability:", objc_msgSend(v8, "integerValue"))}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)vui_showIdentifier
{
  if (([self mediaType] & 0x200) != 0)
  {
    v2 = [VUIMPMediaEntityIdentifier showIdentifierWithMediaItem:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vui_seasonIdentifier
{
  if (([self mediaType] & 0x200) != 0)
  {
    v2 = [VUIMPSeasonMediaCollectionIdentifier seasonIdentifierWithMediaItem:self];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vui_studio
{
  v1 = [self valueForProperty:*MEMORY[0x1E696FA90]];
  v2 = [v1 vui_stringForKey:@"studio"];

  return v2;
}

- (VUIMediaItemCredits)vui_credits
{
  v1 = [self valueForProperty:*MEMORY[0x1E696FA90]];
  v2 = objc_alloc_init(VUIMediaItemCredits);
  v3 = [v1 vui_arrayForKey:@"cast"];
  v4 = v3;
  if (v3)
  {
    v5 = __36__MPMediaItem_VideosUI__vui_credits__block_invoke(v3, v3);
    [(VUIMediaItemCredits *)v2 setCast:v5];
  }

  v6 = [v1 vui_arrayForKey:@"producers"];
  v7 = v6;
  if (v6)
  {
    v8 = __36__MPMediaItem_VideosUI__vui_credits__block_invoke(v6, v6);
    [(VUIMediaItemCredits *)v2 setProducers:v8];
  }

  v9 = [v1 vui_arrayForKey:@"directors"];
  v10 = v9;
  if (v9)
  {
    v11 = __36__MPMediaItem_VideosUI__vui_credits__block_invoke(v9, v9);
    [(VUIMediaItemCredits *)v2 setDirectors:v11];
  }

  v12 = [v1 vui_arrayForKey:@"screenwriters"];
  v13 = v12;
  if (v12)
  {
    v14 = __36__MPMediaItem_VideosUI__vui_credits__block_invoke(v12, v12);
    [(VUIMediaItemCredits *)v2 setScreenwriters:v14];
  }

  return v2;
}

- (id)vui_contentRating
{
  v1 = [self valueForProperty:*MEMORY[0x1E696F970]];
  v2 = [v1 vui_stringForKey:@"localizedRating"];
  v3 = [v1 vui_stringForKey:@"localizedReason"];
  v4 = [v1 vui_stringForKey:@"ratingLevel"];
  v5 = [v1 vui_stringForKey:@"ratingProvider"];
  integerValue = [v4 integerValue];
  v7 = [objc_alloc(MEMORY[0x1E69DF6B8]) initWithRatingSystemString:v5 ratingLabel:v2 rank:integerValue ratingDescription:v3];

  return v7;
}

- (id)vui_isPlayable
{
  vui_assetType = [self vui_assetType];
  v2 = [vui_assetType unsignedIntegerValue] != 0;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:v2];

  return v3;
}

- (id)vui_isLocalCheckingSidebandLibrary:()VideosUI
{
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], 0}];
  v6 = [self valuesForProperties:v5];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = [objc_opt_class() _vui_isLocalWithPropertyValues:v6];
  v7 = *(v22 + 24);
  if (a3 && (v22[3] & 1) == 0)
  {
    v8 = [self valueForProperty:*MEMORY[0x1E696FB60]];
    v9 = v8;
    if (v8 && [v8 longLongValue])
    {
      stringValue = [v9 stringValue];
      v11 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v11 sidebandMediaLibrary];
      v13 = [sidebandMediaLibrary videoForAdamID:stringValue useMainThreadContext:{objc_msgSend(MEMORY[0x1E696AF00], "isMainThread")}];

      if (v13)
      {
        if ([MEMORY[0x1E696AF00] isMainThread])
        {
          v14 = [v13 downloadState] == 2;
          *(v22 + 24) = v14;
        }

        else
        {
          managedObjectContext = [v13 managedObjectContext];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __60__MPMediaItem_VideosUI__vui_isLocalCheckingSidebandLibrary___block_invoke;
          v18[3] = &unk_1E872E5B0;
          v20 = &v21;
          v19 = v13;
          [managedObjectContext performBlockAndWait:v18];
        }
      }
    }

    v7 = *(v22 + 24);
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v7 & 1];
  _Block_object_dispose(&v21, 8);

  return v16;
}

- (uint64_t)vui_isDownloadedOrDownloadingOrEnqueued
{
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA68], 0}];
  v3 = [self valuesForProperties:v2];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = [objc_opt_class() _vui_isLocalWithPropertyValues:v3];
  if (v21[3] & 1) != 0 || (v4 = [self MPSD_isDownloadInProgress], *(v21 + 24) = v4, (v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [self valueForProperty:*MEMORY[0x1E696FB60]];
    v7 = v6;
    if (v6 && [v6 longLongValue])
    {
      stringValue = [v7 stringValue];
      v9 = +[VUIMediaLibraryManager defaultManager];
      sidebandMediaLibrary = [v9 sidebandMediaLibrary];
      v11 = [sidebandMediaLibrary videoForAdamID:stringValue useMainThreadContext:{objc_msgSend(MEMORY[0x1E696AF00], "isMainThread")}];

      if (v11)
      {
        if ([MEMORY[0x1E696AF00] isMainThread])
        {
          downloadState = [v11 downloadState];
          v14 = downloadState == 2 || (downloadState & 0xFFFFFFFFFFFFFFFDLL) == 1;
          *(v21 + 24) = v14;
        }

        else
        {
          managedObjectContext = [v11 managedObjectContext];
          v17[0] = MEMORY[0x1E69E9820];
          v17[1] = 3221225472;
          v17[2] = __64__MPMediaItem_VideosUI__vui_isDownloadedOrDownloadingOrEnqueued__block_invoke;
          v17[3] = &unk_1E872DB58;
          v18 = v11;
          v19 = &v20;
          [managedObjectContext performBlockAndWait:v17];
        }
      }
    }

    v5 = *(v21 + 24);
  }

  _Block_object_dispose(&v20, 8);

  return v5 & 1;
}

- (id)vui_extrasURL
{
  v1 = [self valueForProperty:*MEMORY[0x1E696FB50]];
  if (v1)
  {
    v2 = [MEMORY[0x1E695DFF8] URLWithString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)vui_playedState
{
  v2 = [self valueForProperty:*MEMORY[0x1E696FAA0]];
  v3 = [self valueForProperty:*MEMORY[0x1E696FA00]];
  v4 = [self valueForProperty:*MEMORY[0x1E696F950]];
  v5 = [self valueForProperty:*MEMORY[0x1E696FAB0]];
  v6 = v5;
  if (v2)
  {
    v7 = v3 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v4 == 0 || v5 == 0)
  {
    v13 = 0;
  }

  else
  {
    [v5 doubleValue];
    v11 = v10;
    [v4 doubleValue];
    v13 = +[VUIPlaybackUtilities playedStateForDuration:elapsedTime:hasBeenPlayed:playCount:](VUIPlaybackUtilities, "playedStateForDuration:elapsedTime:hasBeenPlayed:playCount:", [v3 BOOLValue], objc_msgSend(v2, "unsignedIntegerValue"), v11, v12);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];

  return v14;
}

- (id)vui_rentalEndDate
{
  v2 = *MEMORY[0x1E696FB00];
  v3 = *MEMORY[0x1E696FAE0];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FB00], *MEMORY[0x1E696FAE0], 0}];
  v5 = [self valuesForProperties:v4];

  v6 = [v5 objectForKey:v2];
  [v6 doubleValue];
  v8 = v7;

  if (v8 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
    v10 = [v5 objectForKey:v3];
    [v10 doubleValue];
    v12 = v11;

    v13 = 0;
    if (v9 && v12 != 0.0)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v9 sinceDate:v12];
    }
  }

  return v13;
}

- (id)vui_rentalPlaybackEndDate
{
  v2 = *MEMORY[0x1E696FAF8];
  v3 = *MEMORY[0x1E696FAF0];
  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FAF8], *MEMORY[0x1E696FAF0], 0}];
  v5 = [self valuesForProperties:v4];

  v6 = [v5 objectForKey:v2];
  [v6 doubleValue];
  v8 = v7;

  if (v8 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
    v10 = [v5 objectForKey:v3];
    [v10 doubleValue];
    v12 = v11;

    v13 = 0;
    if (v9 && v12 != 0.0)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:v9 sinceDate:v12];
    }
  }

  return v13;
}

- (void)vui_rentalExpirationDate
{
  vui_rentalPlaybackEndDate = [self vui_rentalPlaybackEndDate];
  vui_rentalEndDate = [self vui_rentalEndDate];
  v4 = vui_rentalEndDate;
  if (vui_rentalPlaybackEndDate && vui_rentalEndDate)
  {
    v5 = [vui_rentalPlaybackEndDate earlierDate:vui_rentalEndDate];
  }

  else if (vui_rentalPlaybackEndDate)
  {
    v5 = vui_rentalPlaybackEndDate;
  }

  else
  {
    if (!vui_rentalEndDate)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v5 = vui_rentalEndDate;
  }

  v6 = v5;
LABEL_9:
  v7 = v6;

  return v6;
}

- (id)vui_assetTypeIgnoringLocalAsset:()VideosUI
{
  v5 = *MEMORY[0x1E696FA58];
  v6 = *MEMORY[0x1E696FA08];
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E696FA38], *MEMORY[0x1E696FA58], *MEMORY[0x1E696FA68], *MEMORY[0x1E696FA08], *MEMORY[0x1E696FA10], *MEMORY[0x1E696FB60], 0}];
  v8 = [self valuesForProperties:v7];

  v9 = 0;
  if ((a3 & 1) == 0)
  {
    v10 = [self vui_isLocalCheckingSidebandLibrary:1];
    bOOLValue = [v10 BOOLValue];

    v9 = bOOLValue;
  }

  v12 = [v8 objectForKey:v5];
  bOOLValue2 = [v12 BOOLValue];

  if (bOOLValue2)
  {
    v14 = +[VUIMediaLibraryApplicationController defaultController];
    v9 |= [v14 assetTypeForRentalMediaItem:self];
  }

  else if ([objc_opt_class() _vui_isNetworkPlayableWithPropertyValues:v8])
  {
    v15 = [v8 objectForKey:v6];
    bOOLValue3 = [v15 BOOLValue];

    v17 = 4;
    if (bOOLValue3)
    {
      v17 = 6;
    }

    v9 |= v17;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];

  return v18;
}

- (id)vui_adamIDString
{
  v1 = [self valueForProperty:*MEMORY[0x1E696FB60]];
  v2 = v1;
  if (v1 && [v1 longLongValue])
  {
    stringValue = [v2 stringValue];
  }

  else
  {
    stringValue = 0;
  }

  return stringValue;
}

- (BOOL)vui_isHomeSharingMediaItem
{
  vui_homeSharingLibrary = [self vui_homeSharingLibrary];
  v2 = vui_homeSharingLibrary != 0;

  return v2;
}

- (id)vui_homeSharingLibrary
{
  mediaLibrary = [self mediaLibrary];
  libraryDataProvider = [mediaLibrary libraryDataProvider];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    homeSharingLibrary = [libraryDataProvider homeSharingLibrary];
  }

  else
  {
    homeSharingLibrary = 0;
  }

  return homeSharingLibrary;
}

+ (uint64_t)vui_MPMediaItemVideoQualityFromVUIMediaEntityResolution:()VideosUI
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (uint64_t)vui_VUIMediaEntityResolutionFromMPMediaItemVideoQuality:()VideosUI
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)vui_mediaItemForPersistentIdentifier:()VideosUI
{
  if (a3)
  {
    v3 = [MEMORY[0x1E6970610] predicateWithValue:a3 forProperty:*MEMORY[0x1E696FA98]];
    v4 = objc_alloc(MEMORY[0x1E6970618]);
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{v3, 0}];
    v6 = [v4 initWithFilterPredicates:v5];

    [v6 setIgnoreSystemFilterPredicates:1];
    [v6 setEntityLimit:1];
    items = [v6 items];
    firstObject = [items firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)vui_mediaItemForStoreIdentifierString:()VideosUI
{
  v3 = a3;
  if ([v3 length] && (v4 = objc_msgSend(v3, "longLongValue")) != 0)
  {
    v5 = MEMORY[0x1E69705D0];
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v4];
    v7 = [v5 vui_mediaItemForStoreIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)vui_mediaItemForStoreIdentifier:()VideosUI
{
  if (a3)
  {
    v3 = [MEMORY[0x1E6970610] predicateWithValue:a3 forProperty:*MEMORY[0x1E696FB60]];
    v4 = objc_alloc(MEMORY[0x1E6970618]);
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{v3, 0}];
    v6 = [v4 initWithFilterPredicates:v5];

    [v6 setIgnoreSystemFilterPredicates:1];
    [v6 setEntityLimit:1];
    items = [v6 items];
    firstObject = [items firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)vui_imageIdentifierWithImageType:()VideosUI
{
  if (a3)
  {
    [self vui_previewFrameImageIdentifier];
  }

  else
  {
    [self vui_coverArtImageIdentifier];
  }
  v3 = ;

  return v3;
}

- (id)vui_artworkCatalogWithImageType:()VideosUI
{
  if (a3)
  {
    [self screenshotArtworkCatalog];
  }

  else
  {
    [self artworkCatalog];
  }
  v3 = ;

  return v3;
}

- (VUIMPMediaEntityImageLoadParams)vui_imageLoadParamsWithImageType:()VideosUI
{
  if (a3 == 1 && ([self mediaLibrary], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "homeSharingDatabaseID"), v5, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [[VUIMPMediaEntityImageLoadParams alloc] initWithMediaItem:self andImageType:a3];
  }

  return v7;
}

+ (uint64_t)_vui_isLocalWithPropertyValues:()VideosUI
{
  v3 = *MEMORY[0x1E696FA38];
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  v6 = [v4 objectForKey:*MEMORY[0x1E696FA68]];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || ![v5 BOOLValue])
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 BOOLValue] ^ 1;
  }

  return v8;
}

+ (uint64_t)_vui_isNetworkPlayableWithPropertyValues:()VideosUI
{
  v3 = *MEMORY[0x1E696FA58];
  v4 = a3;
  v5 = [v4 objectForKey:v3];
  bOOLValue = [v5 BOOLValue];

  v7 = [v4 objectForKey:*MEMORY[0x1E696FB60]];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [v4 objectForKey:*MEMORY[0x1E696FA10]];

  LODWORD(v4) = [v9 BOOLValue];
  return (bOOLValue | bOOLValue2 | v4) & 1;
}

- (id)_vui_imageIdentifierWithImageType:()VideosUI
{
  if (_vui_imageIdentifierWithImageType__onceToken != -1)
  {
    [MPMediaItem(VideosUI) _vui_imageIdentifierWithImageType:];
  }

  v5 = [self valuesForProperties:_vui_imageIdentifierWithImageType____propertiesToFetch];
  v6 = [v5 objectForKey:*MEMORY[0x1E696FA48]];
  bOOLValue = [v6 BOOLValue];

  v8 = [self vui_artworkCatalogWithImageType:a3];
  v9 = v8;
  v10 = 0;
  if ((bOOLValue & 1) == 0 && v8)
  {
    v11 = VUIImageTypeString(a3);
    v12 = [v5 objectForKey:*MEMORY[0x1E696FA98]];
    unsignedLongLongValue = [v12 unsignedLongLongValue];

    visualIdenticalityIdentifier = [v9 visualIdenticalityIdentifier];
    stringRepresentation = [visualIdenticalityIdentifier stringRepresentation];
    tv_SHA256String = [stringRepresentation tv_SHA256String];

    tv_filenameSafeString = [tv_SHA256String tv_filenameSafeString];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu_%@_%@", unsignedLongLongValue, v11, tv_filenameSafeString];
  }

  return v10;
}

@end
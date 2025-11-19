@interface ICStorePlatformMetadata
+ (NSCalendar)storeServerCalendar;
- (BOOL)hasLyrics;
- (BOOL)hasTimeSyncedLyrics;
- (BOOL)shouldShowComposer;
- (BOOL)supportsVocalAttenuation;
- (ICStorePlatformMetadata)initWithMetadataDictionary:(id)a3 expirationDate:(id)a4;
- (NSArray)artworkInfos;
- (NSArray)audioTraits;
- (NSArray)formerStoreAdamIDs;
- (NSArray)genreNames;
- (NSArray)offers;
- (NSDate)releaseDate;
- (NSString)artistName;
- (NSString)cloudUniversalLibraryID;
- (NSString)collectionName;
- (NSString)composerName;
- (NSString)copyrightText;
- (NSString)kind;
- (NSString)movementName;
- (NSString)name;
- (NSString)playlistGlobalID;
- (NSString)radioStationStringID;
- (NSString)title;
- (NSString)workName;
- (NSURL)classicalURL;
- (double)duration;
- (id)_storePlatformReleaseDateFormatter;
- (id)offerWithType:(id)a3;
- (int64_t)artistStoreAdamID;
- (int64_t)collectionStoreAdamID;
- (int64_t)discNumber;
- (int64_t)explicitRating;
- (int64_t)movementCount;
- (int64_t)movementNumber;
- (int64_t)storeAdamID;
- (int64_t)trackCount;
- (int64_t)trackNumber;
@end

@implementation ICStorePlatformMetadata

- (id)_storePlatformReleaseDateFormatter
{
  if (_storePlatformReleaseDateFormatter_sOnceToken != -1)
  {
    dispatch_once(&_storePlatformReleaseDateFormatter_sOnceToken, &__block_literal_global_169);
  }

  v3 = _storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter;

  return v3;
}

void __61__ICStorePlatformMetadata__storePlatformReleaseDateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter;
  _storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [_storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter setLocale:v2];
  [_storePlatformReleaseDateFormatter_sStorePlatformReleaseDateFormatter setDateFormat:@"YYYY-MM-dd"];
}

- (BOOL)supportsVocalAttenuation
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"isVocalAttenuationAllowed"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)classicalURL
{
  v2 = [(NSDictionary *)self->_metadataDictionary ic_stringValueForKey:@"classicalUrl"];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)audioTraits
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(NSDictionary *)self->_metadataDictionary ic_arrayValueForKey:@"audioTraits"];
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__ICStorePlatformMetadata_audioTraits__block_invoke;
    v6[3] = &unk_1E7BF4B70;
    v7 = v3;
    [v4 enumerateObjectsUsingBlock:v6];
  }

  return v3;
}

void __38__ICStorePlatformMetadata_audioTraits__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_NSIsNSString())
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (NSArray)artworkInfos
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"artwork"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v2];
    v18[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
LABEL_13:

    goto LABEL_15;
  }

  if (_NSIsNSArray())
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v2;
    v5 = [(ICStoreArtworkInfo *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v10 = [ICStoreArtworkInfo alloc];
            v11 = [(ICStoreArtworkInfo *)v10 initWithArtworkResponseDictionary:v9, v13];
            [v4 addObject:v11];
          }
        }

        v6 = [(ICStoreArtworkInfo *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    goto LABEL_13;
  }

  v4 = 0;
LABEL_15:

  return v4;
}

- (NSString)workName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"workName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)trackCount
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"trackCount"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)trackNumber
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"trackNumber"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)title
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"title"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)formerStoreAdamIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"formerIds"];
  if (_NSIsNSArray())
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            if (_NSIsNSNumber())
            {
              v10 = v9;
            }

            else
            {
              v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v9, "longLongValue")}];
            }

            v11 = v10;
            [v3 addObject:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v2 = v13;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)storeAdamID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"id"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldShowComposer
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"showComposer"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSDate)releaseDate
{
  v3 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"releaseDate"];
  if (_NSIsNSString())
  {
    v4 = [(ICStorePlatformMetadata *)self _storePlatformReleaseDateFormatter];
    v5 = [v4 dateFromString:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)radioStationStringID
{
  v3 = [(ICStorePlatformMetadata *)self kind];
  v4 = [v3 isEqualToString:ICStorePlatformMetadataKindRadioStation];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"id"];
    if (_NSIsNSString())
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)offerWithType:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICStorePlatformMetadata *)self offers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 offerType];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)offers
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"offers"];
  if (_NSIsNSArray())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v10 = [ICStorePlatformOffer alloc];
            v11 = [(ICStorePlatformOffer *)v10 initWithResponseDictionary:v9, v13];
            if (v11)
            {
              [v3 addObject:v11];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)playlistGlobalID
{
  v3 = [(ICStorePlatformMetadata *)self kind];
  v4 = [v3 isEqualToString:ICStorePlatformMetadataKindPlaylist];

  if (v4)
  {
    v5 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"id"];
    if (_NSIsNSString())
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (NSString)name
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"name"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)movementNumber
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"movementNumber"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)movementName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"movementName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)movementCount
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"movementCount"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)kind
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"kind"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasTimeSyncedLyrics
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"hasTimeSyncedLyrics"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasLyrics
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"hasLyrics"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)genreNames
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"genreNames"];
  if (_NSIsNSArray())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (!_NSIsNSString())
          {

            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }
  }

  if (!v3)
  {
LABEL_14:
    v9 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"genres"];
    if (_NSIsNSArray())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v3 = 0;
        v13 = *v19;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * j);
            if (_NSIsNSDictionary())
            {
              v16 = [v15 objectForKey:{@"name", v18}];
              if (_NSIsNSString())
              {
                if (!v3)
                {
                  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v3 addObject:v16];
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v12);
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (int64_t)explicitRating
{
  v3 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"contentRatingsBySystem"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 allValues];
    v5 = [v4 firstObject];

    if (_NSIsNSDictionary())
    {
      v6 = [v5 objectForKey:@"value"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 integerValue];
  }

  else
  {
    v8 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"is-explicit"];
    if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 BOOLValue])
    {
      v7 = 1000;
    }

    else
    {
      v7 = 100;
    }
  }

  return v7;
}

- (double)duration
{
  v2 = self;
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(ICStorePlatformMetadata *)self offers];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v20 = v2;
  v6 = 0;
  v7 = *v26;
  v8 = 0.0;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = [*(*(&v25 + 1) + 8 * i) assets];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v21 + 1) + 8 * j) duration];
            if (v15 > 2.22044605e-16)
            {
              ++v6;
              v8 = v8 + v15;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v12);
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  }

  while (v5);
  v2 = v20;
  if (v6)
  {
    v16 = v8 / v6;
  }

  else
  {
LABEL_19:
    v17 = [(NSDictionary *)v2->_metadataDictionary objectForKey:@"duration"];
    v16 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v17 doubleValue];
      v16 = v18;
    }
  }

  return v16;
}

- (int64_t)discNumber
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"discNumber"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)copyrightText
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"copyright"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)composerName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"composer"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"name"];
    if (_NSIsNSString())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)collectionStoreAdamID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"collectionId"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)collectionName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"collectionName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)cloudUniversalLibraryID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"libraryTrackId"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)artistStoreAdamID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"artistId"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)artistName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"artistName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICStorePlatformMetadata)initWithMetadataDictionary:(id)a3 expirationDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICStorePlatformMetadata;
  v8 = [(ICStorePlatformMetadata *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    expirationDate = v8->_expirationDate;
    v8->_expirationDate = v9;

    v11 = [v6 copy];
    metadataDictionary = v8->_metadataDictionary;
    v8->_metadataDictionary = v11;
  }

  return v8;
}

+ (NSCalendar)storeServerCalendar
{
  if (storeServerCalendar_sOnceToken != -1)
  {
    dispatch_once(&storeServerCalendar_sOnceToken, &__block_literal_global_10171);
  }

  v3 = storeServerCalendar_sGMTCalendar;

  return v3;
}

void __46__ICStorePlatformMetadata_storeServerCalendar__block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v1 = [v0 copy];
  v2 = storeServerCalendar_sGMTCalendar;
  storeServerCalendar_sGMTCalendar = v1;

  v3 = storeServerCalendar_sGMTCalendar;
  v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v4];
}

@end
@interface ICRadioStationTrack
+ (id)flattenedTracksWithTracks:(id)a3;
- (BOOL)hasStartTime;
- (BOOL)isSkippable;
- (ICRadioStationTrack)afterPromoContentTrack;
- (ICRadioStationTrack)beforePromoContentTrack;
- (ICRadioStationTrack)initWithResponseDictionary:(id)a3 responseVersion:(int64_t)a4 expirationDate:(id)a5;
- (ICStoreHLSAssetInfo)hlsAsset;
- (ICStorePlatformMetadata)storePlatformMetadata;
- (NSArray)fileAssets;
- (NSArray)radioStreamAssets;
- (NSDictionary)serverTrackInfo;
- (double)startTime;
- (id)_hlsAssetFromAssetDictionary:(id)a3;
- (id)description;
- (int64_t)likeState;
- (int64_t)storeAdamID;
- (int64_t)trackType;
@end

@implementation ICRadioStationTrack

- (BOOL)isSkippable
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"is-skippable"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (int64_t)trackType
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"type"];
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

- (id)_hlsAssetFromAssetDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"stream-url"];
  if (_NSIsNSString() && [v5 length] && (objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = objc_alloc_init(ICStoreHLSAssetInfo);
    [(ICStoreHLSAssetInfo *)v8 setPlaylistURL:v7];
    v9 = [v4 ic_stringValueForKey:@"key-server-protocol-type"];
    [(ICStoreHLSAssetInfo *)v8 setKeyServerProtocolType:v9];
    v10 = [v4 objectForKey:@"stream-key-cert-url"];
    if (_NSIsNSString() && [v10 length])
    {
      v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
      if (v11)
      {
        [(ICStoreHLSAssetInfo *)v8 setKeyCertificateURL:v11];
      }
    }

    v12 = [v4 objectForKey:@"stream-key-server-url"];
    if (_NSIsNSString() && [v12 length])
    {
      v13 = [MEMORY[0x1E695DFF8] URLWithString:v12];
      if (v13)
      {
        [(ICStoreHLSAssetInfo *)v8 setKeyServerURL:v13];
      }
    }

    v14 = [v4 objectForKey:@"is-itunes-stream"];
    if (objc_opt_respondsToSelector())
    {
      v15 = [v14 BOOLValue];
    }

    else
    {
      v15 = 1;
    }

    [(ICStoreHLSAssetInfo *)v8 setITunesStoreStream:v15];
    if ([(ICRadioStationTrack *)self storeAdamID])
    {
      v17 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ICRadioStationTrack storeAdamID](self, "storeAdamID")}];
      [(ICStoreHLSAssetInfo *)v8 setKeyServerAdamID:v17];
    }

    else if (v10 | v12)
    {
      v18 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        responseDictionary = self->_responseDictionary;
        v20 = 138543618;
        v21 = self;
        v22 = 2114;
        v23 = responseDictionary;
        _os_log_impl(&dword_1B4491000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Payload contains HLS asset without an adam ID, which is unexpected: %{public}@", &v20, 0x16u);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ICStorePlatformMetadata)storePlatformMetadata
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"metadata"];
  if (_NSIsNSDictionary())
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__19308;
    v20 = __Block_byref_object_dispose__19309;
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __44__ICRadioStationTrack_storePlatformMetadata__block_invoke;
    v12[3] = &unk_1E7BF61B0;
    v15 = &v16;
    v4 = v3;
    v13 = v4;
    v14 = self;
    v5 = MEMORY[0x1B8C781E0](v12);
    (v5)[2](v5, @"album-id", @"collectionId");
    (v5)[2](v5, @"is-explicit", @"is-explicit");
    v6 = [ICStorePlatformMetadata alloc];
    v7 = v17[5];
    v8 = [(ICRadioStationTrack *)self expirationDate];
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    v10 = [(ICStorePlatformMetadata *)v6 initWithMetadataDictionary:v9 expirationDate:v8];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __44__ICRadioStationTrack_storePlatformMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 32) mutableCopy];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = [*(*(a1 + 40) + 8) objectForKey:v10];
  if (v9)
  {
    [*(*(*(a1 + 48) + 8) + 40) setObject:v9 forKey:v5];
  }
}

- (NSDictionary)serverTrackInfo
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"track-info"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)storeAdamID
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"adam-id"];
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

- (double)startTime
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"start-position-in-milliseconds"];
  v3 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v2 doubleValue];
    v3 = v4 / 1000.0;
  }

  return v3;
}

- (int64_t)likeState
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"like-value"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 integerValue];
    v4 = v3 >> 63;
    if (v3)
    {
      v5 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  v5 = 0;
LABEL_6:
  if (v4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (NSArray)radioStreamAssets
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"asset-info"];
  if (_NSIsNSDictionary())
  {
    v3 = [v2 objectForKey:@"assets"];
    if (_NSIsNSArray())
    {
      v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v15 + 1) + 8 * i);
            v11 = [ICStoreRadioStreamAssetInfo alloc];
            v12 = [(ICStoreRadioStreamAssetInfo *)v11 initWithItemResponseDictionary:v10, v15];
            if (v12)
            {
              [v4 addObject:v12];
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      v13 = [v4 copy];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ICStoreHLSAssetInfo)hlsAsset
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"asset-info"];
  if (_NSIsNSDictionary())
  {
    [v3 objectForKey:@"assets"];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v16 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
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
            v10 = [v9 objectForKey:{@"stream-protocol", v13}];
            if (_NSIsNSString() && ([v10 isEqualToString:@"HLS"] & 1) != 0)
            {
              v11 = [(ICRadioStationTrack *)self _hlsAssetFromAssetDictionary:v9];

              goto LABEL_16;
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_16:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasStartTime
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"start-position-in-milliseconds"];
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (NSArray)fileAssets
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(ICRadioStationTrack *)self trackType]== 4)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(NSDictionary *)self->_responseDictionary objectForKey:@"asset-info"];
    if (_NSIsNSDictionary())
    {
      v5 = [v4 objectForKey:@"drm-type"];
      if (_NSIsNSString())
      {
        if ([v5 isEqualToString:@"subscription"])
        {
          v6 = 3;
        }

        else
        {
          v6 = 4;
        }
      }

      else
      {
        v6 = 4;
      }

      v7 = [v4 objectForKey:@"assets"];
      if (_NSIsNSArray())
      {
        v20 = v4;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v3 = 0;
          v11 = *v22;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * i);
              if (_NSIsNSDictionary())
              {
                v14 = [[ICStoreFileAssetInfo alloc] initWithFileAssetResponseDictionary:v13];
                [(ICStoreFileAssetInfo *)v14 setExpectedProtectionType:v6];
                if (v14)
                {
                  if (!v3)
                  {
                    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  [v3 addObject:v14];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v10);
        }

        else
        {
          v3 = 0;
        }

        v4 = v20;
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

    if (![v3 count])
    {
      v15 = [(NSDictionary *)self->_responseDictionary objectForKey:@"asset-url"];
      if (_NSIsNSString() && [v15 length])
      {
        v16 = [MEMORY[0x1E695DFF8] URLWithString:v15];
        if (v16)
        {
          v17 = objc_alloc_init(ICStoreFileAssetInfo);
          [(ICStoreFileAssetInfo *)v17 setAssetURL:v16];
          [(ICStoreFileAssetInfo *)v17 setExpectedProtectionType:4];
          if (v17)
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF70]);

            [v18 addObject:v17];
            v3 = v18;
          }
        }
      }
    }
  }

  return v3;
}

- (ICRadioStationTrack)beforePromoContentTrack
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"promo-content"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"before"];
    if (_NSIsNSDictionary())
    {
      v5 = [[ICRadioStationTrack alloc] initWithResponseDictionary:v4 responseVersion:self->_responseVersion expirationDate:self->_expirationDate];
      objc_storeStrong(&v5->_parentTrack, self);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ICRadioStationTrack)afterPromoContentTrack
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"promo-content"];
  if (_NSIsNSDictionary())
  {
    v4 = [v3 objectForKey:@"after"];
    if (_NSIsNSDictionary())
    {
      v5 = [[ICRadioStationTrack alloc] initWithResponseDictionary:v4 responseVersion:self->_responseVersion expirationDate:self->_expirationDate];
      objc_storeStrong(&v5->_parentTrack, self);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ICRadioStationTrack *)self trackType];
  switch(v4)
  {
    case 1:
      v5 = @"Standard";
      break;
    case 4:
      v5 = @"Stream";
      break;
    case 2:
      v5 = @"AudioCliip";
      break;
    default:
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown-%ld", v4];
      break;
  }

  v6 = [(ICRadioStationTrack *)self storeAdamID];
  v7 = [(ICRadioStationTrack *)self storePlatformMetadata];
  v8 = [v7 name];
  v9 = [v3 stringWithFormat:@"<ICRadioStationTrack: %p type=%@ adamID=%lld name='%@'>", self, v5, v6, v8];

  return v9;
}

- (ICRadioStationTrack)initWithResponseDictionary:(id)a3 responseVersion:(int64_t)a4 expirationDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ICRadioStationTrack;
  v10 = [(ICRadioStationTrack *)&v16 init];
  if (v10)
  {
    v11 = [v9 copy];
    expirationDate = v10->_expirationDate;
    v10->_expirationDate = v11;

    v13 = [v8 copy];
    responseDictionary = v10->_responseDictionary;
    v10->_responseDictionary = v13;

    v10->_responseVersion = a4;
  }

  return v10;
}

+ (id)flattenedTracksWithTracks:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 beforePromoContentTrack];
        if (v11)
        {
          [v4 addObject:v11];
        }

        [v4 addObject:v10];
        v12 = [v10 afterPromoContentTrack];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end
@interface ICMusicSubscriptionPlaybackResponseItem
- (ICMusicSubscriptionPlaybackResponseItem)initWithItemResponseDictionary:(id)dictionary urlBag:(id)bag;
- (ICStoreHLSAssetInfo)hlsAsset;
- (NSArray)fileAssets;
- (id)fileAssetWithFlavorType:(int64_t)type;
- (int64_t)storeAdamID;
@end

@implementation ICMusicSubscriptionPlaybackResponseItem

- (id)fileAssetWithFlavorType:(int64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fileAssets = [(ICMusicSubscriptionPlaybackResponseItem *)self fileAssets];
  v5 = [fileAssets countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(fileAssets);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 flavorType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [fileAssets countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (int64_t)storeAdamID
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"songId"];
  if (objc_opt_respondsToSelector())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (ICStoreHLSAssetInfo)hlsAsset
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [[ICStoreHLSAssetInfo alloc] initWithItemResponseDictionary:self->_itemResponseDictionary];
  keyServerURL = [(ICStoreHLSAssetInfo *)v3 keyServerURL];
  if (!keyServerURL || (v5 = keyServerURL, [(ICStoreHLSAssetInfo *)v3 keyCertificateURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    keyServerProtocolType = [(ICStoreHLSAssetInfo *)v3 keyServerProtocolType];
    v8 = keyServerProtocolType;
    if (keyServerProtocolType == @"simplified")
    {
      v9 = 1;
    }

    else
    {
      v9 = [(__CFString *)keyServerProtocolType isEqual:@"simplified"];
    }

    enhancedAudioConfiguration = [(ICURLBag *)self->_urlBag enhancedAudioConfiguration];
    keyServerURL2 = [(ICStoreHLSAssetInfo *)v3 keyServerURL];

    if (!keyServerURL2)
    {
      if (v9 && ([enhancedAudioConfiguration keyServerURL], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        keyServerURL3 = [enhancedAudioConfiguration keyServerURL];
      }

      else
      {
        keyServerURL3 = [(ICURLBag *)self->_urlBag urlForBagKey:@"fps-request"];
      }

      [(ICStoreHLSAssetInfo *)v3 setKeyServerURL:keyServerURL3];
    }

    keyCertificateURL = [(ICStoreHLSAssetInfo *)v3 keyCertificateURL];

    if (!keyCertificateURL)
    {
      if (v9 && ([enhancedAudioConfiguration certificateURL], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        certificateURL = [enhancedAudioConfiguration certificateURL];
      }

      else
      {
        certificateURL = [(ICURLBag *)self->_urlBag urlForBagKey:@"fps-cert"];
      }

      [(ICStoreHLSAssetInfo *)v3 setKeyCertificateURL:certificateURL];
    }
  }

  if ([(ICMusicSubscriptionPlaybackResponseItem *)self storeAdamID])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ICMusicSubscriptionPlaybackResponseItem storeAdamID](self, "storeAdamID")}];
    [(ICStoreHLSAssetInfo *)v3 setKeyServerAdamID:v19];

    goto LABEL_27;
  }

  keyServerURL4 = [(ICStoreHLSAssetInfo *)v3 keyServerURL];
  if (keyServerURL4)
  {
  }

  else
  {
    keyCertificateURL2 = [(ICStoreHLSAssetInfo *)v3 keyCertificateURL];

    if (!keyCertificateURL2)
    {
      goto LABEL_27;
    }
  }

  v22 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    itemResponseDictionary = self->_itemResponseDictionary;
    v25 = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = itemResponseDictionary;
    _os_log_impl(&dword_1B4491000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Payload contains HLS asset without an adam ID, which is unexpected: %{public}@", &v25, 0x16u);
  }

LABEL_27:

  return v3;
}

- (NSArray)fileAssets
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"assets"];
  if (_NSIsNSArray())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v3;
    v5 = [(ICStoreFileAssetInfo *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      assetURL = 0;
      v8 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v11 = [ICStoreFileAssetInfo alloc];
            v12 = [(ICStoreFileAssetInfo *)v11 initWithFileAssetResponseDictionary:v10, v14];
            [(ICStoreFileAssetInfo *)v12 setExpectedProtectionType:3];
            if (v12)
            {
              if (!assetURL)
              {
                assetURL = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[ICStoreFileAssetInfo count](v4, "count")}];
              }

              [assetURL addObject:v12];
            }
          }
        }

        v6 = [(ICStoreFileAssetInfo *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      assetURL = 0;
    }
  }

  else
  {
    v4 = [[ICStoreFileAssetInfo alloc] initWithFileAssetResponseDictionary:self->_itemResponseDictionary];
    assetURL = [(ICStoreFileAssetInfo *)v4 assetURL];

    if (assetURL)
    {
      v18 = v4;
      assetURL = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    }
  }

  return assetURL;
}

- (ICMusicSubscriptionPlaybackResponseItem)initWithItemResponseDictionary:(id)dictionary urlBag:(id)bag
{
  dictionaryCopy = dictionary;
  bagCopy = bag;
  v8 = [(ICMusicSubscriptionPlaybackResponseItem *)self init];
  if (v8)
  {
    v9 = [dictionaryCopy copy];
    itemResponseDictionary = v8->_itemResponseDictionary;
    v8->_itemResponseDictionary = v9;

    objc_storeStrong(&v8->_urlBag, bag);
  }

  return v8;
}

@end
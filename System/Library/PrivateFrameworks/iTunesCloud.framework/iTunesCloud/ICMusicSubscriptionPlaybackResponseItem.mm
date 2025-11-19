@interface ICMusicSubscriptionPlaybackResponseItem
- (ICMusicSubscriptionPlaybackResponseItem)initWithItemResponseDictionary:(id)a3 urlBag:(id)a4;
- (ICStoreHLSAssetInfo)hlsAsset;
- (NSArray)fileAssets;
- (id)fileAssetWithFlavorType:(int64_t)a3;
- (int64_t)storeAdamID;
@end

@implementation ICMusicSubscriptionPlaybackResponseItem

- (id)fileAssetWithFlavorType:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICMusicSubscriptionPlaybackResponseItem *)self fileAssets];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 flavorType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v3 = [v2 longLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (ICStoreHLSAssetInfo)hlsAsset
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [[ICStoreHLSAssetInfo alloc] initWithItemResponseDictionary:self->_itemResponseDictionary];
  v4 = [(ICStoreHLSAssetInfo *)v3 keyServerURL];
  if (!v4 || (v5 = v4, [(ICStoreHLSAssetInfo *)v3 keyCertificateURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v7 = [(ICStoreHLSAssetInfo *)v3 keyServerProtocolType];
    v8 = v7;
    if (v7 == @"simplified")
    {
      v9 = 1;
    }

    else
    {
      v9 = [(__CFString *)v7 isEqual:@"simplified"];
    }

    v10 = [(ICURLBag *)self->_urlBag enhancedAudioConfiguration];
    v11 = [(ICStoreHLSAssetInfo *)v3 keyServerURL];

    if (!v11)
    {
      if (v9 && ([v10 keyServerURL], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        v14 = [v10 keyServerURL];
      }

      else
      {
        v14 = [(ICURLBag *)self->_urlBag urlForBagKey:@"fps-request"];
      }

      [(ICStoreHLSAssetInfo *)v3 setKeyServerURL:v14];
    }

    v15 = [(ICStoreHLSAssetInfo *)v3 keyCertificateURL];

    if (!v15)
    {
      if (v9 && ([v10 certificateURL], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = v16;
        v18 = [v10 certificateURL];
      }

      else
      {
        v18 = [(ICURLBag *)self->_urlBag urlForBagKey:@"fps-cert"];
      }

      [(ICStoreHLSAssetInfo *)v3 setKeyCertificateURL:v18];
    }
  }

  if ([(ICMusicSubscriptionPlaybackResponseItem *)self storeAdamID])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ICMusicSubscriptionPlaybackResponseItem storeAdamID](self, "storeAdamID")}];
    [(ICStoreHLSAssetInfo *)v3 setKeyServerAdamID:v19];

    goto LABEL_27;
  }

  v20 = [(ICStoreHLSAssetInfo *)v3 keyServerURL];
  if (v20)
  {
  }

  else
  {
    v21 = [(ICStoreHLSAssetInfo *)v3 keyCertificateURL];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  v22 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    itemResponseDictionary = self->_itemResponseDictionary;
    v25 = 138543618;
    v26 = self;
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
      v7 = 0;
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
              if (!v7)
              {
                v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[ICStoreFileAssetInfo count](v4, "count")}];
              }

              [v7 addObject:v12];
            }
          }
        }

        v6 = [(ICStoreFileAssetInfo *)v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v4 = [[ICStoreFileAssetInfo alloc] initWithFileAssetResponseDictionary:self->_itemResponseDictionary];
    v7 = [(ICStoreFileAssetInfo *)v4 assetURL];

    if (v7)
    {
      v18 = v4;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    }
  }

  return v7;
}

- (ICMusicSubscriptionPlaybackResponseItem)initWithItemResponseDictionary:(id)a3 urlBag:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICMusicSubscriptionPlaybackResponseItem *)self init];
  if (v8)
  {
    v9 = [v6 copy];
    itemResponseDictionary = v8->_itemResponseDictionary;
    v8->_itemResponseDictionary = v9;

    objc_storeStrong(&v8->_urlBag, a4);
  }

  return v8;
}

@end
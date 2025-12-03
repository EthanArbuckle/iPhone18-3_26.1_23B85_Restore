@interface ICStoreMediaResponseItem
- (BOOL)isPurchasedRedownload;
- (ICStoreFinanceItemMetadata)metadata;
- (ICStoreHLSAssetInfo)hlsAsset;
- (ICStoreMediaResponseItem)initWithItemResponseDictionary:(id)dictionary urlBag:(id)bag;
- (NSArray)fileAssets;
- (NSDate)purchaseDate;
- (NSString)downloadIdentifier;
- (NSString)redownloadParameters;
- (NSURL)artworkURL;
- (NSURL)cancelDownloadURL;
- (id)downloadableAsset;
- (id)downloadableAssetMatchingFlavorType:(int64_t)type;
- (id)suzeLeaseID;
- (int64_t)storeAdamID;
@end

@implementation ICStoreMediaResponseItem

- (id)downloadableAssetMatchingFlavorType:(int64_t)type
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  fileAssets = [(ICStoreMediaResponseItem *)self fileAssets];
  v5 = [fileAssets countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(fileAssets);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 flavorType] == type)
        {
          assetURL = [v9 assetURL];

          if (assetURL)
          {
            v11 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [fileAssets countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (id)downloadableAsset
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  fileAssets = [(ICStoreMediaResponseItem *)self fileAssets];
  v3 = [fileAssets countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(fileAssets);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        assetURL = [v6 assetURL];

        if (assetURL)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [fileAssets countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
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

  if ([(ICStoreMediaResponseItem *)self storeAdamID])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[ICStoreMediaResponseItem storeAdamID](self, "storeAdamID")}];
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
            [(ICStoreFileAssetInfo *)v12 setExpectedProtectionType:2];
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

- (id)suzeLeaseID
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"lease-id"];
  if ([v2 isEqual:@"null"])
  {

    v2 = 0;
  }

  return v2;
}

- (NSString)redownloadParameters
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"redownload-parameters"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDate)purchaseDate
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"purchaseDate"];
  if (v2)
  {
    if (purchaseDate_sOnceToken != -1)
    {
      dispatch_once(&purchaseDate_sOnceToken, &__block_literal_global_4666);
    }

    v3 = [purchaseDate_sPurchaseDateFormatter dateFromString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __40__ICStoreMediaResponseItem_purchaseDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = purchaseDate_sPurchaseDateFormatter;
  purchaseDate_sPurchaseDateFormatter = v0;

  [purchaseDate_sPurchaseDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v2 = purchaseDate_sPurchaseDateFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [purchaseDate_sPurchaseDateFormatter setLenient:1];
  v4 = purchaseDate_sPurchaseDateFormatter;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];
}

- (ICStoreFinanceItemMetadata)metadata
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"metadata"];
  if (_NSIsNSDictionary())
  {
    v3 = [[ICStoreFinanceItemMetadata alloc] initWithMetadataDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isPurchasedRedownload
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"purchased-redownload"];
  if (_NSIsNSNumber())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)downloadIdentifier
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"download-id"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSURL)cancelDownloadURL
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"cancel-download-url"];
  if (_NSIsNSString())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSURL)artworkURL
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"artworkURL"];
  if (_NSIsNSString())
  {
    v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)storeAdamID
{
  v2 = [(NSDictionary *)self->_itemResponseDictionary objectForKey:@"songId"];
  if (_NSIsNSNumber())
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (ICStoreMediaResponseItem)initWithItemResponseDictionary:(id)dictionary urlBag:(id)bag
{
  dictionaryCopy = dictionary;
  bagCopy = bag;
  v12.receiver = self;
  v12.super_class = ICStoreMediaResponseItem;
  v9 = [(ICStoreMediaResponseItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_itemResponseDictionary, dictionary);
    objc_storeStrong(&v10->_urlBag, bag);
  }

  return v10;
}

@end
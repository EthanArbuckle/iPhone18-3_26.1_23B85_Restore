@interface ICStoreFileAssetInfo
- (ICStoreFileAssetInfo)initWithAssetURL:(id)a3;
- (ICStoreFileAssetInfo)initWithFileAssetResponseDictionary:(id)a3;
- (ICStoreFinanceItemMetadata)metadata;
- (NSArray)fairPlayInfoList;
- (NSData)md5;
- (NSString)downloadKey;
- (NSString)fileExtension;
- (NSURL)assetURL;
- (id)_metadataDictionary;
- (int64_t)flavorType;
- (int64_t)protectionType;
- (unint64_t)fileSize;
@end

@implementation ICStoreFileAssetInfo

- (id)_metadataDictionary
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"metadata"];
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

- (int64_t)protectionType
{
  v3 = [(ICStoreFileAssetInfo *)self fairPlayInfoList];
  v4 = [v3 count];

  if (v4)
  {
    return self->_expectedProtectionType;
  }

  else
  {
    return 1;
  }
}

- (NSData)md5
{
  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    v4 = [(NSDictionary *)responseDictionary objectForKey:@"md5"];
    if (_NSIsNSString())
    {
      v5 = v4;
      v6 = [v5 length] >> 1;
      v7 = [v5 lowercaseString];
      v8 = [v7 UTF8String];

      v17 = v6;
      v9 = malloc_type_calloc(v6, 1uLL, 0x100004077774924uLL);
      if ([v5 length] >= 1)
      {
        v10 = 0;
        do
        {
          v11 = *(v8 + v10);
          v12 = v11 - 48;
          if ((v11 - 48) >= 0xA)
          {
            if ((v11 - 97) > 5)
            {
              v13 = [MEMORY[0x1E696AAA8] currentHandler];
              v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSData * _Nonnull MSVDataFromHexString(NSString * _Nonnull __strong)"];
              [v13 handleFailureInFunction:v14 file:@"NSString+MSVAdditions.h" lineNumber:84 description:{@"Passed non-hex string into MSVDataFromHexString: %@", v5}];

              v12 = 0;
            }

            else
            {
              v12 = v11 - 87;
            }
          }

          v9[v10 >> 1] += v12 << (4 * ((v10 + 1) & 1));
          ++v10;
        }

        while (v10 < [v5 length]);
      }

      v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v9 length:v17 freeWhenDone:1];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = self->_md5;
  }

  return v15;
}

- (ICStoreFinanceItemMetadata)metadata
{
  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    v4 = [(NSDictionary *)responseDictionary objectForKey:@"metadata"];
    if (_NSIsNSDictionary())
    {
      v5 = [[ICStoreFinanceItemMetadata alloc] initWithMetadataDictionary:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = self->_metadata;
  }

  return v5;
}

- (unint64_t)fileSize
{
  responseDictionary = self->_responseDictionary;
  if (!responseDictionary)
  {
    return self->_fileSize;
  }

  v4 = [(NSDictionary *)responseDictionary objectForKey:@"fileSize"];
  if (v4 || ([(NSDictionary *)self->_responseDictionary objectForKey:@"file-size"], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v8 = [(NSDictionary *)self->_responseDictionary objectForKey:@"asset-info"];
    if (_NSIsNSDictionary())
    {
      v5 = [v8 objectForKey:@"file-size"];
    }

    else
    {
      v5 = 0;
    }
  }

  if (_NSIsNSNumber())
  {
    v6 = [v5 unsignedLongLongValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)flavorType
{
  responseDictionary = self->_responseDictionary;
  if (!responseDictionary)
  {
    return self->_flavorType;
  }

  v4 = [(NSDictionary *)responseDictionary objectForKey:@"flavor"];
  if (_NSIsNSString() && [v4 length])
  {
    v5 = v4;
    if ([v5 isEqualToString:@"LWHQ"])
    {
      v6 = 102;
    }

    else if ([v5 isEqualToString:@"HQ"])
    {
      v6 = 101;
    }

    else if ([v5 isEqualToString:@"LW"])
    {
      v6 = 103;
    }

    else if ([v5 isEqualToString:@"SLW"])
    {
      v6 = 104;
    }

    else if ([v5 isEqualToString:@"1080p"])
    {
      v6 = 203;
    }

    else if ([v5 isEqualToString:@"720p"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"hdmv"))
    {
      v6 = 202;
    }

    else if ([v5 isEqualToString:@"480p"])
    {
      v6 = 201;
    }

    else if ([v5 isEqualToString:@"SDMV"])
    {
      v6 = 201;
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

  return v6;
}

- (NSString)fileExtension
{
  responseDictionary = self->_responseDictionary;
  v4 = self->_fileExtension;
  v5 = v4;
  if (responseDictionary)
  {
    if (![(NSString *)v4 length])
    {
      v6 = [(ICStoreFileAssetInfo *)self _metadataDictionary];
      v7 = [v6 objectForKey:@"fileExtension"];

      if (_NSIsNSString() && [v7 length])
      {
        v8 = v7;

        v5 = v8;
      }
    }

    if (![(__CFString *)v5 length])
    {

      v5 = @"m4a";
    }
  }

  return v5;
}

- (NSArray)fairPlayInfoList
{
  v20 = *MEMORY[0x1E69E9840];
  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    v4 = [(NSDictionary *)responseDictionary objectForKey:@"sinfs"];
    if (_NSIsNSArray())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = *v16;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v16 != v9)
            {
              objc_enumerationMutation(v5);
            }

            v11 = *(*(&v15 + 1) + 8 * i);
            if (_NSIsNSDictionary())
            {
              v12 = [ICStoreFileAssetFairPlayInfo alloc];
              v13 = [(ICStoreFileAssetFairPlayInfo *)v12 initWithResponseSinfDictionary:v11, v15];
              if (v13)
              {
                if (!v8)
                {
                  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
                }

                [(NSArray *)v8 addObject:v13];
              }
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = self->_fairPlayInfoList;
  }

  return v8;
}

- (NSString)downloadKey
{
  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    v4 = [(NSDictionary *)responseDictionary objectForKey:@"downloadKey"];
    if (_NSIsNSString() && [v4 length] && (objc_msgSend(v4, "isEqualToString:", @"null") & 1) == 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = self->_downloadKey;
  }

  return v5;
}

- (NSURL)assetURL
{
  responseDictionary = self->_responseDictionary;
  if (responseDictionary)
  {
    v4 = [(NSDictionary *)responseDictionary objectForKey:@"URL"];
    if (_NSIsNSString() && [v4 length])
    {
      v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = self->_assetURL;
  }

  return v5;
}

- (ICStoreFileAssetInfo)initWithFileAssetResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ICStoreFileAssetInfo *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

- (ICStoreFileAssetInfo)initWithAssetURL:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 absoluteString];
  v5 = v4;
  if (v4)
  {
    v9 = @"URL";
    v10[0] = v4;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    self = [(ICStoreFileAssetInfo *)self initWithFileAssetResponseDictionary:v6];

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
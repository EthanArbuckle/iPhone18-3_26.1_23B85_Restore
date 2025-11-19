@interface DownloadAsset
- (DownloadAsset)initWithClientXPCAsset:(id)a3;
- (DownloadAsset)initWithExternalManifestDictionary:(id)a3 validateVariants:(BOOL)a4;
- (DownloadAsset)initWithURLRequestProperties:(id)a3;
- (id)copyJobAsset;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation DownloadAsset

- (id)copyJobAsset
{
  v3 = objc_alloc_init(ISWeakLinkedClassForString());
  v4 = [(DownloadAsset *)self valueForProperty:@"asset_type"];
  [v3 setAssetType:v4];

  v5 = [(DownloadAsset *)self valueForProperty:@"url"];
  [v3 setAssetURL:v5];

  v6 = [(DownloadAsset *)self valueForProperty:@"bytes_total"];
  [v3 setBytesTotal:v6];

  v7 = [(DownloadAsset *)self valueForProperty:@"uncompressed_size"];
  [v3 setExpectedDiskspace:v7];

  v8 = [(DownloadAsset *)self valueForProperty:@"hash_array"];
  [v3 setHashArrayData:v8];

  v9 = [(DownloadAsset *)self valueForProperty:@"hash_type"];
  [v3 setHashType:v9];

  v10 = [(DownloadAsset *)self valueForProperty:@"bytes_to_hash"];
  [v3 setNumberOfBytesToHash:v10];

  v11 = [(DownloadAsset *)self valueForProperty:@"sinfs_data"];
  [v3 setSinfs:v11];

  v12 = [(DownloadAsset *)self valueForProperty:@"store_download_key"];
  [v3 setStoreDownloadKey:v12];

  v13 = [(DownloadAsset *)self valueForProperty:@"variant_id"];
  [v3 setVariantID:v13];

  v14 = [(DownloadAsset *)self valueForProperty:@"dpinfo_data"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setDPInfo:v14];
  }

  v15 = [(DownloadAsset *)self valueForProperty:@"initial_odr_size"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setInitialODRSize:v15];
  }

  v16 = [(DownloadAsset *)self valueForProperty:@"is_local_cache_server"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsLocallyCacheable:{objc_msgSend(v16, "BOOLValue")}];
  }

  v17 = [(DownloadAsset *)self valueForExternalProperty:@"is_external"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsExternal:{objc_msgSend(v17, "BOOLValue")}];
  }

  v18 = [(DownloadAsset *)self valueForProperty:@"is_zip_streamable"];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsZipStreamable:{objc_msgSend(v18, "BOOLValue")}];
  }

  return v3;
}

- (DownloadAsset)initWithClientXPCAsset:(id)a3
{
  v14.receiver = self;
  v14.super_class = DownloadAsset;
  v4 = [(DownloadAsset *)&v14 init];
  if (v4)
  {
    [(DownloadAsset *)v4 setDatabaseID:xpc_dictionary_get_int64(a3, "0")];
    objc_opt_class();
    v5 = SSXPCDictionaryCopyCFObjectWithClass();
    if (v5)
    {
      v6 = v5;
      v7 = [DownloadAssetEntity copyDatabaseDictionaryToSetClientDictionary:v5];
      [(DownloadAsset *)v4 setValuesWithDictionary:v7];
    }

    v8 = [[SSURLRequestProperties alloc] initWithXPCEncoding:{xpc_dictionary_get_value(a3, "2")}];
    if (v8)
    {
      v9 = v8;
      v10 = [DownloadAssetEntity copyDatabaseDictionaryWithRequestProperties:v8];
      [(DownloadAsset *)v4 setValuesWithDictionary:v10];
    }

    objc_opt_class();
    v11 = SSXPCDictionaryCopyObjectWithClass();
    if (v11)
    {
      v12 = v11;
      [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
    }
  }

  return v4;
}

- (DownloadAsset)initWithExternalManifestDictionary:(id)a3 validateVariants:(BOOL)a4
{
  v4 = a4;
  v33.receiver = self;
  v33.super_class = DownloadAsset;
  result = [(DownloadAsset *)&v33 init];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [a3 objectForKey:@"kind"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v8 isEqualToString:@"full-size-image"])
    {
      v9 = &SSDownloadAssetTypeArtwork;
LABEL_5:
      v10 = *v9;
      goto LABEL_10;
    }

    if (([v8 isEqualToString:@"software-package"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"vpn-plugin-package"))
    {
      v10 = SSDownloadAssetTypeMedia;
    }

    else
    {
      if ([v8 isEqualToString:@"newsstand-image"])
      {
        v9 = &SSDownloadAssetTypeNewsstandArtwork;
        goto LABEL_5;
      }

      if ([v8 isEqualToString:@"transit-data"])
      {
        v9 = &SSDownloadAssetTypeTransitMapsData;
        goto LABEL_5;
      }

      if ([v8 isEqualToString:@"asset-pack-manifest"])
      {
        v10 = SSDownloadAssetTypeODRManifest;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_10:
  v11 = [a3 objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [[NSURL alloc] initWithString:v11];
    if (![v12 host])
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (([v10 isEqualToString:SSDownloadAssetTypeMedia] & 1) == 0 && !objc_msgSend(v10, "isEqualToString:", SSDownloadAssetTypeODRManifest))
  {
    v13 = 0;
LABEL_22:
    v16 = 0;
    v15 = 1;
    goto LABEL_23;
  }

  v13 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = [a3 objectForKey:@"variantIds"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_22;
  }

  if ([v14 containsObject:v13])
  {
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v27 = [+[SSDevice currentDevice](SSDevice "currentDevice")];
    if (v27)
    {
      v28 = v27;
      v16 = [v14 containsObject:v27];
      v15 = 0;
      v13 = v28;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }
  }

LABEL_23:
  result = 0;
  if (v10 && v11)
  {
    v17 = v15 | !v4;
    if (((v17 | v16) & 1) == 0)
    {
      return 0;
    }

    [(DownloadAsset *)v7 setValue:[NSNumber forProperty:"numberWithBool:" numberWithBool:?], @"is_external"];
    [(DownloadAsset *)v7 setValue:v10 forProperty:@"asset_type"];
    [(DownloadAsset *)v7 setValue:v11 forProperty:@"url"];
    if (!(v17 & 1 | ((v16 & 1) == 0)))
    {
      [(DownloadAsset *)v7 setValue:v13 forProperty:@"variant_id"];
    }

    v18 = [a3 objectForKey:@"md5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [NSArray arrayWithObjects:v18, 0];
      v20 = [NSNumber numberWithInteger:0];
      if (!v19)
      {
        return v7;
      }
    }

    else
    {
      v19 = [a3 objectForKey:@"md5s"];
      v20 = [a3 objectForKey:@"md5-size"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        return v7;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [(NSNumber *)v20 longLongValue]< 1)
      {
        return v7;
      }

      v29 = 0u;
      v30 = 0u;
      isKindOfClass = [(NSArray *)v19 count]!= 0;
      v31 = 0u;
      v32 = 0u;
      v23 = [(NSArray *)v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v30;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v30 != v25)
            {
              objc_enumerationMutation(v19);
            }

            if (isKindOfClass)
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
            }

            else
            {
              isKindOfClass = 0;
            }
          }

          v24 = [(NSArray *)v19 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v24);
      }

      if ((isKindOfClass & 1) == 0)
      {
        v19 = 0;
        v20 = 0;
      }

      if (!v19)
      {
        return v7;
      }
    }

    if (v20)
    {
      v21 = [NSPropertyListSerialization dataWithPropertyList:v19 format:200 options:0 error:0];
      if (v21)
      {
        [(DownloadAsset *)v7 setValue:v21 forProperty:@"hash_array"];
        [(DownloadAsset *)v7 setValue:v20 forProperty:@"bytes_to_hash"];
      }
    }

    return v7;
  }

  return result;
}

- (DownloadAsset)initWithURLRequestProperties:(id)a3
{
  v7.receiver = self;
  v7.super_class = DownloadAsset;
  v4 = [(DownloadAsset *)&v7 init];
  if (v4)
  {
    v5 = [DownloadAssetEntity copyDatabaseDictionaryWithRequestProperties:a3];
    [(DownloadAsset *)v4 setValuesWithDictionary:v5];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = DownloadAsset;
  return [(DownloadAsset *)&v4 copyWithZone:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = DownloadAsset;
  return [NSString stringWithFormat:@"%@ [url = %@, variantID = %@]", [(DownloadAsset *)&v3 description], [(DownloadAsset *)self valueForProperty:@"url"], [(DownloadAsset *)self valueForProperty:@"variant_id"]];
}

@end
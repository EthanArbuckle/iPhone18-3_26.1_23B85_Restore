@interface DownloadAssetEntity
+ (id)copyDatabaseDictionaryWithRequestProperties:(id)a3;
+ (id)databasePropertyToSetClientProperty:(id)a3;
+ (id)disambiguatedSQLForProperty:(id)a3;
+ (id)newDownloadKeyCookieWithValue:(id)a3 URL:(id)a4;
+ (void)initialize;
- (BOOL)deleteFromDatabase;
- (NSArray)sinfs;
- (id)copyStoreDownloadKeyCookie;
- (id)copyURLRequestProperties;
@end

@implementation DownloadAssetEntity

+ (id)copyDatabaseDictionaryWithRequestProperties:(id)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  if (a3)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(a3, "allowedRetryCount")), @"retry_count"}];
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(a3, "isITunesStoreRequest") ^ 1), @"is_external"}];
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", objc_msgSend(a3, "networkServiceType")), @"service_type"}];
    [a3 timeoutInterval];
    [v4 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"timeout_interval"}];
    v5 = [a3 HTTPBody];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"body_data"];
    }

    v6 = [a3 HTTPHeaders];
    if (v6)
    {
      v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:0];
      if (v7)
      {
        [v4 setObject:v7 forKey:@"http_headers"];
      }
    }

    v8 = [a3 HTTPMethod];
    if (v8)
    {
      [v4 setObject:v8 forKey:@"http_method"];
    }

    v9 = [a3 requestParameters];
    if (v9)
    {
      v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:0];
      if (v10)
      {
        [v4 setObject:v10 forKey:@"request_parameters"];
      }
    }

    v11 = [a3 URL];
    v12 = [v11 absoluteString];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_msgSend(v11 "path")];
      if (v14)
      {
        [v4 setObject:v14 forKey:@"path_extension"];
      }

      [v4 setObject:v13 forKey:@"url"];
    }
  }

  return v4;
}

+ (id)newDownloadKeyCookieWithValue:(id)a3 URL:(id)a4
{
  v6 = objc_alloc_init(NSMutableDictionary);
  [v6 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", 604800), NSHTTPCookieMaximumAge}];
  [v6 setObject:objc_msgSend(a4 forKey:{"host"), NSHTTPCookieDomain}];
  [v6 setObject:@"downloadKey" forKey:NSHTTPCookieName];
  [v6 setObject:objc_msgSend(a4 forKey:{"path"), NSHTTPCookiePath}];
  [v6 setObject:a4 forKey:NSHTTPCookieOriginURL];
  [v6 setObject:a3 forKey:NSHTTPCookieValue];
  v7 = [[NSHTTPCookie alloc] initWithProperties:v6];

  return v7;
}

- (id)copyStoreDownloadKeyCookie
{
  v10[0] = @"download_id";
  v10[1] = @"store_download_key";
  v10[2] = @"asset_type";
  v10[3] = @"url";
  [(DownloadAssetEntity *)self getValues:&v6 forProperties:v10 count:4];
  if (!v7 && [v8 isEqualToString:SSDownloadAssetTypeMedia])
  {
    v3 = [DownloadEntity alloc];
    v4 = -[DownloadEntity initWithPersistentID:inDatabase:](v3, "initWithPersistentID:inDatabase:", [v6 longLongValue], -[DownloadAssetEntity database](self, "database"));
    v7 = [(DownloadEntity *)v4 valueForProperty:@"store_download_key"];
  }

  result = 0;
  if (v7)
  {
    if (v9)
    {
      return [DownloadAssetEntity newDownloadKeyCookieWithValue:v7 URL:[NSURL URLWithString:?]];
    }
  }

  return result;
}

- (id)copyURLRequestProperties
{
  v3 = objc_alloc_init(SSMutableURLRequestProperties);
  [v3 setRequiresExtendedValidationCertificates:0];
  v41[0] = @"retry_count";
  v41[1] = @"bytes_total";
  v41[2] = @"body_data";
  v41[3] = @"body_data_file_path";
  v41[4] = @"http_headers";
  v41[5] = @"http_method";
  v41[6] = @"is_external";
  v41[7] = @"is_local_cache_server";
  v41[8] = @"service_type";
  v41[9] = @"request_parameters";
  v41[10] = @"timeout_interval";
  v41[11] = @"asset_type";
  v41[12] = @"url";
  [(DownloadAssetEntity *)self getValues:&v30 forProperties:v41 count:13];
  [v3 setAllowedRetryCount:{objc_msgSend(v30, "integerValue")}];
  [v3 setCachePolicy:1];
  [v3 setHTTPMethod:v35];
  [v3 setNetworkServiceType:{objc_msgSend(v37, "integerValue")}];
  [v39 doubleValue];
  if (v4 > 2.22044605e-16)
  {
    [v39 doubleValue];
    [v3 setTimeoutInterval:?];
  }

  if ([v33 length])
  {
    v5 = objc_alloc_init(NSFileManager);
    v6 = [v5 fileExistsAtPath:v33];
    v7 = +[SSLogConfig sharedDaemonConfig];
    v8 = v7;
    if (v6)
    {
      if (!v7)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v9 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v10 = v9 | 2;
      }

      else
      {
        v10 = v9;
      }

      if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v10 &= 2u;
      }

      if (v10)
      {
        v26 = 138412546;
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v33;
        LODWORD(v25) = 22;
        v24 = &v26;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13 = [NSString stringWithCString:v11 encoding:4, &v26, v25];
          free(v12);
          v24 = v13;
          SSFileLog();
        }
      }

      v14 = [NSInputStream alloc];
      v15 = [v14 initWithFileAtPath:v33];
      [v3 setHTTPBodyStream:v15];
    }

    else
    {
      if (!v7)
      {
        v8 = +[SSLogConfig sharedConfig];
      }

      v16 = [v8 shouldLog];
      if ([v8 shouldLogToDisk])
      {
        v17 = v16 | 2;
      }

      else
      {
        v17 = v16;
      }

      if (!os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v17 &= 2u;
      }

      if (v17)
      {
        v26 = 138412546;
        v27 = objc_opt_class();
        v28 = 2112;
        v29 = v33;
        LODWORD(v25) = 22;
        v24 = &v26;
        v18 = _os_log_send_and_compose_impl();
        if (v18)
        {
          v19 = v18;
          v20 = [NSString stringWithCString:v18 encoding:4, &v26, v25];
          free(v19);
          v24 = v20;
          SSFileLog();
        }
      }
    }
  }

  else
  {
    [v3 setHTTPBody:v32];
  }

  v21 = [v36 BOOLValue];
  if (v21)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  [v3 setITunesStoreRequest:v21 ^ 1];
  [v3 setURLBagType:v22];
  if (v34)
  {
    [v3 setHTTPHeaders:{+[NSPropertyListSerialization propertyListWithData:options:format:error:](NSPropertyListSerialization, "propertyListWithData:options:format:error:", v34, 0, 0, 0)}];
  }

  if (v38)
  {
    [v3 setRequestParameters:{+[NSPropertyListSerialization propertyListWithData:options:format:error:](NSPropertyListSerialization, "propertyListWithData:options:format:error:", v38, 0, 0, 0)}];
  }

  if (v40)
  {
    [v3 setURL:{+[NSURL URLWithString:](NSURL, "URLWithString:")}];
  }

  if (v31)
  {
    [v3 setExpectedContentLength:{objc_msgSend(v31, "longLongValue")}];
  }

  return v3;
}

- (NSArray)sinfs
{
  v11[0] = @"download_id";
  v11[1] = @"sinfs_data";
  v11[2] = @"asset_type";
  [(DownloadAssetEntity *)self getValues:&v8 forProperties:v11 count:3];
  if (v9)
  {
    return [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:0];
  }

  if (![v10 isEqualToString:SSDownloadAssetTypeMedia])
  {
    return 0;
  }

  v4 = [DownloadEntity alloc];
  v5 = -[DownloadEntity initWithPersistentID:inDatabase:](v4, "initWithPersistentID:inDatabase:", [v8 longLongValue], -[DownloadAssetEntity database](self, "database"));
  v6 = [(DownloadEntity *)v5 copyStoreDownloadMetadata];
  v3 = [v6 sinfs];

  return v3;
}

+ (id)databasePropertyToSetClientProperty:(id)a3
{
  result = [qword_100383EC0 objectForKey:?];
  if (!result)
  {
    v5 = qword_100383EB8;

    return [v5 objectForKey:a3];
  }

  return result;
}

+ (id)disambiguatedSQLForProperty:(id)a3
{
  result = [qword_100383EC8 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___DownloadAssetEntity;
    return objc_msgSendSuper2(&v6, "disambiguatedSQLForProperty:", a3);
  }

  return result;
}

- (BOOL)deleteFromDatabase
{
  v6.receiver = self;
  v6.super_class = DownloadAssetEntity;
  v3 = [(DownloadAssetEntity *)&v6 deleteFromDatabase];
  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100122918;
    v5[3] = &unk_100329198;
    v5[4] = self;
    [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{@"IFNULL(asset.local_path, ITSDGetAssetPath(asset.download_id, asset.ROWID))", @"IFNULL(asset.blocked_reason, 0)", @"IFNULL(asset.blocked_reason, 0)", 0}];
    v4 = [[NSArray alloc] initWithObjects:{@"retry_count", @"asset_order", @"avfoundation_blocked", @"bytes_total", @"destination_url", @"download_id", @"download_token", @"dpinfo_data", @"uncompressed_size", @"file_protection", @"hash_array", @"hash_type", @"body_data", @"body_data_file_path", @"http_headers", @"http_method", @"is_discretionary", @"is_downloaded", @"is_drm_free", @"is_external", @"is_hls", @"is_local_cache_server", @"is_zip_streamable", @"local_path", @"service_type", @"bytes_to_hash", @"path_extension", @"processing_types", @"protection_type", @"request_parameters", @"server_guid", @"sinfs_data", @"store_flavor", @"timeout_interval", @"asset_type", @"url", @"video_dimensions", 0}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 setObject:objc_msgSend(a1 forKey:{"disambiguatedSQLForProperty:", *(*(&v11 + 1) + 8 * i)), *(*(&v11 + 1) + 8 * i)}];
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }

    qword_100383EC8 = [v3 copy];

    v10 = [NSDictionary alloc];
    v9 = SSDownloadAssetPropertyLocalPath;
    qword_100383EB8 = [v10 initWithObjectsAndKeys:{@"retry_count", SSDownloadAssetPropertyAllowedRetryCount, @"bytes_total", SSDownloadAssetPropertyBytesTotal, @"destination_url", SSDownloadAssetPropertyDestinationURL, @"download_token", SSDownloadAssetPropertyDownloadToken, @"dpinfo_data", SSDownloadAssetPropertyDPInfo, @"file_protection", SSDownloadAssetPropertyFileProtectionType, @"uncompressed_size", SSDownloadAssetPropertyExpectedDiskSpace, @"hash_array", SSDownloadAssetPropertyHashes, @"hash_type", SSDownloadAssetPropertyHashType, @"body_data", SSDownloadAssetPropertyHTTPBodyData, @"body_data_file_path", SSDownloadAssetPropertyHTTPBodyDataFilePath, @"http_headers", SSDownloadAssetPropertyHTTPHeaderData, @"http_method", SSDownloadAssetPropertyHTTPMethod, @"initial_odr_size", SSDownloadAssetPropertyInitialODRSize, @"is_discretionary", SSDownloadAssetPropertyIsDiscretionary, @"is_drm_free", SSDownloadAssetPropertyIsDRMFree, @"is_external", SSDownloadAssetPropertyIsExternal, @"is_hls", SSDownloadAssetPropertyIsHLS, @"is_zip_streamable", SSDownloadAssetPropertyIsZipStreamable, @"is_local_cache_server", SSDownloadAssetPropertyIsLocalCacheServer, @"bytes_to_hash", SSDownloadAssetPropertyNumberOfBytesToHash, @"path_extension", SSDownloadAssetPropertyPathExtension, @"processing_types", SSDownloadAssetPropertyProcessingTypes, @"request_parameters", SSDownloadAssetPropertyRequestParameterData, @"IFNULL(asset.local_path, ITSDGetAssetPath(asset.download_id, asset.ROWID))", SSDownloadAssetPropertyLocalPath, @"sinfs_data", SSDownloadAssetPropertySINFData, @"store_flavor", SSDownloadAssetPropertyStoreFlavor, @"timeout_interval", SSDownloadAssetPropertyTimeoutInterval, @"asset_type", SSDownloadAssetPropertyType, @"url", SSDownloadAssetPropertyURL, @"video_dimensions"}];
    qword_100383EC0 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"local_path", v9, 0}];
  }
}

@end
@interface SUBDocumentationFetcher
+ (id)_downloadOptionsWithServerParams:(id)params;
+ (int64_t)_requestDocCatalogDownload:(id)download;
- (SUBDocumentationFetcher)init;
- (id)_documentationQuery;
- (id)queryForDocAsset:(id)asset localOnly:(BOOL)only error:(id *)error;
- (void)_invokeFetchCompletionsForDocumentationID:(id)d localOnly:(BOOL)only documentation:(id)documentation error:(id)error;
- (void)_purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion;
- (void)fetchDocumentationForDescriptor:(id)descriptor localOnly:(BOOL)only shouldOverrideURL:(BOOL)l overrideURL:(id)rL completion:(id)completion;
- (void)purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation SUBDocumentationFetcher

- (SUBDocumentationFetcher)init
{
  v14.receiver = self;
  v14.super_class = SUBDocumentationFetcher;
  v2 = [(SUBDocumentationFetcher *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.subridged.SUBDocumentationFetcher.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.subridged.SUBDocumentationFetcher.callbackQueue", v6);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = objc_opt_new();
    localDocumentationFetchCompletions = v2->_localDocumentationFetchCompletions;
    v2->_localDocumentationFetchCompletions = v9;

    v11 = objc_opt_new();
    remoteDocumentationFetchCompletions = v2->_remoteDocumentationFetchCompletions;
    v2->_remoteDocumentationFetchCompletions = v11;
  }

  return v2;
}

- (id)_documentationQuery
{
  v2 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation"];

  return v2;
}

- (void)_invokeFetchCompletionsForDocumentationID:(id)d localOnly:(BOOL)only documentation:(id)documentation error:(id)error
{
  onlyCopy = only;
  dCopy = d;
  documentationCopy = documentation;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (!dCopy)
  {
    sub_100019AF8();
  }

  if (documentationCopy)
  {
    [(SUBDocumentationFetcher *)self setCachedDocumentationID:dCopy];
    [(SUBDocumentationFetcher *)self setCachedDocumentation:documentationCopy];
  }

  v13 = 40;
  if (onlyCopy)
  {
    v13 = 32;
  }

  v14 = *(&self->super.isa + v13);
  v15 = [v14 objectForKeyedSubscript:dCopy];
  [v14 setObject:0 forKeyedSubscript:dCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v21 + 1) + 8 * i) + 16))(*(*(&v21 + 1) + 8 * i));
      }

      v18 = [v16 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v18);
  }

  if (!onlyCopy)
  {
    [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:dCopy localOnly:1 documentation:documentationCopy error:errorCopy, v21];
  }
}

- (void)fetchDocumentationForDescriptor:(id)descriptor localOnly:(BOOL)only shouldOverrideURL:(BOOL)l overrideURL:(id)rL completion:(id)completion
{
  descriptorCopy = descriptor;
  rLCopy = rL;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  documentationID = [descriptorCopy documentationID];
  if (!documentationID)
  {
    sub_100019B24();
  }

  v16 = documentationID;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C10C;
  block[3] = &unk_10002D358;
  block[4] = self;
  v22 = documentationID;
  onlyCopy = only;
  lCopy = l;
  v23 = rLCopy;
  v24 = completionCopy;
  v18 = rLCopy;
  v19 = completionCopy;
  v20 = v16;
  dispatch_async(queue, block);
}

+ (id)_downloadOptionsWithServerParams:(id)params
{
  paramsCopy = params;
  v4 = objc_opt_new();
  [v4 setTimeoutIntervalForResource:60];
  [v4 setAllowsCellularAccess:1];
  [v4 setDiscretionary:0];
  additionalServerParams = [v4 additionalServerParams];

  if (!additionalServerParams)
  {
    v6 = +[NSMutableDictionary dictionary];
    [v4 setAdditionalServerParams:v6];
  }

  if (paramsCopy)
  {
    additionalServerParams2 = [v4 additionalServerParams];
    [additionalServerParams2 addEntriesFromDictionary:paramsCopy];
  }

  return v4;
}

+ (int64_t)_requestDocCatalogDownload:(id)download
{
  downloadCopy = download;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 3;
  v4 = dispatch_semaphore_create(0);
  v5 = [SUBDocumentationFetcher _downloadOptionsWithServerParams:downloadCopy];
  v6 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = @"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : requesting %{public}@ catalog download", buf, 0xCu);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C868;
  v11[3] = &unk_10002D380;
  v13 = &v14;
  v7 = v4;
  v12 = v7;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.WatchSoftwareUpdateDocumentation" options:v5 then:v11];
  v8 = dispatch_time(0, 90000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v9;
}

- (id)queryForDocAsset:(id)asset localOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  assetCopy = asset;
  _documentationQuery = [(SUBDocumentationFetcher *)self _documentationQuery];
  v10 = SUBActiveNRDevice();
  v11 = v10;
  if (!v10)
  {
    v21 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to query device property Device Class", buf, 2u);
    }

    v26 = SUBError(@"SUBError", 5, 0, @"Failed to query device property Device Class", v22, v23, v24, v25, v38);
    results = 0;
    v12 = 0;
    if (!error)
    {
      goto LABEL_20;
    }

LABEL_19:
    v34 = v26;
    *error = v26;
    goto LABEL_20;
  }

  v39 = onlyCopy;
  v12 = [v10 valueForProperty:NRDevicePropertyDeviceNameString];
  v13 = [NSMutableArray arrayWithObject:v12];
  v14 = [_documentationQuery addKeyValueArray:@"Device" with:v13];

  if (v14)
  {
    v15 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = @"Device";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : error setting filter for: %{public}@", buf, 0xCu);
    }

    v20 = @"Failed to set deviceClass query filter";
    goto LABEL_18;
  }

  v28 = [NSMutableArray arrayWithObject:assetCopy];
  v29 = [_documentationQuery addKeyValueArray:@"SUDocumentationID" with:v28];

  if (v29)
  {
    v30 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = @"SUDocumentationID";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : error setting filter for: %{public}@", buf, 0xCu);
    }

    v20 = @"Failed to set documentationID query filter";
    goto LABEL_18;
  }

  queryMetaDataSync = [_documentationQuery queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v32 = queryMetaDataSync;
    v33 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v41 = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : asset query failed: %{public}ld", buf, 0xCu);
    }

    v20 = @"asset query failed";
LABEL_18:
    v26 = SUBError(@"SUBError", 5, 0, v20, v16, v17, v18, v19, v38);
    [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:assetCopy localOnly:v39 documentation:0 error:v26];
    results = 0;
    if (!error)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  results = [_documentationQuery results];
  v36 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    *buf = 134349056;
    v41 = [results count];
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : MobileAsset returned %{public}lu matching assets", buf, 0xCu);
  }

  v26 = 0;
  if (error)
  {
    goto LABEL_19;
  }

LABEL_20:

  return results;
}

- (void)purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DBA8;
  block[3] = &unk_10002D460;
  block[4] = self;
  v12 = descriptorCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = descriptorCopy;
  dispatch_async(queue, block);
}

- (void)_purgeAssetsNotMatchingDescriptor:(id)descriptor completion:(id)completion
{
  descriptorCopy = descriptor;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  cachedDocumentationID = self->_cachedDocumentationID;
  if (cachedDocumentationID)
  {
    documentationID = [descriptorCopy documentationID];
    v10 = [(NSString *)cachedDocumentationID isEqualToString:documentationID];

    if ((v10 & 1) == 0)
    {
      [(SUBDocumentationFetcher *)self setCachedDocumentationID:0];
      [(SUBDocumentationFetcher *)self setCachedDocumentation:0];
    }
  }

  _documentationQuery = [(SUBDocumentationFetcher *)self _documentationQuery];
  [_documentationQuery returnTypes:2];
  queryMetaDataSync = [_documentationQuery queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v13 = queryMetaDataSync;
    v14 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to query for documenation assets when purging: %{public}ld", buf, 0xCu);
    }

    completionCopy[2](completionCopy);
  }

  else
  {
    v28 = _documentationQuery;
    results = [_documentationQuery results];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [results countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(results);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          attributes = [v20 attributes];
          v22 = [attributes objectForKey:@"SUDocumentationID"];

          if (!descriptorCopy || ([descriptorCopy documentationID], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v22), v23, (v24 & 1) == 0))
          {
            state = [v20 state];
            if ((state - 2) >= 2)
            {
              if (state == 4)
              {
                v27 = softwareupdatebridge_log;
                if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v35 = v20;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : canceling documentation asset download: %{public}@", buf, 0xCu);
                }

                [v20 cancelDownload:&stru_10002D4A0];
              }
            }

            else
            {
              v26 = softwareupdatebridge_log;
              if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v35 = v20;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Purging documentation asset: %{public}@", buf, 0xCu);
              }

              [v20 purge:&stru_10002D4C0];
            }
          }
        }

        v17 = [results countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    completionCopy[2](completionCopy);

    _documentationQuery = v28;
  }
}

@end
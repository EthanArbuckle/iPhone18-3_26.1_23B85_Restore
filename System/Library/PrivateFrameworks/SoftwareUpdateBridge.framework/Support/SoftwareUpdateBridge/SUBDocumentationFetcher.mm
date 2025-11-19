@interface SUBDocumentationFetcher
+ (id)_downloadOptionsWithServerParams:(id)a3;
+ (int64_t)_requestDocCatalogDownload:(id)a3;
- (SUBDocumentationFetcher)init;
- (id)_documentationQuery;
- (id)queryForDocAsset:(id)a3 localOnly:(BOOL)a4 error:(id *)a5;
- (void)_invokeFetchCompletionsForDocumentationID:(id)a3 localOnly:(BOOL)a4 documentation:(id)a5 error:(id)a6;
- (void)_purgeAssetsNotMatchingDescriptor:(id)a3 completion:(id)a4;
- (void)fetchDocumentationForDescriptor:(id)a3 localOnly:(BOOL)a4 shouldOverrideURL:(BOOL)a5 overrideURL:(id)a6 completion:(id)a7;
- (void)purgeAssetsNotMatchingDescriptor:(id)a3 completion:(id)a4;
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

- (void)_invokeFetchCompletionsForDocumentationID:(id)a3 localOnly:(BOOL)a4 documentation:(id)a5 error:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_queue);
  if (!v10)
  {
    sub_100019AF8();
  }

  if (v11)
  {
    [(SUBDocumentationFetcher *)self setCachedDocumentationID:v10];
    [(SUBDocumentationFetcher *)self setCachedDocumentation:v11];
  }

  v13 = 40;
  if (v8)
  {
    v13 = 32;
  }

  v14 = *(&self->super.isa + v13);
  v15 = [v14 objectForKeyedSubscript:v10];
  [v14 setObject:0 forKeyedSubscript:v10];
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

  if (!v8)
  {
    [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:v10 localOnly:1 documentation:v11 error:v12, v21];
  }
}

- (void)fetchDocumentationForDescriptor:(id)a3 localOnly:(BOOL)a4 shouldOverrideURL:(BOOL)a5 overrideURL:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  dispatch_assert_queue_not_V2(self->_queue);
  v15 = [v12 documentationID];
  if (!v15)
  {
    sub_100019B24();
  }

  v16 = v15;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C10C;
  block[3] = &unk_10002D358;
  block[4] = self;
  v22 = v15;
  v25 = a4;
  v26 = a5;
  v23 = v13;
  v24 = v14;
  v18 = v13;
  v19 = v14;
  v20 = v16;
  dispatch_async(queue, block);
}

+ (id)_downloadOptionsWithServerParams:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setTimeoutIntervalForResource:60];
  [v4 setAllowsCellularAccess:1];
  [v4 setDiscretionary:0];
  v5 = [v4 additionalServerParams];

  if (!v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [v4 setAdditionalServerParams:v6];
  }

  if (v3)
  {
    v7 = [v4 additionalServerParams];
    [v7 addEntriesFromDictionary:v3];
  }

  return v4;
}

+ (int64_t)_requestDocCatalogDownload:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 3;
  v4 = dispatch_semaphore_create(0);
  v5 = [SUBDocumentationFetcher _downloadOptionsWithServerParams:v3];
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

- (id)queryForDocAsset:(id)a3 localOnly:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(SUBDocumentationFetcher *)self _documentationQuery];
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
    v27 = 0;
    v12 = 0;
    if (!a5)
    {
      goto LABEL_20;
    }

LABEL_19:
    v34 = v26;
    *a5 = v26;
    goto LABEL_20;
  }

  v39 = v6;
  v12 = [v10 valueForProperty:NRDevicePropertyDeviceNameString];
  v13 = [NSMutableArray arrayWithObject:v12];
  v14 = [v9 addKeyValueArray:@"Device" with:v13];

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

  v28 = [NSMutableArray arrayWithObject:v8];
  v29 = [v9 addKeyValueArray:@"SUDocumentationID" with:v28];

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

  v31 = [v9 queryMetaDataSync];
  if (v31)
  {
    v32 = v31;
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
    [(SUBDocumentationFetcher *)self _invokeFetchCompletionsForDocumentationID:v8 localOnly:v39 documentation:0 error:v26];
    v27 = 0;
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v27 = [v9 results];
  v36 = softwareupdatebridge_log;
  if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    *buf = 134349056;
    v41 = [v27 count];
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : MobileAsset returned %{public}lu matching assets", buf, 0xCu);
  }

  v26 = 0;
  if (a5)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v27;
}

- (void)purgeAssetsNotMatchingDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000DBA8;
  block[3] = &unk_10002D460;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)_purgeAssetsNotMatchingDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  cachedDocumentationID = self->_cachedDocumentationID;
  if (cachedDocumentationID)
  {
    v9 = [v6 documentationID];
    v10 = [(NSString *)cachedDocumentationID isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      [(SUBDocumentationFetcher *)self setCachedDocumentationID:0];
      [(SUBDocumentationFetcher *)self setCachedDocumentation:0];
    }
  }

  v11 = [(SUBDocumentationFetcher *)self _documentationQuery];
  [v11 returnTypes:2];
  v12 = [v11 queryMetaDataSync];
  if (v12)
  {
    v13 = v12;
    v14 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v35 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[SUBDocumentationFetcher] : Failed to query for documenation assets when purging: %{public}ld", buf, 0xCu);
    }

    v7[2](v7);
  }

  else
  {
    v28 = v11;
    v15 = [v11 results];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [v20 attributes];
          v22 = [v21 objectForKey:@"SUDocumentationID"];

          if (!v6 || ([v6 documentationID], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v22), v23, (v24 & 1) == 0))
          {
            v25 = [v20 state];
            if ((v25 - 2) >= 2)
            {
              if (v25 == 4)
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

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    v7[2](v7);

    v11 = v28;
  }
}

@end
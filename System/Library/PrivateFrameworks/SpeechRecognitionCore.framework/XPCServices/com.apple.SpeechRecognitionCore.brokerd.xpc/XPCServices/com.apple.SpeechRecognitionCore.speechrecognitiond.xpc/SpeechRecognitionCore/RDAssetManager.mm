@interface RDAssetManager
+ (id)_assetQueryForLanguage:(id)a3;
+ (id)sharedInstance;
- (BOOL)_startedDownloadingEmbeddedSpeechAsset:(id)a3 withUrgency:(BOOL)a4 error:(id *)a5;
- (BOOL)sendCallback;
- (RDAssetManager)init;
- (id)_errorStringForCancelDownloadResult:(int64_t)a3;
- (id)_errorStringForDownloadResult:(int64_t)a3;
- (id)_errorStringForMAOperationResult:(int64_t)a3;
- (id)_errorStringForPurgeResult:(int64_t)a3;
- (id)_errorStringForQueryResult:(int64_t)a3;
- (id)_installedAssetForLanguage:(id)a3 error:(id *)a4;
- (id)_installedAssetFromFoundAssets:(id)a3 language:(id)a4 error:(id *)a5;
- (id)_installedLocalAssetForLanguage:(id)a3 error:(id *)a4;
- (id)_stateStringForAsset:(id)a3;
- (id)copyInstallationStatusForLangaugesWithError:(id *)a3;
- (id)copyInstalledAssetPathForLangaugeWithError:(id)a3 error:(id *)a4;
- (id)copyInstalledQuasarModelPathForLanguage:(id)a3 error:(id *)a4;
- (id)purgeInstalledAssetsWithError:(id *)a3;
- (id)queryAndCopyInstallationStatusForLangaugesWithError:(id *)a3;
- (void)_cancelDownloadForLangaugeWithError:(id)a3 withError:(id *)a4;
- (void)_fetchRemoteAssetForLanguage:(id)a3;
- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)a3 downloadPhase:(__CFString *)a4 timeRemaining:(float)a5 bytesWritten:(float)a6 bytesTotal:(float)a7 error:(id)a8;
- (void)addPeerForCallback:(id)a3;
- (void)cancelDownloadForLanguage:(id)a3 error:(id *)a4;
- (void)kickCatalogDownloadWithUrgency:(BOOL)a3;
- (void)removePeerFromCallback:(id)a3;
- (void)sendMessageToClient:(__CFDictionary *)a3;
@end

@implementation RDAssetManager

+ (id)sharedInstance
{
  if (qword_10010E558 != -1)
  {
    sub_1000C9398();
  }

  v3 = qword_10010E550;

  return v3;
}

- (RDAssetManager)init
{
  v10.receiver = self;
  v10.super_class = RDAssetManager;
  v2 = [(RDAssetManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.embeddedspeech.RDAssetManager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    [(RDAssetManager *)v2 setCatalogDownloadInProgress:0];
    v5 = +[NSMutableArray array];
    [(RDAssetManager *)v2 setRequestedLanguagesForDownload:v5];

    v6 = +[NSMutableArray array];
    [(RDAssetManager *)v2 setPeersRequestingDownloadProgress:v6];

    v7 = +[NSDate distantPast];
    [v7 timeIntervalSinceReferenceDate];
    v2->_lastCatalogDownload = v8;
  }

  return v2;
}

- (void)kickCatalogDownloadWithUrgency:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004349C;
  v4[3] = &unk_1000FF710;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (id)copyInstallationStatusForLangaugesWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100043B14;
  v18 = sub_100043B24;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100043B14;
  v12 = sub_100043B24;
  v13 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043B2C;
  block[3] = &unk_1000FF4A8;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(queue, block);
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)queryAndCopyInstallationStatusForLangaugesWithError:(id *)a3
{
  v5 = [RDAssetManager _assetQueryForLanguage:0];
  v6 = v5;
  if (!v5)
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not create asset query!", buf, 2u);
    }

    goto LABEL_63;
  }

  [v5 returnTypes:1];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 setDoNotBlockOnNetworkStatus:1];
  v7 = [v6 queryMetaDataSync];
  v8 = RXOSLog();
  v9 = v8;
  if (v7)
  {
    if (v7 == 2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not find catalog! Attempting to kick off download...", buf, 2u);
      }

      [(RDAssetManager *)self kickCatalogDownloadWithUrgency:1];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v43 = [(RDAssetManager *)self _errorStringForQueryResult:v7];
        *buf = 138412290;
        v58 = v43;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MobileAsset query failed : error = %@", buf, 0xCu);
      }

      if (a3)
      {
        v63 = @"MAQueryResult";
        v44 = [(RDAssetManager *)self _errorStringForQueryResult:v7];
        v64 = v44;
        v45 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        *a3 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v45];
      }
    }

LABEL_63:
    v12 = 0;
    goto LABEL_66;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Found Catalog!", buf, 2u);
  }

  [(RDAssetManager *)self kickCatalogDownloadWithUrgency:0];
  v11 = [v6 results];
  v12 = +[NSMutableDictionary dictionary];
  v48 = v11;
  if (v11)
  {
    v47 = v6;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (!v14)
    {
      goto LABEL_41;
    }

    v15 = v14;
    v16 = *v54;
    while (1)
    {
      v17 = 0;
      do
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v53 + 1) + 8 * v17);
        v19 = [v18 _es_language];
        v20 = [v12 objectForKey:v19];
        if ([v20 hasPrefix:@"Version:"])
        {
          goto LABEL_21;
        }

        v21 = [v12 objectForKey:v19];
        if ([v21 isEqualToString:@"Installing"])
        {
          goto LABEL_20;
        }

        v22 = [v21 isEqualToString:@"Waiting to Install"];

        if ((v22 & 1) == 0)
        {
          v23 = [v18 _es_status];
          if (v23 <= 1)
          {
            if (v23)
            {
              if (v23 != 1)
              {
                goto LABEL_37;
              }

              v24 = @"Not Installing";
            }

            else
            {
              v24 = @"Not Supported";
            }
          }

          else if (v23 == 2)
          {
            v24 = @"Waiting to Install";
          }

          else
          {
            v24 = @"Installing";
            if (v23 != 3)
            {
              if (v23 == 4)
              {
                v20 = [v18 _es_quasarDir];
                v21 = [v18 _es_quasarModelPath];
                if ([v18 _es_isCompatibleWithThisDevice] && sub_100044290(v21))
                {
                  v25 = [NSString stringWithFormat:@"Version: %@", v20];
                  [v12 setObject:v25 forKey:v19];
                }

                else
                {
                  [v12 setObject:@"Not Supported" forKey:v19];
                }

LABEL_20:

LABEL_21:
                goto LABEL_22;
              }

LABEL_37:
              v24 = @"Unknown";
            }
          }

          [v12 setObject:v24 forKey:v19];
        }

LABEL_22:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v26 = [v13 countByEnumeratingWithState:&v53 objects:v62 count:16];
      v15 = v26;
      if (!v26)
      {
LABEL_41:

        v6 = v47;
        break;
      }
    }
  }

  v27 = +[NSUserDefaults standardUserDefaults];
  v28 = [v27 stringArrayForKey:@"InstalledLanguages"];
  v29 = v28;
  v30 = &__NSArray0__struct;
  if (v28)
  {
    v30 = v28;
  }

  v31 = v30;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = v31;
  v33 = [v32 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v50;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v49 + 1) + 8 * i);
        v39 = [v12 objectForKey:v38];

        if (!v39)
        {
          if (!v35)
          {
            v35 = [v32 mutableCopy];
          }

          [v35 removeObject:v38];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v34);

    if (v35)
    {
      v40 = RXOSLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [v32 componentsJoinedByString:{@", "}];
        v42 = [v35 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v58 = v41;
        v59 = 2112;
        v60 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Previously installed offline language(s) removed; installed list: [%@] -> [%@]", buf, 0x16u);
      }

      [v27 setObject:v35 forKey:@"InstalledLanguages"];
      [v27 synchronize];
    }
  }

  else
  {

    v35 = 0;
  }

LABEL_66:

  return v12;
}

- (id)copyInstalledAssetPathForLangaugeWithError:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [RDAssetManager _assetQueryForLanguage:0];
  [v7 returnTypes:1];
  v8 = [v7 queryMetaDataSync];
  if (!v8)
  {
    v15 = [v7 results];
    v12 = v15;
    if (!v15)
    {
      v14 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v15;
    v16 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = [v20 _es_language];
          v22 = [v20 _es_status];
          if ([v21 isEqualToString:v6])
          {
            v23 = v22 == 4;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            v14 = [v20 _es_quasarModelPath];
            if ([v20 _es_isCompatibleWithThisDevice] && (sub_100044290(v14) & 1) != 0)
            {

              goto LABEL_27;
            }
          }
        }

        v17 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_27:
    v12 = v13;
LABEL_28:

    goto LABEL_29;
  }

  v9 = v8;
  if (v8 != 2)
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      *buf = 138412290;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MobileAsset query failed for copyInstalledAssetPathForLangaugeWithError : error = %@", buf, 0xCu);
    }

    if (a4)
    {
      v30 = @"MAQueryResult";
      v12 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      v31 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v13];
      *a4 = v14 = 0;
      goto LABEL_28;
    }
  }

  v14 = 0;
LABEL_30:

  return v14;
}

- (void)cancelDownloadForLanguage:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    *v16 = 0;
    v17 = v16;
    v18 = 0x3032000000;
    v19 = sub_100043B14;
    v20 = sub_100043B24;
    v21 = 0;
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100044A38;
    block[3] = &unk_1000FF520;
    block[4] = self;
    v10 = v8;
    v14 = v10;
    v15 = v16;
    dispatch_sync(queue, block);
    if (a4)
    {
      *a4 = *(v17 + 5);
      v11 = RXOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *a4;
        *buf = 138412290;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Error in cancelling download: %@", buf, 0xCu);
      }
    }

    _Block_object_dispose(v16, 8);
  }

  else
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning nil for nil language", v16, 2u);
    }
  }
}

- (void)_cancelDownloadForLangaugeWithError:(id)a3 withError:(id *)a4
{
  v6 = a3;
  v7 = [RDAssetManager _assetQueryForLanguage:v6];
  [v7 returnTypes:4];
  v8 = [v7 queryMetaDataSync];
  if (!v8)
  {
    v18 = [v7 results];
    v16 = v18;
    if (v18)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v31 = v7;
        v32 = v6;
        v21 = *v34;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            if ([v23 _es_isCompatibleWithThisDevice])
            {
              [v23 refreshState];
              v24 = [v23 cancelDownloadSync];
              if (v24)
              {
                v25 = @"CancelFailed";
              }

              else
              {
                v25 = @"Cancelled";
              }

              if ([(RDAssetManager *)self sendCallback])
              {
                v26 = [v23 _es_language];
                v27 = [(RDAssetManager *)self _errorStringForCancelDownloadResult:v24];
                LODWORD(v28) = -1.0;
                LODWORD(v29) = -1.0;
                LODWORD(v30) = -1.0;
                [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:v26 downloadPhase:v25 timeRemaining:v27 bytesWritten:v28 bytesTotal:v29 error:v30];
              }

              CFRelease(v25);
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v20);
        v7 = v31;
        v6 = v32;
      }
    }

    goto LABEL_24;
  }

  v9 = v8;
  v10 = RXOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
    *buf = 138412290;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MobileAsset query failed : error = %@", buf, 0xCu);
  }

  if (a4)
  {
    if ([(RDAssetManager *)self sendCallback])
    {
      v12 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      LODWORD(v13) = -1.0;
      LODWORD(v14) = -1.0;
      LODWORD(v15) = -1.0;
      [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:v6 downloadPhase:@"CancelFailed" timeRemaining:v12 bytesWritten:v13 bytesTotal:v14 error:v15];
    }

    v38 = @"MAQueryResult";
    v16 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
    v39 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *a4 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:103 userInfo:v17];

LABEL_24:
  }
}

- (id)copyInstalledQuasarModelPathForLanguage:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    *buf = 0;
    v30 = buf;
    v31 = 0x3032000000;
    v32 = sub_100043B14;
    v33 = sub_100043B24;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_100043B14;
    v27 = sub_100043B24;
    v28 = 0;
    queue = self->_queue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100045074;
    v18 = &unk_1000FF738;
    v19 = self;
    v10 = v8;
    v20 = v10;
    v21 = buf;
    v22 = &v23;
    dispatch_sync(queue, &v15);
    v11 = v30;
    v12 = *(v30 + 5);
    if (a4 && !v12)
    {
      *a4 = v24[5];
      v11 = v30;
      v12 = *(v30 + 5);
    }

    if (v12)
    {
      if (a4)
      {
        *a4 = 0;
        v12 = *(v11 + 5);
      }

      a4 = v12;
    }

    else if (a4)
    {
      v35 = NSLocalizedFailureReasonErrorKey;
      v36 = @"No models installed yet";
      v13 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1, v15, v16, v17, v18, v19];
      *a4 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:v13];

      a4 = 0;
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Returning no model path for nil language", buf, 2u);
    }

    a4 = 0;
  }

  return a4;
}

- (void)_fetchRemoteAssetForLanguage:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [RDAssetManager _assetQueryForLanguage:v4];
  [v5 returnTypes:2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045358;
  v8[3] = &unk_1000FF788;
  v8[4] = self;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v7 queryMetaData:v8];
}

- (id)_installedAssetForLanguage:(id)a3 error:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  if (v6)
  {
    v7 = +[NSUserDefaults standardUserDefaults];
    v8 = [v7 stringArrayForKey:@"InstalledLanguages"];
    v9 = v8;
    v10 = &__NSArray0__struct;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = [(RDAssetManager *)self _installedLocalAssetForLanguage:v6 error:a4];
    v13 = [v12 _es_isInstalled];
    v14 = [v11 containsObject:v6];
    if (v13)
    {
      if ((v14 & 1) == 0)
      {
        v15 = [v11 arrayByAddingObject:v6];
        v16 = RXOSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 componentsJoinedByString:{@", "}];
          v24 = 138412546;
          v25 = v6;
          v26 = 2112;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Recording newly installed offline language (%@) installed list is now: [%@]", &v24, 0x16u);
        }

        [v7 setObject:v15 forKey:@"InstalledLanguages"];
        [v7 synchronize];
      }

      v18 = v12;
      goto LABEL_23;
    }

    if (v14)
    {
      v19 = [v11 mutableCopy];
      [v19 removeObject:v6];
      v20 = RXOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 componentsJoinedByString:{@", "}];
        v24 = 138412546;
        v25 = v6;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Previously installed offline language (%@) removed; installed list is now: [%@]", &v24, 0x16u);
      }

      [v7 setObject:v19 forKey:@"InstalledLanguages"];
      [v7 synchronize];
    }

    if ([v12 _es_isDownloading])
    {
      if (!a4)
      {
        v18 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v22 = [(RDAssetManager *)self _startedDownloadingEmbeddedSpeechAsset:v12 withUrgency:1 error:a4];
      v18 = 0;
      if (!a4 || (v22 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
    *a4 = v18 = 0;
    goto LABEL_23;
  }

  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v24) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning no installed asset for nil language", &v24, 2u);
  }

  v18 = 0;
LABEL_24:

  return v18;
}

- (id)_installedAssetFromFoundAssets:(id)a3 language:(id)a4 error:(id *)a5
{
  v43 = a5;
  v7 = a3;
  v44 = a4;
  v45 = self;
  dispatch_assert_queue_V2(self->_queue);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v51;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v50 + 1) + 8 * i);
        if ([v15 _es_isCompatibleWithThisDevice])
        {
          if (v12)
          {
            if ([v12 _es_compareByVersion:v15] == -1)
            {
              v16 = v15;

              v12 = v16;
            }
          }

          else
          {
            v12 = v15;
          }

          if ([v15 _es_isInstalled])
          {
            if (v11)
            {
              if ([v11 _es_compareByVersion:v15] == -1)
              {
                v17 = v15;

                v11 = v17;
              }
            }

            else
            {
              v11 = v15;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = v8;
  v19 = [v18 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v46 + 1) + 8 * j);
        v24 = v23 == v12 || v23 == v11;
        if (!v24 && [*(*(&v46 + 1) + 8 * j) _es_isCompatibleWithThisDevice])
        {
          if ([v23 _es_isDownloading])
          {
            v25 = [v23 cancelDownloadSync];
            if (!v25)
            {
              continue;
            }

            v26 = v25;
            v27 = RXOSLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = [v23 _es_description];
              v29 = [(RDAssetManager *)v45 _errorStringForCancelDownloadResult:v26];
              *buf = 138412546;
              v57 = v28;
              v58 = 2112;
              v59 = v29;
              v30 = v27;
              v31 = "Error canceling download of (%@) before fetching newer version: %@";
              goto LABEL_38;
            }

            goto LABEL_39;
          }

          if ([v23 _es_isInstalled])
          {
            v32 = [v23 purgeSync];
            if (v32)
            {
              v33 = v32;
              v27 = RXOSLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v28 = [v23 _es_description];
                v29 = [(RDAssetManager *)v45 _errorStringForPurgeResult:v33];
                *buf = 138412546;
                v57 = v28;
                v58 = 2112;
                v59 = v29;
                v30 = v27;
                v31 = "Error purging (%@) before fetching newer version: %@";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, v31, buf, 0x16u);
              }

LABEL_39:

              continue;
            }
          }
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v20);
  }

  v34 = RXOSLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v18 count];
    v36 = [v12 _es_description];
    *buf = 134218498;
    v57 = v35;
    v58 = 2112;
    v59 = v44;
    v60 = 2112;
    v61 = v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found %lu asset(s) for %@, with latest being (%@)", buf, 0x20u);
  }

  v37 = v43;
  if (v12 && v12 != v11)
  {
    v38 = RXOSLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v57 = v12;
      v58 = 2048;
      v59 = v11;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Starting a download because %p != %p", buf, 0x16u);
    }

    if ([(RDAssetManager *)v45 _startedDownloadingEmbeddedSpeechAsset:v12 withUrgency:v11 == 0 error:v43])
    {
      if (v43)
      {
        *v43 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
      }
    }

    else if (v43)
    {
      v39 = *v43;
      if (*v43)
      {
        v54 = NSUnderlyingErrorKey;
        v55 = v39;
        v40 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }

      else
      {
        v40 = 0;
      }

      *v37 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v40, v43];
      if (v39)
      {
      }
    }
  }

  if (v11)
  {
    v41 = v11;
  }

  return v11;
}

- (id)_installedLocalAssetForLanguage:(id)a3 error:(id *)a4
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = [RDAssetManager _assetQueryForLanguage:v6];
  [v8 returnTypes:2];
  [v8 setDoNotBlockOnNetworkStatus:1];
  [v8 setDoNotBlockBeforeFirstUnlock:1];
  v9 = [v8 queryMetaDataSync];
  if (!v9)
  {
    v16 = [v8 results];
    v14 = v16;
    if (v16)
    {
      if ([v16 count])
      {
        v25 = 0;
        v17 = [(RDAssetManager *)self _installedAssetFromFoundAssets:v14 language:v6 error:&v25];
        v18 = v25;
        v19 = v18;
        if (a4 && !v17)
        {
          v20 = v18;
          *a4 = v19;
        }

        goto LABEL_20;
      }

      v19 = RXOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v8;
        v21 = "No assets were found for query: %@";
        v22 = v19;
        v23 = 12;
        goto LABEL_18;
      }
    }

    else
    {
      v19 = RXOSLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = v6;
        v28 = 2114;
        v29 = v8;
        v21 = "MobileAsset said it succeeded but it didn't for %{public}@: query=%{public}@";
        v22 = v19;
        v23 = 22;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
      }
    }

    v17 = 0;
LABEL_20:

    v13 = v17;
    v15 = v13;
    goto LABEL_21;
  }

  v10 = v9;
  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [(RDAssetManager *)self _errorStringForQueryResult:v10];
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MobileAsset is having trouble with queryMetaDataSync: %@", buf, 0xCu);
  }

  if (!a4)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v30 = @"MAQueryResult";
  v13 = [(RDAssetManager *)self _errorStringForQueryResult:v10];
  v31 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v14];
  *a4 = v15 = 0;
LABEL_21:

LABEL_22:

  return v15;
}

+ (id)_assetQueryForLanguage:(id)a3
{
  v3 = a3;
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v5 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  v6 = v5;
  if (v3)
  {
    [v5 addKeyValuePair:@"Language" with:v3];
  }

  return v6;
}

- (BOOL)_startedDownloadingEmbeddedSpeechAsset:(id)a3 withUrgency:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 _es_description];
    *buf = 138412290;
    v41 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloading %@", buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000467E4;
  v38[3] = &unk_1000FF7B0;
  v38[4] = self;
  v11 = v8;
  v39 = v11;
  v12 = objc_retainBlock(v38);
  if ([v11 _es_isInstalled])
  {
    v13 = RXOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Asset is already installed, no need to start download", buf, 2u);
    }

    LOBYTE(v14) = 1;
    goto LABEL_35;
  }

  v15 = [v11 state];
  v16 = v15;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v22 = RXOSLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Asset is no longer in the catalog, purging", buf, 2u);
      }

      [v11 description];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_100046BAC;
      v33 = v32[3] = &unk_1000FF7D8;
      v34 = self;
      v18 = v33;
      [v11 purge:v32];

      goto LABEL_25;
    }

    if (v15 == 4)
    {
      v17 = RXOSLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Asset download is already queued and in progress", buf, 2u);
      }

      v13 = 0;
      v14 = 1;
      goto LABEL_27;
    }

LABEL_16:
    v18 = RXOSLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v41 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unexpected asset state %ld", buf, 0xCu);
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v15 == 1)
  {
    v37 = 0;
    v14 = [v11 spaceCheck:&v37];
    v19 = RXOSLog();
    v20 = v19;
    if (v14)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v41 = v37;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Asset requires %lld bytes, starting download", buf, 0xCu);
      }

      [v11 attachProgressCallBack:v12];
      v21 = sub_1000436DC(v6);
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000469F4;
      v35[3] = &unk_1000FF7D8;
      v35[4] = self;
      v36 = v11;
      [v36 startDownload:v21 then:v35];

      v13 = 0;
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v41 = v37;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Not enough space to download asset, size=%{public}lld", buf, 0xCu);
      }

      v13 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:&off_100106A28];
      if ([(RDAssetManager *)self sendCallback])
      {
        v28 = [v11 _es_language];
        LODWORD(v29) = -1.0;
        LODWORD(v30) = -1.0;
        LODWORD(v31) = -1.0;
        [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:v28 downloadPhase:@"DownloadFailed" timeRemaining:@"Not enough space" bytesWritten:v29 bytesTotal:v30 error:v31];
      }
    }

    goto LABEL_27;
  }

  if (v15 != 2)
  {
    goto LABEL_16;
  }

LABEL_26:
  v13 = 0;
  v14 = 0;
LABEL_27:
  if (a5)
  {
    v23 = v13;
    *a5 = v13;
  }

  v24 = RXOSLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v11 state];
    *buf = 134218498;
    if (v14)
    {
      v26 = 0;
    }

    else
    {
      v26 = v13;
    }

    v41 = v25;
    v42 = 1024;
    v43 = v14;
    v44 = 2112;
    v45 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset download state=%ld, success=%d, error=%@", buf, 0x1Cu);
  }

LABEL_35:
  return v14;
}

- (id)purgeInstalledAssetsWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100043B14;
  v12 = sub_100043B24;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000470BC;
  v7[3] = &unk_1000FF840;
  v7[4] = &v8;
  v4 = sub_100046CDC(a3, v7);
  if (a3)
  {
    v5 = v9[5];
    if (v5)
    {
      *a3 = v5;
    }
  }

  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)addPeerForCallback:(id)a3
{
  v6 = a3;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  v5 = [(RDAssetManager *)self peersRequestingDownloadProgress];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)removePeerFromCallback:(id)a3
{
  v6 = a3;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  v5 = [(RDAssetManager *)self peersRequestingDownloadProgress];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (BOOL)sendCallback
{
  v3 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v3);
  v4 = [(RDAssetManager *)self peersRequestingDownloadProgress];
  v5 = [v4 count] != 0;

  objc_sync_exit(v3);
  return v5;
}

- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)a3 downloadPhase:(__CFString *)a4 timeRemaining:(float)a5 bytesWritten:(float)a6 bytesTotal:(float)a7 error:(id)a8
{
  v12 = a3;
  v40 = a6;
  valuePtr = a5;
  v39 = a7;
  v13 = a8;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v15 = Mutable;
    theString2 = v12;
    if (v12)
    {
      CFArrayAppendValue(Mutable, v12);
      v16 = RXGetAssetFallbackLocales();
      Count = CFDictionaryGetCount(v16);
      if (Count >= 1)
      {
        v18 = Count;
        v19 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
        CFDictionaryGetKeysAndValues(v16, v19, 0);
        for (i = 0; i != v18; ++i)
        {
          v21 = CFDictionaryGetValue(v16, v19[i]);
          if (v21)
          {
            MutableCopy = CFStringCreateMutableCopy(0, 0, v21);
            if (MutableCopy)
            {
              v23 = MutableCopy;
              v42.length = CFStringGetLength(MutableCopy);
              v42.location = 0;
              CFStringFindAndReplace(v23, @"_", @"-", v42, 0);
              if (CFStringCompare(v23, theString2, 0) == kCFCompareEqualTo)
              {
                v24 = CFStringCreateMutableCopy(0, 0, v19[i]);
                if (v24)
                {
                  v25 = v24;
                  v43.length = CFStringGetLength(v24);
                  v43.location = 0;
                  CFStringFindAndReplace(v25, @"_", @"-", v43, 0);
                  CFArrayAppendValue(v15, v25);
                  CFRelease(v25);
                }
              }

              CFRelease(v23);
            }
          }
        }

        free(v19);
      }
    }

    else
    {
      CFArrayAppendValue(Mutable, &stru_100105420);
    }

    v26 = CFArrayGetCount(v15);
    if (v26 >= 1)
    {
      v27 = v26;
      for (j = 0; j != v27; ++j)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, j);
        v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (CFStringCompare(ValueAtIndex, &stru_100105420, 0))
        {
          Copy = CFStringCreateCopy(0, ValueAtIndex);
          CFDictionaryAddValue(v30, @"Language", Copy);
          CFRelease(Copy);
        }

        else
        {
          CFDictionaryAddValue(v30, @"Language", kCFNull);
        }

        CFDictionaryAddValue(v30, @"Phase", a4);
        v32 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        CFDictionaryAddValue(v30, @"TimeRemaining", v32);
        CFRelease(v32);
        v33 = CFNumberCreate(0, kCFNumberFloatType, &v40);
        CFDictionaryAddValue(v30, @"BytesWritten", v33);
        CFRelease(v33);
        v34 = CFNumberCreate(0, kCFNumberFloatType, &v39);
        CFDictionaryAddValue(v30, @"BytesTotal", v34);
        CFRelease(v34);
        if (v13)
        {
          v35 = CFStringCreateCopy(0, v13);
          CFDictionaryAddValue(v30, @"Error", v35);
          CFRelease(v35);
        }

        else
        {
          CFDictionaryAddValue(v30, @"Error", kCFNull);
        }

        [(RDAssetManager *)self sendMessageToClient:v30];
        CFRelease(v30);
      }
    }

    CFRelease(v15);
    v12 = theString2;
  }
}

- (void)sendMessageToClient:(__CFDictionary *)a3
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_int64(v4, "msg", 601);
  xpc_dictionary_set_value(v4, "downloadStatus", v5);
  v6 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v6);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [(RDAssetManager *)self peersRequestingDownloadProgress];
  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        xpc_connection_send_message(*(*(&v11 + 1) + 8 * v10), v4);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
}

- (id)_errorStringForCancelDownloadResult:(int64_t)a3
{
  if (a3 >= 8)
  {
    v4 = [NSString stringWithFormat:@"Unknown result: %d", a3];
  }

  else
  {
    v4 = off_1000FF860[a3];
  }

  return v4;
}

- (id)_errorStringForDownloadResult:(int64_t)a3
{
  if (a3 >= 0x24)
  {
    v4 = [NSString stringWithFormat:@"Unknown result: %d", a3];
  }

  else
  {
    v4 = off_1000FF8A0[a3];
  }

  return v4;
}

- (id)_errorStringForQueryResult:(int64_t)a3
{
  if (a3 < 0xD && ((0x17FFu >> a3) & 1) != 0)
  {
    v4 = off_1000FF9C0[a3];
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Unknown result: %d", a3];
  }

  return v4;
}

- (id)_errorStringForPurgeResult:(int64_t)a3
{
  if (a3 >= 0xC)
  {
    v4 = [NSString stringWithFormat:@"Unknown result: %d", a3];
  }

  else
  {
    v4 = off_1000FFA28[a3];
  }

  return v4;
}

- (id)_stateStringForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 state];
  if (v4 >= 7)
  {
    v5 = [NSString stringWithFormat:@"Unknown state: %@", v3];
  }

  else
  {
    v5 = off_1000FFA88[v4];
  }

  return v5;
}

- (id)_errorStringForMAOperationResult:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"successful";
  }

  else
  {
    return off_1000FFAC0[a3 - 1];
  }
}

@end
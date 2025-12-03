@interface RDAssetManager
+ (id)_assetQueryForLanguage:(id)language;
+ (id)sharedInstance;
- (BOOL)_startedDownloadingEmbeddedSpeechAsset:(id)asset withUrgency:(BOOL)urgency error:(id *)error;
- (BOOL)sendCallback;
- (RDAssetManager)init;
- (id)_errorStringForCancelDownloadResult:(int64_t)result;
- (id)_errorStringForDownloadResult:(int64_t)result;
- (id)_errorStringForMAOperationResult:(int64_t)result;
- (id)_errorStringForPurgeResult:(int64_t)result;
- (id)_errorStringForQueryResult:(int64_t)result;
- (id)_installedAssetForLanguage:(id)language error:(id *)error;
- (id)_installedAssetFromFoundAssets:(id)assets language:(id)language error:(id *)error;
- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error;
- (id)_stateStringForAsset:(id)asset;
- (id)copyInstallationStatusForLangaugesWithError:(id *)error;
- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledQuasarModelPathForLanguage:(id)language error:(id *)error;
- (id)purgeInstalledAssetsWithError:(id *)error;
- (id)queryAndCopyInstallationStatusForLangaugesWithError:(id *)error;
- (void)_cancelDownloadForLangaugeWithError:(id)error withError:(id *)withError;
- (void)_fetchRemoteAssetForLanguage:(id)language;
- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)language downloadPhase:(__CFString *)phase timeRemaining:(float)remaining bytesWritten:(float)written bytesTotal:(float)total error:(id)error;
- (void)addPeerForCallback:(id)callback;
- (void)cancelDownloadForLanguage:(id)language error:(id *)error;
- (void)kickCatalogDownloadWithUrgency:(BOOL)urgency;
- (void)removePeerFromCallback:(id)callback;
- (void)sendMessageToClient:(__CFDictionary *)client;
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

- (void)kickCatalogDownloadWithUrgency:(BOOL)urgency
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004349C;
  v4[3] = &unk_1000FF710;
  urgencyCopy = urgency;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (id)copyInstallationStatusForLangaugesWithError:(id *)error
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
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)queryAndCopyInstallationStatusForLangaugesWithError:(id *)error
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
  queryMetaDataSync = [v6 queryMetaDataSync];
  v8 = RXOSLog();
  v9 = v8;
  if (queryMetaDataSync)
  {
    if (queryMetaDataSync == 2)
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
        v43 = [(RDAssetManager *)self _errorStringForQueryResult:queryMetaDataSync];
        *buf = 138412290;
        v58 = v43;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MobileAsset query failed : error = %@", buf, 0xCu);
      }

      if (error)
      {
        v63 = @"MAQueryResult";
        v44 = [(RDAssetManager *)self _errorStringForQueryResult:queryMetaDataSync];
        v64 = v44;
        v45 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        *error = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v45];
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
  results = [v6 results];
  v12 = +[NSMutableDictionary dictionary];
  v48 = results;
  if (results)
  {
    v47 = v6;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v13 = results;
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
        _es_language = [v18 _es_language];
        _es_quasarDir = [v12 objectForKey:_es_language];
        if ([_es_quasarDir hasPrefix:@"Version:"])
        {
          goto LABEL_21;
        }

        _es_quasarModelPath = [v12 objectForKey:_es_language];
        if ([_es_quasarModelPath isEqualToString:@"Installing"])
        {
          goto LABEL_20;
        }

        v22 = [_es_quasarModelPath isEqualToString:@"Waiting to Install"];

        if ((v22 & 1) == 0)
        {
          _es_status = [v18 _es_status];
          if (_es_status <= 1)
          {
            if (_es_status)
            {
              if (_es_status != 1)
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

          else if (_es_status == 2)
          {
            v24 = @"Waiting to Install";
          }

          else
          {
            v24 = @"Installing";
            if (_es_status != 3)
            {
              if (_es_status == 4)
              {
                _es_quasarDir = [v18 _es_quasarDir];
                _es_quasarModelPath = [v18 _es_quasarModelPath];
                if ([v18 _es_isCompatibleWithThisDevice] && sub_100044290(_es_quasarModelPath))
                {
                  v25 = [NSString stringWithFormat:@"Version: %@", _es_quasarDir];
                  [v12 setObject:v25 forKey:_es_language];
                }

                else
                {
                  [v12 setObject:@"Not Supported" forKey:_es_language];
                }

LABEL_20:

LABEL_21:
                goto LABEL_22;
              }

LABEL_37:
              v24 = @"Unknown";
            }
          }

          [v12 setObject:v24 forKey:_es_language];
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

- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  v7 = [RDAssetManager _assetQueryForLanguage:0];
  [v7 returnTypes:1];
  queryMetaDataSync = [v7 queryMetaDataSync];
  if (!queryMetaDataSync)
  {
    results = [v7 results];
    v12 = results;
    if (!results)
    {
      _es_quasarModelPath = 0;
LABEL_29:

      goto LABEL_30;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = results;
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
          _es_language = [v20 _es_language];
          _es_status = [v20 _es_status];
          if ([_es_language isEqualToString:errorCopy])
          {
            v23 = _es_status == 4;
          }

          else
          {
            v23 = 0;
          }

          if (v23)
          {
            _es_quasarModelPath = [v20 _es_quasarModelPath];
            if ([v20 _es_isCompatibleWithThisDevice] && (sub_100044290(_es_quasarModelPath) & 1) != 0)
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

    _es_quasarModelPath = 0;
LABEL_27:
    v12 = v13;
LABEL_28:

    goto LABEL_29;
  }

  v9 = queryMetaDataSync;
  if (queryMetaDataSync != 2)
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
      *a4 = _es_quasarModelPath = 0;
      goto LABEL_28;
    }
  }

  _es_quasarModelPath = 0;
LABEL_30:

  return _es_quasarModelPath;
}

- (void)cancelDownloadForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    v8 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

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
    if (error)
    {
      *error = *(v17 + 5);
      v11 = RXOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *error;
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

- (void)_cancelDownloadForLangaugeWithError:(id)error withError:(id *)withError
{
  errorCopy = error;
  v7 = [RDAssetManager _assetQueryForLanguage:errorCopy];
  [v7 returnTypes:4];
  queryMetaDataSync = [v7 queryMetaDataSync];
  if (!queryMetaDataSync)
  {
    results = [v7 results];
    v16 = results;
    if (results)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v19 = [results countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v31 = v7;
        v32 = errorCopy;
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
              cancelDownloadSync = [v23 cancelDownloadSync];
              if (cancelDownloadSync)
              {
                v25 = @"CancelFailed";
              }

              else
              {
                v25 = @"Cancelled";
              }

              if ([(RDAssetManager *)self sendCallback])
              {
                _es_language = [v23 _es_language];
                v27 = [(RDAssetManager *)self _errorStringForCancelDownloadResult:cancelDownloadSync];
                LODWORD(v28) = -1.0;
                LODWORD(v29) = -1.0;
                LODWORD(v30) = -1.0;
                [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:_es_language downloadPhase:v25 timeRemaining:v27 bytesWritten:v28 bytesTotal:v29 error:v30];
              }

              CFRelease(v25);
            }
          }

          v20 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v20);
        v7 = v31;
        errorCopy = v32;
      }
    }

    goto LABEL_24;
  }

  v9 = queryMetaDataSync;
  v10 = RXOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
    *buf = 138412290;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MobileAsset query failed : error = %@", buf, 0xCu);
  }

  if (withError)
  {
    if ([(RDAssetManager *)self sendCallback])
    {
      v12 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
      LODWORD(v13) = -1.0;
      LODWORD(v14) = -1.0;
      LODWORD(v15) = -1.0;
      [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:errorCopy downloadPhase:@"CancelFailed" timeRemaining:v12 bytesWritten:v13 bytesTotal:v14 error:v15];
    }

    v38 = @"MAQueryResult";
    v16 = [(RDAssetManager *)self _errorStringForQueryResult:v9];
    v39 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    *withError = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:103 userInfo:v17];

LABEL_24:
  }
}

- (id)copyInstalledQuasarModelPathForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    v8 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

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
    selfCopy = self;
    v10 = v8;
    v20 = v10;
    v21 = buf;
    v22 = &v23;
    dispatch_sync(queue, &v15);
    v11 = v30;
    v12 = *(v30 + 5);
    if (error && !v12)
    {
      *error = v24[5];
      v11 = v30;
      v12 = *(v30 + 5);
    }

    if (v12)
    {
      if (error)
      {
        *error = 0;
        v12 = *(v11 + 5);
      }

      error = v12;
    }

    else if (error)
    {
      v35 = NSLocalizedFailureReasonErrorKey;
      v36 = @"No models installed yet";
      selfCopy = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1, v15, v16, v17, v18, selfCopy];
      *error = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:selfCopy];

      error = 0;
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

    error = 0;
  }

  return error;
}

- (void)_fetchRemoteAssetForLanguage:(id)language
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [RDAssetManager _assetQueryForLanguage:languageCopy];
  [v5 returnTypes:2];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045358;
  v8[3] = &unk_1000FF788;
  v8[4] = self;
  v9 = v5;
  v10 = languageCopy;
  v6 = languageCopy;
  v7 = v5;
  [v7 queryMetaData:v8];
}

- (id)_installedAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  if (languageCopy)
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

    v12 = [(RDAssetManager *)self _installedLocalAssetForLanguage:languageCopy error:error];
    _es_isInstalled = [v12 _es_isInstalled];
    v14 = [v11 containsObject:languageCopy];
    if (_es_isInstalled)
    {
      if ((v14 & 1) == 0)
      {
        v15 = [v11 arrayByAddingObject:languageCopy];
        v16 = RXOSLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v15 componentsJoinedByString:{@", "}];
          v24 = 138412546;
          v25 = languageCopy;
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
      [v19 removeObject:languageCopy];
      v20 = RXOSLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 componentsJoinedByString:{@", "}];
        v24 = 138412546;
        v25 = languageCopy;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Previously installed offline language (%@) removed; installed list is now: [%@]", &v24, 0x16u);
      }

      [v7 setObject:v19 forKey:@"InstalledLanguages"];
      [v7 synchronize];
    }

    if ([v12 _es_isDownloading])
    {
      if (!error)
      {
        v18 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v22 = [(RDAssetManager *)self _startedDownloadingEmbeddedSpeechAsset:v12 withUrgency:1 error:error];
      v18 = 0;
      if (!error || (v22 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
    *error = v18 = 0;
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

- (id)_installedAssetFromFoundAssets:(id)assets language:(id)language error:(id *)error
{
  errorCopy = error;
  assetsCopy = assets;
  languageCopy = language;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_queue);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = assetsCopy;
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
            cancelDownloadSync = [v23 cancelDownloadSync];
            if (!cancelDownloadSync)
            {
              continue;
            }

            v26 = cancelDownloadSync;
            v27 = RXOSLog();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              _es_description = [v23 _es_description];
              v29 = [(RDAssetManager *)selfCopy _errorStringForCancelDownloadResult:v26];
              *buf = 138412546;
              v57 = _es_description;
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
            purgeSync = [v23 purgeSync];
            if (purgeSync)
            {
              v33 = purgeSync;
              v27 = RXOSLog();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                _es_description = [v23 _es_description];
                v29 = [(RDAssetManager *)selfCopy _errorStringForPurgeResult:v33];
                *buf = 138412546;
                v57 = _es_description;
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
    _es_description2 = [v12 _es_description];
    *buf = 134218498;
    v57 = v35;
    v58 = 2112;
    v59 = languageCopy;
    v60 = 2112;
    v61 = _es_description2;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found %lu asset(s) for %@, with latest being (%@)", buf, 0x20u);
  }

  v37 = errorCopy;
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

    if ([(RDAssetManager *)selfCopy _startedDownloadingEmbeddedSpeechAsset:v12 withUrgency:v11 == 0 error:errorCopy])
    {
      if (errorCopy)
      {
        *errorCopy = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
      }
    }

    else if (errorCopy)
    {
      v39 = *errorCopy;
      if (*errorCopy)
      {
        v54 = NSUnderlyingErrorKey;
        v55 = v39;
        v40 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      }

      else
      {
        v40 = 0;
      }

      *v37 = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v40, errorCopy];
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

- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_queue);
  v7 = RXOSLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = languageCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = [RDAssetManager _assetQueryForLanguage:languageCopy];
  [v8 returnTypes:2];
  [v8 setDoNotBlockOnNetworkStatus:1];
  [v8 setDoNotBlockBeforeFirstUnlock:1];
  queryMetaDataSync = [v8 queryMetaDataSync];
  if (!queryMetaDataSync)
  {
    results = [v8 results];
    v14 = results;
    if (results)
    {
      if ([results count])
      {
        v25 = 0;
        v17 = [(RDAssetManager *)self _installedAssetFromFoundAssets:v14 language:languageCopy error:&v25];
        v18 = v25;
        v19 = v18;
        if (error && !v17)
        {
          v20 = v18;
          *error = v19;
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
        v27 = languageCopy;
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

  v10 = queryMetaDataSync;
  v11 = RXOSLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [(RDAssetManager *)self _errorStringForQueryResult:v10];
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MobileAsset is having trouble with queryMetaDataSync: %@", buf, 0xCu);
  }

  if (!error)
  {
    v15 = 0;
    goto LABEL_22;
  }

  v30 = @"MAQueryResult";
  v13 = [(RDAssetManager *)self _errorStringForQueryResult:v10];
  v31 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:101 userInfo:v14];
  *error = v15 = 0;
LABEL_21:

LABEL_22:

  return v15;
}

+ (id)_assetQueryForLanguage:(id)language
{
  languageCopy = language;
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = languageCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@", &v8, 0xCu);
  }

  v5 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.EmbeddedSpeech"];
  v6 = v5;
  if (languageCopy)
  {
    [v5 addKeyValuePair:@"Language" with:languageCopy];
  }

  return v6;
}

- (BOOL)_startedDownloadingEmbeddedSpeechAsset:(id)asset withUrgency:(BOOL)urgency error:(id *)error
{
  urgencyCopy = urgency;
  assetCopy = asset;
  dispatch_assert_queue_V2(self->_queue);
  v9 = RXOSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _es_description = [assetCopy _es_description];
    *buf = 138412290;
    v41 = _es_description;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Downloading %@", buf, 0xCu);
  }

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000467E4;
  v38[3] = &unk_1000FF7B0;
  v38[4] = self;
  v11 = assetCopy;
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

  state = [v11 state];
  v16 = state;
  if (state > 2)
  {
    if (state == 3)
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
      selfCopy = self;
      v18 = v33;
      [v11 purge:v32];

      goto LABEL_25;
    }

    if (state == 4)
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

  if (state == 1)
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
      v21 = sub_1000436DC(urgencyCopy);
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
        _es_language = [v11 _es_language];
        LODWORD(v29) = -1.0;
        LODWORD(v30) = -1.0;
        LODWORD(v31) = -1.0;
        [(RDAssetManager *)self _sendDownloadCallbackDictionaryWithLanguage:_es_language downloadPhase:@"DownloadFailed" timeRemaining:@"Not enough space" bytesWritten:v29 bytesTotal:v30 error:v31];
      }
    }

    goto LABEL_27;
  }

  if (state != 2)
  {
    goto LABEL_16;
  }

LABEL_26:
  v13 = 0;
  v14 = 0;
LABEL_27:
  if (error)
  {
    v23 = v13;
    *error = v13;
  }

  v24 = RXOSLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    state2 = [v11 state];
    *buf = 134218498;
    if (v14)
    {
      v26 = 0;
    }

    else
    {
      v26 = v13;
    }

    v41 = state2;
    v42 = 1024;
    v43 = v14;
    v44 = 2112;
    v45 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Asset download state=%ld, success=%d, error=%@", buf, 0x1Cu);
  }

LABEL_35:
  return v14;
}

- (id)purgeInstalledAssetsWithError:(id *)error
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
  v4 = sub_100046CDC(error, v7);
  if (error)
  {
    v5 = v9[5];
    if (v5)
    {
      *error = v5;
    }
  }

  _Block_object_dispose(&v8, 8);

  return v4;
}

- (void)addPeerForCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress addObject:callbackCopy];

  objc_sync_exit(v4);
}

- (void)removePeerFromCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress removeObject:callbackCopy];

  objc_sync_exit(v4);
}

- (BOOL)sendCallback
{
  v3 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v3);
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  v5 = [peersRequestingDownloadProgress count] != 0;

  objc_sync_exit(v3);
  return v5;
}

- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)language downloadPhase:(__CFString *)phase timeRemaining:(float)remaining bytesWritten:(float)written bytesTotal:(float)total error:(id)error
{
  languageCopy = language;
  writtenCopy = written;
  valuePtr = remaining;
  totalCopy = total;
  errorCopy = error;
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v15 = Mutable;
    theString2 = languageCopy;
    if (languageCopy)
    {
      CFArrayAppendValue(Mutable, languageCopy);
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

        CFDictionaryAddValue(v30, @"Phase", phase);
        v32 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
        CFDictionaryAddValue(v30, @"TimeRemaining", v32);
        CFRelease(v32);
        v33 = CFNumberCreate(0, kCFNumberFloatType, &writtenCopy);
        CFDictionaryAddValue(v30, @"BytesWritten", v33);
        CFRelease(v33);
        v34 = CFNumberCreate(0, kCFNumberFloatType, &totalCopy);
        CFDictionaryAddValue(v30, @"BytesTotal", v34);
        CFRelease(v34);
        if (errorCopy)
        {
          v35 = CFStringCreateCopy(0, errorCopy);
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
    languageCopy = theString2;
  }
}

- (void)sendMessageToClient:(__CFDictionary *)client
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
  peersRequestingDownloadProgress = [(RDAssetManager *)self peersRequestingDownloadProgress];
  v8 = [peersRequestingDownloadProgress countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(peersRequestingDownloadProgress);
        }

        xpc_connection_send_message(*(*(&v11 + 1) + 8 * v10), v4);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [peersRequestingDownloadProgress countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
}

- (id)_errorStringForCancelDownloadResult:(int64_t)result
{
  if (result >= 8)
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  else
  {
    result = off_1000FF860[result];
  }

  return result;
}

- (id)_errorStringForDownloadResult:(int64_t)result
{
  if (result >= 0x24)
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  else
  {
    result = off_1000FF8A0[result];
  }

  return result;
}

- (id)_errorStringForQueryResult:(int64_t)result
{
  if (result < 0xD && ((0x17FFu >> result) & 1) != 0)
  {
    result = off_1000FF9C0[result];
  }

  else
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  return result;
}

- (id)_errorStringForPurgeResult:(int64_t)result
{
  if (result >= 0xC)
  {
    result = [NSString stringWithFormat:@"Unknown result: %d", result];
  }

  else
  {
    result = off_1000FFA28[result];
  }

  return result;
}

- (id)_stateStringForAsset:(id)asset
{
  assetCopy = asset;
  state = [assetCopy state];
  if (state >= 7)
  {
    assetCopy = [NSString stringWithFormat:@"Unknown state: %@", assetCopy];
  }

  else
  {
    assetCopy = off_1000FFA88[state];
  }

  return assetCopy;
}

- (id)_errorStringForMAOperationResult:(int64_t)result
{
  if ((result - 1) > 4)
  {
    return @"successful";
  }

  else
  {
    return off_1000FFAC0[result - 1];
  }
}

@end
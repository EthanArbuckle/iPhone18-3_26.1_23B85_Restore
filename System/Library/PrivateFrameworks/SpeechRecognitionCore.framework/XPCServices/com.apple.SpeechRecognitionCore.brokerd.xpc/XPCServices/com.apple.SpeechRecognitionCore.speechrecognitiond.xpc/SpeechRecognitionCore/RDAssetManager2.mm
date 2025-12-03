@interface RDAssetManager2
+ (id)sharedInstance;
- (BOOL)_isActiveDownloadForLanguage:(id)language downloadId:(int)id;
- (BOOL)_isDownloadingForLanguage:(id)language;
- (BOOL)_isDownloadingStalledForLanguage:(id)language;
- (BOOL)_sendCallback;
- (BOOL)_startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:(id)language error:(id *)error;
- (RDAssetManager2)init;
- (id)_assetPathForLanguage:(id)language error:(id *)error;
- (id)_downloadStatusDescription;
- (id)_installedAssetForLanguage:(id)language error:(id *)error;
- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error;
- (id)_languagesWithDownloadAttempts;
- (id)_queryAndCopyInstallationStatusForLanguagesWithError:(id *)error;
- (id)copyInstallationStatusForLangaugesWithError:(id *)error;
- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledAssetPropertiesForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledAssetSupportedTasksForLangaugeWithError:(id)error error:(id *)a4;
- (id)copyInstalledQuasarModelPathForLanguage:(id)language error:(id *)error;
- (id)supportedLanguagesForVoiceControl;
- (int)_startDownloadForLanguage:(id)language;
- (void)_cancelDownloadForLanguageWithError:(id)error withError:(id *)withError;
- (void)_endAllDownloadsForLanguage:(id)language;
- (void)_resumeStalledDownloadForLanguage:(id)language;
- (void)_sendDownloadCallbackDictionaryWithLanguage:(id)language downloadPhase:(__CFString *)phase timeRemaining:(float)remaining bytesWritten:(float)written bytesTotal:(float)total error:(id)error;
- (void)_sendMessageToClient:(__CFDictionary *)client;
- (void)_stalledDownloadForLanguage:(id)language;
- (void)addPeerForCallback:(id)callback;
- (void)cancelDownloadForLanguage:(id)language error:(id *)error;
- (void)removePeerFromCallback:(id)callback;
- (void)setPurgeabilityForLanguages:(id)languages withPurgeability:(BOOL)purgeability error:(id *)error;
@end

@implementation RDAssetManager2

+ (id)sharedInstance
{
  if (qword_10010E548 != -1)
  {
    sub_1000C9384();
  }

  v3 = qword_10010E540;

  return v3;
}

- (RDAssetManager2)init
{
  v16.receiver = self;
  v16.super_class = RDAssetManager2;
  v2 = [(RDAssetManager2 *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.embeddedspeech.RDAssetManager2", 0);
    mainWorkQueue = v2->_mainWorkQueue;
    v2->_mainWorkQueue = v3;

    v5 = dispatch_queue_create("com.apple.embeddedspeech.RDAssetManager2.second", 0);
    secondWorkQueue = v2->_secondWorkQueue;
    v2->_secondWorkQueue = v5;

    v7 = +[NSMutableDictionary dictionary];
    downloadsStarted = v2->_downloadsStarted;
    v2->_downloadsStarted = v7;

    v9 = +[NSMutableDictionary dictionary];
    downloadsStalled = v2->_downloadsStalled;
    v2->_downloadsStalled = v9;

    v11 = +[NSMutableDictionary dictionary];
    downloadsEnded = v2->_downloadsEnded;
    v2->_downloadsEnded = v11;

    v13 = +[NSMutableArray array];
    peersRequestingDownloadProgress = v2->_peersRequestingDownloadProgress;
    v2->_peersRequestingDownloadProgress = v13;
  }

  return v2;
}

- (id)_downloadStatusDescription
{
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  v3 = *&self->_downloadsStarted;
  return [NSString stringWithFormat:@"downloadsStarted=%@, downloadsStalled=%@, downloadsEnded=%@ _cachedInstallationStatus=%d", self->_downloadsStarted, self->_downloadsStalled, self->_downloadsEnded, self->_cachedInstallationStatus != 0];
}

- (int)_startDownloadForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    v6 = [v5 intValue] + 1;

    v7 = [NSNumber numberWithInt:v6];
    [(NSMutableDictionary *)self->_downloadsStarted setObject:v7 forKeyedSubscript:languageCopy];

    v8 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v8 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "nil language", v12, 2u);
    }

    LODWORD(v6) = 0;
  }

  return v6;
}

- (void)_stalledDownloadForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    intValue = [v5 intValue];
    v7 = [(NSMutableDictionary *)self->_downloadsEnded objectForKeyedSubscript:languageCopy];
    v8 = intValue - [v7 intValue];

    v9 = [NSNumber numberWithInt:v8];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v9 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "nil language", v12, 2u);
    }
  }
}

- (void)_resumeStalledDownloadForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v5 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "nil language", v8, 2u);
    }
  }
}

- (void)_endAllDownloadsForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 intValue]);
    [(NSMutableDictionary *)self->_downloadsEnded setObject:v6 forKeyedSubscript:languageCopy];

    v7 = [NSNumber numberWithInt:0];
    [(NSMutableDictionary *)self->_downloadsStalled setObject:v7 forKeyedSubscript:languageCopy];

    cachedInstallationStatus = self->_cachedInstallationStatus;
    self->_cachedInstallationStatus = 0;
  }

  else
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v10, 2u);
    }
  }
}

- (BOOL)_isDownloadingForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
    intValue = [v5 intValue];
    v7 = [(NSMutableDictionary *)self->_downloadsEnded objectForKeyedSubscript:languageCopy];
    v8 = intValue > [v7 intValue];
  }

  else
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_isDownloadingStalledForLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    dispatch_assert_queue_V2(self->_mainWorkQueue);
    v5 = [(NSMutableDictionary *)self->_downloadsStalled objectForKeyedSubscript:languageCopy];
    v6 = [v5 intValue] > 0;
  }

  else
  {
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "nil language", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_isActiveDownloadForLanguage:(id)language downloadId:(int)id
{
  languageCopy = language;
  if (!languageCopy)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v11, 2u);
    }

    goto LABEL_7;
  }

  dispatch_assert_queue_V2(self->_mainWorkQueue);
  if (![(RDAssetManager2 *)self _isDownloadingForLanguage:languageCopy])
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [(NSMutableDictionary *)self->_downloadsStarted objectForKeyedSubscript:languageCopy];
  v8 = [v7 intValue] == id;

LABEL_8:
  return v8;
}

- (id)_languagesWithDownloadAttempts
{
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  downloadsStarted = self->_downloadsStarted;

  return [(NSMutableDictionary *)downloadsStarted allKeys];
}

- (id)copyInstallationStatusForLangaugesWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003F370;
  v18 = sub_10003F380;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003F370;
  v12 = sub_10003F380;
  v13 = 0;
  mainWorkQueue = self->_mainWorkQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F388;
  block[3] = &unk_1000FF4A8;
  block[4] = self;
  block[5] = &v14;
  block[6] = &v8;
  dispatch_sync(mainWorkQueue, block);
  if (error)
  {
    *error = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (id)supportedLanguagesForVoiceControl
{
  v2 = dispatch_time(0, 10000000000);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10003F370;
  v15 = sub_10003F380;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003F60C;
  v8[3] = &unk_1000FF4D0;
  v10 = &v11;
  v3 = dispatch_semaphore_create(0);
  v9 = v3;
  [SFSpeechAssetManager supportedLanguagesForTaskHint:1005 completion:v8];
  dispatch_semaphore_wait(v3, v2);
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v12[5];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "supportedLanguagesForVoiceControl = %@", buf, 0xCu);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_queryAndCopyInstallationStatusForLanguagesWithError:(id *)error
{
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5 - self->_lastInstallationStatusFetch;

  if (self->_cachedInstallationStatus)
  {
    v7 = v6 > 1.0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12 = RXOSLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v82 = 134217984;
      *&v82[4] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Too early since last installation status fetch (%f sec ago). Returning cached copy.", v82, 0xCu);
    }

    v11 = [(NSMutableDictionary *)self->_cachedInstallationStatus copy];
    goto LABEL_40;
  }

  *v82 = 0;
  *&v82[8] = v82;
  *&v82[16] = 0x3032000000;
  v83 = sub_10003F370;
  v84 = sub_10003F380;
  v85 = 0;
  v8 = dispatch_time(0, 10000000000);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10003FE08;
  v72[3] = &unk_1000FF4F8;
  v74 = v82;
  v9 = dispatch_semaphore_create(0);
  v73 = v9;
  [SFSpeechAssetManager installedLanguagesWithCompletion:v72];
  v57 = v9;
  if (dispatch_semaphore_wait(v9, v8))
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Timed out waiting to get InstalledAssetLanguages. Returning cached copy.", buf, 2u);
    }

    v11 = [(NSMutableDictionary *)self->_cachedInstallationStatus copy];
    goto LABEL_39;
  }

  v11 = +[NSMutableDictionary dictionary];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v14 = *(*&v82[8] + 40);
  v15 = [v14 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = *v69;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v69 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v68 + 1) + 8 * i);
      v19 = [(RDAssetManager2 *)self _assetPathForLanguage:v18 error:error];
      if ([v19 length])
      {
        v67 = 0;
        v20 = sub_10004274C(v19, &v67, @"DictationCC");
        v21 = v67;
        if (v20)
        {
          v22 = [NSString stringWithFormat:@"Version: %@", v21];
          [v11 setObject:v22 forKey:v18];

          goto LABEL_23;
        }
      }

      else
      {
        v21 = 0;
      }

      [v11 setObject:@"Not Supported" forKey:v18];
LABEL_23:
    }

    v15 = [v14 countByEnumeratingWithState:&v68 objects:v81 count:16];
  }

  while (v15);
LABEL_25:

  v23 = RXOSLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    _downloadStatusDescription = [(RDAssetManager2 *)self _downloadStatusDescription];
    v25 = *(*&v82[8] + 40);
    *buf = 138412546;
    v78 = _downloadStatusDescription;
    v79 = 2112;
    v80 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "querying, %@, installedAssetLanguages=%@", buf, 0x16u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  _languagesWithDownloadAttempts = [(RDAssetManager2 *)self _languagesWithDownloadAttempts];
  v27 = [_languagesWithDownloadAttempts countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v27)
  {
    v28 = *v64;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v64 != v28)
        {
          objc_enumerationMutation(_languagesWithDownloadAttempts);
        }

        v30 = *(*(&v63 + 1) + 8 * j);
        v31 = [v11 objectForKey:v30];
        v32 = [v31 hasPrefix:@"Version:"];

        if ((v32 & 1) == 0)
        {
          v33 = [(RDAssetManager2 *)self _isDownloadingStalledForLanguage:v30];
          v34 = @"Stalled";
          if ((v33 & 1) != 0 || (v35 = [(RDAssetManager2 *)self _isDownloadingForLanguage:v30], v34 = @"Installing", v35))
          {
            [v11 setObject:v34 forKey:v30];
          }
        }
      }

      v27 = [_languagesWithDownloadAttempts countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v27);
  }

  v36 = [v11 copy];
  cachedInstallationStatus = self->_cachedInstallationStatus;
  self->_cachedInstallationStatus = v36;

  v38 = +[NSDate date];
  [v38 timeIntervalSinceReferenceDate];
  self->_lastInstallationStatusFetch = v39;

LABEL_39:
  _Block_object_dispose(v82, 8);

LABEL_40:
  v40 = +[NSUserDefaults standardUserDefaults];
  v41 = [v40 stringArrayForKey:@"InstalledLanguages"];
  v42 = v41;
  v43 = &__NSArray0__struct;
  if (v41)
  {
    v43 = v41;
  }

  v44 = v43;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v45 = v44;
  v46 = [v45 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v46)
  {
    v47 = 0;
    v48 = *v60;
    do
    {
      for (k = 0; k != v46; k = k + 1)
      {
        if (*v60 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v59 + 1) + 8 * k);
        v51 = [v11 objectForKey:v50];
        v52 = v51 == 0;

        if (v52)
        {
          if (!v47)
          {
            v47 = [v45 mutableCopy];
          }

          [v47 removeObject:v50];
        }
      }

      v46 = [v45 countByEnumeratingWithState:&v59 objects:v75 count:16];
    }

    while (v46);

    if (v47)
    {
      v53 = RXOSLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [v45 componentsJoinedByString:{@", "}];
        v55 = [v47 componentsJoinedByString:{@", "}];
        *v82 = 138412546;
        *&v82[4] = v54;
        *&v82[12] = 2112;
        *&v82[14] = v55;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Previously installed offline language(s) removed; installed list: [%@] -> [%@]", v82, 0x16u);
      }

      [v40 setObject:v47 forKey:@"InstalledLanguages"];
      [v40 synchronize];
    }
  }

  else
  {

    v47 = 0;
  }

  return v11;
}

- (id)copyInstalledAssetPropertiesForLangaugeWithError:(id)error error:(id *)a4
{
  errorCopy = error;
  if (!errorCopy)
  {
    v9 = RXOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "nil language", v13, 2u);
    }

    goto LABEL_10;
  }

  v7 = +[SFSpeechAssetManager installedLanguages];
  v8 = [v7 containsObject:errorCopy];

  if (!v8)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v9 = [(RDAssetManager2 *)self _assetPathForLanguage:errorCopy error:a4];
  if (![v9 length]|| !sub_10004274C(v9, 0, @"DictationCC"))
  {
LABEL_10:

    goto LABEL_11;
  }

  v10 = objc_opt_new();
  [v10 setObject:v9 forKey:@"Asset Path"];
  v11 = +[NSMutableArray array];
  [v11 addObject:@"DictationCC"];
  if (sub_10004274C(v9, 0, @"SpellCC"))
  {
    [v11 addObject:@"SpellCC"];
  }

  [v10 setObject:v11 forKey:@"Asset Supported Tasks"];

LABEL_12:
  return v10;
}

- (id)copyInstalledAssetPathForLangaugeWithError:(id)error error:(id *)a4
{
  if (error)
  {
    v4 = [(RDAssetManager2 *)self copyInstalledAssetPropertiesForLangaugeWithError:error error:a4];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:@"Asset Path"];
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "nil language", v10, 2u);
    }

    return 0;
  }

  return v7;
}

- (id)copyInstalledAssetSupportedTasksForLangaugeWithError:(id)error error:(id *)a4
{
  if (error)
  {
    v4 = [(RDAssetManager2 *)self copyInstalledAssetPropertiesForLangaugeWithError:error error:a4];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:@"Asset Supported Tasks"];
      v7 = [v6 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = RXOSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "nil language", v10, 2u);
    }

    return 0;
  }

  return v7;
}

- (void)cancelDownloadForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  if (languageCopy)
  {
    v7 = languageCopy;
    v8 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    *buf = 0;
    v15 = buf;
    v16 = 0x3032000000;
    v17 = sub_10003F370;
    v18 = sub_10003F380;
    v19 = 0;
    mainWorkQueue = self->_mainWorkQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000402D0;
    block[3] = &unk_1000FF520;
    block[4] = self;
    v10 = v8;
    v12 = v10;
    v13 = buf;
    dispatch_sync(mainWorkQueue, block);
    if (error)
    {
      *error = *(v15 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "nil language", buf, 2u);
    }
  }
}

- (void)_cancelDownloadForLanguageWithError:(id)error withError:(id *)withError
{
  errorCopy = error;
  v6 = RXOSLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (v7)
    {
      _downloadStatusDescription = [(RDAssetManager2 *)self _downloadStatusDescription];
      *buf = 138412546;
      v21 = errorCopy;
      v22 = 2112;
      v23 = _downloadStatusDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling asset, language=%@, %@", buf, 0x16u);
    }

    if ([(RDAssetManager2 *)self _isDownloadingForLanguage:errorCopy])
    {
      v9 = +[SFSpeechAssetManager installedLanguages];
      v10 = [v9 containsObject:errorCopy];

      if ((v10 & 1) == 0)
      {
        v19 = 0;
        [SFSpeechAssetManager purgeAssetsForLanguage:errorCopy error:&v19];
        v11 = v19;
        [(RDAssetManager2 *)self _endAllDownloadsForLanguage:errorCopy];
        v12 = RXOSLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          _downloadStatusDescription2 = [(RDAssetManager2 *)self _downloadStatusDescription];
          *buf = 138412802;
          v21 = errorCopy;
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = _downloadStatusDescription2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancelled asset, language=%@ error=%@ %@", buf, 0x20u);
        }
      }

      v14 = @"Cancelled";
      v15 = @"download cancelled successfully";
    }

    else
    {
      v14 = @"CancelFailed";
      v15 = @"was not downloading";
    }

    if ([(RDAssetManager2 *)self _sendCallback])
    {
      LODWORD(v16) = -1.0;
      LODWORD(v17) = -1.0;
      LODWORD(v18) = -1.0;
      [(RDAssetManager2 *)self _sendDownloadCallbackDictionaryWithLanguage:errorCopy downloadPhase:v14 timeRemaining:v15 bytesWritten:v16 bytesTotal:v17 error:v18];
    }

    CFRelease(v14);
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "nil language", buf, 2u);
    }
  }
}

- (void)setPurgeabilityForLanguages:(id)languages withPurgeability:(BOOL)purgeability error:(id *)error
{
  languagesCopy = languages;
  if (languagesCopy)
  {
    purgeabilityCopy = purgeability;
    errorCopy = error;
    v9 = objc_alloc_init(NSMutableSet);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v10 = languagesCopy;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v31 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v12);
    }

    *buf = 0;
    v26 = buf;
    v27 = 0x3032000000;
    v28 = sub_10003F370;
    v29 = sub_10003F380;
    v30 = 0;
    secondWorkQueue = self->_secondWorkQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000407FC;
    block[3] = &unk_1000FF548;
    v24 = purgeabilityCopy;
    v17 = v9;
    v21 = v17;
    v22 = v10;
    v23 = buf;
    dispatch_async(secondWorkQueue, block);
    if (errorCopy)
    {
      *errorCopy = *(v26 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = RXOSLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "nil language", buf, 2u);
    }
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
    v32 = sub_10003F370;
    v33 = sub_10003F380;
    v34 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = sub_10003F370;
    v27 = sub_10003F380;
    v28 = 0;
    mainWorkQueue = self->_mainWorkQueue;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100040BD4;
    v18 = &unk_1000FF570;
    v21 = buf;
    selfCopy = self;
    v10 = v8;
    v20 = v10;
    v22 = &v23;
    dispatch_sync(mainWorkQueue, &v15);
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

- (id)_installedAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_mainWorkQueue);
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

    v12 = [(RDAssetManager2 *)self _installedLocalAssetForLanguage:languageCopy error:error];
    v13 = [v12 length];
    v14 = [v11 containsObject:languageCopy];
    if (v13)
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
    }

    else
    {
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

      v22 = [(RDAssetManager2 *)self _startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:languageCopy error:error];
      v18 = 0;
      if (error && v22)
      {
        [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
        *error = v18 = 0;
      }
    }
  }

  else
  {
    v7 = RXOSLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning no installed asset for nil language", &v24, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (id)_assetPathForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  v6 = dispatch_time(0, 10000000000);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10003F370;
  v24 = sub_10003F380;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003F370;
  v18 = sub_10003F380;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100041180;
  v10[3] = &unk_1000FF5D8;
  v12 = &v14;
  v13 = &v20;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [SFSpeechAssetManager fetchAssetsForLanguage:languageCopy urgent:0 progress:&stru_1000FF5B0 completion:v10];
  dispatch_semaphore_wait(v7, v6);
  if (error)
  {
    *error = v15[5];
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (id)_installedLocalAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  if (languageCopy)
  {
    v7 = +[SFSpeechAssetManager installedLanguages];
    v8 = [v7 containsObject:languageCopy];

    if (v8)
    {
      v9 = [(RDAssetManager2 *)self _assetPathForLanguage:languageCopy error:error];
    }

    else
    {
      v9 = 0;
    }

    v11 = RXOSLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = languageCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found asset for %@: (%@)", &v15, 0x16u);
    }

    if (![v9 length] || (sub_10004274C(v9, 0, @"DictationCC") & 1) == 0)
    {

      v9 = 0;
    }

    if (![v9 length])
    {
      v12 = RXOSLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Starting a download because no compatible asset is installed", &v15, 2u);
      }

      v13 = [(RDAssetManager2 *)self _startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:languageCopy error:error];
      if (error && v13)
      {
        *error = [NSError errorWithDomain:@"kRXAssetDownloadErrorDomain" code:100 userInfo:0];
      }
    }
  }

  else
  {
    v10 = RXOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "nil language", &v15, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)_startedUrgentDownloadingEmbeddedSpeechAssetForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  dispatch_assert_queue_V2(self->_mainWorkQueue);
  if (languageCopy)
  {
    if ([(RDAssetManager2 *)self _isDownloadingForLanguage:languageCopy])
    {
      v6 = RXOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Asset download is already in progress";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      }
    }

    else
    {
      v8 = +[NSDate date];
      v9 = [(RDAssetManager2 *)self _startDownloadForLanguage:languageCopy];
      v10 = RXOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        _downloadStatusDescription = [(RDAssetManager2 *)self _downloadStatusDescription];
        *buf = 138412802;
        v23 = languageCopy;
        v24 = 1024;
        v25 = v9;
        v26 = 2112;
        v27 = _downloadStatusDescription;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Downloading asset, language=%@ downloadId=%d %@", buf, 0x1Cu);
      }

      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10004170C;
      v17[3] = &unk_1000FF628;
      v17[4] = self;
      v18 = languageCopy;
      v19 = v8;
      v20 = v9;
      v21 = 1307470632;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100041AFC;
      v13[3] = &unk_1000FF678;
      v13[4] = self;
      v14 = v18;
      v15 = v9;
      v16 = 1307470632;
      v6 = v8;
      [SFSpeechAssetManager fetchAssetsForLanguage:v14 urgent:1 forceUpgrade:1 detailedProgress:v17 completion:v13];
    }
  }

  else
  {
    v6 = RXOSLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "nil language";
      goto LABEL_7;
    }
  }

  return languageCopy != 0;
}

- (void)addPeerForCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress addObject:callbackCopy];

  objc_sync_exit(v4);
}

- (void)removePeerFromCallback:(id)callback
{
  callbackCopy = callback;
  v4 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v4);
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
  [peersRequestingDownloadProgress removeObject:callbackCopy];

  objc_sync_exit(v4);
}

- (BOOL)_sendCallback
{
  v3 = self->_peersRequestingDownloadProgress;
  objc_sync_enter(v3);
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
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

        [(RDAssetManager2 *)self _sendMessageToClient:v30];
        CFRelease(v30);
      }
    }

    CFRelease(v15);
    languageCopy = theString2;
  }
}

- (void)_sendMessageToClient:(__CFDictionary *)client
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
  peersRequestingDownloadProgress = [(RDAssetManager2 *)self peersRequestingDownloadProgress];
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

@end
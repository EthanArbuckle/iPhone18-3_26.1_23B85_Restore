@interface WLDPlaybackReporter
+ (id)_cachedMetadataByIdentifier;
+ (id)_cachedNotFoundIdentifiers;
+ (int64_t)_intentsMediaItemTypeFromWLKContentType:(unint64_t)a3;
+ (void)_decorateVODSummary:(id)a3 completion:(id)a4;
+ (void)_donateIntentWithPlaybackSummary:(id)a3 andMetadata:(id)a4;
- (WLDPlaybackReporter)initWithSessionID:(id)a3;
- (void)_clearBDTimer;
- (void)_reportPlayEvent:(id)a3 summary:(id)a4 completion:(id)a5;
- (void)_scheduleTimedReportForSummary:(id)a3 afterMillis:(id)a4;
- (void)dealloc;
- (void)getCachedCanonicalIDForSummary:(id)a3 completionHandler:(id)a4;
- (void)reportPlayback:(id)a3 completion:(id)a4;
@end

@implementation WLDPlaybackReporter

- (WLDPlaybackReporter)initWithSessionID:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WLDPlaybackReporter;
  v6 = [(WLDPlaybackReporter *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionID, a3);
  }

  v8 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ init:", buf, 0xCu);
  }

  return v7;
}

- (void)dealloc
{
  v3 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = self->_sessionID;
    *buf = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = sessionID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ dealloc: sessionID: %@", buf, 0x16u);
  }

  [(WLDPlaybackReporter *)self _clearBDTimer];
  v5.receiver = self;
  v5.super_class = WLDPlaybackReporter;
  [(WLDPlaybackReporter *)&v5 dealloc];
}

- (void)reportPlayback:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPlaybackReporter.reportPlayback"];
  transaction = v9->_transaction;
  v9->_transaction = v10;

  objc_storeStrong(&v9->_lastSummary, a3);
  v12 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [WLKPlaybackSummary debugStringForPlaybackState:[(WLKPlaybackSummary *)v9->_lastSummary playbackState]];
    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Begin Transaction: setLastSummary playbackState %@", buf, 0x16u);
  }

  objc_sync_exit(v9);
  [(WLDPlaybackReporter *)v9 _clearBDTimer];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke;
  v16[3] = &unk_100045280;
  v17 = v7;
  v18 = v8;
  v16[4] = v9;
  v14 = v7;
  v15 = v8;
  [v14 resolveChannelID:v16];
}

void __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[5] contentID];
    v8 = [a1[5] duration];
    v9 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:v7 channelID:v5 duration:v8];

    if ([v9 length])
    {
      v10 = a1[4];
      v11 = objc_opt_class();
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke_9;
      v17[3] = &unk_100045258;
      v12 = a1[5];
      v17[4] = a1[4];
      v19 = a1[6];
      v18 = a1[5];
      [v11 _decorateVODSummary:v12 completion:v17];
    }

    else
    {
      v14 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: could not resolve lookupID for %@", buf, 0xCu);
      }

      v15 = [NSString stringWithFormat:@"could not resolve lookupID for %@", v5];
      v16 = WLKError();

      [a1[4] _cleanupWithSuccess:0 error:v16 completion:a1[6]];
    }
  }

  else
  {
    v13 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Failed to resolve channelID %@", buf, 0xCu);
    }

    [a1[4] _cleanupWithSuccess:0 error:v6 completion:a1[6]];
  }
}

void __49__WLDPlaybackReporter_reportPlayback_completion___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = objc_alloc_init(UWLPlayEvent);
    v7 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v37 = 138412802;
      v38 = v8;
      v39 = 2048;
      v40 = v6;
      v41 = 2048;
      v42 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Report playback activity:%p summary:%p", &v37, 0x20u);
    }

    v10 = [*(a1 + 40) bundleID];
    [(UWLPlayEvent *)v6 setBundleId:v10];

    v11 = [*(a1 + 40) externalProfileID];
    [(UWLPlayEvent *)v6 setProfileId:v11];

    [(UWLPlayEvent *)v6 setExternalPlayableId:&stru_100047A18];
    v12 = [*(a1 + 40) elapsedTime];
    [v12 doubleValue];
    [(UWLPlayEvent *)v6 setPlayHeadInMilliseconds:llround(v13 * 1000.0)];

    v14 = [*(a1 + 40) duration];
    [v14 doubleValue];
    [(UWLPlayEvent *)v6 setMediaLengthInMilliseconds:llround(v15 * 1000.0)];

    v16 = +[NSDate date];
    v17 = [*(a1 + 40) timestamp];
    [v16 timeIntervalSinceDate:v17];
    [(UWLPlayEvent *)v6 setMillisecondsSinceEvent:llround(v18 * 1000.0)];

    if ([*(a1 + 40) isTimerDerived])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [(UWLPlayEvent *)v6 setContractOrTimed:v19];
    v20 = objc_alloc_init(UWLSectionInfo);
    v21 = [*(a1 + 40) featureDuration];

    v22 = *(a1 + 40);
    if (v21)
    {
      v23 = [v22 featureDuration];
    }

    else
    {
      v24 = [v22 duration];

      if (!v24)
      {
        goto LABEL_13;
      }

      v23 = [*(a1 + 40) duration];
    }

    v25 = v23;
    [v23 doubleValue];
    [(UWLSectionInfo *)v20 setLengthInMilliseconds:llround(v26 * 1000.0)];

LABEL_13:
    v27 = [*(a1 + 40) featureElapsedTime];

    v28 = *(a1 + 40);
    if (v27)
    {
      v29 = [v28 featureElapsedTime];
    }

    else
    {
      v30 = [v28 elapsedTime];

      if (!v30)
      {
        goto LABEL_18;
      }

      v29 = [*(a1 + 40) elapsedTime];
    }

    v31 = v29;
    [v29 doubleValue];
    [(UWLSectionInfo *)v20 setPlayheadInMilliseconds:llround(v32 * 1000.0)];

LABEL_18:
    v33 = [*(a1 + 40) completionState];
    if (v33 == 1)
    {
      v34 = 0;
    }

    else
    {
      if (v33 != 2)
      {
LABEL_23:
        v35 = [v5 nowPlayingPassThrough];
        [(UWLSectionInfo *)v20 setPassThrough:v35];

        [(UWLPlayEvent *)v6 setMainContentInfo:v20];
        [*(a1 + 32) _reportPlayEvent:v6 summary:*(a1 + 40) completion:*(a1 + 48)];
        v36 = *(a1 + 32);
        [objc_opt_class() _donateIntentWithPlaybackSummary:*(a1 + 40) andMetadata:v5];

        goto LABEL_24;
      }

      v34 = 1;
    }

    [(UWLSectionInfo *)v20 setIsDone:v34];
    goto LABEL_23;
  }

  [*(a1 + 32) _cleanupWithSuccess:0 error:a3 completion:*(a1 + 48)];
LABEL_24:
}

- (void)getCachedCanonicalIDForSummary:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __72__WLDPlaybackReporter_getCachedCanonicalIDForSummary_completionHandler___block_invoke;
  v9[3] = &unk_100044F00;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v7 = v6;
  v8 = v12;
  [v7 resolveChannelID:v9];
}

void __72__WLDPlaybackReporter_getCachedCanonicalIDForSummary_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [*(a1 + 32) duration];
    if (v7)
    {
      v8 = [*(a1 + 32) contentID];
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
      v10 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:v8 channelID:v5 duration:v9];

      if ([v10 length])
      {
        v11 = *(a1 + 40);
        v12 = [objc_opt_class() _cachedMetadataByIdentifier];
        v13 = [v12 objectForKey:v10];

        v14 = WLKPlaybackTrackingLogObject();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = *(a1 + 40);
            v28 = 138412546;
            v29 = v16;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Returning cached metadata for %@.", &v28, 0x16u);
          }

          v17 = *(a1 + 48);
          v18 = [v13 canonicalID];
          (*(v17 + 16))(v17, v18, 0);
        }

        else
        {
          if (v15)
          {
            v26 = *(a1 + 40);
            v28 = 138412546;
            v29 = v26;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Cached metadata not found for %@.", &v28, 0x16u);
          }

          v27 = *(a1 + 48);
          v18 = WLKError();
          (*(v27 + 16))(v27, 0, v18);
        }
      }

      else
      {
        v23 = WLKPlaybackTrackingLogObject();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [*(a1 + 32) bundleID];
          v28 = 138412290;
          v29 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: could not resolve lookupID for %@", &v28, 0xCu);
        }

        v25 = *(a1 + 48);
        v13 = WLKError();
        (*(v25 + 16))(v25, 0, v13);
      }
    }

    else
    {
      v20 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [*(a1 + 32) bundleID];
        v28 = 138412290;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Nil duration found in playback summary for %@", &v28, 0xCu);
      }

      v22 = *(a1 + 48);
      v10 = WLKError();
      (*(v22 + 16))(v22, 0, v10);
    }
  }

  else
  {
    v19 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Failed to resolve channelID %@", &v28, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (id)_cachedMetadataByIdentifier
{
  if (_cachedMetadataByIdentifier___once != -1)
  {
    +[WLDPlaybackReporter _cachedMetadataByIdentifier];
  }

  v3 = _cachedMetadataByIdentifier___cachedMetadataByIdentifier;

  return v3;
}

void __50__WLDPlaybackReporter__cachedMetadataByIdentifier__block_invoke(id a1)
{
  v1 = objc_alloc_init(WLKCache);
  v2 = _cachedMetadataByIdentifier___cachedMetadataByIdentifier;
  _cachedMetadataByIdentifier___cachedMetadataByIdentifier = v1;

  v3 = _cachedMetadataByIdentifier___cachedMetadataByIdentifier;

  [v3 setCountLimit:5];
}

+ (id)_cachedNotFoundIdentifiers
{
  if (_cachedNotFoundIdentifiers___once != -1)
  {
    +[WLDPlaybackReporter _cachedNotFoundIdentifiers];
  }

  v3 = _cachedNotFoundIdentifiers___cachedNotFoundIdentifiers;

  return v3;
}

void __49__WLDPlaybackReporter__cachedNotFoundIdentifiers__block_invoke(id a1)
{
  _cachedNotFoundIdentifiers___cachedNotFoundIdentifiers = objc_alloc_init(NSMutableSet);

  _objc_release_x1();
}

+ (void)_decorateVODSummary:(id)a3 completion:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke;
  v8[3] = &unk_1000452E8;
  v9 = a3;
  v10 = a4;
  v11 = a1;
  v6 = v9;
  v7 = v10;
  [v6 resolveChannelID:v8];
}

void __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    v7 = [*(a1 + 32) duration];
    if (v7)
    {
      v8 = [*(a1 + 32) contentID];
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
      v10 = [WLKPlayActivityDecorateVODOperation identifierForPlayActivityID:v8 channelID:v5 duration:v9];

      if ([v10 length])
      {
        v11 = *(a1 + 48);
        v12 = [objc_opt_class() _cachedMetadataByIdentifier];
        v13 = [v12 objectForKey:v10];

        if (v13)
        {
          v14 = WLKPlaybackTrackingLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 48);
            *buf = 138412546;
            v43 = v15;
            v44 = 2112;
            v45 = v10;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Returning cached metadata for %@.", buf, 0x16u);
          }

          (*(*(a1 + 40) + 16))();
        }

        else
        {
          v23 = *(a1 + 48);
          v24 = [objc_opt_class() _cachedNotFoundIdentifiers];
          v25 = [v24 containsObject:v10];

          if (v25)
          {
            v26 = WLKPlaybackTrackingLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v10;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Item with identifier %@ is known to be unavailable.", buf, 0xCu);
            }

            v27 = *(a1 + 40);
            v28 = WLKError();
            (*(v27 + 16))(v27, 0, v28);
          }

          else
          {
            v29 = [WLKPlayActivityDecorateVODOperation alloc];
            v30 = [*(a1 + 32) contentID];
            v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
            v32 = [*(a1 + 32) playablePassthrough];
            v33 = [v29 initWithExternalId:v30 brandId:v5 hlsAssetDuration:v31 playablePassthrough:v32];

            objc_initWeak(buf, v33);
            v35 = _NSConcreteStackBlock;
            v36 = 3221225472;
            v37 = __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke_36;
            v38 = &unk_100044F50;
            objc_copyWeak(v41, buf);
            v41[1] = *(a1 + 48);
            v39 = v10;
            v40 = *(a1 + 40);
            [v33 setCompletionBlock:&v35];
            v34 = WLDOperationQueue();
            [v34 addOperation:{v33, v35, v36, v37, v38}];

            objc_destroyWeak(v41);
            objc_destroyWeak(buf);
          }
        }
      }

      else
      {
        v20 = WLKPlaybackTrackingLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [*(a1 + 32) bundleID];
          *buf = 138412290;
          v43 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: could not resolve lookupID for %@", buf, 0xCu);
        }

        v22 = *(a1 + 40);
        v13 = WLKError();
        (*(v22 + 16))(v22, 0, v13);
      }
    }

    else
    {
      v17 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(a1 + 32) bundleID];
        *buf = 138412290;
        v43 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Nil duration found in playback summary for %@", buf, 0xCu);
      }

      v19 = *(a1 + 40);
      v10 = WLKError();
      (*(v19 + 16))(v19, 0, v10);
    }
  }

  else
  {
    v16 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error: Failed to resolve channelID %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __54__WLDPlaybackReporter__decorateVODSummary_completion___block_invoke_36(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];

  if (v3)
  {
    v4 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained error];
      v25 = 138412290;
      v26 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Activity lookup failed: %@", &v25, 0xCu);
    }

    v6 = [WeakRetained httpResponse];
    v7 = [v6 statusCode];

    if ((v7 - 400) <= 0x63)
    {
      v8 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134217984;
        v26 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Activity lookup got a %ld. We will not retry.", &v25, 0xCu);
      }

      v9 = *(a1 + 56);
      v10 = [objc_opt_class() _cachedNotFoundIdentifiers];
      [v10 addObject:*(a1 + 32)];
    }

    v11 = *(a1 + 40);
    v12 = [WeakRetained error];
    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    v13 = [WeakRetained metadataByIdentifier];
    v12 = [v13 objectForKeyedSubscript:*(a1 + 32)];

    v14 = WLKPlaybackTrackingLogObject();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v15)
      {
        v16 = *(a1 + 56);
        v17 = *(a1 + 32);
        v25 = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Got metadata for %@.", &v25, 0x16u);
      }

      v18 = *(a1 + 56);
      v19 = [objc_opt_class() _cachedMetadataByIdentifier];
      [v19 setObject:v12 forKey:*(a1 + 32)];

      v20 = *(a1 + 40);
      v21 = *(v20 + 16);
      v22 = v12;
    }

    else
    {
      if (v15)
      {
        v23 = *(a1 + 56);
        v24 = *(a1 + 32);
        v25 = 138412546;
        v26 = v23;
        v27 = 2112;
        v28 = v24;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Metadata not found even after successfully receiving response from backend for %@.", &v25, 0x16u);
      }

      v20 = *(a1 + 40);
      v21 = *(v20 + 16);
      v22 = 0;
    }

    v21(v20, v22, 0);
  }
}

- (void)_reportPlayEvent:(id)a3 summary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [WLDPlayActivityReportOperation alloc];
  v39 = v8;
  v12 = [NSArray arrayWithObjects:&v39 count:1];
  v13 = [(WLDPlayActivityReportOperation *)v11 initWithPlayEvents:v12];

  v14 = +[TVAppAccountStoreObjC activeAccount];
  v15 = [v14 ams_DSID];
  v16 = [v15 stringValue];

  v17 = [v9 accountID];
  v18 = v16;
  v19 = v17;
  v20 = v19;
  if (v18 == v19)
  {

    v22 = v18;
LABEL_11:

    goto LABEL_12;
  }

  if (!v18 || !v19)
  {

    goto LABEL_8;
  }

  v21 = [v18 isEqual:v19];

  if ((v21 & 1) == 0)
  {
LABEL_8:
    v23 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v34 = self;
      v35 = 2112;
      v36 = v18;
      v37 = 2112;
      v38 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@: Note: DSID mismatch. Active:%@ Summary:%@", buf, 0x20u);
    }

    v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v20 longLongValue]);
    [(WLDPlayActivityReportOperation *)v13 setDSID:v22];
    goto LABEL_11;
  }

LABEL_12:
  objc_initWeak(&location, v13);
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __59__WLDPlaybackReporter__reportPlayEvent_summary_completion___block_invoke;
  v28[3] = &unk_100045310;
  objc_copyWeak(&v31, &location);
  v28[4] = self;
  v24 = v9;
  v29 = v24;
  v25 = v10;
  v30 = v25;
  [(WLDPlayActivityReportOperation *)v13 setCompletionBlock:v28];
  v26 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v34 = self;
    v35 = 2048;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ Queueing activity report: %p", buf, 0x16u);
  }

  v27 = WLDOperationQueue();
  [v27 addOperation:v13];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __59__WLDPlaybackReporter__reportPlayEvent_summary_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained error];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [WeakRetained nextExpectedReportMillis];
    [v3 _scheduleTimedReportForSummary:v4 afterMillis:v5];
  }

  v6 = *(a1 + 32);
  v7 = [WeakRetained error];
  [v6 _cleanupWithSuccess:v2 == 0 error:v7 completion:*(a1 + 48)];
}

+ (int64_t)_intentsMediaItemTypeFromWLKContentType:(unint64_t)a3
{
  if (a3 - 1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_100040F20[a3 - 1];
  }
}

+ (void)_donateIntentWithPlaybackSummary:(id)a3 andMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 playbackState] == 1)
  {
    v42 = 0;
    v8 = [LSBundleRecord bundleRecordWithApplicationIdentifier:@"com.apple.tv" error:&v42];
    v9 = v42;
    if (kCFBundleExecutableKey)
    {
      v10 = [v6 contentTitle];
      if (v10)
      {
        [v6 contentTitle];
      }

      else
      {
        [v8 localizedName];
      }
      v12 = ;

      v35 = v8;
      v36 = v9;
      v34 = v12;
      if ([a1 _intentsMediaItemTypeFromWLKContentType:{objc_msgSend(v7, "contentType")}] == 13)
      {
        v13 = [INMediaItem alloc];
        v14 = [v7 canonicalShowID];
        v15 = [v13 initWithIdentifier:v14 title:v12 type:12 artwork:0];

        v16 = 0;
      }

      else
      {
        v16 = v12;
        v15 = 0;
      }

      v17 = [INMediaItem alloc];
      v18 = [v7 canonicalID];
      v33 = v16;
      v19 = [v17 initWithIdentifier:v18 title:v16 type:objc_msgSend(a1 artwork:{"_intentsMediaItemTypeFromWLKContentType:", objc_msgSend(v7, "contentType")), 0}];

      v20 = [INPlayMediaIntent alloc];
      v45 = v19;
      v21 = [NSArray arrayWithObjects:&v45 count:1];
      v32 = v15;
      v22 = [v20 initWithMediaItems:v21 mediaContainer:v15 playShuffled:&__kCFBooleanFalse playbackRepeatMode:1 resumePlayback:&__kCFBooleanTrue playbackQueueLocation:1 playbackSpeed:&off_100049CB0 mediaSearch:0];

      v37 = v7;
      v23 = [v7 siriActionsCategories];
      v24 = objc_opt_new();
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [[INSpeakableString alloc] initWithVocabularyIdentifier:*(*(&v38 + 1) + 8 * i) spokenPhrase:@"TV" pronunciationHint:@"TV"];
            [v24 addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v27);
      }

      [v22 setBuckets:v24];
      [v22 _setLaunchId:@"com.apple.tv"];
      [v22 _setExtensionBundleId:0];
      v31 = [[INInteraction alloc] initWithIntent:v22 response:0];
      [v31 donateInteractionWithCompletion:&__block_literal_global_55];

      v9 = v36;
      v7 = v37;
      v11 = v34;
      v8 = v35;
    }

    else
    {
      v11 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [WLDPlaybackReporter _donateIntentWithPlaybackSummary:v9 andMetadata:v11];
      }
    }
  }

  else
  {
    v9 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Skipping donation because user didn't initiate playback.", buf, 2u);
    }
  }
}

void __68__WLDPlaybackReporter__donateIntentWithPlaybackSummary_andMetadata___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - Error donating interaction: %@", &v4, 0xCu);
    }
  }
}

- (void)_clearBDTimer
{
  v2 = self;
  objc_sync_enter(v2);
  BDTimer = v2->_BDTimer;
  if (BDTimer)
  {
    v4 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Cancelling existing timer", &v5, 0xCu);
    }

    dispatch_source_cancel(v2->_BDTimer);
    BDTimer = v2->_BDTimer;
  }

  v2->_BDTimer = 0;

  objc_sync_exit(v2);
}

- (void)_scheduleTimedReportForSummary:(id)a3 afterMillis:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 playbackState] == 1;
    v9 = WLKPlaybackTrackingLogObject();
    v10 = os_log_type_enabled(&v9->super, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will schedule timed report in %@ millis", buf, 0x16u);
      }

      v9 = self;
      objc_sync_enter(v9);
      v11 = WLDDispatchQueue();
      v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v11);
      BDTimer = v9->_BDTimer;
      v9->_BDTimer = v12;

      [v7 doubleValue];
      v15 = dispatch_time(0, (v14 * 1000000.0));
      dispatch_source_set_timer(v9->_BDTimer, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
      objc_initWeak(buf, v9);
      v16 = v9->_BDTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke;
      handler[3] = &unk_100045380;
      objc_copyWeak(&v19, buf);
      handler[4] = v9;
      v18 = v6;
      dispatch_source_set_event_handler(v16, handler);
      dispatch_activate(v9->_BDTimer);

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
      objc_sync_exit(v9);
    }

    else if (v10)
    {
      *buf = 138412290;
      v21 = self;
      _os_log_impl(&_mh_execute_header, &v9->super, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will not generate timed report because playback state is not playing", buf, 0xCu);
    }
  }
}

void __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = a1[4];
    objc_sync_enter(v3);
    v4 = WeakRetained[4];
    objc_sync_exit(v3);

    if ([v4 playbackState] == 1 && objc_msgSend(v4, "isSameContent:", a1[5]))
    {
      v5 = [a1[5] elapsedTimeSummaryWithPlaybackState:1 timerDerived:1];
      v6 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        *buf = 138412546;
        v11 = v7;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will enqueue: %@", buf, 0x16u);
      }

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke_56;
      v9[3] = &unk_100045358;
      v9[4] = WeakRetained;
      [WeakRetained reportPlayback:v5 completion:v9];
    }

    else
    {
      v5 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        *buf = 138412290;
        v11 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDPlaybackReporter - %@ TR: Will not generate report because current playback state does not satisfy conditions", buf, 0xCu);
      }
    }
  }
}

void __66__WLDPlaybackReporter__scheduleTimedReportForSummary_afterMillis___block_invoke_56(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = WLKPlaybackTrackingLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v13 = 138412290;
      v14 = v8;
      v9 = "WLDPlaybackReporter - %@ TR: Successful playback report";
      v10 = v6;
      v11 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v7)
  {
    v12 = *(a1 + 32);
    v13 = 138412546;
    v14 = v12;
    v15 = 2112;
    v16 = v5;
    v9 = "WLDPlaybackReporter - %@: TR: Failed playback report %@";
    v10 = v6;
    v11 = 22;
    goto LABEL_6;
  }
}

+ (void)_donateIntentWithPlaybackSummary:(void *)a1 andMetadata:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "WLDPlaybackReporter - Could not find bundle for ID com.apple.tv - %@", &v4, 0xCu);
}

@end
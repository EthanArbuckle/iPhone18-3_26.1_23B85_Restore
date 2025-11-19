@interface PALSession
- (BOOL)stopTrackingIntervalForAccess:(id)a3;
- (BOOL)stopTrackingIntervalForAccessIdentifier:(id)a3;
- (BOOL)trackIntervalForAccess:(id)a3;
- (BOOL)updateAssetIdentifiersForAccess:(id)a3;
- (NSXPCConnection)connection;
- (PALSession)initWithServer:(id)a3 targetQueue:(id)a4 connection:(id)a5;
- (void)changeTestingSettings:(PASessionTestingSettings)a3 reply:(id)a4;
- (void)exportToFileHandle:(id)a3 reply:(id)a4;
- (void)finalizeAllAccessIntervalsAndRemoveSession:(BOOL)a3;
- (void)log:(id)a3 reason:(int64_t)a4 reply:(id)a5;
- (void)loggingEnabledWithReply:(id)a3;
- (void)notifyRecentlyStoppedState:(id)a3;
- (void)pruneEventsFromStartTime:(double)a3 toEndTime:(double)a4 reply:(id)a5;
- (void)requestSandboxExtensionForStoreBasePathWithReply:(id)a3;
- (void)setLoggingEnabled:(BOOL)a3;
- (void)stopTrackingAccessIntervalsWithIdentifiers:(id)a3;
- (void)stopTrackingAllAccessIntervals;
@end

@implementation PALSession

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)stopTrackingAllAccessIntervals
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_pendingAccesses allKeys];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(PALSession *)self stopTrackingIntervalForAccessIdentifier:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (PALSession)initWithServer:(id)a3 targetQueue:(id)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create_with_target_V2("com.apple.privacyaccounting.session", v11, v9);

  [v10 _setQueue:v12];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000754C;
  v20[3] = &unk_1000188C8;
  objc_copyWeak(&v21, &location);
  [v10 setInterruptionHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100007590;
  v18[3] = &unk_1000188C8;
  objc_copyWeak(&v19, &location);
  [v10 setInvalidationHandler:v18];
  objc_storeWeak(&self->_server, v8);
  objc_storeWeak(&self->_connection, v10);
  objc_storeStrong(&self->_queue, v12);
  v13 = +[NSMutableDictionary dictionary];
  pendingAccesses = self->_pendingAccesses;
  self->_pendingAccesses = v13;

  v15 = os_log_create("com.apple.PrivacyAccounting", "PALSession");
  log = self->_log;
  self->_log = v15;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return self;
}

- (void)log:(id)a3 reason:(int64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = sub_100001724;
  v47[4] = sub_100001A18;
  v48 = os_transaction_create();
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100007B88;
  v44[3] = &unk_1000188F0;
  v10 = v8;
  v44[4] = self;
  v45 = v10;
  v46 = v47;
  v11 = objc_retainBlock(v44);
  v12 = objc_loadWeakRetained(&self->_connection);
  v43 = 0;
  v13 = [WeakRetained canWriteEvent:v7 forConnection:v12 withError:&v43];
  v14 = v43;

  if (v13)
  {
    goto LABEL_14;
  }

  v15 = v7;
  if (![v15 isMemberOfClass:objc_opt_class()])
  {
    v7 = 0;
    goto LABEL_13;
  }

  if (qword_10001ED50 != -1)
  {
    sub_10000A100();
  }

  v16 = v15;
  v17 = qword_10001ED58;
  v18 = [v16 tccService];
  LODWORD(v17) = [v17 containsObject:v18];

  if (!v17)
  {
    goto LABEL_11;
  }

  v19 = [v16 accessor];
  v20 = [v19 identifierType];

  if (v20 >= 4)
  {
    if (v20 == 4)
    {
      v7 = v16;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v21 = +[PAApplication applicationForCurrentProcess];
  v7 = [v16 copyWithNewAccessor:v21];

LABEL_12:
LABEL_13:

  if (!v7)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000A128();
    }

    (v11[2])(v11, 0, v14);
    v28 = 0;
    v27 = v14;
    goto LABEL_35;
  }

LABEL_14:
  v22 = [WeakRetained settings];
  v23 = [v22 loggingEnabled];

  if (v23)
  {
    v24 = [WeakRetained accessorResolver];
    v25 = objc_loadWeakRetained(&self->_connection);
    v26 = v25;
    if (v25)
    {
      [v25 auditToken];
    }

    else
    {
      memset(v42, 0, sizeof(v42));
    }

    v41 = v14;
    v28 = [v24 resolveAccessorForAccess:v7 senderAuditToken:v42 withError:&v41];
    v27 = v41;

    if (v28)
    {
      v29 = [v28 kind];
      if (v29 == 2)
      {
        if (![(PALSession *)self trackIntervalForAccess:v28])
        {
          v34 = objc_loadWeakRetained(&self->_server);
          v35 = [v34 log];

          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_10000A15C();
          }

          v32 = [NSError errorWithDomain:@"PAErrorDomain" code:3 userInfo:0];
          (v11[2])(v11, v28, v32);
          goto LABEL_34;
        }
      }

      else if (v29 == 3)
      {
        if (![(PALSession *)self stopTrackingIntervalForAccess:v28])
        {
          v30 = objc_loadWeakRetained(&self->_server);
          v31 = [v30 log];

          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10000A1D0();
          }

          v32 = [NSError errorWithDomain:@"PAErrorDomain" code:4 userInfo:0];
          (v11[2])(v11, v28, v32);
          goto LABEL_34;
        }
      }

      else if (v29 == 4)
      {
        [(PALSession *)self updateAssetIdentifiersForAccess:v28];
      }

      v33 = [WeakRetained queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100007C94;
      block[3] = &unk_100018918;
      v37 = WeakRetained;
      v38 = v28;
      v39 = self;
      v40 = v11;
      dispatch_async(v33, block);

      v32 = v37;
LABEL_34:

      goto LABEL_35;
    }

    (v11[2])(v11, 0, v27);
    v28 = 0;
  }

  else
  {
    v27 = [NSError errorWithDomain:@"PAErrorDomain" code:2 userInfo:0];

    (v11[2])(v11, v7, v27);
    v28 = v7;
  }

LABEL_35:

  _Block_object_dispose(v47, 8);
}

- (void)setLoggingEnabled:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v6 = objc_loadWeakRetained(&self->_connection);
  v7 = [WeakRetained canToggleLoggingEnabledForConnection:v6];

  if (v7)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = sub_100001724;
    v14[4] = sub_100001A18;
    v15 = os_transaction_create();
    v8 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100007FC4;
    block[3] = &unk_100018940;
    v13 = a3;
    v11 = WeakRetained;
    v12 = v14;
    dispatch_async(v8, block);

    _Block_object_dispose(v14, 8);
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000A244();
    }

    v9 = objc_loadWeakRetained(&self->_connection);
    [v9 invalidate];
  }
}

- (void)loggingEnabledWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v6 = objc_loadWeakRetained(&self->_connection);
  v7 = [WeakRetained canToggleLoggingEnabledForConnection:v6];

  if (v7)
  {
    v8 = [WeakRetained queue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100008154;
    v9[3] = &unk_100018968;
    v11 = v4;
    v10 = WeakRetained;
    dispatch_async(v8, v9);
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000A278();
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)requestSandboxExtensionForStoreBasePathWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v6 = objc_loadWeakRetained(&self->_connection);
  v7 = [WeakRetained canReadEventsForConnection:v6];

  if (v7)
  {
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_100001724;
    v22[4] = sub_100001A18;
    v23 = os_transaction_create();
    v20 = 0u;
    v21 = 0u;
    v8 = objc_loadWeakRetained(&self->_connection);
    v9 = v8;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    v11 = [WeakRetained queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000083A4;
    v13[3] = &unk_100018990;
    v14 = WeakRetained;
    v12 = v4;
    v18 = v20;
    v19 = v21;
    v15 = self;
    v16 = v12;
    v17 = v22;
    dispatch_async(v11, v13);

    _Block_object_dispose(v22, 8);
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000A2AC();
    }

    v10 = objc_loadWeakRetained(&self->_connection);
    [v10 invalidate];
  }
}

- (void)changeTestingSettings:(PASessionTestingSettings)a3 reply:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v9 = objc_loadWeakRetained(&self->_connection);
  v10 = [WeakRetained canChangeTestingSettingsForConnection:v9];

  if (v10)
  {
    v11 = [WeakRetained queue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100008834;
    v13[3] = &unk_1000189B8;
    v16 = var0;
    v17 = var1;
    v14 = WeakRetained;
    v15 = v7;
    dispatch_async(v11, v13);

    v12 = v14;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_FAULT))
    {
      sub_10000A3A8();
    }

    v12 = objc_loadWeakRetained(&self->_connection);
    [v12 invalidate];
  }
}

- (void)exportToFileHandle:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v9 = objc_loadWeakRetained(&self->_connection);
  v10 = [WeakRetained canReadEventsForConnection:v9];

  if (v10)
  {
    v11 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100008A18;
    block[3] = &unk_1000189E0;
    v14 = WeakRetained;
    v15 = v6;
    v16 = v7;
    dispatch_async(v11, block);

    v12 = v14;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000A3E8();
    }

    v12 = objc_loadWeakRetained(&self->_connection);
    [v12 invalidate];
  }
}

- (BOOL)trackIntervalForAccess:(id)a3
{
  v4 = a3;
  pendingAccesses = self->_pendingAccesses;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)pendingAccesses objectForKeyedSubscript:v6];

  if (!v7)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A41C(log, v4);
    }

    v10 = [v4 accessor];
    v11 = [v10 identifierType];

    if ((v11 - 2) < 3)
    {
      v12 = self->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_10000A4C0(v12, v4);
      }

      goto LABEL_11;
    }

    if (v11 == 1)
    {
      v13 = [v4 accessor];
      v14 = [v13 path];
    }

    else
    {
      if (v11)
      {
LABEL_11:
        v15 = 0;
        goto LABEL_12;
      }

      v13 = [v4 accessor];
      v14 = [v13 bundleID];
    }

    v15 = v14;

    if (v15)
    {
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v32 = [WeakRetained settings];
      v33 = [v32 saltForMetricsReduction];
      v34 = objc_loadWeakRetained(&self->_server);
      v35 = [v34 settings];
      v36 = PALMetricDataReductionTestString(v33, v15, [v35 intervalMetricDifficulty]);

      if (v36)
      {
        v21 = 1;
LABEL_19:
        v22 = [PALOngoingAccessIntervalState alloc];
        queue = self->_queue;
        v24 = objc_loadWeakRetained(&self->_server);
        v25 = [v24 accessorResolver];
        v26 = [v25 applicationMetadataResolver];
        v27 = [(PALOngoingAccessIntervalState *)v22 initWithAccess:v4 queue:queue applicationMetadataResolver:v26 eligibleForMetricCollection:v21];

        v28 = self->_pendingAccesses;
        v29 = [v4 identifier];
        [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v29];

        v8 = [(PALSession *)self updateAssetIdentifiersForAccess:v4];
        goto LABEL_20;
      }
    }

LABEL_12:
    if (os_variant_has_internal_content())
    {
      v16 = objc_loadWeakRetained(&self->_server);
      v17 = [v16 accessorResolver];
      v18 = [v17 applicationMetadataResolver];
      v19 = [v4 accessor];
      v20 = [v18 bundleRecordForApplication:v19];

      v21 = !PABundleRecordIsVisibleApplication() || [v20 developerType] != 3;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_19;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (BOOL)updateAssetIdentifiersForAccess:(id)a3
{
  v4 = a3;
  pendingAccesses = self->_pendingAccesses;
  v6 = [v4 identifier];
  v7 = [(NSMutableDictionary *)pendingAccesses objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 assetIdentifierPool];

    if (v8)
    {
      v9 = [v7 assetIdentifierPool];
      v10 = [v4 assetIdentifiers];
      [v9 addAssetIdentifiers:v10 accessEventCount:{objc_msgSend(v4, "eventCount")}];
    }

    else
    {
      v9 = [v4 assetIdentifiers];
      [v7 recordAccessToAssetIdentifiers:v9 withVisibilityState:objc_msgSend(v4 accessEventCount:{"visibilityState"), objc_msgSend(v4, "eventCount")}];
    }
  }

  return 1;
}

- (BOOL)stopTrackingIntervalForAccess:(id)a3
{
  v4 = [a3 identifier];
  LOBYTE(self) = [(PALSession *)self stopTrackingIntervalForAccessIdentifier:v4];

  return self;
}

- (BOOL)stopTrackingIntervalForAccessIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_pendingAccesses objectForKeyedSubscript:v4];
  if (v5)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A57C();
    }

    [(NSMutableDictionary *)self->_pendingAccesses setObject:0 forKeyedSubscript:v4];
    v6 = [v5 assetIdentifierPool];
    [v6 drainPool];

    if ([v5 eligibleForMetricCollection])
    {
      v7 = [v5 access];
      [v5 intervalSinceStart];
      WeakRetained = objc_loadWeakRetained(&self->_server);
      v9 = [v5 assetIdentifierHashesByVisibilityState];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [v5 assetIdentifierHashesByVisibilityState];
        v12 = [v11 objectForKeyedSubscript:&off_100019910];
        v24 = [v12 count];

        v13 = [v5 assetIdentifierHashesByVisibilityState];
        v14 = [v13 objectForKeyedSubscript:&off_100019928];
        [v14 count];

        v15 = [v5 assetIdentifierHashesByVisibilityState];
        v16 = [v15 objectForKeyedSubscript:&off_100019940];
        [v16 count];
      }

      else
      {
        v17 = [v5 eventCountByVisibilityState];
        v18 = [v17 objectForKeyedSubscript:&off_100019910];
        v24 = [v18 integerValue];

        v19 = [v5 eventCountByVisibilityState];
        v20 = [v19 objectForKeyedSubscript:&off_100019928];
        [v20 integerValue];

        v15 = [v5 eventCountByVisibilityState];
        v16 = [v15 objectForKeyedSubscript:&off_100019940];
        [v16 integerValue];
      }

      v25 = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27 = sub_100009164;
      v28 = &unk_100018A08;
      v29 = WeakRetained;
      v30 = v7;
      v21 = v7;
      v22 = WeakRetained;
      AnalyticsSendEventLazy();
    }

    [(PALSession *)self notifyRecentlyStoppedState:v5, v24, v25, v26, v27, v28];
    [v5 invalidate];
  }

  return v5 != 0;
}

- (void)finalizeAllAccessIntervalsAndRemoveSession:(BOOL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained settings];
    v8 = [v7 loggingOptions];

    v9 = [(NSMutableDictionary *)self->_pendingAccesses allValues];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = sub_100001724;
    v22[4] = sub_100001A18;
    v23 = os_transaction_create();
    v10 = [v6 queue];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1000095DC;
    v15 = &unk_100018A30;
    v16 = v9;
    v20 = v8;
    v21 = a3;
    v17 = v6;
    v18 = self;
    v19 = v22;
    v11 = v9;
    dispatch_async(v10, &v12);

    _Block_object_dispose(v22, 8);
  }

  [(PALSession *)self stopTrackingAllAccessIntervals:v12];
}

- (void)stopTrackingAccessIntervalsWithIdentifiers:(id)a3
{
  v4 = a3;
  v25 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_pendingAccesses;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    *&v6 = 138412546;
    v24 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_pendingAccesses objectForKeyedSubscript:v10, v24];
        v12 = [v11 access];
        v13 = [v12 identifier];
        v14 = [v4 containsObject:v13];

        if (v14)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
          {
            v16 = log;
            v17 = [v11 access];
            WeakRetained = objc_loadWeakRetained(&self->_connection);
            *buf = v24;
            v37 = v17;
            v38 = 2112;
            v39 = WeakRetained;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Stopping tracking interval for access=%@ on connection=%@", buf, 0x16u);
          }

          [v25 addObject:v10];
        }
      }

      v7 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = v25;
  v20 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(PALSession *)self stopTrackingIntervalForAccessIdentifier:*(*(&v27 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }
}

- (void)pruneEventsFromStartTime:(double)a3 toEndTime:(double)a4 reply:(id)a5
{
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_server);
  v10 = objc_loadWeakRetained(&self->_connection);
  v20 = 0;
  v11 = [WeakRetained canPruneEventsForConnection:v10 withError:&v20];
  v12 = v20;

  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000A5F0();
    }

    v8[2](v8, v12);
    v14 = objc_loadWeakRetained(&self->_connection);
    [v14 invalidate];
    goto LABEL_7;
  }

  if (WeakRetained)
  {
    v13 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100009BAC;
    block[3] = &unk_1000189B8;
    v16 = WeakRetained;
    v18 = a3;
    v19 = a4;
    v17 = v8;
    dispatch_async(v13, block);

    v14 = v16;
LABEL_7:
  }
}

- (void)notifyRecentlyStoppedState:(id)a3
{
  v4 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_29;
  }

  v5 = [v4 access];
  v6 = [v5 accessor];
  v7 = [v6 identifierType];

  if (v7 == 4)
  {
    v8 = [v4 access];
    v9 = [v8 accessor];
    v12 = [v9 assumedIdentity];
    v11 = [v12 description];
  }

  else
  {
    if (v7 == 1)
    {
      v8 = [v4 access];
      v9 = [v8 accessor];
      v10 = [v9 path];
    }

    else
    {
      if (v7)
      {
        v11 = 0;
        goto LABEL_11;
      }

      v8 = [v4 access];
      v9 = [v8 accessor];
      v10 = [v9 bundleID];
    }

    v11 = v10;
  }

LABEL_11:
  v13 = [v4 access];
  v14 = [v13 category];

  if (v11)
  {
    v50 = v14;
    v15 = +[NSMutableSet set];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v16 = [v4 assetIdentifierHashesByVisibilityState];
    v17 = [v16 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v52;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v52 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v51 + 1) + 8 * i);
          v22 = [v4 assetIdentifierHashesByVisibilityState];
          v23 = [v22 objectForKeyedSubscript:v21];
          [v15 unionSet:v23];
        }

        v18 = [v16 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v18);
    }

    v24 = [v15 count];
    v25 = [v4 assetIdentifierHashesByVisibilityState];
    v26 = [v25 objectForKeyedSubscript:&off_100019940];
    v27 = [v26 count];

    v28 = [v4 assetIdentifierHashesByVisibilityState];
    v29 = [v28 objectForKeyedSubscript:&off_100019928];
    v30 = [v29 count];

    v31 = [v4 assetIdentifierHashesByVisibilityState];
    v32 = [v31 objectForKeyedSubscript:&off_100019910];
    v33 = [v32 count];

    if (v24)
    {
      if (v24 == 1)
      {
        v34 = &stru_1000193F8;
      }

      else
      {
        v34 = @"s";
      }

      [v4 intervalSinceStart];
      v45 = v34;
      v14 = v50;
      [NSString stringWithFormat:@"%@ accessed %@ %lu time%@ (%lufg/%lubg/%lu?) over %.2f seconds", v11, v50, v24, v45, v27, v30, v33, v35];
    }

    else
    {
      [v4 intervalSinceStart];
      v14 = v50;
      [NSString stringWithFormat:@"%@ accessed %@ for %.2f seconds", v11, v50, v36, v44, v46, v47, v48, v49];
    }
    v37 = ;
    if (!self->_userNotificationCenter)
    {
      v38 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.privacyaccounting.notification"];
      userNotificationCenter = self->_userNotificationCenter;
      self->_userNotificationCenter = v38;
    }

    v40 = objc_alloc_init(UNMutableNotificationContent);
    [v40 setBody:v37];
    [v40 setTitle:@"Privacy Accounting"];
    [v40 setInterruptionLevel:2];
    v41 = +[NSUUID UUID];
    v42 = [v41 UUIDString];
    v43 = [UNNotificationRequest requestWithIdentifier:v42 content:v40 trigger:0];

    [(UNUserNotificationCenter *)self->_userNotificationCenter addNotificationRequest:v43 withCompletionHandler:0];
  }

LABEL_29:
}

@end
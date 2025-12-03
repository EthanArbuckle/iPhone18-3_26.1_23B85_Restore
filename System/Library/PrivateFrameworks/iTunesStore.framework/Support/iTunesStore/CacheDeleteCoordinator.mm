@interface CacheDeleteCoordinator
+ (id)sharedInstance;
- (BOOL)_isStale;
- (CacheDeleteCoordinator)init;
- (id)_periodic:(id)_periodic urgency:(int)urgency;
- (id)_purchaseHistoryCache;
- (id)_purge:(id)_purge urgency:(int)urgency;
- (id)_purgeable:(id)_purgeable urgency:(int)urgency;
- (int64_t)_targetVolumeFromString:(id)string;
- (unint64_t)_currentPurgeable;
- (void)_cancelPurge;
- (void)_pushUpdatedAvailableStorage;
- (void)_refreshPurgeableStorage;
- (void)dealloc;
- (void)registerCacheDeleteInfoCallbacks;
- (void)updatePurgeableStorage;
@end

@implementation CacheDeleteCoordinator

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0700;
  block[3] = &unk_100327170;
  block[4] = self;
  if (qword_100383E70 != -1)
  {
    dispatch_once(&qword_100383E70, block);
  }

  v2 = qword_100383E68;

  return v2;
}

- (CacheDeleteCoordinator)init
{
  v7.receiver = self;
  v7.super_class = CacheDeleteCoordinator;
  v2 = [(CacheDeleteCoordinator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.itunesstored.CacheDeleteCoordinator.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    [(CacheDeleteCoordinator *)v2 registerCacheDeleteInfoCallbacks];
  }

  return v2;
}

- (void)dealloc
{
  scheduledTimer = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (scheduledTimer)
  {
    scheduledTimer2 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_source_cancel(scheduledTimer2);
  }

  v5.receiver = self;
  v5.super_class = CacheDeleteCoordinator;
  [(CacheDeleteCoordinator *)&v5 dealloc];
}

- (void)registerCacheDeleteInfoCallbacks
{
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000D0BF8;
  v22[3] = &unk_1003281F0;
  objc_copyWeak(&v23, &location);
  v15 = objc_retainBlock(v22);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D0C64;
  v20[3] = &unk_1003281F0;
  objc_copyWeak(&v21, &location);
  v2 = objc_retainBlock(v20);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D0CD0;
  v18[3] = &unk_100328150;
  objc_copyWeak(&v19, &location);
  v3 = objc_retainBlock(v18);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D0D10;
  v16[3] = &unk_1003281F0;
  objc_copyWeak(&v17, &location);
  v4 = objc_retainBlock(v16);
  v5 = CacheDeleteRegisterInfoCallbacks();
  v6 = +[SSLogConfig sharedConfig];
  shouldLog = [v6 shouldLog];
  shouldLogToDisk = [v6 shouldLogToDisk];
  oSLogObject = [v6 OSLogObject];
  v10 = oSLogObject;
  if (shouldLogToDisk)
  {
    shouldLog |= 2u;
  }

  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    shouldLog &= 2u;
  }

  if (!shouldLog)
  {
    goto LABEL_8;
  }

  v11 = objc_opt_class();
  v25 = 138412802;
  v26 = v11;
  v27 = 2112;
  v28 = off_100382AC0;
  v29 = 1024;
  v30 = v5;
  v12 = v11;
  LODWORD(v14) = 28;
  v13 = _os_log_send_and_compose_impl();

  if (v13)
  {
    v10 = [NSString stringWithCString:v13 encoding:4, &v25, v14];
    free(v13);
    SSFileLog();
LABEL_8:
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)updatePurgeableStorage
{
  scheduledTimer = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (!scheduledTimer)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [(CacheDeleteCoordinator *)self setScheduledTimer:v4];

    scheduledTimer2 = [(CacheDeleteCoordinator *)self scheduledTimer];
    v6 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(scheduledTimer2, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

    scheduledTimer3 = [(CacheDeleteCoordinator *)self scheduledTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D0E9C;
    handler[3] = &unk_100327110;
    handler[4] = self;
    dispatch_source_set_event_handler(scheduledTimer3, handler);

    scheduledTimer4 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_resume(scheduledTimer4);
  }
}

- (void)_cancelPurge
{
  v2 = +[SSLogConfig sharedConfig];
  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  LODWORD(v9) = 138412290;
  *(&v9 + 4) = objc_opt_class();
  v6 = *(&v9 + 4);
  LODWORD(v8) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    oSLogObject = [NSString stringWithCString:v7 encoding:4, &v9, v8, v9];
    free(v7);
    SSFileLog();
LABEL_9:
  }
}

- (unint64_t)_currentPurgeable
{
  v2 = objc_alloc_init(SSAppPurchaseHistoryCache);
  purgeableSpace = [v2 purgeableSpace];
  if (+[ISURLOperation sharedCFURLCache])
  {
    +[ISURLOperation sharedCFURLCache];
    purgeableSpace += CFURLCacheCurrentDiskUsage();
  }

  return purgeableSpace;
}

- (BOOL)_isStale
{
  Current = CFAbsoluteTimeGetCurrent();
  lastUpdate = self->_lastUpdate;
  return Current - lastUpdate > 3600.0 || lastUpdate == 0.0;
}

- (id)_periodic:(id)_periodic urgency:(int)urgency
{
  _periodicCopy = _periodic;
  v6 = [_periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [_periodicCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v20 = 138412802;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = v7;
    v24 = 2048;
    urgencyCopy = urgency;
    v12 = v21;
    LODWORD(v17) = 32;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_10;
    }

    oSLogObject = [NSString stringWithCString:v13 encoding:4, &v20, v17];
    free(v13);
    SSFileLog();
  }

LABEL_10:
  v18[1] = @"CACHE_DELETE_AMOUNT";
  v19[0] = v6;
  v18[0] = @"CACHE_DELETE_VOLUME";
  v14 = [NSNumber numberWithInteger:0];
  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v15;
}

- (id)_purchaseHistoryCache
{
  purchaseHistoryCache = self->__purchaseHistoryCache;
  if (!purchaseHistoryCache)
  {
    v4 = objc_alloc_init(SSAppPurchaseHistoryCache);
    v5 = self->__purchaseHistoryCache;
    self->__purchaseHistoryCache = v4;

    purchaseHistoryCache = self->__purchaseHistoryCache;
  }

  return purchaseHistoryCache;
}

- (id)_purge:(id)_purge urgency:(int)urgency
{
  _purgeCopy = _purge;
  v7 = [_purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [_purgeCopy objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  if ([(CacheDeleteCoordinator *)self _targetVolumeFromString:v7]== 2)
  {
    unsignedLongLongValue = [v8 unsignedLongLongValue];
    _currentPurgeable = [(CacheDeleteCoordinator *)self _currentPurgeable];
    _purchaseHistoryCache = [(CacheDeleteCoordinator *)self _purchaseHistoryCache];
    [_purchaseHistoryCache purge:unsignedLongLongValue];

    if (+[ISURLOperation sharedCFURLCache])
    {
      +[ISURLOperation sharedCFURLCache];
      CFURLCacheRemoveAllCachedResponses();
    }

    v12 = _currentPurgeable - [(CacheDeleteCoordinator *)self _currentPurgeable];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_lastUpdate = 0.0;
    combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
    selfCopy->_combinedSpaceByUrgency = 0;

    objc_sync_exit(selfCopy);
    v15 = +[SSLogConfig sharedConfig];
    shouldLog = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    oSLogObject = [v15 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 &= 2u;
    }

    if (v17)
    {
      v28 = 138413058;
      v29 = objc_opt_class();
      v30 = 2112;
      v31 = v8;
      v32 = 2048;
      v33 = v12;
      v34 = 2048;
      urgencyCopy = urgency;
      v19 = v29;
      LODWORD(v25) = 42;
      v24 = &v28;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_13:

        goto LABEL_15;
      }

      oSLogObject = [NSString stringWithCString:v20 encoding:4, &v28, v25];
      free(v20);
      v24 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_13;
  }

  v12 = 0;
LABEL_15:
  v26[1] = @"CACHE_DELETE_AMOUNT";
  v27[0] = v7;
  v26[0] = @"CACHE_DELETE_VOLUME";
  v21 = [NSNumber numberWithUnsignedLongLong:v12, v24];
  v27[1] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];

  return v22;
}

- (id)_purgeable:(id)_purgeable urgency:(int)urgency
{
  v4 = *&urgency;
  _purgeableCopy = _purgeable;
  v7 = [_purgeableCopy objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if ([(CacheDeleteCoordinator *)self _targetVolumeFromString:v7]!= 2)
  {
    unsignedLongLongValue = 0;
    goto LABEL_28;
  }

  v8 = +[SSLogConfig sharedConfig];
  shouldLog = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  oSLogObject = [v8 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 &= 2u;
  }

  if (v10)
  {
    v34 = 138412546;
    v35 = objc_opt_class();
    v36 = 2048;
    v37 = v4;
    v12 = v35;
    LODWORD(v31) = 22;
    v30 = &v34;
    v13 = _os_log_send_and_compose_impl();

    if (v13)
    {
      v14 = [NSString stringWithCString:v13 encoding:4, &v34, v31];
      free(v13);
      v30 = v14;
      SSFileLog();
    }
  }

  else
  {
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_combinedSpaceByUrgency || [(CacheDeleteCoordinator *)selfCopy _isStale])
  {
    [(CacheDeleteCoordinator *)selfCopy _refreshPurgeableStorage];
  }

  combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
  v18 = [NSNumber numberWithInt:v4, v30];
  v19 = [(NSDictionary *)combinedSpaceByUrgency objectForKey:v18];

  if (v19)
  {
    unsignedLongLongValue = [v19 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  objc_sync_exit(selfCopy);
  v20 = +[SSLogConfig sharedConfig];
  shouldLog2 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = shouldLog2 | 2;
  }

  else
  {
    v22 = shouldLog2;
  }

  oSLogObject2 = [v20 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v22 &= 2u;
  }

  if (!v22)
  {
    goto LABEL_26;
  }

  v24 = objc_opt_class();
  v34 = 138412802;
  v35 = v24;
  v36 = 2048;
  v37 = unsignedLongLongValue;
  v38 = 2048;
  v39 = v4;
  v25 = v24;
  LODWORD(v31) = 32;
  v30 = &v34;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    oSLogObject2 = [NSString stringWithCString:v26 encoding:4, &v34, v31];
    free(v26);
    v30 = oSLogObject2;
    SSFileLog();
LABEL_26:
  }

LABEL_28:
  v32[0] = @"CACHE_DELETE_VOLUME";
  v32[1] = @"CACHE_DELETE_AMOUNT";
  v33[0] = v7;
  v27 = [NSNumber numberWithLongLong:unsignedLongLongValue, v30];
  v33[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v28;
}

- (void)_pushUpdatedAvailableStorage
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CacheDeleteCoordinator *)self _refreshPurgeableStorage];
  scheduledTimer = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (scheduledTimer)
  {
    scheduledTimer2 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_source_cancel(scheduledTimer2);

    [(CacheDeleteCoordinator *)self setScheduledTimer:0];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
  if (combinedSpaceByUrgency)
  {
    v7 = [(NSDictionary *)combinedSpaceByUrgency copy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  if (v7)
  {
    v18[0] = @"CACHE_DELETE_ID";
    v18[1] = @"CACHE_DELETE_VOLUME";
    v19[0] = off_100382AC0;
    v19[1] = @"/private/var/mobile";
    v18[2] = @"CACHE_DELETE_AMOUNT";
    v19[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    CacheDeleteUpdatePurgeable();
    v9 = +[SSLogConfig sharedConfig];
    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v16 = 138412802;
      *&v16[4] = objc_opt_class();
      *&v16[12] = 2112;
      *&v16[14] = v7;
      *&v16[22] = 2112;
      v17 = @"/private/var/mobile";
      v13 = *&v16[4];
      LODWORD(v15) = 32;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_16:

        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v14 encoding:4, v16, v15, *v16, *&v16[16], v17];
      free(v14);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_refreshPurgeableStorage
{
  v3 = +[SSLogConfig sharedConfig];
  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = shouldLog | 2;
  }

  else
  {
    v5 = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    LODWORD(v20) = 138412290;
    *(&v20 + 4) = objc_opt_class();
    v7 = *(&v20 + 4);
    LODWORD(v19) = 12;
    v18 = &v20;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      v9 = [NSString stringWithCString:v8 encoding:4, &v20, v19, v20];
      free(v8);
      v18 = v9;
      SSFileLog();
    }
  }

  else
  {
  }

  _currentPurgeable = [(CacheDeleteCoordinator *)self _currentPurgeable];
  v11 = objc_opt_new();
  v12 = 1;
  do
  {
    v13 = [NSNumber numberWithLongLong:_currentPurgeable, v18];
    v14 = [NSNumber numberWithInt:v12];
    [v11 setObject:v13 forKey:v14];

    v12 = (v12 + 1);
  }

  while (v12 != 5);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = [v11 copy];
  combinedSpaceByUrgency = selfCopy->_combinedSpaceByUrgency;
  selfCopy->_combinedSpaceByUrgency = v16;

  selfCopy->_lastUpdate = CFAbsoluteTimeGetCurrent();
  objc_sync_exit(selfCopy);
}

- (int64_t)_targetVolumeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy && ([stringCopy isEqualToString:@"/private/var"] & 1) == 0)
  {
    if ([v4 isEqualToString:@"/private/var/mobile"])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end
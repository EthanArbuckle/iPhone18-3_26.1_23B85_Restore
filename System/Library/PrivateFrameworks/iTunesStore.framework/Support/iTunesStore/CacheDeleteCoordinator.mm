@interface CacheDeleteCoordinator
+ (id)sharedInstance;
- (BOOL)_isStale;
- (CacheDeleteCoordinator)init;
- (id)_periodic:(id)a3 urgency:(int)a4;
- (id)_purchaseHistoryCache;
- (id)_purge:(id)a3 urgency:(int)a4;
- (id)_purgeable:(id)a3 urgency:(int)a4;
- (int64_t)_targetVolumeFromString:(id)a3;
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
  block[4] = a1;
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
  v3 = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (v3)
  {
    v4 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_source_cancel(v4);
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
  v7 = [v6 shouldLog];
  v8 = [v6 shouldLogToDisk];
  v9 = [v6 OSLogObject];
  v10 = v9;
  if (v8)
  {
    v7 |= 2u;
  }

  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
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
  v3 = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (!v3)
  {
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    [(CacheDeleteCoordinator *)self setScheduledTimer:v4];

    v5 = [(CacheDeleteCoordinator *)self scheduledTimer];
    v6 = dispatch_time(0, 10000000000);
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);

    v7 = [(CacheDeleteCoordinator *)self scheduledTimer];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000D0E9C;
    handler[3] = &unk_100327110;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v8 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_resume(v8);
  }
}

- (void)_cancelPurge
{
  v2 = +[SSLogConfig sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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
    v5 = [NSString stringWithCString:v7 encoding:4, &v9, v8, v9];
    free(v7);
    SSFileLog();
LABEL_9:
  }
}

- (unint64_t)_currentPurgeable
{
  v2 = objc_alloc_init(SSAppPurchaseHistoryCache);
  v3 = [v2 purgeableSpace];
  if (+[ISURLOperation sharedCFURLCache])
  {
    +[ISURLOperation sharedCFURLCache];
    v3 += CFURLCacheCurrentDiskUsage();
  }

  return v3;
}

- (BOOL)_isStale
{
  Current = CFAbsoluteTimeGetCurrent();
  lastUpdate = self->_lastUpdate;
  return Current - lastUpdate > 3600.0 || lastUpdate == 0.0;
}

- (id)_periodic:(id)a3 urgency:(int)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v7 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v8 = +[SSLogConfig sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
    v25 = a4;
    v12 = v21;
    LODWORD(v17) = 32;
    v13 = _os_log_send_and_compose_impl();

    if (!v13)
    {
      goto LABEL_10;
    }

    v11 = [NSString stringWithCString:v13 encoding:4, &v20, v17];
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

- (id)_purge:(id)a3 urgency:(int)a4
{
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  if ([(CacheDeleteCoordinator *)self _targetVolumeFromString:v7]== 2)
  {
    v9 = [v8 unsignedLongLongValue];
    v10 = [(CacheDeleteCoordinator *)self _currentPurgeable];
    v11 = [(CacheDeleteCoordinator *)self _purchaseHistoryCache];
    [v11 purge:v9];

    if (+[ISURLOperation sharedCFURLCache])
    {
      +[ISURLOperation sharedCFURLCache];
      CFURLCacheRemoveAllCachedResponses();
    }

    v12 = v10 - [(CacheDeleteCoordinator *)self _currentPurgeable];
    v13 = self;
    objc_sync_enter(v13);
    v13->_lastUpdate = 0.0;
    combinedSpaceByUrgency = v13->_combinedSpaceByUrgency;
    v13->_combinedSpaceByUrgency = 0;

    objc_sync_exit(v13);
    v15 = +[SSLogConfig sharedConfig];
    v16 = [v15 shouldLog];
    if ([v15 shouldLogToDisk])
    {
      v17 = v16 | 2;
    }

    else
    {
      v17 = v16;
    }

    v18 = [v15 OSLogObject];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
      v35 = a4;
      v19 = v29;
      LODWORD(v25) = 42;
      v24 = &v28;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_13:

        goto LABEL_15;
      }

      v18 = [NSString stringWithCString:v20 encoding:4, &v28, v25];
      free(v20);
      v24 = v18;
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

- (id)_purgeable:(id)a3 urgency:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  if ([(CacheDeleteCoordinator *)self _targetVolumeFromString:v7]!= 2)
  {
    v15 = 0;
    goto LABEL_28;
  }

  v8 = +[SSLogConfig sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  v11 = [v8 OSLogObject];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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

  v16 = self;
  objc_sync_enter(v16);
  if (!v16->_combinedSpaceByUrgency || [(CacheDeleteCoordinator *)v16 _isStale])
  {
    [(CacheDeleteCoordinator *)v16 _refreshPurgeableStorage];
  }

  combinedSpaceByUrgency = v16->_combinedSpaceByUrgency;
  v18 = [NSNumber numberWithInt:v4, v30];
  v19 = [(NSDictionary *)combinedSpaceByUrgency objectForKey:v18];

  if (v19)
  {
    v15 = [v19 unsignedLongLongValue];
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(v16);
  v20 = +[SSLogConfig sharedConfig];
  v21 = [v20 shouldLog];
  if ([v20 shouldLogToDisk])
  {
    v22 = v21 | 2;
  }

  else
  {
    v22 = v21;
  }

  v23 = [v20 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
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
  v37 = v15;
  v38 = 2048;
  v39 = v4;
  v25 = v24;
  LODWORD(v31) = 32;
  v30 = &v34;
  v26 = _os_log_send_and_compose_impl();

  if (v26)
  {
    v23 = [NSString stringWithCString:v26 encoding:4, &v34, v31];
    free(v26);
    v30 = v23;
    SSFileLog();
LABEL_26:
  }

LABEL_28:
  v32[0] = @"CACHE_DELETE_VOLUME";
  v32[1] = @"CACHE_DELETE_AMOUNT";
  v33[0] = v7;
  v27 = [NSNumber numberWithLongLong:v15, v30];
  v33[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  return v28;
}

- (void)_pushUpdatedAvailableStorage
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(CacheDeleteCoordinator *)self _refreshPurgeableStorage];
  v3 = [(CacheDeleteCoordinator *)self scheduledTimer];

  if (v3)
  {
    v4 = [(CacheDeleteCoordinator *)self scheduledTimer];
    dispatch_source_cancel(v4);

    [(CacheDeleteCoordinator *)self setScheduledTimer:0];
  }

  v5 = self;
  objc_sync_enter(v5);
  combinedSpaceByUrgency = v5->_combinedSpaceByUrgency;
  if (combinedSpaceByUrgency)
  {
    v7 = [(NSDictionary *)combinedSpaceByUrgency copy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

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
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
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

      v12 = [NSString stringWithCString:v14 encoding:4, v16, v15, *v16, *&v16[16], v17];
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
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 OSLogObject];
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
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

  v10 = [(CacheDeleteCoordinator *)self _currentPurgeable];
  v11 = objc_opt_new();
  v12 = 1;
  do
  {
    v13 = [NSNumber numberWithLongLong:v10, v18];
    v14 = [NSNumber numberWithInt:v12];
    [v11 setObject:v13 forKey:v14];

    v12 = (v12 + 1);
  }

  while (v12 != 5);
  v15 = self;
  objc_sync_enter(v15);
  v16 = [v11 copy];
  combinedSpaceByUrgency = v15->_combinedSpaceByUrgency;
  v15->_combinedSpaceByUrgency = v16;

  v15->_lastUpdate = CFAbsoluteTimeGetCurrent();
  objc_sync_exit(v15);
}

- (int64_t)_targetVolumeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 isEqualToString:@"/private/var"] & 1) == 0)
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
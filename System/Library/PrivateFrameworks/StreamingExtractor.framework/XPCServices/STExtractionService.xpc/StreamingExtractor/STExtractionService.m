@interface STExtractionService
+ (void)addActiveExtractionService:(id)a3;
+ (void)removeExtractionService:(id)a3;
+ (void)setProcessTerminated;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (id)initForClient:(id)a3 connection:(id)a4;
- (void)_checkProcessTerminated;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)extractionCompleteAtArchivePath:(id)a3;
- (void)extractionEnteredPassthroughMode;
- (void)processTerminated;
- (void)remote_finishStreamWithCompletionBlock:(id)a3;
- (void)remote_prepareForExtractionToPath:(id)a3 sandboxExtensionToken:(id)a4 options:(id)a5 withCompletionBlock:(id)a6;
- (void)remote_supplyBytes:(id)a3 withCompletionBlock:(id)a4;
- (void)remote_suspendStreamWithCompletionBlock:(id)a3;
- (void)remote_terminateStreamWithError:(id)a3 completionBlock:(id)a4;
- (void)setExtractionProgress:(double)a3;
@end

@implementation STExtractionService

+ (void)addActiveExtractionService:(id)a3
{
  v4 = a3;
  v5 = sub_100000D08();
  v6 = objc_claimAutoreleasedReturnValue(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_claimAutoreleasedReturnValue([v4 sessionID]);
    v14 = 136446722;
    v15 = "+[STExtractionService addActiveExtractionService:]";
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [%@] %@", &v14, 0x20u);
  }

  v8 = a1;
  objc_sync_enter(v8);
  if (qword_10000D030)
  {
    [qword_10000D030 addObject:v4];
  }

  else
  {
    v9 = objc_claimAutoreleasedReturnValue([NSMutableSet setWithObject:v4]);
    v10 = qword_10000D030;
    qword_10000D030 = v9;
  }

  v11 = sub_100000D08();
  v12 = objc_claimAutoreleasedReturnValue(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [qword_10000D030 count];
    v14 = 136446466;
    v15 = "+[STExtractionService addActiveExtractionService:]";
    v16 = 2048;
    v17 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}s: %lu services", &v14, 0x16u);
  }

  objc_sync_exit(v8);
}

+ (void)removeExtractionService:(id)a3
{
  v4 = a3;
  v5 = sub_100000D08();
  v6 = objc_claimAutoreleasedReturnValue(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_claimAutoreleasedReturnValue([v4 sessionID]);
    v12 = 136446722;
    v13 = "+[STExtractionService removeExtractionService:]";
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}s: [%@] %@", &v12, 0x20u);
  }

  v8 = a1;
  objc_sync_enter(v8);
  if (qword_10000D030)
  {
    [qword_10000D030 removeObject:v4];
    v9 = sub_100000D08();
    v10 = objc_claimAutoreleasedReturnValue(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [qword_10000D030 count];
      v12 = 136446466;
      v13 = "+[STExtractionService removeExtractionService:]";
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}s: %lu services remaining", &v12, 0x16u);
    }
  }

  objc_sync_exit(v8);
}

+ (void)setProcessTerminated
{
  processTerminated = 1;
  v2 = a1;
  objc_sync_enter(v2);
  if (qword_10000D030)
  {
    v3 = sub_100000D08();
    v4 = objc_claimAutoreleasedReturnValue(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446466;
      v6 = "+[STExtractionService setProcessTerminated]";
      v7 = 2048;
      v8 = [qword_10000D030 count];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: suspending %lu extractions", &v5, 0x16u);
    }

    [qword_10000D030 enumerateObjectsUsingBlock:&stru_1000083D0];
  }

  objc_sync_exit(v2);
}

- (id)initForClient:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = STExtractionService;
  v8 = [(STExtractionService *)&v18 init];
  if (v8)
  {
    v9 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"StreamingExtraction session on behalf of %@", v6]);
    v10 = os_transaction_create([v9 UTF8String]);
    v11 = *(v8 + 1);
    *(v8 + 1) = v10;

    v12 = dispatch_queue_create("com.apple.StreamingExtractor.STExtractionServiceMessageQueue", 0);
    v13 = *(v8 + 5);
    *(v8 + 5) = v12;

    if (*(v8 + 5))
    {
      [v8 setSandboxToken:-1];
      *(v8 + 17) = 1;
      if (v7)
      {
        objc_storeWeak(v8 + 3, v7);
        v8[16] = 1;
        [v7 auditToken];
        *(v8 + 4) = v16;
        *(v8 + 5) = v17;
      }

      else
      {
        *&v14 = -1;
        *(&v14 + 1) = -1;
        *(v8 + 4) = v14;
        *(v8 + 5) = v14;
      }
    }

    else
    {
      sub_100003718(v8);
      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  sessionTransaction = self->_sessionTransaction;
  self->_sessionTransaction = 0;

  if ([(STExtractionService *)self sandboxToken]!= -1)
  {
    sandbox_extension_release([(STExtractionService *)self sandboxToken]);
    [(STExtractionService *)self setSandboxToken:-1];
  }

  v4.receiver = self;
  v4.super_class = STExtractionService;
  [(STExtractionService *)&v4 dealloc];
}

- (void)connectionInvalidated
{
  v3 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001EB4;
  block[3] = &unk_100008438;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)processTerminated
{
  if (processTerminated == 1)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002014;
    block[3] = &unk_100008438;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)_checkProcessTerminated
{
  if (processTerminated == 1 && [(STExtractionService *)self extractionValid])
  {
    v3 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self plugin]);

    if (v3)
    {
      if ([(STExtractionService *)self extractionPrepared])
      {
        v4 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self plugin]);
        [v4 suspendStreamWithCompletionBlock:&stru_100008458];
      }

      [(STExtractionService *)self invalidate];
    }

    else
    {
      sub_1000037D4();
    }
  }
}

- (void)remote_prepareForExtractionToPath:(id)a3 sandboxExtensionToken:(id)a4 options:(id)a5 withCompletionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000021B4;
  block[3] = &unk_1000084D0;
  v22 = v10;
  v23 = v13;
  block[4] = self;
  v20 = v12;
  v21 = v11;
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  dispatch_async(v14, block);
}

- (void)remote_supplyBytes:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002EA8;
  block[3] = &unk_100008520;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)remote_suspendStreamWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000030E4;
  v7[3] = &unk_100008548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)remote_finishStreamWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000031E4;
  v7[3] = &unk_100008548;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)remote_terminateStreamWithError:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self messageQueue]);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003308;
  block[3] = &unk_100008520;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)setExtractionProgress:(double)a3
{
  v5 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self xpcConnection]);
  v4 = objc_claimAutoreleasedReturnValue([v5 remoteObjectProxy]);
  [v4 remote_setExtractionProgress:a3];
}

- (void)extractionCompleteAtArchivePath:(id)a3
{
  v4 = a3;
  v6 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self xpcConnection]);
  v5 = objc_claimAutoreleasedReturnValue([v6 remoteObjectProxy]);
  [v5 remote_extractionCompleteAtArchivePath:v4];
}

- (void)extractionEnteredPassthroughMode
{
  v3 = objc_claimAutoreleasedReturnValue([(STExtractionService *)self xpcConnection]);
  v2 = objc_claimAutoreleasedReturnValue([v3 remoteObjectProxy]);
  [v2 remote_extractionEnteredPassthroughMode];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[4];
  *retstr->var0 = *self[2].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end
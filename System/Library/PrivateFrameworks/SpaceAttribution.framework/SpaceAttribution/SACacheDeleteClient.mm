@interface SACacheDeleteClient
- (BOOL)getAsyncPurgeableInfoWithTimeout:(unint64_t)a3 results:(id *)a4 error:(id *)a5;
- (SACacheDeleteClient)init;
- (void)getPurgeableInfo:(id)a3 cached:(BOOL)a4 timeout:(unint64_t)a5 completionHandler:(id)a6;
- (void)getPurgeableInfoAsync:(id)a3 cached:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SACacheDeleteClient

- (SACacheDeleteClient)init
{
  v8.receiver = self;
  v8.super_class = SACacheDeleteClient;
  v2 = [(SACacheDeleteClient *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.SACacheDeleteClient.purgeableInfoQueue", 0);
    purgeableInfoQueue = v2->_purgeableInfoQueue;
    v2->_purgeableInfoQueue = v3;

    v5 = dispatch_group_create();
    dataGroup = v2->_dataGroup;
    v2->_dataGroup = v5;

    v2->_nonCachedPurgeableDataCallInProgress = 0;
  }

  return v2;
}

- (void)getPurgeableInfo:(id)a3 cached:(BOOL)a4 timeout:(unint64_t)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a3;
  v10 = a6;
  v11 = dispatch_group_create();
  v12 = v11;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_100005430;
  v48 = sub_100005440;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_100005430;
  v42 = sub_100005440;
  v43 = 0;
  if (v8)
  {
    v13 = 0;
  }

  else
  {
    v13 = 4;
  }

  dispatch_group_enter(v11);
  v14 = dispatch_get_global_queue(0, 0);
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_100005448;
  v32 = &unk_100064890;
  v35 = &v44;
  v15 = v9;
  v37 = v13;
  v33 = v15;
  v36 = &v38;
  v16 = v12;
  v34 = v16;
  dispatch_async(v14, &v29);

  if (dispatch_group_wait(v16, a5))
  {
    v17 = SALog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10003B2C8(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    v50 = NSLocalizedDescriptionKey;
    v51 = @"Timeout getting CD purgeable info";
    v25 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1, v29, v30, v31, v32, v33];
    v26 = [NSError errorWithDomain:NSPOSIXErrorDomain code:60 userInfo:v25];
    v27 = v39[5];
    v39[5] = v26;

    if (v10)
    {
      v28 = 0;
LABEL_11:
      v10[2](v10, v28, v39[5]);
    }
  }

  else if (v10)
  {
    v28 = v45[5];
    goto LABEL_11;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);
}

- (void)getPurgeableInfoAsync:(id)a3 cached:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v10 = [(SACacheDeleteClient *)self purgeableInfoQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000057D0;
  block[3] = &unk_1000648B8;
  v27 = a4;
  block[4] = self;
  block[5] = &v28;
  dispatch_sync(v10, block);

  if (v29[3])
  {
    v11 = [(SACacheDeleteClient *)self dataGroup];
    dispatch_group_enter(v11);

    v12 = dispatch_get_global_queue(0, 0);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000058A0;
    v18[3] = &unk_100064980;
    v22 = a4;
    v19 = v8;
    v20 = self;
    v21 = v9;
    v13 = v9;
    dispatch_async(v12, v18);

    v14 = v19;
  }

  else
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"A non-cached purgeable data call is already in progress.";
    v15 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v16 = [NSError errorWithDomain:@"SACacheDeleteClientErrorDomain" code:101 userInfo:v15];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10000587C;
    v23[3] = &unk_1000648E0;
    v24 = v16;
    v25 = v9;
    v14 = v16;
    v17 = v9;
    dispatch_async(&_dispatch_main_q, v23);
  }

  _Block_object_dispose(&v28, 8);
}

- (BOOL)getAsyncPurgeableInfoWithTimeout:(unint64_t)a3 results:(id *)a4 error:(id *)a5
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100005430;
  v35 = sub_100005440;
  v36 = 0;
  v9 = [(SACacheDeleteClient *)self purgeableInfoQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005F10;
  block[3] = &unk_1000649A8;
  block[4] = self;
  block[5] = &v31;
  dispatch_sync(v9, block);

  v10 = v32[5];
  if (v10)
  {
    v11 = dispatch_group_wait(v10, a3);
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100005430;
    v28 = sub_100005440;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100005430;
    v22 = sub_100005440;
    v23 = 0;
    v12 = [(SACacheDeleteClient *)self purgeableInfoQueue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100005F5C;
    v17[3] = &unk_1000649D0;
    v17[4] = self;
    v17[5] = &v24;
    v17[6] = &v18;
    dispatch_sync(v12, v17);

    v13 = v11 == 0;
    if (v11)
    {
      if (a5)
      {
        v37 = NSLocalizedDescriptionKey;
        v38 = @"Timeout waiting for async purgeable info.";
        v14 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        *a5 = [NSError errorWithDomain:@"SACacheDeleteClientErrorDomain" code:100 userInfo:v14];
      }
    }

    else
    {
      if (a4)
      {
        *a4 = v25[5];
      }

      if (a5)
      {
        *a5 = v19[5];
      }
    }

    _Block_object_dispose(&v18, 8);

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    if (a5)
    {
      v39 = NSLocalizedDescriptionKey;
      v40 = @"No async call has been made yet.";
      v15 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *a5 = [NSError errorWithDomain:@"SACacheDeleteClientErrorDomain" code:101 userInfo:v15];
    }

    v13 = 0;
  }

  _Block_object_dispose(&v31, 8);

  return v13;
}

@end
@interface SUBPairedUnlockManager
- (SUBPairedUnlockManager)init;
- (void)stageStashBagWithManifest:(id)a3 completion:(id)a4;
- (void)supportsPairedUnlock:(id)a3;
@end

@implementation SUBPairedUnlockManager

- (SUBPairedUnlockManager)init
{
  v7.receiver = self;
  v7.super_class = SUBPairedUnlockManager;
  v2 = [(SUBPairedUnlockManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanosubridge.SUBPairedUnlockManager.callbackQueue", v3);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v4;
  }

  return v2;
}

- (void)supportsPairedUnlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[SFUnlockManager sharedUnlockManager];
    v6 = IDSDefaultPairedDevice;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10000E76C;
    v7[3] = &unk_10002D530;
    v7[4] = self;
    v8 = v4;
    [v5 unlockEnabledWithDevice:v6 completionHandler:v7];
  }
}

- (void)stageStashBagWithManifest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = softwareupdatebridge_log;
  v9 = os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v10 = v8;
      *buf = 134217984;
      v20 = [v6 length];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found manifest of size %lu", buf, 0xCu);
    }

    v11 = +[SFUnlockManager sharedUnlockManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000ED88;
    v15[3] = &unk_10002D530;
    v12 = &v16;
    v15[4] = self;
    v16 = v7;
    v13 = v7;
    [v11 establishStashBagWithManifest:v6 completionHandler:v15];
  }

  else
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No manifest, stashing without", buf, 2u);
    }

    v11 = +[SFUnlockManager sharedUnlockManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000EB78;
    v17[3] = &unk_10002D530;
    v12 = &v18;
    v17[4] = self;
    v18 = v7;
    v14 = v7;
    [v11 establishStashBagWithCompletionHandler:v17];
  }
}

@end
@interface NBUsageStorageReporter
- (BOOL)deleteDataForCategory:(id)category withError:(id *)error;
- (NBUsageStorageReporter)init;
- (float)sizeForCategory:(id)category;
- (id)usageBundleApps;
- (void)populateUsageBundleApps;
@end

@implementation NBUsageStorageReporter

- (NBUsageStorageReporter)init
{
  v12.receiver = self;
  v12.super_class = NBUsageStorageReporter;
  v2 = [(NBUsageStorageReporter *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanobackup.bridgeUsage", v3);
    backupQueue = v2->_backupQueue;
    v2->_backupQueue = v4;

    v6 = [[NBManager alloc] initWithQueue:v2->_backupQueue];
    backupManager = v2->_backupManager;
    v2->_backupManager = v6;

    v8 = v2->_backupQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_E84;
    block[3] = &unk_82A8;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)populateUsageBundleApps
{
  v3 = [PSUsageBundleApp usageBundleAppForBundleWithIdentifier:@"com.apple.Bridge" withTotalSize:0.0];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  cachedCategorySizes = self->_cachedCategorySizes;
  self->_cachedCategorySizes = v5;

  backupQueue = self->_backupQueue;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_123C;
  v16 = &unk_82F8;
  selfCopy = self;
  v8 = v3;
  v18 = v8;
  v9 = v4;
  v19 = v9;
  v20 = &v21;
  dispatch_sync(backupQueue, &v13);
  [v9 sortUsingComparator:{&stru_8338, v13, v14, v15, v16, selfCopy}];
  *&v10 = v22[3];
  [v8 setTotalSize:v10];
  [v8 setCategories:v9];
  v25 = v8;
  v11 = [NSArray arrayWithObjects:&v25 count:1];
  cachedBundleApps = self->_cachedBundleApps;
  self->_cachedBundleApps = v11;

  _Block_object_dispose(&v21, 8);
}

- (id)usageBundleApps
{
  cachedBundleApps = self->_cachedBundleApps;
  if (!cachedBundleApps)
  {
    [(NBUsageStorageReporter *)self populateUsageBundleApps];
    cachedBundleApps = self->_cachedBundleApps;
  }

  return cachedBundleApps;
}

- (BOOL)deleteDataForCategory:(id)category withError:(id *)error
{
  categoryCopy = category;
  identifier = [categoryCopy identifier];

  if (identifier && (v8 = [NSUUID alloc], [categoryCopy identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "initWithUUIDString:", v9), v9, v10))
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_16C4;
    v24 = sub_16D4;
    v25 = 0;
    backupQueue = self->_backupQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_16DC;
    block[3] = &unk_8360;
    v18 = &v20;
    block[4] = self;
    v16 = v10;
    v17 = categoryCopy;
    errorCopy = error;
    v12 = v10;
    dispatch_sync(backupQueue, block);
    v13 = v21[5] == 0;

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (float)sizeForCategory:(id)category
{
  identifier = [category identifier];
  v5 = [(NSMutableDictionary *)self->_cachedCategorySizes objectForKeyedSubscript:identifier];
  [v5 floatValue];
  v7 = v6;

  return v7;
}

@end
@interface ICCloudContentTasteResponseCacheManager
+ (id)sharedCloudContentTasteResponseCacheManager;
- (BOOL)setCachedContentTasteUpdateResponse:(id)a3 forConnectionConfiguration:(id)a4;
- (ICCloudContentTasteResponseCacheManager)init;
- (id)_init;
- (id)_mediaContentTasteCacheFilePathForAccount:(id)a3;
- (id)_prepareArchiveWithContentTasteReponse:(id)a3;
- (id)_prepareCachedResponseFromArchiveAtPath:(id)a3;
- (id)getCachedContentTasteResponseForConnectionConfiguration:(id)a3;
- (void)removeAllCachedContentTasteResponses;
- (void)removeCachedContentTasteResponseForConnectionConfiguration:(id)a3;
@end

@implementation ICCloudContentTasteResponseCacheManager

- (id)_prepareCachedResponseFromArchiveAtPath:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:v3];

    if (v5)
    {
      v6 = [NSData dataWithContentsOfFile:v3];
      if ([v6 length])
      {
        v7 = objc_opt_class();
        v8 = objc_opt_class();
        v9 = objc_opt_class();
        v10 = [NSSet setWithObjects:v7, v8, v9, objc_opt_class(), 0];
        v11 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v10 fromData:v6 error:0];

        if (!v11)
        {
          goto LABEL_8;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_8;
        }
      }

      v11 = 0;
LABEL_8:

      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)_prepareArchiveWithContentTasteReponse:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mediaContentTasteCacheFilePathForAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 userIdentityStore];
  v6 = [v4 userIdentity];
  v13 = 0;
  v7 = [v5 DSIDForUserIdentity:v6 outError:&v13];
  v8 = v13;

  if (v8 || !v7)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v15 = self;
      v16 = 2048;
      v17 = v4;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Could not get DSID for configuration=%p. error=%{public}@", buf, 0x20u);
    }

    v11 = 0;
  }

  else
  {
    mediaContentTasteCacheDirectoryPath = self->_mediaContentTasteCacheDirectoryPath;
    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"SyncResponse-%llu", [v7 unsignedLongLongValue]);
    v11 = [(NSString *)mediaContentTasteCacheDirectoryPath stringByAppendingPathComponent:v10];
  }

  return v11;
}

- (void)removeCachedContentTasteResponseForConnectionConfiguration:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C6E70;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(accessQueue, v7);
}

- (void)removeAllCachedContentTasteResponses
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7020;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (BOOL)setCachedContentTasteUpdateResponse:(id)a3 forConnectionConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  accessQueue = self->_accessQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C73BC;
  v12[3] = &unk_1001DCFD0;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(accessQueue, v12);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v6;
}

- (id)getCachedContentTasteResponseForConnectionConfiguration:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000C772C;
  v16 = sub_1000C773C;
  v17 = 0;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7744;
  block[3] = &unk_1001DCFA8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(accessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_init
{
  v8.receiver = self;
  v8.super_class = ICCloudContentTasteResponseCacheManager;
  v2 = [(ICCloudContentTasteResponseCacheManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.amp.iTunesCloud.ICCloudContentTasteResponseCacheManager.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library/Caches/com.apple.itunescloud/MediaContentTaste"];
    mediaContentTasteCacheDirectoryPath = v2->_mediaContentTasteCacheDirectoryPath;
    v2->_mediaContentTasteCacheDirectoryPath = v5;
  }

  return v2;
}

- (ICCloudContentTasteResponseCacheManager)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use sharedCloudContentTasteResponseCacheManager"];

  return 0;
}

+ (id)sharedCloudContentTasteResponseCacheManager
{
  if (qword_100213CB0 != -1)
  {
    dispatch_once(&qword_100213CB0, &stru_1001DCF80);
  }

  v3 = qword_100213CA8;

  return v3;
}

@end
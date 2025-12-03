@interface ICCloudContentTasteResponseCacheManager
+ (id)sharedCloudContentTasteResponseCacheManager;
- (BOOL)setCachedContentTasteUpdateResponse:(id)response forConnectionConfiguration:(id)configuration;
- (ICCloudContentTasteResponseCacheManager)init;
- (id)_init;
- (id)_mediaContentTasteCacheFilePathForAccount:(id)account;
- (id)_prepareArchiveWithContentTasteReponse:(id)reponse;
- (id)_prepareCachedResponseFromArchiveAtPath:(id)path;
- (id)getCachedContentTasteResponseForConnectionConfiguration:(id)configuration;
- (void)removeAllCachedContentTasteResponses;
- (void)removeCachedContentTasteResponseForConnectionConfiguration:(id)configuration;
@end

@implementation ICCloudContentTasteResponseCacheManager

- (id)_prepareCachedResponseFromArchiveAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 fileExistsAtPath:pathCopy];

    if (v5)
    {
      v6 = [NSData dataWithContentsOfFile:pathCopy];
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

- (id)_prepareArchiveWithContentTasteReponse:(id)reponse
{
  reponseCopy = reponse;
  if (reponseCopy)
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:reponseCopy requiringSecureCoding:1 error:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_mediaContentTasteCacheFilePathForAccount:(id)account
{
  accountCopy = account;
  userIdentityStore = [accountCopy userIdentityStore];
  userIdentity = [accountCopy userIdentity];
  v13 = 0;
  v7 = [userIdentityStore DSIDForUserIdentity:userIdentity outError:&v13];
  v8 = v13;

  if (v8 || !v7)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v16 = 2048;
      v17 = accountCopy;
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

- (void)removeCachedContentTasteResponseForConnectionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C6E70;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
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

- (BOOL)setCachedContentTasteUpdateResponse:(id)response forConnectionConfiguration:(id)configuration
{
  responseCopy = response;
  configurationCopy = configuration;
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
  v13 = configurationCopy;
  v14 = responseCopy;
  v15 = &v16;
  v9 = responseCopy;
  v10 = configurationCopy;
  dispatch_sync(accessQueue, v12);
  LOBYTE(responseCopy) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return responseCopy;
}

- (id)getCachedContentTasteResponseForConnectionConfiguration:(id)configuration
{
  configurationCopy = configuration;
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
  v10 = configurationCopy;
  v11 = &v12;
  v6 = configurationCopy;
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
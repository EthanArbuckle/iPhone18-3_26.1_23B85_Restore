@interface CloudArtworkImportSetupOperation
+ (CloudArtworkImportSetupOperation)sharedSetupOperation;
- (void)start;
@end

@implementation CloudArtworkImportSetupOperation

- (void)start
{
  v2 = +[NSFileManager defaultManager];
  v3 = sub_1000E4F18();
  v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting up artwork cache directory.", buf, 2u);
  }

  v21 = 0;
  v5 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v21];
  v6 = v21;
  if ((v5 & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v3;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error creating directory. path=%{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  v8 = [v2 enumeratorAtPath:v3];
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    do
    {
      v11 = [v3 stringByAppendingPathComponent:v10];
      v20 = v6;
      v12 = [v2 removeItemAtPath:v11 error:&v20];
      v13 = v20;

      if ((v12 & 1) == 0)
      {
        v14 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [v3 stringByAppendingPathComponent:v10];
          *buf = 138543362;
          v23 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error removing item path=%{public}@", buf, 0xCu);
        }
      }

      nextObject2 = [v8 nextObject];

      v10 = nextObject2;
      v6 = v13;
    }

    while (nextObject2);
  }

  else
  {
    v13 = v6;
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Artwork cache setup complete.", buf, 2u);
  }

  v19.receiver = self;
  v19.super_class = CloudArtworkImportSetupOperation;
  [(CloudArtworkImportSetupOperation *)&v19 finishWithError:v13];
}

+ (CloudArtworkImportSetupOperation)sharedSetupOperation
{
  if (qword_100213EB0 != -1)
  {
    dispatch_once(&qword_100213EB0, &stru_1001DF7E8);
  }

  v3 = qword_100213EB8;

  return v3;
}

@end
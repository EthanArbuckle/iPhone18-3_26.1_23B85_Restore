@interface ScratchManager
+ (id)_baseDirectoryPath;
+ (id)_containerDirectoryPath;
+ (id)_directoryPathForDownloadID:(int64_t)a3 createIfNeeded:(BOOL)a4 atBasePath:(id)a5;
+ (id)baseDirectoryPath;
+ (id)containerDirectoryPath;
+ (id)directoryPathForDownloadID:(int64_t)a3 assetID:(int64_t)a4 kind:(id)a5 createIfNeeded:(BOOL)a6;
+ (id)directoryPathForDownloadID:(int64_t)a3 kind:(id)a4 createIfNeeded:(BOOL)a5;
@end

@implementation ScratchManager

+ (id)baseDirectoryPath
{
  v2 = [a1 _baseDirectoryPath];
  v3 = objc_alloc_init(NSFileManager);
  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

  return v2;
}

+ (id)containerDirectoryPath
{
  v2 = [a1 _containerDirectoryPath];
  v3 = objc_alloc_init(NSFileManager);
  [v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0];

  return v2;
}

+ (id)directoryPathForDownloadID:(int64_t)a3 assetID:(int64_t)a4 kind:(id)a5 createIfNeeded:(BOOL)a6
{
  v7 = [a1 directoryPathForDownloadID:a3 kind:a5 createIfNeeded:a6];
  v8 = [NSString stringWithFormat:@"%lld", a4];
  v9 = [v7 stringByAppendingPathComponent:v8];

  return v9;
}

+ (id)directoryPathForDownloadID:(int64_t)a3 kind:(id)a4 createIfNeeded:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = +[ApplicationWorkspace defaultWorkspace];
  if ([v9 isMultiUser])
  {
    IsEBookKind = SSDownloadKindIsEBookKind();

    if (IsEBookKind)
    {
      v11 = [a1 _containerDirectoryPath];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = [a1 _baseDirectoryPath];
LABEL_6:
  v12 = v11;
  if (!v11)
  {
    v12 = [a1 _baseDirectoryPath];
  }

  v13 = [a1 _directoryPathForDownloadID:a3 createIfNeeded:v5 atBasePath:v12];

  return v13;
}

+ (id)_baseDirectoryPath
{
  if (qword_100383FA0 != -1)
  {
    sub_100272464();
  }

  v3 = qword_100383F98;

  return v3;
}

+ (id)_containerDirectoryPath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018B664;
  block[3] = &unk_100327170;
  block[4] = a1;
  if (qword_100383FB0 != -1)
  {
    dispatch_once(&qword_100383FB0, block);
  }

  v2 = qword_100383FA8;

  return v2;
}

+ (id)_directoryPathForDownloadID:(int64_t)a3 createIfNeeded:(BOOL)a4 atBasePath:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [NSString stringWithFormat:@"%lld", a3];
  v9 = [v7 stringByAppendingPathComponent:v8];

  if (v5 && v9)
  {
    v10 = objc_alloc_init(NSFileManager);
    [v10 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v9;
}

@end
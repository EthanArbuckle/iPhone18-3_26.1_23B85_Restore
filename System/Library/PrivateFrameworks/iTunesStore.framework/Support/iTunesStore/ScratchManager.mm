@interface ScratchManager
+ (id)_baseDirectoryPath;
+ (id)_containerDirectoryPath;
+ (id)_directoryPathForDownloadID:(int64_t)d createIfNeeded:(BOOL)needed atBasePath:(id)path;
+ (id)baseDirectoryPath;
+ (id)containerDirectoryPath;
+ (id)directoryPathForDownloadID:(int64_t)d assetID:(int64_t)iD kind:(id)kind createIfNeeded:(BOOL)needed;
+ (id)directoryPathForDownloadID:(int64_t)d kind:(id)kind createIfNeeded:(BOOL)needed;
@end

@implementation ScratchManager

+ (id)baseDirectoryPath
{
  _baseDirectoryPath = [self _baseDirectoryPath];
  v3 = objc_alloc_init(NSFileManager);
  [v3 createDirectoryAtPath:_baseDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];

  return _baseDirectoryPath;
}

+ (id)containerDirectoryPath
{
  _containerDirectoryPath = [self _containerDirectoryPath];
  v3 = objc_alloc_init(NSFileManager);
  [v3 createDirectoryAtPath:_containerDirectoryPath withIntermediateDirectories:1 attributes:0 error:0];

  return _containerDirectoryPath;
}

+ (id)directoryPathForDownloadID:(int64_t)d assetID:(int64_t)iD kind:(id)kind createIfNeeded:(BOOL)needed
{
  v7 = [self directoryPathForDownloadID:d kind:kind createIfNeeded:needed];
  v8 = [NSString stringWithFormat:@"%lld", iD];
  v9 = [v7 stringByAppendingPathComponent:v8];

  return v9;
}

+ (id)directoryPathForDownloadID:(int64_t)d kind:(id)kind createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  kindCopy = kind;
  v9 = +[ApplicationWorkspace defaultWorkspace];
  if ([v9 isMultiUser])
  {
    IsEBookKind = SSDownloadKindIsEBookKind();

    if (IsEBookKind)
    {
      _containerDirectoryPath = [self _containerDirectoryPath];
      goto LABEL_6;
    }
  }

  else
  {
  }

  _containerDirectoryPath = [self _baseDirectoryPath];
LABEL_6:
  _baseDirectoryPath = _containerDirectoryPath;
  if (!_containerDirectoryPath)
  {
    _baseDirectoryPath = [self _baseDirectoryPath];
  }

  v13 = [self _directoryPathForDownloadID:d createIfNeeded:neededCopy atBasePath:_baseDirectoryPath];

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
  block[4] = self;
  if (qword_100383FB0 != -1)
  {
    dispatch_once(&qword_100383FB0, block);
  }

  v2 = qword_100383FA8;

  return v2;
}

+ (id)_directoryPathForDownloadID:(int64_t)d createIfNeeded:(BOOL)needed atBasePath:(id)path
{
  neededCopy = needed;
  pathCopy = path;
  v8 = [NSString stringWithFormat:@"%lld", d];
  v9 = [pathCopy stringByAppendingPathComponent:v8];

  if (neededCopy && v9)
  {
    v10 = objc_alloc_init(NSFileManager);
    [v10 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v9;
}

@end
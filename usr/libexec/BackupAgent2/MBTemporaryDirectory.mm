@interface MBTemporaryDirectory
+ (id)sharedTemporaryDirectoryForTest:(id)test error:(id *)error;
+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)by error:(id *)error;
+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)path identifiedBy:(id)by error:(id *)error;
+ (id)userTemporaryDirectoryForPersona:(id)persona identifiedBy:(id)by error:(id *)error;
+ (id)userTemporaryDirectoryForTest:(id)test error:(id *)error;
- (BOOL)_purgeContentsAt:(int)at rPath:(id)path error:(id *)error;
- (BOOL)disposeWithError:(id *)error;
- (BOOL)purgeContentsWithError:(id *)error;
- (id)_initWithExistingFsRepPath:(char *)path identifier:(id)identifier;
- (id)description;
- (void)dealloc;
- (void)disposeWithoutDeleting;
@end

@implementation MBTemporaryDirectory

+ (id)sharedTemporaryDirectoryForTest:(id)test error:(id *)error
{
  testCopy = test;
  if (![testCopy length])
  {
    sub_10009D724();
  }

  if (qword_10011E348 != -1)
  {
    sub_10009D710();
  }

  v6 = sub_100037754(qword_10011E340, testCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:testCopy];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForTest:(id)test error:(id *)error
{
  testCopy = test;
  if (![testCopy length])
  {
    sub_10009D7BC();
  }

  if (qword_10011E358 != -1)
  {
    sub_10009D7A8();
  }

  v6 = sub_100037754(qword_10011E350, testCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:testCopy];
  }

  return v6;
}

+ (id)sharedTemporaryDirectoryIdentifiedBy:(id)by error:(id *)error
{
  byCopy = by;
  if (![byCopy length])
  {
    sub_10009D7FC();
  }

  if (qword_10011E368 != -1)
  {
    sub_10009D7E8();
  }

  v6 = sub_100037754(qword_10011E360, byCopy, error);
  if (v6)
  {
    v6 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v6 identifier:byCopy];
  }

  return v6;
}

+ (id)userTemporaryDirectoryForPersona:(id)persona identifiedBy:(id)by error:(id *)error
{
  personaCopy = persona;
  byCopy = by;
  if (!personaCopy)
  {
    sub_10009D854();
  }

  v9 = byCopy;
  if (![byCopy length])
  {
    sub_10009D828();
  }

  volumeMountPoint = [personaCopy volumeMountPoint];
  v11 = [volumeMountPoint stringByAppendingPathComponent:@"tmp"];
  v12 = [v11 stringByAppendingPathComponent:@"com.apple.backup"];
  fileSystemRepresentation = [v12 fileSystemRepresentation];

  sub_100037B38(fileSystemRepresentation);
  v14 = sub_100037754(fileSystemRepresentation, v9, error);
  if (v14)
  {
    v14 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v14 identifier:v9];
  }

  return v14;
}

+ (id)temporaryDirectoryOnSameVolumeAsPath:(id)path identifiedBy:(id)by error:(id *)error
{
  pathCopy = path;
  byCopy = by;
  if (!pathCopy)
  {
    sub_10009D9A0();
  }

  v9 = byCopy;
  if (![byCopy length])
  {
    sub_10009D974();
  }

  if (!error)
  {
    sub_10009D948();
  }

  v10 = [MBFileSystemManager volumeMountPointForFile:pathCopy error:error];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringByAppendingPathComponent:@"tmp"];
    v13 = [v12 stringByAppendingPathComponent:@"com.apple.backup"];
    fileSystemRepresentation = [v13 fileSystemRepresentation];

    sub_100037B38(fileSystemRepresentation);
    v15 = sub_100037754(fileSystemRepresentation, v9, error);
    if (v15)
    {
      v15 = [[MBTemporaryDirectory alloc] _initWithExistingFsRepPath:v15 identifier:v9];
    }
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *error;
      *buf = 138412546;
      v21 = pathCopy;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= could not find mount point for %@: %@", buf, 0x16u);
      v19 = *error;
      _MBLog();
    }

    v15 = 0;
  }

  return v15;
}

- (id)_initWithExistingFsRepPath:(char *)path identifier:(id)identifier
{
  identifierCopy = identifier;
  if (!path)
  {
    sub_10009D9F8();
  }

  v8 = identifierCopy;
  if (!identifierCopy)
  {
    sub_10009D9CC();
  }

  v13.receiver = self;
  v13.super_class = MBTemporaryDirectory;
  v9 = [(MBTemporaryDirectory *)&v13 init];
  if (v9)
  {
    v10 = [NSString mb_stringWithFileSystemRepresentation:path];
    path = v9->_path;
    v9->_path = v10;

    v9->_fsRepPath = path;
    objc_storeStrong(&v9->_identifier, identifier);
  }

  return v9;
}

- (BOOL)purgeContentsWithError:(id *)error
{
  path = [(MBTemporaryDirectory *)self path];
  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];

  v7 = sub_100037EA4([stringByDeletingLastPathComponent fileSystemRepresentation]);
  v8 = +[NSFileManager defaultManager];
  path2 = [(MBTemporaryDirectory *)self path];
  v22 = 0;
  v10 = [v8 moveItemAtPath:path2 toPath:v7 error:&v22];
  v11 = v22;

  if (v10)
  {
    path3 = [(MBTemporaryDirectory *)self path];
    v21 = v11;
    v13 = [v8 createDirectoryAtPath:path3 withIntermediateDirectories:0 attributes:0 error:&v21];
    v14 = v21;

    if (v13)
    {
      v15 = [(MBTemporaryDirectory *)self _purgeContentsAt:4294967294 rPath:v7 error:error];
    }

    else
    {
      v18 = MBGetDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to create new contents directory: %@", buf, 0x16u);
        _MBLog();
      }

      if (error)
      {
        v19 = v14;
        v15 = 0;
        *error = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    v11 = v14;
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "=tmpdir= %@ failed to move contents aside to purge: %@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      v17 = v11;
      v15 = 0;
      *error = v11;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_purgeContentsAt:(int)at rPath:(id)path error:(id *)error
{
  pathCopy = path;
  if ([&stru_1000FF270 isEqualToString:pathCopy])
  {

    pathCopy = @".";
  }

  v9 = +[NSMutableArray array];
  v10 = removefile_state_alloc();
  removefile_state_set(v10, 4u, v9);
  removefile_state_set(v10, 3u, sub_1000383B8);
  v11 = removefileat(at, [(__CFString *)pathCopy fileSystemRepresentation], v10, 0x301u);
  removefile_state_free(v10);
  if (v11)
  {
    v12 = [MBError errorWithErrors:v9];
    v13 = MBGetDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "=tmpdir= failed to delete %@: %@", buf, 0x16u);
      _MBLog();
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
    }
  }

  return v11 == 0;
}

- (void)disposeWithoutDeleting
{
  obj = self;
  objc_sync_enter(obj);
  obj->_disposed = 1;
  objc_sync_exit(obj);
}

- (BOOL)disposeWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_disposed)
  {
    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:selfCopy file:@"MBTemporaryDirectory.m" lineNumber:277 description:{@"TempDir: cannot be disposed multiple times %@", selfCopy}];
  }

  selfCopy->_disposed = 1;
  path = [(MBTemporaryDirectory *)selfCopy path];
  v7 = [(MBTemporaryDirectory *)selfCopy _purgeContentsAt:4294967294 rPath:path error:error];

  objc_sync_exit(selfCopy);
  return v7;
}

- (void)dealloc
{
  if (!self->_disposed)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "=tmpdir= %@ was not disposed before dealloc", buf, 0xCu);
      _MBLog();
    }
  }

  free(self->_fsRepPath);
  self->_fsRepPath = 0;
  v4.receiver = self;
  v4.super_class = MBTemporaryDirectory;
  [(MBTemporaryDirectory *)&v4 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  Name = class_getName(v3);
  identifier = self->_identifier;
  return [NSString stringWithFormat:@"<%s: %@, path: %s>", Name, identifier, self->_fsRepPath];
}

@end
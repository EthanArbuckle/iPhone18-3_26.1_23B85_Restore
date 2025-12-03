@interface SDCacheEnumerator
+ (id)sysdiagnoseEnumerator:(id)enumerator WithVolume:(id)volume WithFlags:(unint64_t)flags;
+ (id)validFileSubstrings;
- (BOOL)isSysdiagnoseFile:(id)file;
- (id)initCacheEnumerator;
- (id)initCacheEnumeratorWithVolume:(id)volume WithFlags:(unint64_t)flags;
- (id)nextSysdiagnoseFile;
- (id)nextValidURL;
@end

@implementation SDCacheEnumerator

+ (id)validFileSubstrings
{
  if (qword_100010428 != -1)
  {
    sub_1000054F4();
  }

  v3 = qword_100010420;

  return v3;
}

+ (id)sysdiagnoseEnumerator:(id)enumerator WithVolume:(id)volume WithFlags:(unint64_t)flags
{
  enumeratorCopy = enumerator;
  v8 = [NSURL fileURLWithPath:volume isDirectory:1];
  path = [v8 path];
  if ([enumeratorCopy hasPrefix:path])
  {
    v10 = [enumeratorCopy substringFromIndex:{objc_msgSend(path, "length")}];

    enumeratorCopy = v10;
  }

  v11 = +[SDCacheEnumerator sysdiagnoseInternalDirectory];
  v12 = [enumeratorCopy isEqualToString:v11];

  if (v12)
  {
    v13 = [NSURL URLWithString:enumeratorCopy];
  }

  else
  {
    path2 = [v8 path];
    v23[0] = path2;
    v23[1] = enumeratorCopy;
    v15 = [NSArray arrayWithObjects:v23 count:2];
    v13 = [NSURL fileURLWithPathComponents:v15];
  }

  v16 = sub_100004398();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    fileSystemRepresentation = [v13 fileSystemRepresentation];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Creating an enumerator at %{public}s", buf, 0xCu);
  }

  if (v13)
  {
    v17 = +[NSFileManager defaultManager];
    v18 = [NSArray arrayWithObjects:NSURLIsDirectoryKey, NSURLNameKey, NSURLPathKey, NSURLCreationDateKey, 0];
    v19 = [v17 enumeratorAtURL:v13 includingPropertiesForKeys:v18 options:flags errorHandler:&stru_10000C770];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)initCacheEnumeratorWithVolume:(id)volume WithFlags:(unint64_t)flags
{
  volumeCopy = volume;
  v29.receiver = self;
  v29.super_class = SDCacheEnumerator;
  v7 = [(SDCacheEnumerator *)&v29 init];
  if (v7)
  {
    if (!volumeCopy)
    {
      volumeCopy = @"/";
    }

    v8 = +[SDCacheEnumerator sysdiagnoseDirectory];
    v33[0] = v8;
    v9 = +[SDCacheEnumerator sysdiagnoseInternalDirectory];
    v33[1] = v9;
    v10 = [NSArray arrayWithObjects:v33 count:2];

    v11 = objc_alloc_init(NSMutableArray);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          v17 = [objc_opt_class() sysdiagnoseEnumerator:v16 WithVolume:volumeCopy WithFlags:flags];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = sub_100004398();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              uTF8String = [v16 UTF8String];
              *buf = 136446210;
              v31 = uTF8String;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "CacheEnumerator: got nil enumerator for dir '%{public}s'", buf, 0xCu);
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
      }

      while (v13);
    }

    v20 = [v11 copy];
    enumerators = v7->_enumerators;
    v7->_enumerators = v20;

    v22 = v7;
  }

  return v7;
}

- (id)initCacheEnumerator
{
  v3 = [[SDCacheEnumerator alloc] initCacheEnumeratorWithVolume:0];

  return v3;
}

- (BOOL)isSysdiagnoseFile:(id)file
{
  fileCopy = file;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = +[SDCacheEnumerator validFileSubstrings];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([fileCopy rangeOfString:*(*(&v9 + 1) + 8 * i)] != 0x7FFFFFFFFFFFFFFFLL)
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (id)nextSysdiagnoseFile
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(SDCacheEnumerator *)self enumerators];
  v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v20 = *v23;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = 0;
        v6 = *(*(&v22 + 1) + 8 * i);
        while (1)
        {
          nextObject = [v6 nextObject];

          if (!nextObject)
          {
            break;
          }

          v5 = nextObject;
          while (1)
          {
            v8 = objc_autoreleasePoolPush();
            v21 = 0;
            [v5 getResourceValue:&v21 forKey:NSURLIsDirectoryKey error:0];
            v9 = v21;
            if (([v9 BOOLValue] & 1) == 0)
            {
              break;
            }

            objc_autoreleasePoolPop(v8);
            nextObject2 = [v6 nextObject];

            v5 = nextObject2;
            if (!nextObject2)
            {
              goto LABEL_17;
            }
          }

          relativePath = [v5 relativePath];
          pathComponents = [relativePath pathComponents];
          firstObject = [pathComponents firstObject];

          v14 = [(SDCacheEnumerator *)self isSysdiagnoseFile:firstObject];
          if (v14)
          {
            v17 = v5;
          }

          else
          {
            [v6 skipDescendants];
          }

          objc_autoreleasePoolPop(v8);
          if (v14)
          {

            v15 = v17;
            goto LABEL_20;
          }
        }

LABEL_17:
        ;
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (id)nextValidURL
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  enumerators = [(SDCacheEnumerator *)self enumerators];
  v4 = [enumerators countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(enumerators);
        }

        v8 = 0;
        v9 = *(*(&v15 + 1) + 8 * i);
        while (1)
        {
          nextObject = [v9 nextObject];

          if (!nextObject)
          {
            break;
          }

          path = [nextObject path];
          lastPathComponent = [path lastPathComponent];
          v13 = [(SDCacheEnumerator *)self isSysdiagnoseFile:lastPathComponent];

          v8 = nextObject;
          if (v13)
          {
            goto LABEL_14;
          }
        }
      }

      v5 = [enumerators countByEnumeratingWithState:&v15 objects:v19 count:16];
      nextObject = 0;
    }

    while (v5);
  }

  else
  {
    nextObject = 0;
  }

LABEL_14:

  return nextObject;
}

@end
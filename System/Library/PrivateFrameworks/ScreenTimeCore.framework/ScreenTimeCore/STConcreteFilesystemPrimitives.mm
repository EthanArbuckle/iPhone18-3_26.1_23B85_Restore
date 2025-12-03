@interface STConcreteFilesystemPrimitives
- (BOOL)createDirectoryAtURL:(id)l error:(id *)error;
- (BOOL)moveFileAtURL:(id)l toURL:(id)rL error:(id *)error;
- (BOOL)removeFileURL:(id)l error:(id *)error;
- (id)fileSizeOfDataAtURL:(id)l error:(id *)error;
- (void)enumerateRegularFilesInDirectoryAtURL:(id)l withBlock:(id)block;
@end

@implementation STConcreteFilesystemPrimitives

- (BOOL)createDirectoryAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[NSFileManager defaultManager];
  LOBYTE(error) = [v6 createDirectoryAtURL:lCopy withIntermediateDirectories:1 attributes:0 error:error];

  return error;
}

- (BOOL)removeFileURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[NSFileManager defaultManager];
  LOBYTE(error) = [v6 removeItemAtURL:lCopy error:error];

  return error;
}

- (id)fileSizeOfDataAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[NSFileManager defaultManager];
  path = [lCopy path];

  v8 = [v6 attributesOfItemAtPath:path error:error];

  if (v8)
  {
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 fileSize]);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)moveFileAtURL:(id)l toURL:(id)rL error:(id *)error
{
  rLCopy = rL;
  lCopy = l;
  v9 = +[NSFileManager defaultManager];
  LOBYTE(error) = [v9 moveItemAtURL:lCopy toURL:rLCopy error:error];

  return error;
}

- (void)enumerateRegularFilesInDirectoryAtURL:(id)l withBlock:(id)block
{
  lCopy = l;
  blockCopy = block;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v6 = +[NSFileManager defaultManager];
  v35 = NSURLIsRegularFileKey;
  v7 = [NSArray arrayWithObjects:&v35 count:1];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000166F0;
  v27[3] = &unk_1001A3108;
  v8 = blockCopy;
  v28 = v8;
  v29 = &v30;
  v9 = [v6 enumeratorAtURL:lCopy includingPropertiesForKeys:v7 options:1 errorHandler:v27];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v10)
  {
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v21 = 0;
        v22 = 0;
        v15 = [v13 getResourceValue:&v22 forKey:NSURLIsRegularFileKey error:&v21];
        v16 = v22;
        v17 = v21;
        if (v15)
        {
          if (![v16 BOOLValue] || ((*(v8 + 2))(v8, v13, 0, v31 + 3), (v31[3] & 1) == 0))
          {
            v18 = 1;
            goto LABEL_12;
          }
        }

        else
        {
          (*(v8 + 2))(v8, 0, v17, v31 + 3);
        }

        v18 = 0;
LABEL_12:

        objc_autoreleasePoolPop(v14);
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v10);
  }

LABEL_15:

  _Block_object_dispose(&v30, 8);
}

@end
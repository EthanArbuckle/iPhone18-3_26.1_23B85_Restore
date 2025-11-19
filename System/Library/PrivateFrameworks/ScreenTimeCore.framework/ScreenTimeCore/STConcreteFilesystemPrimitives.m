@interface STConcreteFilesystemPrimitives
- (BOOL)createDirectoryAtURL:(id)a3 error:(id *)a4;
- (BOOL)moveFileAtURL:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)removeFileURL:(id)a3 error:(id *)a4;
- (id)fileSizeOfDataAtURL:(id)a3 error:(id *)a4;
- (void)enumerateRegularFilesInDirectoryAtURL:(id)a3 withBlock:(id)a4;
@end

@implementation STConcreteFilesystemPrimitives

- (BOOL)createDirectoryAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  LOBYTE(a4) = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:a4];

  return a4;
}

- (BOOL)removeFileURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  LOBYTE(a4) = [v6 removeItemAtURL:v5 error:a4];

  return a4;
}

- (id)fileSizeOfDataAtURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSFileManager defaultManager];
  v7 = [v5 path];

  v8 = [v6 attributesOfItemAtPath:v7 error:a4];

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

- (BOOL)moveFileAtURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = +[NSFileManager defaultManager];
  LOBYTE(a5) = [v9 moveItemAtURL:v8 toURL:v7 error:a5];

  return a5;
}

- (void)enumerateRegularFilesInDirectoryAtURL:(id)a3 withBlock:(id)a4
{
  v19 = a3;
  v5 = a4;
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
  v8 = v5;
  v28 = v8;
  v29 = &v30;
  v9 = [v6 enumeratorAtURL:v19 includingPropertiesForKeys:v7 options:1 errorHandler:v27];

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
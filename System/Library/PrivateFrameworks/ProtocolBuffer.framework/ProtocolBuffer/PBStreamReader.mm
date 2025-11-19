@interface PBStreamReader
+ (id)readProtoBuffersOfClass:(Class)a3 fromFile:(id)a4 error:(id *)a5;
@end

@implementation PBStreamReader

+ (id)readProtoBuffersOfClass:(Class)a3 fromFile:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v8 fileExistsAtPath:v7])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7 options:0 error:a5];
    v12 = v11;
    if (*a5)
    {

      objc_autoreleasePoolPop(v10);
      v13 = 0;
    }

    else
    {
      context = v10;
      v14 = [[PBDataReader alloc] initWithData:v11];
      if ([(PBDataReader *)v14 hasMoreData])
      {
        do
        {
          v15 = objc_autoreleasePoolPush();
          v16 = [(PBDataReader *)v14 readProtoBuffer];
          if (v16)
          {
            v17 = [[a3 alloc] initWithData:v16];
            if (v17)
            {
              [v9 addObject:v17];
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        while ([(PBDataReader *)v14 hasMoreData]);
      }

      if ([(PBDataReader *)v14 hasError])
      {
        *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PBRequesterErrorDomain" code:6005 userInfo:0];
      }

      objc_autoreleasePoolPop(context);
      v13 = v9;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
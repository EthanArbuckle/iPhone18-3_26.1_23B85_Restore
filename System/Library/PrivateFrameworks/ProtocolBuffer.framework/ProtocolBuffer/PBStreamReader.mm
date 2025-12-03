@interface PBStreamReader
+ (id)readProtoBuffersOfClass:(Class)class fromFile:(id)file error:(id *)error;
@end

@implementation PBStreamReader

+ (id)readProtoBuffersOfClass:(Class)class fromFile:(id)file error:(id *)error
{
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:fileCopy])
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = objc_autoreleasePoolPush();
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:fileCopy options:0 error:error];
    v12 = v11;
    if (*error)
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
          readProtoBuffer = [(PBDataReader *)v14 readProtoBuffer];
          if (readProtoBuffer)
          {
            v17 = [[class alloc] initWithData:readProtoBuffer];
            if (v17)
            {
              [array addObject:v17];
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        while ([(PBDataReader *)v14 hasMoreData]);
      }

      if ([(PBDataReader *)v14 hasError])
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"PBRequesterErrorDomain" code:6005 userInfo:0];
      }

      objc_autoreleasePoolPop(context);
      v13 = array;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end
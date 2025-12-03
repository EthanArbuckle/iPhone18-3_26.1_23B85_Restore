@interface PBStreamWriter
+ (id)writeProtoBuffers:(id)buffers toFile:(id)file;
@end

@implementation PBStreamWriter

+ (id)writeProtoBuffers:(id)buffers toFile:(id)file
{
  v33 = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  fileCopy = file;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([buffersCopy count])
  {
    v24 = defaultManager;
    v25 = fileCopy;
    context = objc_autoreleasePoolPush();
    v8 = objc_alloc_init(PBDataWriter);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = buffersCopy;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = objc_alloc_init(PBDataWriter);
          [v14 writeTo:{v16, context}];
          immutableData = [(PBDataWriter *)v16 immutableData];
          [(PBDataWriter *)v8 writeProtoBuffer:immutableData];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    immutableData2 = [(PBDataWriter *)v8 immutableData];
    v26 = 0;
    fileCopy = v25;
    [immutableData2 writeToFile:v25 options:0 error:&v26];
    v19 = v26;

    objc_autoreleasePoolPop(context);
    defaultManager = v24;
    if (v19)
    {
      [v24 removeItemAtPath:v25 error:0];
    }
  }

  else
  {
    v31 = 0;
    [defaultManager removeItemAtPath:fileCopy error:&v31];
    v19 = v31;
  }

  v20 = v19;

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

@end
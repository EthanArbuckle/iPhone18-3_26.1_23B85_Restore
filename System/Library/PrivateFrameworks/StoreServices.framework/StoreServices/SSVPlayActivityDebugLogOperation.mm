@interface SSVPlayActivityDebugLogOperation
- (void)main;
@end

@implementation SSVPlayActivityDebugLogOperation

- (void)main
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(SSVPlayActivityDebugLogOperation *)self playActivityEvents];
  if ([v2 count])
  {
    v3 = NSTemporaryDirectory();
    v4 = [v3 stringByAppendingPathComponent:@"com.apple.PlayActivityFeed"];

    v17 = [MEMORY[0x1E696AC08] defaultManager];
    [v17 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
    v16 = [v4 stringByAppendingPathComponent:@"PlayActivityEvents.log"];
    v5 = [MEMORY[0x1E695DFC0] outputStreamToFileAtPath:? append:?];
    [v5 open];
    v6 = [@"\n-----------------------------------------\n" dataUsingEncoding:4];
    v7 = objc_alloc_init(SSVPlayActivityFeedSerialization);
    v8 = +[SSDevice currentDevice];
    v9 = [v8 storeFrontIdentifier];
    [(SSVPlayActivityFeedSerialization *)v7 setCurrentStoreFrontID:v9];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = v2;
    v10 = v2;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(SSVPlayActivityFeedSerialization *)v7 propertyListObjectWithPlayActivityEvent:*(*(&v19 + 1) + 8 * i)];
          if (v15 && [MEMORY[0x1E696AE40] writePropertyList:v15 toStream:v5 format:100 options:0 error:0] >= 1)
          {
            [v5 write:objc_msgSend(v6 maxLength:{"bytes"), objc_msgSend(v6, "length")}];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v5 close];
    v2 = v18;
  }
}

@end
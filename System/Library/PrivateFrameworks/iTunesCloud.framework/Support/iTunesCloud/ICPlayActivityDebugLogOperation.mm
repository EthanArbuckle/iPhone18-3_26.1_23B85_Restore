@interface ICPlayActivityDebugLogOperation
- (void)main;
@end

@implementation ICPlayActivityDebugLogOperation

- (void)main
{
  v2 = [(ICPlayActivityDebugLogOperation *)self playActivityEvents];
  if ([v2 count])
  {
    v3 = NSTemporaryDirectory();
    v4 = [v3 stringByAppendingPathComponent:@"com.apple.PlayActivityFeed"];

    v19 = +[NSFileManager defaultManager];
    [v19 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];
    v20 = v4;
    v18 = [v4 stringByAppendingPathComponent:@"PlayActivityEvents.log"];
    v5 = [NSOutputStream outputStreamToFileAtPath:"outputStreamToFileAtPath:append:" append:?];
    [v5 open];
    v6 = [@"\n-----------------------------------------\n" dataUsingEncoding:4];
    v7 = objc_alloc_init(ICPlayActivityFeedSerialization);
    v8 = +[ICUserIdentityStore defaultIdentityStore];
    v9 = [v8 localStoreAccountProperties];

    v17 = v9;
    v10 = [v9 storefrontIdentifier];
    [(ICPlayActivityFeedSerialization *)v7 setCurrentStoreFrontID:v10];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v2;
    v11 = v2;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(ICPlayActivityFeedSerialization *)v7 propertyListObjectWithPlayActivityEvent:*(*(&v22 + 1) + 8 * v15)];
          if (v16 && [NSPropertyListSerialization writePropertyList:v16 toStream:v5 format:100 options:0 error:0]>= 1)
          {
            [v5 write:objc_msgSend(v6 maxLength:{"bytes"), objc_msgSend(v6, "length")}];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    [v5 close];
    v2 = v21;
  }
}

@end
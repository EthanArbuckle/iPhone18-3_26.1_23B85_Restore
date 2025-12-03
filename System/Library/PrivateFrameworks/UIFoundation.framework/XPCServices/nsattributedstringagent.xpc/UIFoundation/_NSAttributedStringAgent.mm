@interface _NSAttributedStringAgent
- (void)readFromData:(id)data orFileURL:(id)l options:(id)options extensionTokens:(id)tokens withReply:(id)reply;
- (void)renderHTML:(id)l options:(id)options extensionTokens:(id)tokens withReply:(id)reply;
@end

@implementation _NSAttributedStringAgent

- (void)renderHTML:(id)l options:(id)options extensionTokens:(id)tokens withReply:(id)reply
{
  lCopy = l;
  optionsCopy = options;
  tokensCopy = tokens;
  replyCopy = reply;
  if (!sub_1000016D8())
  {
    [NSException raise:NSInternalInconsistencyException format:@"Failed to load WebKit."];
  }

  v13 = +[NSMutableArray array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = tokensCopy;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      v18 = 0;
      do
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v37 + 1) + 8 * v18) bytes];
        v19 = [NSNumber numberWithLongLong:sandbox_extension_consume()];
        [v13 addObject:v19];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v16);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000017B8;
  v34[3] = &unk_100004228;
  v20 = v13;
  v35 = v20;
  v21 = replyCopy;
  v36 = v21;
  v22 = objc_retainBlock(v34);
  v23 = [optionsCopy objectForKeyedSubscript:@"DocumentType"];
  v24 = [v23 isEqualToString:@"NSWebArchive"];

  if (v24)
  {
    v25 = [optionsCopy objectForKeyedSubscript:@"BaseURL"];
    if (!v25)
    {
      v25 = objc_alloc_init(NSURL);
    }

    v26 = [optionsCopy objectForKey:@"TextEncodingName"];
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = &stru_1000043A8;
    }

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100001904;
    v30[3] = &unk_100004250;
    v31 = lCopy;
    v32 = v27;
    v33 = v25;
    v28 = v25;
    v29 = v27;
    [NSAttributedString _loadFromHTMLWithOptions:optionsCopy contentLoader:v30 completionHandler:v22];
  }

  else
  {
    [NSAttributedString loadFromHTMLWithData:lCopy options:optionsCopy completionHandler:v22];
  }
}

- (void)readFromData:(id)data orFileURL:(id)l options:(id)options extensionTokens:(id)tokens withReply:(id)reply
{
  dataCopy = data;
  lCopy = l;
  optionsCopy = options;
  tokensCopy = tokens;
  replyCopy = reply;
  if (!sub_1000016D8())
  {
    [NSException raise:NSInternalInconsistencyException format:@"Failed to load WebKit."];
  }

  v15 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = tokensCopy;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v17)
  {
    v18 = *v33;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v32 + 1) + 8 * i) bytes];
        v20 = [NSNumber numberWithLongLong:sandbox_extension_consume()];
        [v15 addObject:v20];
      }

      v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100001C38;
  v29[3] = &unk_100004278;
  v21 = v15;
  v30 = v21;
  v22 = replyCopy;
  v31 = v22;
  v23 = lCopy;
  v24 = dataCopy;
  v25 = optionsCopy;
  v26 = v29;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v27 = off_1000086C0;
  v40 = off_1000086C0;
  if (!off_1000086C0)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100001F3C;
    v36[3] = &unk_1000041C8;
    v36[4] = &v37;
    sub_100001F3C(v36);
    v27 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v27)
  {
    sub_1000020F0();
  }

  v27(v23, v24, v25, v26);
}

@end
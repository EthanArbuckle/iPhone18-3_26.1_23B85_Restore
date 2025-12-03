@interface UNThumbnailProvider
+ (void)initialize;
- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler;
@end

@implementation UNThumbnailProvider

+ (void)initialize
{
  if (qword_100008178 != -1)
  {
    sub_100000FBC();
  }
}

- (void)provideThumbnailForFileRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = [NSAdaptiveImageGlyph alloc];
  v31 = requestCopy;
  item = [requestCopy item];
  data = [item data];
  v9 = [v6 initWithImageContent:data];

  strikes = [v9 strikes];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [strikes count]);

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  strikes2 = [v9 strikes];
  v15 = [strikes2 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(strikes2);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        [v11 addObject:{objc_msgSend(v19, "cgImage")}];
        [v19 alignmentInset];
        *&v20 = v20;
        v21 = [NSNumber numberWithFloat:v20];
        [v12 addObject:v21];

        [v19 alignmentInset];
        *&v23 = v22;
        v24 = [NSNumber numberWithFloat:v23];
        [v13 addObject:v24];
      }

      v16 = [strikes2 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v16);
  }

  v25 = [QLThumbnailReply replyWithImages:v11];
  v37[0] = @"contentIdentifier";
  contentIdentifier = [v9 contentIdentifier];
  v38[0] = contentIdentifier;
  v37[1] = @"shortDescription";
  contentDescription = [v9 contentDescription];
  v38[1] = contentDescription;
  v38[2] = v12;
  v37[2] = @"alignmentInsetWidths";
  v37[3] = @"alignmentInsetHeights";
  v38[3] = v13;
  v28 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
  metadata = [v25 metadata];
  [metadata setAdditionalProperties:v28];

  handlerCopy[2](handlerCopy, v25, 0);
  os_activity_scope_leave(&state);
}

@end
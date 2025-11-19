@interface UNThumbnailProvider
+ (void)initialize;
- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation UNThumbnailProvider

+ (void)initialize
{
  if (qword_100008178 != -1)
  {
    sub_100000FBC();
  }
}

- (void)provideThumbnailForFileRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v30 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = [NSAdaptiveImageGlyph alloc];
  v31 = v5;
  v7 = [v5 item];
  v8 = [v7 data];
  v9 = [v6 initWithImageContent:v8];

  v10 = [v9 strikes];
  v11 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v10 count]);

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = [v9 strikes];
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
          objc_enumerationMutation(v14);
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

      v16 = [v14 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v16);
  }

  v25 = [QLThumbnailReply replyWithImages:v11];
  v37[0] = @"contentIdentifier";
  v26 = [v9 contentIdentifier];
  v38[0] = v26;
  v37[1] = @"shortDescription";
  v27 = [v9 contentDescription];
  v38[1] = v27;
  v38[2] = v12;
  v37[2] = @"alignmentInsetWidths";
  v37[3] = @"alignmentInsetHeights";
  v38[3] = v13;
  v28 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
  v29 = [v25 metadata];
  [v29 setAdditionalProperties:v28];

  v30[2](v30, v25, 0);
  os_activity_scope_leave(&state);
}

@end
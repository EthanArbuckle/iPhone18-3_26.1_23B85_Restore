@interface VUIActionShareSheet
- (CGRect)sourceRect;
- (VUIActionShareSheet)initWithContextData:(id)a3 sourceRect:(CGRect)a4;
- (VUIActionShareSheet)initWithContextData:(id)a3 sourceView:(id)a4;
- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4;
@end

@implementation VUIActionShareSheet

- (VUIActionShareSheet)initWithContextData:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31.receiver = self;
  v31.super_class = VUIActionShareSheet;
  v8 = [(VUIActionShareSheet *)&v31 init];
  if (v8)
  {
    v9 = [v6 vui_stringForKey:@"shareURL"];
    urlString = v8->_urlString;
    v8->_urlString = v9;

    v11 = [v6 vui_stringForKey:@"shareTitle"];
    title = v8->_title;
    v8->_title = v11;

    v13 = [v6 vui_stringForKey:@"shareSubtitle"];
    subtitle = v8->_subtitle;
    v8->_subtitle = v13;

    v15 = [v6 vui_stringForKey:@"shareImageURL"];
    imageURLStr = v8->_imageURLStr;
    v8->_imageURLStr = v15;

    v17 = [v6 vui_stringForKey:@"shareSharedWatchId"];
    sharedWatchId = v8->_sharedWatchId;
    v8->_sharedWatchId = v17;

    v19 = [v6 vui_URLForKey:@"shareSharedWatchUrl"];
    sharedWatchUrl = v8->_sharedWatchUrl;
    v8->_sharedWatchUrl = v19;

    v21 = [v6 vui_dictionaryForKey:@"groupActivityMetadata"];
    groupActivityMetadata = v8->_groupActivityMetadata;
    v8->_groupActivityMetadata = v21;

    objc_storeStrong(&v8->_sourceView, a4);
    [v7 bounds];
    v8->_sourceRect.origin.x = v23;
    v8->_sourceRect.origin.y = v24;
    v8->_sourceRect.size.width = v25;
    v8->_sourceRect.size.height = v26;
    v27 = [v6 vui_stringForKey:@"previewURL"];
    previewUrlStr = v8->_previewUrlStr;
    v8->_previewUrlStr = v27;

    if (!v8->_urlString || !v8->_sourceView || ![(NSString *)v8->_imageURLStr length])
    {
      v29 = VUIDefaultLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [VUIActionShareSheet initWithContextData:v29 sourceView:?];
      }
    }
  }

  return v8;
}

- (VUIActionShareSheet)initWithContextData:(id)a3 sourceRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [[VUIActionShareSheet alloc] initWithContextData:v9 sourceView:0];

  [(VUIActionShareSheet *)v10 setSourceRect:x, y, width, height];
  return v10;
}

- (void)performWithTargetResponder:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_urlString)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    sourceView = v6;
    if ((isKindOfClass & 1) == 0)
    {
      sourceView = self->_sourceView;
    }

    v10 = sourceView;
    groupActivityMetadata = self->_groupActivityMetadata;
    if (groupActivityMetadata && [(NSDictionary *)groupActivityMetadata count])
    {
      [VUIShareActivityViewController_iOS shareMediaItem:self->_urlString previewURLString:0 title:self->_title subtitle:self->_subtitle imageURLStr:self->_imageURLStr groupActivityMetadata:self->_groupActivityMetadata sourceView:v10 completionHandler:v7];
    }

    else
    {
      [VUIShareActivityViewController_iOS shareMediaItem:self->_urlString previewURLString:0 title:self->_title subtitle:self->_subtitle imageURLStr:self->_imageURLStr sharedWatchId:self->_sharedWatchId sharedWatchUrl:self->_sharedWatchUrl sourceView:v10 completionHandler:v7];
    }
  }

  else
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VUIActionShareSheet performWithTargetResponder:v12 completionHandler:?];
    }

    if (v7)
    {
      v7[2](v7, 1);
    }
  }
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
@interface VUIActionShareSheet
- (CGRect)sourceRect;
- (VUIActionShareSheet)initWithContextData:(id)data sourceRect:(CGRect)rect;
- (VUIActionShareSheet)initWithContextData:(id)data sourceView:(id)view;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionShareSheet

- (VUIActionShareSheet)initWithContextData:(id)data sourceView:(id)view
{
  dataCopy = data;
  viewCopy = view;
  v31.receiver = self;
  v31.super_class = VUIActionShareSheet;
  v8 = [(VUIActionShareSheet *)&v31 init];
  if (v8)
  {
    v9 = [dataCopy vui_stringForKey:@"shareURL"];
    urlString = v8->_urlString;
    v8->_urlString = v9;

    v11 = [dataCopy vui_stringForKey:@"shareTitle"];
    title = v8->_title;
    v8->_title = v11;

    v13 = [dataCopy vui_stringForKey:@"shareSubtitle"];
    subtitle = v8->_subtitle;
    v8->_subtitle = v13;

    v15 = [dataCopy vui_stringForKey:@"shareImageURL"];
    imageURLStr = v8->_imageURLStr;
    v8->_imageURLStr = v15;

    v17 = [dataCopy vui_stringForKey:@"shareSharedWatchId"];
    sharedWatchId = v8->_sharedWatchId;
    v8->_sharedWatchId = v17;

    v19 = [dataCopy vui_URLForKey:@"shareSharedWatchUrl"];
    sharedWatchUrl = v8->_sharedWatchUrl;
    v8->_sharedWatchUrl = v19;

    v21 = [dataCopy vui_dictionaryForKey:@"groupActivityMetadata"];
    groupActivityMetadata = v8->_groupActivityMetadata;
    v8->_groupActivityMetadata = v21;

    objc_storeStrong(&v8->_sourceView, view);
    [viewCopy bounds];
    v8->_sourceRect.origin.x = v23;
    v8->_sourceRect.origin.y = v24;
    v8->_sourceRect.size.width = v25;
    v8->_sourceRect.size.height = v26;
    v27 = [dataCopy vui_stringForKey:@"previewURL"];
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

- (VUIActionShareSheet)initWithContextData:(id)data sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  v10 = [[VUIActionShareSheet alloc] initWithContextData:dataCopy sourceView:0];

  [(VUIActionShareSheet *)v10 setSourceRect:x, y, width, height];
  return v10;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  responderCopy = responder;
  handlerCopy = handler;
  if (self->_urlString)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    sourceView = responderCopy;
    if ((isKindOfClass & 1) == 0)
    {
      sourceView = self->_sourceView;
    }

    v10 = sourceView;
    groupActivityMetadata = self->_groupActivityMetadata;
    if (groupActivityMetadata && [(NSDictionary *)groupActivityMetadata count])
    {
      [VUIShareActivityViewController_iOS shareMediaItem:self->_urlString previewURLString:0 title:self->_title subtitle:self->_subtitle imageURLStr:self->_imageURLStr groupActivityMetadata:self->_groupActivityMetadata sourceView:v10 completionHandler:handlerCopy];
    }

    else
    {
      [VUIShareActivityViewController_iOS shareMediaItem:self->_urlString previewURLString:0 title:self->_title subtitle:self->_subtitle imageURLStr:self->_imageURLStr sharedWatchId:self->_sharedWatchId sharedWatchUrl:self->_sharedWatchUrl sourceView:v10 completionHandler:handlerCopy];
    }
  }

  else
  {
    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [VUIActionShareSheet performWithTargetResponder:v12 completionHandler:?];
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
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
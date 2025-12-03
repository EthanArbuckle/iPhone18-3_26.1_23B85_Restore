@interface VUIShareActivityViewController_iOS
+ (BOOL)isAppleMusicURL:(id)l;
+ (void)shareMediaItem:(id)item previewURLString:(id)string title:(id)title subtitle:(id)subtitle imageURLStr:(id)str groupActivityMetadata:(id)metadata sourceView:(id)view sourceRect:(CGRect)self0 userInterfaceStyle:(unint64_t)self1 completionHandler:(id)self2;
+ (void)shareMediaItem:(id)item previewURLString:(id)string title:(id)title subtitle:(id)subtitle imageURLStr:(id)str groupActivityMetadata:(id)metadata sourceView:(id)view userInterfaceStyle:(unint64_t)self0 completionHandler:(id)self1;
+ (void)shareMediaItem:(id)item previewURLString:(id)string title:(id)title subtitle:(id)subtitle imageURLStr:(id)str sharedWatchId:(id)id sharedWatchUrl:(id)url sourceView:(id)self0 userInterfaceStyle:(unint64_t)self1 completionHandler:(id)self2;
+ (void)shareMediaWithShareSheet:(id)sheet;
- (VUIShareActivityViewController_iOS)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (VUIShareActivityViewController_iOS)initWithShareURL:(id)l sharePlayActivity:(id)activity applicationActivities:(id)activities;
- (void)_prepareActivity:(id)activity completion:(id)completion;
- (void)dealloc;
- (void)updateActivityItems;
@end

@implementation VUIShareActivityViewController_iOS

+ (void)shareMediaItem:(id)item previewURLString:(id)string title:(id)title subtitle:(id)subtitle imageURLStr:(id)str sharedWatchId:(id)id sharedWatchUrl:(id)url sourceView:(id)self0 userInterfaceStyle:(unint64_t)self1 completionHandler:(id)self2
{
  v18 = MEMORY[0x1E695DF90];
  handlerCopy = handler;
  viewCopy = view;
  urlCopy = url;
  idCopy = id;
  strCopy = str;
  subtitleCopy = subtitle;
  titleCopy = title;
  stringCopy = string;
  itemCopy = item;
  dictionary = [v18 dictionary];
  [dictionary vui_setObjectIfNotNil:idCopy forKey:@"sharedWatchId"];

  [dictionary vui_setObjectIfNotNil:urlCopy forKey:@"sharedWatchUrl"];
  [dictionary vui_setObjectIfNotNil:titleCopy forKey:@"title"];
  [dictionary vui_setObjectIfNotNil:subtitleCopy forKey:@"subtitle"];
  [dictionary vui_setObjectIfNotNil:strCopy forKey:@"imageUrlFormat"];
  [objc_opt_class() shareMediaItem:itemCopy previewURLString:stringCopy title:titleCopy subtitle:subtitleCopy imageURLStr:strCopy groupActivityMetadata:dictionary sourceView:viewCopy userInterfaceStyle:style completionHandler:handlerCopy];
}

+ (void)shareMediaItem:(id)item previewURLString:(id)string title:(id)title subtitle:(id)subtitle imageURLStr:(id)str groupActivityMetadata:(id)metadata sourceView:(id)view userInterfaceStyle:(unint64_t)self0 completionHandler:(id)self1
{
  handlerCopy = handler;
  viewCopy = view;
  metadataCopy = metadata;
  strCopy = str;
  subtitleCopy = subtitle;
  titleCopy = title;
  stringCopy = string;
  itemCopy = item;
  [viewCopy bounds];
  [self shareMediaItem:itemCopy previewURLString:stringCopy title:titleCopy subtitle:subtitleCopy imageURLStr:strCopy groupActivityMetadata:metadataCopy sourceView:viewCopy sourceRect:style userInterfaceStyle:handlerCopy completionHandler:?];
}

+ (void)shareMediaItem:(id)item previewURLString:(id)string title:(id)title subtitle:(id)subtitle imageURLStr:(id)str groupActivityMetadata:(id)metadata sourceView:(id)view sourceRect:(CGRect)self0 userInterfaceStyle:(unint64_t)self1 completionHandler:(id)self2
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v58 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  titleCopy = title;
  subtitleCopy = subtitle;
  strCopy = str;
  metadataCopy = metadata;
  viewCopy = view;
  handlerCopy = handler;
  if ([itemCopy length])
  {
    v28 = 0;
    if (titleCopy && strCopy)
    {
      v29 = [MEMORY[0x1E695DFF8] URLWithString:itemCopy];
      v28 = -[VUIShareURLActivityItem initWithURL:title:subtitle:isMusicItem:]([VUIShareURLActivityItem alloc], "initWithURL:title:subtitle:isMusicItem:", v29, titleCopy, subtitleCopy, [self isAppleMusicURL:v29]);
      [(VUIShareURLActivityItem *)v28 fetch];
    }

    v30 = [MEMORY[0x1E695DF70] arrayWithObject:{*MEMORY[0x1E69CDA70], viewCopy}];
    v53 = [metadataCopy vui_stringForKey:@"sharedWatchId"];
    v52 = [metadataCopy vui_URLForKey:@"sharedWatchUrl"];
    v31 = VUIDefaultLogObject();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    v50 = handlerCopy;
    v51 = strCopy;
    if (metadataCopy && v53 && v52)
    {
      if (v32)
      {
        *buf = 138412290;
        v57 = v53;
        _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIShareActivityViewController:: Adding group activity to activity items for sharedWatchId %@", buf, 0xCu);
      }

      v33 = [[VUIGroupWatchActivityPreviewMetadata alloc] initWithContextData:metadataCopy];
      v34 = [VUIGroupActivitiesManagerObjC itemProviderForActivityWithSharedWatchId:v53 sharedWatchUrl:v52 previewMetadata:v33 existingItemProvider:0];
      if (!v34)
      {
        v35 = v30;
        v36 = v28;
        v37 = VUIDefaultLogObject();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "VUIShareActivityViewController:: failed to create group activity provider", buf, 2u);
        }

        v28 = v36;
        v30 = v35;
        strCopy = v51;
      }
    }

    else
    {
      if (v32)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIShareActivityViewController:: Not adding group activity to activity because shared watch id or url is missing", buf, 2u);
      }

      [v30 addObject:*MEMORY[0x1E69CDB18]];
      v34 = 0;
    }

    v48 = v28;
    v38 = [[VUIShareActivityViewController_iOS alloc] initWithShareURL:v28 sharePlayActivity:v34 applicationActivities:0];
    v39 = &stru_1F5DB25C0;
    if (titleCopy && [(__CFString *)titleCopy length])
    {
      v39 = titleCopy;
    }

    [(VUIShareActivityViewController_iOS *)v38 setItemTitle:v39];
    if (subtitleCopy)
    {
      if ([subtitleCopy length])
      {
        v40 = subtitleCopy;
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }

    v49 = subtitleCopy;
    [(VUIShareActivityViewController_iOS *)v38 setItemSubtitle:v40];
    if (strCopy && [strCopy length])
    {
      v41 = itemCopy;
      v42 = [MEMORY[0x1E695DFF8] URLWithString:strCopy];
      [(VUIShareActivityViewController_iOS *)v38 setItemImageURL:v42];
    }

    else
    {
      v41 = itemCopy;
      [(VUIShareActivityViewController_iOS *)v38 setItemImageURL:0];
    }

    [(VUIShareActivityViewController_iOS *)v38 setExcludedActivityTypes:v30];
    [(VUIShareActivityViewController_iOS *)v38 vui_setOverrideUserInterfaceStyle:style];
    v43 = +[VUIInterfaceFactory sharedInstance];
    controllerPresenter = [v43 controllerPresenter];

    [(VUIShareActivityViewController_iOS *)v38 setModalPresentationStyle:7];
    popoverPresentationController = [(VUIShareActivityViewController_iOS *)v38 popoverPresentationController];
    v46 = v30;
    viewCopy = v47;
    [popoverPresentationController setSourceView:v47];
    [popoverPresentationController setSourceRect:{x, y, width, height}];
    [popoverPresentationController _setCentersPopoverIfSourceViewNotSet:1];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __178__VUIShareActivityViewController_iOS_shareMediaItem_previewURLString_title_subtitle_imageURLStr_groupActivityMetadata_sourceView_sourceRect_userInterfaceStyle_completionHandler___block_invoke;
    v54[3] = &unk_1E872D7E0;
    handlerCopy = v50;
    v55 = v50;
    [controllerPresenter presentViewController:v38 animated:1 completion:v54];

    itemCopy = v41;
    subtitleCopy = v49;
    strCopy = v51;
  }
}

+ (void)shareMediaWithShareSheet:(id)sheet
{
  sheetCopy = sheet;
  v4 = objc_opt_class();
  urlString = [sheetCopy urlString];
  previewUrlStr = [sheetCopy previewUrlStr];
  title = [sheetCopy title];
  subtitle = [sheetCopy subtitle];
  imageURLStr = [sheetCopy imageURLStr];
  groupActivityMetadata = [sheetCopy groupActivityMetadata];
  sourceView = [sheetCopy sourceView];
  [sheetCopy sourceRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v4 shareMediaItem:urlString previewURLString:previewUrlStr title:title subtitle:subtitle imageURLStr:imageURLStr groupActivityMetadata:groupActivityMetadata sourceView:v12 sourceRect:v14 userInterfaceStyle:v16 completionHandler:{v18, sourceView, 0, 0}];
}

- (VUIShareActivityViewController_iOS)initWithShareURL:(id)l sharePlayActivity:(id)activity applicationActivities:(id)activities
{
  lCopy = l;
  activityCopy = activity;
  activitiesCopy = activities;
  array = [MEMORY[0x1E695DF70] array];
  if (lCopy)
  {
    objc_storeStrong(&self->_urlItem, l);
    v13 = [lCopy copy];
    dummyUrlItem = self->_dummyUrlItem;
    self->_dummyUrlItem = v13;

    [array addObject:self->_dummyUrlItem];
  }

  if (activityCopy)
  {
    objc_storeStrong(&self->_sharePlayItem, activity);
    [array addObject:activityCopy];
  }

  v15 = [(VUIShareActivityViewController_iOS *)self initWithActivityItems:array applicationActivities:activitiesCopy];

  return v15;
}

- (VUIShareActivityViewController_iOS)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  itemsCopy = items;
  v15.receiver = self;
  v15.super_class = VUIShareActivityViewController_iOS;
  v9 = [(VUIShareActivityViewController_iOS *)&v15 initWithActivityItems:itemsCopy applicationActivities:activities];
  if (v9)
  {
    firstObject = [itemsCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      firstObject2 = [itemsCopy firstObject];
      shareURL = [firstObject2 shareURL];
    }

    else
    {
      shareURL = 0;
    }

    objc_storeStrong(&v9->_sharingURL, shareURL);
    if (isKindOfClass)
    {
    }

    objc_storeStrong(&v9->_activityItems, items);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_updateActivityItems name:@"UpdateActivityItem" object:0];
  }

  return v9;
}

- (void)dealloc
{
  urlItem = [(VUIShareActivityViewController_iOS *)self urlItem];
  [urlItem cancel];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = VUIShareActivityViewController_iOS;
  [(VUIShareActivityViewController_iOS *)&v5 dealloc];
}

- (void)updateActivityItems
{
  array = [MEMORY[0x1E695DF70] array];
  urlItem = [(VUIShareActivityViewController_iOS *)self urlItem];
  [array vui_addObjectIfNotNil:urlItem];

  sharePlayItem = [(VUIShareActivityViewController_iOS *)self sharePlayItem];
  [array vui_addObjectIfNotNil:sharePlayItem];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VUIShareActivityViewController_iOS_updateActivityItems__block_invoke;
  block[3] = &unk_1E872F038;
  objc_copyWeak(&v9, &location);
  v8 = array;
  v6 = array;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_prepareActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  activityType = [activityCopy activityType];
  if ([activityType isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [objc_alloc(MEMORY[0x1E696EC90]) initWithURL:self->_sharingURL];
      urlItem = [(VUIShareActivityViewController_iOS *)self urlItem];
      metadata = [urlItem metadata];
      [v10 setMetadata:metadata];

      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__VUIShareActivityViewController_iOS__prepareActivity_completion___block_invoke;
      v13[3] = &unk_1E8730890;
      objc_copyWeak(&v16, &location);
      v15 = completionCopy;
      v14 = activityCopy;
      [v10 generateHTMLFragmentString:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);

      goto LABEL_7;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_7:
}

+ (BOOL)isAppleMusicURL:(id)l
{
  host = [l host];
  v4 = [host containsString:@"music.apple.com"];

  return v4;
}

@end
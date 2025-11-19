@interface VUIShareActivityViewController_iOS
+ (BOOL)isAppleMusicURL:(id)a3;
+ (void)shareMediaItem:(id)a3 previewURLString:(id)a4 title:(id)a5 subtitle:(id)a6 imageURLStr:(id)a7 groupActivityMetadata:(id)a8 sourceView:(id)a9 sourceRect:(CGRect)a10 userInterfaceStyle:(unint64_t)a11 completionHandler:(id)a12;
+ (void)shareMediaItem:(id)a3 previewURLString:(id)a4 title:(id)a5 subtitle:(id)a6 imageURLStr:(id)a7 groupActivityMetadata:(id)a8 sourceView:(id)a9 userInterfaceStyle:(unint64_t)a10 completionHandler:(id)a11;
+ (void)shareMediaItem:(id)a3 previewURLString:(id)a4 title:(id)a5 subtitle:(id)a6 imageURLStr:(id)a7 sharedWatchId:(id)a8 sharedWatchUrl:(id)a9 sourceView:(id)a10 userInterfaceStyle:(unint64_t)a11 completionHandler:(id)a12;
+ (void)shareMediaWithShareSheet:(id)a3;
- (VUIShareActivityViewController_iOS)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (VUIShareActivityViewController_iOS)initWithShareURL:(id)a3 sharePlayActivity:(id)a4 applicationActivities:(id)a5;
- (void)_prepareActivity:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)updateActivityItems;
@end

@implementation VUIShareActivityViewController_iOS

+ (void)shareMediaItem:(id)a3 previewURLString:(id)a4 title:(id)a5 subtitle:(id)a6 imageURLStr:(id)a7 sharedWatchId:(id)a8 sharedWatchUrl:(id)a9 sourceView:(id)a10 userInterfaceStyle:(unint64_t)a11 completionHandler:(id)a12
{
  v18 = MEMORY[0x1E695DF90];
  v27 = a12;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v28 = [v18 dictionary];
  [v28 vui_setObjectIfNotNil:v21 forKey:@"sharedWatchId"];

  [v28 vui_setObjectIfNotNil:v20 forKey:@"sharedWatchUrl"];
  [v28 vui_setObjectIfNotNil:v24 forKey:@"title"];
  [v28 vui_setObjectIfNotNil:v23 forKey:@"subtitle"];
  [v28 vui_setObjectIfNotNil:v22 forKey:@"imageUrlFormat"];
  [objc_opt_class() shareMediaItem:v26 previewURLString:v25 title:v24 subtitle:v23 imageURLStr:v22 groupActivityMetadata:v28 sourceView:v19 userInterfaceStyle:a11 completionHandler:v27];
}

+ (void)shareMediaItem:(id)a3 previewURLString:(id)a4 title:(id)a5 subtitle:(id)a6 imageURLStr:(id)a7 groupActivityMetadata:(id)a8 sourceView:(id)a9 userInterfaceStyle:(unint64_t)a10 completionHandler:(id)a11
{
  v18 = a11;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  [v19 bounds];
  [a1 shareMediaItem:v25 previewURLString:v24 title:v23 subtitle:v22 imageURLStr:v21 groupActivityMetadata:v20 sourceView:v19 sourceRect:a10 userInterfaceStyle:v18 completionHandler:?];
}

+ (void)shareMediaItem:(id)a3 previewURLString:(id)a4 title:(id)a5 subtitle:(id)a6 imageURLStr:(id)a7 groupActivityMetadata:(id)a8 sourceView:(id)a9 sourceRect:(CGRect)a10 userInterfaceStyle:(unint64_t)a11 completionHandler:(id)a12
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v58 = *MEMORY[0x1E69E9840];
  v21 = a3;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a12;
  if ([v21 length])
  {
    v28 = 0;
    if (v22 && v24)
    {
      v29 = [MEMORY[0x1E695DFF8] URLWithString:v21];
      v28 = -[VUIShareURLActivityItem initWithURL:title:subtitle:isMusicItem:]([VUIShareURLActivityItem alloc], "initWithURL:title:subtitle:isMusicItem:", v29, v22, v23, [a1 isAppleMusicURL:v29]);
      [(VUIShareURLActivityItem *)v28 fetch];
    }

    v30 = [MEMORY[0x1E695DF70] arrayWithObject:{*MEMORY[0x1E69CDA70], v26}];
    v53 = [v25 vui_stringForKey:@"sharedWatchId"];
    v52 = [v25 vui_URLForKey:@"sharedWatchUrl"];
    v31 = VUIDefaultLogObject();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    v50 = v27;
    v51 = v24;
    if (v25 && v53 && v52)
    {
      if (v32)
      {
        *buf = 138412290;
        v57 = v53;
        _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIShareActivityViewController:: Adding group activity to activity items for sharedWatchId %@", buf, 0xCu);
      }

      v33 = [[VUIGroupWatchActivityPreviewMetadata alloc] initWithContextData:v25];
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
        v24 = v51;
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
    if (v22 && [(__CFString *)v22 length])
    {
      v39 = v22;
    }

    [(VUIShareActivityViewController_iOS *)v38 setItemTitle:v39];
    if (v23)
    {
      if ([v23 length])
      {
        v40 = v23;
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

    v49 = v23;
    [(VUIShareActivityViewController_iOS *)v38 setItemSubtitle:v40];
    if (v24 && [v24 length])
    {
      v41 = v21;
      v42 = [MEMORY[0x1E695DFF8] URLWithString:v24];
      [(VUIShareActivityViewController_iOS *)v38 setItemImageURL:v42];
    }

    else
    {
      v41 = v21;
      [(VUIShareActivityViewController_iOS *)v38 setItemImageURL:0];
    }

    [(VUIShareActivityViewController_iOS *)v38 setExcludedActivityTypes:v30];
    [(VUIShareActivityViewController_iOS *)v38 vui_setOverrideUserInterfaceStyle:a11];
    v43 = +[VUIInterfaceFactory sharedInstance];
    v44 = [v43 controllerPresenter];

    [(VUIShareActivityViewController_iOS *)v38 setModalPresentationStyle:7];
    v45 = [(VUIShareActivityViewController_iOS *)v38 popoverPresentationController];
    v46 = v30;
    v26 = v47;
    [v45 setSourceView:v47];
    [v45 setSourceRect:{x, y, width, height}];
    [v45 _setCentersPopoverIfSourceViewNotSet:1];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __178__VUIShareActivityViewController_iOS_shareMediaItem_previewURLString_title_subtitle_imageURLStr_groupActivityMetadata_sourceView_sourceRect_userInterfaceStyle_completionHandler___block_invoke;
    v54[3] = &unk_1E872D7E0;
    v27 = v50;
    v55 = v50;
    [v44 presentViewController:v38 animated:1 completion:v54];

    v21 = v41;
    v23 = v49;
    v24 = v51;
  }
}

+ (void)shareMediaWithShareSheet:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v19 = [v3 urlString];
  v5 = [v3 previewUrlStr];
  v6 = [v3 title];
  v7 = [v3 subtitle];
  v8 = [v3 imageURLStr];
  v9 = [v3 groupActivityMetadata];
  v10 = [v3 sourceView];
  [v3 sourceRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v4 shareMediaItem:v19 previewURLString:v5 title:v6 subtitle:v7 imageURLStr:v8 groupActivityMetadata:v9 sourceView:v12 sourceRect:v14 userInterfaceStyle:v16 completionHandler:{v18, v10, 0, 0}];
}

- (VUIShareActivityViewController_iOS)initWithShareURL:(id)a3 sharePlayActivity:(id)a4 applicationActivities:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E695DF70] array];
  if (v9)
  {
    objc_storeStrong(&self->_urlItem, a3);
    v13 = [v9 copy];
    dummyUrlItem = self->_dummyUrlItem;
    self->_dummyUrlItem = v13;

    [v12 addObject:self->_dummyUrlItem];
  }

  if (v10)
  {
    objc_storeStrong(&self->_sharePlayItem, a4);
    [v12 addObject:v10];
  }

  v15 = [(VUIShareActivityViewController_iOS *)self initWithActivityItems:v12 applicationActivities:v11];

  return v15;
}

- (VUIShareActivityViewController_iOS)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = VUIShareActivityViewController_iOS;
  v9 = [(VUIShareActivityViewController_iOS *)&v15 initWithActivityItems:v8 applicationActivities:a4];
  if (v9)
  {
    v10 = [v8 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v4 = [v8 firstObject];
      v12 = [v4 shareURL];
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v9->_sharingURL, v12);
    if (isKindOfClass)
    {
    }

    objc_storeStrong(&v9->_activityItems, a3);
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v9 selector:sel_updateActivityItems name:@"UpdateActivityItem" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(VUIShareActivityViewController_iOS *)self urlItem];
  [v3 cancel];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = VUIShareActivityViewController_iOS;
  [(VUIShareActivityViewController_iOS *)&v5 dealloc];
}

- (void)updateActivityItems
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(VUIShareActivityViewController_iOS *)self urlItem];
  [v3 vui_addObjectIfNotNil:v4];

  v5 = [(VUIShareActivityViewController_iOS *)self sharePlayItem];
  [v3 vui_addObjectIfNotNil:v5];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__VUIShareActivityViewController_iOS_updateActivityItems__block_invoke;
  block[3] = &unk_1E872F038;
  objc_copyWeak(&v9, &location);
  v8 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_prepareActivity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 activityType];
  if ([v8 isEqualToString:*MEMORY[0x1E69CDAA0]])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [objc_alloc(MEMORY[0x1E696EC90]) initWithURL:self->_sharingURL];
      v11 = [(VUIShareActivityViewController_iOS *)self urlItem];
      v12 = [v11 metadata];
      [v10 setMetadata:v12];

      objc_initWeak(&location, self);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__VUIShareActivityViewController_iOS__prepareActivity_completion___block_invoke;
      v13[3] = &unk_1E8730890;
      objc_copyWeak(&v16, &location);
      v15 = v7;
      v14 = v6;
      [v10 generateHTMLFragmentString:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);

      goto LABEL_7;
    }
  }

  else
  {
  }

  if (v7)
  {
    v7[2](v7);
  }

LABEL_7:
}

+ (BOOL)isAppleMusicURL:(id)a3
{
  v3 = [a3 host];
  v4 = [v3 containsString:@"music.apple.com"];

  return v4;
}

@end
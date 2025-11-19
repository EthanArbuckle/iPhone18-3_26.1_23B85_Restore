@interface SFUIActivityImageProvider
+ (SBSHomeScreenService)homeScreenService;
+ (id)tintImage:(id)a3 withDescriptorName:(id)a4 userInterfaceStyle:(int64_t)a5;
+ (id)tintImageDescriptor:(id)a3 withUserInterfaceStyle:(int64_t)a4 forGraphicIcon:(BOOL)a5;
- (id)_fetchActionImageForActivity:(id)a3 contentSizeCategory:(id)a4 imageSymbolConfiguration:(id)a5;
- (int)requestImageForActivity:(id)a3 contentSizeCategory:(id)a4 imageSymbolConfiguration:(id)a5 synchronous:(BOOL)a6 resultHandler:(id)a7;
- (int)requestImageForActivity:(id)a3 contentSizeCategory:(id)a4 userInterfaceStyle:(int64_t)a5 imageSymbolConfiguration:(id)a6 synchronous:(BOOL)a7 resultHandler:(id)a8;
- (int)requestImageForBundleIdentifier:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 iconFormat:(int)a6 synchronous:(BOOL)a7 resultHandler:(id)a8;
- (int)requestImageForBundleIdentifier:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 iconFormat:(int)a7 synchronous:(BOOL)a8 resultHandler:(id)a9;
- (int)requestImageForUTI:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 iconFormat:(int)a7 synchronous:(BOOL)a8 resultHandler:(id)a9;
- (void)_fetchBundleImageForIdentifier:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 iconFormat:(int)a7 uti:(id)a8;
- (void)_fetchImageForActivity:(id)a3 contentSizeCategory:(id)a4 userInterfaceStyle:(int64_t)a5 imageSymbolConfiguration:(id)a6;
- (void)_handleIconImage:(id)a3 identifier:(id)a4 activityCategory:(int64_t)a5 contentSizeCategory:(id)a6 iconFormat:(int)a7 placeholder:(BOOL)a8 uti:(id)a9;
- (void)performImageRequest:(id)a3;
@end

@implementation SFUIActivityImageProvider

+ (SBSHomeScreenService)homeScreenService
{
  if (homeScreenService_onceToken != -1)
  {
    +[SFUIActivityImageProvider homeScreenService];
  }

  v3 = homeScreenService_homeScreenService;

  return v3;
}

void __46__SFUIActivityImageProvider_homeScreenService__block_invoke()
{
  v0 = objc_opt_new();
  v1 = homeScreenService_homeScreenService;
  homeScreenService_homeScreenService = v0;
}

+ (id)tintImageDescriptor:(id)a3 withUserInterfaceStyle:(int64_t)a4 forGraphicIcon:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (v5)
  {
    [v7 setAppearanceVariant:1];
  }

  v9 = [objc_opt_class() homeScreenService];
  v10 = [v9 homeScreenIconStyleConfiguration];

  if (v10)
  {
    v11 = a4 == 2;
    [v8 setAppearance:{objc_msgSend(v10, "iconServicesAppearanceUsingDarkInterfaceStyle:", v11)}];
    [v8 setAppearanceVariant:{objc_msgSend(v10, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", v11)}];
    v12 = [v10 tintColor];
    v13 = [v12 CGColor];

    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:v13];
      [v8 setTintColor:v14];
    }
  }

  return v8;
}

+ (id)tintImage:(id)a3 withDescriptorName:(id)a4 userInterfaceStyle:(int64_t)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = objc_alloc(MEMORY[0x1E69A8988]);
    v10 = [v7 CGImage];
    [v7 scale];
    v11 = [v9 initWithCGImage:v10 scale:?];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E69A8A00]);
      v25[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v14 = [v12 initWithImages:v13];

      v15 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v8];
      v16 = [SFUIActivityImageProvider tintImageDescriptor:v15 withUserInterfaceStyle:a5 forGraphicIcon:0];

      v17 = [v14 imageForDescriptor:v16];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v19 = 0;
      if ((isKindOfClass & 1) == 0)
      {
        v19 = [v17 placeholder];
      }

      if (v17 && !v19 || ([v14 prepareImageForDescriptor:v16], v20 = objc_claimAutoreleasedReturnValue(), v17, (v17 = v20) != 0))
      {
        v21 = MEMORY[0x1E69DCAB8];
        v22 = [v17 CGImage];
        [v17 scale];
        v23 = [v21 imageWithCGImage:v22 scale:0 orientation:?];
      }

      else
      {
        v23 = v7;
      }
    }

    else
    {
      v23 = v7;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (int)requestImageForBundleIdentifier:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 iconFormat:(int)a6 synchronous:(BOOL)a7 resultHandler:(id)a8
{
  v12 = MEMORY[0x1E69DCEB0];
  v13 = a8;
  v14 = a5;
  v15 = a3;
  v16 = [v12 mainScreen];
  v17 = [v16 traitCollection];
  LODWORD(a4) = -[SFUIActivityImageProvider requestImageForBundleIdentifier:activityCategory:contentSizeCategory:userInterfaceStyle:iconFormat:synchronous:resultHandler:](self, "requestImageForBundleIdentifier:activityCategory:contentSizeCategory:userInterfaceStyle:iconFormat:synchronous:resultHandler:", v15, a4, v14, [v17 userInterfaceStyle], 2, 0, v13);

  return a4;
}

- (int)requestImageForBundleIdentifier:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 iconFormat:(int)a7 synchronous:(BOOL)a8 resultHandler:(id)a9
{
  v10 = *&a7;
  v29 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a9;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = sharing_ui_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "request image for bundle identifier:%@", buf, 0xCu);
  }

  if ([v15 length])
  {
    v19 = [(SFUIImageProvider *)self imageCache];
    v20 = [v19 objectForKey:v15];

    if (v20)
    {
      v21 = sharing_ui_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_1B9E4B000, v21, OS_LOG_TYPE_DEFAULT, "found cached image:%@", buf, 0xCu);
      }

      (*(v17 + 2))(v17, v20, 0, 0);
      LODWORD(v22) = 0;
    }

    else
    {
      v22 = [(SFUIImageProvider *)self nextRequestID];
      LOBYTE(v26) = a8;
      v24 = [[SFUIActivityImageRequest alloc] initWithRequestID:v22 identifier:v15 activityCategory:a4 contentSizeCategory:v16 userInterfaceStyle:a6 iconFormat:v10 synchronous:v26 resultHandler:v17];
      [(SFUIImageProvider *)self scheduleImageRequest:v24];
    }
  }

  else
  {
    v23 = sharing_ui_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SFUIActivityImageProvider requestImageForBundleIdentifier:v23 activityCategory:? contentSizeCategory:? userInterfaceStyle:? iconFormat:? synchronous:? resultHandler:?];
    }

    (*(v17 + 2))(v17, 0, 0, 0);
    LODWORD(v22) = 0;
  }

  return v22;
}

- (int)requestImageForUTI:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 iconFormat:(int)a7 synchronous:(BOOL)a8 resultHandler:(id)a9
{
  v10 = *&a7;
  v29 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a5;
  v17 = a9;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = sharing_ui_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "request image for UTI:%@", buf, 0xCu);
  }

  if ([v15 length])
  {
    v19 = [(SFUIImageProvider *)self imageCache];
    v20 = [v19 objectForKey:v15];

    if (v20)
    {
      v21 = sharing_ui_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_1B9E4B000, v21, OS_LOG_TYPE_DEFAULT, "found cached image:%@", buf, 0xCu);
      }

      (*(v17 + 2))(v17, v20, 0, 0);
      LODWORD(v22) = 0;
    }

    else
    {
      v22 = [(SFUIImageProvider *)self nextRequestID];
      LOBYTE(v26) = a8;
      v24 = [[SFUIActivityImageRequest alloc] initWithRequestID:v22 uti:v15 activityCategory:a4 contentSizeCategory:v16 userInterfaceStyle:a6 iconFormat:v10 synchronous:v26 resultHandler:v17];
      [(SFUIImageProvider *)self scheduleImageRequest:v24];
    }
  }

  else
  {
    v23 = sharing_ui_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [SFUIActivityImageProvider requestImageForUTI:v23 activityCategory:? contentSizeCategory:? userInterfaceStyle:? iconFormat:? synchronous:? resultHandler:?];
    }

    (*(v17 + 2))(v17, 0, 0, 0);
    LODWORD(v22) = 0;
  }

  return v22;
}

- (int)requestImageForActivity:(id)a3 contentSizeCategory:(id)a4 imageSymbolConfiguration:(id)a5 synchronous:(BOOL)a6 resultHandler:(id)a7
{
  v11 = MEMORY[0x1E69DCEB0];
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v11 mainScreen];
  v17 = [v16 traitCollection];
  LODWORD(self) = -[SFUIActivityImageProvider requestImageForActivity:contentSizeCategory:userInterfaceStyle:imageSymbolConfiguration:synchronous:resultHandler:](self, "requestImageForActivity:contentSizeCategory:userInterfaceStyle:imageSymbolConfiguration:synchronous:resultHandler:", v15, v14, [v17 userInterfaceStyle], v13, 0, v12);

  return self;
}

- (int)requestImageForActivity:(id)a3 contentSizeCategory:(id)a4 userInterfaceStyle:(int64_t)a5 imageSymbolConfiguration:(id)a6 synchronous:(BOOL)a7 resultHandler:(id)a8
{
  v9 = a7;
  v31 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v14 activityUUID];
    v19 = [v18 UUIDString];

    v20 = sharing_ui_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v14;
      v29 = 2112;
      v30 = v19;
      _os_log_impl(&dword_1B9E4B000, v20, OS_LOG_TYPE_DEFAULT, "requestImageForActivity:%@ identifier:%@", buf, 0x16u);
    }

    v21 = [(SFUIImageProvider *)self imageCache];
    v22 = [v21 objectForKey:v19];

    if (v22)
    {
      v23 = sharing_ui_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v22;
        _os_log_impl(&dword_1B9E4B000, v23, OS_LOG_TYPE_DEFAULT, "found cached image:%@", buf, 0xCu);
      }

      (*(v17 + 2))(v17, v22, 0, 0);
      LODWORD(v24) = 0;
    }

    else
    {
      v24 = [(SFUIImageProvider *)self nextRequestID];
      v25 = [[SFUIActivityImageRequest alloc] initWithRequestID:v24 activity:v14 contentSizeCategory:v15 userInterfaceStyle:a5 imageSymbolConfiguration:v16 synchronous:v9 resultHandler:v17];
      [(SFUIImageProvider *)self scheduleImageRequest:v25];
    }
  }

  else
  {
    v19 = sharing_ui_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SFUIActivityImageProvider requestImageForActivity:v14 contentSizeCategory:v19 userInterfaceStyle:? imageSymbolConfiguration:? synchronous:? resultHandler:?];
    }

    LODWORD(v24) = 0;
  }

  return v24;
}

- (void)performImageRequest:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SFUIActivityImageProvider *)a2 performImageRequest:?];
  }

  v14 = v5;
  v6 = [v14 activity];

  if (v6)
  {
    v7 = [v14 activity];
    v8 = [v14 contentSizeCategory];
    v9 = [v14 userInterfaceStyle];
    v10 = [v14 imageSymbolConfiguration];
    [(SFUIActivityImageProvider *)self _fetchImageForActivity:v7 contentSizeCategory:v8 userInterfaceStyle:v9 imageSymbolConfiguration:v10];
  }

  else
  {
    v7 = [v14 identifier];
    v11 = [v14 activityCategory];
    v8 = [v14 contentSizeCategory];
    v12 = [v14 userInterfaceStyle];
    v13 = [v14 iconFormat];
    v10 = [v14 uti];
    [(SFUIActivityImageProvider *)self _fetchBundleImageForIdentifier:v7 activityCategory:v11 contentSizeCategory:v8 userInterfaceStyle:v12 iconFormat:v13 uti:v10];
  }
}

- (void)_fetchBundleImageForIdentifier:(id)a3 activityCategory:(int64_t)a4 contentSizeCategory:(id)a5 userInterfaceStyle:(int64_t)a6 iconFormat:(int)a7 uti:(id)a8
{
  v9 = *&a7;
  v48 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v38 = a5;
  v14 = a8;
  v15 = sharing_ui_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"UTI";
    *buf = 138413058;
    if (!v14)
    {
      v16 = @"bundle identifier";
    }

    v41 = v16;
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v13;
    }

    v42 = 2112;
    v43 = v17;
    v44 = 2048;
    v45 = a4;
    v46 = 2048;
    v47 = v9;
    _os_log_impl(&dword_1B9E4B000, v15, OS_LOG_TYPE_DEFAULT, "fetch bundle image for %@:%@ activityCategory:%ld iconFormat:%ld", buf, 0x2Au);
  }

  v18 = objc_alloc_init(MEMORY[0x1E69A8A48]);
  [(__CFString *)v18 setSymbolSize:3];
  v19 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v19 scale];
  [(__CFString *)v18 setScale:?];

  v20 = MEMORY[0x1E69A8AA0];
  if (v9)
  {
    v20 = MEMORY[0x1E69A8A78];
  }

  v21 = *v20;
  v22 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v21];
  [v22 setTemplateVariant:a4 == 0];
  [v22 setDrawBorder:v9 == 0];
  v23 = [objc_opt_class() tintImageDescriptor:v22 withUserInterfaceStyle:a6 forGraphicIcon:v14 != 0];

  v24 = objc_alloc(MEMORY[0x1E69A8A00]);
  if (v14)
  {
    v25 = [v24 initWithType:v14];
  }

  else
  {
    v25 = [v24 initWithBundleIdentifier:v13];
  }

  v26 = v25;
  v27 = sharing_ui_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v28 = v23;
    }

    else
    {
      v28 = v18;
    }

    *buf = 138412290;
    v41 = v28;
    _os_log_impl(&dword_1B9E4B000, v27, OS_LOG_TYPE_DEFAULT, "fetching fast image with descriptor:%@", buf, 0xCu);
  }

  else if (a4)
  {
    v28 = v23;
  }

  else
  {
    v28 = v18;
  }

  v29 = [v26 imageForDescriptor:v28];
  v30 = v29;
  if (!a4 && !v29)
  {
    v31 = sharing_ui_log();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v23;
      _os_log_impl(&dword_1B9E4B000, v31, OS_LOG_TYPE_DEFAULT, "fetching fast action image with image descriptor:%@", buf, 0xCu);
    }

    v30 = [v26 imageForDescriptor:v23];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = 0;
  }

  else
  {
    v32 = [v30 placeholder];
  }

  if (a4)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  if (v30 && (v33 & 1) == 0)
  {
    [(SFUIActivityImageProvider *)self _handleIconImage:v30 identifier:v13 activityCategory:a4 contentSizeCategory:v38 iconFormat:v9 placeholder:v32 uti:v14];
  }

  if ((v30 == 0) | v32 & 1)
  {
    v34 = sharing_ui_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v23;
      _os_log_impl(&dword_1B9E4B000, v34, OS_LOG_TYPE_DEFAULT, "fetching final image with descriptor:%@", buf, 0xCu);
    }

    v35 = [v26 prepareImageForDescriptor:v23];

    v36 = a4;
    v37 = v38;
    [(SFUIActivityImageProvider *)self _handleIconImage:v35 identifier:v13 activityCategory:v36 contentSizeCategory:v38 iconFormat:v9 placeholder:0 uti:v14];
    v30 = v35;
  }

  else
  {
    v37 = v38;
  }
}

- (void)_fetchImageForActivity:(id)a3 contentSizeCategory:(id)a4 userInterfaceStyle:(int64_t)a5 imageSymbolConfiguration:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 activityUUID];
  v14 = [v13 UUIDString];

  v15 = sharing_ui_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SFUIActivityImageProvider _fetchImageForActivity:v10 contentSizeCategory:v14 userInterfaceStyle:v15 imageSymbolConfiguration:?];
  }

  [v10 setUserInterfaceStyle:a5];
  v16 = [objc_opt_class() activityCategory];
  if (objc_opt_respondsToSelector())
  {
    v16 = [v10 activityCategory];
  }

  if (v16)
  {
    [v10 _activityImage];
  }

  else
  {
    [(SFUIActivityImageProvider *)self _fetchActionImageForActivity:v10 contentSizeCategory:v11 imageSymbolConfiguration:v12];
  }
  v17 = ;
  objc_initWeak(&location, self);
  objc_copyWeak(&v20, &location);
  v18 = v17;
  v19 = v14;
  sf_dispatch_on_main_queue();

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __116__SFUIActivityImageProvider__fetchImageForActivity_contentSizeCategory_userInterfaceStyle_imageSymbolConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deliverImage:*(a1 + 32) identifier:*(a1 + 40) placeholder:0 error:0];
}

- (id)_fetchActionImageForActivity:(id)a3 contentSizeCategory:(id)a4 imageSymbolConfiguration:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 _systemImageName];

  if (v10)
  {
    v11 = MEMORY[0x1E69DCAB8];
    v12 = [v7 _systemImageName];
    v13 = [v11 _systemImageNamed:v12];
    v14 = [v13 imageByApplyingSymbolConfiguration:v9];

LABEL_3:
    goto LABEL_6;
  }

  v15 = [v7 activityImage];
  v16 = [v15 symbolConfiguration];

  if (!v16)
  {
    if ([v7 _wantsOriginalImageColor])
    {
      v18 = MEMORY[0x1E69CD9E8];
      v12 = [v7 _activityImage];
      [v18 _actionImageForActionRepresentationImage:v12 contentSizeCategory:v8 monochrome:0];
    }

    else
    {
      [v7 setContentSizeCategory:v8];
      v12 = [v7 _actionImage];
      [v12 imageWithRenderingMode:2];
    }
    v14 = ;
    goto LABEL_3;
  }

  v14 = [v7 activityImage];
LABEL_6:

  return v14;
}

- (void)_handleIconImage:(id)a3 identifier:(id)a4 activityCategory:(int64_t)a5 contentSizeCategory:(id)a6 iconFormat:(int)a7 placeholder:(BOOL)a8 uti:(id)a9
{
  v41 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a9;
  v18 = sharing_ui_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v14 CGImage];
    *buf = 138413314;
    v20 = @"UTI";
    v32 = v14;
    v33 = 2048;
    if (!v17)
    {
      v20 = @"bundleIdentifier";
    }

    v34 = v19;
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = v15;
    }

    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2048;
    v40 = a5;
    _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "handle icon image:%@ CGImage:%p %@:%@ activityCategory:%ld", buf, 0x34u);
  }

  v22 = MEMORY[0x1E69DCAB8];
  v23 = [v14 CGImage];
  [v14 scale];
  v24 = [v22 imageWithCGImage:v23 scale:0 orientation:?];
  if (!a5)
  {
    v25 = sharing_ui_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v14;
      _os_log_impl(&dword_1B9E4B000, v25, OS_LOG_TYPE_DEFAULT, "render action image for image:%@", buf, 0xCu);
    }

    v26 = [MEMORY[0x1E69CD9E8] _actionImageForActionRepresentationImage:v24 contentSizeCategory:v16];

    v24 = [v26 imageWithRenderingMode:2];
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v29, buf);
  v27 = v24;
  v28 = v15;
  v30 = a8;
  sf_dispatch_on_main_queue();

  objc_destroyWeak(&v29);
  objc_destroyWeak(buf);
}

void __121__SFUIActivityImageProvider__handleIconImage_identifier_activityCategory_contentSizeCategory_iconFormat_placeholder_uti___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deliverImage:*(a1 + 32) identifier:*(a1 + 40) placeholder:*(a1 + 56) error:0];
}

- (void)requestImageForActivity:(uint64_t)a1 contentSizeCategory:(NSObject *)a2 userInterfaceStyle:imageSymbolConfiguration:synchronous:resultHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B9E4B000, a2, OS_LOG_TYPE_ERROR, "request activity image for non-activity object:%@", &v2, 0xCu);
}

- (void)performImageRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFUIActivityImageProvider.m" lineNumber:243 description:@"request is not a SFUIActivityImageRequest type."];
}

- (void)_fetchImageForActivity:(os_log_t)log contentSizeCategory:userInterfaceStyle:imageSymbolConfiguration:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1B9E4B000, log, OS_LOG_TYPE_DEBUG, "_fetchImageForActivity:%@ identifier:%@", &v3, 0x16u);
}

@end
@interface SFUIActivityImageProvider
+ (SBSHomeScreenService)homeScreenService;
+ (id)tintImage:(id)image withDescriptorName:(id)name userInterfaceStyle:(int64_t)style;
+ (id)tintImageDescriptor:(id)descriptor withUserInterfaceStyle:(int64_t)style forGraphicIcon:(BOOL)icon;
- (id)_fetchActionImageForActivity:(id)activity contentSizeCategory:(id)category imageSymbolConfiguration:(id)configuration;
- (int)requestImageForActivity:(id)activity contentSizeCategory:(id)category imageSymbolConfiguration:(id)configuration synchronous:(BOOL)synchronous resultHandler:(id)handler;
- (int)requestImageForActivity:(id)activity contentSizeCategory:(id)category userInterfaceStyle:(int64_t)style imageSymbolConfiguration:(id)configuration synchronous:(BOOL)synchronous resultHandler:(id)handler;
- (int)requestImageForBundleIdentifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)handler;
- (int)requestImageForBundleIdentifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)handler;
- (int)requestImageForUTI:(id)i activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)handler;
- (void)_fetchBundleImageForIdentifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format uti:(id)uti;
- (void)_fetchImageForActivity:(id)activity contentSizeCategory:(id)category userInterfaceStyle:(int64_t)style imageSymbolConfiguration:(id)configuration;
- (void)_handleIconImage:(id)image identifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory iconFormat:(int)format placeholder:(BOOL)placeholder uti:(id)uti;
- (void)performImageRequest:(id)request;
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

+ (id)tintImageDescriptor:(id)descriptor withUserInterfaceStyle:(int64_t)style forGraphicIcon:(BOOL)icon
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  v8 = descriptorCopy;
  if (iconCopy)
  {
    [descriptorCopy setAppearanceVariant:1];
  }

  homeScreenService = [objc_opt_class() homeScreenService];
  homeScreenIconStyleConfiguration = [homeScreenService homeScreenIconStyleConfiguration];

  if (homeScreenIconStyleConfiguration)
  {
    v11 = style == 2;
    [v8 setAppearance:{objc_msgSend(homeScreenIconStyleConfiguration, "iconServicesAppearanceUsingDarkInterfaceStyle:", v11)}];
    [v8 setAppearanceVariant:{objc_msgSend(homeScreenIconStyleConfiguration, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", v11)}];
    tintColor = [homeScreenIconStyleConfiguration tintColor];
    cGColor = [tintColor CGColor];

    if (cGColor)
    {
      v14 = [objc_alloc(MEMORY[0x1E69A8968]) initWithCGColor:cGColor];
      [v8 setTintColor:v14];
    }
  }

  return v8;
}

+ (id)tintImage:(id)image withDescriptorName:(id)name userInterfaceStyle:(int64_t)style
{
  v25[1] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  nameCopy = name;
  if (imageCopy)
  {
    v9 = objc_alloc(MEMORY[0x1E69A8988]);
    cGImage = [imageCopy CGImage];
    [imageCopy scale];
    v11 = [v9 initWithCGImage:cGImage scale:?];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x1E69A8A00]);
      v25[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      v14 = [v12 initWithImages:v13];

      v15 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:nameCopy];
      v16 = [SFUIActivityImageProvider tintImageDescriptor:v15 withUserInterfaceStyle:style forGraphicIcon:0];

      v17 = [v14 imageForDescriptor:v16];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      placeholder = 0;
      if ((isKindOfClass & 1) == 0)
      {
        placeholder = [v17 placeholder];
      }

      if (v17 && !placeholder || ([v14 prepareImageForDescriptor:v16], v20 = objc_claimAutoreleasedReturnValue(), v17, (v17 = v20) != 0))
      {
        v21 = MEMORY[0x1E69DCAB8];
        cGImage2 = [v17 CGImage];
        [v17 scale];
        v23 = [v21 imageWithCGImage:cGImage2 scale:0 orientation:?];
      }

      else
      {
        v23 = imageCopy;
      }
    }

    else
    {
      v23 = imageCopy;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (int)requestImageForBundleIdentifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  v12 = MEMORY[0x1E69DCEB0];
  handlerCopy = handler;
  sizeCategoryCopy = sizeCategory;
  identifierCopy = identifier;
  mainScreen = [v12 mainScreen];
  traitCollection = [mainScreen traitCollection];
  LODWORD(category) = -[SFUIActivityImageProvider requestImageForBundleIdentifier:activityCategory:contentSizeCategory:userInterfaceStyle:iconFormat:synchronous:resultHandler:](self, "requestImageForBundleIdentifier:activityCategory:contentSizeCategory:userInterfaceStyle:iconFormat:synchronous:resultHandler:", identifierCopy, category, sizeCategoryCopy, [traitCollection userInterfaceStyle], 2, 0, handlerCopy);

  return category;
}

- (int)requestImageForBundleIdentifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  v10 = *&format;
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sizeCategoryCopy = sizeCategory;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = sharing_ui_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = identifierCopy;
    _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "request image for bundle identifier:%@", buf, 0xCu);
  }

  if ([identifierCopy length])
  {
    imageCache = [(SFUIImageProvider *)self imageCache];
    v20 = [imageCache objectForKey:identifierCopy];

    if (v20)
    {
      v21 = sharing_ui_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_1B9E4B000, v21, OS_LOG_TYPE_DEFAULT, "found cached image:%@", buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, v20, 0, 0);
      LODWORD(nextRequestID) = 0;
    }

    else
    {
      nextRequestID = [(SFUIImageProvider *)self nextRequestID];
      LOBYTE(v26) = synchronous;
      v24 = [[SFUIActivityImageRequest alloc] initWithRequestID:nextRequestID identifier:identifierCopy activityCategory:category contentSizeCategory:sizeCategoryCopy userInterfaceStyle:style iconFormat:v10 synchronous:v26 resultHandler:handlerCopy];
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

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    LODWORD(nextRequestID) = 0;
  }

  return nextRequestID;
}

- (int)requestImageForUTI:(id)i activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  v10 = *&format;
  v29 = *MEMORY[0x1E69E9840];
  iCopy = i;
  sizeCategoryCopy = sizeCategory;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v18 = sharing_ui_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = iCopy;
    _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "request image for UTI:%@", buf, 0xCu);
  }

  if ([iCopy length])
  {
    imageCache = [(SFUIImageProvider *)self imageCache];
    v20 = [imageCache objectForKey:iCopy];

    if (v20)
    {
      v21 = sharing_ui_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v20;
        _os_log_impl(&dword_1B9E4B000, v21, OS_LOG_TYPE_DEFAULT, "found cached image:%@", buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, v20, 0, 0);
      LODWORD(nextRequestID) = 0;
    }

    else
    {
      nextRequestID = [(SFUIImageProvider *)self nextRequestID];
      LOBYTE(v26) = synchronous;
      v24 = [[SFUIActivityImageRequest alloc] initWithRequestID:nextRequestID uti:iCopy activityCategory:category contentSizeCategory:sizeCategoryCopy userInterfaceStyle:style iconFormat:v10 synchronous:v26 resultHandler:handlerCopy];
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

    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    LODWORD(nextRequestID) = 0;
  }

  return nextRequestID;
}

- (int)requestImageForActivity:(id)activity contentSizeCategory:(id)category imageSymbolConfiguration:(id)configuration synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  v11 = MEMORY[0x1E69DCEB0];
  handlerCopy = handler;
  configurationCopy = configuration;
  categoryCopy = category;
  activityCopy = activity;
  mainScreen = [v11 mainScreen];
  traitCollection = [mainScreen traitCollection];
  LODWORD(self) = -[SFUIActivityImageProvider requestImageForActivity:contentSizeCategory:userInterfaceStyle:imageSymbolConfiguration:synchronous:resultHandler:](self, "requestImageForActivity:contentSizeCategory:userInterfaceStyle:imageSymbolConfiguration:synchronous:resultHandler:", activityCopy, categoryCopy, [traitCollection userInterfaceStyle], configurationCopy, 0, handlerCopy);

  return self;
}

- (int)requestImageForActivity:(id)activity contentSizeCategory:(id)category userInterfaceStyle:(int64_t)style imageSymbolConfiguration:(id)configuration synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  synchronousCopy = synchronous;
  v31 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  categoryCopy = category;
  configurationCopy = configuration;
  handlerCopy = handler;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    activityUUID = [activityCopy activityUUID];
    uUIDString = [activityUUID UUIDString];

    v20 = sharing_ui_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = activityCopy;
      v29 = 2112;
      v30 = uUIDString;
      _os_log_impl(&dword_1B9E4B000, v20, OS_LOG_TYPE_DEFAULT, "requestImageForActivity:%@ identifier:%@", buf, 0x16u);
    }

    imageCache = [(SFUIImageProvider *)self imageCache];
    v22 = [imageCache objectForKey:uUIDString];

    if (v22)
    {
      v23 = sharing_ui_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v22;
        _os_log_impl(&dword_1B9E4B000, v23, OS_LOG_TYPE_DEFAULT, "found cached image:%@", buf, 0xCu);
      }

      (*(handlerCopy + 2))(handlerCopy, v22, 0, 0);
      LODWORD(nextRequestID) = 0;
    }

    else
    {
      nextRequestID = [(SFUIImageProvider *)self nextRequestID];
      v25 = [[SFUIActivityImageRequest alloc] initWithRequestID:nextRequestID activity:activityCopy contentSizeCategory:categoryCopy userInterfaceStyle:style imageSymbolConfiguration:configurationCopy synchronous:synchronousCopy resultHandler:handlerCopy];
      [(SFUIImageProvider *)self scheduleImageRequest:v25];
    }
  }

  else
  {
    uUIDString = sharing_ui_log();
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      [SFUIActivityImageProvider requestImageForActivity:activityCopy contentSizeCategory:uUIDString userInterfaceStyle:? imageSymbolConfiguration:? synchronous:? resultHandler:?];
    }

    LODWORD(nextRequestID) = 0;
  }

  return nextRequestID;
}

- (void)performImageRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(SFUIActivityImageProvider *)a2 performImageRequest:?];
  }

  v14 = requestCopy;
  activity = [v14 activity];

  if (activity)
  {
    activity2 = [v14 activity];
    contentSizeCategory = [v14 contentSizeCategory];
    userInterfaceStyle = [v14 userInterfaceStyle];
    imageSymbolConfiguration = [v14 imageSymbolConfiguration];
    [(SFUIActivityImageProvider *)self _fetchImageForActivity:activity2 contentSizeCategory:contentSizeCategory userInterfaceStyle:userInterfaceStyle imageSymbolConfiguration:imageSymbolConfiguration];
  }

  else
  {
    activity2 = [v14 identifier];
    activityCategory = [v14 activityCategory];
    contentSizeCategory = [v14 contentSizeCategory];
    userInterfaceStyle2 = [v14 userInterfaceStyle];
    iconFormat = [v14 iconFormat];
    imageSymbolConfiguration = [v14 uti];
    [(SFUIActivityImageProvider *)self _fetchBundleImageForIdentifier:activity2 activityCategory:activityCategory contentSizeCategory:contentSizeCategory userInterfaceStyle:userInterfaceStyle2 iconFormat:iconFormat uti:imageSymbolConfiguration];
  }
}

- (void)_fetchBundleImageForIdentifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory userInterfaceStyle:(int64_t)style iconFormat:(int)format uti:(id)uti
{
  v9 = *&format;
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sizeCategoryCopy = sizeCategory;
  utiCopy = uti;
  v15 = sharing_ui_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"UTI";
    *buf = 138413058;
    if (!utiCopy)
    {
      v16 = @"bundle identifier";
    }

    v41 = v16;
    if (utiCopy)
    {
      v17 = utiCopy;
    }

    else
    {
      v17 = identifierCopy;
    }

    v42 = 2112;
    v43 = v17;
    v44 = 2048;
    categoryCopy = category;
    v46 = 2048;
    v47 = v9;
    _os_log_impl(&dword_1B9E4B000, v15, OS_LOG_TYPE_DEFAULT, "fetch bundle image for %@:%@ activityCategory:%ld iconFormat:%ld", buf, 0x2Au);
  }

  v18 = objc_alloc_init(MEMORY[0x1E69A8A48]);
  [(__CFString *)v18 setSymbolSize:3];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(__CFString *)v18 setScale:?];

  v20 = MEMORY[0x1E69A8AA0];
  if (v9)
  {
    v20 = MEMORY[0x1E69A8A78];
  }

  v21 = *v20;
  v22 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:v21];
  [v22 setTemplateVariant:category == 0];
  [v22 setDrawBorder:v9 == 0];
  v23 = [objc_opt_class() tintImageDescriptor:v22 withUserInterfaceStyle:style forGraphicIcon:utiCopy != 0];

  v24 = objc_alloc(MEMORY[0x1E69A8A00]);
  if (utiCopy)
  {
    v25 = [v24 initWithType:utiCopy];
  }

  else
  {
    v25 = [v24 initWithBundleIdentifier:identifierCopy];
  }

  v26 = v25;
  v27 = sharing_ui_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (category)
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

  else if (category)
  {
    v28 = v23;
  }

  else
  {
    v28 = v18;
  }

  v29 = [v26 imageForDescriptor:v28];
  v30 = v29;
  if (!category && !v29)
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
    placeholder = 0;
  }

  else
  {
    placeholder = [v30 placeholder];
  }

  if (category)
  {
    v33 = 0;
  }

  else
  {
    v33 = placeholder;
  }

  if (v30 && (v33 & 1) == 0)
  {
    [(SFUIActivityImageProvider *)self _handleIconImage:v30 identifier:identifierCopy activityCategory:category contentSizeCategory:sizeCategoryCopy iconFormat:v9 placeholder:placeholder uti:utiCopy];
  }

  if ((v30 == 0) | placeholder & 1)
  {
    v34 = sharing_ui_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v23;
      _os_log_impl(&dword_1B9E4B000, v34, OS_LOG_TYPE_DEFAULT, "fetching final image with descriptor:%@", buf, 0xCu);
    }

    v35 = [v26 prepareImageForDescriptor:v23];

    categoryCopy2 = category;
    v37 = sizeCategoryCopy;
    [(SFUIActivityImageProvider *)self _handleIconImage:v35 identifier:identifierCopy activityCategory:categoryCopy2 contentSizeCategory:sizeCategoryCopy iconFormat:v9 placeholder:0 uti:utiCopy];
    v30 = v35;
  }

  else
  {
    v37 = sizeCategoryCopy;
  }
}

- (void)_fetchImageForActivity:(id)activity contentSizeCategory:(id)category userInterfaceStyle:(int64_t)style imageSymbolConfiguration:(id)configuration
{
  activityCopy = activity;
  categoryCopy = category;
  configurationCopy = configuration;
  activityUUID = [activityCopy activityUUID];
  uUIDString = [activityUUID UUIDString];

  v15 = sharing_ui_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [SFUIActivityImageProvider _fetchImageForActivity:activityCopy contentSizeCategory:uUIDString userInterfaceStyle:v15 imageSymbolConfiguration:?];
  }

  [activityCopy setUserInterfaceStyle:style];
  activityCategory = [objc_opt_class() activityCategory];
  if (objc_opt_respondsToSelector())
  {
    activityCategory = [activityCopy activityCategory];
  }

  if (activityCategory)
  {
    [activityCopy _activityImage];
  }

  else
  {
    [(SFUIActivityImageProvider *)self _fetchActionImageForActivity:activityCopy contentSizeCategory:categoryCopy imageSymbolConfiguration:configurationCopy];
  }
  v17 = ;
  objc_initWeak(&location, self);
  objc_copyWeak(&v20, &location);
  v18 = v17;
  v19 = uUIDString;
  sf_dispatch_on_main_queue();

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __116__SFUIActivityImageProvider__fetchImageForActivity_contentSizeCategory_userInterfaceStyle_imageSymbolConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained deliverImage:*(a1 + 32) identifier:*(a1 + 40) placeholder:0 error:0];
}

- (id)_fetchActionImageForActivity:(id)activity contentSizeCategory:(id)category imageSymbolConfiguration:(id)configuration
{
  activityCopy = activity;
  categoryCopy = category;
  configurationCopy = configuration;
  _systemImageName = [activityCopy _systemImageName];

  if (_systemImageName)
  {
    v11 = MEMORY[0x1E69DCAB8];
    _systemImageName2 = [activityCopy _systemImageName];
    v13 = [v11 _systemImageNamed:_systemImageName2];
    activityImage2 = [v13 imageByApplyingSymbolConfiguration:configurationCopy];

LABEL_3:
    goto LABEL_6;
  }

  activityImage = [activityCopy activityImage];
  symbolConfiguration = [activityImage symbolConfiguration];

  if (!symbolConfiguration)
  {
    if ([activityCopy _wantsOriginalImageColor])
    {
      v18 = MEMORY[0x1E69CD9E8];
      _systemImageName2 = [activityCopy _activityImage];
      [v18 _actionImageForActionRepresentationImage:_systemImageName2 contentSizeCategory:categoryCopy monochrome:0];
    }

    else
    {
      [activityCopy setContentSizeCategory:categoryCopy];
      _systemImageName2 = [activityCopy _actionImage];
      [_systemImageName2 imageWithRenderingMode:2];
    }
    activityImage2 = ;
    goto LABEL_3;
  }

  activityImage2 = [activityCopy activityImage];
LABEL_6:

  return activityImage2;
}

- (void)_handleIconImage:(id)image identifier:(id)identifier activityCategory:(int64_t)category contentSizeCategory:(id)sizeCategory iconFormat:(int)format placeholder:(BOOL)placeholder uti:(id)uti
{
  v41 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  identifierCopy = identifier;
  sizeCategoryCopy = sizeCategory;
  utiCopy = uti;
  v18 = sharing_ui_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    cGImage = [imageCopy CGImage];
    *buf = 138413314;
    v20 = @"UTI";
    v32 = imageCopy;
    v33 = 2048;
    if (!utiCopy)
    {
      v20 = @"bundleIdentifier";
    }

    v34 = cGImage;
    if (utiCopy)
    {
      v21 = utiCopy;
    }

    else
    {
      v21 = identifierCopy;
    }

    v35 = 2112;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2048;
    categoryCopy = category;
    _os_log_impl(&dword_1B9E4B000, v18, OS_LOG_TYPE_DEFAULT, "handle icon image:%@ CGImage:%p %@:%@ activityCategory:%ld", buf, 0x34u);
  }

  v22 = MEMORY[0x1E69DCAB8];
  cGImage2 = [imageCopy CGImage];
  [imageCopy scale];
  v24 = [v22 imageWithCGImage:cGImage2 scale:0 orientation:?];
  if (!category)
  {
    v25 = sharing_ui_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = imageCopy;
      _os_log_impl(&dword_1B9E4B000, v25, OS_LOG_TYPE_DEFAULT, "render action image for image:%@", buf, 0xCu);
    }

    v26 = [MEMORY[0x1E69CD9E8] _actionImageForActionRepresentationImage:v24 contentSizeCategory:sizeCategoryCopy];

    v24 = [v26 imageWithRenderingMode:2];
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v29, buf);
  v27 = v24;
  v28 = identifierCopy;
  placeholderCopy = placeholder;
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
@interface SearchUIDefaultPunchoutAppIconImage
+ (id)defaultRecordForURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (SearchUIDefaultPunchoutAppIconImage)initWithFileProviderId:(id)id coreSpotlightId:(id)spotlightId variant:(unint64_t)variant;
- (SearchUIDefaultPunchoutAppIconImage)initWithSFImage:(id)image variant:(unint64_t)variant;
- (SearchUIDefaultPunchoutAppIconImage)initWithURL:(id)l variant:(unint64_t)variant;
- (id)defaultApplicationFetchQueue;
- (unint64_t)hash;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
- (void)loadRelatedAppIconImageForFileURL:(id)l scale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation SearchUIDefaultPunchoutAppIconImage

- (SearchUIDefaultPunchoutAppIconImage)initWithSFImage:(id)image variant:(unint64_t)variant
{
  imageCopy = image;
  punchout = [imageCopy punchout];
  urls = [punchout urls];
  firstObject = [urls firstObject];

  if (!firstObject)
  {
    fileProviderIdentifier = [imageCopy fileProviderIdentifier];
    if ([fileProviderIdentifier length])
    {
      coreSpotlightIdentifier = [imageCopy coreSpotlightIdentifier];
      v13 = [coreSpotlightIdentifier length];

      if (v13)
      {
        fileProviderIdentifier2 = [imageCopy fileProviderIdentifier];
        coreSpotlightIdentifier2 = [imageCopy coreSpotlightIdentifier];
        v10 = [(SearchUIDefaultPunchoutAppIconImage *)self initWithFileProviderId:fileProviderIdentifier2 coreSpotlightId:coreSpotlightIdentifier2 variant:variant];

        self = v10;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_8;
  }

  v10 = [(SearchUIDefaultPunchoutAppIconImage *)self initWithURL:firstObject variant:variant];
  self = v10;
LABEL_8:
  [(SearchUIImage *)v10 setSfImage:imageCopy];

  return v10;
}

- (SearchUIDefaultPunchoutAppIconImage)initWithURL:(id)l variant:(unint64_t)variant
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = SearchUIDefaultPunchoutAppIconImage;
  v7 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:0 isOnenessApp:0 variant:variant contentType:0];
  v8 = v7;
  if (v7)
  {
    [(SearchUIDefaultPunchoutAppIconImage *)v7 setUrl:lCopy];
  }

  return v8;
}

- (SearchUIDefaultPunchoutAppIconImage)initWithFileProviderId:(id)id coreSpotlightId:(id)spotlightId variant:(unint64_t)variant
{
  idCopy = id;
  spotlightIdCopy = spotlightId;
  v14.receiver = self;
  v14.super_class = SearchUIDefaultPunchoutAppIconImage;
  v10 = [(SearchUIAppIconImage *)&v14 initWithBundleIdentifier:0 isOnenessApp:0 variant:variant contentType:0];
  if (!v10 || ([SearchUIUtilities fileProviderItemIDForCoreSpotlightIdentifier:spotlightIdCopy fileProviderIdentifier:idCopy], v11 = objc_claimAutoreleasedReturnValue(), [(SearchUIDefaultPunchoutAppIconImage *)v10 setFpItemID:v11], v11, [(SearchUIDefaultPunchoutAppIconImage *)v10 fpItemID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v12 = v10;
  }

  return v12;
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  styleCopy = style;
  handlerCopy = handler;
  v9 = [(SearchUIDefaultPunchoutAppIconImage *)self url];

  if (v9)
  {
    v10 = [(SearchUIDefaultPunchoutAppIconImage *)self url];
    [(SearchUIDefaultPunchoutAppIconImage *)self loadRelatedAppIconImageForFileURL:v10 scale:styleCopy isDarkStyle:handlerCopy completionHandler:scale];
  }

  else
  {
    fpItemID = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];

    if (fpItemID)
    {
      objc_initWeak(&location, self);
      defaultManager = [MEMORY[0x1E69673B0] defaultManager];
      fpItemID2 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __88__SearchUIDefaultPunchoutAppIconImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
      v14[3] = &unk_1E85B3D68;
      objc_copyWeak(v16, &location);
      v16[1] = *&scale;
      v17 = styleCopy;
      v15 = handlerCopy;
      [defaultManager fetchURLForItemID:fpItemID2 completionHandler:v14];

      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 1);
    }
  }
}

void __88__SearchUIDefaultPunchoutAppIconImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained loadRelatedAppIconImageForFileURL:v4 scale:*(a1 + 56) isDarkStyle:*(a1 + 32) completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)defaultApplicationFetchQueue
{
  if (defaultApplicationFetchQueue_onceToken != -1)
  {
    [SearchUIDefaultPunchoutAppIconImage defaultApplicationFetchQueue];
  }

  v3 = defaultApplicationFetchQueue_queue;

  return v3;
}

void __67__SearchUIDefaultPunchoutAppIconImage_defaultApplicationFetchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("com.apple.searchui.DefaultPunchoutApplication", attr);
  v2 = defaultApplicationFetchQueue_queue;
  defaultApplicationFetchQueue_queue = v1;
}

- (void)loadRelatedAppIconImageForFileURL:(id)l scale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  styleCopy = style;
  lCopy = l;
  handlerCopy = handler;
  wrappedImage = [(SearchUIDefaultPunchoutAppIconImage *)self wrappedImage];

  if (wrappedImage)
  {
    wrappedImage2 = [(SearchUIDefaultPunchoutAppIconImage *)self wrappedImage];
    [wrappedImage2 loadImageWithScale:styleCopy isDarkStyle:handlerCopy completionHandler:scale];
  }

  else
  {
    objc_initWeak(&location, self);
    defaultApplicationFetchQueue = [(SearchUIDefaultPunchoutAppIconImage *)self defaultApplicationFetchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__SearchUIDefaultPunchoutAppIconImage_loadRelatedAppIconImageForFileURL_scale_isDarkStyle_completionHandler___block_invoke;
    v15[3] = &unk_1E85B2D88;
    objc_copyWeak(v18, &location);
    v16 = lCopy;
    v18[1] = *&scale;
    v19 = styleCopy;
    v17 = handlerCopy;
    dispatch_async(defaultApplicationFetchQueue, v15);

    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }
}

void __109__SearchUIDefaultPunchoutAppIconImage_loadRelatedAppIconImageForFileURL_scale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (IDSBAASignerErrorDomain_block_invoke_onceToken_0 != -1)
  {
    __109__SearchUIDefaultPunchoutAppIconImage_loadRelatedAppIconImageForFileURL_scale_isDarkStyle_completionHandler___block_invoke_cold_1();
  }

  v2 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:*(a1 + 32)];
  v3 = [v2 _defaultApplication];
  if ([v3 supportsOpenInPlace] && (objc_msgSend(v3, "bundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 bundleIdentifier];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = [objc_opt_class() defaultRecordForURL:*(a1 + 32)];
    v5 = [v6 bundleIdentifier];

    if (!v5)
    {
      v7 = [MEMORY[0x1E6963608] defaultWorkspace];
      v8 = [v7 applicationsAvailableForOpeningURL:*(a1 + 32)];
      v9 = [v8 firstObject];
      v5 = [v9 bundleIdentifier];

      if (!v5)
      {
        goto LABEL_10;
      }
    }
  }

  if ([IDSBAASignerErrorDomain_block_invoke_disabledBundleIDs containsObject:v5])
  {
LABEL_10:
    (*(*(a1 + 40) + 16))();
    goto LABEL_12;
  }

  v10 = [WeakRetained variant];
  v11 = [WeakRetained contentType];
  v12 = [SearchUIAppIconImage appIconForBundleIdentifier:v5 isOnenessApp:0 variant:v10 contentType:v11];

  [WeakRetained setWrappedImage:v12];
  [v12 loadImageWithScale:*(a1 + 64) isDarkStyle:*(a1 + 40) completionHandler:*(a1 + 56)];

LABEL_12:
}

void __109__SearchUIDefaultPunchoutAppIconImage_loadRelatedAppIconImageForFileURL_scale_isDarkStyle_completionHandler___block_invoke_2()
{
  v0 = objc_opt_new();
  v2 = [SearchUIUtilities bundleIdentifierForApp:6];
  if (v2)
  {
    [v0 addObject:v2];
  }

  v1 = IDSBAASignerErrorDomain_block_invoke_disabledBundleIDs;
  IDSBAASignerErrorDomain_block_invoke_disabledBundleIDs = v0;
}

+ (id)defaultRecordForURL:(id)l
{
  v3 = [MEMORY[0x1E69635C0] appLinksWithURL:l limit:1 error:0];
  firstObject = [v3 firstObject];
  targetApplicationRecord = [firstObject targetApplicationRecord];

  return targetApplicationRecord;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = SearchUIDefaultPunchoutAppIconImage;
  if (![(SearchUIAppIconImage *)&v19 isEqual:equalCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_26;
  }

  v9 = equalCopy;
  v10 = [(SearchUIDefaultPunchoutAppIconImage *)self url];
  if (v10 && (-[SearchUIDefaultPunchoutAppIconImage url](self, "url"), v3 = objc_claimAutoreleasedReturnValue(), [v9 url], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "isEqual:", v4) & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v13 = [(SearchUIDefaultPunchoutAppIconImage *)self url];
    if (v13)
    {
      v12 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v14 = [v9 url];
    if (v14)
    {

      v12 = 0;
      goto LABEL_23;
    }

    v11 = 1;
  }

  fpItemID = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
  if (fpItemID)
  {
    fpItemID2 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
    fpItemID3 = [v9 fpItemID];
    if ([fpItemID2 isEqual:fpItemID3])
    {
      v12 = 1;
      goto LABEL_17;
    }
  }

  fpItemID4 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
  if (fpItemID4)
  {

    v12 = 0;
    if (fpItemID)
    {
      goto LABEL_17;
    }
  }

  else
  {
    fpItemID5 = [v9 fpItemID];
    v12 = fpItemID5 == 0;

    if (fpItemID)
    {
LABEL_17:

      if ((v11 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

  if (v11)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

LABEL_23:
  if (v10)
  {
  }

LABEL_26:
  return v12;
}

- (unint64_t)hash
{
  v3 = [(SearchUIDefaultPunchoutAppIconImage *)self url];
  v4 = [v3 hash];
  fpItemID = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
  v6 = [fpItemID hash] ^ v4;
  v9.receiver = self;
  v9.super_class = SearchUIDefaultPunchoutAppIconImage;
  v7 = [(SearchUIAppIconImage *)&v9 hash];

  return v6 ^ v7;
}

@end
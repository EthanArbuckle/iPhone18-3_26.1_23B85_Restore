@interface SearchUIDefaultPunchoutAppIconImage
+ (id)defaultRecordForURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SearchUIDefaultPunchoutAppIconImage)initWithFileProviderId:(id)a3 coreSpotlightId:(id)a4 variant:(unint64_t)a5;
- (SearchUIDefaultPunchoutAppIconImage)initWithSFImage:(id)a3 variant:(unint64_t)a4;
- (SearchUIDefaultPunchoutAppIconImage)initWithURL:(id)a3 variant:(unint64_t)a4;
- (id)defaultApplicationFetchQueue;
- (unint64_t)hash;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
- (void)loadRelatedAppIconImageForFileURL:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5 completionHandler:(id)a6;
@end

@implementation SearchUIDefaultPunchoutAppIconImage

- (SearchUIDefaultPunchoutAppIconImage)initWithSFImage:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 punchout];
  v8 = [v7 urls];
  v9 = [v8 firstObject];

  if (!v9)
  {
    v11 = [v6 fileProviderIdentifier];
    if ([v11 length])
    {
      v12 = [v6 coreSpotlightIdentifier];
      v13 = [v12 length];

      if (v13)
      {
        v14 = [v6 fileProviderIdentifier];
        v15 = [v6 coreSpotlightIdentifier];
        v10 = [(SearchUIDefaultPunchoutAppIconImage *)self initWithFileProviderId:v14 coreSpotlightId:v15 variant:a4];

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

  v10 = [(SearchUIDefaultPunchoutAppIconImage *)self initWithURL:v9 variant:a4];
  self = v10;
LABEL_8:
  [(SearchUIImage *)v10 setSfImage:v6];

  return v10;
}

- (SearchUIDefaultPunchoutAppIconImage)initWithURL:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SearchUIDefaultPunchoutAppIconImage;
  v7 = [(SearchUIAppIconImage *)&v10 initWithBundleIdentifier:0 isOnenessApp:0 variant:a4 contentType:0];
  v8 = v7;
  if (v7)
  {
    [(SearchUIDefaultPunchoutAppIconImage *)v7 setUrl:v6];
  }

  return v8;
}

- (SearchUIDefaultPunchoutAppIconImage)initWithFileProviderId:(id)a3 coreSpotlightId:(id)a4 variant:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = SearchUIDefaultPunchoutAppIconImage;
  v10 = [(SearchUIAppIconImage *)&v14 initWithBundleIdentifier:0 isOnenessApp:0 variant:a5 contentType:0];
  if (!v10 || ([SearchUIUtilities fileProviderItemIDForCoreSpotlightIdentifier:v9 fileProviderIdentifier:v8], v11 = objc_claimAutoreleasedReturnValue(), [(SearchUIDefaultPunchoutAppIconImage *)v10 setFpItemID:v11], v11, [(SearchUIDefaultPunchoutAppIconImage *)v10 fpItemID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v12 = v10;
  }

  return v12;
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SearchUIDefaultPunchoutAppIconImage *)self url];

  if (v9)
  {
    v10 = [(SearchUIDefaultPunchoutAppIconImage *)self url];
    [(SearchUIDefaultPunchoutAppIconImage *)self loadRelatedAppIconImageForFileURL:v10 scale:v5 isDarkStyle:v8 completionHandler:a3];
  }

  else
  {
    v11 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];

    if (v11)
    {
      objc_initWeak(&location, self);
      v12 = [MEMORY[0x1E69673B0] defaultManager];
      v13 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __88__SearchUIDefaultPunchoutAppIconImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
      v14[3] = &unk_1E85B3D68;
      objc_copyWeak(v16, &location);
      v16[1] = *&a3;
      v17 = v5;
      v15 = v8;
      [v12 fetchURLForItemID:v13 completionHandler:v14];

      objc_destroyWeak(v16);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v8 + 2))(v8, 0, 1);
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

- (void)loadRelatedAppIconImageForFileURL:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = [(SearchUIDefaultPunchoutAppIconImage *)self wrappedImage];

  if (v12)
  {
    v13 = [(SearchUIDefaultPunchoutAppIconImage *)self wrappedImage];
    [v13 loadImageWithScale:v7 isDarkStyle:v11 completionHandler:a4];
  }

  else
  {
    objc_initWeak(&location, self);
    v14 = [(SearchUIDefaultPunchoutAppIconImage *)self defaultApplicationFetchQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __109__SearchUIDefaultPunchoutAppIconImage_loadRelatedAppIconImageForFileURL_scale_isDarkStyle_completionHandler___block_invoke;
    v15[3] = &unk_1E85B2D88;
    objc_copyWeak(v18, &location);
    v16 = v10;
    v18[1] = *&a4;
    v19 = v7;
    v17 = v11;
    dispatch_async(v14, v15);

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

+ (id)defaultRecordForURL:(id)a3
{
  v3 = [MEMORY[0x1E69635C0] appLinksWithURL:a3 limit:1 error:0];
  v4 = [v3 firstObject];
  v5 = [v4 targetApplicationRecord];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  v19.receiver = self;
  v19.super_class = SearchUIDefaultPunchoutAppIconImage;
  if (![(SearchUIAppIconImage *)&v19 isEqual:v8]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v12 = 0;
    goto LABEL_26;
  }

  v9 = v8;
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

  v15 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
  if (v15)
  {
    v5 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
    v6 = [v9 fpItemID];
    if ([v5 isEqual:v6])
    {
      v12 = 1;
      goto LABEL_17;
    }
  }

  v16 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
  if (v16)
  {

    v12 = 0;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = [v9 fpItemID];
    v12 = v17 == 0;

    if (v15)
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
  v5 = [(SearchUIDefaultPunchoutAppIconImage *)self fpItemID];
  v6 = [v5 hash] ^ v4;
  v9.receiver = self;
  v9.super_class = SearchUIDefaultPunchoutAppIconImage;
  v7 = [(SearchUIAppIconImage *)&v9 hash];

  return v6 ^ v7;
}

@end
@interface SearchUIQuickLookThumbnailImage
- (QLThumbnailGenerationRequest)request;
- (SearchUIQuickLookThumbnailImage)initWithResult:(id)result url:(id)url isCompact:(BOOL)compact;
- (SearchUIQuickLookThumbnailImage)initWithSFImage:(id)image;
- (unint64_t)representationType;
- (void)dealloc;
- (void)generateImageWithRequest:(id)request completionHandler:(id)handler;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
- (void)setupRequest:(id)request;
- (void)updateSize;
@end

@implementation SearchUIQuickLookThumbnailImage

- (SearchUIQuickLookThumbnailImage)initWithSFImage:(id)image
{
  imageCopy = image;
  v16.receiver = self;
  v16.super_class = SearchUIQuickLookThumbnailImage;
  v5 = [(SearchUIImage *)&v16 initWithSFImage:imageCopy];
  if (v5)
  {
    filePath = [imageCopy filePath];
    [(SearchUIQuickLookThumbnailImage *)v5 setUrl:filePath];

    contentType = [imageCopy contentType];
    [(SearchUIQuickLookThumbnailImage *)v5 setContentType:contentType];

    coreSpotlightIdentifier = [imageCopy coreSpotlightIdentifier];
    if (coreSpotlightIdentifier && (v9 = coreSpotlightIdentifier, [imageCopy fileProviderIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      coreSpotlightIdentifier2 = [imageCopy coreSpotlightIdentifier];
      fileProviderIdentifier = [imageCopy fileProviderIdentifier];
      v13 = [SearchUIUtilities fileProviderItemIDForCoreSpotlightIdentifier:coreSpotlightIdentifier2 fileProviderIdentifier:fileProviderIdentifier];
      [(SearchUIQuickLookThumbnailImage *)v5 setFpItemID:v13];
    }

    else
    {
      v14 = [(SearchUIQuickLookThumbnailImage *)v5 url];

      if (v14)
      {
LABEL_9:
        [(SearchUIQuickLookThumbnailImage *)v5 updateSize];
        goto LABEL_10;
      }

      coreSpotlightIdentifier2 = SearchUIGeneralLog();
      if (os_log_type_enabled(coreSpotlightIdentifier2, OS_LOG_TYPE_ERROR))
      {
        [(SearchUIQuickLookThumbnailImage *)imageCopy initWithSFImage:coreSpotlightIdentifier2];
      }
    }

    goto LABEL_9;
  }

LABEL_10:

  return v5;
}

- (SearchUIQuickLookThumbnailImage)initWithResult:(id)result url:(id)url isCompact:(BOOL)compact
{
  compactCopy = compact;
  resultCopy = result;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = SearchUIQuickLookThumbnailImage;
  v10 = [(SearchUIQuickLookThumbnailImage *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(SearchUIQuickLookThumbnailImage *)v10 setUrl:urlCopy];
    v12 = [SearchUIUtilities fileProviderItemIDForFileResult:resultCopy];
    [(SearchUIQuickLookThumbnailImage *)v11 setFpItemID:v12];

    [(SearchUIQuickLookThumbnailImage *)v11 setIsCompact:compactCopy];
    [(SearchUIQuickLookThumbnailImage *)v11 updateSize];
  }

  return v11;
}

- (void)updateSize
{
  sfImage = [(SearchUIImage *)self sfImage];
  [sfImage size];
  v5 = v4;
  v7 = v6;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);

  if (v8 == v5 && v9 == v7)
  {
    [MEMORY[0x1E69D91A8] maxThumbnailSize];

    [(SearchUIQuickLookThumbnailImage *)self setSize:v11, v11];
  }
}

- (void)dealloc
{
  request = [(SearchUIQuickLookThumbnailImage *)self request];
  if (request)
  {
    mEMORY[0x1E697A0E8] = [MEMORY[0x1E697A0E8] sharedGenerator];
    [mEMORY[0x1E697A0E8] cancelRequest:request];
  }

  v5.receiver = self;
  v5.super_class = SearchUIQuickLookThumbnailImage;
  [(SearchUIQuickLookThumbnailImage *)&v5 dealloc];
}

- (void)generateImageWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__SearchUIQuickLookThumbnailImage_generateImageWithRequest_completionHandler___block_invoke;
  v10[3] = &unk_1E85B3F30;
  v10[4] = self;
  v8 = requestCopy;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  [SearchUIUtilities dispatchAsyncIfNecessary:v10];
  [(SearchUIQuickLookThumbnailImage *)self setRequest:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __78__SearchUIQuickLookThumbnailImage_generateImageWithRequest_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) url];
  v3 = [v2 hasDirectoryPath];

  v4 = [MEMORY[0x1E697A0E8] sharedGenerator];
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__SearchUIQuickLookThumbnailImage_generateImageWithRequest_completionHandler___block_invoke_2;
  v6[3] = &unk_1E85B3F08;
  objc_copyWeak(&v8, (a1 + 56));
  v9 = v3;
  v7 = *(a1 + 48);
  [v4 generateRepresentationsForRequest:v5 updateHandler:v6];

  objc_destroyWeak(&v8);
}

void __78__SearchUIQuickLookThumbnailImage_generateImageWithRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = [v7 UIImage];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__SearchUIQuickLookThumbnailImage_generateImageWithRequest_completionHandler___block_invoke_3;
  v11[3] = &unk_1E85B3EE0;
  v14[1] = a3;
  v10 = v9;
  v12 = v10;
  objc_copyWeak(v14, (a1 + 40));
  v15 = *(a1 + 48);
  v13 = *(a1 + 32);
  [SearchUIUtilities dispatchMainIfNecessary:v11];

  objc_destroyWeak(v14);
}

void __78__SearchUIQuickLookThumbnailImage_generateImageWithRequest_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!*(a1 + 32))
  {
    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v2 <= [WeakRetained bestRepresentationTypeLoaded])
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = [v5 uiImage];
    if (v6)
    {

LABEL_14:
      goto LABEL_15;
    }

    if (*(a1 + 64))
    {
      v7 = *(a1 + 56);

      if (!v7)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

LABEL_12:
LABEL_13:
    v8 = *(a1 + 56);
    v9 = objc_loadWeakRetained((a1 + 48));
    [v9 setBestRepresentationTypeLoaded:v8];

    v10 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setUiImage:v10];
    goto LABEL_14;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(a1 + 56);

  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_15:
  v11 = objc_loadWeakRetained((a1 + 48));
  v12 = [v11 uiImage];

  if (v12 || v2 == 2)
  {
    v13 = *(a1 + 40);
    v15 = objc_loadWeakRetained((a1 + 48));
    v14 = [v15 uiImage];
    (*(v13 + 16))(v13, v14, v2 == 2);
  }
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(SearchUIImage *)self size];
  v10 = v9;
  v12 = v11;
  fpItemID = [(SearchUIQuickLookThumbnailImage *)self fpItemID];
  v14 = [(SearchUIQuickLookThumbnailImage *)self url];
  v15 = v14;
  if (fpItemID)
  {
    v16 = SearchUIGeneralLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      coreSpotlightIdentifier = [fpItemID coreSpotlightIdentifier];
      providerID = [fpItemID providerID];
      *buf = 138412802;
      v41 = fpItemID;
      v42 = 2112;
      v43 = coreSpotlightIdentifier;
      v44 = 2112;
      v45 = providerID;
      _os_log_impl(&dword_1DA169000, v16, OS_LOG_TYPE_DEFAULT, "SearchUIQuickLookThumbnailImage loadImageWithScale fpItemId: %@ coreSpotlightIdentifier: %@ fileProviderIdentifier: %@", buf, 0x20u);
    }

    objc_initWeak(buf, self);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __84__SearchUIQuickLookThumbnailImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
    v35[3] = &unk_1E85B3F80;
    v36 = fpItemID;
    v39[1] = v10;
    v39[2] = v12;
    v39[3] = *&scale;
    objc_copyWeak(v39, buf);
    selfCopy = self;
    v38 = handlerCopy;
    [SearchUIUtilities dispatchAsyncIfNecessary:v35];

    objc_destroyWeak(v39);
    objc_destroyWeak(buf);
  }

  else
  {
    if (!v14)
    {
      contentType = [(SearchUIQuickLookThumbnailImage *)self contentType];

      if (contentType)
      {
        v20 = objc_alloc(MEMORY[0x1E69A8A00]);
        contentType2 = [(SearchUIQuickLookThumbnailImage *)self contentType];
        v22 = [v20 initWithType:contentType2];

        v23 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:*&v10 scale:{*&v12, scale}];
        [v23 setVariantOptions:32];
        v24 = [v22 imageForDescriptor:v23];
        v25 = v24;
        if (v24)
        {
          v26 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v24, "CGImage")}];
          (*(handlerCopy + 2))(handlerCopy, v26, 1);

          goto LABEL_12;
        }
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 1);
      goto LABEL_12;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __84__SearchUIQuickLookThumbnailImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3;
    v27[3] = &unk_1E85B3FA8;
    v28 = v14;
    selfCopy2 = self;
    scaleCopy = scale;
    styleCopy = style;
    v30 = handlerCopy;
    v32 = v10;
    v33 = v12;
    [SearchUIUtilities dispatchAsyncIfNecessary:v27];
  }

LABEL_12:
}

void __84__SearchUIQuickLookThumbnailImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69673B0] defaultManager];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__SearchUIQuickLookThumbnailImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
  v5[3] = &unk_1E85B3F58;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  objc_copyWeak(&v7, (a1 + 56));
  v4 = *(a1 + 48);
  v5[4] = *(a1 + 40);
  v6 = v4;
  [v2 fetchItemForItemID:v3 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void __84__SearchUIQuickLookThumbnailImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_alloc(MEMORY[0x1E697A0E0]);
    v4 = *(a1 + 72);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [v3 initWithFPItem:v8 size:objc_msgSend(WeakRetained scale:"representationType") representationTypes:{*(a1 + 56), *(a1 + 64), v4}];

    [*(a1 + 32) setupRequest:v6];
    v7 = objc_loadWeakRetained((a1 + 48));
    [v7 generateImageWithRequest:v6 completionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __84__SearchUIQuickLookThumbnailImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v16[0] = *MEMORY[0x1E695DB70];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v4 = [v2 resourceValuesForKeys:v3 error:0];
  v5 = [v4 allValues];
  v6 = [v5 firstObject];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [*(a1 + 40) url];
    v9 = +[SearchUIAppIconImage appIconForURL:variant:](SearchUIAppIconImage, "appIconForURL:variant:", v8, [*(a1 + 40) variant]);

    [*(a1 + 40) size];
    [v9 setSize:?];
    [v9 loadImageWithScale:*(a1 + 80) isDarkStyle:*(a1 + 48) completionHandler:*(a1 + 56)];
    [*(a1 + 40) setAppIconImage:v9];
  }

  else
  {
    v10 = SearchUIGeneralLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 40) url];
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1DA169000, v10, OS_LOG_TYPE_DEFAULT, "SearchUIQuickLookThumbnailImage loadImageWithScale url: %@", &v14, 0xCu);
    }

    v12 = objc_alloc(MEMORY[0x1E697A0E0]);
    v13 = [*(a1 + 40) url];
    v9 = [v12 initWithFileAtURL:v13 size:objc_msgSend(*(a1 + 40) scale:"representationType") representationTypes:{*(a1 + 64), *(a1 + 72), *(a1 + 56)}];

    [*(a1 + 40) setupRequest:v9];
    [*(a1 + 40) generateImageWithRequest:v9 completionHandler:*(a1 + 48)];
  }
}

- (void)setupRequest:(id)request
{
  requestCopy = request;
  [requestCopy setIconVariant:1];
  [requestCopy setIconMode:1];
}

- (unint64_t)representationType
{
  if ([(SearchUIQuickLookThumbnailImage *)self isCompact])
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

- (QLThumbnailGenerationRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (void)initWithSFImage:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 coreSpotlightIdentifier];
  v5 = [a1 fileProviderIdentifier];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1DA169000, a2, OS_LOG_TYPE_ERROR, "SearchUIQuickLookThumbnailImage: missing info for quicklookthumbnail: corespotlightIdentifier: %@ fileprovideridentifier: %@", &v6, 0x16u);
}

@end
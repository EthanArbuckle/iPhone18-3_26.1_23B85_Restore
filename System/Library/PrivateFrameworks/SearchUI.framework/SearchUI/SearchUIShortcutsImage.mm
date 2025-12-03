@interface SearchUIShortcutsImage
+ (id)imageFromContexualActionIcon:(id)icon;
- (SearchUIShortcutsImage)initWithSFImage:(id)image;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
@end

@implementation SearchUIShortcutsImage

- (SearchUIShortcutsImage)initWithSFImage:(id)image
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = SearchUIShortcutsImage;
  v5 = [(SearchUIImage *)&v11 initWithSFImage:imageCopy];
  if (v5)
  {
    lnPropertyIdentifier = [imageCopy lnPropertyIdentifier];

    if (lnPropertyIdentifier)
    {
      v7 = objc_alloc(MEMORY[0x1E69E0A40]);
      lnPropertyIdentifier2 = [imageCopy lnPropertyIdentifier];
      v9 = [v7 initWithLNPropertyIdentifier:lnPropertyIdentifier2 displayStyle:0];
      [(SearchUIShortcutsImage *)v5 setIcon:v9];
    }
  }

  return v5;
}

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  handlerCopy = handler;
  icon = [(SearchUIShortcutsImage *)self icon];

  if (icon)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __75__SearchUIShortcutsImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
    v19[3] = &unk_1E85B3FF8;
    objc_copyWeak(&v21, &location);
    v20 = handlerCopy;
    [SearchUIUtilities dispatchAsyncIfNecessary:v19];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    imageData = [(SearchUIImage *)self imageData];

    if (imageData)
    {
      [(SearchUIImage *)self size];
      v11 = v10;
      v12 = v9;
      if (v10 == *MEMORY[0x1E695F060] && v9 == *(MEMORY[0x1E695F060] + 8))
      {
        [SearchUIAppIconImage sizeForVariant:4];
        v11 = v14;
        v12 = v15;
      }

      imageData2 = [(SearchUIImage *)self imageData];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __75__SearchUIShortcutsImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_61;
      v17[3] = &unk_1E85B3CC8;
      v18 = handlerCopy;
      [SearchUIToolKitUtilities loadIconFromData:imageData2 size:v17 completionHandler:v11, v12];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 1);
    }
  }
}

void __75__SearchUIShortcutsImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained icon];
  v4 = [v3 lnPropertyIdentifier];

  v5 = [WeakRetained icon];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__SearchUIShortcutsImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
  v7[3] = &unk_1E85B3FD0;
  v8 = v4;
  v9 = *(a1 + 32);
  v6 = v4;
  [v5 loadLNPropertyImageWithCompletion:v7];
}

void __75__SearchUIShortcutsImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 imageData], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v7 = SearchUIGeneralLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1DA169000, v7, OS_LOG_TYPE_DEFAULT, "SearchUIShortcutsImage failed to load image with property identifier: %@, error: %@", &v14, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v12 = [v5 imageData];
    v13 = [v11 initWithData:v12];
    (*(v10 + 16))(v10, v13, 1);
  }
}

uint64_t __75__SearchUIShortcutsImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_61(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  else
  {
    v5 = SearchUIGeneralLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DA169000, v5, OS_LOG_TYPE_DEFAULT, "SearchUIShortcutsImage failed to load image with image data", v6, 2u);
    }

    return (*(*(a1 + 32) + 16))();
  }
}

+ (id)imageFromContexualActionIcon:(id)icon
{
  iconCopy = icon;
  imageData = [iconCopy imageData];

  if (imageData)
  {
    applicationBundleIdentifier = objc_opt_new();
    imageData2 = [iconCopy imageData];
    [applicationBundleIdentifier setImageData:imageData2];

    [iconCopy imageScale];
    [applicationBundleIdentifier setScale:?];
    goto LABEL_8;
  }

  systemName = [iconCopy systemName];

  if (systemName)
  {
    applicationBundleIdentifier = objc_opt_new();
    wfIcon = [iconCopy wfIcon];
    symbolName = [wfIcon symbolName];
    [applicationBundleIdentifier setSymbolName:symbolName];

    [applicationBundleIdentifier setIsTemplate:1];
    [applicationBundleIdentifier setPunchThroughBackground:1];
    [applicationBundleIdentifier setCornerRoundingStyle:4];
  }

  else
  {
    applicationBundleIdentifier = [iconCopy applicationBundleIdentifier];

    if (!applicationBundleIdentifier)
    {
      goto LABEL_8;
    }

    applicationBundleIdentifier = objc_opt_new();
    wfIcon = [iconCopy applicationBundleIdentifier];
    [applicationBundleIdentifier setBundleIdentifier:wfIcon];
  }

LABEL_8:
  if (![applicationBundleIdentifier cornerRoundingStyle])
  {
    [applicationBundleIdentifier setCornerRoundingStyle:{4 * (objc_msgSend(iconCopy, "displayStyle") == 1)}];
  }

  return applicationBundleIdentifier;
}

@end
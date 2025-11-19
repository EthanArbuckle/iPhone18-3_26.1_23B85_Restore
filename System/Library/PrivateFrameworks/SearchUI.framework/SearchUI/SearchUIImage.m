@interface SearchUIImage
+ (id)imageWithSFImage:(id)a3;
+ (id)imageWithSFImage:(id)a3 variantForAppIcon:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isTemplate;
- (BOOL)shouldCropToCircle;
- (CGSize)size;
- (SearchUIImage)initWithImage:(id)a3;
- (SearchUIImage)initWithSFImage:(id)a3;
- (double)aspectRatio;
- (double)cornerRadius;
- (double)scale;
- (id)badgingImage;
- (id)imageData;
- (id)loadImageWithImageData:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5;
- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4;
- (int)cornerRoundingStyle;
- (int)defaultCornerRoundingStyle;
- (unint64_t)hash;
- (void)decodeImageData:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5 completionHandler:(id)a6;
- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SearchUIImage

- (BOOL)isTemplate
{
  v6.receiver = self;
  v6.super_class = SearchUIImage;
  if ([(SearchUIImage *)&v6 isTemplate])
  {
    return 1;
  }

  v4 = [(SearchUIImage *)self sfImage];
  v3 = [v4 isTemplate];

  return v3;
}

- (CGSize)size
{
  v13.receiver = self;
  v13.super_class = SearchUIImage;
  [(SearchUIImage *)&v13 size];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x1E695F060] && v3 == *(MEMORY[0x1E695F060] + 8))
  {
    v8 = [(SearchUIImage *)self sfImage];
    [v8 size];
    v5 = v9;
    v6 = v10;
  }

  v11 = v5;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (int)cornerRoundingStyle
{
  v3 = [(SearchUIImage *)self sfImage];
  v4 = [v3 cornerRoundingStyle];
  if (!v3 || (v5 = v4) == 0)
  {
    v9.receiver = self;
    v9.super_class = SearchUIImage;
    if ([(SearchUIImage *)&v9 cornerRoundingStyle])
    {
      v8.receiver = self;
      v8.super_class = SearchUIImage;
      v6 = [(SearchUIImage *)&v8 cornerRoundingStyle];
    }

    else
    {
      v6 = [(SearchUIImage *)self defaultCornerRoundingStyle];
    }

    v5 = v6;
  }

  return v5;
}

- (id)badgingImage
{
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  v3 = [(SearchUIImage *)&v8 badgingImage];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchUIImage *)self sfImage];
    v5 = [v6 badgingImage];
  }

  return v5;
}

- (double)scale
{
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  [(SearchUIImage *)&v8 scale];
  if (v3 != 0.0)
  {
    return v3;
  }

  v4 = [(SearchUIImage *)self sfImage];
  [v4 scale];
  v6 = v5;

  return v6;
}

+ (id)imageWithSFImage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [SearchUIAppIconImage bestVariantForSize:sanitizeSFImage(v4)];
  }

  else
  {
    v5 = 4;
  }

  v6 = [a1 imageWithSFImage:v4 variantForAppIcon:v5];

  return v6;
}

+ (id)imageWithSFImage:(id)a3 variantForAppIcon:(unint64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    v7 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SearchUIAvatarImage alloc] initWithMonogramImage:v5];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SearchUIAvatarImage alloc] initWithContactImage:v5];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[SearchUIQuickLookThumbnailImage alloc] initWithSFImage:v5];
    [(SearchUIQuickLookThumbnailImage *)v7 setVariant:a4];
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [(SearchUIImage *)[SearchUILocalImage alloc] initWithSFImage:v5]) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
      if ([v9 iconType] == 1)
      {
        v7 = [[SearchUIDefaultBrowserAppIconImage alloc] initWithVariant:a4];
      }

      else
      {
        v11 = [v9 bundleIdentifier];
        v12 = [v9 iconType] == 2;
        v13 = [v9 contentType];
        v7 = [SearchUIAppIconImage appIconForBundleIdentifier:v11 isOnenessApp:v12 variant:a4 contentType:v13];
      }

      [(SearchUIImage *)v7 setSfImage:v9];
      if (sanitizeSFImage(v9) != *MEMORY[0x1E695F060] || v14 != *(MEMORY[0x1E695F060] + 8))
      {
        [(SearchUIQuickLookThumbnailImage *)v7 setSize:?];
      }

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = SearchUISymbolImage;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = SearchUIPhotosLibraryImage;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = SearchUIPhotosAlbumImage;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = SearchUIPhotosMemoryImage;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [SearchUICalendarIconImage alloc];
              v9 = [v5 date];
              v7 = [(SearchUICalendarIconImage *)v15 initWithDate:v9 variant:a4];
LABEL_26:

              goto LABEL_10;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v10 = SearchUIMediaArtworkImage;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v6 = [[SearchUIClockImage alloc] initWithClockImage:v5 variant:a4];
                goto LABEL_9;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v10 = SearchUIShortcutsImage;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v6 = [[SearchUIDefaultPunchoutAppIconImage alloc] initWithSFImage:v5 variant:a4];
                  goto LABEL_9;
                }

                v10 = SearchUIImage;
              }
            }
          }
        }
      }
    }

    v6 = [[v10 alloc] initWithSFImage:v5];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (SearchUIImage)initWithSFImage:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  v6 = [(SearchUIImage *)&v8 init];
  if (v6)
  {
    sanitizeSFImage(v5);
    objc_storeStrong(&v6->_sfImage, a3);
  }

  return v6;
}

- (SearchUIImage)initWithImage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  v5 = [(SearchUIImage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIImage *)v5 setUiImage:v4];
    [v4 size];
    [(SearchUIImage *)v6 setSize:?];
    -[SearchUIImage setIsTemplate:](v6, "setIsTemplate:", [v4 renderingMode] == 2);
  }

  return v6;
}

- (int)defaultCornerRoundingStyle
{
  if ([(SearchUIImage *)self shouldCropToCircle])
  {
    return 4;
  }

  [(SearchUIImage *)self cornerRadius];
  if (v4 <= 6.0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(SearchUIImage *)self uiImage];
  if (v9)
  {
    v8[2](v8, v9, 1);
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setUiScale:a3];
    [v10 setHasDarkAppearance:v5];
    v11 = [(SearchUIImage *)self lastLoadedContext];
    v12 = [(SearchUIImage *)self sfImage];
    if (v11)
    {
      [v11 uiScale];
      if (v13 != a3 || [v11 hasDarkAppearance] != v5)
      {
        [v12 setImageData:0];
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
    v16[3] = &unk_1E85B3DE8;
    v16[4] = self;
    v20 = a3;
    v21 = v5;
    v18 = v10;
    v19 = v8;
    v17 = v12;
    v14 = v10;
    v15 = v12;
    [SearchUIUtilities dispatchAsyncIfNecessary:v16];
  }
}

void __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadImageWithScale:*(a1 + 72) isDarkStyle:*(a1 + 64)];
  if (v2)
  {
    v3 = *(*(a1 + 56) + 16);
LABEL_3:
    v3();
    goto LABEL_12;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
    v3 = *(*(a1 + 56) + 16);
    goto LABEL_3;
  }

  v5 = [v4 methodForSelector:sel_loadImageDataWithCompletionAndErrorHandler_];
  v6 = [MEMORY[0x1E69CA138] instanceMethodForSelector:sel_loadImageDataWithCompletionAndErrorHandler_];
  v7 = *(a1 + 40);
  if (v5 == v6)
  {
    v9 = [*(a1 + 40) methodForSelector:sel_loadImageDataWithCompletionHandler_];
    if (v9 == [MEMORY[0x1E69CA138] instanceMethodForSelector:sel_loadImageDataWithCompletionHandler_])
    {
      [*(a1 + 32) setLastLoadedContext:*(a1 + 48)];
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_4;
      v13[3] = &unk_1E85B3D98;
      v13[4] = *(a1 + 32);
      v15 = *(a1 + 64);
      v16 = *(a1 + 72);
      v14 = *(a1 + 56);
      [v11 loadImageDataWithContext:v12 completionHandler:v13];
      v8 = v14;
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_3;
      v17[3] = &unk_1E85B3DC0;
      v10 = *(a1 + 40);
      v17[4] = *(a1 + 32);
      v19 = *(a1 + 64);
      v20 = *(a1 + 72);
      v18 = *(a1 + 56);
      [v10 loadImageDataWithCompletionHandler:v17];
      v8 = v18;
    }
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_2;
    v21[3] = &unk_1E85B3D98;
    v21[4] = *(a1 + 32);
    v23 = *(a1 + 64);
    v24 = *(a1 + 72);
    v22 = *(a1 + 56);
    [v7 loadImageDataWithCompletionAndErrorHandler:v21];
    v8 = v22;
  }

LABEL_12:
}

void __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) decodeImageData:a2 scale:*(a1 + 56) isDarkStyle:*(a1 + 40) completionHandler:*(a1 + 48)];
  v3 = [*(a1 + 32) sfImage];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_5;
    v5[3] = &unk_1E85B24C8;
    v5[4] = *(a1 + 32);
    [MEMORY[0x1E69D9240] dispatchAsync:v5];
  }
}

void __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) sfImage];
  [v1 setImageData:0];
}

- (void)decodeImageData:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__SearchUIImage_decodeImageData_scale_isDarkStyle_completionHandler___block_invoke;
  v14[3] = &unk_1E85B2E00;
  v14[4] = self;
  v15 = v10;
  v17 = a4;
  v18 = a5;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [SearchUIUtilities dispatchAsyncIfNecessary:v14];
}

void __69__SearchUIImage_decodeImageData_scale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadImageWithImageData:*(a1 + 40) scale:*(a1 + 64) isDarkStyle:*(a1 + 56)];
  (*(*(a1 + 48) + 16))();
}

- (id)loadImageWithScale:(double)a3 isDarkStyle:(BOOL)a4
{
  v4 = a4;
  v7 = [(SearchUIImage *)self imageData];
  v8 = [(SearchUIImage *)self loadImageWithImageData:v7 scale:v4 isDarkStyle:a3];

  return v8;
}

- (id)loadImageWithImageData:(id)a3 scale:(double)a4 isDarkStyle:(BOOL)a5
{
  v6 = a3;
  v7 = [(SearchUIImage *)self uiImage];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v6];
  }

  v10 = v9;

  return v10;
}

- (double)cornerRadius
{
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  [(SearchUIImage *)&v8 cornerRadius];
  if (v3 != 0.0)
  {
    return v3;
  }

  v4 = [(SearchUIImage *)self sfImage];
  [v4 cornerRadius];
  v6 = v5;

  return v6;
}

- (BOOL)shouldCropToCircle
{
  v6.receiver = self;
  v6.super_class = SearchUIImage;
  if ([(SearchUIImage *)&v6 shouldCropToCircle])
  {
    return 1;
  }

  v4 = [(SearchUIImage *)self sfImage];
  v3 = [v4 shouldCropToCircle];

  return v3;
}

- (id)imageData
{
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  v3 = [(SearchUIImage *)&v8 imageData];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(SearchUIImage *)self sfImage];
    v5 = [v6 imageData];
  }

  return v5;
}

- (double)aspectRatio
{
  [(SearchUIImage *)self size];
  result = v2 / v3;
  if (v3 == 0.0)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    if ([(SearchUIImage *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = [(SearchUIImage *)self sfImage];
      if (v5)
      {
      }

      else
      {
        v7 = [(SearchUIImage *)v4 sfImage];

        if (!v7)
        {
          v8 = [(SearchUIImage *)self uiImage];
          v9 = [(SearchUIImage *)v4 uiImage];
          if (![v8 isEqual:v9])
          {
            v6 = 0;
            goto LABEL_10;
          }

          v12.receiver = self;
          v12.super_class = SearchUIImage;
          v10 = [(SearchUIImage *)&v12 isEqual:v4];
LABEL_9:
          v6 = v10;
LABEL_10:

          goto LABEL_11;
        }
      }

      v8 = [(SearchUIImage *)self sfImage];
      v9 = [(SearchUIImage *)v4 sfImage];
      v10 = [v8 isEqual:v9];
      goto LABEL_9;
    }

    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(SearchUIImage *)self sfImage];
  if (v3)
  {
    v4 = [(SearchUIImage *)self sfImage];
    v5 = [v4 hash];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUIImage;
    v5 = [(SearchUIImage *)&v7 hash];
  }

  return v5;
}

@end
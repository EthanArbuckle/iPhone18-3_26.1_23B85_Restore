@interface SearchUIImage
+ (id)imageWithSFImage:(id)image;
+ (id)imageWithSFImage:(id)image variantForAppIcon:(unint64_t)icon;
- (BOOL)isEqual:(id)equal;
- (BOOL)isTemplate;
- (BOOL)shouldCropToCircle;
- (CGSize)size;
- (SearchUIImage)initWithImage:(id)image;
- (SearchUIImage)initWithSFImage:(id)image;
- (double)aspectRatio;
- (double)cornerRadius;
- (double)scale;
- (id)badgingImage;
- (id)imageData;
- (id)loadImageWithImageData:(id)data scale:(double)scale isDarkStyle:(BOOL)style;
- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style;
- (int)cornerRoundingStyle;
- (int)defaultCornerRoundingStyle;
- (unint64_t)hash;
- (void)decodeImageData:(id)data scale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler;
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

  sfImage = [(SearchUIImage *)self sfImage];
  isTemplate = [sfImage isTemplate];

  return isTemplate;
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
    sfImage = [(SearchUIImage *)self sfImage];
    [sfImage size];
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
  sfImage = [(SearchUIImage *)self sfImage];
  cornerRoundingStyle = [sfImage cornerRoundingStyle];
  if (!sfImage || (v5 = cornerRoundingStyle) == 0)
  {
    v9.receiver = self;
    v9.super_class = SearchUIImage;
    if ([(SearchUIImage *)&v9 cornerRoundingStyle])
    {
      v8.receiver = self;
      v8.super_class = SearchUIImage;
      cornerRoundingStyle2 = [(SearchUIImage *)&v8 cornerRoundingStyle];
    }

    else
    {
      cornerRoundingStyle2 = [(SearchUIImage *)self defaultCornerRoundingStyle];
    }

    v5 = cornerRoundingStyle2;
  }

  return v5;
}

- (id)badgingImage
{
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  badgingImage = [(SearchUIImage *)&v8 badgingImage];
  v4 = badgingImage;
  if (badgingImage)
  {
    badgingImage2 = badgingImage;
  }

  else
  {
    sfImage = [(SearchUIImage *)self sfImage];
    badgingImage2 = [sfImage badgingImage];
  }

  return badgingImage2;
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

  sfImage = [(SearchUIImage *)self sfImage];
  [sfImage scale];
  v6 = v5;

  return v6;
}

+ (id)imageWithSFImage:(id)image
{
  imageCopy = image;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [SearchUIAppIconImage bestVariantForSize:sanitizeSFImage(imageCopy)];
  }

  else
  {
    v5 = 4;
  }

  v6 = [self imageWithSFImage:imageCopy variantForAppIcon:v5];

  return v6;
}

+ (id)imageWithSFImage:(id)image variantForAppIcon:(unint64_t)icon
{
  imageCopy = image;
  if (!imageCopy)
  {
    v7 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = imageCopy;
LABEL_9:
    v7 = v6;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SearchUIAvatarImage alloc] initWithMonogramImage:imageCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [[SearchUIAvatarImage alloc] initWithContactImage:imageCopy];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[SearchUIQuickLookThumbnailImage alloc] initWithSFImage:imageCopy];
    [(SearchUIQuickLookThumbnailImage *)v7 setVariant:icon];
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [(SearchUIImage *)[SearchUILocalImage alloc] initWithSFImage:imageCopy]) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      date = imageCopy;
      if ([date iconType] == 1)
      {
        v7 = [[SearchUIDefaultBrowserAppIconImage alloc] initWithVariant:icon];
      }

      else
      {
        bundleIdentifier = [date bundleIdentifier];
        v12 = [date iconType] == 2;
        contentType = [date contentType];
        v7 = [SearchUIAppIconImage appIconForBundleIdentifier:bundleIdentifier isOnenessApp:v12 variant:icon contentType:contentType];
      }

      [(SearchUIImage *)v7 setSfImage:date];
      if (sanitizeSFImage(date) != *MEMORY[0x1E695F060] || v14 != *(MEMORY[0x1E695F060] + 8))
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
              date = [imageCopy date];
              v7 = [(SearchUICalendarIconImage *)v15 initWithDate:date variant:icon];
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
                v6 = [[SearchUIClockImage alloc] initWithClockImage:imageCopy variant:icon];
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
                  v6 = [[SearchUIDefaultPunchoutAppIconImage alloc] initWithSFImage:imageCopy variant:icon];
                  goto LABEL_9;
                }

                v10 = SearchUIImage;
              }
            }
          }
        }
      }
    }

    v6 = [[v10 alloc] initWithSFImage:imageCopy];
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (SearchUIImage)initWithSFImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  v6 = [(SearchUIImage *)&v8 init];
  if (v6)
  {
    sanitizeSFImage(imageCopy);
    objc_storeStrong(&v6->_sfImage, image);
  }

  return v6;
}

- (SearchUIImage)initWithImage:(id)image
{
  imageCopy = image;
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  v5 = [(SearchUIImage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIImage *)v5 setUiImage:imageCopy];
    [imageCopy size];
    [(SearchUIImage *)v6 setSize:?];
    -[SearchUIImage setIsTemplate:](v6, "setIsTemplate:", [imageCopy renderingMode] == 2);
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

- (void)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  styleCopy = style;
  handlerCopy = handler;
  uiImage = [(SearchUIImage *)self uiImage];
  if (uiImage)
  {
    handlerCopy[2](handlerCopy, uiImage, 1);
  }

  else
  {
    v10 = objc_opt_new();
    [v10 setUiScale:scale];
    [v10 setHasDarkAppearance:styleCopy];
    lastLoadedContext = [(SearchUIImage *)self lastLoadedContext];
    sfImage = [(SearchUIImage *)self sfImage];
    if (lastLoadedContext)
    {
      [lastLoadedContext uiScale];
      if (v13 != scale || [lastLoadedContext hasDarkAppearance] != styleCopy)
      {
        [sfImage setImageData:0];
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__SearchUIImage_loadImageWithScale_isDarkStyle_completionHandler___block_invoke;
    v16[3] = &unk_1E85B3DE8;
    v16[4] = self;
    scaleCopy = scale;
    v21 = styleCopy;
    v18 = v10;
    v19 = handlerCopy;
    v17 = sfImage;
    v14 = v10;
    v15 = sfImage;
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

- (void)decodeImageData:(id)data scale:(double)scale isDarkStyle:(BOOL)style completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__SearchUIImage_decodeImageData_scale_isDarkStyle_completionHandler___block_invoke;
  v14[3] = &unk_1E85B2E00;
  v14[4] = self;
  v15 = dataCopy;
  scaleCopy = scale;
  styleCopy = style;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = dataCopy;
  [SearchUIUtilities dispatchAsyncIfNecessary:v14];
}

void __69__SearchUIImage_decodeImageData_scale_isDarkStyle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) loadImageWithImageData:*(a1 + 40) scale:*(a1 + 64) isDarkStyle:*(a1 + 56)];
  (*(*(a1 + 48) + 16))();
}

- (id)loadImageWithScale:(double)scale isDarkStyle:(BOOL)style
{
  styleCopy = style;
  imageData = [(SearchUIImage *)self imageData];
  v8 = [(SearchUIImage *)self loadImageWithImageData:imageData scale:styleCopy isDarkStyle:scale];

  return v8;
}

- (id)loadImageWithImageData:(id)data scale:(double)scale isDarkStyle:(BOOL)style
{
  dataCopy = data;
  uiImage = [(SearchUIImage *)self uiImage];
  v8 = uiImage;
  if (uiImage)
  {
    v9 = uiImage;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:dataCopy];
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

  sfImage = [(SearchUIImage *)self sfImage];
  [sfImage cornerRadius];
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

  sfImage = [(SearchUIImage *)self sfImage];
  shouldCropToCircle = [sfImage shouldCropToCircle];

  return shouldCropToCircle;
}

- (id)imageData
{
  v8.receiver = self;
  v8.super_class = SearchUIImage;
  imageData = [(SearchUIImage *)&v8 imageData];
  v4 = imageData;
  if (imageData)
  {
    imageData2 = imageData;
  }

  else
  {
    sfImage = [(SearchUIImage *)self sfImage];
    imageData2 = [sfImage imageData];
  }

  return imageData2;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    if ([(SearchUIImage *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      sfImage = [(SearchUIImage *)self sfImage];
      if (sfImage)
      {
      }

      else
      {
        sfImage2 = [(SearchUIImage *)equalCopy sfImage];

        if (!sfImage2)
        {
          uiImage = [(SearchUIImage *)self uiImage];
          uiImage2 = [(SearchUIImage *)equalCopy uiImage];
          if (![uiImage isEqual:uiImage2])
          {
            v6 = 0;
            goto LABEL_10;
          }

          v12.receiver = self;
          v12.super_class = SearchUIImage;
          v10 = [(SearchUIImage *)&v12 isEqual:equalCopy];
LABEL_9:
          v6 = v10;
LABEL_10:

          goto LABEL_11;
        }
      }

      uiImage = [(SearchUIImage *)self sfImage];
      uiImage2 = [(SearchUIImage *)equalCopy sfImage];
      v10 = [uiImage isEqual:uiImage2];
      goto LABEL_9;
    }

    v6 = 0;
  }

LABEL_11:

  return v6;
}

- (unint64_t)hash
{
  sfImage = [(SearchUIImage *)self sfImage];
  if (sfImage)
  {
    sfImage2 = [(SearchUIImage *)self sfImage];
    v5 = [sfImage2 hash];
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
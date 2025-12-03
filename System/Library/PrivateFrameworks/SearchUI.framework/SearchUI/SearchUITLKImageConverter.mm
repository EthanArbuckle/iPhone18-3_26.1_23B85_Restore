@interface SearchUITLKImageConverter
+ (id)imageForSFImage:(id)image;
+ (id)imagesForSFImages:(id)images;
+ (unint64_t)tlkCornerRoundingStyleForSFCornerRoundingStyle:(int)style;
+ (void)applySeachUIImage:(id)image toTLKImage:(id)kImage;
@end

@implementation SearchUITLKImageConverter

+ (id)imagesForSFImages:(id)images
{
  v19 = *MEMORY[0x1E69E9840];
  imagesCopy = images;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = imagesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self imageForSFImage:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)imageForSFImage:(id)image
{
  imageCopy = image;
  if (!imageCopy)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v5 = [SearchUIImageCache cachedTlkImageForSFImage:imageCopy];
  if (!v5)
  {
    v6 = [SearchUIImage imageWithSFImage:imageCopy];
    v5 = [[SearchUITLKImage alloc] initWithSearchUIImage:v6];
    [self applySeachUIImage:v6 toTLKImage:v5];
    [SearchUIImageCache cacheTLKImage:v5 forSFImage:imageCopy];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([imageCopy iconType] != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![imageCopy isOnenessApp])
    {
      goto LABEL_11;
    }
  }

  v7 = objc_opt_new();
  [v7 setSymbolName:@"iphone.gen3"];
  [v7 setIsTemplate:1];
  [imageCopy setBadgingImage:v7];
  [(TLKImage *)v5 setBadgeWantsPlatter:1];

LABEL_11:
  v8 = [MEMORY[0x1E69D9240] isMacOS] ^ 1;
  badgingImage = [imageCopy badgingImage];
  v10 = [SearchUIImage imageWithSFImage:badgingImage variantForAppIcon:v8];

  v11 = [self imageForSFImage:v10];
  [(TLKImage *)v5 setBadgeImage:v11];

LABEL_12:

  return v5;
}

+ (void)applySeachUIImage:(id)image toTLKImage:(id)kImage
{
  kImageCopy = kImage;
  imageCopy = image;
  [imageCopy size];
  [kImageCopy setSize:?];
  [kImageCopy setIsTemplate:{objc_msgSend(imageCopy, "isTemplate")}];
  [kImageCopy setCornerRoundingStyle:{objc_msgSend(self, "tlkCornerRoundingStyleForSFCornerRoundingStyle:", objc_msgSend(imageCopy, "cornerRoundingStyle"))}];
  supportsFastPathShadow = [imageCopy supportsFastPathShadow];

  [kImageCopy setSupportsFastPathShadow:supportsFastPathShadow];
}

+ (unint64_t)tlkCornerRoundingStyleForSFCornerRoundingStyle:(int)style
{
  v3 = (style - 2);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

@end
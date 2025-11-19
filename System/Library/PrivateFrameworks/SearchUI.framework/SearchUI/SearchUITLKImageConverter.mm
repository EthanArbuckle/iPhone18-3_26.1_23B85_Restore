@interface SearchUITLKImageConverter
+ (id)imageForSFImage:(id)a3;
+ (id)imagesForSFImages:(id)a3;
+ (unint64_t)tlkCornerRoundingStyleForSFCornerRoundingStyle:(int)a3;
+ (void)applySeachUIImage:(id)a3 toTLKImage:(id)a4;
@end

@implementation SearchUITLKImageConverter

+ (id)imagesForSFImages:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

        v11 = [a1 imageForSFImage:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)imageForSFImage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = 0;
    goto LABEL_12;
  }

  v5 = [SearchUIImageCache cachedTlkImageForSFImage:v4];
  if (!v5)
  {
    v6 = [SearchUIImage imageWithSFImage:v4];
    v5 = [[SearchUITLKImage alloc] initWithSearchUIImage:v6];
    [a1 applySeachUIImage:v6 toTLKImage:v5];
    [SearchUIImageCache cacheTLKImage:v5 forSFImage:v4];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 iconType] != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v4 isOnenessApp])
    {
      goto LABEL_11;
    }
  }

  v7 = objc_opt_new();
  [v7 setSymbolName:@"iphone.gen3"];
  [v7 setIsTemplate:1];
  [v4 setBadgingImage:v7];
  [(TLKImage *)v5 setBadgeWantsPlatter:1];

LABEL_11:
  v8 = [MEMORY[0x1E69D9240] isMacOS] ^ 1;
  v9 = [v4 badgingImage];
  v10 = [SearchUIImage imageWithSFImage:v9 variantForAppIcon:v8];

  v11 = [a1 imageForSFImage:v10];
  [(TLKImage *)v5 setBadgeImage:v11];

LABEL_12:

  return v5;
}

+ (void)applySeachUIImage:(id)a3 toTLKImage:(id)a4
{
  v8 = a4;
  v6 = a3;
  [v6 size];
  [v8 setSize:?];
  [v8 setIsTemplate:{objc_msgSend(v6, "isTemplate")}];
  [v8 setCornerRoundingStyle:{objc_msgSend(a1, "tlkCornerRoundingStyleForSFCornerRoundingStyle:", objc_msgSend(v6, "cornerRoundingStyle"))}];
  v7 = [v6 supportsFastPathShadow];

  [v8 setSupportsFastPathShadow:v7];
}

+ (unint64_t)tlkCornerRoundingStyleForSFCornerRoundingStyle:(int)a3
{
  v3 = (a3 - 2);
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
@interface UIImage(WKAdditions)
+ (id)wk_dynamicImageWithTraitCollectionToImageMap:()WKAdditions baseImage:;
+ (id)wk_imageFromColor:()WKAdditions;
+ (id)wk_imageWithContentsOfURL:()WKAdditions;
+ (id)wk_imageWithLightAppearanceImage:()WKAdditions darkAppearanceImage:;
+ (id)wk_overlayForegroundImage:()WKAdditions overBackgroundImage:;
+ (id)wk_splitThumbnailWithLightAppearanceImage:()WKAdditions darkAppearanceImage:;
- (id)wk_cropImageToRect:()WKAdditions;
@end

@implementation UIImage(WKAdditions)

+ (id)wk_imageWithContentsOfURL:()WKAdditions
{
  v3 = a3;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v3 path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    lastPathComponent = [v3 lastPathComponent];
    lowercaseString = [lastPathComponent lowercaseString];
    v9 = [lowercaseString hasSuffix:@"cpbitmap"];

    v10 = MEMORY[0x1E69DCAB8];
    path2 = [v3 path];
    if (v9)
    {
      [v10 imageWithContentsOfCPBitmapFile:path2 flags:0];
    }

    else
    {
      [v10 imageWithContentsOfFile:path2];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)wk_imageFromColor:()WKAdditions
{
  v3 = a3;
  v9.width = 1.0;
  v9.height = 1.0;
  UIGraphicsBeginImageContext(v9);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [v3 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  CGContextFillRect(CurrentContext, v10);
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v6;
}

+ (id)wk_imageWithLightAppearanceImage:()WKAdditions darkAppearanceImage:
{
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 | v7)
  {
    if (v7)
    {
      if (v6)
      {
        currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
        v10 = [currentTraitCollection traitCollectionByModifyingTraits:&__block_literal_global_12];
        v11 = [currentTraitCollection traitCollectionByModifyingTraits:&__block_literal_global_5_3];
        v17[0] = v10;
        v17[1] = v11;
        v18[0] = v6;
        v18[1] = v8;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
        v13 = [self wk_dynamicImageWithTraitCollectionToImageMap:v12 baseImage:v6];

        goto LABEL_9;
      }

      v14 = v7;
    }

    else
    {
      v14 = v6;
    }
  }

  else
  {
    v14 = objc_opt_new();
  }

  v13 = v14;
LABEL_9:

  v15 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)wk_overlayForegroundImage:()WKAdditions overBackgroundImage:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      if (v5)
      {
        [v6 size];
        v9 = v8;
        [v5 size];
        v11 = fmax(v9, v10);
        [v7 size];
        v13 = v12;
        [v5 size];
        v15 = fmax(v13, v14);
        v16 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v11, v15}];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __70__UIImage_WKAdditions__wk_overlayForegroundImage_overBackgroundImage___block_invoke;
        v20[3] = &unk_1E8767460;
        v23 = v11;
        v24 = v15;
        v21 = v7;
        v22 = v5;
        v17 = [v16 imageWithActions:v20];

        goto LABEL_9;
      }

      v18 = v6;
    }

    else
    {
      v18 = v5;
    }
  }

  else
  {
    v18 = objc_opt_new();
  }

  v17 = v18;
LABEL_9:

  return v17;
}

+ (id)wk_splitThumbnailWithLightAppearanceImage:()WKAdditions darkAppearanceImage:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      if (v5)
      {
        [v5 size];
        v9 = v8 * 0.5;
        [v5 size];
        v11 = v10;
        [v5 scale];
        v13 = WKSizeApplyScale(v9, v11, v12);
        v15 = v14;
        [v7 size];
        v17 = v16 * 0.5;
        [v7 size];
        v19 = v18;
        [v7 scale];
        v21 = WKSizeApplyScale(v17, v19, v20);
        v23 = v22;
        v24 = [v5 wk_cropImageToRect:{0.0, 0.0, v13, v15}];
        v25 = [v7 wk_cropImageToRect:{v21, 0.0, v21, v23}];
        v26 = fmax(v15, v23);
        v27 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v13 + v21, v26}];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __86__UIImage_WKAdditions__wk_splitThumbnailWithLightAppearanceImage_darkAppearanceImage___block_invoke;
        v31[3] = &unk_1E8767488;
        *&v31[6] = v13 + v21;
        *&v31[7] = v26;
        *&v31[8] = v13;
        *&v31[9] = v15;
        *&v31[10] = v21;
        *&v31[11] = v23;
        v31[4] = v24;
        v31[5] = v25;
        v28 = [v27 imageWithActions:v31];

        goto LABEL_9;
      }

      v29 = v6;
    }

    else
    {
      v29 = v5;
    }
  }

  else
  {
    v29 = objc_opt_new();
  }

  v28 = v29;
LABEL_9:

  return v28;
}

+ (id)wk_dynamicImageWithTraitCollectionToImageMap:()WKAdditions baseImage:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    v8 = v6;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = v13;
        if (!v8)
        {
          v8 = v13;
        }

        imageAsset = [v8 imageAsset];
        [imageAsset registerImage:v14 withTraitCollection:v12];
      }

      v9 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)wk_cropImageToRect:()WKAdditions
{
  cGImage = [self CGImage];
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  v10 = CGImageCreateWithImageInRect(cGImage, v14);
  v11 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v10];
  CGImageRelease(v10);

  return v11;
}

@end
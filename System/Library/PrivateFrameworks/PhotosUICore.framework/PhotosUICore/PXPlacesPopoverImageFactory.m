@interface PXPlacesPopoverImageFactory
+ (CGSize)backgroundImageSizeForType:(int64_t)a3 usingTraitCollection:(id)a4;
+ (PXPlacesPopoverImageFactory)sharedInstance;
- (CGGradient)createLegibilityGradient;
- (CGImage)newImage:(CGImage *)a3 croppedToAspectRatio:(CGSize)a4;
- (CGSize)backgroundImageSizeForType:(int64_t)a3 usingTraitCollection:(id)a4;
- (CGSize)thumbnailImageSizeForImageType:(int64_t)a3 usingTraitCollection:(id)a4 includeScale:(BOOL)a5;
- (PXPlacesPopoverImageFactory)init;
- (UIColor)defaultBackgroundColor;
- (double)thumbnailTopMarginForImageType:(int64_t)a3 usingTraitCollection:(id)a4;
- (id)_fetchAndCacheBackgroundImageWithName:(id)a3;
- (id)_placesKitFrameworkBundle;
- (id)_thumbnailShadowForType:(int64_t)a3 usingTraitCollection:(id)a4;
- (id)backgroundImageNameForType:(int64_t)a3 usingTraitCollection:(id)a4;
- (id)createAlbumPlaceHolderImageUsingTraitCollection:(id)a3;
- (id)createPopoverImageForGeotaggable:(id)a3 withImage:(CGImage *)a4 imageType:(int64_t)a5 imageOptions:(unint64_t)a6 usingTraitCollection:(id)a7;
- (id)imageNamed:(id)a3;
- (id)placeholderImageForImageType:(int64_t)a3 usingTraitCollection:(id)a4;
@end

@implementation PXPlacesPopoverImageFactory

- (id)_placesKitFrameworkBundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PXPlacesPopoverImageFactory__placesKitFrameworkBundle__block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  if (_placesKitFrameworkBundle_onceToken != -1)
  {
    dispatch_once(&_placesKitFrameworkBundle_onceToken, block);
  }

  return _placesKitFrameworkBundle_frameworkBundle;
}

void __56__PXPlacesPopoverImageFactory__placesKitFrameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = _placesKitFrameworkBundle_frameworkBundle;
  _placesKitFrameworkBundle_frameworkBundle = v0;
}

- (id)imageNamed:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesPopoverImageFactory *)self _placesKitFrameworkBundle];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:v4 inBundle:v5];

  return v6;
}

- (id)_fetchAndCacheBackgroundImageWithName:(id)a3
{
  v4 = a3;
  v5 = [(PXPlacesPopoverImageFactory *)self cachedBackgroundImages];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v7 = [(PXPlacesPopoverImageFactory *)self imageNamed:v4];
    if (v7)
    {
      v8 = v7;
      v9 = [(PXPlacesPopoverImageFactory *)self cachedBackgroundImages];
      [v9 setObject:v8 forKey:v4];

      v6 = v8;
    }
  }

  v10 = v6;

  return v10;
}

- (CGGradient)createLegibilityGradient
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [off_1E7721730 opacityValuesForSmoothDescendingGradient];
  objc_claimAutoreleasedReturnValue();
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __55__PXPlacesPopoverImageFactory_createLegibilityGradient__block_invoke;
  v7 = &unk_1E7735768;
  v8 = v2;
  PXMap();
}

id __55__PXPlacesPopoverImageFactory_createLegibilityGradient__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];
  v4 = [v2 colorWithAlphaComponent:v3 * 0.4];
  v5 = [v4 CGColor];

  return v5;
}

- (CGImage)newImage:(CGImage *)a3 croppedToAspectRatio:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = CGImageGetWidth(a3);
  v8 = CGImageGetHeight(a3);
  v9 = width / height;
  if (v7 / v8 >= width / height)
  {
    v11 = 0.0;
    if (v7 / v8 <= width / height)
    {
      v12 = 0.0;
    }

    else
    {
      v13 = v9 * v8;
      v12 = (v7 - v9 * v8) * 0.5;
      v7 = v13;
    }
  }

  else
  {
    v10 = v7 / v9;
    v11 = (v8 - v7 / v9) * 0.5;
    v12 = 0.0;
    v8 = v10;
  }

  v14 = v7;

  return CGImageCreateWithImageInRect(a3, *(&v8 - 3));
}

- (CGSize)thumbnailImageSizeForImageType:(int64_t)a3 usingTraitCollection:(id)a4 includeScale:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  [v7 displayScale];
  v9 = v8;
  v10 = a3 - 1;
  if ((a3 - 1) >= 5)
  {
    v14 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    v15 = [v7 userInterfaceIdiom];
    if (v15 >= 5 || ((0x17u >> v15) & 1) == 0)
    {
      goto LABEL_7;
    }

    v12 = (&unk_1A5381AB0 + 8 * v15);
    v11 = v12;
  }

  else
  {
    v11 = (&unk_1A5381A60 + 8 * v10);
    v12 = (&unk_1A5381A88 + 8 * v10);
  }

  v13 = *v11;
  v14 = *v12;
LABEL_7:
  v16 = v9 * v14;
  if (v5)
  {
    v17 = v9 * v13;
  }

  else
  {
    v17 = v13;
  }

  if (v5)
  {
    v14 = v16;
  }

  v18 = v14;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)thumbnailTopMarginForImageType:(int64_t)a3 usingTraitCollection:(id)a4
{
  v5 = [a4 userInterfaceIdiom];
  if (a3 <= 2)
  {
    if (!a3)
    {
      if ((v5 - 1) < 4)
      {
        return dbl_1A5381A40[v5 - 1];
      }

      return 0.0;
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return 4.0;
      }

      return 0.0;
    }

    return 2.5;
  }

  if (a3 != 3)
  {
    if (a3 != 4)
    {
      result = 3.0;
      if (a3 == 5)
      {
        return result;
      }

      return 0.0;
    }

    return 2.5;
  }

  return 5.0;
}

- (id)backgroundImageNameForType:(int64_t)a3 usingTraitCollection:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 2)
      {
LABEL_9:
        v7 = @"PXPlacesThumbnailPopover";
        goto LABEL_14;
      }
    }

    else
    {
      v8 = [v5 userInterfaceIdiom];
      if (v8 < 5)
      {
        v7 = off_1E7735788[v8];
        goto LABEL_14;
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  switch(a3)
  {
    case 3:
      v7 = @"PXPlacesThumbnail2024";
      break;
    case 4:
      goto LABEL_9;
    case 5:
      v7 = @"PXPlacesThumbnailPopoverInfoPanel";
      break;
    default:
      v7 = 0;
      break;
  }

LABEL_14:

  return v7;
}

- (id)_thumbnailShadowForType:(int64_t)a3 usingTraitCollection:(id)a4
{
  if (a3 == 5)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    v5 = [MEMORY[0x1E69DC888] blackColor];
    v6 = [v5 colorWithAlphaComponent:0.2];
    [v4 setShadowColor:v6];

    [v4 setShadowBlurRadius:4.0];
    [v4 setShadowOffset:{0.0, 2.0}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)backgroundImageSizeForType:(int64_t)a3 usingTraitCollection:(id)a4
{
  v4 = a3;
  if (a3 == 1)
  {
    a3 = 0;
  }

  v6 = [(PXPlacesPopoverImageFactory *)self backgroundImageNameForType:a3 usingTraitCollection:a4];
  v7 = [(PXPlacesPopoverImageFactory *)self _fetchAndCacheBackgroundImageWithName:v6];
  [v7 size];
  v10 = v8;
  if (v4 == 1)
  {
    v11 = v8;
  }

  else
  {
    v11 = v9;
  }

  v12 = v10;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (UIColor)defaultBackgroundColor
{
  defaultBackgroundColor = self->_defaultBackgroundColor;
  if (!defaultBackgroundColor)
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:0.941176474 green:0.941176474 blue:0.941176474 alpha:1.0];
    v5 = self->_defaultBackgroundColor;
    self->_defaultBackgroundColor = v4;

    defaultBackgroundColor = self->_defaultBackgroundColor;
  }

  return defaultBackgroundColor;
}

- (id)placeholderImageForImageType:(int64_t)a3 usingTraitCollection:(id)a4
{
  v6 = a4;
  v7 = [(PXPlacesPopoverImageFactory *)self defaultBackgroundColor];
  if (v6)
  {
    v8 = [v6 traitCollection];
    v9 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v10 = [v9 resolvedColorWithTraitCollection:v8];

    v11 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v12 = [v11 resolvedColorWithTraitCollection:v8];

    v7 = v12;
  }

  else
  {
    v10 = 0;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXPlacesPlaceholderImage-%@-%@", v10, v7];
  v14 = [(PXPlacesPopoverImageFactory *)self cachedBackgroundImages];
  v15 = [v14 objectForKey:v13];

  if (!v15)
  {
    [(PXPlacesPopoverImageFactory *)self thumbnailImageSizeForImageType:a3 usingTraitCollection:v6 includeScale:0];
    PXPhotosUIFoundationBundle();
  }

  v16 = v15;

  return v16;
}

- (id)createAlbumPlaceHolderImageUsingTraitCollection:(id)a3
{
  v4 = [(PXPlacesPopoverImageFactory *)self backgroundImageNameForType:0 usingTraitCollection:a3];
  v5 = [(PXPlacesPopoverImageFactory *)self _fetchAndCacheBackgroundImageWithName:v4];

  return v5;
}

- (id)createPopoverImageForGeotaggable:(id)a3 withImage:(CGImage *)a4 imageType:(int64_t)a5 imageOptions:(unint64_t)a6 usingTraitCollection:(id)a7
{
  v12 = a3;
  v13 = a7;
  if (a6 == 1)
  {
    v14 = [(PXPlacesPopoverImageFactory *)self _thumbnailShadowForType:a5 usingTraitCollection:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
  v16 = 65.0;
  v17 = 65.0;
  if (a5 != 1 && a5 != 4)
  {
    v18 = [(PXPlacesPopoverImageFactory *)self backgroundImageNameForType:a5 usingTraitCollection:v13];
    v15 = [(PXPlacesPopoverImageFactory *)self _fetchAndCacheBackgroundImageWithName:v18];
    [v15 size];
    v17 = v19;
    [v15 size];
    v16 = v20;
  }

  if (v14)
  {
    [v14 shadowBlurRadius];
  }

  else
  {
    v21 = 0.0;
  }

  v58.height = v16 + v21;
  v58.width = v17;
  UIGraphicsBeginImageContextWithOptions(v58, 0, 0.0);
  [(PXPlacesPopoverImageFactory *)self thumbnailTopMarginForImageType:a5 usingTraitCollection:v13];
  v56 = v22;
  [(PXPlacesPopoverImageFactory *)self thumbnailImageSizeForImageType:a5 usingTraitCollection:v13 includeScale:0];
  v24 = v23;
  v26 = v25;
  v27 = v17 * 0.5;
  v28 = v23 * 0.5;
  v29 = [(PXPlacesPopoverImageFactory *)self newImage:a4 croppedToAspectRatio:v23];
  v30 = objc_alloc(MEMORY[0x1E69DCAB8]);
  [v13 displayScale];
  v31 = [v30 initWithCGImage:v29 scale:0 orientation:?];
  CGImageRelease(v29);
  if (v14)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    [v14 shadowOffset];
    v34 = v33;
    v55 = v24;
    v35 = v17 * 0.5;
    v36 = v26;
    v37 = v17;
    v38 = v16;
    v40 = v39;
    [v14 shadowBlurRadius];
    v42 = v41;
    v43 = [v14 shadowColor];
    v44 = [v43 CGColor];
    v59.width = v34;
    v59.height = v40;
    v16 = v38;
    v17 = v37;
    v26 = v36;
    v27 = v35;
    v24 = v55;
    CGContextSetShadowWithColor(CurrentContext, v59, v42, v44);
  }

  v45 = v27 - v28;
  if (v15)
  {
    if (a5 == 3)
    {
      v46 = UIGraphicsGetCurrentContext();
      CGContextSaveGState(v46);
      v62.origin.x = v27 - v28;
      v62.origin.y = v56;
      v62.size.width = v24;
      v62.size.height = v26;
      v47 = CGPathCreateWithRoundedRect(v62, 10.0, 10.0, 0);
      CGContextAddPath(v46, v47);
      CGContextClip(v46);
      CGPathRelease(v47);
      [v31 drawInRect:{v45, v56, v24, v26}];
      v48 = [(PXPlacesPopoverImageFactory *)self createLegibilityGradient];
      v60.y = v56 + v26;
      v60.x = v27 - v28;
      v61.x = v27 - v28;
      v61.y = v56;
      CGContextDrawLinearGradient(v46, v48, v60, v61, 0);
      CGGradientRelease(v48);
      CGContextRestoreGState(v46);
    }

    else
    {
      [v31 drawInRect:{v27 - v28, v56, v24, v26}];
    }

    [v15 drawInRect:{0.0, 0.0, v17, v16}];
  }

  else
  {
    v49 = UIGraphicsGetCurrentContext();
    v50 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v17, v16, 6.0}];
    v51 = [MEMORY[0x1E69DC888] systemWhiteColor];
    CGContextSetFillColorWithColor(v49, [v51 CGColor]);

    [v50 fill];
    v52 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:v27 - v28 cornerRadius:{v56, v24, v26, 6.0}];
    [v52 addClip];

    [v31 drawInRect:{v45, v56, v24, v26}];
  }

  v53 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v53;
}

- (PXPlacesPopoverImageFactory)init
{
  v6.receiver = self;
  v6.super_class = PXPlacesPopoverImageFactory;
  v2 = [(PXPlacesPopoverImageFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cachedBackgroundImages = v2->_cachedBackgroundImages;
    v2->_cachedBackgroundImages = v3;
  }

  return v2;
}

+ (PXPlacesPopoverImageFactory)sharedInstance
{
  if (sharedInstance_token != -1)
  {
    dispatch_once(&sharedInstance_token, &__block_literal_global_77563);
  }

  v3 = _sharedInstance;

  return v3;
}

void __45__PXPlacesPopoverImageFactory_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PXPlacesPopoverImageFactory);
  v1 = _sharedInstance;
  _sharedInstance = v0;
}

+ (CGSize)backgroundImageSizeForType:(int64_t)a3 usingTraitCollection:(id)a4
{
  v5 = a4;
  v6 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v6 backgroundImageSizeForType:a3 usingTraitCollection:v5];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end
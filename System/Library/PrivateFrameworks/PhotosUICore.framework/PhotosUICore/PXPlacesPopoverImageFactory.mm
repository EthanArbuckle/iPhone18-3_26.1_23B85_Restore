@interface PXPlacesPopoverImageFactory
+ (CGSize)backgroundImageSizeForType:(int64_t)type usingTraitCollection:(id)collection;
+ (PXPlacesPopoverImageFactory)sharedInstance;
- (CGGradient)createLegibilityGradient;
- (CGImage)newImage:(CGImage *)image croppedToAspectRatio:(CGSize)ratio;
- (CGSize)backgroundImageSizeForType:(int64_t)type usingTraitCollection:(id)collection;
- (CGSize)thumbnailImageSizeForImageType:(int64_t)type usingTraitCollection:(id)collection includeScale:(BOOL)scale;
- (PXPlacesPopoverImageFactory)init;
- (UIColor)defaultBackgroundColor;
- (double)thumbnailTopMarginForImageType:(int64_t)type usingTraitCollection:(id)collection;
- (id)_fetchAndCacheBackgroundImageWithName:(id)name;
- (id)_placesKitFrameworkBundle;
- (id)_thumbnailShadowForType:(int64_t)type usingTraitCollection:(id)collection;
- (id)backgroundImageNameForType:(int64_t)type usingTraitCollection:(id)collection;
- (id)createAlbumPlaceHolderImageUsingTraitCollection:(id)collection;
- (id)createPopoverImageForGeotaggable:(id)geotaggable withImage:(CGImage *)image imageType:(int64_t)type imageOptions:(unint64_t)options usingTraitCollection:(id)collection;
- (id)imageNamed:(id)named;
- (id)placeholderImageForImageType:(int64_t)type usingTraitCollection:(id)collection;
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

- (id)imageNamed:(id)named
{
  namedCopy = named;
  _placesKitFrameworkBundle = [(PXPlacesPopoverImageFactory *)self _placesKitFrameworkBundle];
  v6 = [MEMORY[0x1E69DCAB8] imageNamed:namedCopy inBundle:_placesKitFrameworkBundle];

  return v6;
}

- (id)_fetchAndCacheBackgroundImageWithName:(id)name
{
  nameCopy = name;
  cachedBackgroundImages = [(PXPlacesPopoverImageFactory *)self cachedBackgroundImages];
  v6 = [cachedBackgroundImages objectForKey:nameCopy];

  if (!v6)
  {
    v7 = [(PXPlacesPopoverImageFactory *)self imageNamed:nameCopy];
    if (v7)
    {
      v8 = v7;
      cachedBackgroundImages2 = [(PXPlacesPopoverImageFactory *)self cachedBackgroundImages];
      [cachedBackgroundImages2 setObject:v8 forKey:nameCopy];

      v6 = v8;
    }
  }

  v10 = v6;

  return v10;
}

- (CGGradient)createLegibilityGradient
{
  v9 = *MEMORY[0x1E69E9840];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  [off_1E7721730 opacityValuesForSmoothDescendingGradient];
  objc_claimAutoreleasedReturnValue();
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __55__PXPlacesPopoverImageFactory_createLegibilityGradient__block_invoke;
  v7 = &unk_1E7735768;
  v8 = blackColor;
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

- (CGImage)newImage:(CGImage *)image croppedToAspectRatio:(CGSize)ratio
{
  height = ratio.height;
  width = ratio.width;
  v7 = CGImageGetWidth(image);
  v8 = CGImageGetHeight(image);
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

  return CGImageCreateWithImageInRect(image, *(&v8 - 3));
}

- (CGSize)thumbnailImageSizeForImageType:(int64_t)type usingTraitCollection:(id)collection includeScale:(BOOL)scale
{
  scaleCopy = scale;
  collectionCopy = collection;
  [collectionCopy displayScale];
  v9 = v8;
  v10 = type - 1;
  if ((type - 1) >= 5)
  {
    v14 = *MEMORY[0x1E695F060];
    v13 = *(MEMORY[0x1E695F060] + 8);
    userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
    if (userInterfaceIdiom >= 5 || ((0x17u >> userInterfaceIdiom) & 1) == 0)
    {
      goto LABEL_7;
    }

    v12 = (&unk_1A5381AB0 + 8 * userInterfaceIdiom);
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
  if (scaleCopy)
  {
    v17 = v9 * v13;
  }

  else
  {
    v17 = v13;
  }

  if (scaleCopy)
  {
    v14 = v16;
  }

  v18 = v14;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)thumbnailTopMarginForImageType:(int64_t)type usingTraitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];
  if (type <= 2)
  {
    if (!type)
    {
      if ((userInterfaceIdiom - 1) < 4)
      {
        return dbl_1A5381A40[userInterfaceIdiom - 1];
      }

      return 0.0;
    }

    if (type != 1)
    {
      if (type == 2)
      {
        return 4.0;
      }

      return 0.0;
    }

    return 2.5;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      result = 3.0;
      if (type == 5)
      {
        return result;
      }

      return 0.0;
    }

    return 2.5;
  }

  return 5.0;
}

- (id)backgroundImageNameForType:(int64_t)type usingTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 2)
      {
LABEL_9:
        v7 = @"PXPlacesThumbnailPopover";
        goto LABEL_14;
      }
    }

    else
    {
      userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
      if (userInterfaceIdiom < 5)
      {
        v7 = off_1E7735788[userInterfaceIdiom];
        goto LABEL_14;
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  switch(type)
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

- (id)_thumbnailShadowForType:(int64_t)type usingTraitCollection:(id)collection
{
  if (type == 5)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DB7D8]);
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v6 = [blackColor colorWithAlphaComponent:0.2];
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

- (CGSize)backgroundImageSizeForType:(int64_t)type usingTraitCollection:(id)collection
{
  typeCopy = type;
  if (type == 1)
  {
    type = 0;
  }

  v6 = [(PXPlacesPopoverImageFactory *)self backgroundImageNameForType:type usingTraitCollection:collection];
  v7 = [(PXPlacesPopoverImageFactory *)self _fetchAndCacheBackgroundImageWithName:v6];
  [v7 size];
  v10 = v8;
  if (typeCopy == 1)
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

- (id)placeholderImageForImageType:(int64_t)type usingTraitCollection:(id)collection
{
  collectionCopy = collection;
  defaultBackgroundColor = [(PXPlacesPopoverImageFactory *)self defaultBackgroundColor];
  if (collectionCopy)
  {
    traitCollection = [collectionCopy traitCollection];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v10 = [secondarySystemBackgroundColor resolvedColorWithTraitCollection:traitCollection];

    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v12 = [quaternarySystemFillColor resolvedColorWithTraitCollection:traitCollection];

    defaultBackgroundColor = v12;
  }

  else
  {
    v10 = 0;
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PXPlacesPlaceholderImage-%@-%@", v10, defaultBackgroundColor];
  cachedBackgroundImages = [(PXPlacesPopoverImageFactory *)self cachedBackgroundImages];
  v15 = [cachedBackgroundImages objectForKey:v13];

  if (!v15)
  {
    [(PXPlacesPopoverImageFactory *)self thumbnailImageSizeForImageType:type usingTraitCollection:collectionCopy includeScale:0];
    PXPhotosUIFoundationBundle();
  }

  v16 = v15;

  return v16;
}

- (id)createAlbumPlaceHolderImageUsingTraitCollection:(id)collection
{
  v4 = [(PXPlacesPopoverImageFactory *)self backgroundImageNameForType:0 usingTraitCollection:collection];
  v5 = [(PXPlacesPopoverImageFactory *)self _fetchAndCacheBackgroundImageWithName:v4];

  return v5;
}

- (id)createPopoverImageForGeotaggable:(id)geotaggable withImage:(CGImage *)image imageType:(int64_t)type imageOptions:(unint64_t)options usingTraitCollection:(id)collection
{
  geotaggableCopy = geotaggable;
  collectionCopy = collection;
  if (options == 1)
  {
    v14 = [(PXPlacesPopoverImageFactory *)self _thumbnailShadowForType:type usingTraitCollection:collectionCopy];
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
  v16 = 65.0;
  v17 = 65.0;
  if (type != 1 && type != 4)
  {
    v18 = [(PXPlacesPopoverImageFactory *)self backgroundImageNameForType:type usingTraitCollection:collectionCopy];
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
  [(PXPlacesPopoverImageFactory *)self thumbnailTopMarginForImageType:type usingTraitCollection:collectionCopy];
  v56 = v22;
  [(PXPlacesPopoverImageFactory *)self thumbnailImageSizeForImageType:type usingTraitCollection:collectionCopy includeScale:0];
  v24 = v23;
  v26 = v25;
  v27 = v17 * 0.5;
  v28 = v23 * 0.5;
  v29 = [(PXPlacesPopoverImageFactory *)self newImage:image croppedToAspectRatio:v23];
  v30 = objc_alloc(MEMORY[0x1E69DCAB8]);
  [collectionCopy displayScale];
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
    shadowColor = [v14 shadowColor];
    cGColor = [shadowColor CGColor];
    v59.width = v34;
    v59.height = v40;
    v16 = v38;
    v17 = v37;
    v26 = v36;
    v27 = v35;
    v24 = v55;
    CGContextSetShadowWithColor(CurrentContext, v59, v42, cGColor);
  }

  v45 = v27 - v28;
  if (v15)
  {
    if (type == 3)
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
      createLegibilityGradient = [(PXPlacesPopoverImageFactory *)self createLegibilityGradient];
      v60.y = v56 + v26;
      v60.x = v27 - v28;
      v61.x = v27 - v28;
      v61.y = v56;
      CGContextDrawLinearGradient(v46, createLegibilityGradient, v60, v61, 0);
      CGGradientRelease(createLegibilityGradient);
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
    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    CGContextSetFillColorWithColor(v49, [systemWhiteColor CGColor]);

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

+ (CGSize)backgroundImageSizeForType:(int64_t)type usingTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = +[PXPlacesPopoverImageFactory sharedInstance];
  [v6 backgroundImageSizeForType:type usingTraitCollection:collectionCopy];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end
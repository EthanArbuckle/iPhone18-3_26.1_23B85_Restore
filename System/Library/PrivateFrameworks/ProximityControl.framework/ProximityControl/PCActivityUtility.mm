@interface PCActivityUtility
+ (BOOL)activity:(id)activity isLessThan:(id)than;
+ (id)activityFrom:(id)from;
+ (id)composedImageFor:(id)for assetType:(int64_t)type;
+ (id)composedImageWithArtworkFor:(id)for assetType:(int64_t)type;
+ (id)composedImageWithDeviceImage:(id)image badgeImage:(id)badgeImage;
+ (id)disambiguationButtonImageForActivity:(id)activity;
+ (id)formattedDurationFor:(double)for;
+ (id)iconForBundleIdentifier:(id)identifier;
+ (id)imageForAssetType:(int64_t)type;
+ (id)imageWithColor:(CGColor *)color size:(CGSize)size cornerRadius:(double)radius;
+ (id)order:(id)order;
+ (id)scaleImageIfNeeded:(id)needed toFitSize:(CGSize)size withCornerRadius:(double)radius;
@end

@implementation PCActivityUtility

+ (id)activityFrom:(id)from
{
  fromCopy = from;
  activityType = [fromCopy activityType];
  v5 = [@"com.apple.ProximityControl.activity.call" isEqualToString:activityType];

  if (v5)
  {
    v6 = off_279AD1768;
LABEL_11:
    v15 = [objc_alloc(*v6) initWithActivity:fromCopy];
    goto LABEL_12;
  }

  activityType2 = [fromCopy activityType];
  v8 = [@"com.apple.ProximityControl.activity.media" isEqualToString:activityType2];

  if (v8)
  {
    v6 = off_279AD1760;
    goto LABEL_11;
  }

  activityType3 = [fromCopy activityType];
  v10 = [@"com.apple.ProximityControl.activity.alarm" isEqualToString:activityType3];

  if (v10)
  {
    v6 = off_279AD1728;
    goto LABEL_11;
  }

  activityType4 = [fromCopy activityType];
  v12 = [@"com.apple.ProximityControl.activity.annoucement" isEqualToString:activityType4];

  if (v12)
  {
    v6 = off_279AD1730;
    goto LABEL_11;
  }

  activityType5 = [fromCopy activityType];
  v14 = [@"com.apple.ProximityControl.activity.timer" isEqualToString:activityType5];

  if (v14)
  {
    v6 = &off_279AD1770;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (id)order:(id)order
{
  v3 = [order sortedArrayUsingComparator:&__block_literal_global];
  v4 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v3];

  return v4;
}

+ (BOOL)activity:(id)activity isLessThan:(id)than
{
  thanCopy = than;
  pcactivityType = [activity pcactivityType];
  pcactivityType2 = [thanCopy pcactivityType];

  return pcactivityType < pcactivityType2;
}

+ (id)composedImageFor:(id)for assetType:(int64_t)type
{
  forCopy = for;
  v6 = [PCActivityUtility imageForAssetType:type];
  if ([forCopy pcactivityType] == 1)
  {
    image = 0;
  }

  else
  {
    image = [forCopy image];
  }

  v8 = [PCActivityUtility composedImageWithDeviceImage:v6 badgeImage:image];

  return v8;
}

+ (id)composedImageWithArtworkFor:(id)for assetType:(int64_t)type
{
  forCopy = for;
  v6 = [PCActivityUtility imageForAssetType:type];
  image = [forCopy image];

  v8 = [PCActivityUtility scaleImageIfNeeded:image toFitSize:14.0 withCornerRadius:14.0, 1.75];

  v9 = [PCActivityUtility composedImageWithDeviceImage:v6 badgeImage:v8];

  return v9;
}

+ (id)composedImageWithDeviceImage:(id)image badgeImage:(id)badgeImage
{
  badgeImageCopy = badgeImage;
  imageCopy = image;
  v13.width = 44.0;
  v13.height = 44.0;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  [imageCopy drawInRect:{0.0, 0.0, 44.0, 44.0}];

  if (badgeImageCopy)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    cGColor = [v8 CGColor];
    v14.width = 0.0;
    v14.height = 1.0;
    CGContextSetShadowWithColor(CurrentContext, v14, 2.0, cGColor);

    [badgeImageCopy drawInRect:{27.0, 27.0, 14.0, 14.0}];
  }

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)disambiguationButtonImageForActivity:(id)activity
{
  activityCopy = activity;
  bundleIdentifier = [activityCopy bundleIdentifier];
  v5 = [PCActivityUtility iconForBundleIdentifier:bundleIdentifier];

  if ([activityCopy pcactivityType] == 1)
  {
    image = [activityCopy image];
    callImage = [PCActivityUtility scaleImageIfNeeded:image toFitSize:34.0 withCornerRadius:34.0, 2.0];

    if (!callImage)
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
      callImage = +[PCActivityUtility imageWithColor:size:cornerRadius:](PCActivityUtility, "imageWithColor:size:cornerRadius:", [v8 CGColor], 34.0, 34.0, 2.0);
    }

    if (!callImage)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ([activityCopy pcactivityType])
    {
      callImage = 0;
      goto LABEL_11;
    }

    callImage = [activityCopy callImage];
    if (!callImage)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    v15.width = 46.5;
    v15.height = 46.5;
    UIGraphicsBeginImageContextWithOptions(v15, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    cGColor = [v10 CGColor];
    v16.width = 0.0;
    v16.height = 1.0;
    CGContextSetShadowWithColor(CurrentContext, v16, 2.0, cGColor);

    [callImage drawInRect:{5.5, 5.5, 34.0, 34.0}];
    [v5 drawInRect:{27.5, 27.5, 16.0, 16.0}];
    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    goto LABEL_12;
  }

LABEL_11:
  v12 = objc_alloc_init(MEMORY[0x277D755B8]);
LABEL_12:

  return v12;
}

+ (id)iconForBundleIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D1B1A8];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithBundleIdentifier:identifierCopy];

  v6 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, 3.0}];
  v7 = [v5 prepareImageForDescriptor:v6];
  v8 = [v5 CGImageForDescriptor:v6];
  v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v8];

  return v9;
}

+ (id)imageForAssetType:(int64_t)type
{
  v4 = +[PCAssetManager sharedInstance];
  v5 = [v4 imageForAssetType:type];

  return v5;
}

+ (id)formattedDurationFor:(double)for
{
  if (for >= 3600.0)
  {
    v4 = 224;
  }

  else
  {
    v4 = 192;
  }

  v5 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v5 setAllowedUnits:v4];
  [v5 setUnitsStyle:0];
  [v5 setZeroFormattingBehavior:0x10000];
  v6 = [v5 stringFromTimeInterval:for];

  return v6;
}

+ (id)scaleImageIfNeeded:(id)needed toFitSize:(CGSize)size withCornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  neededCopy = needed;
  if (neededCopy)
  {
    v9 = 0.0;
    v26.width = width;
    v26.height = height;
    UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
    [neededCopy size];
    v11 = v10;
    [neededCopy size];
    if (vabdd_f64(v11, v12) >= 0.00000011920929)
    {
      [neededCopy size];
      v17 = width / v16;
      [neededCopy size];
      if (v17 < height / v18)
      {
        v17 = height / v18;
      }

      [neededCopy size];
      v20 = v19 * v17;
      [neededCopy size];
      v22 = v21 * v17;
      v9 = (width - v20) * 0.5;
      v14 = (height - v22) * 0.5;
      v23 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, radius}];
      [v23 addClip];

      width = v20;
      height = v22;
    }

    else
    {
      v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, radius}];
      [v13 addClip];

      v14 = 0.0;
    }

    [neededCopy drawInRect:{v9, v14, width, height}];
    v15 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)imageWithColor:(CGColor *)color size:(CGSize)size cornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  UIGraphicsBeginImageContextWithOptions(size, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, 2.0}];
  [v9 addClip];

  CGContextSetFillColorWithColor(CurrentContext, color);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = width;
  v13.size.height = height;
  CGContextFillRect(CurrentContext, v13);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

@end
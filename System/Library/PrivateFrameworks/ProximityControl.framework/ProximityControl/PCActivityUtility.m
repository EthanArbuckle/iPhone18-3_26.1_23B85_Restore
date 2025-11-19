@interface PCActivityUtility
+ (BOOL)activity:(id)a3 isLessThan:(id)a4;
+ (id)activityFrom:(id)a3;
+ (id)composedImageFor:(id)a3 assetType:(int64_t)a4;
+ (id)composedImageWithArtworkFor:(id)a3 assetType:(int64_t)a4;
+ (id)composedImageWithDeviceImage:(id)a3 badgeImage:(id)a4;
+ (id)disambiguationButtonImageForActivity:(id)a3;
+ (id)formattedDurationFor:(double)a3;
+ (id)iconForBundleIdentifier:(id)a3;
+ (id)imageForAssetType:(int64_t)a3;
+ (id)imageWithColor:(CGColor *)a3 size:(CGSize)a4 cornerRadius:(double)a5;
+ (id)order:(id)a3;
+ (id)scaleImageIfNeeded:(id)a3 toFitSize:(CGSize)a4 withCornerRadius:(double)a5;
@end

@implementation PCActivityUtility

+ (id)activityFrom:(id)a3
{
  v3 = a3;
  v4 = [v3 activityType];
  v5 = [@"com.apple.ProximityControl.activity.call" isEqualToString:v4];

  if (v5)
  {
    v6 = off_279AD1768;
LABEL_11:
    v15 = [objc_alloc(*v6) initWithActivity:v3];
    goto LABEL_12;
  }

  v7 = [v3 activityType];
  v8 = [@"com.apple.ProximityControl.activity.media" isEqualToString:v7];

  if (v8)
  {
    v6 = off_279AD1760;
    goto LABEL_11;
  }

  v9 = [v3 activityType];
  v10 = [@"com.apple.ProximityControl.activity.alarm" isEqualToString:v9];

  if (v10)
  {
    v6 = off_279AD1728;
    goto LABEL_11;
  }

  v11 = [v3 activityType];
  v12 = [@"com.apple.ProximityControl.activity.annoucement" isEqualToString:v11];

  if (v12)
  {
    v6 = off_279AD1730;
    goto LABEL_11;
  }

  v13 = [v3 activityType];
  v14 = [@"com.apple.ProximityControl.activity.timer" isEqualToString:v13];

  if (v14)
  {
    v6 = &off_279AD1770;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (id)order:(id)a3
{
  v3 = [a3 sortedArrayUsingComparator:&__block_literal_global];
  v4 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v3];

  return v4;
}

+ (BOOL)activity:(id)a3 isLessThan:(id)a4
{
  v5 = a4;
  v6 = [a3 pcactivityType];
  v7 = [v5 pcactivityType];

  return v6 < v7;
}

+ (id)composedImageFor:(id)a3 assetType:(int64_t)a4
{
  v5 = a3;
  v6 = [PCActivityUtility imageForAssetType:a4];
  if ([v5 pcactivityType] == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 image];
  }

  v8 = [PCActivityUtility composedImageWithDeviceImage:v6 badgeImage:v7];

  return v8;
}

+ (id)composedImageWithArtworkFor:(id)a3 assetType:(int64_t)a4
{
  v5 = a3;
  v6 = [PCActivityUtility imageForAssetType:a4];
  v7 = [v5 image];

  v8 = [PCActivityUtility scaleImageIfNeeded:v7 toFitSize:14.0 withCornerRadius:14.0, 1.75];

  v9 = [PCActivityUtility composedImageWithDeviceImage:v6 badgeImage:v8];

  return v9;
}

+ (id)composedImageWithDeviceImage:(id)a3 badgeImage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v13.width = 44.0;
  v13.height = 44.0;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  [v6 drawInRect:{0.0, 0.0, 44.0, 44.0}];

  if (v5)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    v9 = [v8 CGColor];
    v14.width = 0.0;
    v14.height = 1.0;
    CGContextSetShadowWithColor(CurrentContext, v14, 2.0, v9);

    [v5 drawInRect:{27.0, 27.0, 14.0, 14.0}];
  }

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)disambiguationButtonImageForActivity:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = [PCActivityUtility iconForBundleIdentifier:v4];

  if ([v3 pcactivityType] == 1)
  {
    v6 = [v3 image];
    v7 = [PCActivityUtility scaleImageIfNeeded:v6 toFitSize:34.0 withCornerRadius:34.0, 2.0];

    if (!v7)
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
      v7 = +[PCActivityUtility imageWithColor:size:cornerRadius:](PCActivityUtility, "imageWithColor:size:cornerRadius:", [v8 CGColor], 34.0, 34.0, 2.0);
    }

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ([v3 pcactivityType])
    {
      v7 = 0;
      goto LABEL_11;
    }

    v7 = [v3 callImage];
    if (!v7)
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
    v11 = [v10 CGColor];
    v16.width = 0.0;
    v16.height = 1.0;
    CGContextSetShadowWithColor(CurrentContext, v16, 2.0, v11);

    [v7 drawInRect:{5.5, 5.5, 34.0, 34.0}];
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

+ (id)iconForBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277D1B1A8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4];

  v6 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, 3.0}];
  v7 = [v5 prepareImageForDescriptor:v6];
  v8 = [v5 CGImageForDescriptor:v6];
  v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v8];

  return v9;
}

+ (id)imageForAssetType:(int64_t)a3
{
  v4 = +[PCAssetManager sharedInstance];
  v5 = [v4 imageForAssetType:a3];

  return v5;
}

+ (id)formattedDurationFor:(double)a3
{
  if (a3 >= 3600.0)
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
  v6 = [v5 stringFromTimeInterval:a3];

  return v6;
}

+ (id)scaleImageIfNeeded:(id)a3 toFitSize:(CGSize)a4 withCornerRadius:(double)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  if (v8)
  {
    v9 = 0.0;
    v26.width = width;
    v26.height = height;
    UIGraphicsBeginImageContextWithOptions(v26, 0, 0.0);
    [v8 size];
    v11 = v10;
    [v8 size];
    if (vabdd_f64(v11, v12) >= 0.00000011920929)
    {
      [v8 size];
      v17 = width / v16;
      [v8 size];
      if (v17 < height / v18)
      {
        v17 = height / v18;
      }

      [v8 size];
      v20 = v19 * v17;
      [v8 size];
      v22 = v21 * v17;
      v9 = (width - v20) * 0.5;
      v14 = (height - v22) * 0.5;
      v23 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, a5}];
      [v23 addClip];

      width = v20;
      height = v22;
    }

    else
    {
      v13 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, a5}];
      [v13 addClip];

      v14 = 0.0;
    }

    [v8 drawInRect:{v9, v14, width, height}];
    v15 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)imageWithColor:(CGColor *)a3 size:(CGSize)a4 cornerRadius:(double)a5
{
  height = a4.height;
  width = a4.width;
  UIGraphicsBeginImageContextWithOptions(a4, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, width, height, 2.0}];
  [v9 addClip];

  CGContextSetFillColorWithColor(CurrentContext, a3);
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
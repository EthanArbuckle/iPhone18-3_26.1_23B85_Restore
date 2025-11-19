@interface PXBadgeHelper(iOS)
+ (__CFString)accessibilityLabelForBadgeInfo:()iOS style:;
+ (__CFString)systemImageNameForBadges:()iOS;
+ (__n128)topLeftSecondaryBadgeInfoForBadgeInfo:()iOS;
+ (id)debugBackgroundImageWithBadges:()iOS;
+ (id)imageForBadgeInfo:()iOS style:isOverContent:;
+ (id)leadingCornerGradientBackgroundImageForLayoutDirection:()iOS;
+ (id)textForBadgeInfo:()iOS style:;
+ (id)trailingCornerGradientBackgroundImageForLayoutDirection:()iOS;
+ (void)topLeftPrimaryBadgeInfoForBadgeInfo:()iOS;
+ (void)topRightBadgeInfoForBadgeInfo:()iOS;
@end

@implementation PXBadgeHelper(iOS)

+ (id)debugBackgroundImageWithBadges:()iOS
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (debugBackgroundImageWithBadges__onceToken != -1)
  {
    dispatch_once(&debugBackgroundImageWithBadges__onceToken, &__block_literal_global_252234);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [debugBackgroundImageWithBadges__cache objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC888] grayColor];
    v7 = v6;
    if ((a3 & 0x20000000) != 0)
    {
      v8 = [MEMORY[0x1E69DC888] orangeColor];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
    if ((a3 & 0x40000000) != 0)
    {
      v10 = [MEMORY[0x1E69DC888] purpleColor];
    }

    else
    {
      v10 = v7;
    }

    v11 = v10;
    v12 = [MEMORY[0x1E6979380] layer];
    [v12 setFrame:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), 10.0, 2.0}];
    v15[0] = [v9 CGColor];
    v15[1] = [v7 CGColor];
    v15[2] = [v11 CGColor];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
    [v12 setColors:v13];

    [v12 setStartPoint:{0.0, 0.5}];
    [v12 setEndPoint:{1.0, 0.5}];
    v17.width = 10.0;
    v17.height = 2.0;
    UIGraphicsBeginImageContext(v17);
    [v12 renderInContext:UIGraphicsGetCurrentContext()];
    v5 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [debugBackgroundImageWithBadges__cache setObject:v5 forKey:v4];
  }

  return v5;
}

+ (id)trailingCornerGradientBackgroundImageForLayoutDirection:()iOS
{
  if ((a3 + 1) <= 2)
  {
    PXPhotosUIFoundationBundle();
  }

  v3 = [0 imageWithRenderingMode:2];

  return v3;
}

+ (id)leadingCornerGradientBackgroundImageForLayoutDirection:()iOS
{
  if ((a3 + 1) <= 2)
  {
    PXPhotosUIFoundationBundle();
  }

  v3 = [0 imageWithRenderingMode:2];

  return v3;
}

+ (__CFString)accessibilityLabelForBadgeInfo:()iOS style:
{
  v4 = *a3;
  if ((*a3 & 0x404) != 0)
  {
    goto LABEL_2;
  }

  if ((v4 & 8) != 0)
  {
    PXLocalizedStringFromTable(@"AVALANCHE_BADGE_ACCESSIBILITY_LABEL", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  if ((v4 & 0x3C0) != 0)
  {
    if (a4 <= 6 && ((1 << a4) & 0x58) != 0)
    {
      if ((v4 & 0x80) == 0 && (v4 & 0x100) == 0 && (v4 & 0x200) == 0 && (v4 & 0x10) != 0)
      {
        v5 = PLServicesLivePortraitLocalizedFrameworkString();
LABEL_3:
        v6 = v5;
        v7 = [v5 localizedUppercaseString];

        if (v7)
        {
          goto LABEL_7;
        }

        goto LABEL_4;
      }

LABEL_2:
      v5 = PLLocalizedFrameworkString();
      goto LABEL_3;
    }
  }

  else
  {
    if ((v4 & 0x10) != 0 || (v4 & 0x20000) != 0 || (v4 & 0x40000) != 0 || (v4 & 0x80000) != 0)
    {
      goto LABEL_2;
    }

    if ((v4 & 0x400000000) != 0)
    {
      v7 = PXLocalizedStringFromTable(@"PXInfoPanelEXIFVideoProResBadge", @"PhotosUICore");
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }

    if ((v4 & 0x800000000) != 0 || (v4 & 0x20000000000) != 0 || (v4 & 0x4000000000000) != 0)
    {
      goto LABEL_2;
    }
  }

LABEL_4:
  v8 = PLOneUpGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Unable to determine accessibility label for 1-Up badge!", buf, 2u);
  }

  v7 = &stru_1F1741150;
LABEL_7:

  return v7;
}

+ (id)textForBadgeInfo:()iOS style:
{
  v4 = *a3;
  if ((*a3 & 0x404) != 0)
  {
    goto LABEL_2;
  }

  if ((v4 & 8) != 0)
  {
    PXLocalizedStringFromTable(@"AVALANCHE_BADGE_TEXT", @"PhotosUICore");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringWithValidatedFormat();
  }

  if ((v4 & 0x3C0) == 0)
  {
    if ((v4 & 0x10) != 0 || (v4 & 0x20000) != 0 || (v4 & 0x40000) != 0 || (v4 & 0x80000) != 0)
    {
      goto LABEL_2;
    }

    if ((v4 & 0x400000000) != 0)
    {
      v9 = @"PXInfoPanelEXIFVideoProResBadge";
      v10 = @"PhotosUICore";
    }

    else
    {
      if ((v4 & 0x800000000) != 0 || (v4 & 0x20000000000) != 0 || (v4 & 0x1C000000000000) != 0)
      {
        goto LABEL_2;
      }

      if ((v4 & 0x40000000000000) == 0)
      {
        v7 = 0;
        goto LABEL_4;
      }

      v9 = @"PXProResRAWBadgeText";
      v10 = @"ProResRAW";
    }

    v7 = PXLocalizedStringFromTable(v9, v10);
    goto LABEL_4;
  }

  v7 = 0;
  if (a4 <= 6 && ((1 << a4) & 0x58) != 0)
  {
    if ((v4 & 0x80) == 0 && (v4 & 0x100) == 0 && (v4 & 0x200) == 0 && (v4 & 0x10) != 0)
    {
      v5 = PLServicesLivePortraitLocalizedFrameworkString();
      goto LABEL_3;
    }

LABEL_2:
    v5 = PLLocalizedFrameworkString();
LABEL_3:
    v6 = v5;
    v7 = [v5 localizedUppercaseString];
  }

LABEL_4:

  return v7;
}

+ (__CFString)systemImageNameForBadges:()iOS
{
  if ((a3 & 4) != 0)
  {
    return @"square.stack.3d.up";
  }

  if ((a3 & 0x400) != 0)
  {
    return @"tv";
  }

  if ((a3 & 8) != 0)
  {
    return @"square.stack.3d.down.right";
  }

  if ((a3 & 0x40) != 0)
  {
    v4 = @"livephoto.portrait";
    v5 = @"livephoto.slash";
    if ((a3 & 0x1000000) == 0)
    {
      v5 = @"livephoto";
    }

    if ((a3 & 0x10) == 0)
    {
      v4 = v5;
    }

    if ((~a3 & 0x1000010) != 0)
    {
      return v4;
    }

    else
    {
      return @"livephoto.slash.portrait";
    }
  }

  else if ((a3 & 0x200) != 0)
  {
    return @"livephoto.long.exposure";
  }

  else if ((a3 & 0x80) != 0)
  {
    return @"livephoto.loop";
  }

  else if ((a3 & 0x100) != 0)
  {
    return @"livephoto.bounce";
  }

  else if ((a3 & 0x10) != 0)
  {
    return @"f.cursive.circle";
  }

  else if ((a3 & 0x8000000000) != 0)
  {
    return @"person.2";
  }

  else if ((a3 & 0x4000000000) != 0)
  {
    return @"person";
  }

  else if ((a3 & 0x800000000) != 0)
  {
    return @"cinematic.video";
  }

  else if ((a3 & 0x200000E0000) == 0x20000000000)
  {
    return @"spatial";
  }

  else
  {
    return (@"spatial.capture" & (a3 << 13 >> 63));
  }
}

+ (id)imageForBadgeInfo:()iOS style:isOverContent:
{
  v5 = *a3;
  if (a4 == 1 && (v5 & 0x380) != 0)
  {
    v6 = [objc_opt_class() loopingBadgeTemplateImage];
LABEL_10:
    v8 = v6;
    goto LABEL_12;
  }

  if (a4 == 5 && (v5 & 0x40) != 0 && a5 != 0)
  {
    v6 = [objc_opt_class() livePhotoBadgeShadowedImage];
    goto LABEL_10;
  }

  v9 = MEMORY[0x1E69DCAB8];
  v10 = [objc_opt_class() systemImageNameForBadges:*a3];
  v8 = [v9 _systemImageNamed:v10];

LABEL_12:

  return v8;
}

+ (void)topRightBadgeInfoForBadgeInfo:()iOS
{
  if (PFPosterIsSpatialPhotoEnabled())
  {
    PFPosterDeviceSupportsSpatialPhoto();
  }

  *a1 = 0u;
  a1[1] = 0u;

  PXAssetBadgeInfoCreateWithBadges();
}

+ (__n128)topLeftSecondaryBadgeInfoForBadgeInfo:()iOS
{
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  [a1 topLeftPrimaryBadgeInfoForBadgeInfo:&v11];
  v7 = v13;
  v8 = a2[1];
  v11 = *a2;
  v12 = v8;
  [a1 topRightBadgeInfoForBadgeInfo:&v11];
  a2->n128_u64[0] &= ~(v10 | v7);
  result = a2[1];
  *a3 = *a2;
  a3[1] = result;
  return result;
}

+ (void)topLeftPrimaryBadgeInfoForBadgeInfo:()iOS
{
  *a1 = 0u;
  a1[1] = 0u;
  PXAssetBadgeInfoCreateWithBadges();
}

@end
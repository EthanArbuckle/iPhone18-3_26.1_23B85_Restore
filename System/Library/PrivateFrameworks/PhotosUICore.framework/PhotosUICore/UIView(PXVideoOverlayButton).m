@interface UIView(PXVideoOverlayButton)
+ (double)px_videoOverlayButtonSize;
+ (double)px_videoOverlayButtonSizeWithConfiguration:()PXVideoOverlayButton;
+ (id)px_videoOverlayButtonWithConfiguration:()PXVideoOverlayButton;
+ (id)px_videoOverlayButtonWithStyle:()PXVideoOverlayButton allowBackdropStatisticsSupression:;
+ (void)px_preloadResourcesForVideoOverlayButtonWithStyle:()PXVideoOverlayButton;
@end

@implementation UIView(PXVideoOverlayButton)

+ (double)px_videoOverlayButtonSizeWithConfiguration:()PXVideoOverlayButton
{
  v4 = a3;
  if (px_videoOverlayButtonSizeWithConfiguration__onceToken != -1)
  {
    dispatch_once(&px_videoOverlayButtonSizeWithConfiguration__onceToken, &__block_literal_global_38569);
  }

  if ([v4 style] == 5)
  {
    v5 = px_videoOverlayButtonSizeWithConfiguration__cachedSizes;
    v6 = [v4 localizedTitle];
    v7 = [v5 objectForKey:v6];

    if (!v7)
    {
      v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v12 = [v4 localizedTitle];
      [v11 setText:v12];

      [v11 sizeThatFits:{1.79769313e308, 1.79769313e308}];
      PXSizeCeilingToPixel();
    }

    [v7 CGSizeValue];
    v9 = v8;
  }

  else
  {
    [a1 px_videoOverlayButtonSize];
    v9 = v10;
  }

  return v9;
}

+ (double)px_videoOverlayButtonSize
{
  v0 = [MEMORY[0x1E69DCAB8] px_playOverlayImage:1];
  [v0 size];
  v2 = v1;

  return v2;
}

+ (id)px_videoOverlayButtonWithStyle:()PXVideoOverlayButton allowBackdropStatisticsSupression:
{
  v7 = objc_opt_new();
  [v7 setStyle:a3];
  [v7 setAllowBackdropStatisticsSupression:a4];
  v8 = [a1 px_videoOverlayButtonWithConfiguration:v7];

  return v8;
}

+ (id)px_videoOverlayButtonWithConfiguration:()PXVideoOverlayButton
{
  v3 = a3;
  v4 = [v3 style];
  v5 = (v4 - 2) < 2 || v4 == 5;
  if (!v5 && (v4 || (+[PXKitSettings sharedInstance](PXKitSettings, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 deviceGraphicsQuality], v7, v8)))
  {
    v6 = off_1E771E140;
  }

  else
  {
    v6 = off_1E771DEA8;
  }

  v9 = [objc_alloc(*v6) initWithConfiguration:v3];

  return v9;
}

+ (void)px_preloadResourcesForVideoOverlayButtonWithStyle:()PXVideoOverlayButton
{
  v5 = [off_1E7721858 sharedScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__UIView_PXVideoOverlayButton__px_preloadResourcesForVideoOverlayButtonWithStyle___block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = a1;
  [v5 scheduleMainQueueTask:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__UIView_PXVideoOverlayButton__px_preloadResourcesForVideoOverlayButtonWithStyle___block_invoke_2;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a1;
  v6[5] = a3;
  [v5 scheduleMainQueueTask:v6];
}

@end
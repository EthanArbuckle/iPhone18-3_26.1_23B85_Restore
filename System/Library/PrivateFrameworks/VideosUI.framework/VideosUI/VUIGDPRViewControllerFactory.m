@interface VUIGDPRViewControllerFactory
+ (id)_appImage;
+ (id)_chinaController;
+ (id)_defaultController;
+ (id)_disclaimerFeature;
+ (id)_features;
+ (id)_libraryOnlyController;
+ (id)_liquidGlassWithRenderingMode:(int64_t)a3;
+ (id)_tinted4KDowwnloadImageWithRenderingMode:(int64_t)a3;
+ (id)_tinted4KTVWithRenderingMode:(int64_t)a3;
+ (id)_tintedImmersiveBadgeNoTextImageWithRenderingMode:(int64_t)a3;
+ (id)_tintedMLSImageWithRenderingMode:(int64_t)a3;
+ (id)_tintedPopcornWithRenderingMode:(int64_t)a3;
+ (id)_tintedSymbolNamed:(id)a3 withHighlightColor:(id)a4;
+ (id)_tintedVUIGlyphNamed:(id)a3;
+ (id)_tintedVision3DWithRenderingMode:(int64_t)a3;
+ (id)_whatsNewController;
+ (id)_whatsNewFeatures;
+ (id)getStoreFrontID;
+ (void)createViewController:(BOOL)a3 completion:(id)a4;
@end

@implementation VUIGDPRViewControllerFactory

+ (void)createViewController:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (WLKIsRegulatedSKU())
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIGDPRViewControllerFactory - Returning China controller", buf, 2u);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v28 = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke;
    v29 = &unk_1E872E230;
    v8 = v30;
    v30[0] = v6;
    v30[1] = a1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v28(v27);
      goto LABEL_19;
    }

    v10 = MEMORY[0x1E69E96A0];
    v11 = v27;
LABEL_16:
    dispatch_async(v10, v11);
    goto LABEL_19;
  }

  if (v4)
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIGDPRViewControllerFactory - Returning Library-only controller (offline)", buf, 2u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v24 = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_6;
    v25 = &unk_1E872E230;
    v8 = v26;
    v26[0] = v6;
    v26[1] = a1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v24(block);
      goto LABEL_19;
    }

    v10 = MEMORY[0x1E69E96A0];
    v11 = block;
    goto LABEL_16;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_2;
  aBlock[3] = &unk_1E872F690;
  v8 = v22;
  v22[0] = v6;
  v22[1] = a1;
  v12 = _Block_copy(aBlock);
  if (_os_feature_enabled_impl())
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_2_17;
    v19[3] = &unk_1E872E470;
    v13 = &v20;
    v20 = v12;
    v14 = v12;
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v19];
  }

  else
  {
    v15 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_3;
    v17[3] = &unk_1E872E470;
    v13 = &v18;
    v18 = v12;
    v16 = v12;
    [v15 isFullTVAppEnabledWithCompletion:v17];
  }

LABEL_19:
}

void __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _chinaController];
  (*(v1 + 16))(v1, v2, 0);
}

void __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _libraryOnlyController];
  (*(v1 + 16))(v1, v2, 0);
}

void __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) != 0)
  {
    v9 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
    v10 = [MEMORY[0x1E698C790] hasPreviouslyAcknowledgedPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:v9];
    v11 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v12 = [v11 gdprWhatsNewFlowEnabled];

    if (v12)
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIGDPRViewControllerFactory - Overriding hasSeenGDPR flag from using user defaults", buf, 2u);
      }

      goto LABEL_11;
    }

    v18 = [MEMORY[0x1E69DF6E0] sharedInstance];
    v19 = [v18 gdprFirstTimeFlowEnabled];

    if (v19)
    {
      v20 = VUIDefaultLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUIGDPRViewControllerFactory - Overriding hasSeenGDPR flag from using user defaults", buf, 2u);
      }
    }

    else if (v10)
    {
LABEL_11:
      v14 = VUIDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v30 = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_11;
      v31 = &unk_1E872E230;
      v15 = v32;
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v32[0] = v16;
      v32[1] = v17;
      if ([MEMORY[0x1E696AF00] isMainThread])
      {
        v30(v29);
      }

      else
      {
        dispatch_async(MEMORY[0x1E69E96A0], v29);
      }

LABEL_29:

      goto LABEL_30;
    }

    v21 = VUIDefaultLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUIGDPRViewControllerFactory - Returning default controller", buf, 2u);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v25 = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_12;
    v26 = &unk_1E8732AF0;
    v15 = v28;
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v28[0] = v22;
    v28[1] = v23;
    v27 = v5;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v25(v24);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v24);
    }

    goto LABEL_29;
  }

  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIGDPRViewControllerFactory - Returning Library-only controller (bag-driven)", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v34 = __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_7;
  v35 = &unk_1E872E230;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v36 = v7;
  v37 = v8;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v34(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v9 = v36;
LABEL_30:
}

void __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _libraryOnlyController];
  (*(v1 + 16))(v1, v2, 0);
}

void __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _whatsNewController];
  (*(v1 + 16))(v1, v2, 0);
}

void __64__VUIGDPRViewControllerFactory_createViewController_completion___block_invoke_12(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) _defaultController];
  (*(v2 + 16))(v2, v3, *(a1 + 32));
}

+ (id)_defaultController
{
  if ([MEMORY[0x1E69DF6F0] isVision])
  {
    v3 = [a1 _appImage];
  }

  else
  {
    v3 = 0;
  }

  if (MEMORY[0x1E6913230]())
  {
    v4 = @"WELCOME_TITLE_1";
  }

  else
  {
    v4 = @"WELCOME_TITLE_1";
    if (([MEMORY[0x1E69DF6F0] isPad] & 1) == 0 && !objc_msgSend(MEMORY[0x1E69DF6F0], "isVision"))
    {
      v4 = @"WELCOME_TITLE";
    }
  }

  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:v4];

  v7 = [VUIGDPRViewController alloc];
  v8 = [a1 _features];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"WELCOME_BUTTON_TITLE"];
  v11 = [(AMSUIOnboardingViewController *)v7 initWithHeaderImage:v3 titleText:v6 features:v8 primaryButtonText:v10 privacyLinkBundleIdentifier:@"com.apple.onboarding.tvapp"];

  return v11;
}

+ (id)_whatsNewController
{
  if ([MEMORY[0x1E69DF6F0] isVision])
  {
    v3 = [a1 _appImage];
  }

  else
  {
    v3 = 0;
  }

  v4 = [VUIGDPRViewController alloc];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"WELCOME_WN_TITLE"];
  v7 = [a1 _whatsNewFeatures];
  v8 = +[VUILocalizationManager sharedInstance];
  v9 = [v8 localizedStringForKey:@"WELCOME_WN_BUTTON_TITLE"];
  v10 = [(AMSUIOnboardingViewController *)v4 initWithHeaderImage:v3 titleText:v6 features:v7 primaryButtonText:v9 privacyLinkBundleIdentifier:@"com.apple.onboarding.tvapp"];

  return v10;
}

+ (id)_chinaController
{
  v3 = [VUIGDPRViewController alloc];
  v4 = [a1 _appImage];
  v5 = +[VUILocalizationManager sharedInstance];
  v6 = [v5 localizedStringForKey:@"WELCOME_TITLE_VIDEOS"];
  v7 = +[VUILocalizationManager sharedInstance];
  v8 = [v7 localizedStringForKey:@"WELCOME_DESCRIPTION_VIDEOS"];
  v9 = +[VUILocalizationManager sharedInstance];
  v10 = [v9 localizedStringForKey:@"WELCOME_BUTTON_TITLE"];
  v11 = [(AMSUIOnboardingViewController *)v3 initWithHeaderImage:v4 titleText:v6 descriptionText:v8 primaryButtonText:v10 privacyLinkBundleIdentifier:@"com.apple.onboarding.tvapp"];

  return v11;
}

+ (id)_libraryOnlyController
{
  v3 = MEMORY[0x1E6913230](a1, a2);
  v4 = +[VUILocalizationManager sharedInstance];
  v5 = v4;
  if (v3)
  {
    v6 = @"WELCOME_TITLE_1";
  }

  else
  {
    v6 = @"WELCOME_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6];

  v8 = [VUIGDPRViewController alloc];
  v9 = [a1 _appImage];
  v10 = +[VUILocalizationManager sharedInstance];
  v11 = [v10 localizedStringForKey:@"WELCOME_DESCRIPTION_VIDEOS"];
  v12 = +[VUILocalizationManager sharedInstance];
  v13 = [v12 localizedStringForKey:@"WELCOME_BUTTON_TITLE"];
  v14 = [(AMSUIOnboardingViewController *)v8 initWithHeaderImage:v9 titleText:v7 descriptionText:v11 primaryButtonText:v13 privacyLinkBundleIdentifier:@"com.apple.onboarding.tvapp"];

  return v14;
}

+ (id)_features
{
  v3 = [MEMORY[0x1E69DF6F0] isVision];
  v4 = objc_alloc(MEMORY[0x1E698CD08]);
  v5 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  if (v3)
  {
    v6 = [a1 _tintedSymbolNamed:@"apple.tv.logo" withHighlightColor:v5];
    v7 = +[VUILocalizationManager sharedInstance];
    v8 = [v7 localizedStringForKey:@"WELCOME_FEATURE_TITLE1_VISION"];
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"WELCOME_FEATURE_DESCRIPTION1_VISION"];
    v11 = [v4 initWithImage:v6 titleText:v8 descriptionText:v10];

    v12 = objc_alloc(MEMORY[0x1E698CD08]);
    v13 = [a1 _tintedVision3DWithRenderingMode:1];
    v14 = +[VUILocalizationManager sharedInstance];
    v15 = [v14 localizedStringForKey:@"WELCOME_FEATURE_TITLE2_VISION"];
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = [v16 localizedStringForKey:@"WELCOME_FEATURE_DESCRIPTION2_VISION"];
    v18 = [v12 initWithImage:v13 titleText:v15 descriptionText:v17];

    v19 = objc_alloc(MEMORY[0x1E698CD08]);
    v20 = [a1 _tintedPopcornWithRenderingMode:1];
    v21 = +[VUILocalizationManager sharedInstance];
    v22 = [v21 localizedStringForKey:@"WELCOME_FEATURE_TITLE3_VISION"];
    v23 = +[VUILocalizationManager sharedInstance];
    v24 = [v23 localizedStringForKey:@"WELCOME_FEATURE_DESCRIPTION3_VISION"];
    v25 = [v19 initWithImage:v20 titleText:v22 descriptionText:v24];
  }

  else
  {
    v26 = [a1 _tintedSymbolNamed:@"apple.tv.logo.rectangle.fill" withHighlightColor:v5];
    v27 = +[VUILocalizationManager sharedInstance];
    v28 = [v27 localizedStringForKey:@"WELCOME_FEATURE_TITLE1"];
    v29 = +[VUILocalizationManager sharedInstance];
    v30 = [v29 localizedStringForKey:@"WELCOME_FEATURE_DESCRIPTION1"];
    v11 = [v4 initWithImage:v26 titleText:v28 descriptionText:v30];

    v31 = objc_alloc(MEMORY[0x1E698CD08]);
    v32 = [a1 _tintedMLSImageWithRenderingMode:2];
    v33 = +[VUILocalizationManager sharedInstance];
    v34 = [v33 localizedStringForKey:@"WELCOME_FEATURE_TITLE2"];
    v35 = +[VUILocalizationManager sharedInstance];
    v36 = [v35 localizedStringForKey:@"WELCOME_FEATURE_DESCRIPTION2"];
    v18 = [v31 initWithImage:v32 titleText:v34 descriptionText:v36];

    v37 = objc_alloc(MEMORY[0x1E698CD08]);
    v20 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
    v21 = [a1 _tintedSymbolNamed:@"film" withHighlightColor:v20];
    v22 = +[VUILocalizationManager sharedInstance];
    v23 = [v22 localizedStringForKey:@"WELCOME_FEATURE_TITLE3"];
    v24 = +[VUILocalizationManager sharedInstance];
    v38 = [v24 localizedStringForKey:@"WELCOME_FEATURE_DESCRIPTION3"];
    v25 = [v37 initWithImage:v21 titleText:v23 descriptionText:v38];
  }

  v39 = [a1 _disclaimerFeature];
  v40 = [MEMORY[0x1E695DF70] array];
  [v40 addObject:v11];
  [v40 addObject:v18];
  [v40 addObject:v25];
  [v40 addObject:v39];
  v41 = [v40 copy];

  return v41;
}

+ (id)_whatsNewFeatures
{
  v3 = [MEMORY[0x1E69DF6F0] isVision];
  v4 = objc_alloc(MEMORY[0x1E698CD08]);
  if (v3)
  {
    v5 = [a1 _tintedImmersiveBadgeNoTextImageWithRenderingMode:2];
    v6 = +[VUILocalizationManager sharedInstance];
    v7 = [v6 localizedStringForKey:@"WHATSNEW_FEATURE_TITLE_VISION_IN_SIDEBAR"];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"WHATSNEW_FEATURE_DESCRIPTION_VISION_IN_SIDEBAR"];
    v10 = [v4 initWithImage:v5 titleText:v7 descriptionText:v9];
    v11 = 0;
  }

  else
  {
    v12 = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
    v13 = [a1 _tintedSymbolNamed:@"rectangle.grid.3x2.fill" withHighlightColor:v12];
    v14 = +[VUILocalizationManager sharedInstance];
    v15 = [v14 localizedStringForKey:@"WHATSNEW_FEATURE_TITLE_NEW_DESIGN"];
    v16 = +[VUILocalizationManager sharedInstance];
    v17 = [v16 localizedStringForKey:@"WHATSNEW_FEATURE_DESCRIPTION_NEW_DESIGN"];
    v10 = [v4 initWithImage:v13 titleText:v15 descriptionText:v17];

    v18 = objc_alloc(MEMORY[0x1E698CD08]);
    v5 = [a1 _liquidGlassWithRenderingMode:2];
    v6 = +[VUILocalizationManager sharedInstance];
    v7 = [v6 localizedStringForKey:@"WHATSNEW_FEATURE_TITLE_LIQUID_GLASS"];
    v8 = +[VUILocalizationManager sharedInstance];
    v9 = [v8 localizedStringForKey:@"WHATSNEW_FEATURE_DESCRIPTION_LIQUID_GLASS"];
    v11 = [v18 initWithImage:v5 titleText:v7 descriptionText:v9];
  }

  v19 = [MEMORY[0x1E695DF70] array];
  if ([MEMORY[0x1E69DF6F0] isVision])
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v20 = v19;
    v21 = v10;
  }

  else
  {
    [v19 addObject:v10];
    v20 = v19;
    v21 = v11;
  }

  [v20 addObject:v21];
LABEL_9:
  v22 = [v19 copy];

  return v22;
}

+ (id)_disclaimerFeature
{
  v2 = [MEMORY[0x1E69DF6F0] isVision];
  v3 = +[VUILocalizationManager sharedInstance];
  v4 = v3;
  if (v2)
  {
    v5 = @"WELCOME_FEATURE_DISCLAIMER1";
  }

  else
  {
    v5 = @"WELCOME_FEATURE_DISCLAIMER";
  }

  v6 = [v3 localizedStringForKey:v5];

  v7 = objc_alloc(MEMORY[0x1E698CD08]);
  v8 = objc_opt_new();
  v9 = [v7 initWithImage:v8 titleText:&stru_1F5DB25C0 descriptionText:v6];

  return v9;
}

+ (id)_appImage
{
  if ([MEMORY[0x1E69DF6F0] isVision])
  {
    v2 = @"Onboarding-AppIcon-Circular";
  }

  else
  {
    v2 = @"Onboarding-AppIcon";
  }

  v3 = MEMORY[0x1E69DCAB8];

  return [v3 vui_videosUIImageNamed:v2];
}

+ (id)_tintedVUIGlyphNamed:(id)a3
{
  v3 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:a3];
  v4 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  v5 = [v3 vui_imageWithColor:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

+ (id)_tintedMLSImageWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"mls.crest.outline"];
  v5 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)_tintedImmersiveBadgeNoTextImageWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"immersive.play.line"];
  v5 = [MEMORY[0x1E69DC888] vui_primaryTextColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)_tinted4KDowwnloadImageWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"4k.downloads"];
  v5 = [v4 _imageThatSuppressesAccessibilityHairlineThickening];

  v6 = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
  v7 = [v5 imageWithTintColor:v6 renderingMode:a3];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;

  return v9;
}

+ (id)_tintedSymbolNamed:(id)a3 withHighlightColor:(id)a4
{
  v5 = MEMORY[0x1E69DCAB8];
  v6 = a4;
  v7 = [v5 _systemImageNamed:a3];
  v8 = [v7 imageWithTintColor:v6 renderingMode:2];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  return v10;
}

+ (id)_tintedPopcornWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"popcorn.fill"];
  v5 = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)_tinted4KTVWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"4K.TV"];
  v5 = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)_tintedVision3DWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"immersive.badge.fill"];
  v5 = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)_liquidGlassWithRenderingMode:(int64_t)a3
{
  v4 = [MEMORY[0x1E69DCAB8] vui_videosUIImageNamed:@"liquid_glass"];
  v5 = [MEMORY[0x1E69DC888] vui_keyBlueHighlightedColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:a3];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;

  return v8;
}

+ (id)getStoreFrontID
{
  v2 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  v3 = [v2 ams_storefront];
  v4 = [v3 componentsSeparatedByString:@"-"];
  v5 = v4;
  if (v4 && [v4 count] >= 2)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = v5;
    goto LABEL_13;
  }

  v7 = [v3 componentsSeparatedByString:{@", "}];

  if (v7)
  {
    if ([v7 count] >= 2)
    {
      v6 = [v7 objectAtIndexedSubscript:0];
      goto LABEL_13;
    }

    if ([v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      if ([v8 length])
      {
        v6 = [v7 objectAtIndexedSubscript:0];
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

@end
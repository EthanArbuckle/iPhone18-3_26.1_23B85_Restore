@interface VUIUtilities
+ (BOOL)allowsAccountModification;
+ (BOOL)isInFullscreenOrPipPlayback;
+ (BOOL)isInRetailDemoMode;
+ (BOOL)isIpadInterface;
+ (BOOL)isIpadPortrait;
+ (BOOL)isPortraitIgnoringFlatOrientation:(int64_t)a3 viewSize:(CGSize)a4;
+ (BOOL)isRemoteApp;
+ (BOOL)isStoreOrPressDemoMode;
+ (BOOL)shouldInvalidateLayoutWithPreviousTraitCollection:(id)a3 newTraitCollection:(id)a4;
+ (BOOL)shouldPlayerTabsUseVerticalLayout;
+ (BOOL)shouldPlayerTabsUseVerticalLayoutForSize:(CGSize)a3 isPhoneSizeClass:(BOOL)a4;
+ (CGRect)vuiRectCenteredXInRect:(CGRect)a3 boundsToCenterIn:(CGRect)a4 offset:(double)a5;
+ (CGSize)imageSizeWithAspectRatio:(double)a3 scaleToSize:(CGSize)a4;
+ (TVCornerRadii)imageCornerRadiiWithStyle:(int64_t)a3;
+ (double)imageCornerRadiusWithStyle:(int64_t)a3;
+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4;
+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4 maximumContentSizeCategory:(id)a5;
+ (id)VideosUIBundle;
+ (id)colorFromHexStr:(id)a3;
+ (id)colorFromRGBStr:(id)a3;
+ (id)getCurrentQueueLabel;
+ (id)getOSVersion;
+ (id)gradientLayerLocationsFromSpacings:(id)a3 height:(double)a4;
+ (id)placeholderImageResourceName:(int64_t)a3;
+ (id)randomColor;
+ (int64_t)interfaceStyleFromTheme:(id)a3 defaultInterfaceStyle:(int64_t)a4;
+ (int64_t)textAlignmentWithSemanticContentAttribute:(int64_t)a3;
+ (void)gradientConfigForCollection:(id)a3 gradientMask:(int64_t)a4 properties:(id)a5 configuration:(id *)a6;
@end

@implementation VUIUtilities

+ (id)getOSVersion
{
  if (getOSVersion_onceToken != -1)
  {
    +[VUIUtilities getOSVersion];
  }

  v3 = getOSVersion_osVersion;

  return v3;
}

void __28__VUIUtilities_getOSVersion__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithString:v1];
      v4 = getOSVersion_osVersion;
      getOSVersion_osVersion = v3;
    }

    CFRelease(v1);
  }
}

+ (BOOL)isInRetailDemoMode
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698C8A8] isRunningInStoreDemoMode];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIUtilities::isInRetailDemoMode=%hhd", v5, 8u);
  }

  return v2;
}

+ (id)randomColor
{
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = arc4random_uniform(0xFFu) / 255.0;
  v4 = arc4random_uniform(0xFFu) / 255.0;
  v5 = MEMORY[0x1E69DC888];

  return [v5 colorWithRed:v2 green:v3 blue:v4 alpha:0.4];
}

+ (BOOL)shouldInvalidateLayoutWithPreviousTraitCollection:(id)a3 newTraitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 horizontalSizeClass];
    if (v7 == [v6 horizontalSizeClass])
    {
      v8 = [v5 verticalSizeClass];
      v9 = v8 != [v6 verticalSizeClass];
    }

    else
    {
      v9 = 1;
    }

    v11 = [v5 preferredContentSizeCategory];
    v12 = [v6 preferredContentSizeCategory];

    v10 = v11 != v12 || v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGSize)imageSizeWithAspectRatio:(double)a3 scaleToSize:(CGSize)a4
{
  if (a3 == 0.0 || a4.height != 0.0)
  {
    if (a4.width == 0.0)
    {
      a4.width = round(a4.height * a3);
    }
  }

  else
  {
    a4.height = round(a4.width / a3);
  }

  width = a4.width;
  height = a4.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4
{
  v5 = a4;
  [objc_opt_class() scaleContentSizeValue:v5 forTraitCollection:*MEMORY[0x1E69DDC90] maximumContentSizeCategory:a3];
  v7 = v6;

  return v7;
}

+ (double)scaleContentSizeValue:(double)a3 forTraitCollection:(id)a4 maximumContentSizeCategory:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__onceToken != -1)
  {
    +[VUIUtilities scaleContentSizeValue:forTraitCollection:maximumContentSizeCategory:];
  }

  v9 = [v7 preferredContentSizeCategory];
  v10 = v9;
  v11 = *MEMORY[0x1E69DDC90];
  if (!v9 || [v9 isEqual:*MEMORY[0x1E69DDC90]])
  {
    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    v13 = [v12 traitCollection];
    v14 = [v13 preferredContentSizeCategory];

    v10 = v14;
  }

  if (v11 != v8 && UIContentSizeCategoryCompareToCategory(v8, v10) == NSOrderedAscending)
  {
    v15 = v8;

    v10 = v15;
  }

  v16 = [scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__sContentSizeCategoryScale objectForKeyedSubscript:v10];
  v17 = v16;
  v18 = &unk_1F5E5ECA0;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  [v19 floatValue];
  v21 = v20;

  return ceil(v21 * a3);
}

void __84__VUIUtilities_scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory___block_invoke()
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_1F5E5EC70 forKeyedSubscript:*MEMORY[0x1E69DDC68]];
  [v2 setObject:&unk_1F5E5EC80 forKeyedSubscript:*MEMORY[0x1E69DDC88]];
  [v2 setObject:&unk_1F5E5EC90 forKeyedSubscript:*MEMORY[0x1E69DDC78]];
  [v2 setObject:&unk_1F5E5ECA0 forKeyedSubscript:*MEMORY[0x1E69DDC70]];
  [v2 setObject:&unk_1F5E5ECB0 forKeyedSubscript:*MEMORY[0x1E69DDC60]];
  [v2 setObject:&unk_1F5E5ECC0 forKeyedSubscript:*MEMORY[0x1E69DDC58]];
  [v2 setObject:&unk_1F5E5ECD0 forKeyedSubscript:*MEMORY[0x1E69DDC50]];
  [v2 setObject:&unk_1F5E5ECE0 forKeyedSubscript:*MEMORY[0x1E69DDC40]];
  [v2 setObject:&unk_1F5E5ECF0 forKeyedSubscript:*MEMORY[0x1E69DDC38]];
  [v2 setObject:&unk_1F5E5ED00 forKeyedSubscript:*MEMORY[0x1E69DDC30]];
  [v2 setObject:&unk_1F5E5ED10 forKeyedSubscript:*MEMORY[0x1E69DDC28]];
  [v2 setObject:&unk_1F5E5ED20 forKeyedSubscript:*MEMORY[0x1E69DDC20]];
  v0 = [v2 copy];
  v1 = scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__sContentSizeCategoryScale;
  scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__sContentSizeCategoryScale = v0;
}

+ (BOOL)isIpadInterface
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return v3 == 1;
}

+ (BOOL)isIpadPortrait
{
  v2 = +[VUIUtilities isIpadInterface];
  if (v2)
  {
    LOBYTE(v2) = ([MEMORY[0x1E69DD2E8] vui_interfaceOrientation] - 1) < 2;
  }

  return v2;
}

+ (int64_t)textAlignmentWithSemanticContentAttribute:(int64_t)a3
{
  if (a3 == 4)
  {
    return 2;
  }

  if (a3 == 3)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection] == 1;

  return 2 * v5;
}

+ (id)VideosUIBundle
{
  if (VideosUIBundle_onceToken != -1)
  {
    +[VUIUtilities VideosUIBundle];
  }

  v3 = VideosUIBundle_bundle;

  return v3;
}

void __30__VUIUtilities_VideosUIBundle__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.VideosUI"];
  v1 = VideosUIBundle_bundle;
  VideosUIBundle_bundle = v0;
}

+ (BOOL)isInFullscreenOrPipPlayback
{
  v2 = +[VUIPlaybackManager sharedInstance];
  v3 = [v2 isPlaybackUIBeingShown];

  return v3;
}

+ (BOOL)isPortraitIgnoringFlatOrientation:(int64_t)a3 viewSize:(CGSize)a4
{
  if ((a3 - 5) >= 2)
  {
    return (a3 - 1) < 2;
  }

  else
  {
    return a4.width < a4.height;
  }
}

+ (void)gradientConfigForCollection:(id)a3 gradientMask:(int64_t)a4 properties:(id)a5 configuration:(id *)a6
{
  v7 = a4;
  v9 = a5;
  [a3 contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v47 = v16;
  [v9 minPadding];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v9 minLengths];
  v46 = v25;
  v27 = v26;

  v28 = *MEMORY[0x1E69DDCE0];
  v29 = *(MEMORY[0x1E69DDCE0] + 8);
  v30 = *(MEMORY[0x1E69DDCE0] + 16);
  v31 = *(MEMORY[0x1E69DDCE0] + 24);
  v32 = -(v18 - v11);
  if (v11 >= v18)
  {
    v32 = *MEMORY[0x1E69DDCE0];
  }

  v33 = v28 + v18 - v11;
  if (v11 >= v18)
  {
    v33 = *MEMORY[0x1E69DDCE0];
  }

  if (v7)
  {
    v34 = v27;
  }

  else
  {
    v34 = v32;
  }

  if (v7)
  {
    v28 = v32;
  }

  else
  {
    v33 = *MEMORY[0x1E69DDCE0];
  }

  v35 = -(v22 - v15);
  if (v15 >= v22)
  {
    v35 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  v36 = v22 - v15 + v30;
  if (v15 >= v22)
  {
    v36 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  if ((v7 & 4) != 0)
  {
    v37 = v27;
  }

  else
  {
    v37 = v35;
  }

  if ((v7 & 4) != 0)
  {
    v30 = v35;
  }

  else
  {
    v36 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  v38 = -(v20 - v13);
  if (v13 >= v20)
  {
    v38 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  v39 = v20 - v13 + v29;
  if (v13 >= v20)
  {
    v39 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  if ((v7 & 8) != 0)
  {
    v40 = v46;
  }

  else
  {
    v40 = v38;
  }

  if ((v7 & 8) != 0)
  {
    v29 = v38;
  }

  else
  {
    v39 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  v41 = -(v24 - v47);
  if (v47 >= v24)
  {
    v41 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  a6->var0.top = v34;
  a6->var0.left = v40;
  v42 = v24 - v47 + v31;
  if (v47 >= v24)
  {
    v42 = v31;
  }

  if ((v7 & 0x10) != 0)
  {
    v43 = v46;
  }

  else
  {
    v43 = v41;
  }

  a6->var0.bottom = v37;
  a6->var0.right = v43;
  a6->var1.top = v33;
  a6->var1.left = v39;
  if ((v7 & 0x10) != 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = v31;
  }

  a6->var1.bottom = v36;
  a6->var1.right = v44;
  a6->var2.top = v28;
  a6->var2.left = v29;
  if ((v7 & 0x10) != 0)
  {
    v45 = v41;
  }

  else
  {
    v45 = v31;
  }

  a6->var2.bottom = v30;
  a6->var2.right = v45;
}

+ (TVCornerRadii)imageCornerRadiiWithStyle:(int64_t)a3
{
  v3 = MEMORY[0x1E69D5930];
  [objc_opt_class() imageCornerRadiusWithStyle:a3];

  [v3 radiiFromRadius:?];
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

+ (id)placeholderImageResourceName:(int64_t)a3
{
  v3 = a3;
  if (!a3)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    v5 = [v4 traitCollection];
    v3 = [v5 userInterfaceStyle];
  }

  v6 = VUIImageResourceMapGenericPlaceholder16x9;
  if (v3 != 1)
  {
    v6 = &VUIImageResourceMapDarkGenericPlaceholder16x9;
  }

  v7 = *v6;

  return v7;
}

+ (id)colorFromRGBStr:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC888] clearColor];
  if ([v3 length])
  {
    v5 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"(");
    v6 = [v3 rangeOfCharacterFromSet:v5];

    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""]);
    v8 = [v3 rangeOfCharacterFromSet:v7];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v3 substringWithRange:{v6 + 1, v8 + ~v6}];
      v11 = [v10 componentsSeparatedByString:{@", "}];
      if ([v11 count] == 3)
      {
        v12 = [v11 objectAtIndexedSubscript:0];
        v13 = [v12 integerValue] / 255.0;

        v14 = [v11 objectAtIndexedSubscript:1];
        v15 = [v14 integerValue] / 255.0;

        v16 = [v11 objectAtIndexedSubscript:2];
        v17 = [v16 integerValue] / 255.0;

        v18 = [MEMORY[0x1E69DC888] colorWithRed:v13 green:v15 blue:v17 alpha:1.0];

        v4 = v18;
      }
    }
  }

  return v4;
}

+ (id)colorFromHexStr:(id)a3
{
  v3 = a3;
  if ([v3 length] && objc_msgSend(v3, "hasPrefix:", @"#"))
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696AE88] scannerWithString:v3];
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"#"];
    [v4 setCharactersToBeSkipped:v5];

    [v4 scanHexInt:&v8];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:BYTE2(v8) / 255.0 green:BYTE1(v8) / 255.0 blue:v8 / 255.0 alpha:1.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int64_t)interfaceStyleFromTheme:(id)a3 defaultInterfaceStyle:(int64_t)a4
{
  v5 = a3;
  if (interfaceStyleFromTheme_defaultInterfaceStyle__onceToken != -1)
  {
    +[VUIUtilities interfaceStyleFromTheme:defaultInterfaceStyle:];
  }

  if ([v5 length])
  {
    v6 = [interfaceStyleFromTheme_defaultInterfaceStyle__sTypeMap objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [interfaceStyleFromTheme_defaultInterfaceStyle__sTypeMap objectForKeyedSubscript:v5];
      a4 = [v7 unsignedIntegerValue];
    }
  }

  return a4;
}

void __62__VUIUtilities_interfaceStyleFromTheme_defaultInterfaceStyle___block_invoke()
{
  v3[2] = *MEMORY[0x1E69E9840];
  v2[0] = @"light";
  v2[1] = @"dark";
  v3[0] = &unk_1F5E5D7A0;
  v3[1] = &unk_1F5E5D7B8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:2];
  v1 = interfaceStyleFromTheme_defaultInterfaceStyle__sTypeMap;
  interfaceStyleFromTheme_defaultInterfaceStyle__sTypeMap = v0;
}

+ (BOOL)isRemoteApp
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  LOBYTE(v2) = [v3 isEqualToString:@"com.apple.TVRemoteUIService"];
  return v2;
}

+ (id)gradientLayerLocationsFromSpacings:(id)a3 height:(double)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v17 + 1) + 8 * i) floatValue];
        v11 = v11 + v13;
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:v11 / a4];
        [v6 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

+ (double)imageCornerRadiusWithStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 2)
  {
    return dbl_1E4297210[a3];
  }

  return result;
}

+ (id)getCurrentQueueLabel
{
  label = dispatch_queue_get_label(0);
  v3 = MEMORY[0x1E696AEC0];

  return [v3 stringWithCString:label encoding:4];
}

+ (BOOL)isStoreOrPressDemoMode
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VUIUtilities_isStoreOrPressDemoMode__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (isStoreOrPressDemoMode_onceToken != -1)
  {
    dispatch_once(&isStoreOrPressDemoMode_onceToken, block);
  }

  return isStoreOrPressDemoMode_isInDemoMode;
}

uint64_t __38__VUIUtilities_isStoreOrPressDemoMode__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) isInRetailDemoMode];
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"PressDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat);
  v3 = keyExistsAndHasValidFormat != 0;
  if (!result)
  {
    v3 = 0;
  }

  isStoreOrPressDemoMode_isInDemoMode = v1 | v3;
  return result;
}

+ (BOOL)allowsAccountModification
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] != 2;

  return v3;
}

+ (CGRect)vuiRectCenteredXInRect:(CGRect)a3 boundsToCenterIn:(CGRect)a4 offset:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  VUIRoundValue();
  v9 = y;
  v10 = width;
  v11 = height;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (BOOL)shouldPlayerTabsUseVerticalLayoutForSize:(CGSize)a3 isPhoneSizeClass:(BOOL)a4
{
  v4 = a4;
  height = a3.height;
  width = a3.width;
  v7 = [MEMORY[0x1E69DC938] currentDevice];
  v8 = [v7 orientation];

  result = 1;
  if (!+[VUIUtilities isPortraitIgnoringFlatOrientation:viewSize:](VUIUtilities, "isPortraitIgnoringFlatOrientation:viewSize:", v8, width, height) && (![MEMORY[0x1E69DF6F0] isPad] || !v4))
  {
    return 0;
  }

  return result;
}

+ (BOOL)shouldPlayerTabsUseVerticalLayout
{
  v2 = [MEMORY[0x1E69DD2E8] vui_currentSizeClass];
  v3 = +[VUITVAppLauncher sharedInstance];
  v4 = [v3 appWindow];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  if (v6 < v8)
  {
    return 1;
  }

  result = [MEMORY[0x1E69DF6F0] isPad];
  if (v2 >= 3)
  {
    return 0;
  }

  return result;
}

@end
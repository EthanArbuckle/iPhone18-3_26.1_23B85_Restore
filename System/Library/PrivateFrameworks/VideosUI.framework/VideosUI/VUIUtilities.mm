@interface VUIUtilities
+ (BOOL)allowsAccountModification;
+ (BOOL)isInFullscreenOrPipPlayback;
+ (BOOL)isInRetailDemoMode;
+ (BOOL)isIpadInterface;
+ (BOOL)isIpadPortrait;
+ (BOOL)isPortraitIgnoringFlatOrientation:(int64_t)orientation viewSize:(CGSize)size;
+ (BOOL)isRemoteApp;
+ (BOOL)isStoreOrPressDemoMode;
+ (BOOL)shouldInvalidateLayoutWithPreviousTraitCollection:(id)collection newTraitCollection:(id)traitCollection;
+ (BOOL)shouldPlayerTabsUseVerticalLayout;
+ (BOOL)shouldPlayerTabsUseVerticalLayoutForSize:(CGSize)size isPhoneSizeClass:(BOOL)class;
+ (CGRect)vuiRectCenteredXInRect:(CGRect)rect boundsToCenterIn:(CGRect)in offset:(double)offset;
+ (CGSize)imageSizeWithAspectRatio:(double)ratio scaleToSize:(CGSize)size;
+ (TVCornerRadii)imageCornerRadiiWithStyle:(int64_t)style;
+ (double)imageCornerRadiusWithStyle:(int64_t)style;
+ (double)scaleContentSizeValue:(double)value forTraitCollection:(id)collection;
+ (double)scaleContentSizeValue:(double)value forTraitCollection:(id)collection maximumContentSizeCategory:(id)category;
+ (id)VideosUIBundle;
+ (id)colorFromHexStr:(id)str;
+ (id)colorFromRGBStr:(id)str;
+ (id)getCurrentQueueLabel;
+ (id)getOSVersion;
+ (id)gradientLayerLocationsFromSpacings:(id)spacings height:(double)height;
+ (id)placeholderImageResourceName:(int64_t)name;
+ (id)randomColor;
+ (int64_t)interfaceStyleFromTheme:(id)theme defaultInterfaceStyle:(int64_t)style;
+ (int64_t)textAlignmentWithSemanticContentAttribute:(int64_t)attribute;
+ (void)gradientConfigForCollection:(id)collection gradientMask:(int64_t)mask properties:(id)properties configuration:(id *)configuration;
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
  isRunningInStoreDemoMode = [MEMORY[0x1E698C8A8] isRunningInStoreDemoMode];
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = isRunningInStoreDemoMode;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUIUtilities::isInRetailDemoMode=%hhd", v5, 8u);
  }

  return isRunningInStoreDemoMode;
}

+ (id)randomColor
{
  v2 = arc4random_uniform(0xFFu) / 255.0;
  v3 = arc4random_uniform(0xFFu) / 255.0;
  v4 = arc4random_uniform(0xFFu) / 255.0;
  v5 = MEMORY[0x1E69DC888];

  return [v5 colorWithRed:v2 green:v3 blue:v4 alpha:0.4];
}

+ (BOOL)shouldInvalidateLayoutWithPreviousTraitCollection:(id)collection newTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  if (collectionCopy)
  {
    horizontalSizeClass = [collectionCopy horizontalSizeClass];
    if (horizontalSizeClass == [traitCollectionCopy horizontalSizeClass])
    {
      verticalSizeClass = [collectionCopy verticalSizeClass];
      v9 = verticalSizeClass != [traitCollectionCopy verticalSizeClass];
    }

    else
    {
      v9 = 1;
    }

    preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
    preferredContentSizeCategory2 = [traitCollectionCopy preferredContentSizeCategory];

    v10 = preferredContentSizeCategory != preferredContentSizeCategory2 || v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (CGSize)imageSizeWithAspectRatio:(double)ratio scaleToSize:(CGSize)size
{
  if (ratio == 0.0 || size.height != 0.0)
  {
    if (size.width == 0.0)
    {
      size.width = round(size.height * ratio);
    }
  }

  else
  {
    size.height = round(size.width / ratio);
  }

  width = size.width;
  height = size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (double)scaleContentSizeValue:(double)value forTraitCollection:(id)collection
{
  collectionCopy = collection;
  [objc_opt_class() scaleContentSizeValue:collectionCopy forTraitCollection:*MEMORY[0x1E69DDC90] maximumContentSizeCategory:value];
  v7 = v6;

  return v7;
}

+ (double)scaleContentSizeValue:(double)value forTraitCollection:(id)collection maximumContentSizeCategory:(id)category
{
  collectionCopy = collection;
  categoryCopy = category;
  if (scaleContentSizeValue_forTraitCollection_maximumContentSizeCategory__onceToken != -1)
  {
    +[VUIUtilities scaleContentSizeValue:forTraitCollection:maximumContentSizeCategory:];
  }

  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  v10 = preferredContentSizeCategory;
  v11 = *MEMORY[0x1E69DDC90];
  if (!preferredContentSizeCategory || [preferredContentSizeCategory isEqual:*MEMORY[0x1E69DDC90]])
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

    v10 = preferredContentSizeCategory2;
  }

  if (v11 != categoryCopy && UIContentSizeCategoryCompareToCategory(categoryCopy, v10) == NSOrderedAscending)
  {
    v15 = categoryCopy;

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

  return ceil(v21 * value);
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
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return userInterfaceIdiom == 1;
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

+ (int64_t)textAlignmentWithSemanticContentAttribute:(int64_t)attribute
{
  if (attribute == 4)
  {
    return 2;
  }

  if (attribute == 3)
  {
    return 0;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection] == 1;

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
  isPlaybackUIBeingShown = [v2 isPlaybackUIBeingShown];

  return isPlaybackUIBeingShown;
}

+ (BOOL)isPortraitIgnoringFlatOrientation:(int64_t)orientation viewSize:(CGSize)size
{
  if ((orientation - 5) >= 2)
  {
    return (orientation - 1) < 2;
  }

  else
  {
    return size.width < size.height;
  }
}

+ (void)gradientConfigForCollection:(id)collection gradientMask:(int64_t)mask properties:(id)properties configuration:(id *)configuration
{
  maskCopy = mask;
  propertiesCopy = properties;
  [collection contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v47 = v16;
  [propertiesCopy minPadding];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [propertiesCopy minLengths];
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

  if (maskCopy)
  {
    v34 = v27;
  }

  else
  {
    v34 = v32;
  }

  if (maskCopy)
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

  if ((maskCopy & 4) != 0)
  {
    v37 = v27;
  }

  else
  {
    v37 = v35;
  }

  if ((maskCopy & 4) != 0)
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

  if ((maskCopy & 8) != 0)
  {
    v40 = v46;
  }

  else
  {
    v40 = v38;
  }

  if ((maskCopy & 8) != 0)
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

  configuration->var0.top = v34;
  configuration->var0.left = v40;
  v42 = v24 - v47 + v31;
  if (v47 >= v24)
  {
    v42 = v31;
  }

  if ((maskCopy & 0x10) != 0)
  {
    v43 = v46;
  }

  else
  {
    v43 = v41;
  }

  configuration->var0.bottom = v37;
  configuration->var0.right = v43;
  configuration->var1.top = v33;
  configuration->var1.left = v39;
  if ((maskCopy & 0x10) != 0)
  {
    v44 = v42;
  }

  else
  {
    v44 = v31;
  }

  configuration->var1.bottom = v36;
  configuration->var1.right = v44;
  configuration->var2.top = v28;
  configuration->var2.left = v29;
  if ((maskCopy & 0x10) != 0)
  {
    v45 = v41;
  }

  else
  {
    v45 = v31;
  }

  configuration->var2.bottom = v30;
  configuration->var2.right = v45;
}

+ (TVCornerRadii)imageCornerRadiiWithStyle:(int64_t)style
{
  v3 = MEMORY[0x1E69D5930];
  [objc_opt_class() imageCornerRadiusWithStyle:style];

  [v3 radiiFromRadius:?];
  result.var3 = v7;
  result.var2 = v6;
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

+ (id)placeholderImageResourceName:(int64_t)name
{
  nameCopy = name;
  if (!name)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    traitCollection = [mainScreen traitCollection];
    nameCopy = [traitCollection userInterfaceStyle];
  }

  v6 = VUIImageResourceMapGenericPlaceholder16x9;
  if (nameCopy != 1)
  {
    v6 = &VUIImageResourceMapDarkGenericPlaceholder16x9;
  }

  v7 = *v6;

  return v7;
}

+ (id)colorFromRGBStr:(id)str
{
  strCopy = str;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  if ([strCopy length])
  {
    v5 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"(");
    v6 = [strCopy rangeOfCharacterFromSet:v5];

    v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@""]);
    v8 = [strCopy rangeOfCharacterFromSet:v7];

    if (v6 != 0x7FFFFFFFFFFFFFFFLL && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [strCopy substringWithRange:{v6 + 1, v8 + ~v6}];
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

        clearColor = v18;
      }
    }
  }

  return clearColor;
}

+ (id)colorFromHexStr:(id)str
{
  strCopy = str;
  if ([strCopy length] && objc_msgSend(strCopy, "hasPrefix:", @"#"))
  {
    v8 = 0;
    v4 = [MEMORY[0x1E696AE88] scannerWithString:strCopy];
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

+ (int64_t)interfaceStyleFromTheme:(id)theme defaultInterfaceStyle:(int64_t)style
{
  themeCopy = theme;
  if (interfaceStyleFromTheme_defaultInterfaceStyle__onceToken != -1)
  {
    +[VUIUtilities interfaceStyleFromTheme:defaultInterfaceStyle:];
  }

  if ([themeCopy length])
  {
    v6 = [interfaceStyleFromTheme_defaultInterfaceStyle__sTypeMap objectForKeyedSubscript:themeCopy];

    if (v6)
    {
      v7 = [interfaceStyleFromTheme_defaultInterfaceStyle__sTypeMap objectForKeyedSubscript:themeCopy];
      style = [v7 unsignedIntegerValue];
    }
  }

  return style;
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  LOBYTE(mainBundle) = [bundleIdentifier isEqualToString:@"com.apple.TVRemoteUIService"];
  return mainBundle;
}

+ (id)gradientLayerLocationsFromSpacings:(id)spacings height:(double)height
{
  v22 = *MEMORY[0x1E69E9840];
  spacingsCopy = spacings;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(spacingsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = spacingsCopy;
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
        height = [MEMORY[0x1E696AD98] numberWithDouble:v11 / height];
        [v6 addObject:height];
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = [v6 copy];

  return v15;
}

+ (double)imageCornerRadiusWithStyle:(int64_t)style
{
  result = 0.0;
  if (style <= 2)
  {
    return dbl_1E4297210[style];
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
  block[4] = self;
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
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADD70]] != 2;

  return v3;
}

+ (CGRect)vuiRectCenteredXInRect:(CGRect)rect boundsToCenterIn:(CGRect)in offset:(double)offset
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
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

+ (BOOL)shouldPlayerTabsUseVerticalLayoutForSize:(CGSize)size isPhoneSizeClass:(BOOL)class
{
  classCopy = class;
  height = size.height;
  width = size.width;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  orientation = [currentDevice orientation];

  result = 1;
  if (!+[VUIUtilities isPortraitIgnoringFlatOrientation:viewSize:](VUIUtilities, "isPortraitIgnoringFlatOrientation:viewSize:", orientation, width, height) && (![MEMORY[0x1E69DF6F0] isPad] || !classCopy))
  {
    return 0;
  }

  return result;
}

+ (BOOL)shouldPlayerTabsUseVerticalLayout
{
  vui_currentSizeClass = [MEMORY[0x1E69DD2E8] vui_currentSizeClass];
  v3 = +[VUITVAppLauncher sharedInstance];
  appWindow = [v3 appWindow];
  [appWindow bounds];
  v6 = v5;
  v8 = v7;

  if (v6 < v8)
  {
    return 1;
  }

  result = [MEMORY[0x1E69DF6F0] isPad];
  if (vui_currentSizeClass >= 3)
  {
    return 0;
  }

  return result;
}

@end
@interface UIColor
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (NSArray)writableTypeIdentifiersForItemProvider;
+ (UIColor)allocWithZone:(_NSZone *)a3;
+ (UIColor)blackColor;
+ (UIColor)blueColor;
+ (UIColor)brownColor;
+ (UIColor)clearColor;
+ (UIColor)colorNamed:(NSString *)name inBundle:(NSBundle *)bundle compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (UIColor)colorWithCGColor:(CGColorRef)cgColor;
+ (UIColor)colorWithCIColor:(CIColor *)ciColor;
+ (UIColor)colorWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor)colorWithDynamicProvider:(void *)dynamicProvider;
+ (UIColor)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;
+ (UIColor)colorWithPatternImage:(UIImage *)image;
+ (UIColor)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
+ (UIColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 exposure:(double)a7;
+ (UIColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 linearExposure:(double)a7;
+ (UIColor)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
+ (UIColor)cyanColor;
+ (UIColor)darkGrayColor;
+ (UIColor)darkTextColor;
+ (UIColor)grayColor;
+ (UIColor)greenColor;
+ (UIColor)groupTableViewBackgroundColor;
+ (UIColor)labelColor;
+ (UIColor)lightGrayColor;
+ (UIColor)lightTextColor;
+ (UIColor)linkColor;
+ (UIColor)magentaColor;
+ (UIColor)opaqueSeparatorColor;
+ (UIColor)orangeColor;
+ (UIColor)placeholderTextColor;
+ (UIColor)purpleColor;
+ (UIColor)quaternaryLabelColor;
+ (UIColor)quaternarySystemFillColor;
+ (UIColor)redColor;
+ (UIColor)scrollViewTexturedBackgroundColor;
+ (UIColor)secondaryLabelColor;
+ (UIColor)secondarySystemBackgroundColor;
+ (UIColor)secondarySystemFillColor;
+ (UIColor)secondarySystemGroupedBackgroundColor;
+ (UIColor)separatorColor;
+ (UIColor)systemBackgroundColor;
+ (UIColor)systemBlueColor;
+ (UIColor)systemBrownColor;
+ (UIColor)systemCyanColor;
+ (UIColor)systemFillColor;
+ (UIColor)systemGray2Color;
+ (UIColor)systemGray3Color;
+ (UIColor)systemGray4Color;
+ (UIColor)systemGray5Color;
+ (UIColor)systemGray6Color;
+ (UIColor)systemGrayColor;
+ (UIColor)systemGreenColor;
+ (UIColor)systemGroupedBackgroundColor;
+ (UIColor)systemIndigoColor;
+ (UIColor)systemMintColor;
+ (UIColor)systemOrangeColor;
+ (UIColor)systemPinkColor;
+ (UIColor)systemPurpleColor;
+ (UIColor)systemRedColor;
+ (UIColor)systemTealColor;
+ (UIColor)systemYellowColor;
+ (UIColor)tertiaryLabelColor;
+ (UIColor)tertiarySystemBackgroundColor;
+ (UIColor)tertiarySystemFillColor;
+ (UIColor)tertiarySystemGroupedBackgroundColor;
+ (UIColor)tintColor;
+ (UIColor)underPageBackgroundColor;
+ (UIColor)viewFlipsideBackgroundColor;
+ (UIColor)whiteColor;
+ (UIColor)yellowColor;
+ (id)__halfTransparentBlackColor;
+ (id)__halfTransparentWhiteColor;
+ (id)_accessibilityButtonShapesBackgroundColorOnDark;
+ (id)_accessibilityButtonShapesBackgroundColorOnLight;
+ (id)_accessibilityButtonShapesDisabledBackgroundColorOnDark;
+ (id)_accessibilityButtonShapesNoBlendModeBackgroundColorOnDark;
+ (id)_accessibilityButtonShapesNoBlendModeBackgroundColorOnLight;
+ (id)_accessibilityDarkenedColorForColor:(id)a3;
+ (id)_accessibilityLightenedColorForColor:(id)a3;
+ (id)_alertControllerDimmingViewColor;
+ (id)_alertDefaultActionBackgroundColor;
+ (id)_alertDestructiveActionBackgroundColor;
+ (id)_appKeyColor;
+ (id)_appKeyColorOrDefaultTint;
+ (id)_barHairlineShadowColor;
+ (id)_barStyleBlackHairlineShadowColor;
+ (id)_carSystemFocusColor;
+ (id)_carSystemFocusLabelColor;
+ (id)_carSystemFocusPrimaryColor;
+ (id)_carSystemFocusSecondaryColor;
+ (id)_carSystemPrimaryColor;
+ (id)_carSystemQuaternaryColor;
+ (id)_carSystemSecondaryColor;
+ (id)_carSystemTertiaryColor;
+ (id)_colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 boost:(double)a7;
+ (id)_composedColorFromSourceColor:(void *)a3 destinationColor:(void *)a4 tintColor:(void *)a5 alpha:;
+ (id)_controlForegroundColor;
+ (id)_controlHighlightColor;
+ (id)_controlShadowColor;
+ (id)_controlVibrantBottomBackgroundColor;
+ (id)_controlVibrantTopBackgroundColor;
+ (id)_convertColorPickerColor:(id)a3 fromUserInterfaceStyle:(int64_t)a4 to:(int64_t)a5;
+ (id)_disabledColorForColor:(uint64_t)a1;
+ (id)_dynamicCatalogColorForNibEncodingWithName:(id)a3 genericColor:(id)a4;
+ (id)_dynamicColorWithColorsByTraitCollection:(id)a3;
+ (id)_dynamicTestColor;
+ (id)_externalSystemDarkGrayColor;
+ (id)_externalSystemExtraDarkGrayColor;
+ (id)_externalSystemGrayColor;
+ (id)_externalSystemMidGrayColor;
+ (id)_externalSystemSuperDarkGrayColor;
+ (id)_externalSystemWhiteColor;
+ (id)_focusedCarSystemColor:(id)a3;
+ (id)_grayColorForFontSize:(double)a3;
+ (id)_groupTableHeaderFooterTextColor;
+ (id)_legibleForegroundColorForBackgroundColor:(id)a3 traitCollection:(id)a4;
+ (id)_monochromeCellImageTintColor;
+ (id)_pageControlIndicatorColor;
+ (id)_pageControlPlatterIndicatorColor;
+ (id)_plainTableHeaderFooterTextColor;
+ (id)_searchBarBackgroundColor;
+ (id)_searchFieldDisabledBackgroundColor;
+ (id)_searchFieldPlaceholderTextClearButtonColor;
+ (id)_swiftColor;
+ (id)_swipedSidebarCellBackgroundColor;
+ (id)_switchOffColor;
+ (id)_switchOffImageColor;
+ (id)_systemBlueColor2;
+ (id)_systemChromeShadowColor;
+ (id)_systemColorForColor:(void *)a3 withName:;
+ (id)_systemColorSelectorTable;
+ (id)_systemColorWithName:(id)a3;
+ (id)_systemColorWithUnvalidatedName:(id)a3;
+ (id)_systemDestructiveTintColor;
+ (id)_systemInteractionTintColor;
+ (id)_systemMidGrayTintColor;
+ (id)_textFieldBackgroundColor;
+ (id)_textFieldBorderColor;
+ (id)_textFieldDisabledBackgroundColor;
+ (id)_textFieldDisabledBorderColor;
+ (id)_translucentPaperTextureColor;
+ (id)_tvAppKeyColorOrDefaultTint;
+ (id)_tvInterfaceStyleDarkContentColor;
+ (id)_tvInterfaceStyleLightContentColor;
+ (id)_unfocusedCarSystemColor:(id)a3;
+ (id)_webContentBackgroundColor;
+ (id)_windowBackgroundColor;
+ (id)externalSystemGreenColor;
+ (id)externalSystemRedColor;
+ (id)externalSystemTealColor;
+ (id)infoTextOverPinStripeTextColor;
+ (id)insertionPointColor;
+ (id)keyboardFocusIndicatorColor;
+ (id)noContentDarkGradientBackgroundColor;
+ (id)noContentLightGradientBackgroundColor;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
+ (id)pinStripeColor;
+ (id)sectionHeaderBackgroundColor;
+ (id)sectionHeaderBorderColor;
+ (id)sectionHeaderOpaqueBackgroundColor;
+ (id)sectionListBorderColor;
+ (id)selectionGrabberColor;
+ (id)selectionHighlightColor;
+ (id)systemBlackColor;
+ (id)systemDarkBlueColor;
+ (id)systemDarkExtraLightGrayColor;
+ (id)systemDarkExtraLightGrayTintColor;
+ (id)systemDarkGrayColor;
+ (id)systemDarkGrayTintColor;
+ (id)systemDarkGreenColor;
+ (id)systemDarkLightGrayColor;
+ (id)systemDarkLightGrayTintColor;
+ (id)systemDarkLightMidGrayColor;
+ (id)systemDarkLightMidGrayTintColor;
+ (id)systemDarkMidGrayColor;
+ (id)systemDarkMidGrayTintColor;
+ (id)systemDarkOrangeColor;
+ (id)systemDarkPinkColor;
+ (id)systemDarkPurpleColor;
+ (id)systemDarkRedColor;
+ (id)systemDarkTealColor;
+ (id)systemDarkYellowColor;
+ (id)systemExtraLightGrayColor;
+ (id)systemExtraLightGrayTintColor;
+ (id)systemGrayTintColor;
+ (id)systemLightGrayColor;
+ (id)systemLightGrayTintColor;
+ (id)systemLightMidGrayColor;
+ (id)systemLightMidGrayTintColor;
+ (id)systemMidGrayColor;
+ (id)systemMidGrayTintColor;
+ (id)systemWhiteColor;
+ (id)tableBackgroundColor;
+ (id)tableCellBackgroundColor;
+ (id)tableCellBlueTextColor;
+ (id)tableCellDisabledBackgroundColor;
+ (id)tableCellFocusedBackgroundColor;
+ (id)tableCellGrayTextColor;
+ (id)tableCellGroupedBackgroundColor;
+ (id)tableCellGroupedBackgroundColorLegacyWhite;
+ (id)tableCellGroupedSelectedBackgroundColor;
+ (id)tableCellHighlightedBackgroundColor;
+ (id)tableCellPlainBackgroundColor;
+ (id)tableCellPlainSelectedBackgroundColor;
+ (id)tableCellValue1BlueColor;
+ (id)tableCellValue2BlueColor;
+ (id)tableCellbackgroundColorCarPlay;
+ (id)tableGroupedSeparatorLightColor;
+ (id)tableGroupedTopShadowColor;
+ (id)tablePlainHeaderFooterBackgroundColor;
+ (id)tablePlainHeaderFooterFloatingBackgroundColor;
+ (id)tableSelectionColor;
+ (id)tableSelectionGradientEndColor;
+ (id)tableSelectionGradientStartColor;
+ (id)tableSeparatorColor;
+ (id)tableSeparatorDarkColor;
+ (id)tableSeparatorLightColor;
+ (id)tableShadowColor;
+ (id)textFieldAtomPurpleColor;
+ (id)textGrammarIndicatorColor;
+ (void)initialize;
- (BOOL)_isSimilarToColor:(id)a3 withinPercentage:(double)a4;
- (CGColor)cgColor;
- (NSString)_accessibilityNameWithLuma;
- (NSString)accessibilityName;
- (UIColor)colorWithProminence:(int64_t)a3;
- (UIColor)initWithCGColor:(CGColorRef)cgColor;
- (UIColor)initWithCIColor:(CIColor *)ciColor;
- (UIColor)initWithCoder:(id)a3;
- (UIColor)initWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
- (UIColor)initWithDynamicProvider:(void *)dynamicProvider;
- (UIColor)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha;
- (UIColor)initWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
- (UIColor)initWithPatternImage:(UIImage *)image;
- (UIColor)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha;
- (UIColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 exposure:(double)a7;
- (UIColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 linearExposure:(double)a7;
- (UIColor)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
- (UIColor)standardDynamicRangeColor;
- (double)_colorDifferenceFromColor:(id)a3;
- (double)_contentHeadroom;
- (double)_distanceFrom:(id)a3;
- (double)_luminance;
- (double)_luminanceDifferenceFromColor:(id)a3;
- (double)linearExposure;
- (id)_colorBlendedWithColor:(id)a3 compositingFilter:(id)a4;
- (id)_colorBlendedWithColors:(id)a3;
- (id)_debugName;
- (id)_initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 boost:(double)a7;
- (id)_inverseColor;
- (id)_resolvedBackgroundColorWithTraitCollection:(void *)a1;
- (id)_resolvedMaterialWithTraitCollection:(id)a3;
- (id)colorByApplyingContentHeadroom:(double)a3;
- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4;
- (id)styleString;
- (void)_setSystemColorName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIColor

+ (id)_appKeyColorOrDefaultTint
{
  objc_opt_self();
  v0 = +[UIColor _appKeyColor];
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = +[UIColor systemBlueColor];
  }

  v3 = v2;

  return v3;
}

+ (id)_appKeyColor
{
  objc_opt_self();
  if (qword_1ED49B5B0 != -1)
  {
    dispatch_once(&qword_1ED49B5B0, &__block_literal_global_1367_0);
  }

  v0 = qword_1ED49B5A8;

  return v0;
}

+ (UIColor)systemBlueColor
{
  if (qword_1ED49B9B0 != -1)
  {
    dispatch_once(&qword_1ED49B9B0, &__block_literal_global_1949);
  }

  v3 = qword_1ED49B9A8;

  return v3;
}

+ (UIColor)clearColor
{
  if (qword_1ED49B388 != -1)
  {
    dispatch_once(&qword_1ED49B388, &__block_literal_global_1250);
  }

  v3 = qword_1ED49B380;

  return v3;
}

+ (UIColor)blackColor
{
  if (qword_1ED49B338 != -1)
  {
    dispatch_once(&qword_1ED49B338, &__block_literal_global_1234);
  }

  v3 = qword_1ED49B330;

  return v3;
}

+ (UIColor)whiteColor
{
  if (qword_1ED49B368 != -1)
  {
    dispatch_once(&qword_1ED49B368, &__block_literal_global_1244_0);
  }

  v3 = qword_1ED49B360;

  return v3;
}

+ (UIColor)tintColor
{
  if (qword_1ED49B8F0 != -1)
  {
    dispatch_once(&qword_1ED49B8F0, &__block_literal_global_1527);
  }

  v3 = qword_1ED49B8E8;

  return v3;
}

+ (UIColor)tertiaryLabelColor
{
  if (qword_1ED49BA30 != -1)
  {
    dispatch_once(&qword_1ED49BA30, &__block_literal_global_1973);
  }

  v3 = qword_1ED49BA28;

  return v3;
}

+ (UIColor)systemRedColor
{
  if (qword_1ED49B940 != -1)
  {
    dispatch_once(&qword_1ED49B940, &__block_literal_global_1927);
  }

  v3 = qword_1ED49B938;

  return v3;
}

+ (UIColor)labelColor
{
  if (qword_1ED49BA10 != -1)
  {
    dispatch_once(&qword_1ED49BA10, &__block_literal_global_1967);
  }

  v3 = qword_1ED49BA08;

  return v3;
}

+ (id)systemWhiteColor
{
  if (qword_1ED49B5F0 != -1)
  {
    dispatch_once(&qword_1ED49B5F0, &__block_literal_global_1376);
  }

  v3 = qword_1ED49B5E8;

  return v3;
}

+ (UIColor)systemBackgroundColor
{
  if (qword_1ED49BB00 != -1)
  {
    dispatch_once(&qword_1ED49BB00, &__block_literal_global_2013);
  }

  v3 = qword_1ED49BAF8;

  return v3;
}

+ (id)__halfTransparentBlackColor
{
  if (qword_1ED49B528 != -1)
  {
    dispatch_once(&qword_1ED49B528, &__block_literal_global_1329);
  }

  v3 = qword_1ED49B520;

  return v3;
}

+ (UIColor)systemGreenColor
{
  if (qword_1ED49B970 != -1)
  {
    dispatch_once(&qword_1ED49B970, &__block_literal_global_1937);
  }

  v3 = qword_1ED49B968;

  return v3;
}

+ (id)__halfTransparentWhiteColor
{
  if (qword_1ED49B538 != -1)
  {
    dispatch_once(&qword_1ED49B538, &__block_literal_global_1331);
  }

  v3 = qword_1ED49B530;

  return v3;
}

+ (id)selectionGrabberColor
{
  if (qword_1ED49B580 != -1)
  {
    dispatch_once(&qword_1ED49B580, &__block_literal_global_1358);
  }

  v3 = qword_1ED49B578;

  return v3;
}

+ (id)insertionPointColor
{
  if (qword_1ED49B570 != -1)
  {
    dispatch_once(&qword_1ED49B570, &__block_literal_global_1355_0);
  }

  v3 = qword_1ED49B568;

  return v3;
}

+ (id)selectionHighlightColor
{
  if (qword_1ED49B560 != -1)
  {
    dispatch_once(&qword_1ED49B560, &__block_literal_global_1352);
  }

  v3 = qword_1ED49B558;

  return v3;
}

void __43__UIColor__UIInterfaceAPI__systemBlueColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemBlueColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:7];
  v2 = qword_1ED49B9A8;
  qword_1ED49B9A8 = v1;
}

void __23__UIColor__appKeyColor__block_invoke()
{
  v0 = _UIKitAppKeyColorAssetName();
  if (v0)
  {
    v3 = v0;
    v1 = [UIColor colorNamed:v0];
    v2 = qword_1ED49B5A8;
    qword_1ED49B5A8 = v1;

    v0 = v3;
  }
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = UIColorPlaceholder();
  }
}

void __20__UIColor_tintColor__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED49B8E8;
  qword_1ED49B8E8 = v0;
}

void __38__UIColor__UIInterfaceAPI__labelColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"labelColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:15];
  v2 = qword_1ED49BA08;
  qword_1ED49BA08 = v1;
}

void __21__UIColor_clearColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.0];
  v1 = qword_1ED49B380;
  qword_1ED49B380 = v0;

  v2 = qword_1ED49B380;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"clearColor"];
  [v2 _setSystemColorName:v3];
}

void __49__UIColor__UIInterfaceAPI__systemBackgroundColor__block_invoke()
{
  v16[5] = *MEMORY[0x1E69E9840];
  v14 = [UIDynamicSystemColor alloc];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemBackgroundColor"];
  v12 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v15[0] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v16[0] = v0;
  v1 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v15[1] = v1;
  v2 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v16[1] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v15[2] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v16[2] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v15[3] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v16[3] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v15[4] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v16[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v10 = [(UIDynamicSystemColor *)v14 initWithName:v13 colorsByThemeKey:v9];
  v11 = qword_1ED49BAF8;
  qword_1ED49BAF8 = v10;
}

void __46__UIColor__UIInterfaceAPI__tertiaryLabelColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tertiaryLabelColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:17];
  v2 = qword_1ED49BA28;
  qword_1ED49BA28 = v1;
}

+ (UIColor)secondaryLabelColor
{
  if (qword_1ED49BA20 != -1)
  {
    dispatch_once(&qword_1ED49BA20, &__block_literal_global_1970);
  }

  v3 = qword_1ED49BA18;

  return v3;
}

void __47__UIColor__UIInterfaceAPI__secondaryLabelColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"secondaryLabelColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:16];
  v2 = qword_1ED49BA18;
  qword_1ED49BA18 = v1;
}

void __21__UIColor_whiteColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v1 = qword_1ED49B360;
  qword_1ED49B360 = v0;

  v2 = qword_1ED49B360;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"whiteColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_alertControllerDimmingViewColor
{
  if (qword_1ED49BC90 != -1)
  {
    dispatch_once(&qword_1ED49BC90, &__block_literal_global_2086);
  }

  v3 = qword_1ED49BC88;

  return v3;
}

void __59__UIColor__InProgressSPI___alertControllerDimmingViewColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_alertControllerDimmingViewColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.2];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.48];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BC88;
  qword_1ED49BC88 = v7;
}

+ (id)_systemChromeShadowColor
{
  if (qword_1ED49BCA0 != -1)
  {
    dispatch_once(&qword_1ED49BCA0, &__block_literal_global_2089);
  }

  v3 = qword_1ED49BC98;

  return v3;
}

void __51__UIColor__InProgressSPI___systemChromeShadowColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_systemChromeShadowColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.3];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.15];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BC98;
  qword_1ED49BC98 = v7;
}

void __21__UIColor_blackColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v1 = qword_1ED49B330;
  qword_1ED49B330 = v0;

  v2 = qword_1ED49B330;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"blackColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)tertiarySystemFillColor
{
  if (qword_1ED49BBA0 != -1)
  {
    dispatch_once(&qword_1ED49BBA0, &__block_literal_global_2041);
  }

  v3 = qword_1ED49BB98;

  return v3;
}

void __50__UIColor__InProgressSPI__tertiarySystemFillColor__block_invoke()
{
  v30[12] = *MEMORY[0x1E69E9840];
  v28 = [UIDynamicSystemColor alloc];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tertiarySystemFillColor"];
  v26 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v29[0] = v26;
  v25 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.12];
  v30[0] = v25;
  v24 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v29[1] = v24;
  v23 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.2];
  v30[1] = v23;
  v22 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v29[2] = v22;
  v21 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.24];
  v30[2] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v29[3] = v20;
  v19 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.32];
  v30[3] = v19;
  v18 = _UIThemeKeyFromTraitValues(2, 0, 0, 0, 0, 0);
  v29[4] = v18;
  v17 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.12];
  v30[4] = v17;
  v16 = _UIThemeKeyFromTraitValues(2, 0, 1, 0, 0, 0);
  v29[5] = v16;
  v15 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.12];
  v30[5] = v15;
  v14 = _UIThemeKeyFromTraitValues(2, 2, 0, 0, 0, 0);
  v29[6] = v14;
  v13 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.12];
  v30[6] = v13;
  v12 = _UIThemeKeyFromTraitValues(2, 2, 1, 0, 0, 0);
  v29[7] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.12];
  v30[7] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v29[8] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.14];
  v30[8] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v29[9] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.16];
  v30[9] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v29[10] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.08];
  v30[10] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v29[11] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.12];
  v30[11] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:12];

  v10 = [(UIDynamicSystemColor *)v28 initWithName:v27 colorsByThemeKey:v9];
  v11 = qword_1ED49BB98;
  qword_1ED49BB98 = v10;
}

+ (UIColor)opaqueSeparatorColor
{
  if (qword_1ED49BAF0 != -1)
  {
    dispatch_once(&qword_1ED49BAF0, &__block_literal_global_2010);
  }

  v3 = qword_1ED49BAE8;

  return v3;
}

void __48__UIColor__UIInterfaceAPI__opaqueSeparatorColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"opaqueSeparatorColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.776470588 green:0.776470588 blue:0.784313725 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.219607843 green:0.219607843 blue:0.22745098 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BAE8;
  qword_1ED49BAE8 = v7;
}

+ (UIColor)redColor
{
  if (qword_1ED49B398 != -1)
  {
    dispatch_once(&qword_1ED49B398, &__block_literal_global_1253);
  }

  v3 = qword_1ED49B390;

  return v3;
}

+ (id)_systemColorSelectorTable
{
  if (qword_1ED49B318 != -1)
  {
    dispatch_once(&qword_1ED49B318, &__block_literal_global_304);
  }

  v3 = qword_1ED49B310;

  return v3;
}

+ (UIColor)systemGrayColor
{
  if (qword_1ED49B9F0 != -1)
  {
    dispatch_once(&qword_1ED49B9F0, &__block_literal_global_1961);
  }

  v3 = qword_1ED49B9E8;

  return v3;
}

+ (UIColor)systemOrangeColor
{
  if (qword_1ED49B950 != -1)
  {
    dispatch_once(&qword_1ED49B950, &__block_literal_global_1931);
  }

  v3 = qword_1ED49B948;

  return v3;
}

void __45__UIColor__UIInterfaceAPI__systemOrangeColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemOrangeColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:1];
  v2 = qword_1ED49B948;
  qword_1ED49B948 = v1;
}

+ (UIColor)systemGroupedBackgroundColor
{
  if (qword_1ED49BB30 != -1)
  {
    dispatch_once(&qword_1ED49BB30, &__block_literal_global_2022);
  }

  v3 = qword_1ED49BB28;

  return v3;
}

void __56__UIColor__UIInterfaceAPI__systemGroupedBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGroupedBackgroundColor"];
  v1 = _colorsByThemeKeysystemGroupedBackgroundColor();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BB28;
  qword_1ED49BB28 = v2;
}

+ (UIColor)separatorColor
{
  if (qword_1ED49BAE0 != -1)
  {
    dispatch_once(&qword_1ED49BAE0, &__block_literal_global_2007);
  }

  v3 = qword_1ED49BAD8;

  return v3;
}

void __42__UIColor__UIInterfaceAPI__separatorColor__block_invoke()
{
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"separatorColor"];
  if (v0)
  {
    _colorsByThemeKeySolariumseparatorColor();
  }

  else
  {
    _colorsByThemeKeyPreSolariumseparatorColor();
  }
  v2 = ;
  v3 = [(UIDynamicSystemColor *)v1 initWithName:v5 colorsByThemeKey:v2];
  v4 = qword_1ED49BAD8;
  qword_1ED49BAD8 = v3;
}

void __43__UIColor__UIInterfaceAPI__systemPinkColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemPinkColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:10];
  v2 = qword_1ED49B9D8;
  qword_1ED49B9D8 = v1;
}

+ (UIColor)systemPinkColor
{
  if (qword_1ED49B9E0 != -1)
  {
    dispatch_once(&qword_1ED49B9E0, &__block_literal_global_1958);
  }

  v3 = qword_1ED49B9D8;

  return v3;
}

void __42__UIColor__UIInterfaceAPI__systemRedColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemRedColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:0];
  v2 = qword_1ED49B938;
  qword_1ED49B938 = v1;
}

void __48__UIColor__UIInterfaceAPI__quaternaryLabelColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quaternaryLabelColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:18];
  v2 = qword_1ED49BA38;
  qword_1ED49BA38 = v1;
}

+ (UIColor)quaternaryLabelColor
{
  if (qword_1ED49BA40 != -1)
  {
    dispatch_once(&qword_1ED49BA40, &__block_literal_global_1976);
  }

  v3 = qword_1ED49BA38;

  return v3;
}

+ (UIColor)systemFillColor
{
  if (qword_1ED49BB80 != -1)
  {
    dispatch_once(&qword_1ED49BB80, &__block_literal_global_2035);
  }

  v3 = qword_1ED49BB78;

  return v3;
}

void __42__UIColor__InProgressSPI__systemFillColor__block_invoke()
{
  v30[12] = *MEMORY[0x1E69E9840];
  v28 = [UIDynamicSystemColor alloc];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemFillColor"];
  v26 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v29[0] = v26;
  v25 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.2];
  v30[0] = v25;
  v24 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v29[1] = v24;
  v23 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.28];
  v30[1] = v23;
  v22 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v29[2] = v22;
  v21 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.36];
  v30[2] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v29[3] = v20;
  v19 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.44];
  v30[3] = v19;
  v18 = _UIThemeKeyFromTraitValues(2, 0, 0, 0, 0, 0);
  v29[4] = v18;
  v17 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.2];
  v30[4] = v17;
  v16 = _UIThemeKeyFromTraitValues(2, 0, 1, 0, 0, 0);
  v29[5] = v16;
  v15 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.2];
  v30[5] = v15;
  v14 = _UIThemeKeyFromTraitValues(2, 2, 0, 0, 0, 0);
  v29[6] = v14;
  v13 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.2];
  v30[6] = v13;
  v12 = _UIThemeKeyFromTraitValues(2, 2, 1, 0, 0, 0);
  v29[7] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.2];
  v30[7] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v29[8] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.56];
  v30[8] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v29[9] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.58];
  v30[9] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v29[10] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.56];
  v30[10] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v29[11] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.58];
  v30[11] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:12];

  v10 = [(UIDynamicSystemColor *)v28 initWithName:v27 colorsByThemeKey:v9];
  v11 = qword_1ED49BB78;
  qword_1ED49BB78 = v10;
}

void __30__UIColor_insertionPointColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.26 green:0.42 blue:0.95 alpha:1.0];
  v1 = qword_1ED49B568;
  qword_1ED49B568 = v0;

  v2 = qword_1ED49B568;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"insertionPointColor"];
  [v2 _setSystemColorName:v3];
}

void __32__UIColor_selectionGrabberColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.078 green:0.435 blue:0.882 alpha:1.0];
  v1 = qword_1ED49B578;
  qword_1ED49B578 = v0;

  v2 = qword_1ED49B578;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"selectionGrabberColor"];
  [v2 _setSystemColorName:v3];
}

void __34__UIColor_selectionHighlightColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.33 blue:0.65 alpha:0.2];
  v1 = qword_1ED49B558;
  qword_1ED49B558 = v0;

  v2 = qword_1ED49B558;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"selectionHighlightColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_textFieldBorderColor
{
  if (qword_1ED49BCD0 != -1)
  {
    dispatch_once(&qword_1ED49BCD0, &__block_literal_global_2098);
  }

  v3 = qword_1ED49BCC8;

  return v3;
}

void __48__UIColor__InProgressSPI___textFieldBorderColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_textFieldBorderColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.2];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.2];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BCC8;
  qword_1ED49BCC8 = v7;
}

void __36__UIColor__systemColorSelectorTable__block_invoke()
{
  v3 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:0];
  v0 = [MEMORY[0x1E696AE10] pointerFunctionsWithOptions:258];
  v1 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyPointerFunctions:v3 valuePointerFunctions:v0 capacity:64];
  v2 = qword_1ED49B310;
  qword_1ED49B310 = v1;

  NSMapInsert(qword_1ED49B310, @"tintColor", sel_tintColor);
  NSMapInsert(qword_1ED49B310, @"blackColor", sel_blackColor);
  NSMapInsert(qword_1ED49B310, @"darkGrayColor", sel_darkGrayColor);
  NSMapInsert(qword_1ED49B310, @"lightGrayColor", sel_lightGrayColor);
  NSMapInsert(qword_1ED49B310, @"whiteColor", sel_whiteColor);
  NSMapInsert(qword_1ED49B310, @"grayColor", sel_grayColor);
  NSMapInsert(qword_1ED49B310, @"clearColor", sel_clearColor);
  NSMapInsert(qword_1ED49B310, @"redColor", sel_redColor);
  NSMapInsert(qword_1ED49B310, @"greenColor", sel_greenColor);
  NSMapInsert(qword_1ED49B310, @"blueColor", sel_blueColor);
  NSMapInsert(qword_1ED49B310, @"cyanColor", sel_cyanColor);
  NSMapInsert(qword_1ED49B310, @"yellowColor", sel_yellowColor);
  NSMapInsert(qword_1ED49B310, @"magentaColor", sel_magentaColor);
  NSMapInsert(qword_1ED49B310, @"orangeColor", sel_orangeColor);
  NSMapInsert(qword_1ED49B310, @"purpleColor", sel_purpleColor);
  NSMapInsert(qword_1ED49B310, @"brownColor", sel_brownColor);
  NSMapInsert(qword_1ED49B310, @"tableBackgroundColor", sel_tableBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellPlainBackgroundColor", sel_tableCellPlainBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellGroupedBackgroundColorLegacyWhite", sel_tableCellGroupedBackgroundColorLegacyWhite);
  NSMapInsert(qword_1ED49B310, @"tableCellBackgroundColor", sel_tableCellBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellbackgroundColorCarPlay", sel_tableCellbackgroundColorCarPlay);
  NSMapInsert(qword_1ED49B310, @"tablePlainHeaderFooterBackgroundColor", sel_tablePlainHeaderFooterBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tablePlainHeaderFooterFloatingBackgroundColor", sel_tablePlainHeaderFooterFloatingBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableSelectionColor", sel_tableSelectionColor);
  NSMapInsert(qword_1ED49B310, @"tableSelectionGradientStartColor", sel_tableSelectionGradientStartColor);
  NSMapInsert(qword_1ED49B310, @"tableSelectionGradientEndColor", sel_tableSelectionGradientEndColor);
  NSMapInsert(qword_1ED49B310, @"tableShadowColor", sel_tableShadowColor);
  NSMapInsert(qword_1ED49B310, @"tableGroupedTopShadowColor", sel_tableGroupedTopShadowColor);
  NSMapInsert(qword_1ED49B310, @"sectionListBorderColor", sel_sectionListBorderColor);
  NSMapInsert(qword_1ED49B310, @"sectionHeaderBackgroundColor", sel_sectionHeaderBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"sectionHeaderOpaqueBackgroundColor", sel_sectionHeaderOpaqueBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"sectionHeaderBorderColor", sel_sectionHeaderBorderColor);
  NSMapInsert(qword_1ED49B310, @"tableCellValue1BlueColor", sel_tableCellValue1BlueColor);
  NSMapInsert(qword_1ED49B310, @"tableCellValue2BlueColor", sel_tableCellValue2BlueColor);
  NSMapInsert(qword_1ED49B310, @"tableCellGrayTextColor", sel_tableCellGrayTextColor);
  NSMapInsert(qword_1ED49B310, @"textFieldAtomPurpleColor", sel_textFieldAtomPurpleColor);
  NSMapInsert(qword_1ED49B310, @"infoTextOverPinStripeTextColor", sel_infoTextOverPinStripeTextColor);
  NSMapInsert(qword_1ED49B310, @"tableCellDefaultSelectionTintColor", sel_tableCellDefaultSelectionTintColor);
  NSMapInsert(qword_1ED49B310, @"tableCellPlainSelectedBackgroundColor", sel_tableCellPlainSelectedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellGroupedSelectedBackgroundColor", sel_tableCellGroupedSelectedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellHighlightedBackgroundColor", sel_tableCellHighlightedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellFocusedBackgroundColor", sel_tableCellFocusedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellDisabledBackgroundColor", sel_tableCellDisabledBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"__halfTransparentBlackColor", sel___halfTransparentBlackColor);
  NSMapInsert(qword_1ED49B310, @"__halfTransparentWhiteColor", sel___halfTransparentWhiteColor);
  NSMapInsert(qword_1ED49B310, @"_windowBackgroundColor", sel__windowBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_alertDefaultActionBackgroundColor", sel__alertDefaultActionBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_alertDestructiveActionBackgroundColor", sel__alertDestructiveActionBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"pinStripeColor", sel_pinStripeColor);
  NSMapInsert(qword_1ED49B310, @"selectionHighlightColor", sel_selectionHighlightColor);
  NSMapInsert(qword_1ED49B310, @"insertionPointColor", sel_insertionPointColor);
  NSMapInsert(qword_1ED49B310, @"selectionGrabberColor", sel_selectionGrabberColor);
  NSMapInsert(qword_1ED49B310, @"lightTextColor", sel_lightTextColor);
  NSMapInsert(qword_1ED49B310, @"darkTextColor", sel_darkTextColor);
  NSMapInsert(qword_1ED49B310, @"_markedTextBackgroundColor", sel__markedTextBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"systemRedColor", sel_systemRedColor);
  NSMapInsert(qword_1ED49B310, @"systemGreenColor", sel_systemGreenColor);
  NSMapInsert(qword_1ED49B310, @"systemBlueColor", sel_systemBlueColor);
  NSMapInsert(qword_1ED49B310, @"systemOrangeColor", sel_systemOrangeColor);
  NSMapInsert(qword_1ED49B310, @"systemYellowColor", sel_systemYellowColor);
  NSMapInsert(qword_1ED49B310, @"systemMintColor", sel_systemMintColor);
  NSMapInsert(qword_1ED49B310, @"systemCyanColor", sel_systemCyanColor);
  NSMapInsert(qword_1ED49B310, @"systemTealColor", sel_systemTealColor);
  NSMapInsert(qword_1ED49B310, @"systemPinkColor", sel_systemPinkColor);
  NSMapInsert(qword_1ED49B310, @"systemGrayColor", sel_systemGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemMidGrayColor", sel_systemMidGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemPurpleColor", sel_systemPurpleColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkRedColor", sel_systemDarkRedColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkGreenColor", sel_systemDarkGreenColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkBlueColor", sel_systemDarkBlueColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkOrangeColor", sel_systemDarkOrangeColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkYellowColor", sel_systemDarkYellowColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkTealColor", sel_systemDarkTealColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkPinkColor", sel_systemDarkPinkColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkPurpleColor", sel_systemDarkPurpleColor);
  NSMapInsert(qword_1ED49B310, @"systemWhiteColor", sel_systemWhiteColor);
  NSMapInsert(qword_1ED49B310, @"systemExtraLightGrayColor", sel_systemExtraLightGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemLightGrayColor", sel_systemLightGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemLightMidGrayColor", sel_systemLightMidGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemBlackColor", sel_systemBlackColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkExtraLightGrayColor", sel_systemDarkExtraLightGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkLightGrayColor", sel_systemDarkLightGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkLightMidGrayColor", sel_systemDarkLightMidGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkMidGrayColor", sel_systemDarkMidGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkGrayColor", sel_systemDarkGrayColor);
  NSMapInsert(qword_1ED49B310, @"systemExtraLightGrayTintColor", sel_systemExtraLightGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemLightGrayTintColor", sel_systemLightGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemLightMidGrayTintColor", sel_systemLightMidGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemMidGrayTintColor", sel_systemMidGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemGrayTintColor", sel_systemGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkExtraLightGrayTintColor", sel_systemDarkExtraLightGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkLightGrayTintColor", sel_systemDarkLightGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkLightMidGrayTintColor", sel_systemDarkLightMidGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkMidGrayTintColor", sel_systemDarkMidGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"systemDarkGrayTintColor", sel_systemDarkGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"textGrammarIndicatorColor", sel_textGrammarIndicatorColor);
  NSMapInsert(qword_1ED49B310, @"externalSystemTealColor", sel_externalSystemTealColor);
  NSMapInsert(qword_1ED49B310, @"externalSystemRedColor", sel_externalSystemRedColor);
  NSMapInsert(qword_1ED49B310, @"externalSystemGreenColor", sel_externalSystemGreenColor);
  NSMapInsert(qword_1ED49B310, @"_systemInteractionTintColor", sel__systemInteractionTintColor);
  NSMapInsert(qword_1ED49B310, @"_systemDestructiveTintColor", sel__systemDestructiveTintColor);
  NSMapInsert(qword_1ED49B310, @"_barHairlineShadowColor", sel__barHairlineShadowColor);
  NSMapInsert(qword_1ED49B310, @"_barStyleBlackHairlineShadowColor", sel__barStyleBlackHairlineShadowColor);
  NSMapInsert(qword_1ED49B310, @"_systemMidGrayTintColor", sel__systemMidGrayTintColor);
  NSMapInsert(qword_1ED49B310, @"_externalSystemWhiteColor", sel__externalSystemWhiteColor);
  NSMapInsert(qword_1ED49B310, @"_externalSystemMidGrayColor", sel__externalSystemMidGrayColor);
  NSMapInsert(qword_1ED49B310, @"_externalSystemGrayColor", sel__externalSystemGrayColor);
  NSMapInsert(qword_1ED49B310, @"_externalSystemDarkGrayColor", sel__externalSystemDarkGrayColor);
  NSMapInsert(qword_1ED49B310, @"_externalSystemExtraDarkGrayColor", sel__externalSystemExtraDarkGrayColor);
  NSMapInsert(qword_1ED49B310, @"_externalSystemSuperDarkGrayColor", sel__externalSystemSuperDarkGrayColor);
  NSMapInsert(qword_1ED49B310, @"_accessibilityButtonShapesBackgroundColorOnLight", sel__accessibilityButtonShapesBackgroundColorOnLight);
  NSMapInsert(qword_1ED49B310, @"_accessibilityButtonShapesBackgroundColorOnDark", sel__accessibilityButtonShapesBackgroundColorOnDark);
  NSMapInsert(qword_1ED49B310, @"_accessibilityButtonShapesDisabledBackgroundColorOnDark", sel__accessibilityButtonShapesDisabledBackgroundColorOnDark);
  NSMapInsert(qword_1ED49B310, @"_accessibilityButtonShapesNoBlendModeBackgroundColorOnLight", sel__accessibilityButtonShapesNoBlendModeBackgroundColorOnLight);
  NSMapInsert(qword_1ED49B310, @"_accessibilityButtonShapesNoBlendModeBackgroundColorOnDark", sel__accessibilityButtonShapesNoBlendModeBackgroundColorOnDark);
  NSMapInsert(qword_1ED49B310, @"_controlForegroundColor", sel__controlForegroundColor);
  NSMapInsert(qword_1ED49B310, @"_controlHighlightColor", sel__controlHighlightColor);
  NSMapInsert(qword_1ED49B310, @"_controlShadowColor", sel__controlShadowColor);
  NSMapInsert(qword_1ED49B310, @"_controlVibrantTopBackgroundColor", sel__controlVibrantTopBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_controlVibrantBottomBackgroundColor", sel__controlVibrantBottomBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_swiftColor", sel__swiftColor);
  NSMapInsert(qword_1ED49B310, @"_translucentPaperTextureColor", sel__translucentPaperTextureColor);
  NSMapInsert(qword_1ED49B310, @"_webContentBackgroundColor", sel__webContentBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableCellBlueTextColor", sel_tableCellBlueTextColor);
  NSMapInsert(qword_1ED49B310, @"tableCellGroupedBackgroundColor", sel_tableCellGroupedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tableGroupedSeparatorLightColor", sel_tableGroupedSeparatorLightColor);
  NSMapInsert(qword_1ED49B310, @"tableSeparatorDarkColor", sel_tableSeparatorDarkColor);
  NSMapInsert(qword_1ED49B310, @"tableSeparatorLightColor", sel_tableSeparatorLightColor);
  NSMapInsert(qword_1ED49B310, @"groupTableViewBackgroundColor", sel_groupTableViewBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"viewFlipsideBackgroundColor", sel_viewFlipsideBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"underPageBackgroundColor", sel_underPageBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"scrollViewTexturedBackgroundColor", sel_scrollViewTexturedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"noContentLightGradientBackgroundColor", sel_noContentLightGradientBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"noContentDarkGradientBackgroundColor", sel_noContentDarkGradientBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"systemIndigoColor", sel_systemIndigoColor);
  NSMapInsert(qword_1ED49B310, @"systemBrownColor", sel_systemBrownColor);
  NSMapInsert(qword_1ED49B310, @"labelColor", sel_labelColor);
  NSMapInsert(qword_1ED49B310, @"secondaryLabelColor", sel_secondaryLabelColor);
  NSMapInsert(qword_1ED49B310, @"tertiaryLabelColor", sel_tertiaryLabelColor);
  NSMapInsert(qword_1ED49B310, @"quaternaryLabelColor", sel_quaternaryLabelColor);
  NSMapInsert(qword_1ED49B310, @"linkColor", sel_linkColor);
  NSMapInsert(qword_1ED49B310, @"placeholderTextColor", sel_placeholderTextColor);
  NSMapInsert(qword_1ED49B310, @"separatorColor", sel_separatorColor);
  NSMapInsert(qword_1ED49B310, @"opaqueSeparatorColor", sel_opaqueSeparatorColor);
  NSMapInsert(qword_1ED49B310, @"systemBackgroundColor", sel_systemBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"secondarySystemBackgroundColor", sel_secondarySystemBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tertiarySystemBackgroundColor", sel_tertiarySystemBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"systemGroupedBackgroundColor", sel_systemGroupedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"secondarySystemGroupedBackgroundColor", sel_secondarySystemGroupedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"tertiarySystemGroupedBackgroundColor", sel_tertiarySystemGroupedBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"systemFillColor", sel_systemFillColor);
  NSMapInsert(qword_1ED49B310, @"secondarySystemFillColor", sel_secondarySystemFillColor);
  NSMapInsert(qword_1ED49B310, @"tertiarySystemFillColor", sel_tertiarySystemFillColor);
  NSMapInsert(qword_1ED49B310, @"quaternarySystemFillColor", sel_quaternarySystemFillColor);
  NSMapInsert(qword_1ED49B310, @"systemGray2Color", sel_systemGray2Color);
  NSMapInsert(qword_1ED49B310, @"systemGray3Color", sel_systemGray3Color);
  NSMapInsert(qword_1ED49B310, @"systemGray4Color", sel_systemGray4Color);
  NSMapInsert(qword_1ED49B310, @"systemGray5Color", sel_systemGray5Color);
  NSMapInsert(qword_1ED49B310, @"systemGray6Color", sel_systemGray6Color);
  NSMapInsert(qword_1ED49B310, @"_dynamicTestColor", sel__dynamicTestColor);
  NSMapInsert(qword_1ED49B310, @"_textFieldBackgroundColor", sel__textFieldBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_textFieldDisabledBackgroundColor", sel__textFieldDisabledBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_textFieldBorderColor", sel__textFieldBorderColor);
  NSMapInsert(qword_1ED49B310, @"_textFieldDisabledBorderColor", sel__textFieldDisabledBorderColor);
  NSMapInsert(qword_1ED49B310, @"tableSeparatorColor", sel_tableSeparatorColor);
  NSMapInsert(qword_1ED49B310, @"_plainTableHeaderFooterTextColor", sel__plainTableHeaderFooterTextColor);
  NSMapInsert(qword_1ED49B310, @"_groupTableHeaderFooterTextColor", sel__groupTableHeaderFooterTextColor);
  NSMapInsert(qword_1ED49B310, @"_swipedSidebarCellBackgroundColor", sel__swipedSidebarCellBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_switchOffColor", sel__switchOffColor);
  NSMapInsert(qword_1ED49B310, @"_switchOffImageColor", sel__switchOffImageColor);
  NSMapInsert(qword_1ED49B310, @"_searchFieldDisabledBackgroundColor", sel__searchFieldDisabledBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_pageControlIndicatorColor", sel__pageControlIndicatorColor);
  NSMapInsert(qword_1ED49B310, @"_pageControlPlatterIndicatorColor", sel__pageControlPlatterIndicatorColor);
  NSMapInsert(qword_1ED49B310, @"_searchFieldPlaceholderTextClearButtonColor", sel__searchFieldPlaceholderTextClearButtonColor);
  NSMapInsert(qword_1ED49B310, @"_searchBarBackgroundColor", sel__searchBarBackgroundColor);
  NSMapInsert(qword_1ED49B310, @"_alertControllerDimmingViewColor", sel__alertControllerDimmingViewColor);
  NSMapInsert(qword_1ED49B310, @"_systemChromeShadowColor", sel__systemChromeShadowColor);
  NSMapInsert(qword_1ED49B310, @"_splitViewBorderColor", sel__splitViewBorderColor);
  NSMapInsert(qword_1ED49B310, @"_systemBlueColor2", sel__systemBlueColor2);
  NSMapInsert(qword_1ED49B310, @"_monochromeCellImageTintColor", sel__monochromeCellImageTintColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemPrimaryColor", sel__carSystemPrimaryColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemSecondaryColor", sel__carSystemSecondaryColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemTertiaryColor", sel__carSystemTertiaryColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemQuaternaryColor", sel__carSystemQuaternaryColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemFocusColor", sel__carSystemFocusColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemFocusLabelColor", sel__carSystemFocusLabelColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemFocusPrimaryColor", sel__carSystemFocusPrimaryColor);
  NSMapInsert(qword_1ED49B310, @"_carSystemFocusSecondaryColor", sel__carSystemFocusSecondaryColor);
  NSMapInsert(qword_1ED49B310, @"_tvLabelOpacityAColor", sel__tvLabelOpacityAColor);
  NSMapInsert(qword_1ED49B310, @"_tvLabelOpacityBColor", sel__tvLabelOpacityBColor);
  NSMapInsert(qword_1ED49B310, @"_tvLabelOpacityCColor", sel__tvLabelOpacityCColor);
  NSMapInsert(qword_1ED49B310, @"_tvInterfaceStyleLightContentColor", sel__tvInterfaceStyleLightContentColor);
  NSMapInsert(qword_1ED49B310, @"_tvInterfaceStyleDarkContentColor", sel__tvInterfaceStyleDarkContentColor);
}

+ (UIColor)secondarySystemBackgroundColor
{
  if (qword_1ED49BB10 != -1)
  {
    dispatch_once(&qword_1ED49BB10, &__block_literal_global_2016);
  }

  v3 = qword_1ED49BB08;

  return v3;
}

void __58__UIColor__UIInterfaceAPI__secondarySystemBackgroundColor__block_invoke()
{
  v37[10] = *MEMORY[0x1E69E9840];
  v34 = [UIDynamicSystemColor alloc];
  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"secondarySystemBackgroundColor"];
  v33 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v36[0] = v33;
  v0 = _UIUnifiedSystemBackgroundColorsEnabled();
  v1 = [UICachedDeviceRGBColor alloc];
  if (v0)
  {
    v2 = 0.968627451;
    v3 = 1.0;
    v4 = 0.968627451;
  }

  else
  {
    v2 = 0.949019608;
    v3 = 1.0;
    v4 = 0.949019608;
  }

  v32 = [(UIDeviceRGBColor *)v1 initWithRed:v2 green:v4 blue:0.968627451 alpha:v3];
  v37[0] = v32;
  v31 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v36[1] = v31;
  v5 = _UIUnifiedSystemBackgroundColorsEnabled();
  v6 = [UICachedDeviceRGBColor alloc];
  if (v5)
  {
    v7 = 0.968627451;
    v8 = 1.0;
    v9 = 0.968627451;
    v10 = 0.968627451;
  }

  else
  {
    v7 = 0.921568627;
    v10 = 0.941176471;
    v8 = 1.0;
    v9 = 0.921568627;
  }

  v30 = [(UIDeviceRGBColor *)v6 initWithRed:v7 green:v9 blue:v10 alpha:v8];
  v37[1] = v30;
  v29 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v36[2] = v29;
  v28 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v37[2] = v28;
  v27 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v36[3] = v27;
  v26 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v37[3] = v26;
  v25 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v36[4] = v25;
  v24 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v37[4] = v24;
  v23 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v36[5] = v23;
  v11 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  v37[5] = v11;
  v12 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v36[6] = v12;
  v13 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v37[6] = v13;
  v14 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v36[7] = v14;
  v15 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v37[7] = v15;
  v16 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v36[8] = v16;
  v17 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v37[8] = v17;
  v18 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v36[9] = v18;
  v19 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v37[9] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v21 = [(UIDynamicSystemColor *)v34 initWithName:v35 colorsByThemeKey:v20];
  v22 = qword_1ED49BB08;
  qword_1ED49BB08 = v21;
}

void __19__UIColor_redColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v1 = qword_1ED49B390;
  qword_1ED49B390 = v0;

  v2 = qword_1ED49B390;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"redColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)systemIndigoColor
{
  if (qword_1ED49B9C0 != -1)
  {
    dispatch_once(&qword_1ED49B9C0, &__block_literal_global_1952);
  }

  v3 = qword_1ED49B9B8;

  return v3;
}

void __45__UIColor__UIInterfaceAPI__systemIndigoColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemIndigoColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:8];
  v2 = qword_1ED49B9B8;
  qword_1ED49B9B8 = v1;
}

void __43__UIColor__UIInterfaceAPI__systemGrayColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGrayColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:13];
  v2 = qword_1ED49B9E8;
  qword_1ED49B9E8 = v1;
}

+ (UIColor)secondarySystemFillColor
{
  if (qword_1ED49BB90 != -1)
  {
    dispatch_once(&qword_1ED49BB90, &__block_literal_global_2038);
  }

  v3 = qword_1ED49BB88;

  return v3;
}

void __51__UIColor__InProgressSPI__secondarySystemFillColor__block_invoke()
{
  v30[12] = *MEMORY[0x1E69E9840];
  v28 = [UIDynamicSystemColor alloc];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"secondarySystemFillColor"];
  v26 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v29[0] = v26;
  v25 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.16];
  v30[0] = v25;
  v24 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v29[1] = v24;
  v23 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.24];
  v30[1] = v23;
  v22 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v29[2] = v22;
  v21 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.32];
  v30[2] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v29[3] = v20;
  v19 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.4];
  v30[3] = v19;
  v18 = _UIThemeKeyFromTraitValues(2, 0, 0, 0, 0, 0);
  v29[4] = v18;
  v17 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.16];
  v30[4] = v17;
  v16 = _UIThemeKeyFromTraitValues(2, 0, 1, 0, 0, 0);
  v29[5] = v16;
  v15 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.16];
  v30[5] = v15;
  v14 = _UIThemeKeyFromTraitValues(2, 2, 0, 0, 0, 0);
  v29[6] = v14;
  v13 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.16];
  v30[6] = v13;
  v12 = _UIThemeKeyFromTraitValues(2, 2, 1, 0, 0, 0);
  v29[7] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.16];
  v30[7] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v29[8] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.2];
  v30[8] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v29[9] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.22];
  v30[9] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v29[10] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.2];
  v30[10] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v29[11] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.24];
  v30[11] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:12];

  v10 = [(UIDynamicSystemColor *)v28 initWithName:v27 colorsByThemeKey:v9];
  v11 = qword_1ED49BB88;
  qword_1ED49BB88 = v10;
}

+ (UIColor)secondarySystemGroupedBackgroundColor
{
  if (qword_1ED49BB40 != -1)
  {
    dispatch_once(&qword_1ED49BB40, &__block_literal_global_2025);
  }

  v3 = qword_1ED49BB38;

  return v3;
}

void __65__UIColor__UIInterfaceAPI__secondarySystemGroupedBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"secondarySystemGroupedBackgroundColor"];
  v1 = _colorsByThemeKeysecondarySystemGroupedBackgroundColor();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BB38;
  qword_1ED49BB38 = v2;
}

+ (UIColor)tertiarySystemBackgroundColor
{
  if (qword_1ED49BB20 != -1)
  {
    dispatch_once(&qword_1ED49BB20, &__block_literal_global_2019);
  }

  v3 = qword_1ED49BB18;

  return v3;
}

void __57__UIColor__UIInterfaceAPI__tertiarySystemBackgroundColor__block_invoke()
{
  v26[10] = *MEMORY[0x1E69E9840];
  v24 = [UIDynamicSystemColor alloc];
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tertiarySystemBackgroundColor"];
  v22 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v25[0] = v22;
  v21 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v26[0] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v25[1] = v20;
  v19 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v26[1] = v19;
  v18 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v25[2] = v18;
  v17 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v26[2] = v17;
  v16 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v25[3] = v16;
  v15 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  v26[3] = v15;
  v14 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v25[4] = v14;
  v13 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.22745098 green:0.22745098 blue:0.235294118 alpha:1.0];
  v26[4] = v13;
  v12 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v25[5] = v12;
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.266666667 green:0.266666667 blue:0.274509804 alpha:1.0];
  v26[5] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v25[6] = v1;
  v2 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v26[6] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v25[7] = v3;
  v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v26[7] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v25[8] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v26[8] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v25[9] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v26[9] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:10];

  v10 = [(UIDynamicSystemColor *)v24 initWithName:v23 colorsByThemeKey:v9];
  v11 = qword_1ED49BB18;
  qword_1ED49BB18 = v10;
}

+ (UIColor)tertiarySystemGroupedBackgroundColor
{
  if (qword_1ED49BB50 != -1)
  {
    dispatch_once(&qword_1ED49BB50, &__block_literal_global_2028);
  }

  v3 = qword_1ED49BB48;

  return v3;
}

void __64__UIColor__UIInterfaceAPI__tertiarySystemGroupedBackgroundColor__block_invoke()
{
  v28[10] = *MEMORY[0x1E69E9840];
  v25 = [UIDynamicSystemColor alloc];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tertiarySystemGroupedBackgroundColor"];
  v24 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v27[0] = v24;
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  else
  {
    v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  }

  v23 = v0;
  v28[0] = v0;
  v22 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v27[1] = v22;
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    v1 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  }

  else
  {
    v1 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.921568627 green:0.921568627 blue:0.941176471 alpha:1.0];
  }

  v21 = v1;
  v28[1] = v1;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v27[2] = v20;
  v19 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v28[2] = v19;
  v18 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v27[3] = v18;
  v17 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  v28[3] = v17;
  v16 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v27[4] = v16;
  v15 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.22745098 green:0.22745098 blue:0.235294118 alpha:1.0];
  v28[4] = v15;
  v14 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v27[5] = v14;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.266666667 green:0.266666667 blue:0.274509804 alpha:1.0];
  v28[5] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v27[6] = v3;
  v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v28[6] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v27[7] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v28[7] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v27[8] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v28[8] = v8;
  v9 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v27[9] = v9;
  v10 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v28[9] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:10];

  v12 = [(UIDynamicSystemColor *)v25 initWithName:v26 colorsByThemeKey:v11];
  v13 = qword_1ED49BB48;
  qword_1ED49BB48 = v12;
}

+ (UIColor)systemPurpleColor
{
  if (qword_1ED49B9D0 != -1)
  {
    dispatch_once(&qword_1ED49B9D0, &__block_literal_global_1955);
  }

  v3 = qword_1ED49B9C8;

  return v3;
}

void __45__UIColor__UIInterfaceAPI__systemPurpleColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemPurpleColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:9];
  v2 = qword_1ED49B9C8;
  qword_1ED49B9C8 = v1;
}

+ (UIColor)systemYellowColor
{
  if (qword_1ED49B960 != -1)
  {
    dispatch_once(&qword_1ED49B960, &__block_literal_global_1934);
  }

  v3 = qword_1ED49B958;

  return v3;
}

void __45__UIColor__UIInterfaceAPI__systemYellowColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemYellowColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:2];
  v2 = qword_1ED49B958;
  qword_1ED49B958 = v1;
}

void __27__UIColor_systemWhiteColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemWhiteColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B5E8;
          qword_1ED49B5E8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v0 = qword_1ED49B5E8;
  qword_1ED49B5E8 = v7;
LABEL_8:

  [qword_1ED49B5E8 _setSystemColorName:v8];
}

+ (id)tableCellPlainBackgroundColor
{
  if (qword_1ED49BD00 != -1)
  {
    dispatch_once(&qword_1ED49BD00, &__block_literal_global_2107);
  }

  v3 = qword_1ED49BCF8;

  return v3;
}

void __56__UIColor__InProgressSPI__tableCellPlainBackgroundColor__block_invoke()
{
  v26[10] = *MEMORY[0x1E69E9840];
  v24 = [UIDynamicSystemColor alloc];
  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellPlainBackgroundColor"];
  v22 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v25[0] = v22;
  v21 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v26[0] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v25[1] = v20;
  v19 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v26[1] = v19;
  v18 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v25[2] = v18;
  v17 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v26[2] = v17;
  v16 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v25[3] = v16;
  v15 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v26[3] = v15;
  v14 = _UIThemeKeyFromTraitValues(3, 0, 0, 0, 0, 0);
  v25[4] = v14;
  v13 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.07];
  v26[4] = v13;
  v12 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 0);
  v25[5] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.15];
  v26[5] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v25[6] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.14];
  v26[6] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v25[7] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.14];
  v26[7] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v25[8] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.08];
  v26[8] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v25[9] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.08];
  v26[9] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:10];

  v10 = [(UIDynamicSystemColor *)v24 initWithName:v23 colorsByThemeKey:v9];
  v11 = qword_1ED49BCF8;
  qword_1ED49BCF8 = v10;
}

+ (id)tableCellBlueTextColor
{
  v3 = tableCellBlueTextColor_tableCellBlueTextColor;
  if (!tableCellBlueTextColor_tableCellBlueTextColor)
  {
    v4 = +[UIColor systemBlueColor];
    v5 = [(UIColor *)a1 _systemColorForColor:v4 withName:@"tableCellBlueTextColor"];
    v6 = tableCellBlueTextColor_tableCellBlueTextColor;
    tableCellBlueTextColor_tableCellBlueTextColor = v5;

    v3 = tableCellBlueTextColor_tableCellBlueTextColor;
  }

  return v3;
}

+ (id)_barStyleBlackHairlineShadowColor
{
  if (qword_1ED49B810 != -1)
  {
    dispatch_once(&qword_1ED49B810, &__block_literal_global_1478);
  }

  v3 = qword_1ED49B808;

  return v3;
}

void __44__UIColor__barStyleBlackHairlineShadowColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:0.15];
  v1 = qword_1ED49B808;
  qword_1ED49B808 = v0;

  v2 = qword_1ED49B808;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_barStyleBlackHairlineShadowColor"];
  [v2 _setSystemColorName:v3];
}

- (double)_contentHeadroom
{
  [(UIColor *)self CGColor];
  CGColorGetContentHeadroom();
  return v2;
}

- (CGColor)cgColor
{
  v2 = self;

  return [(UIColor *)v2 CGColor];
}

void __38__UIColor___halfTransparentWhiteColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.5];
  v1 = qword_1ED49B530;
  qword_1ED49B530 = v0;
}

void __44__UIColor__UIInterfaceAPI__systemGreenColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGreenColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:3];
  v2 = qword_1ED49B968;
  qword_1ED49B968 = v1;
}

void __24__UIColor_darkTextColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v1 = qword_1ED49B598;
  qword_1ED49B598 = v0;

  v2 = qword_1ED49B598;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"darkTextColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)systemBrownColor
{
  if (qword_1ED49BA00 != -1)
  {
    dispatch_once(&qword_1ED49BA00, &__block_literal_global_1964);
  }

  v3 = qword_1ED49B9F8;

  return v3;
}

void __44__UIColor__UIInterfaceAPI__systemBrownColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemBrownColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:14];
  v2 = qword_1ED49B9F8;
  qword_1ED49B9F8 = v1;
}

+ (UIColor)systemTealColor
{
  if (qword_1ED49B980 != -1)
  {
    dispatch_once(&qword_1ED49B980, &__block_literal_global_1940_0);
  }

  v3 = qword_1ED49B978;

  return v3;
}

void __43__UIColor__UIInterfaceAPI__systemTealColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemTealColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:4];
  v2 = qword_1ED49B978;
  qword_1ED49B978 = v1;
}

+ (UIColor)quaternarySystemFillColor
{
  if (qword_1ED49BBB0 != -1)
  {
    dispatch_once(&qword_1ED49BBB0, &__block_literal_global_2044);
  }

  v3 = qword_1ED49BBA8;

  return v3;
}

void __52__UIColor__InProgressSPI__quaternarySystemFillColor__block_invoke()
{
  v30[12] = *MEMORY[0x1E69E9840];
  v28 = [UIDynamicSystemColor alloc];
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"quaternarySystemFillColor"];
  v26 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v29[0] = v26;
  v25 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.454901961 green:0.454901961 blue:0.501960784 alpha:0.08];
  v30[0] = v25;
  v24 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v29[1] = v24;
  v23 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.454901961 green:0.454901961 blue:0.501960784 alpha:0.16];
  v30[1] = v23;
  v22 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v29[2] = v22;
  v21 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.18];
  v30[2] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v29[3] = v20;
  v19 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.26];
  v30[3] = v19;
  v18 = _UIThemeKeyFromTraitValues(2, 0, 0, 0, 0, 0);
  v29[4] = v18;
  v17 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.08];
  v30[4] = v17;
  v16 = _UIThemeKeyFromTraitValues(2, 0, 1, 0, 0, 0);
  v29[5] = v16;
  v15 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.08];
  v30[5] = v15;
  v14 = _UIThemeKeyFromTraitValues(2, 2, 0, 0, 0, 0);
  v29[6] = v14;
  v13 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.08];
  v30[6] = v13;
  v12 = _UIThemeKeyFromTraitValues(2, 2, 1, 0, 0, 0);
  v29[7] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.08];
  v30[7] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v29[8] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.1];
  v30[8] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v29[9] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.12];
  v30[9] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v29[10] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.05];
  v30[10] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v29[11] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.08];
  v30[11] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:12];

  v10 = [(UIDynamicSystemColor *)v28 initWithName:v27 colorsByThemeKey:v9];
  v11 = qword_1ED49BBA8;
  qword_1ED49BBA8 = v10;
}

+ (id)systemMidGrayColor
{
  if (qword_1ED49B5E0 != -1)
  {
    dispatch_once(&qword_1ED49B5E0, &__block_literal_global_1373_0);
  }

  v3 = qword_1ED49B5D8;

  return v3;
}

void __29__UIColor_systemMidGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemMidGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B5D8;
          qword_1ED49B5D8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v0 = qword_1ED49B5D8;
  qword_1ED49B5D8 = v7;
LABEL_8:

  [qword_1ED49B5D8 _setSystemColorName:v8];
}

+ (UIColor)systemGray6Color
{
  if (qword_1ED49BAC0 != -1)
  {
    dispatch_once(&qword_1ED49BAC0, &__block_literal_global_2001);
  }

  v3 = qword_1ED49BAB8;

  return v3;
}

void __44__UIColor__UIInterfaceAPI__systemGray6Color__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGray6Color"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.921568627 green:0.921568627 blue:0.941176471 alpha:1.0];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BAB8;
  qword_1ED49BAB8 = v10;
}

+ (UIColor)systemGray5Color
{
  if (qword_1ED49BAB0 != -1)
  {
    dispatch_once(&qword_1ED49BAB0, &__block_literal_global_1998);
  }

  v3 = qword_1ED49BAA8;

  return v3;
}

void __44__UIColor__UIInterfaceAPI__systemGray5Color__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGray5Color"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.898039216 green:0.898039216 blue:0.917647059 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.847058824 green:0.847058824 blue:0.862745098 alpha:1.0];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BAA8;
  qword_1ED49BAA8 = v10;
}

void __38__UIColor___halfTransparentBlackColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.5];
  v1 = qword_1ED49B520;
  qword_1ED49B520 = v0;
}

void __27__UIColor_systemBlackColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemBlackColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B628;
          qword_1ED49B628 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v0 = qword_1ED49B628;
  qword_1ED49B628 = v7;
LABEL_8:

  [qword_1ED49B628 _setSystemColorName:v8];
}

+ (id)systemDarkLightGrayColor
{
  if (qword_1ED49B6D0 != -1)
  {
    dispatch_once(&qword_1ED49B6D0, &__block_literal_global_1418);
  }

  v3 = qword_1ED49B6C8;

  return v3;
}

void __30__UIColor_systemDarkGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B6F8;
          qword_1ED49B6F8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
  v0 = qword_1ED49B6F8;
  qword_1ED49B6F8 = v7;
LABEL_8:

  [qword_1ED49B6F8 _setSystemColorName:v8];
}

void __35__UIColor_externalSystemGreenColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"externalSystemGreenColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B728;
          qword_1ED49B728 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  v0 = qword_1ED49B728;
  qword_1ED49B728 = v7;
LABEL_8:

  [qword_1ED49B728 _setSystemColorName:v8];
}

+ (id)systemLightGrayTintColor
{
  if (qword_1ED49B750 != -1)
  {
    dispatch_once(&qword_1ED49B750, &__block_literal_global_1442);
  }

  v3 = qword_1ED49B748;

  return v3;
}

void __30__UIColor_systemDarkBlueColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkBlueColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B658;
          qword_1ED49B658 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.250980392 blue:0.866666667 alpha:1.0];
  v0 = qword_1ED49B658;
  qword_1ED49B658 = v7;
LABEL_8:

  [qword_1ED49B658 _setSystemColorName:v8];
}

+ (id)systemDarkOrangeColor
{
  if (qword_1ED49B670 != -1)
  {
    dispatch_once(&qword_1ED49B670, &__block_literal_global_1400);
  }

  v3 = qword_1ED49B668;

  return v3;
}

+ (id)systemDarkGrayColor
{
  if (qword_1ED49B700 != -1)
  {
    dispatch_once(&qword_1ED49B700, &__block_literal_global_1427);
  }

  v3 = qword_1ED49B6F8;

  return v3;
}

+ (id)externalSystemTealColor
{
  if (qword_1ED49B710 != -1)
  {
    dispatch_once(&qword_1ED49B710, &__block_literal_global_1430);
  }

  v3 = qword_1ED49B708;

  return v3;
}

void __33__UIColor_externalSystemRedColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"externalSystemRedColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B718;
          qword_1ED49B718 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v0 = qword_1ED49B718;
  qword_1ED49B718 = v7;
LABEL_8:

  [qword_1ED49B718 _setSystemColorName:v8];
}

+ (id)externalSystemRedColor
{
  if (qword_1ED49B720 != -1)
  {
    dispatch_once(&qword_1ED49B720, &__block_literal_global_1433);
  }

  v3 = qword_1ED49B718;

  return v3;
}

void __40__UIColor_systemExtraLightGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemExtraLightGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B738;
          qword_1ED49B738 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0392156863 green:0.0392156863 blue:0.470588235 alpha:0.05];
  v0 = qword_1ED49B738;
  qword_1ED49B738 = v7;
LABEL_8:

  [qword_1ED49B738 _setSystemColorName:v8];
}

+ (id)systemLightMidGrayTintColor
{
  if (qword_1ED49B760 != -1)
  {
    dispatch_once(&qword_1ED49B760, &__block_literal_global_1445_0);
  }

  v3 = qword_1ED49B758;

  return v3;
}

void __38__UIColor_systemLightMidGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemLightMidGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B758;
          qword_1ED49B758 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0980392157 green:0.0980392157 blue:0.392156863 alpha:0.18];
  v0 = qword_1ED49B758;
  qword_1ED49B758 = v7;
LABEL_8:

  [qword_1ED49B758 _setSystemColorName:v8];
}

void __30__UIColor_systemGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B778;
          qword_1ED49B778 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.45];
  v0 = qword_1ED49B778;
  qword_1ED49B778 = v7;
LABEL_8:

  [qword_1ED49B778 _setSystemColorName:v8];
}

void __44__UIColor_systemDarkExtraLightGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkExtraLightGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B788;
          qword_1ED49B788 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.00784313725 green:0.00784313725 blue:0.121568627 alpha:0.17];
  v0 = qword_1ED49B788;
  qword_1ED49B788 = v7;
LABEL_8:

  [qword_1ED49B788 _setSystemColorName:v8];
}

void __39__UIColor_systemDarkLightGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkLightGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B798;
          qword_1ED49B798 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0352941176 green:0.0352941176 blue:0.129411765 alpha:0.27];
  v0 = qword_1ED49B798;
  qword_1ED49B798 = v7;
LABEL_8:

  [qword_1ED49B798 _setSystemColorName:v8];
}

void __42__UIColor_systemDarkLightMidGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkLightMidGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B7A8;
          qword_1ED49B7A8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0392156863 green:0.0392156863 blue:0.160784314 alpha:0.38];
  v0 = qword_1ED49B7A8;
  qword_1ED49B7A8 = v7;
LABEL_8:

  [qword_1ED49B7A8 _setSystemColorName:v8];
}

+ (id)systemDarkMidGrayTintColor
{
  if (qword_1ED49B7C0 != -1)
  {
    dispatch_once(&qword_1ED49B7C0, &__block_literal_global_1463);
  }

  v3 = qword_1ED49B7B8;

  return v3;
}

+ (id)systemDarkGrayTintColor
{
  if (qword_1ED49B7D0 != -1)
  {
    dispatch_once(&qword_1ED49B7D0, &__block_literal_global_1466);
  }

  v3 = qword_1ED49B7C8;

  return v3;
}

void __31__UIColor_systemDarkGreenColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkGreenColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B648;
          qword_1ED49B648 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  v0 = qword_1ED49B648;
  qword_1ED49B648 = v7;
LABEL_8:

  [qword_1ED49B648 _setSystemColorName:v8];
}

+ (id)systemDarkGreenColor
{
  if (qword_1ED49B650 != -1)
  {
    dispatch_once(&qword_1ED49B650, &__block_literal_global_1394);
  }

  v3 = qword_1ED49B648;

  return v3;
}

+ (id)systemDarkBlueColor
{
  if (qword_1ED49B660 != -1)
  {
    dispatch_once(&qword_1ED49B660, &__block_literal_global_1397_0);
  }

  v3 = qword_1ED49B658;

  return v3;
}

void __32__UIColor_systemDarkOrangeColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkOrangeColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B668;
          qword_1ED49B668 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.937254902 green:0.337254902 blue:0.00784313725 alpha:1.0];
  v0 = qword_1ED49B668;
  qword_1ED49B668 = v7;
LABEL_8:

  [qword_1ED49B668 _setSystemColorName:v8];
}

void __30__UIColor_systemDarkTealColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkTealColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B688;
          qword_1ED49B688 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.00392156863 green:0.568627451 blue:0.823529412 alpha:1.0];
  v0 = qword_1ED49B688;
  qword_1ED49B688 = v7;
LABEL_8:

  [qword_1ED49B688 _setSystemColorName:v8];
}

void __30__UIColor_systemDarkPinkColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkPinkColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B698;
          qword_1ED49B698 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.854901961 green:0.0588235294 blue:0.278431373 alpha:1.0];
  v0 = qword_1ED49B698;
  qword_1ED49B698 = v7;
LABEL_8:

  [qword_1ED49B698 _setSystemColorName:v8];
}

void __32__UIColor_systemDarkPurpleColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkPurpleColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B6A8;
          qword_1ED49B6A8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.274509804 green:0.266666667 blue:0.670588235 alpha:1.0];
  v0 = qword_1ED49B6A8;
  qword_1ED49B6A8 = v7;
LABEL_8:

  [qword_1ED49B6A8 _setSystemColorName:v8];
}

+ (id)systemDarkExtraLightGrayColor
{
  if (qword_1ED49B6C0 != -1)
  {
    dispatch_once(&qword_1ED49B6C0, &__block_literal_global_1415_0);
  }

  v3 = qword_1ED49B6B8;

  return v3;
}

void __38__UIColor_systemDarkLightMidGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkLightMidGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B6D8;
          qword_1ED49B6D8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.639215686 green:0.639215686 blue:0.658823529 alpha:1.0];
  v0 = qword_1ED49B6D8;
  qword_1ED49B6D8 = v7;
LABEL_8:

  [qword_1ED49B6D8 _setSystemColorName:v8];
}

void __33__UIColor_systemDarkMidGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkMidGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B6E8;
          qword_1ED49B6E8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.545098039 green:0.545098039 blue:0.560784314 alpha:1.0];
  v0 = qword_1ED49B6E8;
  qword_1ED49B6E8 = v7;
LABEL_8:

  [qword_1ED49B6E8 _setSystemColorName:v8];
}

+ (id)systemDarkMidGrayColor
{
  if (qword_1ED49B6F0 != -1)
  {
    dispatch_once(&qword_1ED49B6F0, &__block_literal_global_1424_0);
  }

  v3 = qword_1ED49B6E8;

  return v3;
}

+ (id)systemDarkExtraLightGrayTintColor
{
  if (qword_1ED49B790 != -1)
  {
    dispatch_once(&qword_1ED49B790, &__block_literal_global_1454_0);
  }

  v3 = qword_1ED49B788;

  return v3;
}

+ (id)systemDarkLightGrayTintColor
{
  if (qword_1ED49B7A0 != -1)
  {
    dispatch_once(&qword_1ED49B7A0, &__block_literal_global_1457);
  }

  v3 = qword_1ED49B798;

  return v3;
}

+ (id)systemLightGrayColor
{
  if (qword_1ED49B610 != -1)
  {
    dispatch_once(&qword_1ED49B610, &__block_literal_global_1382);
  }

  v3 = qword_1ED49B608;

  return v3;
}

void __31__UIColor_systemLightGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemLightGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B608;
          qword_1ED49B608 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.898039216 green:0.898039216 blue:0.917647059 alpha:1.0];
  v0 = qword_1ED49B608;
  qword_1ED49B608 = v7;
LABEL_8:

  [qword_1ED49B608 _setSystemColorName:v8];
}

void __34__UIColor_systemLightMidGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemLightMidGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B618;
          qword_1ED49B618 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  v0 = qword_1ED49B618;
  qword_1ED49B618 = v7;
LABEL_8:

  [qword_1ED49B618 _setSystemColorName:v8];
}

+ (id)systemLightMidGrayColor
{
  if (qword_1ED49B620 != -1)
  {
    dispatch_once(&qword_1ED49B620, &__block_literal_global_1385_0);
  }

  v3 = qword_1ED49B618;

  return v3;
}

+ (id)systemDarkRedColor
{
  if (qword_1ED49B640 != -1)
  {
    dispatch_once(&qword_1ED49B640, &__block_literal_global_1391);
  }

  v3 = qword_1ED49B638;

  return v3;
}

void __29__UIColor_systemDarkRedColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkRedColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B638;
          qword_1ED49B638 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.878431373 green:0.0235294118 blue:0.105882353 alpha:1.0];
  v0 = qword_1ED49B638;
  qword_1ED49B638 = v7;
LABEL_8:

  [qword_1ED49B638 _setSystemColorName:v8];
}

+ (id)systemDarkYellowColor
{
  if (qword_1ED49B680 != -1)
  {
    dispatch_once(&qword_1ED49B680, &__block_literal_global_1403);
  }

  v3 = qword_1ED49B678;

  return v3;
}

void __32__UIColor_systemDarkYellowColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkYellowColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B678;
          qword_1ED49B678 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.576470588 green:0.415686275 blue:0.211764706 alpha:1.0];
  v0 = qword_1ED49B678;
  qword_1ED49B678 = v7;
LABEL_8:

  [qword_1ED49B678 _setSystemColorName:v8];
}

+ (id)systemDarkTealColor
{
  if (qword_1ED49B690 != -1)
  {
    dispatch_once(&qword_1ED49B690, &__block_literal_global_1406_0);
  }

  v3 = qword_1ED49B688;

  return v3;
}

+ (id)systemDarkPinkColor
{
  if (qword_1ED49B6A0 != -1)
  {
    dispatch_once(&qword_1ED49B6A0, &__block_literal_global_1409);
  }

  v3 = qword_1ED49B698;

  return v3;
}

+ (id)systemDarkPurpleColor
{
  if (qword_1ED49B6B0 != -1)
  {
    dispatch_once(&qword_1ED49B6B0, &__block_literal_global_1412);
  }

  v3 = qword_1ED49B6A8;

  return v3;
}

void __40__UIColor_systemDarkExtraLightGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkExtraLightGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B6B8;
          qword_1ED49B6B8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.835294118 green:0.835294118 blue:0.858823529 alpha:1.0];
  v0 = qword_1ED49B6B8;
  qword_1ED49B6B8 = v7;
LABEL_8:

  [qword_1ED49B6B8 _setSystemColorName:v8];
}

void __35__UIColor_systemDarkLightGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkLightGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B6C8;
          qword_1ED49B6C8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.737254902 green:0.737254902 blue:0.760784314 alpha:1.0];
  v0 = qword_1ED49B6C8;
  qword_1ED49B6C8 = v7;
LABEL_8:

  [qword_1ED49B6C8 _setSystemColorName:v8];
}

void __34__UIColor_externalSystemTealColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"externalSystemTealColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B708;
          qword_1ED49B708 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  v0 = qword_1ED49B708;
  qword_1ED49B708 = v7;
LABEL_8:

  [qword_1ED49B708 _setSystemColorName:v8];
}

void __35__UIColor_systemLightGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemLightGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B748;
          qword_1ED49B748 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0980392157 green:0.0980392157 blue:0.392156863 alpha:0.07];
  v0 = qword_1ED49B748;
  qword_1ED49B748 = v7;
LABEL_8:

  [qword_1ED49B748 _setSystemColorName:v8];
}

void __33__UIColor_systemMidGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemMidGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B768;
          qword_1ED49B768 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0980392157 alpha:0.22];
  v0 = qword_1ED49B768;
  qword_1ED49B768 = v7;
LABEL_8:

  [qword_1ED49B768 _setSystemColorName:v8];
}

void __34__UIColor_systemDarkGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B7C8;
          qword_1ED49B7C8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.62];
  v0 = qword_1ED49B7C8;
  qword_1ED49B7C8 = v7;
LABEL_8:

  [qword_1ED49B7C8 _setSystemColorName:v8];
}

void __36__UIColor_systemExtraLightGrayColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemExtraLightGrayColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B5F8;
          qword_1ED49B5F8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.937254902 green:0.937254902 blue:0.956862745 alpha:1.0];
  v0 = qword_1ED49B5F8;
  qword_1ED49B5F8 = v7;
LABEL_8:

  [qword_1ED49B5F8 _setSystemColorName:v8];
}

+ (id)systemExtraLightGrayColor
{
  if (qword_1ED49B600 != -1)
  {
    dispatch_once(&qword_1ED49B600, &__block_literal_global_1379);
  }

  v3 = qword_1ED49B5F8;

  return v3;
}

+ (id)systemDarkLightMidGrayColor
{
  if (qword_1ED49B6E0 != -1)
  {
    dispatch_once(&qword_1ED49B6E0, &__block_literal_global_1421);
  }

  v3 = qword_1ED49B6D8;

  return v3;
}

+ (id)externalSystemGreenColor
{
  if (qword_1ED49B730 != -1)
  {
    dispatch_once(&qword_1ED49B730, &__block_literal_global_1436);
  }

  v3 = qword_1ED49B728;

  return v3;
}

+ (id)systemExtraLightGrayTintColor
{
  if (qword_1ED49B740 != -1)
  {
    dispatch_once(&qword_1ED49B740, &__block_literal_global_1439);
  }

  v3 = qword_1ED49B738;

  return v3;
}

+ (id)systemGrayTintColor
{
  if (qword_1ED49B780 != -1)
  {
    dispatch_once(&qword_1ED49B780, &__block_literal_global_1451);
  }

  v3 = qword_1ED49B778;

  return v3;
}

+ (id)systemMidGrayTintColor
{
  if (qword_1ED49B770 != -1)
  {
    dispatch_once(&qword_1ED49B770, &__block_literal_global_1448);
  }

  v3 = qword_1ED49B768;

  return v3;
}

+ (id)systemDarkLightMidGrayTintColor
{
  if (qword_1ED49B7B0 != -1)
  {
    dispatch_once(&qword_1ED49B7B0, &__block_literal_global_1460);
  }

  v3 = qword_1ED49B7A8;

  return v3;
}

void __37__UIColor_systemDarkMidGrayTintColor__block_invoke()
{
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemDarkMidGrayTintColor"];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = _UIKitUserDefaults();
    v1 = [v0 stringForKey:v8];
    v2 = v1;
    if (v1)
    {
      if ([v1 length])
      {
        v3 = __colorValuesFromString(v2);
        if (v3)
        {
          v4 = v3;
          v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:*v4 green:v4[1] blue:v4[2] alpha:1.0];
          v6 = qword_1ED49B7B8;
          qword_1ED49B7B8 = v5;

          free(v4);
          goto LABEL_8;
        }
      }
    }
  }

  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0980392157 alpha:0.46];
  v0 = qword_1ED49B7B8;
  qword_1ED49B7B8 = v7;
LABEL_8:

  [qword_1ED49B7B8 _setSystemColorName:v8];
}

+ (UIColor)systemCyanColor
{
  if (qword_1ED49B9A0 != -1)
  {
    dispatch_once(&qword_1ED49B9A0, &__block_literal_global_1946);
  }

  v3 = qword_1ED49B998;

  return v3;
}

void __43__UIColor__UIInterfaceAPI__systemCyanColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemCyanColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:6];
  v2 = qword_1ED49B998;
  qword_1ED49B998 = v1;
}

+ (UIColor)systemGray3Color
{
  if (qword_1ED49BA90 != -1)
  {
    dispatch_once(&qword_1ED49BA90, &__block_literal_global_1992);
  }

  v3 = qword_1ED49BA88;

  return v3;
}

void __44__UIColor__UIInterfaceAPI__systemGray3Color__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGray3Color"];
  v1 = _colorsByThemeKeysystemGray3Color();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BA88;
  qword_1ED49BA88 = v2;
}

+ (UIColor)placeholderTextColor
{
  if (qword_1ED49BA60 != -1)
  {
    dispatch_once(&qword_1ED49BA60, &__block_literal_global_1982);
  }

  v3 = qword_1ED49BA58;

  return v3;
}

void __48__UIColor__UIInterfaceAPI__placeholderTextColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"placeholderTextColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:17];
  v2 = qword_1ED49BA58;
  qword_1ED49BA58 = v1;
}

+ (UIColor)linkColor
{
  if (qword_1ED49BAD0 != -1)
  {
    dispatch_once(&qword_1ED49BAD0, &__block_literal_global_2004);
  }

  v3 = qword_1ED49BAC8;

  return v3;
}

void __37__UIColor__UIInterfaceAPI__linkColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"linkColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0352941176 green:0.517647059 blue:1.0 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BAC8;
  qword_1ED49BAC8 = v7;
}

void __20__UIColor_grayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.5 alpha:1.0];
  v1 = qword_1ED49B370;
  qword_1ED49B370 = v0;

  v2 = qword_1ED49B370;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"grayColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)darkTextColor
{
  if (qword_1ED49B5A0 != -1)
  {
    dispatch_once(&qword_1ED49B5A0, &__block_literal_global_1364);
  }

  v3 = qword_1ED49B598;

  return v3;
}

+ (UIColor)systemMintColor
{
  if (qword_1ED49B990 != -1)
  {
    dispatch_once(&qword_1ED49B990, &__block_literal_global_1943);
  }

  v3 = qword_1ED49B988;

  return v3;
}

void __43__UIColor__UIInterfaceAPI__systemMintColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemMintColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:5];
  v2 = qword_1ED49B988;
  qword_1ED49B988 = v1;
}

+ (id)_barHairlineShadowColor
{
  if (qword_1ED49B800 != -1)
  {
    dispatch_once(&qword_1ED49B800, &__block_literal_global_1475);
  }

  v3 = qword_1ED49B7F8;

  return v3;
}

void __34__UIColor__barHairlineShadowColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.3];
  v1 = qword_1ED49B7F8;
  qword_1ED49B7F8 = v0;

  v2 = qword_1ED49B7F8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_barHairlineShadowColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)lightGrayColor
{
  if (qword_1ED49B358 != -1)
  {
    dispatch_once(&qword_1ED49B358, &__block_literal_global_1241);
  }

  v3 = qword_1ED49B350;

  return v3;
}

void __25__UIColor_lightGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.666666667 alpha:1.0];
  v1 = qword_1ED49B350;
  qword_1ED49B350 = v0;

  v2 = qword_1ED49B350;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lightGrayColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_controlForegroundColor
{
  if (qword_1ED49BC30 != -1)
  {
    dispatch_once(&qword_1ED49BC30, &__block_literal_global_2068);
  }

  v3 = qword_1ED49BC28;

  return v3;
}

void __50__UIColor__InProgressSPI___controlForegroundColor__block_invoke()
{
  v12[3] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_controlForegroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v11[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v12[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v11[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.3];
  v12[1] = v5;
  v6 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v11[2] = v6;
  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.38];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v8];
  v10 = qword_1ED49BC28;
  qword_1ED49BC28 = v9;
}

+ (UIColor)blueColor
{
  if (qword_1ED49B3B8 != -1)
  {
    dispatch_once(&qword_1ED49B3B8, &__block_literal_global_1260);
  }

  v3 = qword_1ED49B3B0;

  return v3;
}

void __20__UIColor_blueColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:1.0 alpha:1.0];
  v1 = qword_1ED49B3B0;
  qword_1ED49B3B0 = v0;

  v2 = qword_1ED49B3B0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"blueColor"];
  [v2 _setSystemColorName:v3];
}

- (double)_luminance
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(UIColor *)self CGColor];
  v3 = 0.0;
  if (v2)
  {
    v4 = v2;
    Components = CGColorGetComponents(v2);
    Alpha = CGColorGetAlpha(v4);
    ColorSpace = CGColorGetColorSpace(v4);
    if (Components)
    {
      v8 = ColorSpace;
      v12 = 0u;
      v13 = 0u;
      if (qword_1ED49BED0 != -1)
      {
        dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
      }

      if (qword_1ED49BEC8 != v8)
      {
        if (qword_1ED49BF00 != -1)
        {
          dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
        }

        if (qword_1ED49BEF8 != v8)
        {
          UISCreateCachedColorTransform();
          if (!CGColorTransformConvertColorComponents())
          {
            CGColorTransformRelease();
            return v3;
          }

          *(&v13 + 1) = Alpha;
          CGColorTransformRelease();
          Components = &v12;
        }
      }

      v9 = Components[3];
      [UIColor _luminanceWithRed:*Components green:Components[1] blue:Components[2], v12, v13];
      return v9 * v10;
    }
  }

  return v3;
}

+ (id)_windowBackgroundColor
{
  if (qword_1ED49BDF0 != -1)
  {
    dispatch_once(&qword_1ED49BDF0, &__block_literal_global_2152);
  }

  v3 = qword_1ED49BDE8;

  return v3;
}

void __49__UIColor__InProgressSPI___windowBackgroundColor__block_invoke()
{
  v12[3] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_windowBackgroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v11[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v12[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(3, 0, 0, 0, 0, 0);
  v11[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.949019608 blue:0.949019608 alpha:1.0];
  v12[1] = v5;
  v6 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 0);
  v11[2] = v6;
  v7 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:1.0];
  v12[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v8];
  v10 = qword_1ED49BDE8;
  qword_1ED49BDE8 = v9;
}

+ (id)tableBackgroundColor
{
  if (qword_1ED49BCF0 != -1)
  {
    dispatch_once(&qword_1ED49BCF0, &__block_literal_global_2104);
  }

  v3 = qword_1ED49BCE8;

  return v3;
}

void __47__UIColor__InProgressSPI__tableBackgroundColor__block_invoke()
{
  v28[11] = *MEMORY[0x1E69E9840];
  v26 = [UIDynamicSystemColor alloc];
  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableBackgroundColor"];
  v24 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v27[0] = v24;
  v23 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v28[0] = v23;
  v22 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v27[1] = v22;
  v21 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v28[1] = v21;
  v20 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v27[2] = v20;
  v19 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v28[2] = v19;
  v18 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v27[3] = v18;
  v17 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.141176471 green:0.141176471 blue:0.149019608 alpha:1.0];
  v28[3] = v17;
  v16 = _UIThemeKeyFromTraitValues(3, 0, 0, 0, 0, 0);
  v27[4] = v16;
  v15 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.949019608 blue:0.949019608 alpha:1.0];
  v28[4] = v15;
  v14 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 0);
  v27[5] = v14;
  v13 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.101960784 green:0.101960784 blue:0.101960784 alpha:1.0];
  v28[5] = v13;
  v12 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 1);
  v27[6] = v12;
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v28[6] = v0;
  v1 = _UIThemeKeyFromTraitValues(4, 2, 0, 0, 0, 0);
  v27[7] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.14];
  v28[7] = v2;
  v3 = _UIThemeKeyFromTraitValues(4, 2, 1, 0, 0, 0);
  v27[8] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.949019608 green:0.956862745 blue:0.988235294 alpha:0.14];
  v28[8] = v4;
  v5 = _UIThemeKeyFromTraitValues(4, 1, 0, 0, 0, 0);
  v27[9] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.08];
  v28[9] = v6;
  v7 = _UIThemeKeyFromTraitValues(4, 1, 1, 0, 0, 0);
  v27[10] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.08];
  v28[10] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:11];

  v10 = [(UIDynamicSystemColor *)v26 initWithName:v25 colorsByThemeKey:v9];
  v11 = qword_1ED49BCE8;
  qword_1ED49BCE8 = v10;
}

+ (id)tableSeparatorDarkColor
{
  if (qword_1ED49BD40 != -1)
  {
    dispatch_once(&qword_1ED49BD40, &__block_literal_global_2119);
  }

  v3 = qword_1ED49BD38;

  return v3;
}

void __50__UIColor__InProgressSPI__tableSeparatorDarkColor__block_invoke()
{
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableSeparatorDarkColor"];
  if (v0)
  {
    _colorsByThemeKeySolariumseparatorColor();
  }

  else
  {
    _colorsByThemeKeyPreSolariumseparatorColor();
  }
  v2 = ;
  v3 = [(UIDynamicSystemColor *)v1 initWithName:v5 colorsByThemeKey:v2];
  v4 = qword_1ED49BD38;
  qword_1ED49BD38 = v3;
}

+ (id)tableSeparatorLightColor
{
  if (qword_1ED49BD50 != -1)
  {
    dispatch_once(&qword_1ED49BD50, &__block_literal_global_2122);
  }

  v3 = qword_1ED49BD48;

  return v3;
}

void __51__UIColor__InProgressSPI__tableSeparatorLightColor__block_invoke()
{
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableSeparatorLightColor"];
  if (v0)
  {
    _colorsByThemeKeySolariumseparatorColor();
  }

  else
  {
    _colorsByThemeKeyPreSolariumseparatorColor();
  }
  v2 = ;
  v3 = [(UIDynamicSystemColor *)v1 initWithName:v5 colorsByThemeKey:v2];
  v4 = qword_1ED49BD48;
  qword_1ED49BD48 = v3;
}

+ (id)tableCellPlainSelectedBackgroundColor
{
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    +[UIColor tertiarySystemFillColor];
  }

  else
  {
    +[UIColor systemGray4Color];
  }
  v2 = ;

  return v2;
}

+ (UIColor)systemGray4Color
{
  if (qword_1ED49BAA0 != -1)
  {
    dispatch_once(&qword_1ED49BAA0, &__block_literal_global_1995);
  }

  v3 = qword_1ED49BA98;

  return v3;
}

void __44__UIColor__UIInterfaceAPI__systemGray4Color__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGray4Color"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.819607843 green:0.819607843 blue:0.839215686 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.737254902 green:0.737254902 blue:0.752941176 alpha:1.0];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.22745098 green:0.22745098 blue:0.235294118 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.266666667 green:0.266666667 blue:0.274509804 alpha:1.0];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BA98;
  qword_1ED49BA98 = v10;
}

+ (id)tableSeparatorColor
{
  if (qword_1ED49BD30 != -1)
  {
    dispatch_once(&qword_1ED49BD30, &__block_literal_global_2116);
  }

  v3 = qword_1ED49BD28;

  return v3;
}

void __46__UIColor__InProgressSPI__tableSeparatorColor__block_invoke()
{
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableSeparatorColor"];
  if (v0)
  {
    _colorsByThemeKeySolariumseparatorColor();
  }

  else
  {
    _colorsByThemeKeyPreSolariumseparatorColor();
  }
  v2 = ;
  v3 = [(UIDynamicSystemColor *)v1 initWithName:v5 colorsByThemeKey:v2];
  v4 = qword_1ED49BD28;
  qword_1ED49BD28 = v3;
}

+ (id)systemBlackColor
{
  if (qword_1ED49B630 != -1)
  {
    dispatch_once(&qword_1ED49B630, &__block_literal_global_1388);
  }

  v3 = qword_1ED49B628;

  return v3;
}

+ (UIColor)systemGray2Color
{
  if (qword_1ED49BA80 != -1)
  {
    dispatch_once(&qword_1ED49BA80, &__block_literal_global_1989);
  }

  v3 = qword_1ED49BA78;

  return v3;
}

void __44__UIColor__UIInterfaceAPI__systemGray2Color__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"systemGray2Color"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.682352941 green:0.682352941 blue:0.698039216 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.48627451 green:0.48627451 blue:0.501960784 alpha:1.0];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BA78;
  qword_1ED49BA78 = v10;
}

+ (UIColor)greenColor
{
  if (qword_1ED49B3A8 != -1)
  {
    dispatch_once(&qword_1ED49B3A8, &__block_literal_global_1257);
  }

  v3 = qword_1ED49B3A0;

  return v3;
}

void __21__UIColor_greenColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:1.0 blue:0.0 alpha:1.0];
  v1 = qword_1ED49B3A0;
  qword_1ED49B3A0 = v0;

  v2 = qword_1ED49B3A0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"greenColor"];
  [v2 _setSystemColorName:v3];
}

- (id)styleString
{
  cachedStyleString = self->_cachedStyleString;
  if (!cachedStyleString)
  {
    v16 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v13 = 0.0;
    [(UIColor *)self getRed:&v16 green:&v15 blue:&v14 alpha:&v13];
    v4 = v13;
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = &unk_18A679000;
    LODWORD(v6) = vcvtmd_s64_f64(v16 * 255.0);
    LODWORD(v7) = vcvtmd_s64_f64(v15 * 255.0);
    LODWORD(v8) = vcvtmd_s64_f64(v14 * 255.0);
    if (v4 == 1.0)
    {
      v9 = [v5 initWithFormat:@"rgb(%d, %d, %d)", v6, v7, v8, v12];
    }

    else
    {
      v9 = [v5 initWithFormat:@"rgba(%d, %d, %d, %f)", v6, v7, v8, *&v13];
    }

    v10 = self->_cachedStyleString;
    self->_cachedStyleString = v9;

    cachedStyleString = self->_cachedStyleString;
  }

  return cachedStyleString;
}

+ (UIColor)grayColor
{
  if (qword_1ED49B378 != -1)
  {
    dispatch_once(&qword_1ED49B378, &__block_literal_global_1247);
  }

  v3 = qword_1ED49B370;

  return v3;
}

+ (id)_pageControlIndicatorColor
{
  if (qword_1ED49BBF0 != -1)
  {
    dispatch_once(&qword_1ED49BBF0, &__block_literal_global_2056);
  }

  v3 = qword_1ED49BBE8;

  return v3;
}

void __53__UIColor__InProgressSPI___pageControlIndicatorColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_pageControlIndicatorColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.45];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.55];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BBE8;
  qword_1ED49BBE8 = v7;
}

+ (id)tableCellGroupedBackgroundColor
{
  if (qword_1ED49BD20 != -1)
  {
    dispatch_once(&qword_1ED49BD20, &__block_literal_global_2113);
  }

  v3 = qword_1ED49BD18;

  return v3;
}

void __58__UIColor__InProgressSPI__tableCellGroupedBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellGroupedBackgroundColor"];
  v1 = _colorsByThemeKeysecondarySystemGroupedBackgroundColor();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BD18;
  qword_1ED49BD18 = v2;
}

void __47__UIColor__InProgressSPI___carSystemFocusColor__block_invoke()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemFocusColor"];
  _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  if (v0)
    v3 = {;
    v11 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.7];
    v13[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v12 = v5;
    v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.7];
  }

  else
    v3 = {;
    v11 = v3;
    v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.156862745 green:0.615686275 blue:0.819607843 alpha:1.0];
    v13[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v12 = v5;
    v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.392156863 green:0.823529412 blue:1.0 alpha:1.0];
  }

  v7 = v6;
  v13[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v11 count:2];

  v9 = [(UIDynamicSystemColor *)v1 initWithName:v2 colorsByThemeKey:v8];
  v10 = qword_1ED49BE58;
  qword_1ED49BE58 = v9;
}

+ (id)_carSystemFocusColor
{
  if (qword_1ED49BE60 != -1)
  {
    dispatch_once(&qword_1ED49BE60, &__block_literal_global_2173);
  }

  v3 = qword_1ED49BE58;

  return v3;
}

+ (UIColor)groupTableViewBackgroundColor
{
  if (qword_1ED49BD10 != -1)
  {
    dispatch_once(&qword_1ED49BD10, &__block_literal_global_2110);
  }

  v3 = qword_1ED49BD08;

  return v3;
}

void __56__UIColor__InProgressSPI__groupTableViewBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"groupTableViewBackgroundColor"];
  v1 = _colorsByThemeKeysystemGroupedBackgroundColor();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BD08;
  qword_1ED49BD08 = v2;
}

+ (id)_switchOffColor
{
  if (qword_1ED49BBC0 != -1)
  {
    dispatch_once(&qword_1ED49BBC0, &__block_literal_global_2047);
  }

  v3 = qword_1ED49BBB8;

  return v3;
}

void __42__UIColor__InProgressSPI___switchOffColor__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_switchOffColor"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.16];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.78];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.32];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.470588235 green:0.470588235 blue:0.501960784 alpha:0.9];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BBB8;
  qword_1ED49BBB8 = v10;
}

+ (id)_switchOffImageColor
{
  if (qword_1ED49BBD0 != -1)
  {
    dispatch_once(&qword_1ED49BBD0, &__block_literal_global_2050);
  }

  v3 = qword_1ED49BBC8;

  return v3;
}

void __47__UIColor__InProgressSPI___switchOffImageColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_switchOffImageColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.7 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BBC8;
  qword_1ED49BBC8 = v7;
}

+ (id)_textFieldBackgroundColor
{
  if (qword_1ED49BCB0 != -1)
  {
    dispatch_once(&qword_1ED49BCB0, &__block_literal_global_2092);
  }

  v3 = qword_1ED49BCA8;

  return v3;
}

void __52__UIColor__InProgressSPI___textFieldBackgroundColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_textFieldBackgroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BCA8;
  qword_1ED49BCA8 = v7;
}

void __22__UIColor_yellowColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:1.0 blue:0.0 alpha:1.0];
  v1 = qword_1ED49B3D0;
  qword_1ED49B3D0 = v0;

  v2 = qword_1ED49B3D0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"yellowColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)yellowColor
{
  if (qword_1ED49B3D8 != -1)
  {
    dispatch_once(&qword_1ED49B3D8, &__block_literal_global_1266);
  }

  v3 = qword_1ED49B3D0;

  return v3;
}

+ (UIColor)orangeColor
{
  if (qword_1ED49B3F8 != -1)
  {
    dispatch_once(&qword_1ED49B3F8, &__block_literal_global_1272);
  }

  v3 = qword_1ED49B3F0;

  return v3;
}

void __22__UIColor_orangeColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.5 blue:0.0 alpha:1.0];
  v1 = qword_1ED49B3F0;
  qword_1ED49B3F0 = v0;

  v2 = qword_1ED49B3F0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"orangeColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_carSystemPrimaryColor
{
  if (qword_1ED49BE20 != -1)
  {
    dispatch_once(&qword_1ED49BE20, &__block_literal_global_2161);
  }

  v3 = qword_1ED49BE18;

  return v3;
}

+ (id)_carSystemFocusLabelColor
{
  if (qword_1ED49BE70 != -1)
  {
    dispatch_once(&qword_1ED49BE70, &__block_literal_global_2176);
  }

  v3 = qword_1ED49BE68;

  return v3;
}

+ (id)_carSystemFocusPrimaryColor
{
  if (qword_1ED49BE80 != -1)
  {
    dispatch_once(&qword_1ED49BE80, &__block_literal_global_2179);
  }

  v3 = qword_1ED49BE78;

  return v3;
}

+ (id)_carSystemFocusSecondaryColor
{
  if (qword_1ED49BE90 != -1)
  {
    dispatch_once(&qword_1ED49BE90, &__block_literal_global_2182);
  }

  v3 = qword_1ED49BE88;

  return v3;
}

+ (id)_carSystemSecondaryColor
{
  if (qword_1ED49BE30 != -1)
  {
    dispatch_once(&qword_1ED49BE30, &__block_literal_global_2164);
  }

  v3 = qword_1ED49BE28;

  return v3;
}

+ (id)_carSystemTertiaryColor
{
  if (qword_1ED49BE40 != -1)
  {
    dispatch_once(&qword_1ED49BE40, &__block_literal_global_2167);
  }

  v3 = qword_1ED49BE38;

  return v3;
}

+ (id)_carSystemQuaternaryColor
{
  if (qword_1ED49BE50 != -1)
  {
    dispatch_once(&qword_1ED49BE50, &__block_literal_global_2170);
  }

  v3 = qword_1ED49BE48;

  return v3;
}

+ (id)_externalSystemSuperDarkGrayColor
{
  if (qword_1ED49B880 != -1)
  {
    dispatch_once(&qword_1ED49B880, &__block_literal_global_1499);
  }

  v3 = qword_1ED49B878;

  return v3;
}

+ (id)_legibleForegroundColorForBackgroundColor:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 resolvedColorWithTraitCollection_];
  [v7 _luminance];
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = objc_allocWithZone(UIColor);
  v15[4] = sub_18905336C;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_188BC2240;
  v15[3] = &block_descriptor_41_1;
  v12 = _Block_copy(v15);
  v13 = [v11 initWithDynamicProvider_];

  _Block_release(v12);

  return v13;
}

- (NSString)accessibilityName
{
  v2 = [(UIColor *)self CGColor];

  return AXNameFromColor(v2);
}

- (NSString)_accessibilityNameWithLuma
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v3 = off_1ED49C508;
  v10 = off_1ED49C508;
  if (!off_1ED49C508)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getAXColorStringForColorSymbolLoc_block_invoke;
    v6[3] = &unk_1E70F2F20;
    v6[4] = &v7;
    __getAXColorStringForColorSymbolLoc_block_invoke(v6);
    v3 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (v3)
  {
    return v3(self, 1);
  }

  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  result = [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"NSString *_AXColorStringForColor(UIColor * description:{NSUInteger)"), @"UIAccessibility.m", 63, @"%s", dlerror()}];
  __break(1u);
  return result;
}

- (id)_inverseColor
{
  v7 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v2 = [(UIColor *)self getRed:&v7 green:&v6 blue:&v5 alpha:0];
  v3 = 0;
  if (v2)
  {
    v3 = [UIColor colorWithRed:1.0 - v7 green:1.0 - v6 blue:1.0 - v5 alpha:1.0];
  }

  return v3;
}

- (double)_distanceFrom:(id)a3
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v4 = a3;
  v5 = [(UIColor *)self getRed:&v13 green:&v12 blue:&v11 alpha:0];
  v6 = [v4 getRed:&v10 green:&v9 blue:&v8 alpha:0];

  result = 1.79769313e308;
  if (v5)
  {
    if (v6)
    {
      return sqrt((v10 - v13) * (v10 - v13) + (v9 - v12) * (v9 - v12) + (v8 - v11) * (v8 - v11));
    }
  }

  return result;
}

+ (UIColor)allocWithZone:(_NSZone *)a3
{
  v5 = objc_opt_self();
  if (v5 == a1)
  {
    v6 = UIColorPlaceholder();
  }

  else
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS___UIColor;
    v6 = objc_msgSendSuper2(&v9, sel_allocWithZone_, a3);
  }

  v7 = v6;

  return v7;
}

+ (UIColor)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha
{
  v4 = [objc_allocWithZone(UIDeviceWhiteColor) initWithWhite:white alpha:alpha];

  return v4;
}

+ (UIColor)colorWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha
{
  v6 = [objc_allocWithZone(UIDeviceRGBColor) initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];

  return v6;
}

+ (UIColor)colorWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
  v6 = [objc_allocWithZone(UIDeviceRGBColor) initWithRed:red green:green blue:blue alpha:alpha];

  return v6;
}

+ (UIColor)colorWithCGColor:(CGColorRef)cgColor
{
  v10 = *MEMORY[0x1E69E9840];
  if (cgColor)
  {
    v4 = CFGetTypeID(cgColor);
    if (v4 == CGColorGetTypeID())
    {
LABEL_5:
      v5 = _WrapCGColorWithUIColor(cgColor);
      goto LABEL_9;
    }

    if (dyld_program_sdk_at_least())
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Passing argument that is not a CGColor to %s", "+[UIColor colorWithCGColor:]"}];
      goto LABEL_5;
    }

    v6 = *(__UILogGetCategoryCachedImpl("Color", &colorWithCGColor____s_category) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = "+[UIColor colorWithCGColor:]";
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Passing argument that is not a CGColor to %s. This will cause an exception to be thrown in the future.", buf, 0xCu);
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (UIColor)colorWithPatternImage:(UIImage *)image
{
  v3 = image;
  v4 = [objc_allocWithZone(UIColor) initWithPatternImage:v3];

  return v4;
}

+ (UIColor)colorWithCIColor:(CIColor *)ciColor
{
  v3 = ciColor;
  v4 = [objc_allocWithZone(UIColor) initWithCIColor:v3];

  return v4;
}

+ (UIColor)colorWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
  v6 = [objc_allocWithZone(UIColor) initWithDisplayP3Red:displayP3Red green:green blue:blue alpha:alpha];

  return v6;
}

+ (id)_systemColorWithName:(id)a3
{
  v5 = a3;
  v6 = _selectorForColorName(v5);
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"UIColor.m" lineNumber:1934 description:{@"Invalid system color name: %@", v5}];
  }

  v7 = [a1 performSelector:v6];

  return v7;
}

+ (id)_systemColorWithUnvalidatedName:(id)a3
{
  v4 = _selectorForColorName(a3);
  if (v4)
  {
    v4 = [a1 performSelector:v4];
  }

  return v4;
}

+ (id)_systemColorForColor:(void *)a3 withName:
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc(objc_opt_class());
  v7 = [v5 CGColor];

  v8 = [v6 initWithCGColor:v7];
  [v8 _setSystemColorName:v4];

  return v8;
}

+ (id)_composedColorFromSourceColor:(void *)a3 destinationColor:(void *)a4 tintColor:(void *)a5 alpha:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_self();
  if (!v9)
  {
    v9 = +[UIColor whiteColor];
  }

  v26 = 0.0;
  v27 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  [v8 getRed:&v27 green:&v26 blue:&v25 alpha:&v24];
  [v9 getRed:&v23 green:&v22 blue:&v21 alpha:&v20];
  v11 = v27 * v20 + v23 * (1.0 - v24);
  v12 = v20 * v26 + (1.0 - v24) * v22;
  v13 = v20 * v25 + (1.0 - v24) * v21;
  if (v10)
  {
    v18 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    [v10 getRed:&v19 green:&v18 blue:&v17 alpha:&v16];
    v11 = v19 + v11 * (1.0 - v16);
    v12 = v18 + v12 * (1.0 - v16);
    v13 = v17 + v13 * (1.0 - v16);
  }

  v14 = [UIColor colorWithRed:v11 green:v12 blue:v13 alpha:a1];

  return v14;
}

+ (id)_accessibilityDarkenedColorForColor:(id)a3
{
  v3 = a3;
  if ([v3 _isDynamic])
  {
    v4 = [v3 _highContrastDynamicColor];
    goto LABEL_16;
  }

  v5 = v3;
  objc_opt_self();
  v6 = [v5 _systemColorName];

  if (v6 && [v6 length] >= 8 && objc_msgSend(v6, "hasPrefix:", @"system"))
  {
    v7 = [v6 substringFromIndex:6];
    v8 = [@"systemDark" stringByAppendingString:v7];

    v9 = _selectorForColorName(v8);
    if (v9)
    {
      v10 = [UIColor performSelector:v9];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v16 = v10;
      v4 = v16;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v23 = 0.0;
  v24 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
  [v5 getRed:&v24 green:&v23 blue:&v22 alpha:&v21];
  *v11.i64 = v24;
  *v12.i64 = v23;
  if (fabs(v24 + -1.0) <= 0.001)
  {
    v13 = v22;
    if (fabs(v23 + -1.0) <= 0.001 && fabs(v22 + -1.0) <= 0.001)
    {
      v15 = v5;
      goto LABEL_14;
    }
  }

  else
  {
    v13 = v22;
  }

  v19 = 0.0;
  v20 = 0.0;
  v18 = 0.0;
  _NXRGBToHSB(&v20, &v19, &v18, v11, v12, v13);
  v14 = [UIColor alloc];
  v15 = [(UIColor *)v14 initWithHue:v20 saturation:v19 brightness:v18 * 0.8 alpha:v21];
LABEL_14:
  v4 = v15;
  v16 = 0;
LABEL_15:

LABEL_16:

  return v4;
}

+ (id)_accessibilityLightenedColorForColor:(id)a3
{
  v3 = a3;
  if ([v3 _isDynamic])
  {
    v4 = [v3 _highContrastDynamicColor];
  }

  else
  {
    v18 = 0;
    v16 = 0.0;
    v17 = 0;
    v15 = 0.0;
    [v3 getRed:&v18 green:&v17 blue:&v16 alpha:&v15];

    v13 = 0.0;
    v14 = 0.0;
    v12 = 0.0;
    v5.i64[0] = v18;
    v6.i64[0] = v17;
    _NXRGBToHSB(&v14, &v13, &v12, v5, v6, v16);
    if (v12 == 0.0)
    {
      v7 = 1.25;
    }

    else
    {
      v7 = fmax(1.0 / v12, 1.0);
      if (v7 > 1.25)
      {
        v7 = 1.25;
      }
    }

    v8 = v12 * v7;
    v9 = v13 * (v7 + -1.25 + 1.0);
    v10 = [UIColor alloc];
    v4 = [(UIColor *)v10 initWithHue:v14 saturation:v9 brightness:v8 alpha:v15];
  }

  return v4;
}

+ (id)_disabledColorForColor:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = objc_getAssociatedObject(v2, &_MergedGlobals_29_2);
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __34__UIColor__disabledColorForColor___block_invoke;
      v10[3] = &unk_1E70F3870;
      v6 = v2;
      v11 = v6;
      v7 = [UIColor colorWithDynamicProvider:v10];
      objc_setAssociatedObject(v6, &_MergedGlobals_29_2, v7, 1);
      v4 = v7;
    }
  }

  else
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Caller passed nil color for deriving a disabled color.", buf, 2u);
      }
    }

    else
    {
      v5 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B320) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Caller passed nil color for deriving a disabled color.", buf, 2u);
      }
    }

    v4 = 0;
  }

  return v4;
}

id __34__UIColor__disabledColorForColor___block_invoke(uint64_t a1, void *a2)
{
  v9 = 0.0;
  v10 = 0.0;
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 resolvedColorWithTraitCollection:v3];
  v5 = v4;
  if (v4)
  {
    [v4 getWhite:&v10 alpha:&v9];
  }

  v6 = [v3 userInterfaceStyle] == 2;
  v7 = [UIColor colorWithWhite:v10 alpha:dbl_18A67C2D0[v6] * v9];

  return v7;
}

+ (id)_dynamicCatalogColorForNibEncodingWithName:(id)a3 genericColor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [UIDynamicCatalogColor alloc];
  v9 = v7;
  v10 = v6;
  v11 = v10;
  if (!v8)
  {
    goto LABEL_6;
  }

  if (v9)
  {
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:sel__initForNibEncodingWithName_genericColor_ object:v8 file:@"UIColor.m" lineNumber:5067 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];

    if (v11)
    {
      goto LABEL_4;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:sel__initForNibEncodingWithName_genericColor_ object:v8 file:@"UIColor.m" lineNumber:5068 description:{@"Invalid parameter not satisfying: %@", @"genericColor != nil"}];

LABEL_4:
  v16.receiver = v8;
  v16.super_class = UIDynamicCatalogColor;
  v12 = objc_msgSendSuper2(&v16, sel_init);
  v8 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 3, a3);
    objc_storeStrong(&v8->_genericColor, a4);
  }

LABEL_6:

  return v8;
}

- (UIColor)initWithWhite:(CGFloat)white alpha:(CGFloat)alpha
{
  v6 = objc_allocWithZone(UIDeviceWhiteColor);

  return [v6 initWithWhite:white alpha:alpha];
}

- (UIColor)initWithHue:(CGFloat)hue saturation:(CGFloat)saturation brightness:(CGFloat)brightness alpha:(CGFloat)alpha
{
  v10 = objc_allocWithZone(UIDeviceRGBColor);

  return [v10 initWithHue:hue saturation:saturation brightness:brightness alpha:alpha];
}

- (UIColor)initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
  v10 = objc_allocWithZone(UIDeviceRGBColor);

  return [v10 initWithRed:red green:green blue:blue alpha:alpha];
}

- (UIColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 linearExposure:(double)a7
{
  if (qword_1ED49BF20 != -1)
  {
    dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
  }

  v8 = _UICreateBoostedRGBColor();

  return v8;
}

+ (UIColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 linearExposure:(double)a7
{
  if (qword_1ED49BF20 != -1)
  {
    dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
  }

  return _UICreateBoostedRGBColor();
}

- (UIColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 exposure:(double)a7
{
  v12 = 0.0;
  if (a7 >= 0.0)
  {
    v12 = a7;
  }

  v13 = exp2(v12);

  return [(UIColor *)self initWithRed:a3 green:a4 blue:a5 alpha:a6 linearExposure:v13];
}

+ (UIColor)colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 exposure:(double)a7
{
  v12 = 0.0;
  if (a7 >= 0.0)
  {
    v12 = a7;
  }

  v13 = exp2(v12);

  return [a1 colorWithRed:a3 green:a4 blue:a5 alpha:a6 linearExposure:v13];
}

- (id)_initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 boost:(double)a7
{
  if (qword_1ED49BF20 != -1)
  {
    dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
  }

  v8 = _UICreateBoostedRGBColor();

  return v8;
}

+ (id)_colorWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6 boost:(double)a7
{
  if (qword_1ED49BF20 != -1)
  {
    dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
  }

  return _UICreateBoostedRGBColor();
}

- (id)colorByApplyingContentHeadroom:(double)a3
{
  if (a3 >= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  if ([(UIColor *)self _isDynamic])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__UIColor_colorByApplyingContentHeadroom___block_invoke;
    v7[3] = &unk_1E710BCA0;
    v7[4] = self;
    *&v7[5] = v4;
    v5 = [UIColor colorWithDynamicProvider:v7];
  }

  else
  {
    v5 = _UIApplyHeadroom(self, v4);
  }

  return v5;
}

id __42__UIColor_colorByApplyingContentHeadroom___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) resolvedColorWithTraitCollection:a2];
  v4 = _UIApplyHeadroom(v3, *(a1 + 40));

  return v4;
}

- (double)linearExposure
{
  [(UIColor *)self _contentHeadroom];
  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

- (UIColor)standardDynamicRangeColor
{
  if ([(UIColor *)self _isDynamic])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __36__UIColor_standardDynamicRangeColor__block_invoke;
    v5[3] = &unk_1E70F3870;
    v5[4] = self;
    v3 = [UIColor colorWithDynamicProvider:v5];
  }

  else
  {
    v3 = _UIUnExposeColor(self);
  }

  return v3;
}

id __36__UIColor_standardDynamicRangeColor__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) resolvedColorWithTraitCollection:a2];
  v3 = _UIUnExposeColor(v2);

  return v3;
}

- (UIColor)initWithCGColor:(CGColorRef)cgColor
{
  if (!cgColor)
  {
    return 0;
  }

  _WrapCGColorWithUIColor(cgColor);
  return objc_claimAutoreleasedReturnValue();
}

- (UIColor)initWithPatternImage:(UIImage *)image
{
  v4 = image;

  v5 = [[UIDynamicPatternColor alloc] initWithPatternImage:v4];
  return &v5->super.super;
}

- (UIColor)initWithCIColor:(CIColor *)ciColor
{
  v4 = ciColor;

  v5 = [objc_allocWithZone(UICIColor) initWithCIColor:v4];
  return v5;
}

- (UIColor)initWithDisplayP3Red:(CGFloat)displayP3Red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha
{
  v10 = objc_allocWithZone(UIDisplayP3Color);

  return [v10 initWithDisplayP3Red:displayP3Red green:green blue:blue alpha:alpha];
}

- (UIColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIDynamicModifiedBaseColor"];
  v6 = v5;
  if (!v5 || ![v5 _isDynamic])
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIDynamicCatalogName"];
    if ([v11 length])
    {
      if ([v4 decodeBoolForKey:@"UIDynamicCatalogUseNibBundle"])
      {
        v12 = UIResourceBundleForNIBBeingDecodedWithCoder(v4);
      }

      else
      {
        v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIDynamicCatalogBundleIdentifier"];
        v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UIDynamicCatalogBundleLibraryName"];
        v12 = [MEMORY[0x1E696AAE8] _bundleWithIdentifier:v13 andLibraryName:v14];
      }

      v15 = [UIColor colorNamed:v11 inBundle:v12 compatibleWithTraitCollection:0];

      if (v15)
      {
        goto LABEL_40;
      }
    }

    if (!qword_1ED49B328)
    {
      v16 = MEMORY[0x1E695DFD8];
      v17 = objc_opt_class();
      v18 = objc_opt_class();
      v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
      v20 = qword_1ED49B328;
      qword_1ED49B328 = v19;
    }

    v21 = [v4 decodeObjectOfClasses:? forKey:?];
    if ([v21 count])
    {
      v15 = [[UIDynamicAppDefinedColor alloc] initWithColorsByTraitCollection:v21];
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UISystemColorName"];
    v23 = v22;
    if (v22)
    {
      v24 = _selectorForColorName(v22);
      if (v24)
      {
        v25 = v24;
        if (objc_opt_respondsToSelector())
        {
          v26 = [UIColor performSelector:v25];

LABEL_38:
          self = v26;

          v15 = self;
          goto LABEL_39;
        }
      }

      else if (([v4 containsValueForKey:@"UIColorComponentCount"] & 1) == 0)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A490] format:{@"Unknown system color name: %@", v23}];
      }
    }

    v27 = _UIColorDecodeComponentForKey(v4, @"UIHeadroom", @"UIHeadroom-Double");
    v28 = [v4 decodeIntForKey:@"UIColorComponentCount"];
    v29 = 1.0;
    if (v27 > 1.0)
    {
      if (v28 == 2)
      {
        _UIColorDecodeComponentForKey(v4, @"UIWhite", @"UIWhite-Double");
      }

      else
      {
        if (v28 != 4)
        {
LABEL_31:
          if (qword_1ED49BF20 != -1)
          {
            dispatch_once(&qword_1ED49BF20, &__block_literal_global_2257);
          }

          v34 = CGColorCreateWithContentHeadroom();
          v26 = [[UICGColor alloc] initWithCGColor:v34];

          CFRelease(v34);
          goto LABEL_38;
        }

        _UIColorDecodeComponentForKey(v4, @"UIRed", @"UIRed-Double");
        _UIColorDecodeComponentForKey(v4, @"UIGreen", @"UIGreen-Double");
        _UIColorDecodeComponentForKey(v4, @"UIBlue", @"UIBlue-Double");
      }

      _UIColorDecodeComponentForKey(v4, @"UIAlpha", @"UIAlpha-Double");
      goto LABEL_31;
    }

    if (v28 == 2)
    {
      v35 = _UIColorDecodeComponentForKey(v4, @"UIWhite", @"UIWhite-Double");
      v36 = _UIColorDecodeComponentForKey(v4, @"UIAlpha", @"UIAlpha-Double");
      v37 = self;
      v29 = v35;
    }

    else
    {
      if (v28 == 4)
      {
        v30 = _UIColorDecodeComponentForKey(v4, @"UIRed", @"UIRed-Double");
        v31 = _UIColorDecodeComponentForKey(v4, @"UIGreen", @"UIGreen-Double");
        v32 = _UIColorDecodeComponentForKey(v4, @"UIBlue", @"UIBlue-Double");
        v33 = [(UIColor *)self initWithRed:v30 green:v31 blue:v32 alpha:_UIColorDecodeComponentForKey(v4, @"UIAlpha", @"UIAlpha-Double")];
LABEL_37:
        v26 = v33;
        goto LABEL_38;
      }

      v36 = 0.0;
      v37 = self;
    }

    v33 = [(UIColor *)v37 initWithWhite:v29 alpha:v36];
    goto LABEL_37;
  }

  [v4 decodeDoubleForKey:@"UIDynamicModifiedAlphaComponent"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"UIDynamicModifiedContrast"];
  if ([v4 containsValueForKey:@"UIDynamicModifiedProminence"])
  {
    v10 = [v4 decodeIntegerForKey:@"UIDynamicModifiedProminence"];
  }

  else
  {
    v10 = -1;
  }

  v15 = [[UIDynamicModifiedColor alloc] initWithBaseColor:v6 alphaComponent:v9 contrast:v10 prominence:v8];
LABEL_41:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UIColor *)self _systemColorName];
  if (v6)
  {
    [v5 encodeObject:v6 forKey:@"UISystemColorName"];
  }

  v7 = [(UIColor *)self cgColor];
  NumberOfComponents = CGColorGetNumberOfComponents(v7);
  [v5 encodeInt:NumberOfComponents forKey:@"UIColorComponentCount"];
  [(UIColor *)self _contentHeadroom];
  if (v9 > 1.0)
  {
    _UIColorEncodeComponentForKey(v5, @"UIHeadroom", @"UIHeadroom-Double", v9);
  }

  if (NumberOfComponents == 2)
  {
    v18 = 0.0;
    if (v7)
    {
      Components = CGColorGetComponents(v7);
      Alpha = CGColorGetAlpha(v7);
      ColorSpace = CGColorGetColorSpace(v7);
      v22 = 0.0;
      if (Components)
      {
        v23 = ColorSpace;
        v34 = 0uLL;
        if (qword_1ED49BEC0 != -1)
        {
          dispatch_once(&qword_1ED49BEC0, &__block_literal_global_2243);
        }

        if (qword_1ED49BEB8 != v23)
        {
          if (qword_1ED49BEE0 != -1)
          {
            dispatch_once(&qword_1ED49BEE0, &__block_literal_global_2247);
          }

          if (qword_1ED49BED8 != v23)
          {
            UISCreateCachedColorTransform();
            if (!CGColorTransformConvertColorComponents())
            {
              CGColorTransformRelease();
              goto LABEL_36;
            }

            *(&v34 + 1) = Alpha;
            CGColorTransformRelease();
            Components = &v34;
          }
        }

        v18 = *Components;
        v22 = Components[1];
      }
    }

    else
    {
      v22 = 0.0;
    }

LABEL_36:
    _UIColorEncodeComponentForKey(v5, @"UIWhite", @"UIWhite-Double", v18);
    _UIColorEncodeComponentForKey(v5, @"UIAlpha", @"UIAlpha-Double", v22);
    v30 = v5;
    if (v22 == 1.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3g", *&v18, v32];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3g %.3g", *&v18, *&v22];
    }
    v27 = ;
    v28 = @"NSWhite";
    v29 = 4;
    goto LABEL_40;
  }

  if (NumberOfComponents == 4)
  {
    v10 = 0.0;
    if (v7)
    {
      v11 = CGColorGetComponents(v7);
      v12 = CGColorGetAlpha(v7);
      v13 = CGColorGetColorSpace(v7);
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
      if (v11)
      {
        v17 = v13;
        v34 = 0u;
        v35 = 0u;
        if (qword_1ED49BED0 != -1)
        {
          dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
        }

        if (qword_1ED49BEC8 != v17)
        {
          if (qword_1ED49BF00 != -1)
          {
            dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
          }

          if (qword_1ED49BEF8 != v17)
          {
            UISCreateCachedColorTransform();
            if (!CGColorTransformConvertColorComponents())
            {
              CGColorTransformRelease();
              goto LABEL_31;
            }

            *(&v35 + 1) = v12;
            CGColorTransformRelease();
            v11 = &v34;
          }
        }

        v10 = *v11;
        v14 = v11[1];
        v15 = v11[2];
        v16 = v11[3];
      }
    }

    else
    {
      v14 = 0.0;
      v15 = 0.0;
      v16 = 0.0;
    }

LABEL_31:
    _UIColorEncodeComponentForKey(v5, @"UIRed", @"UIRed-Double", v10);
    _UIColorEncodeComponentForKey(v5, @"UIGreen", @"UIGreen-Double", v14);
    _UIColorEncodeComponentForKey(v5, @"UIBlue", @"UIBlue-Double", v15);
    _UIColorEncodeComponentForKey(v5, @"UIAlpha", @"UIAlpha-Double", v16);
    v26 = v5;
    if (v16 == 1.0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3g %.3g %.3g", *&v10, *&v14, *&v15, v33, v34, v35];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%.3g %.3g %.3g %.3g", *&v10, *&v14, *&v15, *&v16, v34, v35];
    }
    v27 = ;
    v28 = @"NSRGB";
    v29 = 2;
LABEL_40:
    v31 = [v27 UTF8String];
    [v5 encodeBytes:v31 length:strlen(v31) forKey:v28];
    [v5 encodeInteger:v29 forKey:@"NSColorSpace"];

    goto LABEL_41;
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"UIColor.m" lineNumber:2529 description:@"Only RGBA or White color spaces are supported in this situation."];

  v25 = v5;
LABEL_41:
}

+ (UIColor)darkGrayColor
{
  if (qword_1ED49B348 != -1)
  {
    dispatch_once(&qword_1ED49B348, &__block_literal_global_1238);
  }

  v3 = qword_1ED49B340;

  return v3;
}

void __24__UIColor_darkGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.333333333 alpha:1.0];
  v1 = qword_1ED49B340;
  qword_1ED49B340 = v0;

  v2 = qword_1ED49B340;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"darkGrayColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)cyanColor
{
  if (qword_1ED49B3C8 != -1)
  {
    dispatch_once(&qword_1ED49B3C8, &__block_literal_global_1263);
  }

  v3 = qword_1ED49B3C0;

  return v3;
}

void __20__UIColor_cyanColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:1.0 blue:1.0 alpha:1.0];
  v1 = qword_1ED49B3C0;
  qword_1ED49B3C0 = v0;

  v2 = qword_1ED49B3C0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cyanColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)magentaColor
{
  if (qword_1ED49B3E8 != -1)
  {
    dispatch_once(&qword_1ED49B3E8, &__block_literal_global_1269);
  }

  v3 = qword_1ED49B3E0;

  return v3;
}

void __23__UIColor_magentaColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.0 blue:1.0 alpha:1.0];
  v1 = qword_1ED49B3E0;
  qword_1ED49B3E0 = v0;

  v2 = qword_1ED49B3E0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"magentaColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)purpleColor
{
  if (qword_1ED49B408 != -1)
  {
    dispatch_once(&qword_1ED49B408, &__block_literal_global_1275);
  }

  v3 = qword_1ED49B400;

  return v3;
}

void __22__UIColor_purpleColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.5 green:0.0 blue:0.5 alpha:1.0];
  v1 = qword_1ED49B400;
  qword_1ED49B400 = v0;

  v2 = qword_1ED49B400;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"purpleColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)brownColor
{
  if (qword_1ED49B418 != -1)
  {
    dispatch_once(&qword_1ED49B418, &__block_literal_global_1278);
  }

  v3 = qword_1ED49B410;

  return v3;
}

void __21__UIColor_brownColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.6 green:0.4 blue:0.2 alpha:1.0];
  v1 = qword_1ED49B410;
  qword_1ED49B410 = v0;

  v2 = qword_1ED49B410;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"brownColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellGroupedBackgroundColorLegacyWhite
{
  if (qword_1ED49B428 != -1)
  {
    dispatch_once(&qword_1ED49B428, &__block_literal_global_1281_0);
  }

  v3 = qword_1ED49B420;

  return v3;
}

void __53__UIColor_tableCellGroupedBackgroundColorLegacyWhite__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v1 = qword_1ED49B420;
  qword_1ED49B420 = v0;

  v2 = qword_1ED49B420;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellGroupedBackgroundColorLegacyWhite"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellBackgroundColor
{
  if (qword_1ED49B438 != -1)
  {
    dispatch_once(&qword_1ED49B438, &__block_literal_global_1284);
  }

  v3 = qword_1ED49B430;

  return v3;
}

void __35__UIColor_tableCellBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v1 = qword_1ED49B430;
  qword_1ED49B430 = v0;

  v2 = qword_1ED49B430;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellbackgroundColorCarPlay
{
  if (qword_1ED49B448 != -1)
  {
    dispatch_once(&qword_1ED49B448, &__block_literal_global_1287);
  }

  v3 = qword_1ED49B440;

  return v3;
}

void __42__UIColor_tableCellbackgroundColorCarPlay__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  v1 = qword_1ED49B440;
  qword_1ED49B440 = v0;

  v2 = qword_1ED49B440;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellbackgroundColorCarPlay"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableSelectionGradientStartColor
{
  if (qword_1ED49B458 != -1)
  {
    dispatch_once(&qword_1ED49B458, &__block_literal_global_1290);
  }

  v3 = qword_1ED49B450;

  return v3;
}

void __43__UIColor_tableSelectionGradientStartColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.02 green:0.55 blue:0.96 alpha:1.0];
  v1 = qword_1ED49B450;
  qword_1ED49B450 = v0;

  v2 = qword_1ED49B450;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableSelectionGradientStartColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableSelectionGradientEndColor
{
  if (qword_1ED49B468 != -1)
  {
    dispatch_once(&qword_1ED49B468, &__block_literal_global_1293);
  }

  v3 = qword_1ED49B460;

  return v3;
}

void __41__UIColor_tableSelectionGradientEndColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.04 green:0.37 blue:0.91 alpha:1.0];
  v1 = qword_1ED49B460;
  qword_1ED49B460 = v0;

  v2 = qword_1ED49B460;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableSelectionGradientEndColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableShadowColor
{
  if (qword_1ED49B478 != -1)
  {
    dispatch_once(&qword_1ED49B478, &__block_literal_global_1296);
  }

  v3 = qword_1ED49B470;

  return v3;
}

void __27__UIColor_tableShadowColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:0.91];
  v1 = qword_1ED49B470;
  qword_1ED49B470 = v0;

  v2 = qword_1ED49B470;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableShadowColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableGroupedTopShadowColor
{
  if (qword_1ED49B488 != -1)
  {
    dispatch_once(&qword_1ED49B488, &__block_literal_global_1299);
  }

  v3 = qword_1ED49B480;

  return v3;
}

void __37__UIColor_tableGroupedTopShadowColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.08];
  v1 = qword_1ED49B480;
  qword_1ED49B480 = v0;

  v2 = qword_1ED49B480;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableGroupedTopShadowColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)sectionListBorderColor
{
  if (qword_1ED49B498 != -1)
  {
    dispatch_once(&qword_1ED49B498, &__block_literal_global_1302_0);
  }

  v3 = qword_1ED49B490;

  return v3;
}

void __33__UIColor_sectionListBorderColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.52 green:0.56 blue:0.58 alpha:0.8];
  v1 = qword_1ED49B490;
  qword_1ED49B490 = v0;

  v2 = qword_1ED49B490;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sectionListBorderColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)sectionHeaderBackgroundColor
{
  if (qword_1ED49B4A8 != -1)
  {
    dispatch_once(&qword_1ED49B4A8, &__block_literal_global_1305);
  }

  v3 = qword_1ED49B4A0;

  return v3;
}

void __39__UIColor_sectionHeaderBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.9 green:0.93 blue:0.99 alpha:0.8];
  v1 = qword_1ED49B4A0;
  qword_1ED49B4A0 = v0;

  v2 = qword_1ED49B4A0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sectionHeaderBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)sectionHeaderOpaqueBackgroundColor
{
  if (qword_1ED49B4B8 != -1)
  {
    dispatch_once(&qword_1ED49B4B8, &__block_literal_global_1308);
  }

  v3 = qword_1ED49B4B0;

  return v3;
}

void __45__UIColor_sectionHeaderOpaqueBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.92 green:0.94 blue:0.99 alpha:1.0];
  v1 = qword_1ED49B4B0;
  qword_1ED49B4B0 = v0;

  v2 = qword_1ED49B4B0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sectionHeaderOpaqueBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)sectionHeaderBorderColor
{
  if (qword_1ED49B4C8 != -1)
  {
    dispatch_once(&qword_1ED49B4C8, &__block_literal_global_1311_0);
  }

  v3 = qword_1ED49B4C0;

  return v3;
}

void __35__UIColor_sectionHeaderBorderColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.85 green:0.87 blue:0.91 alpha:1.0];
  v1 = qword_1ED49B4C0;
  qword_1ED49B4C0 = v0;

  v2 = qword_1ED49B4C0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"sectionHeaderBorderColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellValue1BlueColor
{
  if (qword_1ED49B4D8 != -1)
  {
    dispatch_once(&qword_1ED49B4D8, &__block_literal_global_1314);
  }

  v3 = qword_1ED49B4D0;

  return v3;
}

void __35__UIColor_tableCellValue1BlueColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.22 green:0.33 blue:0.53 alpha:1.0];
  v1 = qword_1ED49B4D0;
  qword_1ED49B4D0 = v0;

  v2 = qword_1ED49B4D0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellValue1BlueColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellValue2BlueColor
{
  if (qword_1ED49B4E8 != -1)
  {
    dispatch_once(&qword_1ED49B4E8, &__block_literal_global_1317);
  }

  v3 = qword_1ED49B4E0;

  return v3;
}

void __35__UIColor_tableCellValue2BlueColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.32 green:0.4 blue:0.57 alpha:1.0];
  v1 = qword_1ED49B4E0;
  qword_1ED49B4E0 = v0;

  v2 = qword_1ED49B4E0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellValue2BlueColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellGrayTextColor
{
  if (qword_1ED49B4F8 != -1)
  {
    dispatch_once(&qword_1ED49B4F8, &__block_literal_global_1320);
  }

  v3 = qword_1ED49B4F0;

  return v3;
}

void __33__UIColor_tableCellGrayTextColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.5 green:0.5 blue:0.5 alpha:1.0];
  v1 = qword_1ED49B4F0;
  qword_1ED49B4F0 = v0;

  v2 = qword_1ED49B4F0;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellGrayTextColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)textFieldAtomPurpleColor
{
  if (qword_1ED49B508 != -1)
  {
    dispatch_once(&qword_1ED49B508, &__block_literal_global_1323);
  }

  v3 = qword_1ED49B500;

  return v3;
}

void __35__UIColor_textFieldAtomPurpleColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.41 green:0.0 blue:0.74 alpha:1.0];
  v1 = qword_1ED49B500;
  qword_1ED49B500 = v0;

  v2 = qword_1ED49B500;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textFieldAtomPurpleColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)infoTextOverPinStripeTextColor
{
  if (qword_1ED49B518 != -1)
  {
    dispatch_once(&qword_1ED49B518, &__block_literal_global_1326);
  }

  v3 = qword_1ED49B510;

  return v3;
}

void __41__UIColor_infoTextOverPinStripeTextColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.3 green:0.34 blue:0.42 alpha:1.0];
  v1 = qword_1ED49B510;
  qword_1ED49B510 = v0;

  v2 = qword_1ED49B510;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"infoTextOverPinStripeTextColor"];
  [v2 _setSystemColorName:v3];
}

- (void)_setSystemColorName:(id)a3
{
  v6 = a3;
  systemColorName = self->_systemColorName;
  if (systemColorName)
  {
    v10 = v6;
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIColor.m" lineNumber:2763 description:{@"can only set the system color name of a color once, but attempting to change %@ from %@ to %@", self, self->_systemColorName, v10}];

    v6 = v10;
    systemColorName = self->_systemColorName;
  }

  if (systemColorName != v6)
  {
    v9 = v6;
    objc_storeStrong(&self->_systemColorName, a3);
    v6 = v9;
  }
}

- (id)_debugName
{
  v3 = [(UIColor *)self _systemColorName];
  if (!v3)
  {
    v3 = objc_getAssociatedObject(self, &_debugName_key);
  }

  return v3;
}

- (BOOL)_isSimilarToColor:(id)a3 withinPercentage:(double)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    goto LABEL_42;
  }

  if (a4 < 0.00000011920929)
  {
    LOBYTE(self) = [(UIColor *)self isEqual:v6];
    goto LABEL_43;
  }

  v7 = [(UIColor *)self CGColor];
  self = [v6 CGColor];
  ColorSpace = CGColorGetColorSpace(v7);
  if (ColorSpace != CGColorGetColorSpace(self))
  {
    v9 = 0.0;
    if (v7)
    {
      Components = CGColorGetComponents(v7);
      Alpha = CGColorGetAlpha(v7);
      v12 = CGColorGetColorSpace(v7);
      if (Components)
      {
        v13 = v12;
        v32 = 0u;
        v33 = 0u;
        if (qword_1ED49BED0 != -1)
        {
          dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
        }

        if (qword_1ED49BEC8 == v13)
        {
          goto LABEL_15;
        }

        if (qword_1ED49BF00 != -1)
        {
          dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
        }

        if (qword_1ED49BEF8 == v13)
        {
LABEL_15:
          v14 = 0;
          v9 = *Components;
          v15 = Components[1];
          v17 = Components[2];
          v16 = Components[3];
          if (!self)
          {
            goto LABEL_43;
          }

          goto LABEL_27;
        }

        UISCreateCachedColorTransform();
        if (CGColorTransformConvertColorComponents())
        {
          *(&v33 + 1) = Alpha;
          CGColorTransformRelease();
          Components = &v32;
          goto LABEL_15;
        }

        CGColorTransformRelease();
      }
    }

    v14 = 1;
    v15 = 0.0;
    v17 = 0.0;
    v16 = 0.0;
    if (!self)
    {
      goto LABEL_43;
    }

LABEL_27:
    v24 = CGColorGetComponents(self);
    v25 = CGColorGetAlpha(self);
    v26 = CGColorGetColorSpace(self);
    if (v24)
    {
      v27 = v26;
      v32 = 0u;
      v33 = 0u;
      if (qword_1ED49BED0 != -1)
      {
        dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
      }

      if (qword_1ED49BEC8 != v27)
      {
        if (qword_1ED49BF00 != -1)
        {
          dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
        }

        if (qword_1ED49BEF8 != v27)
        {
          UISCreateCachedColorTransform();
          if (!CGColorTransformConvertColorComponents())
          {
            CGColorTransformRelease();
            goto LABEL_42;
          }

          *(&v33 + 1) = v25;
          CGColorTransformRelease();
          v24 = &v32;
        }
      }

      if ((v14 & 1) == 0 && vabdd_f64(v9, *v24) <= a4 && vabdd_f64(v15, v24[1]) <= a4 && vabdd_f64(v17, v24[2]) <= a4)
      {
        LOBYTE(self) = vabdd_f64(v16, v24[3]) <= a4;
        goto LABEL_43;
      }
    }

LABEL_42:
    LOBYTE(self) = 0;
    goto LABEL_43;
  }

  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  NumberOfComponents = CGColorGetNumberOfComponents(v7);
  v20 = CGColorGetNumberOfComponents(self);
  if (has_internal_diagnostics)
  {
    if (NumberOfComponents != v20)
    {
      v29 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v32) = 0;
        _os_log_fault_impl(&dword_188A29000, v29, OS_LOG_TYPE_FAULT, "Colors in the same space should have the same number of components", &v32, 2u);
      }
    }
  }

  else if (NumberOfComponents != v20)
  {
    v30 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B540) + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Colors in the same space should have the same number of components", &v32, 2u);
    }
  }

  v21 = CGColorGetComponents(v7);
  v22 = CGColorGetComponents(self);
  if (CGColorGetNumberOfComponents(v7))
  {
    v23 = 0;
    LOBYTE(self) = 1;
    do
    {
      LOBYTE(self) = self & (vabdd_f64(v21[v23], v22[v23]) <= a4);
      ++v23;
    }

    while (CGColorGetNumberOfComponents(v7) > v23);
  }

  else
  {
    LOBYTE(self) = 1;
  }

LABEL_43:

  return self;
}

- (double)_colorDifferenceFromColor:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIColor *)self CGColor];
  v6 = 0.0;
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = v5;
  Components = CGColorGetComponents(v5);
  Alpha = CGColorGetAlpha(v7);
  ColorSpace = CGColorGetColorSpace(v7);
  if (!Components)
  {
    goto LABEL_13;
  }

  v11 = ColorSpace;
  v24 = 0u;
  v25 = 0u;
  if (qword_1ED49BED0 != -1)
  {
    dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
  }

  if (qword_1ED49BEC8 == v11)
  {
    goto LABEL_11;
  }

  if (qword_1ED49BF00 != -1)
  {
    dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
  }

  if (qword_1ED49BEF8 == v11)
  {
    goto LABEL_11;
  }

  UISCreateCachedColorTransform();
  if (!CGColorTransformConvertColorComponents())
  {
    CGColorTransformRelease();
LABEL_13:
    v12 = 1;
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    goto LABEL_14;
  }

  *(&v25 + 1) = Alpha;
  CGColorTransformRelease();
  Components = &v24;
LABEL_11:
  v12 = 0;
  v13 = *Components;
  v14 = Components[1];
  v15 = Components[2];
  v16 = Components[3];
LABEL_14:
  v17 = [v4 CGColor];
  if (v17)
  {
    v18 = v17;
    v19 = CGColorGetComponents(v17);
    v20 = CGColorGetAlpha(v18);
    v21 = CGColorGetColorSpace(v18);
    if (v19)
    {
      v22 = v21;
      v24 = 0u;
      v25 = 0u;
      if (qword_1ED49BED0 != -1)
      {
        dispatch_once(&qword_1ED49BED0, &__block_literal_global_2245);
      }

      if (qword_1ED49BEC8 != v22)
      {
        if (qword_1ED49BF00 != -1)
        {
          dispatch_once(&qword_1ED49BF00, &__block_literal_global_2251);
        }

        if (qword_1ED49BEF8 != v22)
        {
          UISCreateCachedColorTransform();
          if (!CGColorTransformConvertColorComponents())
          {
            CGColorTransformRelease();
            goto LABEL_27;
          }

          *(&v25 + 1) = v20;
          CGColorTransformRelease();
          v19 = &v24;
        }
      }

      if ((v12 & 1) == 0)
      {
        v6 = vabdd_f64(v15 * v16, v19[2] * v19[3]) + vabdd_f64(v13 * v16, *v19 * v19[3]) + vabdd_f64(v14 * v16, v19[1] * v19[3]);
      }
    }
  }

LABEL_27:

  return v6;
}

- (double)_luminanceDifferenceFromColor:(id)a3
{
  v4 = a3;
  [(UIColor *)self _luminance];
  v6 = v5;
  [v4 _luminance];
  v8 = v7;

  return vabdd_f64(v6, v8);
}

- (id)_colorBlendedWithColor:(id)a3 compositingFilter:(id)a4
{
  v6 = a4;
  if (!a3 || (v58 = 0.0, v59 = 0.0, v56 = 0.0, v57 = 0.0, [a3 getRed:&v59 green:&v58 blue:&v57 alpha:&v56], fabs(v56) < 2.22044605e-16))
  {
    v7 = self;
    goto LABEL_10;
  }

  v54 = 0.0;
  v55 = 0.0;
  v52 = 0.0;
  v53 = 0.0;
  [(UIColor *)self getRed:&v55 green:&v54 blue:&v53 alpha:&v52];
  v7 = self;
  if (!v6 || ([v6 isEqualToString:*MEMORY[0x1E6979CC0]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6979D40]))
  {
    v8 = 1.0;
    v9 = 1.0 - v56;
    v10 = v56 + (1.0 - v56) * v52;
    v11 = 1.0;
    v12 = 1.0;
    if (fabs(v10) >= 2.22044605e-16)
    {
      v12 = (v56 * v59 + v9 * (v52 * v55)) / v10;
      v11 = (v56 * v58 + v9 * (v52 * v54)) / v10;
      v8 = (v56 * v57 + v9 * (v52 * v53)) / v10;
    }

    goto LABEL_9;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979CA8]])
  {
    v15 = v56;
    v16 = 1.0 - v56;
    v12 = v59 * v55 * v56 + v55 * (1.0 - v56);
    v17 = v53;
    v11 = (1.0 - v56) * v54 + v56 * (v58 * v54);
    v18 = v57 * v53;
LABEL_15:
    v19 = v15 * v18;
    v20 = v16 * v17;
LABEL_27:
    v8 = v20 + v19;
LABEL_9:
    v13 = [UIColor colorWithRed:v12 green:v11 blue:v8 alpha:?];

    v7 = v13;
    goto LABEL_10;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979D18]])
  {
    v21 = v56;
    v22 = 1.0 - v56;
    v12 = v55 * (1.0 - v56) + v56 * (1.0 - (1.0 - v59) * (1.0 - v55));
    v11 = (1.0 - v56) * v54 + v56 * (1.0 - (1.0 - v58) * (1.0 - v54));
    v23 = v53;
    v24 = 1.0 - (1.0 - v57) * (1.0 - v53);
LABEL_18:
    v19 = v21 * v24;
    v20 = v22 * v23;
    goto LABEL_27;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979CD0]])
  {
    v25 = (v59 + v59) * v55;
    if (v55 >= 0.5)
    {
      v25 = 1.0 - (1.0 - v59) * (1.0 - v55 + 1.0 - v55);
    }

    v26 = 1.0 - v56;
    v12 = v25 * v56 + v55 * (1.0 - v56);
    v27 = (v58 + v58) * v54;
    if (v54 >= 0.5)
    {
      v27 = 1.0 - (1.0 - v58) * (1.0 - v54 + 1.0 - v54);
    }

    v11 = v26 * v54 + v56 * v27;
    v28 = 1.0 - (1.0 - v57) * (1.0 - v53 + 1.0 - v53);
    if (v53 < 0.5)
    {
      v28 = (v57 + v57) * v53;
    }

    v19 = v56 * v28;
    v20 = v26 * v53;
    goto LABEL_27;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E69798C0]])
  {
    v29 = v59;
    v15 = v56;
    if (v59 > v55)
    {
      v29 = v55;
    }

    v16 = 1.0 - v56;
    v12 = v56 * v29 + v55 * (1.0 - v56);
    v30 = v58;
    v17 = v53;
    if (v58 > v54)
    {
      v30 = v54;
    }

    v11 = v16 * v54 + v56 * v30;
    v18 = v57;
    if (v57 > v53)
    {
      v18 = v53;
    }

    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979C30]])
  {
    v31 = v59;
    v15 = v56;
    if (v59 < v55)
    {
      v31 = v55;
    }

    v16 = 1.0 - v56;
    v12 = v56 * v31 + v55 * (1.0 - v56);
    v32 = v58;
    v17 = v53;
    if (v58 < v54)
    {
      v32 = v54;
    }

    v11 = v16 * v54 + v56 * v32;
    v18 = v57;
    if (v57 < v53)
    {
      v18 = v53;
    }

    goto LABEL_15;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979860]])
  {
    v33 = 1.0;
    v34 = 1.0;
    if (fabs(v59) >= 2.22044605e-16)
    {
      v34 = v55 / (1.0 - v59);
    }

    v35 = v34 * v56;
    v36 = 1.0 - v56;
    if (fabs(v58) >= 2.22044605e-16)
    {
      v33 = v54 / (1.0 - v58);
    }

    v12 = v35 + v55 * (1.0 - v56);
    v11 = v36 * v54 + v56 * v33;
    v37 = 1.0;
    if (fabs(v57) >= 2.22044605e-16)
    {
      v37 = v53 / (1.0 - v57);
    }

    v19 = v56 * v37;
    v20 = v36 * v53;
    goto LABEL_27;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979850]])
  {
    v38 = v55 * v52;
    v39 = 0.0;
    v40 = 0.0;
    if (fabs(v59) >= 2.22044605e-16)
    {
      v40 = 1.0 - (1.0 - v38) / v59;
    }

    v41 = v40 * v56;
    v42 = 1.0 - v56;
    v43 = v38 * (1.0 - v56);
    v44 = v52 * v54;
    if (fabs(v58) >= 2.22044605e-16)
    {
      v39 = 1.0 - (1.0 - v44) / v58;
    }

    v12 = v41 + v43;
    v11 = v42 * v44 + v56 * v39;
    v45 = v52 * v53;
    v46 = 0.0;
    if (fabs(v57) >= 2.22044605e-16)
    {
      v46 = 1.0 - (1.0 - v45) / v57;
    }

    v8 = v42 * v45 + v56 * v46;
    goto LABEL_9;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979CF8]])
  {
    v21 = v56;
    v22 = 1.0 - v56;
    v12 = v55 * (1.0 - v56) + v56 * fmin(v59 + v55, 1.0);
    v23 = v53;
    v11 = (1.0 - v56) * v54 + v56 * fmin(v58 + v54, 1.0);
    v24 = fmin(v57 + v53, 1.0);
    goto LABEL_18;
  }

  if ([v6 isEqualToString:*MEMORY[0x1E6979CE8]])
  {
    v47 = v56;
    v48 = v52;
    v49 = fmin(fmax(v56 + v52, 0.0), 1.0);
    v50 = UIColorBlendPlusDarker(v59, v55, v56, v52, v49);
    v51 = UIColorBlendPlusDarker(v58, v54, v47, v48, v49);
    v8 = UIColorBlendPlusDarker(v57, v53, v47, v48, v49);
    v12 = v50;
    v11 = v51;
    goto LABEL_9;
  }

LABEL_10:

  return v7;
}

- (id)_colorBlendedWithColors:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v5 = [(UIColor *)v10 _colorBlendedWithColor:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v5;
}

+ (id)pinStripeColor
{
  if (qword_1ED49B550 != -1)
  {
    dispatch_once(&qword_1ED49B550, &__block_literal_global_1345);
  }

  v3 = qword_1ED49B548;

  return v3;
}

void __25__UIColor_pinStripeColor__block_invoke()
{
  v4 = _UIImageWithName(@"UIPinstripe.png");
  v0 = [(UIColor *)[UICachedPatternCGColor alloc] initWithPatternImage:v4];
  v1 = qword_1ED49B548;
  qword_1ED49B548 = v0;

  v2 = qword_1ED49B548;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"pinStripeColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)lightTextColor
{
  if (qword_1ED49B590 != -1)
  {
    dispatch_once(&qword_1ED49B590, &__block_literal_global_1361_0);
  }

  v3 = qword_1ED49B588;

  return v3;
}

void __25__UIColor_lightTextColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.6];
  v1 = qword_1ED49B588;
  qword_1ED49B588 = v0;

  v2 = qword_1ED49B588;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"lightTextColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)keyboardFocusIndicatorColor
{
  objc_opt_self();

  return +[UIColor _appKeyColorOrDefaultTint];
}

+ (id)tableGroupedSeparatorLightColor
{
  v3 = tableGroupedSeparatorLightColor_tableGroupedSeparatorLightColor;
  if (!tableGroupedSeparatorLightColor_tableGroupedSeparatorLightColor)
  {
    v4 = [UIColor colorWithRed:0.783921569 green:0.780392157 blue:0.8 alpha:1.0];
    v5 = [(UIColor *)a1 _systemColorForColor:v4 withName:@"tableGroupedSeparatorLightColor"];
    v6 = tableGroupedSeparatorLightColor_tableGroupedSeparatorLightColor;
    tableGroupedSeparatorLightColor_tableGroupedSeparatorLightColor = v5;

    v3 = tableGroupedSeparatorLightColor_tableGroupedSeparatorLightColor;
  }

  return v3;
}

+ (UIColor)viewFlipsideBackgroundColor
{
  if (qword_1ED49B5C0 != -1)
  {
    dispatch_once(&qword_1ED49B5C0, &__block_literal_global_1369_0);
  }

  v3 = qword_1ED49B5B8;

  return v3;
}

void __38__UIColor_viewFlipsideBackgroundColor__block_invoke()
{
  if (!qword_1ED49B5B8)
  {
    v0 = [UIColor colorWithRed:0.121568627 green:0.129411765 blue:0.141176471 alpha:1.0];
    v1 = qword_1ED49B5B8;
    qword_1ED49B5B8 = v0;

    v2 = qword_1ED49B5B8;

    [v2 _setSystemColorName:@"viewFlipsideBackgroundColor"];
  }
}

+ (UIColor)underPageBackgroundColor
{
  if (qword_1ED49B5D0 != -1)
  {
    dispatch_once(&qword_1ED49B5D0, &__block_literal_global_1371_0);
  }

  v3 = qword_1ED49B5C8;

  return v3;
}

void __35__UIColor_underPageBackgroundColor__block_invoke()
{
  if (!qword_1ED49B5C8)
  {
    v0 = [UIColor colorWithRed:0.709803922 green:0.717647059 blue:0.741176471 alpha:1.0];
    v1 = qword_1ED49B5C8;
    qword_1ED49B5C8 = v0;

    v2 = qword_1ED49B5C8;

    [v2 _setSystemColorName:@"underPageBackgroundColor"];
  }
}

+ (UIColor)scrollViewTexturedBackgroundColor
{
  v2 = scrollViewTexturedBackgroundColor_scrollViewTexturedBackgroundColor;
  if (!scrollViewTexturedBackgroundColor_scrollViewTexturedBackgroundColor)
  {
    v3 = [UIColor colorWithRed:0.435294118 green:0.443137255 blue:0.474509804 alpha:1.0];
    v4 = scrollViewTexturedBackgroundColor_scrollViewTexturedBackgroundColor;
    scrollViewTexturedBackgroundColor_scrollViewTexturedBackgroundColor = v3;

    [scrollViewTexturedBackgroundColor_scrollViewTexturedBackgroundColor _setSystemColorName:@"scrollViewTexturedBackgroundColor"];
    v2 = scrollViewTexturedBackgroundColor_scrollViewTexturedBackgroundColor;
  }

  return v2;
}

+ (id)_systemInteractionTintColor
{
  if (qword_1ED49B7E0 != -1)
  {
    dispatch_once(&qword_1ED49B7E0, &__block_literal_global_1469);
  }

  v3 = qword_1ED49B7D8;

  return v3;
}

void __38__UIColor__systemInteractionTintColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v1 = qword_1ED49B7D8;
  qword_1ED49B7D8 = v0;

  v2 = qword_1ED49B7D8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_systemInteractionTintColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_systemDestructiveTintColor
{
  if (qword_1ED49B7F0 != -1)
  {
    dispatch_once(&qword_1ED49B7F0, &__block_literal_global_1472);
  }

  v3 = qword_1ED49B7E8;

  return v3;
}

void __38__UIColor__systemDestructiveTintColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  v1 = qword_1ED49B7E8;
  qword_1ED49B7E8 = v0;

  v2 = qword_1ED49B7E8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_systemDestructiveTintColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_systemMidGrayTintColor
{
  if (qword_1ED49B820 != -1)
  {
    dispatch_once(&qword_1ED49B820, &__block_literal_global_1481);
  }

  v3 = qword_1ED49B818;

  return v3;
}

void __34__UIColor__systemMidGrayTintColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0 blue:0.0980392157 alpha:0.22];
  v1 = qword_1ED49B818;
  qword_1ED49B818 = v0;

  v2 = qword_1ED49B818;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_systemMidGrayTintColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_externalSystemWhiteColor
{
  if (qword_1ED49B830 != -1)
  {
    dispatch_once(&qword_1ED49B830, &__block_literal_global_1484);
  }

  v3 = qword_1ED49B828;

  return v3;
}

void __36__UIColor__externalSystemWhiteColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v1 = qword_1ED49B828;
  qword_1ED49B828 = v0;

  v2 = qword_1ED49B828;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_externalSystemWhiteColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_externalSystemMidGrayColor
{
  if (qword_1ED49B840 != -1)
  {
    dispatch_once(&qword_1ED49B840, &__block_literal_global_1487);
  }

  v3 = qword_1ED49B838;

  return v3;
}

void __38__UIColor__externalSystemMidGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.780392157 alpha:1.0];
  v1 = qword_1ED49B838;
  qword_1ED49B838 = v0;

  v2 = qword_1ED49B838;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_externalSystemMidGrayColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_externalSystemGrayColor
{
  if (qword_1ED49B850 != -1)
  {
    dispatch_once(&qword_1ED49B850, &__block_literal_global_1490);
  }

  v3 = qword_1ED49B848;

  return v3;
}

void __35__UIColor__externalSystemGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.4 alpha:1.0];
  v1 = qword_1ED49B848;
  qword_1ED49B848 = v0;

  v2 = qword_1ED49B848;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_externalSystemGrayColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_externalSystemDarkGrayColor
{
  if (qword_1ED49B860 != -1)
  {
    dispatch_once(&qword_1ED49B860, &__block_literal_global_1493_0);
  }

  v3 = qword_1ED49B858;

  return v3;
}

void __39__UIColor__externalSystemDarkGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.250980392 alpha:1.0];
  v1 = qword_1ED49B858;
  qword_1ED49B858 = v0;

  v2 = qword_1ED49B858;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_externalSystemDarkGrayColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_externalSystemExtraDarkGrayColor
{
  if (qword_1ED49B870 != -1)
  {
    dispatch_once(&qword_1ED49B870, &__block_literal_global_1496);
  }

  v3 = qword_1ED49B868;

  return v3;
}

void __44__UIColor__externalSystemExtraDarkGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.2 alpha:1.0];
  v1 = qword_1ED49B868;
  qword_1ED49B868 = v0;

  v2 = qword_1ED49B868;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_externalSystemExtraDarkGrayColor"];
  [v2 _setSystemColorName:v3];
}

void __44__UIColor__externalSystemSuperDarkGrayColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.137254902 alpha:1.0];
  v1 = qword_1ED49B878;
  qword_1ED49B878 = v0;

  v2 = qword_1ED49B878;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_externalSystemSuperDarkGrayColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_accessibilityButtonShapesBackgroundColorOnLight
{
  if (qword_1ED49B890 != -1)
  {
    dispatch_once(&qword_1ED49B890, &__block_literal_global_1502_0);
  }

  v3 = qword_1ED49B888;

  return v3;
}

void __59__UIColor__accessibilityButtonShapesBackgroundColorOnLight__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.2 alpha:0.95];
  v1 = qword_1ED49B888;
  qword_1ED49B888 = v0;

  v2 = qword_1ED49B888;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_accessibilityButtonShapesBackgroundColorOnLight"];
  [v2 _setSystemColorName:v3];
}

+ (id)_accessibilityButtonShapesBackgroundColorOnDark
{
  if (qword_1ED49B8A0 != -1)
  {
    dispatch_once(&qword_1ED49B8A0, &__block_literal_global_1505);
  }

  v3 = qword_1ED49B898;

  return v3;
}

void __58__UIColor__accessibilityButtonShapesBackgroundColorOnDark__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.6 alpha:0.95];
  v1 = qword_1ED49B898;
  qword_1ED49B898 = v0;

  v2 = qword_1ED49B898;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_accessibilityButtonShapesBackgroundColorOnDark"];
  [v2 _setSystemColorName:v3];
}

+ (id)_accessibilityButtonShapesDisabledBackgroundColorOnDark
{
  if (qword_1ED49B8B0 != -1)
  {
    dispatch_once(&qword_1ED49B8B0, &__block_literal_global_1508_0);
  }

  v3 = qword_1ED49B8A8;

  return v3;
}

void __66__UIColor__accessibilityButtonShapesDisabledBackgroundColorOnDark__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.5 alpha:0.95];
  v1 = qword_1ED49B8A8;
  qword_1ED49B8A8 = v0;

  v2 = qword_1ED49B8A8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_accessibilityButtonShapesDisabledBackgroundColorOnDark"];
  [v2 _setSystemColorName:v3];
}

+ (id)_accessibilityButtonShapesNoBlendModeBackgroundColorOnLight
{
  if (qword_1ED49B8C0 != -1)
  {
    dispatch_once(&qword_1ED49B8C0, &__block_literal_global_1511);
  }

  v3 = qword_1ED49B8B8;

  return v3;
}

void __70__UIColor__accessibilityButtonShapesNoBlendModeBackgroundColorOnLight__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.1];
  v1 = qword_1ED49B8B8;
  qword_1ED49B8B8 = v0;

  v2 = qword_1ED49B8B8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_accessibilityButtonShapesNoBlendModeBackgroundColorOnLight"];
  [v2 _setSystemColorName:v3];
}

+ (id)_accessibilityButtonShapesNoBlendModeBackgroundColorOnDark
{
  if (qword_1ED49B8D0 != -1)
  {
    dispatch_once(&qword_1ED49B8D0, &__block_literal_global_1514);
  }

  v3 = qword_1ED49B8C8;

  return v3;
}

void __69__UIColor__accessibilityButtonShapesNoBlendModeBackgroundColorOnDark__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.25];
  v1 = qword_1ED49B8C8;
  qword_1ED49B8C8 = v0;

  v2 = qword_1ED49B8C8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_accessibilityButtonShapesNoBlendModeBackgroundColorOnDark"];
  [v2 _setSystemColorName:v3];
}

+ (id)noContentLightGradientBackgroundColor
{
  v2 = noContentLightGradientBackgroundColor_noContentLightGradientBackgroundColor;
  if (!noContentLightGradientBackgroundColor_noContentLightGradientBackgroundColor)
  {
    v3 = _UIImageWithName(@"UIStockImageNoContentLightGradientBackgroundColor.png");
    v4 = [UIColor colorWithPatternImage:v3];
    v5 = noContentLightGradientBackgroundColor_noContentLightGradientBackgroundColor;
    noContentLightGradientBackgroundColor_noContentLightGradientBackgroundColor = v4;

    [noContentLightGradientBackgroundColor_noContentLightGradientBackgroundColor _setSystemColorName:@"noContentLightGradientBackgroundColor"];
    v2 = noContentLightGradientBackgroundColor_noContentLightGradientBackgroundColor;
  }

  return v2;
}

+ (id)noContentDarkGradientBackgroundColor
{
  v2 = noContentDarkGradientBackgroundColor_noContentDarkGradientBackgroundColor;
  if (!noContentDarkGradientBackgroundColor_noContentDarkGradientBackgroundColor)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 scale];
    v5 = v4;
    v6 = [[UIGradient alloc] initVerticalWithValues:&__kNoContentDarkBackgroundGradientValues];
    _UIGraphicsBeginImageContextWithOptions(1, 0, 20.0, 1024.0, v5);
    [v6 fillRect:{0.0, 0.0, 20.0, 1024.0}];
    v7 = _UIGraphicsGetImageFromCurrentImageContext(0);

    v8 = [UIColor colorWithPatternImage:v7];
    v9 = noContentDarkGradientBackgroundColor_noContentDarkGradientBackgroundColor;
    noContentDarkGradientBackgroundColor_noContentDarkGradientBackgroundColor = v8;

    [noContentDarkGradientBackgroundColor_noContentDarkGradientBackgroundColor _setSystemColorName:@"noContentDarkGradientBackgroundColor"];
    v2 = noContentDarkGradientBackgroundColor_noContentDarkGradientBackgroundColor;
  }

  return v2;
}

+ (id)_translucentPaperTextureColor
{
  if (qword_1ED49B8E0 != -1)
  {
    dispatch_once(&qword_1ED49B8E0, &__block_literal_global_1521);
  }

  v3 = qword_1ED49B8D8;

  return v3;
}

void __40__UIColor__translucentPaperTextureColor__block_invoke()
{
  v4 = _UIImageWithName(@"UIStockImagePaperTexture.png");
  v0 = [(UIColor *)[UICachedPatternCGColor alloc] initWithPatternImage:v4];
  v1 = qword_1ED49B8D8;
  qword_1ED49B8D8 = v0;

  v2 = qword_1ED49B8D8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_translucentPaperTextureColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_grayColorForFontSize:(double)a3
{
  v3 = [UIColor colorWithWhite:1.0 alpha:dbl_18A67C2E0[a3 < 40.0]];

  return v3;
}

+ (id)_webContentBackgroundColor
{
  if (qword_1ED49B900 != -1)
  {
    dispatch_once(&qword_1ED49B900, &__block_literal_global_1530);
  }

  v3 = qword_1ED49B8F8;

  return v3;
}

void __37__UIColor__webContentBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.741176471 green:0.741176471 blue:0.760784314 alpha:1.0];
  v1 = qword_1ED49B8F8;
  qword_1ED49B8F8 = v0;

  v2 = qword_1ED49B8F8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_webContentBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (UIColor)colorNamed:(NSString *)name inBundle:(NSBundle *)bundle compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v7 = name;
  v8 = bundle;
  v9 = traitCollection;
  if (!v8)
  {
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v10 = [_UIAssetManager assetManagerForBundle:v8];
  v11 = [v10 colorNamed:v7 withTraitCollection:v9];

  return v11;
}

- (id)_resolvedMaterialWithTraitCollection:(id)a3
{
  v4 = a3;
  if ([v4 _userInterfaceRenderingMode] == 2)
  {
    if (!_UISolariumEnabled() || ([_UIMaterial _solariumMaterialForColor:self traitCollection:v4], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v6 = [(UIColor *)self _systemColorName];
      v5 = [_UIMaterial materialForSystemColorName:v6];
    }

    if ([v5 isVibrant] && objc_msgSend(v4, "_vibrancy") != 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_dynamicColorWithColorsByTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [[UIDynamicAppDefinedColor alloc] initWithColorsByTraitCollection:v3];

  return v4;
}

+ (UIColor)colorWithDynamicProvider:(void *)dynamicProvider
{
  v3 = dynamicProvider;
  v4 = [[UIDynamicProviderColor alloc] initWithProvider:v3];

  return v4;
}

- (UIColor)initWithDynamicProvider:(void *)dynamicProvider
{
  v4 = dynamicProvider;
  v5 = [[UIDynamicProviderColor alloc] initWithProvider:v4];

  return &v5->super.super;
}

- (id)_resolvedBackgroundColorWithTraitCollection:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    if ([v3 accessibilityContrast] != 1 || objc_msgSend(v3, "userInterfaceStyle") != 2)
    {
      goto LABEL_9;
    }

    v5 = +[UIColor systemGray2Color];

    v6 = +[UIColor systemGray3Color];
    v7 = v6;
    if (v5 != v4)
    {

      v8 = +[UIColor systemGray4Color];
      v9 = v8;
      if (v7 == v4)
      {
        goto LABEL_15;
      }

      v10 = +[UIColor systemGray5Color];
      v7 = v10;
      if (v9 != v4)
      {

        v11 = +[UIColor systemGray6Color];
        v9 = v11;
        if (v7 != v4)
        {

          if (v9 == v4)
          {
            v12 = +[UIColor systemBlackColor];
            goto LABEL_10;
          }

LABEL_9:
          v12 = v4;
LABEL_10:
          v7 = v12;
          goto LABEL_11;
        }

LABEL_15:
        v7 = v9;
      }
    }

LABEL_11:

    v13 = objc_opt_self();
    v14 = [v3 traitCollectionByReplacingNSIntegerValue:1 forTrait:v13];

    a1 = [v7 resolvedColorWithTraitCollection:v14];
  }

  return a1;
}

+ (id)_monochromeCellImageTintColor
{
  if (qword_1ED49BA50 != -1)
  {
    dispatch_once(&qword_1ED49BA50, &__block_literal_global_1979);
  }

  v3 = qword_1ED49BA48;

  return v3;
}

void __57__UIColor__UIInterfaceAPI___monochromeCellImageTintColor__block_invoke()
{
  v0 = [UIDynamicCatalogSystemColor alloc];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_monochromeCellImageTintColor"];
  v1 = [(UIDynamicCatalogSystemColor *)v0 initWithName:v3 coreUIColorName:16];
  v2 = qword_1ED49BA48;
  qword_1ED49BA48 = v1;
}

+ (id)_systemBlueColor2
{
  if (qword_1ED49BA70 != -1)
  {
    dispatch_once(&qword_1ED49BA70, &__block_literal_global_1985);
  }

  v3 = qword_1ED49BA68;

  return v3;
}

void __45__UIColor__UIInterfaceAPI___systemBlueColor2__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_systemBlueColor2"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.250980392 blue:0.866666667 alpha:1.0];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.274509804 green:0.576470588 blue:1.0 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.274509804 green:0.576470588 blue:1.0 alpha:1.0];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BA68;
  qword_1ED49BA68 = v10;
}

+ (id)textGrammarIndicatorColor
{
  if (qword_1ED49BB60 != -1)
  {
    dispatch_once(&qword_1ED49BB60, &__block_literal_global_2031);
  }

  v3 = qword_1ED49BB58;

  return v3;
}

void __53__UIColor__UIInterfaceAPI__textGrammarIndicatorColor__block_invoke()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"textGrammarIndicatorColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v7 = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.694117647 blue:0.674509804 alpha:1.0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v4];
  v6 = qword_1ED49BB58;
  qword_1ED49BB58 = v5;
}

+ (id)_dynamicTestColor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__UIColor__InProgressSPI___dynamicTestColor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (qword_1ED49BB70 != -1)
  {
    dispatch_once(&qword_1ED49BB70, block);
  }

  v2 = qword_1ED49BB68;

  return v2;
}

void __44__UIColor__InProgressSPI___dynamicTestColor__block_invoke(uint64_t a1)
{
  v44[18] = *MEMORY[0x1E69E9840];
  v41 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v43[0] = v41;
  v40 = +[UIColor blueColor];
  v44[0] = v40;
  v39 = _UIThemeKeyFromTraitValues(-1, 1, 0, 0, 0, 0);
  v43[1] = v39;
  v38 = +[UIColor greenColor];
  v44[1] = v38;
  v37 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v43[2] = v37;
  v36 = +[UIColor cyanColor];
  v44[2] = v36;
  v35 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v43[3] = v35;
  v34 = +[UIColor redColor];
  v44[3] = v34;
  v33 = _UIThemeKeyFromTraitValues(-1, 1, 1, 0, 0, 0);
  v43[4] = v33;
  v32 = +[UIColor magentaColor];
  v44[4] = v32;
  v31 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v43[5] = v31;
  v30 = +[UIColor yellowColor];
  v44[5] = v30;
  v29 = _UIThemeKeyFromTraitValues(-1, 0, 0, 1, 0, 0);
  v43[6] = v29;
  v28 = [UIColor colorWithDisplayP3Red:0.0 green:0.0 blue:1.0 alpha:1.0];
  v44[6] = v28;
  v27 = _UIThemeKeyFromTraitValues(-1, 1, 0, 1, 0, 0);
  v43[7] = v27;
  v26 = [UIColor colorWithDisplayP3Red:0.0 green:1.0 blue:0.0 alpha:1.0];
  v44[7] = v26;
  v25 = _UIThemeKeyFromTraitValues(-1, 2, 0, 1, 0, 0);
  v43[8] = v25;
  v24 = [UIColor colorWithDisplayP3Red:0.0 green:1.0 blue:1.0 alpha:1.0];
  v44[8] = v24;
  v23 = _UIThemeKeyFromTraitValues(-1, 0, 1, 1, 0, 0);
  v43[9] = v23;
  v22 = [UIColor colorWithDisplayP3Red:1.0 green:0.0 blue:0.0 alpha:1.0];
  v44[9] = v22;
  v21 = _UIThemeKeyFromTraitValues(-1, 1, 1, 1, 0, 0);
  v43[10] = v21;
  v20 = [UIColor colorWithDisplayP3Red:1.0 green:0.0 blue:1.0 alpha:1.0];
  v44[10] = v20;
  v19 = _UIThemeKeyFromTraitValues(-1, 2, 1, 1, 0, 0);
  v43[11] = v19;
  v18 = [UIColor colorWithDisplayP3Red:1.0 green:1.0 blue:0.0 alpha:1.0];
  v44[11] = v18;
  v17 = _UIThemeKeyFromTraitValues(3, 0, 0, 0, 0, 0);
  v43[12] = v17;
  v16 = [UIColor colorWithRed:0.5 green:0.5 blue:0.9 alpha:1.0];
  v44[12] = v16;
  v1 = _UIThemeKeyFromTraitValues(3, 1, 0, 0, 0, 0);
  v43[13] = v1;
  v2 = [UIColor colorWithRed:0.5 green:0.9 blue:0.5 alpha:1.0];
  v44[13] = v2;
  v3 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 0);
  v43[14] = v3;
  v4 = [UIColor colorWithRed:0.5 green:0.9 blue:0.9 alpha:1.0];
  v44[14] = v4;
  v5 = _UIThemeKeyFromTraitValues(3, 0, 1, 0, 0, 0);
  v43[15] = v5;
  v6 = [UIColor colorWithRed:0.9 green:0.5 blue:0.5 alpha:1.0];
  v44[15] = v6;
  v7 = _UIThemeKeyFromTraitValues(3, 1, 1, 0, 0, 0);
  v43[16] = v7;
  v8 = [UIColor colorWithRed:0.9 green:0.5 blue:0.9 alpha:1.0];
  v44[16] = v8;
  v9 = _UIThemeKeyFromTraitValues(3, 2, 1, 0, 0, 0);
  v43[17] = v9;
  v10 = [UIColor colorWithRed:0.9 green:0.9 blue:0.5 alpha:1.0];
  v44[17] = v10;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:18];

  v11 = [UIDynamicSystemColor alloc];
  v12 = NSStringFromSelector(*(a1 + 32));
  v13 = [(UIDynamicSystemColor *)v11 initWithName:v12 colorsByThemeKey:v15];
  v14 = qword_1ED49BB68;
  qword_1ED49BB68 = v13;
}

+ (id)_searchFieldDisabledBackgroundColor
{
  if (qword_1ED49BBE0 != -1)
  {
    dispatch_once(&qword_1ED49BBE0, &__block_literal_global_2053);
  }

  v3 = qword_1ED49BBD8;

  return v3;
}

void __62__UIColor__InProgressSPI___searchFieldDisabledBackgroundColor__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_searchFieldDisabledBackgroundColor"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.06];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.14];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.12];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.462745098 green:0.462745098 blue:0.501960784 alpha:0.2];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BBD8;
  qword_1ED49BBD8 = v10;
}

+ (id)_pageControlPlatterIndicatorColor
{
  if (qword_1ED49BC00 != -1)
  {
    dispatch_once(&qword_1ED49BC00, &__block_literal_global_2059);
  }

  v3 = qword_1ED49BBF8;

  return v3;
}

void __60__UIColor__InProgressSPI___pageControlPlatterIndicatorColor__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_pageControlPlatterIndicatorColor"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.25];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.45];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.25];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.45];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BBF8;
  qword_1ED49BBF8 = v10;
}

+ (id)_searchFieldPlaceholderTextClearButtonColor
{
  if (qword_1ED49BC10 != -1)
  {
    dispatch_once(&qword_1ED49BC10, &__block_literal_global_2062);
  }

  v3 = qword_1ED49BC08;

  return v3;
}

void __70__UIColor__InProgressSPI___searchFieldPlaceholderTextClearButtonColor__block_invoke()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_searchFieldPlaceholderTextClearButtonColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v7 = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.47 alpha:1.0];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v4];
  v6 = qword_1ED49BC08;
  qword_1ED49BC08 = v5;
}

+ (id)_searchBarBackgroundColor
{
  if (qword_1ED49BC20 != -1)
  {
    dispatch_once(&qword_1ED49BC20, &__block_literal_global_2065);
  }

  v3 = qword_1ED49BC18;

  return v3;
}

void __52__UIColor__InProgressSPI___searchBarBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_searchBarBackgroundColor"];
  v1 = _colorsByThemeKeysystemGray3Color();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BC18;
  qword_1ED49BC18 = v2;
}

+ (id)_controlHighlightColor
{
  if (qword_1ED49BC40 != -1)
  {
    dispatch_once(&qword_1ED49BC40, &__block_literal_global_2071);
  }

  v3 = qword_1ED49BC38;

  return v3;
}

void __49__UIColor__InProgressSPI___controlHighlightColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_controlHighlightColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.780392157 green:0.780392157 blue:0.8 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.266666667 green:0.266666667 blue:0.274509804 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BC38;
  qword_1ED49BC38 = v7;
}

+ (id)_controlShadowColor
{
  if (qword_1ED49BC50 != -1)
  {
    dispatch_once(&qword_1ED49BC50, &__block_literal_global_2074);
  }

  v3 = qword_1ED49BC48;

  return v3;
}

void __46__UIColor__InProgressSPI___controlShadowColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.12];
  v1 = qword_1ED49BC48;
  qword_1ED49BC48 = v0;

  v2 = qword_1ED49BC48;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_controlShadowColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_controlVibrantTopBackgroundColor
{
  if (qword_1ED49BC60 != -1)
  {
    dispatch_once(&qword_1ED49BC60, &__block_literal_global_2077);
  }

  v3 = qword_1ED49BC58;

  return v3;
}

void __60__UIColor__InProgressSPI___controlVibrantTopBackgroundColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_controlVibrantTopBackgroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0274509804 blue:0.0980392157 alpha:0.05];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.980392157 green:0.97254902 blue:1.0 alpha:0.15];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BC58;
  qword_1ED49BC58 = v7;
}

+ (id)_controlVibrantBottomBackgroundColor
{
  if (qword_1ED49BC70 != -1)
  {
    dispatch_once(&qword_1ED49BC70, &__block_literal_global_2080);
  }

  v3 = qword_1ED49BC68;

  return v3;
}

void __63__UIColor__InProgressSPI___controlVibrantBottomBackgroundColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_controlVibrantBottomBackgroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.0 green:0.0274509804 blue:0.0980392157 alpha:0.72];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.980392157 green:0.97254902 blue:1.0 alpha:0.05];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BC68;
  qword_1ED49BC68 = v7;
}

+ (id)_swiftColor
{
  if (qword_1ED49BC80 != -1)
  {
    dispatch_once(&qword_1ED49BC80, &__block_literal_global_2083);
  }

  v3 = qword_1ED49BC78;

  return v3;
}

void __38__UIColor__InProgressSPI___swiftColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_swiftColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.992156863 green:0.407843137 blue:0.133333333 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.458823529 blue:0.203921569 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BC78;
  qword_1ED49BC78 = v7;
}

+ (id)_textFieldDisabledBackgroundColor
{
  if (qword_1ED49BCC0 != -1)
  {
    dispatch_once(&qword_1ED49BCC0, &__block_literal_global_2095);
  }

  v3 = qword_1ED49BCB8;

  return v3;
}

void __60__UIColor__InProgressSPI___textFieldDisabledBackgroundColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_textFieldDisabledBackgroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.980392157 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0196078431 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BCB8;
  qword_1ED49BCB8 = v7;
}

+ (id)_textFieldDisabledBorderColor
{
  if (qword_1ED49BCE0 != -1)
  {
    dispatch_once(&qword_1ED49BCE0, &__block_literal_global_2101);
  }

  v3 = qword_1ED49BCD8;

  return v3;
}

void __56__UIColor__InProgressSPI___textFieldDisabledBorderColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_textFieldDisabledBorderColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.17];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.17];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BCD8;
  qword_1ED49BCD8 = v7;
}

+ (id)tableSelectionColor
{
  if (qword_1ED49BD60 != -1)
  {
    dispatch_once(&qword_1ED49BD60, &__block_literal_global_2125);
  }

  v3 = qword_1ED49BD58;

  return v3;
}

void __46__UIColor__InProgressSPI__tableSelectionColor__block_invoke()
{
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.16 green:0.43 blue:0.83 alpha:1.0];
  v1 = qword_1ED49BD58;
  qword_1ED49BD58 = v0;

  v2 = qword_1ED49BD58;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableSelectionColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellGroupedSelectedBackgroundColor
{
  if (_UIUnifiedSystemBackgroundColorsEnabled())
  {
    +[UIColor secondarySystemFillColor];
  }

  else
  {
    +[UIColor tableCellPlainSelectedBackgroundColor];
  }
  v2 = ;

  return v2;
}

+ (id)tableCellHighlightedBackgroundColor
{
  if (qword_1ED49BD70 != -1)
  {
    dispatch_once(&qword_1ED49BD70, &__block_literal_global_2128);
  }

  v3 = qword_1ED49BD68;

  return v3;
}

void __62__UIColor__InProgressSPI__tableCellHighlightedBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.8];
  v1 = qword_1ED49BD68;
  qword_1ED49BD68 = v0;

  v2 = qword_1ED49BD68;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellHighlightedBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellFocusedBackgroundColor
{
  if (qword_1ED49BD80 != -1)
  {
    dispatch_once(&qword_1ED49BD80, &__block_literal_global_2131);
  }

  v3 = qword_1ED49BD78;

  return v3;
}

void __58__UIColor__InProgressSPI__tableCellFocusedBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.9];
  v1 = qword_1ED49BD78;
  qword_1ED49BD78 = v0;

  v2 = qword_1ED49BD78;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellFocusedBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tableCellDisabledBackgroundColor
{
  if (qword_1ED49BD90 != -1)
  {
    dispatch_once(&qword_1ED49BD90, &__block_literal_global_2134);
  }

  v3 = qword_1ED49BD88;

  return v3;
}

void __59__UIColor__InProgressSPI__tableCellDisabledBackgroundColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.5];
  v1 = qword_1ED49BD88;
  qword_1ED49BD88 = v0;

  v2 = qword_1ED49BD88;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tableCellDisabledBackgroundColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)tablePlainHeaderFooterBackgroundColor
{
  if (qword_1ED49BDA0 != -1)
  {
    dispatch_once(&qword_1ED49BDA0, &__block_literal_global_2137);
  }

  v3 = qword_1ED49BD98;

  return v3;
}

void __64__UIColor__InProgressSPI__tablePlainHeaderFooterBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tablePlainHeaderFooterBackgroundColor"];
  v1 = _colorsByThemeKeytablePlainHeaderFooterBackgroundColor();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BD98;
  qword_1ED49BD98 = v2;
}

+ (id)tablePlainHeaderFooterFloatingBackgroundColor
{
  if (qword_1ED49BDB0 != -1)
  {
    dispatch_once(&qword_1ED49BDB0, &__block_literal_global_2140);
  }

  v3 = qword_1ED49BDA8;

  return v3;
}

void __72__UIColor__InProgressSPI__tablePlainHeaderFooterFloatingBackgroundColor__block_invoke()
{
  v0 = [UIDynamicSystemColor alloc];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"tablePlainHeaderFooterFloatingBackgroundColor"];
  v1 = _colorsByThemeKeytablePlainHeaderFooterBackgroundColor();
  v2 = [(UIDynamicSystemColor *)v0 initWithName:v4 colorsByThemeKey:v1];
  v3 = qword_1ED49BDA8;
  qword_1ED49BDA8 = v2;
}

+ (id)_plainTableHeaderFooterTextColor
{
  if (qword_1ED49BDC0 != -1)
  {
    dispatch_once(&qword_1ED49BDC0, &__block_literal_global_2143);
  }

  v3 = qword_1ED49BDB8;

  return v3;
}

void __59__UIColor__InProgressSPI___plainTableHeaderFooterTextColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_plainTableHeaderFooterTextColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.137254902 green:0.137254902 blue:0.137254902 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.862745098 green:0.862745098 blue:0.862745098 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BDB8;
  qword_1ED49BDB8 = v7;
}

+ (id)_groupTableHeaderFooterTextColor
{
  if (qword_1ED49BDD0 != -1)
  {
    dispatch_once(&qword_1ED49BDD0, &__block_literal_global_2146);
  }

  v3 = qword_1ED49BDC8;

  return v3;
}

void __59__UIColor__InProgressSPI___groupTableHeaderFooterTextColor__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_groupTableHeaderFooterTextColor"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.42745098 green:0.42745098 blue:0.447058824 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.290196078 green:0.290196078 blue:0.301960784 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.694117647 green:0.694117647 blue:0.721568627 alpha:1.0];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BDC8;
  qword_1ED49BDC8 = v10;
}

+ (id)_swipedSidebarCellBackgroundColor
{
  if (qword_1ED49BDE0 != -1)
  {
    dispatch_once(&qword_1ED49BDE0, &__block_literal_global_2149);
  }

  v3 = qword_1ED49BDD8;

  return v3;
}

void __60__UIColor__InProgressSPI___swipedSidebarCellBackgroundColor__block_invoke()
{
  v18[6] = *MEMORY[0x1E69E9840];
  v16 = [UIDynamicSystemColor alloc];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_swipedSidebarCellBackgroundColor"];
  v14 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v17[0] = v14;
  v13 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.898039216 green:0.898039216 blue:0.917647059 alpha:1.0];
  v18[0] = v13;
  v12 = _UIThemeKeyFromTraitValues(-1, 0, 1, 0, 0, 0);
  v17[1] = v12;
  v0 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.847058824 green:0.847058824 blue:0.862745098 alpha:1.0];
  v18[1] = v0;
  v1 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v17[2] = v1;
  v2 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.17254902 green:0.17254902 blue:0.180392157 alpha:1.0];
  v18[2] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 0, 0);
  v17[3] = v3;
  v4 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  v18[3] = v4;
  v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 1, 0);
  v17[4] = v5;
  v6 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.22745098 green:0.22745098 blue:0.235294118 alpha:1.0];
  v18[4] = v6;
  v7 = _UIThemeKeyFromTraitValues(-1, 2, 1, 0, 1, 0);
  v17[5] = v7;
  v8 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:0.266666667 green:0.266666667 blue:0.274509804 alpha:1.0];
  v18[5] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v10 = [(UIDynamicSystemColor *)v16 initWithName:v15 colorsByThemeKey:v9];
  v11 = qword_1ED49BDD8;
  qword_1ED49BDD8 = v10;
}

+ (id)_alertDefaultActionBackgroundColor
{
  if (qword_1ED49BE00 != -1)
  {
    dispatch_once(&qword_1ED49BE00, &__block_literal_global_2155);
  }

  v3 = qword_1ED49BDF8;

  return v3;
}

void __61__UIColor__InProgressSPI___alertDefaultActionBackgroundColor__block_invoke()
{
  v14[4] = *MEMORY[0x1E69E9840];
  v12 = [UIDynamicSystemColor alloc];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_alertDefaultActionBackgroundColor"];
  v1 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v13[0] = v1;
  v2 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.8 alpha:1.0];
  v14[0] = v2;
  v3 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v13[1] = v3;
  v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.25];
  v14[1] = v4;
  v5 = _UIThemeKeyFromTraitValues(3, 0, 0, 0, 0, 0);
  v13[2] = v5;
  v6 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.7 alpha:1.0];
  v14[2] = v6;
  v7 = _UIThemeKeyFromTraitValues(3, 2, 0, 0, 0, 0);
  v13[3] = v7;
  v8 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.25];
  v14[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10 = [(UIDynamicSystemColor *)v12 initWithName:v0 colorsByThemeKey:v9];
  v11 = qword_1ED49BDF8;
  qword_1ED49BDF8 = v10;
}

+ (id)_alertDestructiveActionBackgroundColor
{
  if (qword_1ED49BE10 != -1)
  {
    dispatch_once(&qword_1ED49BE10, &__block_literal_global_2158);
  }

  v3 = qword_1ED49BE08;

  return v3;
}

void __65__UIColor__InProgressSPI___alertDestructiveActionBackgroundColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_alertDestructiveActionBackgroundColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:0.2];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceRGBColor *)[UICachedDeviceRGBColor alloc] initWithRed:1.0 green:0.0 blue:0.0 alpha:0.4];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BE08;
  qword_1ED49BE08 = v7;
}

void __49__UIColor__InProgressSPI___carSystemPrimaryColor__block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemPrimaryColor"];
  _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  if (v0)
    v3 = {;
    v13 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
    v15[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v14 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 1.0;
    v8 = 1.0;
  }

  else
    v3 = {;
    v13 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.75];
    v15[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v14 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 1.0;
    v8 = 0.75;
  }

  v9 = [(UIDeviceWhiteColor *)v6 initWithWhite:v7 alpha:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v13 count:2];

  v11 = [(UIDynamicSystemColor *)v1 initWithName:v2 colorsByThemeKey:v10];
  v12 = qword_1ED49BE18;
  qword_1ED49BE18 = v11;
}

void __51__UIColor__InProgressSPI___carSystemSecondaryColor__block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemSecondaryColor"];
  _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  if (v0)
    v3 = {;
    v13 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.4];
    v15[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v14 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 0.6;
    v8 = 1.0;
  }

  else
    v3 = {;
    v13 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.55];
    v15[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v14 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v8 = 1.0;
    v7 = 0.55;
  }

  v9 = [(UIDeviceWhiteColor *)v6 initWithWhite:v8 alpha:v7];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v13 count:2];

  v11 = [(UIDynamicSystemColor *)v1 initWithName:v2 colorsByThemeKey:v10];
  v12 = qword_1ED49BE28;
  qword_1ED49BE28 = v11;
}

void __50__UIColor__InProgressSPI___carSystemTertiaryColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemTertiaryColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.3];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.3];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BE38;
  qword_1ED49BE38 = v7;
}

void __52__UIColor__InProgressSPI___carSystemQuaternaryColor__block_invoke()
{
  v15[2] = *MEMORY[0x1E69E9840];
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemQuaternaryColor"];
  _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  if (v0)
    v3 = {;
    v13 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.1];
    v15[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v14 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 1.0;
    v8 = 0.1;
  }

  else
    v3 = {;
    v13 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.07];
    v15[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v14 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v8 = 0.15;
    v7 = 1.0;
  }

  v9 = [(UIDeviceWhiteColor *)v6 initWithWhite:v7 alpha:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v13 count:2];

  v11 = [(UIDynamicSystemColor *)v1 initWithName:v2 colorsByThemeKey:v10];
  v12 = qword_1ED49BE48;
  qword_1ED49BE48 = v11;
}

void __52__UIColor__InProgressSPI___carSystemFocusLabelColor__block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [UIDynamicSystemColor alloc];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemFocusLabelColor"];
  v2 = _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  v9[0] = v2;
  v3 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:1.0];
  v10[0] = v3;
  v4 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
  v9[1] = v4;
  v5 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:1.0];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = [(UIDynamicSystemColor *)v0 initWithName:v1 colorsByThemeKey:v6];
  v8 = qword_1ED49BE68;
  qword_1ED49BE68 = v7;
}

void __54__UIColor__InProgressSPI___carSystemFocusPrimaryColor__block_invoke()
{
  v14[2] = *MEMORY[0x1E69E9840];
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemFocusPrimaryColor"];
  _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  if (v0)
    v3 = {;
    v12 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.6];
    v14[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v13 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 0.4;
  }

  else
    v3 = {;
    v12 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.75];
    v14[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v13 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 0.75;
  }

  v8 = [(UIDeviceWhiteColor *)v6 initWithWhite:0.0 alpha:v7];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v12 count:2];

  v10 = [(UIDynamicSystemColor *)v1 initWithName:v2 colorsByThemeKey:v9];
  v11 = qword_1ED49BE78;
  qword_1ED49BE78 = v10;
}

void __56__UIColor__InProgressSPI___carSystemFocusSecondaryColor__block_invoke()
{
  v14[2] = *MEMORY[0x1E69E9840];
  v0 = _UISolariumEnabled();
  v1 = [UIDynamicSystemColor alloc];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_carSystemFocusSecondaryColor"];
  _UIThemeKeyFromTraitValues(-1, 0, 0, 0, 0, 0);
  if (v0)
    v3 = {;
    v12 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.25];
    v14[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v13 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 0.25;
  }

  else
    v3 = {;
    v12 = v3;
    v4 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.55];
    v14[0] = v4;
    v5 = _UIThemeKeyFromTraitValues(-1, 2, 0, 0, 0, 0);
    v13 = v5;
    v6 = [UICachedDeviceWhiteColor alloc];
    v7 = 0.55;
  }

  v8 = [(UIDeviceWhiteColor *)v6 initWithWhite:0.0 alpha:v7];
  v14[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v12 count:2];

  v10 = [(UIDynamicSystemColor *)v1 initWithName:v2 colorsByThemeKey:v9];
  v11 = qword_1ED49BE88;
  qword_1ED49BE88 = v10;
}

+ (id)_focusedCarSystemColor:(id)a3
{
  v3 = a3;
  v4 = +[UIColor _labelColor];

  if (v4 == v3)
  {
    v7 = +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    v5 = +[UIColor _carSystemPrimaryColor];

    if (v5 == v3)
    {
      v7 = +[UIColor _carSystemFocusPrimaryColor];
    }

    else
    {
      v6 = +[UIColor _carSystemSecondaryColor];

      if (v6 == v3)
      {
        v7 = +[UIColor _carSystemFocusSecondaryColor];
      }

      else
      {
        v7 = v3;
      }
    }
  }

  v8 = v7;

  return v8;
}

+ (id)_unfocusedCarSystemColor:(id)a3
{
  v3 = a3;
  v4 = +[UIColor _carSystemFocusLabelColor];

  if (v4 == v3)
  {
    v7 = +[UIColor _labelColor];
  }

  else
  {
    v5 = +[UIColor _carSystemFocusPrimaryColor];

    if (v5 == v3)
    {
      v7 = +[UIColor _carSystemPrimaryColor];
    }

    else
    {
      v6 = +[UIColor _carSystemFocusSecondaryColor];

      if (v6 == v3)
      {
        v7 = +[UIColor _carSystemSecondaryColor];
      }

      else
      {
        v7 = v3;
      }
    }
  }

  v8 = v7;

  return v8;
}

+ (id)_tvInterfaceStyleLightContentColor
{
  if (qword_1ED49BEA0 != -1)
  {
    dispatch_once(&qword_1ED49BEA0, &__block_literal_global_2185);
  }

  v3 = qword_1ED49BE98;

  return v3;
}

void __61__UIColor__InProgressSPI___tvInterfaceStyleLightContentColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:0.0 alpha:0.4];
  v1 = qword_1ED49BE98;
  qword_1ED49BE98 = v0;

  v2 = qword_1ED49BE98;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_tvInterfaceStyleLightContentColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_tvInterfaceStyleDarkContentColor
{
  if (qword_1ED49BEB0 != -1)
  {
    dispatch_once(&qword_1ED49BEB0, &__block_literal_global_2188);
  }

  v3 = qword_1ED49BEA8;

  return v3;
}

void __60__UIColor__InProgressSPI___tvInterfaceStyleDarkContentColor__block_invoke()
{
  v0 = [(UIDeviceWhiteColor *)[UICachedDeviceWhiteColor alloc] initWithWhite:1.0 alpha:0.3];
  v1 = qword_1ED49BEA8;
  qword_1ED49BEA8 = v0;

  v2 = qword_1ED49BEA8;
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_tvInterfaceStyleDarkContentColor"];
  [v2 _setSystemColorName:v3];
}

+ (id)_tvAppKeyColorOrDefaultTint
{
  if (dyld_program_sdk_at_least())
  {
    v2 = +[UIColor _appKeyColor];
    v3 = v2;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = +[UIColor whiteColor];
    }

    v5 = v4;
  }

  else
  {
    v5 = +[UIColor whiteColor];
  }

  return v5;
}

- (UIColor)colorWithProminence:(int64_t)a3
{
  if ([(UIColor *)self prominence]== a3)
  {
    v5 = self;
  }

  else
  {
    v6 = [UIDynamicProviderColor alloc];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__UIColor_ProminenceSupport__colorWithProminence___block_invoke;
    v9[3] = &unk_1E70F3870;
    v9[4] = self;
    v7 = [(UIDynamicProviderColor *)v6 initWithProvider:v9];
    v5 = [[UIDynamicModifiedColor alloc] initWithBaseColor:v7 alphaComponent:0xFFFFFFFFFFFFFFFFLL contrast:a3 prominence:1.79769313e308];
  }

  return v5;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.uikit.color";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6982C40] _typeWithIdentifier:v7 allowUndeclared:1];
  v9 = [MEMORY[0x1E6982C40] _typeWithIdentifier:@"com.apple.uikit.color" allowUndeclared:1];
  if ([v8 conformsToType:v9])
  {
    v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:0];
    v11 = [v10 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v10 finishDecoding];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (UIColor)initWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(UIColor *)self init];
  v11 = [objc_opt_class() objectWithItemProviderData:v9 typeIdentifier:v8 error:a5];

  v12 = v11;
  return v12;
}

+ (NSArray)writableTypeIdentifiersForItemProvider
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.uikit.color";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)loadDataWithTypeIdentifier:(id)a3 forItemProviderCompletionHandler:(id)a4
{
  v6 = a4;
  if ([a3 isEqualToString:@"com.apple.uikit.color"])
  {
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
    v6[2](v6, v7, 0);
  }

  else
  {
    v6[2](v6, 0, 0);
  }

  return 0;
}

+ (id)_convertColorPickerColor:(id)a3 fromUserInterfaceStyle:(int64_t)a4 to:(int64_t)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (a5 && a4 && a4 != a5)
  {
    v17[0] = xmmword_18A6829D8;
    v17[1] = unk_18A6829E8;
    ConvertedToSRGB = DKUCGColorCreateConvertedToSRGB([v7 CGColor]);
    DKUColorGetRGBAComponents(ConvertedToSRGB, v17);
    v15 = xmmword_18A6829D8;
    v16 = unk_18A6829E8;
    v18 = xmmword_18A6829D8;
    *v19 = unk_18A6829E8;
    DKUConvertsRGBToHSL(v17, &v18);
    v19[0] = 1.0 - v19[0];
    DKUConvertHSLToSRGB(&v18, &v15);
    SRGB = CGColorCreateSRGB(*&v15, *(&v15 + 1), *&v16, *(&v16 + 1));
    CFAutorelease(SRGB);
    CGColorRelease(ConvertedToSRGB);
    Components = CGColorGetComponents(SRGB);
    v12 = [UIColor colorWithRed:*Components green:Components[1] blue:Components[2] alpha:Components[3]];
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  return v13;
}

@end
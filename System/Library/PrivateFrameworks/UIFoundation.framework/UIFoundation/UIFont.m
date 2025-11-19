@interface UIFont
+ (BOOL)_isSupportedDynamicFontTextStyle:(id)a3;
+ (NSArray)familyNames;
+ (NSArray)fontNamesForFamilyName:(NSString *)familyName;
+ (UIFont)fontWithMarkupDescription:(id)a3;
+ (UIFont)fontWithName:(id)a3 size:(double)a4 traits:(int)a5;
+ (UIFont)monospacedDigitSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight;
+ (UIFont)monospacedSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight;
+ (UIFont)preferredFontForTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (UIFont)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight;
+ (UIFont)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight width:(UIFontWidth)width;
+ (double)_pointSize:(double)a3 scaledLikeTextStyle:(id)a4 maximumPointSize:(double)a5 compatibleWithTraitCollection:(id)a6 roundSize:(BOOL)a7;
+ (double)_readableWidth;
+ (id)_fontWithDescriptor:(id)a3 size:(double)a4 textStyleForScaling:(id)a5 pointSizeForScaling:(double)a6 maximumPointSizeAfterScaling:(double)a7 forIB:(BOOL)a8 legibilityWeight:(int64_t)a9;
+ (id)_fontWithName:(id)a3 size:(double)a4;
+ (id)_lightSystemFontOfSize:(double)a3;
+ (id)_opticalBoldSystemFontOfSize:(double)a3;
+ (id)_opticalSystemFontOfSize:(double)a3;
+ (id)_preferredFontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 design:(id)a5 weight:(double)a6;
+ (id)_preferredFontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 weight:(double)a5;
+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 variant:(int64_t)a5 weight:(double)a6 maximumContentSizeCategory:(id)a7 compatibleWithTraitCollection:(id)a8;
+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 variant:(int64_t)a5 weight:(id)a6 maximumContentSizeCategory:(id)a7 compatibleWithTraitCollection:(id)a8 pointSize:(double)a9 pointSizeForScaling:(double)a10;
+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 weight:(double)a5;
+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 weight:(double)a5 maximumContentSizeCategory:(id)a6 compatibleWithTraitCollection:(id)a7;
+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 weight:(id)a5 symbolicTraits:(unsigned int)a6 maximumContentSizeCategory:(id)a7 compatibleWithTraitCollection:(id)a8 pointSize:(double)a9 pointSizeForScaling:(double)a10;
+ (id)_preferredFontForTextStyle:(id)a3 maximumContentSizeCategory:(id)a4 compatibleWithTraitCollection:(id)a5;
+ (id)_preferredFontForTextStyle:(id)a3 maximumPointSize:(double)a4 compatibleWithTraitCollection:(id)a5;
+ (id)_preferredFontForTextStyle:(id)a3 weight:(double)a4;
+ (id)_sharedFontCache;
+ (id)_sharedZeroPointFont;
+ (id)_supportedDynamicFontStyles;
+ (id)_systemFontOfSize:(double)a3 width:(id)a4 traits:(int)a5;
+ (id)_systemFontsOfSize:(double)a3 traits:(int)a4;
+ (id)_thinSystemFontOfSize:(double)a3;
+ (id)_ultraLightSystemFontOfSize:(double)a3;
+ (id)ib_preferredFontForTextStyle:(id)a3;
+ (id)systemFontOfSize:(double)a3 traits:(int)a4;
+ (id)systemFontOfSize:(double)a3 weight:(double)a4 design:(id)a5;
- (CGAffineTransform)_textMatrixTransformForContext:(SEL)a3;
- (CGFloat)leading;
- (CGFont)_backingCGSFont;
- (CGSize)advancementForGlyph:(unsigned __int16)a3;
- (NSString)familyName;
- (NSString)fontName;
- (UIFont)fontWithSize:(CGFloat)fontSize;
- (UIFont)init;
- (UIFont)initWithCoder:(id)a3;
- (UIFont)initWithFamilyName:(id)a3 traits:(int)a4 size:(double)a5;
- (UIFont)initWithMarkupDescription:(id)a3;
- (UIFont)initWithName:(id)a3 size:(double)a4;
- (UIFontDescriptor)fontDescriptor;
- (double)_baseLineHeightForFont:(BOOL)a3;
- (double)_scaledValueForValue:(double)a3 useLanguageAwareScaling:(BOOL)a4;
- (double)readableWidth;
- (double)underlinePosition;
- (id)_alternateSystemFonts;
- (id)_fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:(id)a3;
- (id)_fontScaledByScaleFactor:(double)a3;
- (id)_fontScaledLikeTextStyle:(id)a3 maximumPointSize:(double)a4 compatibleWithTraitCollection:(id)a5 forIB:(BOOL)a6;
- (id)bestMatchingFontForCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4 attributes:(id)a5 actualCoveredLength:(unint64_t *)a6;
- (id)coveredCharacterSet;
- (id)description;
- (id)familyNameForCSSFontFamilyValueForWebKit:(BOOL)a3;
- (id)htmlMarkupDescriptionForWebKit:(BOOL)a3;
- (id)lastResortFont;
- (id)markupDescription;
- (id)markupDescriptionForWebKit:(BOOL)a3 pointSize:(float)a4 sizeUnit:(id)a5;
- (int)traits;
- (unint64_t)getCaretPositions:(double *)a3 forGlyph:(unsigned int)a4 maximumLength:(unint64_t)a5;
- (unint64_t)mostCompatibleStringEncoding;
- (unsigned)_defaultGlyphForChar:(unsigned __int16)a3;
- (unsigned)hyphenGlyphForLocale:(id)a3;
- (void)applyToGraphicsContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getVerticalOriginTranslations:(CGSize *)a3 forCGGlyphs:(const unsigned __int16 *)a4 count:(unint64_t)a5;
- (void)setInContext:(CGContext *)a3;
@end

@implementation UIFont

- (UIFontDescriptor)fontDescriptor
{
  v2 = CTFontCopyFontDescriptor(self);

  return v2;
}

+ (id)_sharedFontCache
{
  if (_sharedFontCache_onceToken != -1)
  {
    +[UIFont _sharedFontCache];
  }

  return _sharedFontCache___sharedFontCache;
}

_UICache *__26__UIFont__sharedFontCache__block_invoke()
{
  result = objc_alloc_init(_UICache);
  _sharedFontCache___sharedFontCache = result;
  return result;
}

- (id)coveredCharacterSet
{
  v2 = CTFontCopyCharacterSet(self);

  return v2;
}

- (NSString)fontName
{
  v2 = CTFontCopyPostScriptName(self);

  return v2;
}

+ (double)_readableWidth
{
  result = *&_readableWidth_cachedReadableWidth;
  if (*&_readableWidth_cachedReadableWidth == 0.0)
  {
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __24__UIFont__readableWidth__block_invoke;
    v7 = &unk_1E7267F40;
    v8 = a1;
    v9 = a2;
    if (_readableWidth_onceToken != -1)
    {
      dispatch_once(&_readableWidth_onceToken, &v4);
    }

    [objc_msgSend(a1 preferredFontForTextStyle:{*MEMORY[0x1E6965AB0], v4, v5, v6, v7, v8, v9), "readableWidth"}];
    _readableWidth_cachedReadableWidth = *&result;
  }

  return result;
}

uint64_t __24__UIFont__readableWidth__block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v5 = __24__UIFont__readableWidth__block_invoke_2;
  v6 = &unk_1E726E388;
  v7 = *(a1 + 32);
  v1 = getUIContentSizeCategoryDidChangeNotification[0]();
  __24__UIFont__readableWidth__block_invoke_2(v4, v1);
  v2 = getUIApplicationDidEnterBackgroundNotification[0]();
  return v5(v4, v2);
}

uint64_t __24__UIFont__readableWidth__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    __24__UIFont__readableWidth__block_invoke_2_cold_1(a1);
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  return [v3 addObserverForName:a2 object:0 queue:0 usingBlock:&__block_literal_global_105];
}

- (double)readableWidth
{
  v13 = *MEMORY[0x1E69E9840];
  AssociatedObject = objc_getAssociatedObject(self, &readableWidth_readableWidthKey);
  if (AssociatedObject)
  {

    [AssociatedObject doubleValue];
  }

  else
  {
    memset_pattern16(__b, aMmmmmmmm, 0x7CuLL);
    v5 = [MEMORY[0x1E696AEC0] stringWithCharacters:__b length:62];
    v6 = objc_alloc(MEMORY[0x1E696AAB0]);
    v10 = @"NSFont";
    v11 = self;
    v7 = CTLineCreateWithAttributedString([v6 initWithString:v5 attributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v11, &v10, 1)}]);
    if (!v7)
    {
      return 0.0;
    }

    v8 = v7;
    TypographicBounds = CTLineGetTypographicBounds(v7, 0, 0, 0);
    CFRelease(v8);
    if (TypographicBounds > 0.0)
    {
      objc_setAssociatedObject(self, &readableWidth_readableWidthKey, [MEMORY[0x1E696AD98] numberWithDouble:TypographicBounds], 3);
    }

    return TypographicBounds;
  }

  return result;
}

- (int)traits
{
  UIFontType = CTFontGetUIFontType();
  result = 1;
  if (UIFontType > 133)
  {
    if ((UIFontType - 135) >= 4)
    {
      if (UIFontType == 134)
      {
        return result;
      }

      if (UIFontType != 140)
      {
        return CTFontGetSymbolicTraits(self) & 3;
      }

      return 4;
    }

    return 3;
  }

  if (UIFontType > 102)
  {
    if ((UIFontType - 106) >= 4)
    {
      if (UIFontType != 103)
      {
        if (UIFontType == 104)
        {
          return 16;
        }

        return CTFontGetSymbolicTraits(self) & 3;
      }

      return 8;
    }

    return 2;
  }

  if (UIFontType > 51)
  {
    if (UIFontType != 52)
    {
      if (UIFontType != 102)
      {
        return CTFontGetSymbolicTraits(self) & 3;
      }

      return 4;
    }

    return 3;
  }

  if (UIFontType == 3)
  {
    return 2;
  }

  if (UIFontType != 27)
  {
    return CTFontGetSymbolicTraits(self) & 3;
  }

  return result;
}

- (NSString)familyName
{
  v2 = CTFontCopyFamilyName(self);

  return v2;
}

+ (id)_sharedZeroPointFont
{
  if (_sharedZeroPointFont_once != -1)
  {
    +[UIFont _sharedZeroPointFont];
  }

  return _sharedZeroPointFont___zeroPointCTFont;
}

void __30__UIFont__sharedZeroPointFont__block_invoke()
{
  MEMORY[0x193AD39E0](0.0);
  _sharedZeroPointFont___zeroPointCTFont = CTFontCreateWithNameAndOptions(@"Helvetica", 0.0, 0, 4uLL);

  JUMPOUT(0x193AD39E0);
}

- (CGFloat)leading
{
  if (dyld_program_sdk_at_least())
  {

    [(UIFont *)self _leading];
  }

  else
  {

    [(UIFont *)self lineHeight];
  }

  return result;
}

- (UIFont)init
{
  v3.receiver = self;
  v3.super_class = UIFont;
  return [(UIFont *)&v3 init];
}

+ (UIFont)fontWithMarkupDescription:(id)a3
{
  v3 = [[UIFont alloc] initWithMarkupDescription:a3];

  return v3;
}

+ (NSArray)familyNames
{
  v2 = CTFontManagerCopyAvailableFontFamilyNames();

  return v2;
}

+ (NSArray)fontNamesForFamilyName:(NSString *)familyName
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!familyName)
  {
    return 0;
  }

  v7 = *MEMORY[0x1E6965790];
  v8[0] = familyName;
  v3 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1]);
  MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v3, 0);
  CFRelease(v3);
  if (!MatchingFontDescriptors)
  {
    return MEMORY[0x1E695E0F0];
  }

  v5 = CTFontDescriptorsCopyAttribute();
  CFRelease(MatchingFontDescriptors);
  return v5;
}

+ (id)_fontWithDescriptor:(id)a3 size:(double)a4 textStyleForScaling:(id)a5 pointSizeForScaling:(double)a6 maximumPointSizeAfterScaling:(double)a7 forIB:(BOOL)a8 legibilityWeight:(int64_t)a9
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v10 = a8;
  v15 = a3;
  if (a8)
  {
    v16 = 0;
LABEL_9:
    if (a9 != -1)
    {
      v20 = *MEMORY[0x1E69657F0];
      v21 = [v15 objectForKey:*MEMORY[0x1E69657F0]];
      if (!v21 || [v21 unsignedIntegerValue] != a9)
      {
        v26 = v20;
        v27[0] = [MEMORY[0x1E696AD98] numberWithLong:a9];
        v15 = [v15 fontDescriptorByAddingAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1)}];
        if (!v15)
        {
          +[UIFont _fontWithDescriptor:size:textStyleForScaling:pointSizeForScaling:maximumPointSizeAfterScaling:forIB:legibilityWeight:];
        }
      }
    }

    v22 = CTFontCreateWithFontDescriptor(v15, a4, 0);
    v19 = v22;
    if (!v10 && v22)
    {
      [+[UIFont _sharedFontCache](UIFont "_sharedFontCache")];
    }

    goto LABEL_17;
  }

  if (a9 == -1)
  {
    v18 = _AXSEnhanceTextLegibilityEnabled() != 0;
  }

  else
  {
    v18 = a9 == 1;
  }

  v16 = [_UIFontCacheKey newFontCacheKeyWithFontDescriptor:v15 pointSize:a5 textStyleForScaling:v18 pointSizeForScaling:a4 maximumPointSizeAfterScaling:a6 textLegibility:a7];
  v19 = [+[UIFont _sharedFontCache](UIFont "_sharedFontCache")];
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_17:

  v23 = [a5 copy];
  *(__CTFontGetExtraData(v19) + 32) = v23;
  *(__CTFontGetExtraData(v19) + 40) = a6;
  *(__CTFontGetExtraData(v19) + 48) = a7;
  ExtraData = __CTFontGetExtraData(v19);
  if (v10)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  *(ExtraData + 24) = *(ExtraData + 24) & 0xFD | v25;
  return v19;
}

+ (id)_systemFontsOfSize:(double)a3 traits:(int)a4
{
  v4 = *&a4;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [UIFont fontWithName:@"Helvetica" size:v4 traits:a3];
  if (v7)
  {
    [v6 addObject:v7];
  }

  return v6;
}

- (id)_alternateSystemFonts
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([(UIFont *)self __isSystemFont])
  {
    v4 = objc_opt_class();
    [(UIFont *)self pointSize];
    v3 = [v4 _systemFontsOfSize:-[UIFont traits](self traits:{"traits"), v5}];
    if ([v3 containsObject:self])
    {
      [v3 removeObject:self];
    }
  }

  return v3;
}

+ (UIFont)preferredFontForTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(UITraitCollection *)traitCollection
{
  v6 = [(UITraitCollection *)traitCollection preferredContentSizeCategory];
  v7 = [(UITraitCollection *)traitCollection legibilityWeight];

  return __UIFontForTextStyle(style, v6, v7, 0, 0);
}

+ (id)_preferredFontForTextStyle:(id)a3 maximumContentSizeCategory:(id)a4 compatibleWithTraitCollection:(id)a5
{
  if (!a4 || getUIContentSizeCategoryUnspecified() == a4)
  {

    return [a1 preferredFontForTextStyle:a3 compatibleWithTraitCollection:a5];
  }

  else
  {
    CTFontDescriptorGetTextStyleSize();

    return [a1 _preferredFontForTextStyle:a3 maximumPointSize:a5 compatibleWithTraitCollection:?];
  }
}

+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 variant:(int64_t)a5 weight:(double)a6 maximumContentSizeCategory:(id)a7 compatibleWithTraitCollection:(id)a8
{
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:a6];

  return [a1 _preferredFontForTextStyle:a3 design:a4 variant:a5 weight:v14 maximumContentSizeCategory:a7 compatibleWithTraitCollection:a8 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 variant:(int64_t)a5 weight:(id)a6 maximumContentSizeCategory:(id)a7 compatibleWithTraitCollection:(id)a8 pointSize:(double)a9 pointSizeForScaling:(double)a10
{
  v10 = (a5 << 7) & 0x10000;
  if ((a5 & 0x100) != 0)
  {
    v10 = 0x8000;
  }

  if (!a4)
  {
    a4 = (@"NSCTFontUIFontDesignRounded" & (a5 << 47 >> 63));
  }

  return [a1 _preferredFontForTextStyle:a3 design:a4 weight:a6 symbolicTraits:(a5 >> 9) & 2 | v10 maximumContentSizeCategory:a7 compatibleWithTraitCollection:a8 pointSize:a9 pointSizeForScaling:a10];
}

+ (id)_preferredFontForTextStyle:(id)a3 weight:(double)a4
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a4];

  return [a1 _preferredFontForTextStyle:a3 design:0 weight:v6 symbolicTraits:0 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 weight:(double)a5
{
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a5];

  return [a1 _preferredFontForTextStyle:a3 design:a4 weight:v8 symbolicTraits:0 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 weight:(double)a5
{
  v5 = *&a4;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:a5];

  return [a1 _preferredFontForTextStyle:a3 design:0 weight:v8 symbolicTraits:v5 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 design:(id)a5 weight:(double)a6
{
  v7 = *&a4;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a6];

  return [a1 _preferredFontForTextStyle:a3 design:a5 weight:v10 symbolicTraits:v7 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 weight:(double)a5 maximumContentSizeCategory:(id)a6 compatibleWithTraitCollection:(id)a7
{
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a5];

  return [a1 _preferredFontForTextStyle:a3 design:a4 weight:v12 symbolicTraits:0 maximumContentSizeCategory:a6 compatibleWithTraitCollection:a7 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)a3 design:(id)a4 weight:(id)a5 symbolicTraits:(unsigned int)a6 maximumContentSizeCategory:(id)a7 compatibleWithTraitCollection:(id)a8 pointSize:(double)a9 pointSizeForScaling:(double)a10
{
  v14 = *&a6;
  if (a8)
  {
    v19 = [a8 legibilityWeight];
  }

  else
  {
    v19 = -1;
  }

  v20 = __UIFontDescriptorWithTextStyle(a3, [a8 preferredContentSizeCategory], 0, v14, a4, a5, v19);
  if (a7)
  {
    if (([a7 isEqualToString:getUIContentSizeCategoryUnspecified()] & 1) == 0)
    {
      v21 = __UIFontDescriptorWithTextStyle(a3, a7, 0, 0, 0, 0, v19);
      [v21 pointSize];
      v23 = v22;
      [v20 pointSize];
      if (v23 < v24)
      {
        [v21 pointSize];
        v20 = [v20 fontDescriptorWithSize:?];
      }
    }
  }

  return [a1 _fontWithDescriptor:v20 size:0 textStyleForScaling:0 pointSizeForScaling:v19 maximumPointSizeAfterScaling:a9 forIB:a10 legibilityWeight:0.0];
}

+ (BOOL)_isSupportedDynamicFontTextStyle:(id)a3
{
  if (dyld_program_sdk_at_least())
  {

    return CTFontDescriptorCanCreateWithTextStyle();
  }

  else
  {
    v6 = [a1 _supportedDynamicFontStyles];

    return [v6 containsObject:a3];
  }
}

+ (id)_supportedDynamicFontStyles
{
  if (_supportedDynamicFontStyles_onceToken != -1)
  {
    +[UIFont _supportedDynamicFontStyles];
  }

  return _supportedDynamicFontStyles__fontStyles;
}

uint64_t __37__UIFont__supportedDynamicFontStyles__block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"UICTFontTextStyleHeadline", @"UICTFontTextStyleBody", @"UICTFontTextStyleSubhead", @"UICTFontTextStyleFootnote", @"UICTFontTextStyleCaption1", @"UICTFontTextStyleCaption2", @"UICTFontTextStyleTitle1", @"UICTFontTextStyleTitle2", @"UICTFontTextStyleTitle3", @"UICTFontTextStyleTitle4", @"UICTFontTextStyleTitle5", @"UICTFontTextStyleSubtitle", @"UICTFontTextStyleSubtitle1", @"UICTFontTextStyleSubtitle2", @"UICTFontTextStyleSubtitle3", @"UICTFontTextStyleCallout", @"UICTFontTextStyleFootnote", @"UICTFontTextStyleFootnote2", @"UICTFontTextStyleHeadline1", @"UICTFontTextStyleHeadline2", @"UICTFontTextStyleHeadline3", @"UICTFontTextStyleSubhead1", @"UICTFontTextStyleSubhead2", 0}];
  _supportedDynamicFontStyles__fontStyles = result;
  return result;
}

- (id)_fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:(id)a3
{
  v5 = [(UIFont *)self fontDescriptor];
  if (a3)
  {
    v6 = [a3 legibilityWeight];
  }

  else
  {
    v6 = -1;
  }

  v7 = [(UIFont *)self textStyleForScaling];
  if (!v7)
  {
    if (![(UIFont *)self _isTextStyleFont])
    {
LABEL_13:
      v12 = 0;
LABEL_16:
      v7 = 0;
      goto LABEL_18;
    }

LABEL_10:
    [(UIFont *)self _textStyle];
    v14 = *MEMORY[0x1E6965850];
    [(UIFontDescriptor *)v5 objectForKey:*MEMORY[0x1E6965850]];
    CTFontDescriptorGetTextStyleSize();
    v16 = v15;
    [(UIFont *)self pointSize];
    if (v17 == v16)
    {
      v18 = [(UIFontDescriptor *)v5 objectForKey:@"NSCTFontOpticalSizeAttribute"];
      if (!v7 && v18)
      {
        goto LABEL_13;
      }
    }

    else if (!v7)
    {
      goto LABEL_17;
    }

    v12 = [(UIFont *)self isIBTextStyleFont];
    +[UIFont _normalizedContentSizeCategory:default:](UIFont, "_normalizedContentSizeCategory:default:", [a3 preferredContentSizeCategory], 0);
    ContentSizeCategoryIndex = CTFontDescriptorGetContentSizeCategoryIndex();
    if (CTFontDescriptorGetContentSizeCategoryIndex() != ContentSizeCategoryIndex)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:ContentSizeCategoryIndex];
      CTFontDescriptorGetTextStyleSize();
      v25 = v24;
      v26 = [(NSDictionary *)[(UIFontDescriptor *)v5 fontAttributes] mutableCopy];
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", ContentSizeCategoryIndex), v14}];
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v25), @"NSFontSizeAttribute"}];
      [v26 removeObjectForKey:*MEMORY[0x1E69657F0]];
      v5 = [UIFontDescriptor fontDescriptorWithFontAttributes:v26];

      [(UIFont *)self pointSizeForScaling];
      v9 = v27;
      [(UIFont *)self maximumPointSizeAfterScaling];
      v11 = v28;
      v7 = 0;
LABEL_24:
      v13 = 0.0;
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UIFont *)self _isTextStyleFont])
  {
    goto LABEL_10;
  }

  if (![objc_opt_class() _isSupportedDynamicFontTextStyle:v7])
  {
LABEL_17:
    v12 = 0;
LABEL_18:
    if (v6 == -1)
    {
      return self;
    }

    if (![(UIFont *)self __isSystemFont])
    {
      return self;
    }

    v20 = [(UIFontDescriptor *)v5 objectForKey:*MEMORY[0x1E69657F0]];
    if ([v20 isEqual:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", v6)}])
    {
      return self;
    }

    [(UIFont *)self pointSizeForScaling];
    v9 = v22;
    [(UIFont *)self maximumPointSizeAfterScaling];
    v11 = v23;
    goto LABEL_24;
  }

  [(UIFont *)self pointSizeForScaling];
  v9 = v8;
  [(UIFont *)self maximumPointSizeAfterScaling];
  v11 = v10;
  v12 = [(UIFont *)self isIBFontMetricsScaledFont];
  [objc_opt_class() _pointSize:v7 scaledLikeTextStyle:a3 maximumPointSize:v9 compatibleWithTraitCollection:v11];
LABEL_25:

  return [UIFont _fontWithDescriptor:v5 size:v7 textStyleForScaling:v12 pointSizeForScaling:v6 maximumPointSizeAfterScaling:v13 forIB:v9 legibilityWeight:v11];
}

+ (id)_preferredFontForTextStyle:(id)a3 maximumPointSize:(double)a4 compatibleWithTraitCollection:(id)a5
{
  if (a4 <= 0.0)
  {

    return [UIFont preferredFontForTextStyle:a3 compatibleWithTraitCollection:?];
  }

  else
  {
    v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 compatibleWithTraitCollection:a5];
    [(UIFontDescriptor *)v7 pointSize];
    if (v8 >= a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = v8;
    }

    if (a5)
    {
      v10 = [a5 legibilityWeight];
    }

    else
    {
      v10 = -1;
    }

    return [UIFont _fontWithDescriptor:v7 size:0 textStyleForScaling:0 pointSizeForScaling:v10 maximumPointSizeAfterScaling:v9 forIB:0.0 legibilityWeight:a4];
  }
}

- (id)_fontScaledLikeTextStyle:(id)a3 maximumPointSize:(double)a4 compatibleWithTraitCollection:(id)a5 forIB:(BOOL)a6
{
  v6 = a6;
  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UIFont *)self _isTextStyleFont])
  {
    [(UIFont *)self maximumPointSizeAfterScaling];
    if (v11 <= 0.0)
    {
      v12 = objc_opt_class();
      v13 = [(UIFont *)self _textStyle];

      return [v12 _preferredFontForTextStyle:v13 maximumPointSize:a5 compatibleWithTraitCollection:a4];
    }

LABEL_8:
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"A scaled font returned by UIFontMetrics should not be used to create another scaled font." userInfo:{0), "raise"}];
    return 0;
  }

  if ([(UIFont *)self textStyleForScaling])
  {
    goto LABEL_8;
  }

  v15 = [(UIFont *)self fontDescriptor];
  v16 = objc_opt_class();
  [(UIFont *)self pointSize];
  [v16 _pointSize:a3 scaledLikeTextStyle:a5 maximumPointSize:? compatibleWithTraitCollection:?];
  v18 = v17;
  [(UIFont *)self pointSize];
  v20 = v19;
  if (a5)
  {
    v21 = [a5 legibilityWeight];
  }

  else
  {
    v21 = -1;
  }

  return [UIFont _fontWithDescriptor:v15 size:a3 textStyleForScaling:v6 pointSizeForScaling:v21 maximumPointSizeAfterScaling:v18 forIB:v20 legibilityWeight:a4];
}

+ (double)_pointSize:(double)a3 scaledLikeTextStyle:(id)a4 maximumPointSize:(double)a5 compatibleWithTraitCollection:(id)a6 roundSize:(BOOL)a7
{
  v7 = a7;
  [[UIFont preferredFontForTextStyle:a6 compatibleWithTraitCollection:?], "_scaledValueForValue:", a3];
  v10 = round(result);
  if (v7)
  {
    result = v10;
  }

  if (result >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = result;
  }

  if (a5 > 0.0)
  {
    return v11;
  }

  return result;
}

+ (id)ib_preferredFontForTextStyle:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  +[UIFont _sharedFontCache];
  v4 = __UIFontDescriptorWithTextStyle(a3, 0, 0, 0, 0, 0, -1);
  if (v4)
  {
    v5 = CTFontCreateWithFontDescriptor(v4, 0.0, 0);
  }

  else
  {
    v5 = 0;
  }

  ExtraData = __CTFontGetExtraData(v5);
  *(ExtraData + 24) |= 2u;

  return v5;
}

- (double)_scaledValueForValue:(double)a3 useLanguageAwareScaling:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIFont *)self _textStyle];
  if (v7)
  {
    v8 = v7;
    if (_scaledValueForValue_useLanguageAwareScaling__onceToken != -1)
    {
      [UIFont _scaledValueForValue:useLanguageAwareScaling:];
    }

    os_unfair_lock_lock_with_options();
    v17 = 0.0;
    HasExuberatedLineHeight = CTFontHasExuberatedLineHeight();
    v10 = &_scaledValueForValue_useLanguageAwareScaling____textStyleLanguageAwareBodyLeadingCache;
    if ((v4 & HasExuberatedLineHeight) == 0)
    {
      v10 = &_scaledValueForValue_useLanguageAwareScaling____textStyleBodyLeadingCache;
    }

    v11 = *v10;
    v12 = [*v10 objectForKey:v8];
    if (v12)
    {
      [v12 doubleValue];
      v17 = v13;
    }

    else
    {
      if ([(UIFont *)self _isTextStyleFont]&& ((v4 | HasExuberatedLineHeight ^ 1) & 1) != 0)
      {
        CTFontDescriptorGetTextStyleSize();
        v14 = 0.0;
      }

      else
      {
        [(__CTFont *)__UIFontForTextStyle(v8 _bodyLeading:-1];
        v17 = v14;
      }

      [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v14), v8}];
    }

    os_unfair_lock_unlock(&__UIFontTextStyleBodyLeadingCacheLock);
    if (v17 != 0.0)
    {
      [(UIFont *)self _bodyLeading];
      return v15 * a3 / v17;
    }
  }

  return a3;
}

id __55__UIFont__scaledValueForValue_useLanguageAwareScaling___block_invoke()
{
  _scaledValueForValue_useLanguageAwareScaling____textStyleBodyLeadingCache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
  _scaledValueForValue_useLanguageAwareScaling____textStyleLanguageAwareBodyLeadingCache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
  result = [UIFont _normalizedContentSizeCategory:0 default:1];
  _scaledValueForValue_useLanguageAwareScaling____defaultContentSizeCategory = result;
  return result;
}

- (UIFont)initWithName:(id)a3 size:(double)a4
{
  if (!a3)
  {
    return 0;
  }

  v5 = [objc_opt_class() fontWithName:a3 size:0 traits:a4];

  return v5;
}

- (UIFont)initWithFamilyName:(id)a3 traits:(int)a4 size:(double)a5
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_opt_class() fontWithName:a3 size:*&a4 traits:a5];

  return v6;
}

- (UIFont)initWithMarkupDescription:(id)a3
{
  v19 = self;
  v26 = *MEMORY[0x1E69E9840];
  v20 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = [a3 componentsSeparatedByString:@";"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = @"Helvetica";
    v9 = *v22;
    v10 = 12.0;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = [*(*(&v21 + 1) + 8 * v11) componentsSeparatedByString:{@":", v19}];
      if ([v12 count] != 2)
      {
        break;
      }

      v13 = [objc_msgSend(v12 objectAtIndex:{0), "stringByStrippingLeadingAndTrailingWhitespaceAndQuotes"}];
      v14 = [objc_msgSend(v12 objectAtIndex:{1), "stringByStrippingLeadingAndTrailingWhitespaceAndQuotes"}];
      if ([v13 compare:@"font-family" options:1])
      {
        if ([v13 compare:@"font-weight" options:1])
        {
          if ([v13 compare:@"font-style" options:1])
          {
            if (![v13 compare:@"font-size" options:1])
            {
              [v14 floatValue];
              v10 = v15;
            }
          }

          else
          {
            v7 = v7 | ([v14 compare:@"italic" options:1] == 0);
          }
        }

        else if ([v14 compare:@"bold" options:1])
        {
          v7 = v7;
        }

        else
        {
          v7 = v7 | 2;
        }
      }

      else
      {
        v8 = v14;
      }

      if (v6 == ++v11)
      {
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = @"Helvetica";
    v10 = 12.0;
  }

  if ([objc_opt_class() _isSupportedDynamicFontTextStyle:v8])
  {

    v16 = __UIFontForTextStyle(v8, 0, -1, 0, 0);
  }

  else if ([(__CTFont *)v8 isEqualToString:@"system-ui"])
  {

    v16 = UINewFont(0, v7, 0, 0, 1, 0, v10, 0.0);
  }

  else
  {
    v16 = [(UIFont *)v19 initWithFamilyName:v8 traits:v7 size:v10];
  }

  v17 = v16;

  return v17;
}

- (id)familyNameForCSSFontFamilyValueForWebKit:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIFont *)self _textStyle];
  if (v5)
  {
    v6 = v5;
    if ([(UIFont *)self _isTextStyleFont])
    {
      return v6;
    }
  }

  v6 = [(UIFont *)self fontName];
  if ([(NSString *)v6 hasPrefix:@"."])
  {
    if (v3)
    {
      return @"system-ui";
    }

    return v6;
  }

  v8 = [(NSString *)v6 componentsSeparatedByString:@"-"];
  if ([(NSArray *)v8 count]> 1)
  {
    v9 = [(NSArray *)v8 lastObject];
    if (([v9 isEqualToString:@"Bold"] & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", @"Italic"))
    {
      return v6;
    }
  }

  return [(UIFont *)self familyName];
}

- (id)markupDescriptionForWebKit:(BOOL)a3 pointSize:(float)a4 sizeUnit:(id)a5
{
  v7 = a3;
  v9 = [(UIFont *)self traits];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(UIFont *)self familyNameForCSSFontFamilyValueForWebKit:v7];
  v12 = @"bold";
  v13 = @"normal";
  if ((v9 & 2) == 0)
  {
    v12 = @"normal";
  }

  if (v9)
  {
    v13 = @"italic";
  }

  return [v10 stringWithFormat:@"font-family: %@; font-weight: %@; font-style: %@; font-size: %.2f%@", v11, v12, v13, a4, a5];
}

- (id)markupDescription
{
  [(UIFont *)self pointSize];
  *&v3 = v3;

  return [(UIFont *)self markupDescriptionForWebKit:1 pointSize:@"pt" sizeUnit:v3];
}

- (id)htmlMarkupDescriptionForWebKit:(BOOL)a3
{
  v3 = a3;
  if (dyld_program_sdk_at_least())
  {
    [(UIFont *)self pointSize];
    *&v5 = v5;

    return [(UIFont *)self markupDescriptionForWebKit:v3 pointSize:@"px" sizeUnit:v5];
  }

  else
  {

    return [(UIFont *)self markupDescription];
  }
}

- (id)_fontScaledByScaleFactor:(double)a3
{
  [(UIFont *)self pointSize];
  v6 = round(v5 * a3 * 4.0) * 0.25;
  v7 = [(UIFont *)self fontDescriptor];

  return [UIFont fontWithDescriptor:v7 size:v6];
}

+ (UIFont)fontWithName:(id)a3 size:(double)a4 traits:(int)a5
{
  v5 = UINewFont(a3, *&a5, 0, 0, 0, 0, a4, 0.0);

  return v5;
}

+ (id)systemFontOfSize:(double)a3 traits:(int)a4
{
  v4 = UINewFont(0, *&a4, 0, 0, 1, 0, a3, 0.0);

  return v4;
}

+ (id)_systemFontOfSize:(double)a3 width:(id)a4 traits:(int)a5
{
  v5 = UINewFont(0, *&a5, 0, a4, 1, 0, a3, 0.0);

  return v5;
}

+ (id)_opticalSystemFontOfSize:(double)a3
{
  v3 = UINewFont(0, 0, 0, 0, 1, 0, a3, 0.0);

  return v3;
}

+ (id)_opticalBoldSystemFontOfSize:(double)a3
{
  v3 = UINewFont(0, 2, 0, 0, 1, 0, a3, 0.0);

  return v3;
}

+ (id)_thinSystemFontOfSize:(double)a3
{
  v3 = UINewFont(0, 4, 0, 0, 1, 0, a3, 0.0);

  return v3;
}

+ (id)_lightSystemFontOfSize:(double)a3
{
  v3 = UINewFont(0, 8, 0, 0, 1, 0, a3, 0.0);

  return v3;
}

+ (id)_ultraLightSystemFontOfSize:(double)a3
{
  v3 = UINewFont(0, 16, 0, 0, 1, 0, a3, 0.0);

  return v3;
}

+ (UIFont)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight
{
  v4 = UINewFont(0, 0, @"NSCTFontUIFontDesignDefault", 0, 1, 0, fontSize, weight);

  return v4;
}

+ (UIFont)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight width:(UIFontWidth)width
{
  if (width == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:width];
  }

  v8 = UINewFont(0, 0, @"NSCTFontUIFontDesignDefault", v7, 1, 0, fontSize, weight);

  return v8;
}

+ (id)systemFontOfSize:(double)a3 weight:(double)a4 design:(id)a5
{
  v5 = UINewFont(0, 0, a5, 0, 1, 0, a3, a4);

  return v5;
}

+ (UIFont)monospacedSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight
{
  v4 = UINewFont(0, 0, @"NSCTFontUIFontDesignMonospaced", 0, 1, 0, fontSize, weight);

  return v4;
}

+ (UIFont)monospacedDigitSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight
{
  v4 = UINewFont(0, 0, @"NSCTFontUIFontDesignDefault", 0, 1, 1, fontSize, weight);

  return v4;
}

- (UIFont)initWithCoder:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  [a3 decodeDoubleForKey:@"UIFontPointSize"];
  v6 = v5;
  v7 = [a3 decodeIntegerForKey:@"UIFontTraits"];
  v8 = [a3 decodeBoolForKey:@"UIIBFontMetricsScaledFont"];
  v9 = objc_opt_class();
  v28.receiver = self;
  v28.super_class = UIFont;

  if ([a3 containsValueForKey:@"UIIBTextStyle"])
  {
    v10 = +[UIFont ib_preferredFontForTextStyle:](UIFont, "ib_preferredFontForTextStyle:", [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UIIBTextStyle"]);
    return v10;
  }

  if ([a3 containsValueForKey:@"UIFontDescriptor"])
  {
    result = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UIFontDescriptor"];
    if (result)
    {
      v12 = result;
      v13 = CFGetTypeID(result);
      if (v13 != CTFontDescriptorGetTypeID())
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-[%@ initWithCoder]: decoded an object %@ as CTFontDescriptor.", v9, v12];
        v19 = *MEMORY[0x1E695E628];
        v29 = *MEMORY[0x1E696A578];
        v30[0] = v18;
        [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", v19, 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, &v29, 1))}];
        return 0;
      }

      v14 = [(UIFontDescriptor *)v12 objectForKey:@"NSCTFontUIUsageAttribute"];
      if (v14)
      {
        v15 = v14;
        if (([v14 isEqualToString:*MEMORY[0x1E6965740]] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", *MEMORY[0x1E6965748]))
        {
          v16 = [-[NSDictionary objectForKey:](-[UIFontDescriptor fontAttributes](v12 "fontAttributes")];
          if (v6 != 0.0)
          {
            v10 = [UIFont _systemFontOfSize:v16 width:v7 traits:v6];
            return v10;
          }

LABEL_15:
          v10 = +[UIFont _sharedZeroPointFont];
          return v10;
        }

        v20 = [(NSDictionary *)[(UIFontDescriptor *)v12 fontAttributes] objectForKey:@"NSFontSizeAttribute"];
        if (v20)
        {
          [v20 doubleValue];
          v6 = v21;
        }

        if (v6 == 0.0)
        {
          v12 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v15];
        }
      }

      v22 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UIFontTextStyleForScaling"];
      [a3 decodeDoubleForKey:@"UIFontPointSizeForScaling"];
      v24 = v23;
      [a3 decodeDoubleForKey:@"UIFontMaximumPointSizeAfterScaling"];
      v26 = v25;
      if (v8)
      {
        [UIFont _pointSize:v22 scaledLikeTextStyle:0 maximumPointSize:v24 compatibleWithTraitCollection:v25];
        v6 = v27;
      }

      v10 = [UIFont _fontWithDescriptor:v12 size:v22 textStyleForScaling:v8 pointSizeForScaling:-1 maximumPointSizeAfterScaling:v6 forIB:v24 legibilityWeight:v26];
      return v10;
    }
  }

  else
  {
    if ([a3 decodeBoolForKey:@"UISystemFont"])
    {
      if (v6 != 0.0)
      {
        v10 = [UIFont systemFontOfSize:v7 traits:v6];
        return v10;
      }

      goto LABEL_15;
    }

    v17 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UIFontName"];
    result = [v17 length];
    if (result)
    {
      if ([a3 containsValueForKey:@"UIFontTraits"])
      {
        v10 = [UIFont fontWithName:v17 size:v7 traits:v6];
      }

      else
      {
        v10 = [UIFont fontWithName:v17 size:v6];
      }

      return v10;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[UIFont fontName](self forKey:{"fontName"), @"UIFontName"}];
  v6 = [(UIFont *)self isIBTextStyleFont];
  v7 = [(UIFont *)self fontDescriptor];
  if (v6)
  {
    v8 = [(UIFontDescriptor *)v7 objectForKey:@"NSCTFontUIUsageAttribute"];
    if (!v8)
    {
      [(UIFont *)a2 encodeWithCoder:?];
    }

    [a3 encodeObject:v8 forKey:@"UIIBTextStyle"];
    v9 = 0.0;
  }

  else
  {
    [a3 encodeObject:v7 forKey:@"UIFontDescriptor"];
    [(UIFont *)self pointSize];
  }

  [a3 encodeDouble:@"UIFontPointSize" forKey:v9];
  [a3 encodeObject:-[UIFont textStyleForScaling](self forKey:{"textStyleForScaling"), @"UIFontTextStyleForScaling"}];
  [(UIFont *)self pointSizeForScaling];
  [a3 encodeDouble:@"UIFontPointSizeForScaling" forKey:?];
  [(UIFont *)self maximumPointSizeAfterScaling];
  [a3 encodeDouble:@"UIFontMaximumPointSizeAfterScaling" forKey:?];
  if ([(UIFont *)self isIBFontMetricsScaledFont])
  {
    [a3 encodeBool:1 forKey:@"UIIBFontMetricsScaledFont"];
  }

  [a3 encodeInteger:-[UIFont traits](self forKey:{"traits"), @"UIFontTraits"}];
  [a3 encodeBool:-[UIFont __isSystemFont](self forKey:{"__isSystemFont"), @"UISystemFont"}];
  [a3 encodeObject:-[UIFont fontName](self forKey:{"fontName"), @"NSName"}];
  [(UIFont *)self pointSize];

  [a3 encodeDouble:@"NSSize" forKey:?];
}

- (UIFont)fontWithSize:(CGFloat)fontSize
{
  if (dyld_program_sdk_at_least())
  {
    v5 = objc_opt_class();
    v6 = [(UIFont *)self fontDescriptor];

    return [v5 fontWithDescriptor:v6 size:fontSize];
  }

  else
  {
    v8 = [(UIFont *)self __isSystemFont];
    v9 = objc_opt_class();
    if (v8)
    {
      v10 = [(UIFont *)self traits];

      return [v9 systemFontOfSize:v10 traits:fontSize];
    }

    else
    {
      v11 = [(UIFont *)self fontName];
      v12 = [(UIFont *)self traits];

      return [v9 fontWithName:v11 size:v12 traits:fontSize];
    }
  }
}

+ (id)_fontWithName:(id)a3 size:(double)a4
{
  if ([a3 hasPrefix:@"."])
  {

    return [a1 fontWithName:a3 size:4096 traits:a4];
  }

  else
  {

    return [a1 fontWithName:a3 size:a4];
  }
}

- (unint64_t)mostCompatibleStringEncoding
{
  StringEncoding = CTFontGetStringEncoding(self);
  if (StringEncoding == 256)
  {
    return 30;
  }

  return CFStringConvertEncodingToNSStringEncoding(StringEncoding);
}

- (double)_baseLineHeightForFont:(BOOL)a3
{
  v3 = a3;
  [(UIFont *)self _defaultLineHeightForUILayout];
  v6 = v5;
  v7 = 0.0;
  if (v3)
  {
    [(UIFont *)self _leading];
  }

  return v6 + v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = UIFont;
  v4 = [(UIFont *)&v7 description];
  [(UIFont *)self pointSize];
  *&v5 = v5;
  return [v3 stringWithFormat:@"%@ %@", v4, -[UIFont markupDescriptionForWebKit:pointSize:sizeUnit:](self, "markupDescriptionForWebKit:pointSize:sizeUnit:", 0, @"pt", v5)];
}

- (CGAffineTransform)_textMatrixTransformForContext:(SEL)a3
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  CTFontGetMatrix(retstr, self);
  retstr->b = -retstr->b;
  retstr->d = -retstr->d;
  result = [(UIFont *)self isVertical];
  if (result)
  {
    CGAffineTransformMakeRotation(&t2, -1.57079633);
    v7 = *&retstr->c;
    *&v9.a = *&retstr->a;
    *&v9.c = v7;
    *&v9.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v11, &v9, &t2);
    v8 = *&v11.c;
    *&retstr->a = *&v11.a;
    *&retstr->c = v8;
    *&retstr->tx = *&v11.tx;
  }

  return result;
}

- (void)applyToGraphicsContext:(id)a3
{
  v4 = [a3 CGContext];
  if (self)
  {
    [(UIFont *)self _textMatrixTransformForContext:0];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGContextSetTextMatrix(v4, &v8);
  v5 = CTFontCopyGraphicsFont(self, 0);
  if (v5)
  {
    v6 = v5;
    CGContextSetFont(v4, v5);
    CFRelease(v6);
    [(UIFont *)self pointSize];
    CGContextSetFontSize(v4, v7);
    CGContextSetFontRenderingStyle();
  }

  else
  {
    NSLog(@"%s: CTFontCopyGraphicsFont returned NULL for font %p", "[UIFont(UIFont_AttributedStringDrawing) applyToGraphicsContext:]", self);
  }
}

- (void)setInContext:(CGContext *)a3
{
  v4 = [(objc_class *)+[NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:a3], "graphicsContextForApplicationFrameworkContext:", 1];

  [(UIFont *)self applyToGraphicsContext:v4];
}

- (void)getVerticalOriginTranslations:(CGSize *)a3 forCGGlyphs:(const unsigned __int16 *)a4 count:(unint64_t)a5
{
  v8 = CTFontCopyGraphicsFont(self, 0);
  memset(&v16, 0, sizeof(v16));
  if (self)
  {
    [(UIFont *)self _textMatrixTransformForContext:0];
  }

  UnitsPerEm = CTFontGetUnitsPerEm(self);
  CGAffineTransformMakeScale(&t2, 1.0 / UnitsPerEm, 1.0 / UnitsPerEm);
  v13 = v16;
  CGAffineTransformConcat(&v15, &v13, &t2);
  v16 = v15;
  if (CGFontGetGlyphVerticalOffsets())
  {
    if (a5 >= 1)
    {
      v10 = &a3[a5];
      v11 = *&v16.a;
      v12 = *&v16.c;
      do
      {
        *a3 = vmlaq_n_f64(vmulq_n_f64(v12, a3->height), v11, a3->width);
        ++a3;
      }

      while (a3 < v10);
    }
  }

  else
  {
    bzero(a3, 16 * a5);
  }

  CFRelease(v8);
}

- (CGFont)_backingCGSFont
{
  v2 = CTFontCopyGraphicsFont(self, 0);

  return v2;
}

- (double)underlinePosition
{
  UnderlinePosition = CTFontGetUnderlinePosition(self);
  if ([(UIFont *)self isVertical])
  {
    [(UIFont *)self ascender];
    v5 = v4;
    [(UIFont *)self descender];
    v7 = v6;
    if (v5 > -UnderlinePosition)
    {
      if (v5 >= -v6)
      {
        [(UIFont *)self underlineThickness];
        return v7 + v8;
      }

      else
      {
        return -v5;
      }
    }
  }

  return UnderlinePosition;
}

- (CGSize)advancementForGlyph:(unsigned __int16)a3
{
  if ([(UIFont *)self numberOfGlyphs]<= a3)
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    CTFontGetTransformedAdvancesForGlyphsAndStyle();
    v4 = 0.0;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (unsigned)hyphenGlyphForLocale:(id)a3
{
  characters = 8208;
  glyphs = 0;
  if (!CTFontGetGlyphsForCharacters(self, &characters, &glyphs, 1))
  {
    characters = 45;
    if (!CTFontGetGlyphsForCharacters(self, &characters, &glyphs, 1))
    {
      return 0;
    }
  }

  return glyphs;
}

- (unint64_t)getCaretPositions:(double *)a3 forGlyph:(unsigned int)a4 maximumLength:(unint64_t)a5
{
  v9 = [(UIFont *)self numberOfGlyphs];
  if (!a4 || v9 <= a4)
  {
    return 0;
  }

  return CTFontGetLigatureCaretPositions(self, a4, a3, a5);
}

- (unsigned)_defaultGlyphForChar:(unsigned __int16)a3
{
  characters = a3;
  glyphs = 0;
  if (CTFontGetGlyphsForCharacters(self, &characters, &glyphs, 1))
  {
    return glyphs;
  }

  else
  {
    return 0;
  }
}

- (id)bestMatchingFontForCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4 attributes:(id)a5 actualCoveredLength:(unint64_t *)a6
{
  v7 = self;
  v8 = MEMORY[0x193AD39E0](self, a2, 0.0);
  [a5 objectForKey:NSLanguageAttributeName];
  v9 = CTFontCreateForCharactersWithLanguage();
  MEMORY[0x193AD39E0](v8);
  if (v9 == v7)
  {
    CFRelease(v9);
  }

  else
  {
    v10 = v9;
    return v9;
  }

  return v7;
}

- (id)lastResortFont
{
  [(UIFont *)self pointSize];

  return [UIFont fontWithName:@"LastResort" size:?];
}

uint64_t __24__UIFont__readableWidth__block_invoke_2_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 handleFailureInMethod:v3 object:v4 file:@"UIFont.m" lineNumber:812 description:@"Notification name symbol not found"];
}

- (uint64_t)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"UIFont.m" lineNumber:1265 description:{@"Expecting a text style, got nil!"}];
}

@end
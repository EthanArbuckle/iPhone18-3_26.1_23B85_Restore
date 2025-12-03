@interface UIFont
+ (BOOL)_isSupportedDynamicFontTextStyle:(id)style;
+ (NSArray)familyNames;
+ (NSArray)fontNamesForFamilyName:(NSString *)familyName;
+ (UIFont)fontWithMarkupDescription:(id)description;
+ (UIFont)fontWithName:(id)name size:(double)size traits:(int)traits;
+ (UIFont)monospacedDigitSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight;
+ (UIFont)monospacedSystemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight;
+ (UIFont)preferredFontForTextStyle:(UIFontTextStyle)style compatibleWithTraitCollection:(UITraitCollection *)traitCollection;
+ (UIFont)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight;
+ (UIFont)systemFontOfSize:(CGFloat)fontSize weight:(UIFontWeight)weight width:(UIFontWidth)width;
+ (double)_pointSize:(double)size scaledLikeTextStyle:(id)style maximumPointSize:(double)pointSize compatibleWithTraitCollection:(id)collection roundSize:(BOOL)roundSize;
+ (double)_readableWidth;
+ (id)_fontWithDescriptor:(id)descriptor size:(double)size textStyleForScaling:(id)scaling pointSizeForScaling:(double)forScaling maximumPointSizeAfterScaling:(double)afterScaling forIB:(BOOL)b legibilityWeight:(int64_t)weight;
+ (id)_fontWithName:(id)name size:(double)size;
+ (id)_lightSystemFontOfSize:(double)size;
+ (id)_opticalBoldSystemFontOfSize:(double)size;
+ (id)_opticalSystemFontOfSize:(double)size;
+ (id)_preferredFontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits design:(id)design weight:(double)weight;
+ (id)_preferredFontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits weight:(double)weight;
+ (id)_preferredFontForTextStyle:(id)style design:(id)design variant:(int64_t)variant weight:(double)weight maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontForTextStyle:(id)style design:(id)design variant:(int64_t)variant weight:(id)weight maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection pointSize:(double)size pointSizeForScaling:(double)self0;
+ (id)_preferredFontForTextStyle:(id)style design:(id)design weight:(double)weight;
+ (id)_preferredFontForTextStyle:(id)style design:(id)design weight:(double)weight maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontForTextStyle:(id)style design:(id)design weight:(id)weight symbolicTraits:(unsigned int)traits maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection pointSize:(double)size pointSizeForScaling:(double)self0;
+ (id)_preferredFontForTextStyle:(id)style maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontForTextStyle:(id)style maximumPointSize:(double)size compatibleWithTraitCollection:(id)collection;
+ (id)_preferredFontForTextStyle:(id)style weight:(double)weight;
+ (id)_sharedFontCache;
+ (id)_sharedZeroPointFont;
+ (id)_supportedDynamicFontStyles;
+ (id)_systemFontOfSize:(double)size width:(id)width traits:(int)traits;
+ (id)_systemFontsOfSize:(double)size traits:(int)traits;
+ (id)_thinSystemFontOfSize:(double)size;
+ (id)_ultraLightSystemFontOfSize:(double)size;
+ (id)ib_preferredFontForTextStyle:(id)style;
+ (id)systemFontOfSize:(double)size traits:(int)traits;
+ (id)systemFontOfSize:(double)size weight:(double)weight design:(id)design;
- (CGAffineTransform)_textMatrixTransformForContext:(SEL)context;
- (CGFloat)leading;
- (CGFont)_backingCGSFont;
- (CGSize)advancementForGlyph:(unsigned __int16)glyph;
- (NSString)familyName;
- (NSString)fontName;
- (UIFont)fontWithSize:(CGFloat)fontSize;
- (UIFont)init;
- (UIFont)initWithCoder:(id)coder;
- (UIFont)initWithFamilyName:(id)name traits:(int)traits size:(double)size;
- (UIFont)initWithMarkupDescription:(id)description;
- (UIFont)initWithName:(id)name size:(double)size;
- (UIFontDescriptor)fontDescriptor;
- (double)_baseLineHeightForFont:(BOOL)font;
- (double)_scaledValueForValue:(double)value useLanguageAwareScaling:(BOOL)scaling;
- (double)readableWidth;
- (double)underlinePosition;
- (id)_alternateSystemFonts;
- (id)_fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:(id)collection;
- (id)_fontScaledByScaleFactor:(double)factor;
- (id)_fontScaledLikeTextStyle:(id)style maximumPointSize:(double)size compatibleWithTraitCollection:(id)collection forIB:(BOOL)b;
- (id)bestMatchingFontForCharacters:(const unsigned __int16 *)characters length:(unint64_t)length attributes:(id)attributes actualCoveredLength:(unint64_t *)coveredLength;
- (id)coveredCharacterSet;
- (id)description;
- (id)familyNameForCSSFontFamilyValueForWebKit:(BOOL)kit;
- (id)htmlMarkupDescriptionForWebKit:(BOOL)kit;
- (id)lastResortFont;
- (id)markupDescription;
- (id)markupDescriptionForWebKit:(BOOL)kit pointSize:(float)size sizeUnit:(id)unit;
- (int)traits;
- (unint64_t)getCaretPositions:(double *)positions forGlyph:(unsigned int)glyph maximumLength:(unint64_t)length;
- (unint64_t)mostCompatibleStringEncoding;
- (unsigned)_defaultGlyphForChar:(unsigned __int16)char;
- (unsigned)hyphenGlyphForLocale:(id)locale;
- (void)applyToGraphicsContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)getVerticalOriginTranslations:(CGSize *)translations forCGGlyphs:(const unsigned __int16 *)glyphs count:(unint64_t)count;
- (void)setInContext:(CGContext *)context;
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
    selfCopy = self;
    v9 = a2;
    if (_readableWidth_onceToken != -1)
    {
      dispatch_once(&_readableWidth_onceToken, &v4);
    }

    [objc_msgSend(self preferredFontForTextStyle:{*MEMORY[0x1E6965AB0], v4, v5, v6, v7, selfCopy, v9), "readableWidth"}];
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
    selfCopy = self;
    v7 = CTLineCreateWithAttributedString([v6 initWithString:v5 attributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &selfCopy, &v10, 1)}]);
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

+ (UIFont)fontWithMarkupDescription:(id)description
{
  v3 = [[UIFont alloc] initWithMarkupDescription:description];

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

+ (id)_fontWithDescriptor:(id)descriptor size:(double)size textStyleForScaling:(id)scaling pointSizeForScaling:(double)forScaling maximumPointSizeAfterScaling:(double)afterScaling forIB:(BOOL)b legibilityWeight:(int64_t)weight
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!descriptor)
  {
    return 0;
  }

  bCopy = b;
  descriptorCopy = descriptor;
  if (b)
  {
    v16 = 0;
LABEL_9:
    if (weight != -1)
    {
      v20 = *MEMORY[0x1E69657F0];
      v21 = [descriptorCopy objectForKey:*MEMORY[0x1E69657F0]];
      if (!v21 || [v21 unsignedIntegerValue] != weight)
      {
        v26 = v20;
        v27[0] = [MEMORY[0x1E696AD98] numberWithLong:weight];
        descriptorCopy = [descriptorCopy fontDescriptorByAddingAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1)}];
        if (!descriptorCopy)
        {
          +[UIFont _fontWithDescriptor:size:textStyleForScaling:pointSizeForScaling:maximumPointSizeAfterScaling:forIB:legibilityWeight:];
        }
      }
    }

    v22 = CTFontCreateWithFontDescriptor(descriptorCopy, size, 0);
    v19 = v22;
    if (!bCopy && v22)
    {
      [+[UIFont _sharedFontCache](UIFont "_sharedFontCache")];
    }

    goto LABEL_17;
  }

  if (weight == -1)
  {
    v18 = _AXSEnhanceTextLegibilityEnabled() != 0;
  }

  else
  {
    v18 = weight == 1;
  }

  v16 = [_UIFontCacheKey newFontCacheKeyWithFontDescriptor:descriptorCopy pointSize:scaling textStyleForScaling:v18 pointSizeForScaling:size maximumPointSizeAfterScaling:forScaling textLegibility:afterScaling];
  v19 = [+[UIFont _sharedFontCache](UIFont "_sharedFontCache")];
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_17:

  v23 = [scaling copy];
  *(__CTFontGetExtraData(v19) + 32) = v23;
  *(__CTFontGetExtraData(v19) + 40) = forScaling;
  *(__CTFontGetExtraData(v19) + 48) = afterScaling;
  ExtraData = __CTFontGetExtraData(v19);
  if (bCopy)
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

+ (id)_systemFontsOfSize:(double)size traits:(int)traits
{
  v4 = *&traits;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = [UIFont fontWithName:@"Helvetica" size:v4 traits:size];
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
  preferredContentSizeCategory = [(UITraitCollection *)traitCollection preferredContentSizeCategory];
  legibilityWeight = [(UITraitCollection *)traitCollection legibilityWeight];

  return __UIFontForTextStyle(style, preferredContentSizeCategory, legibilityWeight, 0, 0);
}

+ (id)_preferredFontForTextStyle:(id)style maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection
{
  if (!category || getUIContentSizeCategoryUnspecified() == category)
  {

    return [self preferredFontForTextStyle:style compatibleWithTraitCollection:collection];
  }

  else
  {
    CTFontDescriptorGetTextStyleSize();

    return [self _preferredFontForTextStyle:style maximumPointSize:collection compatibleWithTraitCollection:?];
  }
}

+ (id)_preferredFontForTextStyle:(id)style design:(id)design variant:(int64_t)variant weight:(double)weight maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection
{
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return [self _preferredFontForTextStyle:style design:design variant:variant weight:v14 maximumContentSizeCategory:category compatibleWithTraitCollection:collection pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)style design:(id)design variant:(int64_t)variant weight:(id)weight maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection pointSize:(double)size pointSizeForScaling:(double)self0
{
  v10 = (variant << 7) & 0x10000;
  if ((variant & 0x100) != 0)
  {
    v10 = 0x8000;
  }

  if (!design)
  {
    design = (@"NSCTFontUIFontDesignRounded" & (variant << 47 >> 63));
  }

  return [self _preferredFontForTextStyle:style design:design weight:weight symbolicTraits:(variant >> 9) & 2 | v10 maximumContentSizeCategory:category compatibleWithTraitCollection:collection pointSize:size pointSizeForScaling:scaling];
}

+ (id)_preferredFontForTextStyle:(id)style weight:(double)weight
{
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return [self _preferredFontForTextStyle:style design:0 weight:v6 symbolicTraits:0 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)style design:(id)design weight:(double)weight
{
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return [self _preferredFontForTextStyle:style design:design weight:v8 symbolicTraits:0 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits weight:(double)weight
{
  v5 = *&traits;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return [self _preferredFontForTextStyle:style design:0 weight:v8 symbolicTraits:v5 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits design:(id)design weight:(double)weight
{
  v7 = *&traits;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return [self _preferredFontForTextStyle:style design:design weight:v10 symbolicTraits:v7 maximumContentSizeCategory:0 compatibleWithTraitCollection:0 pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)style design:(id)design weight:(double)weight maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection
{
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:weight];

  return [self _preferredFontForTextStyle:style design:design weight:v12 symbolicTraits:0 maximumContentSizeCategory:category compatibleWithTraitCollection:collection pointSize:0.0 pointSizeForScaling:0.0];
}

+ (id)_preferredFontForTextStyle:(id)style design:(id)design weight:(id)weight symbolicTraits:(unsigned int)traits maximumContentSizeCategory:(id)category compatibleWithTraitCollection:(id)collection pointSize:(double)size pointSizeForScaling:(double)self0
{
  v14 = *&traits;
  if (collection)
  {
    legibilityWeight = [collection legibilityWeight];
  }

  else
  {
    legibilityWeight = -1;
  }

  v20 = __UIFontDescriptorWithTextStyle(style, [collection preferredContentSizeCategory], 0, v14, design, weight, legibilityWeight);
  if (category)
  {
    if (([category isEqualToString:getUIContentSizeCategoryUnspecified()] & 1) == 0)
    {
      v21 = __UIFontDescriptorWithTextStyle(style, category, 0, 0, 0, 0, legibilityWeight);
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

  return [self _fontWithDescriptor:v20 size:0 textStyleForScaling:0 pointSizeForScaling:legibilityWeight maximumPointSizeAfterScaling:size forIB:scaling legibilityWeight:0.0];
}

+ (BOOL)_isSupportedDynamicFontTextStyle:(id)style
{
  if (dyld_program_sdk_at_least())
  {

    return CTFontDescriptorCanCreateWithTextStyle();
  }

  else
  {
    _supportedDynamicFontStyles = [self _supportedDynamicFontStyles];

    return [_supportedDynamicFontStyles containsObject:style];
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

- (id)_fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:(id)collection
{
  fontDescriptor = [(UIFont *)self fontDescriptor];
  if (collection)
  {
    legibilityWeight = [collection legibilityWeight];
  }

  else
  {
    legibilityWeight = -1;
  }

  textStyleForScaling = [(UIFont *)self textStyleForScaling];
  if (!textStyleForScaling)
  {
    if (![(UIFont *)self _isTextStyleFont])
    {
LABEL_13:
      isIBTextStyleFont = 0;
LABEL_16:
      textStyleForScaling = 0;
      goto LABEL_18;
    }

LABEL_10:
    [(UIFont *)self _textStyle];
    v14 = *MEMORY[0x1E6965850];
    [(UIFontDescriptor *)fontDescriptor objectForKey:*MEMORY[0x1E6965850]];
    CTFontDescriptorGetTextStyleSize();
    v16 = v15;
    [(UIFont *)self pointSize];
    if (v17 == v16)
    {
      v18 = [(UIFontDescriptor *)fontDescriptor objectForKey:@"NSCTFontOpticalSizeAttribute"];
      if (!textStyleForScaling && v18)
      {
        goto LABEL_13;
      }
    }

    else if (!textStyleForScaling)
    {
      goto LABEL_17;
    }

    isIBTextStyleFont = [(UIFont *)self isIBTextStyleFont];
    +[UIFont _normalizedContentSizeCategory:default:](UIFont, "_normalizedContentSizeCategory:default:", [collection preferredContentSizeCategory], 0);
    ContentSizeCategoryIndex = CTFontDescriptorGetContentSizeCategoryIndex();
    if (CTFontDescriptorGetContentSizeCategoryIndex() != ContentSizeCategoryIndex)
    {
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:ContentSizeCategoryIndex];
      CTFontDescriptorGetTextStyleSize();
      v25 = v24;
      v26 = [(NSDictionary *)[(UIFontDescriptor *)fontDescriptor fontAttributes] mutableCopy];
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", ContentSizeCategoryIndex), v14}];
      [v26 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v25), @"NSFontSizeAttribute"}];
      [v26 removeObjectForKey:*MEMORY[0x1E69657F0]];
      fontDescriptor = [UIFontDescriptor fontDescriptorWithFontAttributes:v26];

      [(UIFont *)self pointSizeForScaling];
      v9 = v27;
      [(UIFont *)self maximumPointSizeAfterScaling];
      v11 = v28;
      textStyleForScaling = 0;
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

  if (![objc_opt_class() _isSupportedDynamicFontTextStyle:textStyleForScaling])
  {
LABEL_17:
    isIBTextStyleFont = 0;
LABEL_18:
    if (legibilityWeight == -1)
    {
      return self;
    }

    if (![(UIFont *)self __isSystemFont])
    {
      return self;
    }

    v20 = [(UIFontDescriptor *)fontDescriptor objectForKey:*MEMORY[0x1E69657F0]];
    if ([v20 isEqual:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", legibilityWeight)}])
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
  isIBTextStyleFont = [(UIFont *)self isIBFontMetricsScaledFont];
  [objc_opt_class() _pointSize:textStyleForScaling scaledLikeTextStyle:collection maximumPointSize:v9 compatibleWithTraitCollection:v11];
LABEL_25:

  return [UIFont _fontWithDescriptor:fontDescriptor size:textStyleForScaling textStyleForScaling:isIBTextStyleFont pointSizeForScaling:legibilityWeight maximumPointSizeAfterScaling:v13 forIB:v9 legibilityWeight:v11];
}

+ (id)_preferredFontForTextStyle:(id)style maximumPointSize:(double)size compatibleWithTraitCollection:(id)collection
{
  if (size <= 0.0)
  {

    return [UIFont preferredFontForTextStyle:style compatibleWithTraitCollection:?];
  }

  else
  {
    v7 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style compatibleWithTraitCollection:collection];
    [(UIFontDescriptor *)v7 pointSize];
    if (v8 >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = v8;
    }

    if (collection)
    {
      legibilityWeight = [collection legibilityWeight];
    }

    else
    {
      legibilityWeight = -1;
    }

    return [UIFont _fontWithDescriptor:v7 size:0 textStyleForScaling:0 pointSizeForScaling:legibilityWeight maximumPointSizeAfterScaling:sizeCopy forIB:0.0 legibilityWeight:size];
  }
}

- (id)_fontScaledLikeTextStyle:(id)style maximumPointSize:(double)size compatibleWithTraitCollection:(id)collection forIB:(BOOL)b
{
  bCopy = b;
  if ((dyld_program_sdk_at_least() & 1) == 0 && [(UIFont *)self _isTextStyleFont])
  {
    [(UIFont *)self maximumPointSizeAfterScaling];
    if (v11 <= 0.0)
    {
      v12 = objc_opt_class();
      _textStyle = [(UIFont *)self _textStyle];

      return [v12 _preferredFontForTextStyle:_textStyle maximumPointSize:collection compatibleWithTraitCollection:size];
    }

LABEL_8:
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"A scaled font returned by UIFontMetrics should not be used to create another scaled font." userInfo:{0), "raise"}];
    return 0;
  }

  if ([(UIFont *)self textStyleForScaling])
  {
    goto LABEL_8;
  }

  fontDescriptor = [(UIFont *)self fontDescriptor];
  v16 = objc_opt_class();
  [(UIFont *)self pointSize];
  [v16 _pointSize:style scaledLikeTextStyle:collection maximumPointSize:? compatibleWithTraitCollection:?];
  v18 = v17;
  [(UIFont *)self pointSize];
  v20 = v19;
  if (collection)
  {
    legibilityWeight = [collection legibilityWeight];
  }

  else
  {
    legibilityWeight = -1;
  }

  return [UIFont _fontWithDescriptor:fontDescriptor size:style textStyleForScaling:bCopy pointSizeForScaling:legibilityWeight maximumPointSizeAfterScaling:v18 forIB:v20 legibilityWeight:size];
}

+ (double)_pointSize:(double)size scaledLikeTextStyle:(id)style maximumPointSize:(double)pointSize compatibleWithTraitCollection:(id)collection roundSize:(BOOL)roundSize
{
  roundSizeCopy = roundSize;
  [[UIFont preferredFontForTextStyle:collection compatibleWithTraitCollection:?], "_scaledValueForValue:", size];
  v10 = round(result);
  if (roundSizeCopy)
  {
    result = v10;
  }

  if (result >= pointSize)
  {
    pointSizeCopy = pointSize;
  }

  else
  {
    pointSizeCopy = result;
  }

  if (pointSize > 0.0)
  {
    return pointSizeCopy;
  }

  return result;
}

+ (id)ib_preferredFontForTextStyle:(id)style
{
  if (!style)
  {
    return 0;
  }

  +[UIFont _sharedFontCache];
  v4 = __UIFontDescriptorWithTextStyle(style, 0, 0, 0, 0, 0, -1);
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

- (double)_scaledValueForValue:(double)value useLanguageAwareScaling:(BOOL)scaling
{
  scalingCopy = scaling;
  _textStyle = [(UIFont *)self _textStyle];
  if (_textStyle)
  {
    v8 = _textStyle;
    if (_scaledValueForValue_useLanguageAwareScaling__onceToken != -1)
    {
      [UIFont _scaledValueForValue:useLanguageAwareScaling:];
    }

    os_unfair_lock_lock_with_options();
    v17 = 0.0;
    HasExuberatedLineHeight = CTFontHasExuberatedLineHeight();
    v10 = &_scaledValueForValue_useLanguageAwareScaling____textStyleLanguageAwareBodyLeadingCache;
    if ((scalingCopy & HasExuberatedLineHeight) == 0)
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
      if ([(UIFont *)self _isTextStyleFont]&& ((scalingCopy | HasExuberatedLineHeight ^ 1) & 1) != 0)
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
      return v15 * value / v17;
    }
  }

  return value;
}

id __55__UIFont__scaledValueForValue_useLanguageAwareScaling___block_invoke()
{
  _scaledValueForValue_useLanguageAwareScaling____textStyleBodyLeadingCache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
  _scaledValueForValue_useLanguageAwareScaling____textStyleLanguageAwareBodyLeadingCache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:20];
  result = [UIFont _normalizedContentSizeCategory:0 default:1];
  _scaledValueForValue_useLanguageAwareScaling____defaultContentSizeCategory = result;
  return result;
}

- (UIFont)initWithName:(id)name size:(double)size
{
  if (!name)
  {
    return 0;
  }

  v5 = [objc_opt_class() fontWithName:name size:0 traits:size];

  return v5;
}

- (UIFont)initWithFamilyName:(id)name traits:(int)traits size:(double)size
{
  if (!name)
  {
    return 0;
  }

  v6 = [objc_opt_class() fontWithName:name size:*&traits traits:size];

  return v6;
}

- (UIFont)initWithMarkupDescription:(id)description
{
  selfCopy = self;
  v26 = *MEMORY[0x1E69E9840];
  v20 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v4 = [description componentsSeparatedByString:@";"];
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

      v12 = [*(*(&v21 + 1) + 8 * v11) componentsSeparatedByString:{@":", selfCopy}];
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
    v16 = [(UIFont *)selfCopy initWithFamilyName:v8 traits:v7 size:v10];
  }

  v17 = v16;

  return v17;
}

- (id)familyNameForCSSFontFamilyValueForWebKit:(BOOL)kit
{
  kitCopy = kit;
  _textStyle = [(UIFont *)self _textStyle];
  if (_textStyle)
  {
    fontName = _textStyle;
    if ([(UIFont *)self _isTextStyleFont])
    {
      return fontName;
    }
  }

  fontName = [(UIFont *)self fontName];
  if ([(NSString *)fontName hasPrefix:@"."])
  {
    if (kitCopy)
    {
      return @"system-ui";
    }

    return fontName;
  }

  v8 = [(NSString *)fontName componentsSeparatedByString:@"-"];
  if ([(NSArray *)v8 count]> 1)
  {
    lastObject = [(NSArray *)v8 lastObject];
    if (([lastObject isEqualToString:@"Bold"] & 1) == 0 && !objc_msgSend(lastObject, "isEqualToString:", @"Italic"))
    {
      return fontName;
    }
  }

  return [(UIFont *)self familyName];
}

- (id)markupDescriptionForWebKit:(BOOL)kit pointSize:(float)size sizeUnit:(id)unit
{
  kitCopy = kit;
  traits = [(UIFont *)self traits];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(UIFont *)self familyNameForCSSFontFamilyValueForWebKit:kitCopy];
  v12 = @"bold";
  v13 = @"normal";
  if ((traits & 2) == 0)
  {
    v12 = @"normal";
  }

  if (traits)
  {
    v13 = @"italic";
  }

  return [v10 stringWithFormat:@"font-family: %@; font-weight: %@; font-style: %@; font-size: %.2f%@", v11, v12, v13, size, unit];
}

- (id)markupDescription
{
  [(UIFont *)self pointSize];
  *&v3 = v3;

  return [(UIFont *)self markupDescriptionForWebKit:1 pointSize:@"pt" sizeUnit:v3];
}

- (id)htmlMarkupDescriptionForWebKit:(BOOL)kit
{
  kitCopy = kit;
  if (dyld_program_sdk_at_least())
  {
    [(UIFont *)self pointSize];
    *&v5 = v5;

    return [(UIFont *)self markupDescriptionForWebKit:kitCopy pointSize:@"px" sizeUnit:v5];
  }

  else
  {

    return [(UIFont *)self markupDescription];
  }
}

- (id)_fontScaledByScaleFactor:(double)factor
{
  [(UIFont *)self pointSize];
  v6 = round(v5 * factor * 4.0) * 0.25;
  fontDescriptor = [(UIFont *)self fontDescriptor];

  return [UIFont fontWithDescriptor:fontDescriptor size:v6];
}

+ (UIFont)fontWithName:(id)name size:(double)size traits:(int)traits
{
  v5 = UINewFont(name, *&traits, 0, 0, 0, 0, size, 0.0);

  return v5;
}

+ (id)systemFontOfSize:(double)size traits:(int)traits
{
  v4 = UINewFont(0, *&traits, 0, 0, 1, 0, size, 0.0);

  return v4;
}

+ (id)_systemFontOfSize:(double)size width:(id)width traits:(int)traits
{
  v5 = UINewFont(0, *&traits, 0, width, 1, 0, size, 0.0);

  return v5;
}

+ (id)_opticalSystemFontOfSize:(double)size
{
  v3 = UINewFont(0, 0, 0, 0, 1, 0, size, 0.0);

  return v3;
}

+ (id)_opticalBoldSystemFontOfSize:(double)size
{
  v3 = UINewFont(0, 2, 0, 0, 1, 0, size, 0.0);

  return v3;
}

+ (id)_thinSystemFontOfSize:(double)size
{
  v3 = UINewFont(0, 4, 0, 0, 1, 0, size, 0.0);

  return v3;
}

+ (id)_lightSystemFontOfSize:(double)size
{
  v3 = UINewFont(0, 8, 0, 0, 1, 0, size, 0.0);

  return v3;
}

+ (id)_ultraLightSystemFontOfSize:(double)size
{
  v3 = UINewFont(0, 16, 0, 0, 1, 0, size, 0.0);

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

+ (id)systemFontOfSize:(double)size weight:(double)weight design:(id)design
{
  v5 = UINewFont(0, 0, design, 0, 1, 0, size, weight);

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

- (UIFont)initWithCoder:(id)coder
{
  v30[1] = *MEMORY[0x1E69E9840];
  [coder decodeDoubleForKey:@"UIFontPointSize"];
  v6 = v5;
  v7 = [coder decodeIntegerForKey:@"UIFontTraits"];
  v8 = [coder decodeBoolForKey:@"UIIBFontMetricsScaledFont"];
  v9 = objc_opt_class();
  v28.receiver = self;
  v28.super_class = UIFont;

  if ([coder containsValueForKey:@"UIIBTextStyle"])
  {
    v10 = +[UIFont ib_preferredFontForTextStyle:](UIFont, "ib_preferredFontForTextStyle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"UIIBTextStyle"]);
    return v10;
  }

  if ([coder containsValueForKey:@"UIFontDescriptor"])
  {
    result = [coder decodeObjectOfClass:objc_opt_class() forKey:@"UIFontDescriptor"];
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
        [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", v19, 4864, objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v30, &v29, 1))}];
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

      v22 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"UIFontTextStyleForScaling"];
      [coder decodeDoubleForKey:@"UIFontPointSizeForScaling"];
      v24 = v23;
      [coder decodeDoubleForKey:@"UIFontMaximumPointSizeAfterScaling"];
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
    if ([coder decodeBoolForKey:@"UISystemFont"])
    {
      if (v6 != 0.0)
      {
        v10 = [UIFont systemFontOfSize:v7 traits:v6];
        return v10;
      }

      goto LABEL_15;
    }

    v17 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"UIFontName"];
    result = [v17 length];
    if (result)
    {
      if ([coder containsValueForKey:@"UIFontTraits"])
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[UIFont fontName](self forKey:{"fontName"), @"UIFontName"}];
  isIBTextStyleFont = [(UIFont *)self isIBTextStyleFont];
  fontDescriptor = [(UIFont *)self fontDescriptor];
  if (isIBTextStyleFont)
  {
    v8 = [(UIFontDescriptor *)fontDescriptor objectForKey:@"NSCTFontUIUsageAttribute"];
    if (!v8)
    {
      [(UIFont *)a2 encodeWithCoder:?];
    }

    [coder encodeObject:v8 forKey:@"UIIBTextStyle"];
    v9 = 0.0;
  }

  else
  {
    [coder encodeObject:fontDescriptor forKey:@"UIFontDescriptor"];
    [(UIFont *)self pointSize];
  }

  [coder encodeDouble:@"UIFontPointSize" forKey:v9];
  [coder encodeObject:-[UIFont textStyleForScaling](self forKey:{"textStyleForScaling"), @"UIFontTextStyleForScaling"}];
  [(UIFont *)self pointSizeForScaling];
  [coder encodeDouble:@"UIFontPointSizeForScaling" forKey:?];
  [(UIFont *)self maximumPointSizeAfterScaling];
  [coder encodeDouble:@"UIFontMaximumPointSizeAfterScaling" forKey:?];
  if ([(UIFont *)self isIBFontMetricsScaledFont])
  {
    [coder encodeBool:1 forKey:@"UIIBFontMetricsScaledFont"];
  }

  [coder encodeInteger:-[UIFont traits](self forKey:{"traits"), @"UIFontTraits"}];
  [coder encodeBool:-[UIFont __isSystemFont](self forKey:{"__isSystemFont"), @"UISystemFont"}];
  [coder encodeObject:-[UIFont fontName](self forKey:{"fontName"), @"NSName"}];
  [(UIFont *)self pointSize];

  [coder encodeDouble:@"NSSize" forKey:?];
}

- (UIFont)fontWithSize:(CGFloat)fontSize
{
  if (dyld_program_sdk_at_least())
  {
    v5 = objc_opt_class();
    fontDescriptor = [(UIFont *)self fontDescriptor];

    return [v5 fontWithDescriptor:fontDescriptor size:fontSize];
  }

  else
  {
    __isSystemFont = [(UIFont *)self __isSystemFont];
    v9 = objc_opt_class();
    if (__isSystemFont)
    {
      traits = [(UIFont *)self traits];

      return [v9 systemFontOfSize:traits traits:fontSize];
    }

    else
    {
      fontName = [(UIFont *)self fontName];
      traits2 = [(UIFont *)self traits];

      return [v9 fontWithName:fontName size:traits2 traits:fontSize];
    }
  }
}

+ (id)_fontWithName:(id)name size:(double)size
{
  if ([name hasPrefix:@"."])
  {

    return [self fontWithName:name size:4096 traits:size];
  }

  else
  {

    return [self fontWithName:name size:size];
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

- (double)_baseLineHeightForFont:(BOOL)font
{
  fontCopy = font;
  [(UIFont *)self _defaultLineHeightForUILayout];
  v6 = v5;
  v7 = 0.0;
  if (fontCopy)
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

- (CGAffineTransform)_textMatrixTransformForContext:(SEL)context
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

- (void)applyToGraphicsContext:(id)context
{
  cGContext = [context CGContext];
  if (self)
  {
    [(UIFont *)self _textMatrixTransformForContext:0];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  CGContextSetTextMatrix(cGContext, &v8);
  v5 = CTFontCopyGraphicsFont(self, 0);
  if (v5)
  {
    v6 = v5;
    CGContextSetFont(cGContext, v5);
    CFRelease(v6);
    [(UIFont *)self pointSize];
    CGContextSetFontSize(cGContext, v7);
    CGContextSetFontRenderingStyle();
  }

  else
  {
    NSLog(@"%s: CTFontCopyGraphicsFont returned NULL for font %p", "[UIFont(UIFont_AttributedStringDrawing) applyToGraphicsContext:]", self);
  }
}

- (void)setInContext:(CGContext *)context
{
  v4 = [(objc_class *)+[NSTextGraphicsContextProvider graphicsContextForApplicationFrameworkContext:context], "graphicsContextForApplicationFrameworkContext:", 1];

  [(UIFont *)self applyToGraphicsContext:v4];
}

- (void)getVerticalOriginTranslations:(CGSize *)translations forCGGlyphs:(const unsigned __int16 *)glyphs count:(unint64_t)count
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
    if (count >= 1)
    {
      v10 = &translations[count];
      v11 = *&v16.a;
      v12 = *&v16.c;
      do
      {
        *translations = vmlaq_n_f64(vmulq_n_f64(v12, translations->height), v11, translations->width);
        ++translations;
      }

      while (translations < v10);
    }
  }

  else
  {
    bzero(translations, 16 * count);
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

- (CGSize)advancementForGlyph:(unsigned __int16)glyph
{
  if ([(UIFont *)self numberOfGlyphs]<= glyph)
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

- (unsigned)hyphenGlyphForLocale:(id)locale
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

- (unint64_t)getCaretPositions:(double *)positions forGlyph:(unsigned int)glyph maximumLength:(unint64_t)length
{
  numberOfGlyphs = [(UIFont *)self numberOfGlyphs];
  if (!glyph || numberOfGlyphs <= glyph)
  {
    return 0;
  }

  return CTFontGetLigatureCaretPositions(self, glyph, positions, length);
}

- (unsigned)_defaultGlyphForChar:(unsigned __int16)char
{
  characters = char;
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

- (id)bestMatchingFontForCharacters:(const unsigned __int16 *)characters length:(unint64_t)length attributes:(id)attributes actualCoveredLength:(unint64_t *)coveredLength
{
  selfCopy = self;
  v8 = MEMORY[0x193AD39E0](self, a2, 0.0);
  [attributes objectForKey:NSLanguageAttributeName];
  v9 = CTFontCreateForCharactersWithLanguage();
  MEMORY[0x193AD39E0](v8);
  if (v9 == selfCopy)
  {
    CFRelease(v9);
  }

  else
  {
    v10 = v9;
    return v9;
  }

  return selfCopy;
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
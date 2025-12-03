@interface TSWPParagraphStyle
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultValueForProperty:(int)property;
+ (id)deprecatedProperties;
+ (id)nonEmphasisParagraphProperties;
+ (id)p_normalDecimalSeparator;
+ (id)paragraphProperties;
+ (id)paragraphPropertiesAllowingNSNull;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)styleSummaryForPropertyMap:(id)map;
+ (int)defaultIntValueForProperty:(int)property;
+ (void)initialize;
- (__CFDictionary)getTypesetterAttributes:(id)attributes scalePercent:(unint64_t)percent isRightToLeft:(BOOL)left;
- (__CFDictionary)p_newCoreTextCharacterStyle:(id)style allowLigatures:(BOOL)ligatures scalePercent:(unint64_t)percent;
- (__CTFont)findCachedFontForCharacterStyle:(id)style scalePercent:(unint64_t)percent;
- (__CTParagraphStyle)p_createCoreTextParagraphStyleWithCharacterStyle:(id)style writingDirection:(int)direction lineBoundsOptions:(unint64_t)options;
- (id)contentTag;
- (id)followingParagraphStyle;
- (id)fullPropertyMap;
- (id)initialListStyle;
- (id)styleSummary;
- (void)clearStyleCaches;
- (void)dealloc;
- (void)localizeForBidi:(BOOL)bidi;
- (void)localizeForRightToLeft;
- (void)setInitialListStyle:(id)style;
- (void)setOverridePropertyMap:(id)map;
@end

@implementation TSWPParagraphStyle

+ (void)initialize
{
  {
  }
}

+ (id)properties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TSWPParagraphStyle_properties__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[TSWPParagraphStyle properties]::onceToken != -1)
  {
    dispatch_once(&+[TSWPParagraphStyle properties]::onceToken, block);
  }

  return +[TSWPParagraphStyle properties]::s_properties;
}

id __32__TSWPParagraphStyle_properties__block_invoke()
{
  result = [objc_msgSend(objc_opt_class() "paragraphProperties")];
  +[TSWPParagraphStyle properties]::s_properties = result;
  return result;
}

+ (id)paragraphProperties
{
  if (+[TSWPParagraphStyle paragraphProperties]::onceToken != -1)
  {
    +[TSWPParagraphStyle paragraphProperties];
  }

  return +[TSWPParagraphStyle paragraphProperties]::s_paragraphProperties;
}

TSSPropertySet *__41__TSWPParagraphStyle_paragraphProperties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:86, 101, 83, 98, 80, 99, 93, 108, 89, 90, 81, 85, 106, 107, 91, 102, 105, 104, 82, 88, 87, 103, 84, 92, 109, 110, 111, 51, 94, 95, 96, 97, 112, 113, 114, 0];
  +[TSWPParagraphStyle paragraphProperties]::s_paragraphProperties = result;
  return result;
}

+ (id)deprecatedProperties
{
  if (+[TSWPParagraphStyle deprecatedProperties]::onceToken != -1)
  {
    +[TSWPParagraphStyle deprecatedProperties];
  }

  return +[TSWPParagraphStyle deprecatedProperties]::s_deprecatedProperties;
}

TSSPropertySet *__42__TSWPParagraphStyle_deprecatedProperties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:113, 114, 112, 0];
  +[TSWPParagraphStyle deprecatedProperties]::s_deprecatedProperties = result;
  return result;
}

+ (id)nonEmphasisParagraphProperties
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__TSWPParagraphStyle_nonEmphasisParagraphProperties__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[TSWPParagraphStyle nonEmphasisParagraphProperties]::onceToken != -1)
  {
    dispatch_once(&+[TSWPParagraphStyle nonEmphasisParagraphProperties]::onceToken, block);
  }

  return +[TSWPParagraphStyle nonEmphasisParagraphProperties]::s_nonEmphasisParagraphProperties;
}

id __52__TSWPParagraphStyle_nonEmphasisParagraphProperties__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "properties")];
  +[TSWPParagraphStyle nonEmphasisParagraphProperties]::s_nonEmphasisParagraphProperties = result;
  return result;
}

+ (id)propertiesAllowingNSNull
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__TSWPParagraphStyle_propertiesAllowingNSNull__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (+[TSWPParagraphStyle propertiesAllowingNSNull]::onceToken != -1)
  {
    dispatch_once(&+[TSWPParagraphStyle propertiesAllowingNSNull]::onceToken, block);
  }

  return +[TSWPParagraphStyle propertiesAllowingNSNull]::s_nullProperties;
}

id __46__TSWPParagraphStyle_propertiesAllowingNSNull__block_invoke()
{
  result = [objc_msgSend(objc_opt_class() "paragraphPropertiesAllowingNSNull")];
  +[TSWPParagraphStyle propertiesAllowingNSNull]::s_nullProperties = result;
  return result;
}

+ (id)paragraphPropertiesAllowingNSNull
{
  if (+[TSWPParagraphStyle paragraphPropertiesAllowingNSNull]::onceToken != -1)
  {
    +[TSWPParagraphStyle paragraphPropertiesAllowingNSNull];
  }

  return +[TSWPParagraphStyle paragraphPropertiesAllowingNSNull]::s_nullParagraphProperties;
}

TSSPropertySet *__55__TSWPParagraphStyle_paragraphPropertiesAllowingNSNull__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:101, 98, 99, 85, 105, 103, 84, 108, 112, 114, 0];
  +[TSWPParagraphStyle paragraphPropertiesAllowingNSNull]::s_nullParagraphProperties = result;
  return result;
}

+ (int)defaultIntValueForProperty:(int)property
{
  if (property <= 50)
  {
    if (property == 49)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0x80000000;
    }

    if (property == 48)
    {
      v8 = 0;
    }

    if (property == 44)
    {
      v3 = -1;
    }

    else
    {
      v3 = v8;
    }

    if (property == 41)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x80000000;
    }

    if (property == 36)
    {
      v9 = 0;
    }

    if (property == 29)
    {
      v9 = 0;
    }

    if (property <= 43)
    {
      v3 = v9;
    }

    if (property == 26)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x80000000;
    }

    if (property == 25)
    {
      v10 = 0;
    }

    if (property == 22)
    {
      v10 = 0;
    }

    if (property == 21)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x80000000;
    }

    if (property == 20)
    {
      v6 = 0;
    }

    if (property == 19)
    {
      v6 = 0;
    }

    if (property > 21)
    {
      v6 = v10;
    }

    v7 = property <= 28;
  }

  else if (property <= 91)
  {
    if (property == 91)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x80000000;
    }

    if (property == 90)
    {
      v3 = 0;
    }

    if (property == 89)
    {
      v3 = 0;
    }

    if (property == 86)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0x80000000;
    }

    if (property == 56)
    {
      v6 = 0;
    }

    if (property == 51)
    {
      v6 = 0;
    }

    v7 = property <= 88;
  }

  else
  {
    if (property == 113)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0x80000000;
    }

    if (property == 110)
    {
      v3 = 0;
    }

    if (property == 107)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x80000000;
    }

    if (property == 106)
    {
      v5 = -1;
    }

    else
    {
      v5 = v4;
    }

    if (property <= 109)
    {
      v3 = v5;
    }

    if (property == 102)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0x80000000;
    }

    if (property == 93)
    {
      v6 = 1;
    }

    if (property == 92)
    {
      v6 = 1;
    }

    v7 = property <= 105;
  }

  if (v7)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (float)defaultFloatValueForProperty:(int)property
{
  result = INFINITY;
  if (property <= 49)
  {
    if (property == 35)
    {
      v4 = 0.0;
    }

    else
    {
      v4 = INFINITY;
    }

    if (property == 34)
    {
      v4 = 0.0;
    }

    if (property == 33)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = INFINITY;
    }

    if (property == 31)
    {
      v9 = 0.0;
    }

    if (property <= 33)
    {
      v4 = v9;
    }

    if (property == 27)
    {
      result = 1.0;
    }

    if (property == 23)
    {
      result = 0.0;
    }

    if (property == 17)
    {
      result = 12.0;
    }

    v8 = property <= 30;
  }

  else
  {
    v4 = 1.0;
    if (property != 104)
    {
      v4 = INFINITY;
    }

    if (property == 88)
    {
      v4 = 0.0;
    }

    v5 = 36.0;
    if (property == 87)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = INFINITY;
    }

    if (property != 83)
    {
      v5 = v6;
    }

    if (property <= 87)
    {
      v4 = v5;
    }

    if (property == 82)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = INFINITY;
    }

    if (property == 81)
    {
      v7 = 0.0;
    }

    if (property == 80)
    {
      result = 0.0;
    }

    if (property == 50)
    {
      result = -1000.0;
    }

    if (property > 80)
    {
      result = v7;
    }

    v8 = property <= 82;
  }

  if (!v8)
  {
    return v4;
  }

  return result;
}

+ (id)p_normalDecimalSeparator
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  result = [currentLocale objectForKey:*MEMORY[0x277CBE6A8]];
  if (!result)
  {
    return @".";
  }

  return result;
}

+ (id)defaultValueForProperty:(int)property
{
  if (property <= 83)
  {
    result = @"Helvetica";
    switch(property)
    {
      case 16:
        return result;
      case 18:
      case 32:
        break;
      case 24:
      case 28:
      case 37:
      case 38:
      case 39:
      case 40:
      case 43:
      case 45:
      case 46:
      case 47:
      case 53:
      case 54:
      case 55:
      default:
        goto LABEL_22;
    }

    return result;
  }

  if (property > 104)
  {
    if (property > 110)
    {
      if (property != 111 && property != 112 && property != 114)
      {
        goto LABEL_22;
      }
    }

    if (property != 105)
    {
      if (property != 108 && property != 109)
      {
        goto LABEL_22;
      }
    }

    return +[TSWPRuleOffset ruleOffset];
  }

  else if (property > 98)
  {
    if (property == 99)
    {
    }

    if (property != 101)
    {
      if (property != 103)
      {
        goto LABEL_22;
      }
    }

    return [self p_normalDecimalSeparator];
  }

  else
  {
    switch(property)
    {
      case 'T':

        return +[TSWPTabs tabs];
      case 'U':

        return +[TSWPLineSpacing lineSpacing];
      case 'b':
      default:
LABEL_22:
        v8 = v3;
        v9 = v4;
        v7.receiver = self;
        v7.super_class = &OBJC_METACLASS___TSWPParagraphStyle;
        return objc_msgSendSuper2(&v7, sel_defaultValueForProperty_);
    }
  }
}

+ (id)defaultPropertyMap
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___TSWPParagraphStyle;
  return [objc_msgSendSuper2(&v3 defaultPropertyMap)];
}

+ (id)defaultStyleWithContext:(id)context
{
  v3 = [objc_alloc(objc_opt_class()) initWithContext:context name:0 overridePropertyMap:0 isVariation:0];

  return v3;
}

- (void)dealloc
{
  scalePercentStyleCaches = self->_scalePercentStyleCaches;
  if (scalePercentStyleCaches)
  {
    CFRelease(scalePercentStyleCaches);
  }

  styleCache = self->_styleCache;
  if (styleCache)
  {
    CFRelease(styleCache);
  }

  coreTextParagraphStyle = self->_coreTextParagraphStyle;
  if (coreTextParagraphStyle)
  {
    CFRelease(coreTextParagraphStyle);
  }

  v6.receiver = self;
  v6.super_class = TSWPParagraphStyle;
  [(TSSStyle *)&v6 dealloc];
}

- (id)fullPropertyMap
{
  v4.receiver = self;
  v4.super_class = TSWPParagraphStyle;
  fullPropertyMap = [(TSSStyle *)&v4 fullPropertyMap];
  [fullPropertyMap removeValuesForProperties:{objc_msgSend(objc_opt_class(), "deprecatedProperties")}];
  return fullPropertyMap;
}

- (void)setOverridePropertyMap:(id)map
{
  [(TSWPParagraphStyle *)self clearStyleCaches];
  rootAncestor = [(TSSStylesheet *)[(TSSStyle *)self stylesheet] rootAncestor];
  if (rootAncestor)
  {
    child = rootAncestor;
    do
    {
      [objc_msgSend(child childrenOfStyle:{self), "enumerateObjectsUsingBlock:", &__block_literal_global_25}];
      child = [child child];
    }

    while (child);
  }

  v7.receiver = self;
  v7.super_class = TSWPParagraphStyle;
  [(TSSStyle *)&v7 setOverridePropertyMap:map];
}

- (void)clearStyleCaches
{
  objc_sync_enter(self);
  scalePercentStyleCaches = self->_scalePercentStyleCaches;
  if (scalePercentStyleCaches)
  {
    CFRelease(scalePercentStyleCaches);
    self->_scalePercentStyleCaches = 0;
  }

  styleCache = self->_styleCache;
  if (styleCache)
  {
    CFRelease(styleCache);
    self->_styleCache = 0;
  }

  coreTextParagraphStyle = self->_coreTextParagraphStyle;
  if (coreTextParagraphStyle)
  {
    CFRelease(coreTextParagraphStyle);
    self->_coreTextParagraphStyle = 0;
  }

  objc_sync_exit(self);
}

- (__CFDictionary)getTypesetterAttributes:(id)attributes scalePercent:(unint64_t)percent isRightToLeft:(BOOL)left
{
  leftCopy = left;
  objc_sync_enter(self);
  if (!self->_coreTextParagraphStyle)
  {
    self->_coreTextParagraphStyle = [(TSWPParagraphStyle *)self p_createCoreTextParagraphStyleWithCharacterStyle:0 writingDirection:0 lineBoundsOptions:[(TSWPParagraphStyle *)self p_lineBoundsOptions]];
  }

  if (percent == 100)
  {
    styleCache = self->_styleCache;
    if (!styleCache)
    {
      styleCache = CFDictionaryCreateMutable(0, 0, &[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]::keyCallBacks, MEMORY[0x277CBF150]);
      self->_styleCache = styleCache;
    }
  }

  else
  {
    if (percent - 20 >= 0xB5)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"), 432, @"Bad scalePercent"}];
    }

    scalePercentStyleCaches = self->_scalePercentStyleCaches;
    if (!scalePercentStyleCaches)
    {
      scalePercentStyleCaches = CFDictionaryCreateMutable(0, 0, &[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]::keyCallBacks, MEMORY[0x277CBF150]);
      self->_scalePercentStyleCaches = scalePercentStyleCaches;
    }

    styleCache = CFDictionaryGetValue(scalePercentStyleCaches, percent);
    if (!styleCache)
    {
      styleCache = CFDictionaryCreateMutable(0, 0, &[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]::keyCallBacks, MEMORY[0x277CBF150]);
      CFDictionaryAddValue(self->_scalePercentStyleCaches, percent, styleCache);
      CFRelease(styleCache);
    }
  }

  if (attributes)
  {
    selfCopy = attributes;
  }

  else
  {
    selfCopy = self;
  }

  Value = CFDictionaryGetValue(styleCache, selfCopy);
  if (!Value)
  {
    objc_opt_class();
    [(TSPObjectContext *)[(TSPObject *)self context] documentObject];
    v15 = TSUDynamicCast();
    if (v15)
    {
      useLigatures = [v15 useLigatures];
    }

    else
    {
      useLigatures = 1;
    }

    Value = [(TSWPParagraphStyle *)self p_newCoreTextCharacterStyle:attributes allowLigatures:useLigatures scalePercent:percent];
    CFDictionaryAddValue(styleCache, selfCopy, Value);
    CFRelease(Value);
  }

  p_lineBoundsOptions = [(TSWPParagraphStyle *)self p_lineBoundsOptions];
  v18 = p_lineBoundsOptions;
  if (leftCopy || p_lineBoundsOptions)
  {
    v19 = [(TSSStyle *)self intValueForProperty:44];
    if (leftCopy)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v19 == -1)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v22 = [(TSWPParagraphStyle *)self p_createCoreTextParagraphStyleWithCharacterStyle:0 writingDirection:v21 lineBoundsOptions:v18];
    Value = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, Value);
    CFDictionaryReplaceValue(Value, *MEMORY[0x277CC49F8], v22);
    CFRelease(v22);
    CFAutorelease(Value);
  }

  objc_sync_exit(self);
  if (!Value)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle getTypesetterAttributes:scalePercent:isRightToLeft:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"];
    v26 = @"NO";
    if (leftCopy)
    {
      v26 = @"YES";
    }

    [currentHandler2 handleFailureInFunction:v24 file:v25 lineNumber:489 description:{@"Failed to get attributes isRTL: %@\ncharacter style: %@\n paragraph style: %@", v26, attributes, self}];
  }

  return Value;
}

- (__CTFont)findCachedFontForCharacterStyle:(id)style scalePercent:(unint64_t)percent
{
  result = [(TSWPParagraphStyle *)self getTypesetterAttributes:style scalePercent:percent isRightToLeft:0];
  if (result)
  {
    v5 = *MEMORY[0x277CC4838];

    return CFDictionaryGetValue(result, v5);
  }

  return result;
}

- (__CTParagraphStyle)p_createCoreTextParagraphStyleWithCharacterStyle:(id)style writingDirection:(int)direction lineBoundsOptions:(unint64_t)options
{
  v5 = *&direction;
  v63 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = [(TSSStyle *)self intValueForProperty:86];
  if (v7 >= 256)
  {
    [TSWPParagraphStyle p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:lineBoundsOptions:];
    v42 = -1;
  }

  else if (v7 < 0)
  {
    [TSWPParagraphStyle p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:lineBoundsOptions:];
    v42 = 0;
  }

  else
  {
    v42 = v7;
  }

  v8 = [(TSWPParagraphStyle *)self p_coreTextWritingDirectionFromWPWritingDirection:v5];
  v48 = v8;
  [(TSSStyle *)self floatValueForProperty:83];
  v10 = v9;
  v47 = v9;
  v11 = [(TSSStyle *)self valueForProperty:84];
  v12 = [v11 count];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  cf = Mutable;
  [(TSSStyle *)self floatValueForProperty:81];
  v15 = v14;
  if (v14 <= 0.0)
  {
    v17 = 0;
  }

  else
  {
    [(TSSStyle *)self floatValueForProperty:80];
    v17 = v16 < v15;
  }

  v18 = v15;
  if (!v12)
  {
    v23 = 0;
    if (!v17)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  selfCopy = self;
  v19 = 0;
  v43 = *MEMORY[0x277CC4A20];
  if (v8 == 1)
  {
    v20 = &unk_26CA66988;
  }

  else
  {
    v20 = &unk_26CA66984;
  }

  v21 = 0.0;
  v22 = 1;
  v23 = v12;
  do
  {
    v24 = [v11 tabAtIndex:v19];
    alignment = [v24 alignment];
    [v24 position];
    if (v26 >= v21)
    {
      v27 = v26;
    }

    else
    {
      v27 = v21;
    }

    if (alignment == 3)
    {
      *&values.spec = CFCharacterSetCreateWithCharactersInString(0, [(TSSStyle *)selfCopy valueForProperty:101]);
      keys = v43;
      v28 = CFDictionaryCreate(0, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFRelease(*&values.spec);
    }

    else
    {
      v28 = 0;
    }

    if (v27 == v18 && v17)
    {
      v30 = nextafter(v27, v21);
      if (v21 >= v30)
      {
        v30 = nextafter(v27, INFINITY);
      }
    }

    else
    {
      v30 = v27;
    }

    v31 = CTTextTabCreate(v20[alignment], v30, v28);
    if (v28)
    {
      CFRelease(v28);
    }

    CFArrayAppendValue(Mutable, v31);
    CFRelease(v31);
    v32 = v23 == v12 && v17;
    if (v32 && v30 > v18)
    {
      v23 = v19;
    }

    v21 = nextafter(v30, INFINITY);
    v19 = v22;
  }

  while (v12 > v22++);
  if (v17)
  {
LABEL_34:
    v34 = CTTextTabCreate(kCTTextAlignmentLeft, v18, 0);
    CFArrayInsertValueAtIndex(Mutable, v23, v34);
    CFRelease(v34);
  }

LABEL_35:
  Count = CFArrayGetCount(Mutable);
  if (Count)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(Mutable, Count - 1);
    Location = CTTextTabGetLocation(ValueAtIndex);
    v38 = (floor(Location / v10) + 1.0) * v10;
    if (v38 - Location < v10)
    {
      v39 = CTTextTabCreate(kCTTextAlignmentLeft, v38, 0);
      CFArrayAppendValue(Mutable, v39);
      CFRelease(v39);
    }
  }

  LOBYTE(keys) = v42;
  values.spec = kCTParagraphStyleSpecifierAlignment;
  values.valueSize = 1;
  values.value = &keys;
  v51 = 13;
  v52 = 1;
  v53 = &v48;
  v54 = 5;
  v55 = 8;
  v56 = &v47;
  v57 = 4;
  v58 = 8;
  p_cf = &cf;
  v60 = 17;
  v61 = 8;
  v62 = &optionsCopy;
  v40 = CTParagraphStyleCreate(&values, 5uLL);
  CFRelease(cf);
  return v40;
}

- (__CFDictionary)p_newCoreTextCharacterStyle:(id)style allowLigatures:(BOOL)ligatures scalePercent:(unint64_t)percent
{
  ligaturesCopy = ligatures;
  v47[2] = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC49F8], self->_coreTextParagraphStyle);
  v47[0] = style;
  v47[1] = self;
  v10 = TSWPCreateFontForStylesWithScale(v47, 2uLL, percent);
  if (!v10)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle p_newCoreTextCharacterStyle:allowLigatures:scalePercent:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"), 674, @"Bad font"}];
  }

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4838], v10);
  TSWPResolveFloatPropertyForStyles(style, self, 35);
  if (v13 == 0.0)
  {
    if (ligaturesCopy)
    {
      v15 = TSWPResolveIntPropertyForStyles(style, self, 41, 0);
      if (v15 == 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:v13 * CTFontGetSize(v10)];
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC49E0], v14);
  }

  v15 = 0;
LABEL_9:
  v16 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  if (v16)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC49F0], v16);
  }

LABEL_11:
  objc_opt_class();
  TSWPResolvePropertyForStyles(style, self, 18, 0);
  v17 = TSUDynamicCast();
  if (v17)
  {
    cGColor = [v17 CGColor];
    if (cGColor)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x277CC49C0], cGColor);
    }
  }

  TSWPResolveFloatPropertyForStyles(style, self, 33);
  CFDictionaryAddValue(Mutable, @"TSWPBaselineShift", [MEMORY[0x277CCABB0] numberWithDouble:?]);
  v19 = TSWPResolveIntPropertyForStyles(style, self, 36, 0);
  CFDictionaryAddValue(Mutable, @"TSWPSuperscript", [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19]);
  if (v19)
  {
    TSWPResolveFloatPropertyForStyles(style, self, 17);
    CopyWithAttributes = CTFontCreateCopyWithAttributes(v10, v20, 0, 0);
    CFDictionaryAddValue(Mutable, @"TSWPUnadjustedFont", CopyWithAttributes);
    CFRelease(CopyWithAttributes);
  }

  v22 = TSWPResolvePropertyForStyles(style, self, 40, 0);
  if ([v22 isEnabled])
  {
    CFDictionaryAddValue(Mutable, @"TSWPShadow", v22);
  }

  LODWORD(v23) = TSWPResolveIntPropertyForStyles(style, self, 22, 0);
  if (v23 >= 4)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle p_newCoreTextCharacterStyle:allowLigatures:scalePercent:]"];
    [currentHandler2 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"), 736, @"bad underline value"}];
  }

  if (v23 >= 3)
  {
    v23 = 3;
  }

  else
  {
    v23 = v23;
  }

  v26 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v23];
  CFDictionaryAddValue(Mutable, @"TSWPUnderline", v26);

  v27 = TSWPResolvePropertyForStyles(style, self, 24, 0);
  if (v27)
  {
    CFDictionaryAddValue(Mutable, @"TSWPUnderlineColor", v27);
  }

  TSWPResolveFloatPropertyForStyles(style, self, 23);
  if (v28 != 0.0)
  {
    *&v28 = v28;
    CFDictionaryAddValue(Mutable, @"TSWPUnderlineWidthAttribute", [MEMORY[0x277CCABB0] numberWithFloat:v28]);
  }

  v29 = TSWPResolvePropertyForStyles(style, self, 45, 1);
  if (v29)
  {
    v30 = v29;
    {
      v31 = String(45);
      CFDictionaryAddValue(Mutable, v31, v30);
    }
  }

  v32 = TSWPResolvePropertyForStyles(style, self, 47, 1);
  if (v32)
  {
    v33 = v32;
    {
      v34 = String(47);
      CFDictionaryAddValue(Mutable, v34, v33);
    }
  }

  LODWORD(v35) = TSWPResolveIntPropertyForStyles(style, self, 26, 0);
  if (v35 >= 3)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle p_newCoreTextCharacterStyle:allowLigatures:scalePercent:]"];
    [currentHandler3 handleFailureInFunction:v37 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"), 771, @"bad strikethru value"}];
  }

  if (v35 >= 2)
  {
    v35 = 2;
  }

  else
  {
    v35 = v35;
  }

  v38 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:v35];
  CFDictionaryAddValue(Mutable, @"TSWPStrikethrough", v38);

  v39 = TSWPResolvePropertyForStyles(style, self, 28, 0);
  if (v39)
  {
    CFDictionaryAddValue(Mutable, @"TSWPStrikethroughColor", v39);
  }

  v40 = TSWPResolvePropertyForStyles(style, self, 37, 1);
  if (v40)
  {
    CFDictionaryAddValue(Mutable, @"TSWPTextBackgroundColor", v40);
  }

  TSWPResolveFloatPropertyForStyles(style, self, 31);
  if (v41 > 0.0)
  {
    v42 = v41;
    v43 = TSWPResolveIntPropertyForStyles(style, self, 49, 0);
    v44 = -v42;
    if (!v43)
    {
      v44 = v42;
    }

    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4A10], [MEMORY[0x277CCABB0] numberWithDouble:v44]);
  }

  objc_opt_class();
  TSWPResolvePropertyForStyles(style, self, 32, 0);
  v45 = TSUDynamicCast();
  if (v45)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4A08], [v45 CGColor]);
  }

  CFRelease(v10);
  return Mutable;
}

- (id)followingParagraphStyle
{
  v3 = [(TSSStyle *)self valueForProperty:99];
  if (v3 == [MEMORY[0x277CBEB68] null])
  {
    return self;
  }

  objc_opt_class();

  return TSUDynamicCast();
}

- (id)contentTag
{
  result = [(TSSStyle *)self styleIdentifier];
  if (result)
  {
    styleIdentifier = [(TSSStyle *)self styleIdentifier];

    return String(styleIdentifier);
  }

  return result;
}

- (void)setInitialListStyle:(id)style
{
  if (!style)
  {
    style = [MEMORY[0x277CBEB68] null];
  }

  [(TSSStyle *)self setValue:style forProperty:108];
}

- (id)initialListStyle
{
  v2 = [(TSSStyle *)self valueForProperty:108];
  if ([v2 isEqual:{objc_msgSend(MEMORY[0x277CBEB68], "null")}])
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)localizeForRightToLeft
{
  v3 = [(TSSStyle *)self intValueForProperty:86];
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [(TSSStyle *)self setIntValue:v4 forProperty:86];
LABEL_6:

  [(TSSStyle *)self setIntValue:0xFFFFFFFFLL forProperty:44];
}

- (void)localizeForBidi:(BOOL)bidi
{
  bidiCopy = bidi;
  v5 = [(TSSStyle *)self intValueForProperty:86];
  if (v5 != 1)
  {
    if (!v5)
    {
      [(TSSStyle *)self setIntValue:4 forProperty:86];
    }

    [(TSSStyle *)self setIntValue:0xFFFFFFFFLL forProperty:44];
    if (!bidiCopy)
    {
      return;
    }

LABEL_8:
    [(TSSStyle *)self floatValueForProperty:81];
    v7 = v6;
    [(TSSStyle *)self floatValueForProperty:82];
    v9 = v8;
    LODWORD(v10) = v7;
    [(TSSStyle *)self setFloatValue:82 forProperty:v10];
    LODWORD(v11) = v9;

    [(TSSStyle *)self setFloatValue:81 forProperty:v11];
    return;
  }

  if (bidiCopy)
  {
    [(TSSStyle *)self setIntValue:0 forProperty:86];
    [(TSSStyle *)self setIntValue:0xFFFFFFFFLL forProperty:44];
    goto LABEL_8;
  }

  [(TSSStyle *)self setIntValue:0xFFFFFFFFLL forProperty:44];
}

+ (id)styleSummaryForPropertyMap:(id)map
{
  v4 = [map boxedObjectForProperty:16];
  [map floatValueForProperty:17];
  v6 = v5;
  if ([map intValueForProperty:19])
  {
    v7 = @"B";
  }

  else
  {
    v7 = &stru_287D36338;
  }

  if ([map intValueForProperty:20])
  {
    v8 = @"I";
  }

  else
  {
    v8 = &stru_287D36338;
  }

  if ([map intValueForProperty:22])
  {
    v9 = @"U";
  }

  else
  {
    v9 = &stru_287D36338;
  }

  v10 = [map intValueForProperty:26];
  v11 = @"S";
  if (!v10)
  {
    v11 = &stru_287D36338;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%g [%@%@%@%@]", v4, *&v6, v7, v8, v9, v11];
}

- (id)styleSummary
{
  v3 = objc_opt_class();
  propertyMap = [(TSSStyle *)self propertyMap];

  return [v3 styleSummaryForPropertyMap:propertyMap];
}

- (uint64_t)p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:lineBoundsOptions:.cold.1()
{
  [MEMORY[0x277D6C290] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:lineBoundsOptions:]"];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"];
  v0 = OUTLINED_FUNCTION_0_2();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

- (uint64_t)p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:lineBoundsOptions:.cold.2()
{
  [MEMORY[0x277D6C290] currentHandler];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPParagraphStyle p_createCoreTextParagraphStyleWithCharacterStyle:writingDirection:lineBoundsOptions:]"];
  [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPParagraphStyle.mm"];
  v0 = OUTLINED_FUNCTION_0_2();

  return [v0 handleFailureInFunction:? file:? lineNumber:? description:?];
}

@end
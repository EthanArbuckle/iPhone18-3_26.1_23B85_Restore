@interface TSWPListStyle
+ (BOOL)isDefaultMissingBulletImage:(id)image;
+ (TSWPListStyle)listStyleWithNumberType:(int)type inStyleSheet:(id)sheet withNumberedPresetStyle:(id)style;
+ (id)CJKListNameForNumberType:(int)type;
+ (id)defaultLabelGeometries;
+ (id)defaultLabelIndents;
+ (id)defaultLabelString;
+ (id)defaultMissingBulletImage;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)context;
+ (id)defaultStyleWithContext:(id)context type:(int)type;
+ (id)defaultTextIndents;
+ (id)harvardStyleWithContext:(id)context;
+ (id)numberedlistStyleForPresets:(id)presets;
+ (id)pDefaultLabelValuesForLabelTypeProperty:(int)property;
+ (id)pLabelTypeArrayForType:(int)type;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)propertyMapForListNumberType:(int)type;
+ (id)stickyOverrideProperties;
+ (int)effectiveTypeForLevel:(unint64_t)level forPropertyMapping:(id)mapping;
+ (int)firstLabelTypeForPropertyMapping:(id)mapping;
+ (int)labelTypeForLevel:(unint64_t)level forPropertyMapping:(id)mapping;
+ (int)pLabelTypeForLevel:(unint64_t)level forPropertyMapping:(id)mapping includeDegenerateLevels:(BOOL)levels;
+ (void)pGetDefaultTextIndentFloats:(double)floats[9];
- (TSWPListStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (double)labelIndentForLevel:(unint64_t)level;
- (double)textIndentForLevel:(unint64_t)level fontSize:(double)size;
- (id)overridePropertyMapWithValue:(id)value forProperty:(int)property atParagraphLevels:(id)levels withContext:(id)context;
- (id)pOverrideArrayWithValue:(id)value forProperty:(int)property atParagraphLevels:(id)levels withContext:(id)context;
- (int)effectiveTypeForLevel:(unint64_t)level;
- (int)firstLabelType;
- (int)labelTypeForLevel:(unint64_t)level;
@end

@implementation TSWPListStyle

- (TSWPListStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v7.receiver = self;
  v7.super_class = TSWPListStyle;
  return [(TSSStyle *)&v7 initWithContext:context name:name overridePropertyMap:map isVariation:variation];
}

+ (id)stickyOverrideProperties
{
  if (+[TSWPListStyle stickyOverrideProperties]::onceToken != -1)
  {
    +[TSWPListStyle stickyOverrideProperties];
  }

  return +[TSWPListStyle stickyOverrideProperties]::s_properties;
}

TSSPropertySet *__41__TSWPListStyle_stickyOverrideProperties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:181, 182, 184, 185, 183, 180, 176, 0];
  +[TSWPListStyle stickyOverrideProperties]::s_properties = result;
  return result;
}

+ (id)properties
{
  if (+[TSWPListStyle properties]::onceToken != -1)
  {
    +[TSWPListStyle properties];
  }

  return +[TSWPListStyle properties]::s_properties;
}

TSSPropertySet *__27__TSWPListStyle_properties__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:18, 16, 44, 178, 181, 182, 177, 184, 185, 183, 180, 176, 40, 179, 186, 0];
  +[TSWPListStyle properties]::s_properties = result;
  return result;
}

+ (id)propertiesAllowingNSNull
{
  if (+[TSWPListStyle propertiesAllowingNSNull]::onceToken != -1)
  {
    +[TSWPListStyle propertiesAllowingNSNull];
  }

  return +[TSWPListStyle propertiesAllowingNSNull]::s_nullProperties;
}

TSSPropertySet *__41__TSWPListStyle_propertiesAllowingNSNull__block_invoke()
{
  result = [[TSSPropertySet alloc] initWithProperties:18, 16, 40, 0];
  +[TSWPListStyle propertiesAllowingNSNull]::s_nullProperties = result;
  return result;
}

- (double)labelIndentForLevel:(unint64_t)level
{
  if (level > 8)
  {
    return 0.0;
  }

  v4 = [-[TSSStyle valueForProperty:](self valueForProperty:{177), "objectAtIndexedSubscript:", level}];

  [v4 doubleValue];
  return result;
}

- (double)textIndentForLevel:(unint64_t)level fontSize:(double)size
{
  v5 = 0.0;
  if (level <= 8)
  {
    [objc_msgSend(-[TSSStyle valueForProperty:](self valueForProperty:{176, 0.0), "objectAtIndexedSubscript:", level), "doubleValue"}];
  }

  return v5 * size;
}

+ (BOOL)isDefaultMissingBulletImage:(id)image
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    filename = [v3 filename];

    LOBYTE(v3) = [filename isEqualToString:@"TSWPMissingBulletImage.png"];
  }

  return v3;
}

+ (int)pLabelTypeForLevel:(unint64_t)level forPropertyMapping:(id)mapping includeDegenerateLevels:(BOOL)levels
{
  result = [objc_msgSend(objc_msgSend(mapping objectForProperty:{180), "objectAtIndexedSubscript:", level), "intValue"}];
  if (!levels)
  {
    if (result == 1)
    {
      v12 = [mapping objectForProperty:182];
      if (v12)
      {
        v13 = v12;
        if ([v12 count] > level && (objc_msgSend(self, "isDefaultMissingBulletImage:", objc_msgSend(v13, "objectAtIndexedSubscript:", level)) & 1) == 0)
        {
          v14 = [v13 objectAtIndexedSubscript:level];
          if (v14 != [MEMORY[0x277CBEB68] null])
          {
            return 1;
          }
        }
      }
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v10 = [mapping objectForProperty:183];
      if (v10)
      {
        v11 = v10;
        if ([v10 count] > level && !objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", level), "isEqualToString:", &stru_287D36338))
        {
          return 2;
        }
      }
    }

    return 0;
  }

  return result;
}

- (int)effectiveTypeForLevel:(unint64_t)level
{
  v5 = objc_opt_class();

  return [v5 pLabelTypeForLevel:level forPropertyMapping:self includeDegenerateLevels:0];
}

+ (int)effectiveTypeForLevel:(unint64_t)level forPropertyMapping:(id)mapping
{
  v6 = objc_opt_class();

  return [v6 pLabelTypeForLevel:level forPropertyMapping:mapping includeDegenerateLevels:0];
}

- (int)labelTypeForLevel:(unint64_t)level
{
  v5 = objc_opt_class();

  return [v5 pLabelTypeForLevel:level forPropertyMapping:self includeDegenerateLevels:1];
}

+ (int)labelTypeForLevel:(unint64_t)level forPropertyMapping:(id)mapping
{
  v6 = objc_opt_class();

  return [v6 pLabelTypeForLevel:level forPropertyMapping:mapping includeDegenerateLevels:1];
}

- (int)firstLabelType
{
  v3 = objc_opt_class();

  return [v3 firstLabelTypeForPropertyMapping:self];
}

+ (int)firstLabelTypeForPropertyMapping:(id)mapping
{
  v4 = 0;
  do
  {
    result = [objc_opt_class() pLabelTypeForLevel:v4 forPropertyMapping:mapping includeDegenerateLevels:1];
    if (result)
    {
      break;
    }
  }

  while (v4++ != 8);
  return result;
}

+ (id)defaultLabelString
{
  result = +[TSWPListStyle defaultLabelString]::s_defaultLabelString;
  if (!+[TSWPListStyle defaultLabelString]::s_defaultLabelString)
  {
    result = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C", 8226];
    +[TSWPListStyle defaultLabelString]::s_defaultLabelString = result;
  }

  return result;
}

+ (void)pGetDefaultTextIndentFloats:(double)floats[9]
{
  v3 = 0;
  v4 = xmmword_26CA639B0;
  v5 = floats + 1;
  v6 = vdupq_n_s64(9uLL);
  v7 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v6, v4)).u8[0])
    {
      *(v5 - 1) = (v3 * 36.0);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v4)).i32[1])
    {
      *v5 = ((v3 + 1) * 36.0);
    }

    v3 += 2;
    v4 = vaddq_s64(v4, v7);
    v5 += 2;
  }

  while (v3 != 10);
}

+ (id)defaultTextIndents
{
  v4[9] = *MEMORY[0x277D85DE8];
  result = +[TSWPListStyle defaultTextIndents]::s_defaultTextIndents;
  if (!+[TSWPListStyle defaultTextIndents]::s_defaultTextIndents)
  {
    [self pGetDefaultTextIndentFloats:v4];
    result = [objc_alloc(MEMORY[0x277CBEA60]) initWithCGFloats:v4 count:9];
    +[TSWPListStyle defaultTextIndents]::s_defaultTextIndents = result;
  }

  return result;
}

+ (id)defaultLabelIndents
{
  v3[9] = *MEMORY[0x277D85DE8];
  result = +[TSWPListStyle defaultLabelIndents]::s_defaultLabelIndents;
  if (!+[TSWPListStyle defaultLabelIndents]::s_defaultLabelIndents)
  {
    memset_pattern16(v3, &unk_279D49C70, 0x48uLL);
    result = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v3 count:9];
    +[TSWPListStyle defaultLabelIndents]::s_defaultLabelIndents = result;
  }

  return result;
}

+ (id)defaultLabelGeometries
{
  v9 = *MEMORY[0x277D85DE8];
  result = +[TSWPListStyle defaultLabelGeometries]::s_defaultLabelGeometries;
  if (!+[TSWPListStyle defaultLabelGeometries]::s_defaultLabelGeometries)
  {
    v3 = +[TSWPListLabelGeometry listLabelGeometry];
    v4 = 0;
    v5 = xmmword_26CA639B0;
    v6 = vdupq_n_s64(9uLL);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v6, v5)).u8[0])
      {
        *&v8[v4] = v3;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v5)).i32[1])
      {
        *&v8[v4 + 8] = v3;
      }

      v5 = vaddq_s64(v5, v7);
      v4 += 16;
    }

    while (v4 != 80);
    result = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:v8 count:9];
    +[TSWPListStyle defaultLabelGeometries]::s_defaultLabelGeometries = result;
  }

  return result;
}

+ (id)defaultMissingBulletImage
{
  v2 = [TSWPBundle() URLForResource:objc_msgSend(@"TSWPMissingBulletImage.png" withExtension:{"stringByDeletingPathExtension"), objc_msgSend(@"TSWPMissingBulletImage.png", "pathExtension")}];

  return [TSPData readOnlyDataFromURL:v2 context:0];
}

+ (id)defaultPropertyMap
{
  v9[9] = *MEMORY[0x277D85DE8];
  v3 = [[TSWPListLabelGeometry alloc] initWithScale:1 scaleWithText:1.0 baselineOffset:0.0];
  defaultLabelIndents = [self defaultLabelIndents];
  v5 = [TSSPropertyMap alloc];
  v6 = [self pLabelTypeArrayForType:0];
  v9[0] = v3;
  v9[1] = v3;
  v9[2] = v3;
  v9[3] = v3;
  v9[4] = v3;
  v9[5] = v3;
  v9[6] = v3;
  v9[7] = v3;
  v9[8] = v3;
  v7 = -[TSSPropertyMap initWithPropertiesAndValues:](v5, "initWithPropertiesAndValues:", 180, v6, 176, defaultLabelIndents, 177, &unk_287DDCBB8, 181, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:9], 0);

  return v7;
}

+ (id)defaultStyleWithContext:(id)context
{
  v3 = [[self alloc] initWithContext:context name:0 overridePropertyMap:objc_msgSend(self isVariation:{"defaultPropertyMap"), 0}];

  return v3;
}

+ (id)defaultStyleWithContext:(id)context type:(int)type
{
  v4 = *&type;
  v19[9] = *MEMORY[0x277D85DE8];
  v7 = [[TSWPListLabelGeometry alloc] initWithScale:1 scaleWithText:dbl_26CA66BA0[type] baselineOffset:0.0];
  if ((v4 - 1) >= 2)
  {
    if (v4 != 3)
    {
      defaultLabelIndents = [self defaultLabelIndents];
      goto LABEL_7;
    }

    v18[0] = &unk_287DDE0B0;
    v18[1] = &unk_287DDE0B0;
    v18[2] = &unk_287DDE0B0;
    v18[3] = &unk_287DDE0B0;
    v18[4] = &unk_287DDE0B0;
    v18[5] = &unk_287DDE0B0;
    v18[6] = &unk_287DDE0B0;
    v18[7] = &unk_287DDE0B0;
    v18[8] = &unk_287DDE0B0;
    v8 = MEMORY[0x277CBEA60];
    v9 = v18;
  }

  else
  {
    v19[0] = &unk_287DDE0A0;
    v19[1] = &unk_287DDE0A0;
    v19[2] = &unk_287DDE0A0;
    v19[3] = &unk_287DDE0A0;
    v19[4] = &unk_287DDE0A0;
    v19[5] = &unk_287DDE0A0;
    v19[6] = &unk_287DDE0A0;
    v19[7] = &unk_287DDE0A0;
    v19[8] = &unk_287DDE0A0;
    v8 = MEMORY[0x277CBEA60];
    v9 = v19;
  }

  defaultLabelIndents = [v8 arrayWithObjects:v9 count:9];
LABEL_7:
  v11 = defaultLabelIndents;
  v12 = [TSSPropertyMap alloc];
  v13 = [self pLabelTypeArrayForType:v4];
  v17[0] = v7;
  v17[1] = v7;
  v17[2] = v7;
  v17[3] = v7;
  v17[4] = v7;
  v17[5] = v7;
  v17[6] = v7;
  v17[7] = v7;
  v17[8] = v7;
  v14 = -[TSSPropertyMap initWithPropertiesAndValues:](v12, "initWithPropertiesAndValues:", 180, v13, 176, v11, 177, &unk_287DDCBD0, 181, [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:9], 0);

  if (v4)
  {
    -[TSSPropertyMap setObject:forProperty:](v14, "setObject:forProperty:", [self pDefaultLabelValuesForLabelTypeProperty:+[TSWPListStyle defaultStyleWithContext:type:]::labelSpecificProperties[v4]], +[TSWPListStyle defaultStyleWithContext:type:]::labelSpecificProperties[v4]);
    if (v4 == 3)
    {
      -[TSSPropertyMap setObject:forProperty:](v14, "setObject:forProperty:", [self pDefaultLabelValuesForLabelTypeProperty:185], 185);
    }
  }

  v15 = [[self alloc] initWithContext:context name:0 overridePropertyMap:v14 isVariation:0];

  return v15;
}

+ (id)harvardStyleWithContext:(id)context
{
  v5 = [MEMORY[0x277CBEA60] arrayWithInts:&sHarvardNumberFormats count:9];
  v6 = [MEMORY[0x277CBEA60] arrayWithCGFloats:&sHarvardLabelIndents count:9];
  v7 = -[TSSPropertyMap initWithPropertiesAndValues:]([TSSPropertyMap alloc], "initWithPropertiesAndValues:", 180, [self pLabelTypeArrayForType:3], 176, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithCGFloats:count:", &sHarvardTextIndents, 9), 177, v6, 181, objc_msgSend(objc_opt_class(), "defaultLabelGeometries"), 184, v5, 185, objc_msgSend(self, "pDefaultLabelValuesForLabelTypeProperty:", 185), 0);
  v8 = [[self alloc] initWithContext:context name:0 overridePropertyMap:v7 isVariation:0];

  return v8;
}

+ (id)numberedlistStyleForPresets:(id)presets
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [presets countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v20;
  do
  {
    v7 = 0;
LABEL_4:
    if (*v20 != v6)
    {
      objc_enumerationMutation(presets);
    }

    v8 = *(*(&v19 + 1) + 8 * v7);
    v9 = [v8 objectForProperty:180];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = *v16;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v16 != v12)
      {
        objc_enumerationMutation(v9);
      }

      if ([*(*(&v15 + 1) + 8 * v13) intValue] != 3)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        return v8;
      }
    }

    if (++v7 != v5)
    {
      goto LABEL_4;
    }

    v5 = [presets countByEnumeratingWithState:&v19 objects:v24 count:16];
    v8 = 0;
  }

  while (v5);
  return v8;
}

- (id)pOverrideArrayWithValue:(id)value forProperty:(int)property atParagraphLevels:(id)levels withContext:(id)context
{
  v7 = *&property;
  v25 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  [(TSSStyle *)self valueForProperty:v7];
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v10 = [objc_opt_class() pDefaultLabelValuesForLabelTypeProperty:v7];
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
  if (value)
  {
    v22 = 0u;
    v23 = 0u;
    if (!levels)
    {
      levels = &unk_287DDCBE8;
    }

    v20 = 0uLL;
    v21 = 0uLL;
    v12 = [levels countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(levels);
          }

          intValue = [*(*(&v20 + 1) + 8 * i) intValue];
          if ([v11 count] <= intValue)
          {
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:]"];
            [currentHandler handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"), 784, @"out of paragraph level bounds"}];
          }

          if ([v11 count] > intValue)
          {
            [v11 setObject:value atIndexedSubscript:intValue];
          }
        }

        v13 = [levels countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return v11;
}

- (id)overridePropertyMapWithValue:(id)value forProperty:(int)property atParagraphLevels:(id)levels withContext:(id)context
{
  v8 = *&property;
  v11 = objc_alloc_init(TSSPropertyMap);
  if (v8 > 183)
  {
    if (v8 == 184)
    {
      [(TSSPropertyMap *)v11 setObject:[(TSWPListStyle *)self pOverrideArrayWithValue:0 forProperty:185 atParagraphLevels:levels withContext:context] forProperty:185];
    }

    else if (v8 != 185)
    {
LABEL_10:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPListStyle overridePropertyMapWithValue:forProperty:atParagraphLevels:withContext:]"];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"];
      v19 = @"Unhandled override property in list";
      v20 = currentHandler;
      v21 = v17;
      v22 = 849;
LABEL_11:
      [v20 handleFailureInFunction:v21 file:v18 lineNumber:v22 description:v19];
      goto LABEL_15;
    }

    context = [(TSWPListStyle *)self pOverrideArrayWithValue:0 forProperty:184 atParagraphLevels:levels withContext:context];
    v14 = v11;
    v15 = 184;
    goto LABEL_14;
  }

  if ((v8 - 182) < 2)
  {
    goto LABEL_15;
  }

  if (v8 != 180)
  {
    goto LABEL_10;
  }

  intValue = [value intValue];
  if (intValue > 1)
  {
    if (intValue == 3)
    {
      -[TSSPropertyMap setObject:forProperty:](v11, "setObject:forProperty:", -[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:](self, "pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:", [MEMORY[0x277CCABB0] numberWithInt:{+[TSWPListStyle defaultLabelNumberType](TSWPListStyle, "defaultLabelNumberType")}], 184, levels, context), 184);
      context = -[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:](self, "pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:", [MEMORY[0x277CCABB0] numberWithInt:{+[TSWPListStyle defaultTieredNumber](TSWPListStyle, "defaultTieredNumber")}], 185, levels, context);
      v14 = v11;
      v15 = 185;
      goto LABEL_14;
    }

    if (intValue == 2)
    {
      context = [(TSWPListStyle *)self pOverrideArrayWithValue:+[TSWPListStyle forProperty:"defaultLabelString"]atParagraphLevels:183 withContext:levels, context];
      v14 = v11;
      v15 = 183;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (!intValue)
  {
    goto LABEL_15;
  }

  if (intValue != 1)
  {
LABEL_21:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPListStyle overridePropertyMapWithValue:forProperty:atParagraphLevels:withContext:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"];
    v19 = @"Not covering a list type in inspector setter";
    v20 = currentHandler2;
    v21 = v25;
    v22 = 828;
    goto LABEL_11;
  }

  context = -[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:](self, "pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:", [+[TSWPImageBulletProvider sharedInstance](TSWPImageBulletProvider dataForDefaultImageBulletWithContext:"dataForDefaultImageBulletWithContext:", context], 182, levels, context);
  v14 = v11;
  v15 = 182;
LABEL_14:
  [(TSSPropertyMap *)v14 setObject:context forProperty:v15];
LABEL_15:
  [(TSSPropertyMap *)v11 setObject:[(TSWPListStyle *)self pOverrideArrayWithValue:value forProperty:v8 atParagraphLevels:levels withContext:context] forProperty:v8];

  return v11;
}

+ (TSWPListStyle)listStyleWithNumberType:(int)type inStyleSheet:(id)sheet withNumberedPresetStyle:(id)style
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v9 = type;
  v10 = [v8 initWithFloat:v9];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [sheet childrenOfStyle:{style, 0}];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if ([(TSWPListStyle *)v16 effectiveTypeForLevel:0]== 3)
        {
          v17 = [(TSSStyle *)v16 valueForProperty:184];
          v18 = 0;
          while (([objc_msgSend(v17 objectAtIndexedSubscript:{v18), "isEqual:", v10}] & 1) != 0)
          {
            if (++v18 == 9)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPListStyle listStyleWithNumberType:inStyleSheet:withNumberedPresetStyle:]"];
          [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"), 871, @"Expected numbered list style"}];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v16 = 0;
    }

    while (v13);
  }

  else
  {
    v16 = 0;
  }

LABEL_16:

  return v16;
}

+ (id)propertyMapForListNumberType:(int)type
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = type;
  v7 = [v5 initWithFloat:v6];
  v8 = objc_alloc_init(TSSPropertyMap);
  -[TSSPropertyMap setObject:forProperty:](v8, "setObject:forProperty:", [self pLabelTypeArrayForType:3], 180);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 9;
  v12 = MEMORY[0x277CBEC28];
  do
  {
    [v9 addObject:v7];
    [v10 addObject:v12];
    --v11;
  }

  while (v11);
  [(TSSPropertyMap *)v8 setObject:v9 forProperty:184];
  [(TSSPropertyMap *)v8 setObject:v10 forProperty:185];

  return v8;
}

+ (id)CJKListNameForNumberType:(int)type
{
  if (type <= 41)
  {
    if (type <= 26)
    {
      switch(type)
      {
        case 15:
          v3 = @"Kanji";
          goto LABEL_38;
        case 18:
          v3 = @"Hiragana";
          goto LABEL_38;
        case 21:
          v3 = @"Katakana";
          goto LABEL_38;
      }
    }

    else if (type > 32)
    {
      if (type == 33)
      {
        v3 = @"Chinese Numerals - Trad.";
        goto LABEL_38;
      }

      if (type == 39)
      {
        v3 = @"Chinese Financial Numerals - Simp.";
        goto LABEL_38;
      }
    }

    else
    {
      if (type == 27)
      {
        v3 = @"Katakana Iroha";
        goto LABEL_38;
      }

      if (type == 30)
      {
        v3 = @"Chinese Numerals - Simp.";
        goto LABEL_38;
      }
    }

    return 0;
  }

  if (type > 51)
  {
    if (type > 57)
    {
      if (type == 58)
      {
        v3 = @"Hebrew Alpha";
        goto LABEL_38;
      }

      if (type == 61)
      {
        v3 = @"Hebrew Biblical";
        goto LABEL_38;
      }
    }

    else
    {
      if (type == 52)
      {
        v3 = @"Arabic Alpha";
        goto LABEL_38;
      }

      if (type == 55)
      {
        v3 = @"Arabic Abjad";
        goto LABEL_38;
      }
    }

    return 0;
  }

  if (type > 47)
  {
    if (type == 48)
    {
      v3 = @"Circled Numbers";
      goto LABEL_38;
    }

    if (type == 49)
    {
      v3 = @"Arabic";
      goto LABEL_38;
    }

    return 0;
  }

  if (type == 42)
  {
    v3 = @"Chinese Financial Numerals - Trad.";
    goto LABEL_38;
  }

  if (type != 45)
  {
    return 0;
  }

  v3 = @"Korean";
LABEL_38:
  v5 = TSWPBundle();

  return [v5 localizedStringForKey:v3 value:&stru_287D36338 table:@"TSText"];
}

+ (id)pLabelTypeArrayForType:(int)type
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = [MEMORY[0x277CCABB0] numberWithInt:*&type];
  v4[1] = v4[0];
  v4[2] = v4[0];
  v4[3] = v4[0];
  v4[4] = v4[0];
  v4[5] = v4[0];
  v4[6] = v4[0];
  v4[7] = v4[0];
  v4[8] = v4[0];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];
}

+ (id)pDefaultLabelValuesForLabelTypeProperty:(int)property
{
  v11[9] = *MEMORY[0x277D85DE8];
  if (property > 183)
  {
    if (property == 184)
    {
      v10[0] = [MEMORY[0x277CCABB0] numberWithInt:{+[TSWPListStyle defaultLabelNumberType](TSWPListStyle, "defaultLabelNumberType")}];
      v10[1] = v10[0];
      v10[2] = v10[0];
      v10[3] = v10[0];
      v10[4] = v10[0];
      v10[5] = v10[0];
      v10[6] = v10[0];
      v10[7] = v10[0];
      v10[8] = v10[0];
      v3 = MEMORY[0x277CBEA60];
      v4 = v10;
      return [v3 arrayWithObjects:v4 count:9];
    }

    if (property == 185)
    {
      v9[0] = [MEMORY[0x277CCABB0] numberWithInt:{+[TSWPListStyle defaultTieredNumber](TSWPListStyle, "defaultTieredNumber")}];
      v9[1] = v9[0];
      v9[2] = v9[0];
      v9[3] = v9[0];
      v9[4] = v9[0];
      v9[5] = v9[0];
      v9[6] = v9[0];
      v9[7] = v9[0];
      v9[8] = v9[0];
      v3 = MEMORY[0x277CBEA60];
      v4 = v9;
      return [v3 arrayWithObjects:v4 count:9];
    }

LABEL_8:
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPListStyle pDefaultLabelValuesForLabelTypeProperty:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"), 1029, @"Unhandled array property in list"}];
    return 0;
  }

  if (property == 182)
  {
    v8[0] = [self defaultMissingBulletImage];
    v8[1] = v8[0];
    v8[2] = v8[0];
    v8[3] = v8[0];
    v8[4] = v8[0];
    v8[5] = v8[0];
    v8[6] = v8[0];
    v8[7] = v8[0];
    v8[8] = v8[0];
    v3 = MEMORY[0x277CBEA60];
    v4 = v8;
    return [v3 arrayWithObjects:v4 count:9];
  }

  if (property != 183)
  {
    goto LABEL_8;
  }

  v11[0] = [self defaultLabelString];
  v11[1] = v11[0];
  v11[2] = v11[0];
  v11[3] = v11[0];
  v11[4] = v11[0];
  v11[5] = v11[0];
  v11[6] = v11[0];
  v11[7] = v11[0];
  v11[8] = v11[0];
  v3 = MEMORY[0x277CBEA60];
  v4 = v11;
  return [v3 arrayWithObjects:v4 count:9];
}

@end
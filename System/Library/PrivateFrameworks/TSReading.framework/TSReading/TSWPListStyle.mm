@interface TSWPListStyle
+ (BOOL)isDefaultMissingBulletImage:(id)a3;
+ (TSWPListStyle)listStyleWithNumberType:(int)a3 inStyleSheet:(id)a4 withNumberedPresetStyle:(id)a5;
+ (id)CJKListNameForNumberType:(int)a3;
+ (id)defaultLabelGeometries;
+ (id)defaultLabelIndents;
+ (id)defaultLabelString;
+ (id)defaultMissingBulletImage;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)defaultStyleWithContext:(id)a3 type:(int)a4;
+ (id)defaultTextIndents;
+ (id)harvardStyleWithContext:(id)a3;
+ (id)numberedlistStyleForPresets:(id)a3;
+ (id)pDefaultLabelValuesForLabelTypeProperty:(int)a3;
+ (id)pLabelTypeArrayForType:(int)a3;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (id)propertyMapForListNumberType:(int)a3;
+ (id)stickyOverrideProperties;
+ (int)effectiveTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4;
+ (int)firstLabelTypeForPropertyMapping:(id)a3;
+ (int)labelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4;
+ (int)pLabelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4 includeDegenerateLevels:(BOOL)a5;
+ (void)pGetDefaultTextIndentFloats:(double)a3[9];
- (TSWPListStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (double)labelIndentForLevel:(unint64_t)a3;
- (double)textIndentForLevel:(unint64_t)a3 fontSize:(double)a4;
- (id)overridePropertyMapWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6;
- (id)pOverrideArrayWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6;
- (int)effectiveTypeForLevel:(unint64_t)a3;
- (int)firstLabelType;
- (int)labelTypeForLevel:(unint64_t)a3;
@end

@implementation TSWPListStyle

- (TSWPListStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v7.receiver = self;
  v7.super_class = TSWPListStyle;
  return [(TSSStyle *)&v7 initWithContext:a3 name:a4 overridePropertyMap:a5 isVariation:a6];
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

- (double)labelIndentForLevel:(unint64_t)a3
{
  if (a3 > 8)
  {
    return 0.0;
  }

  v4 = [-[TSSStyle valueForProperty:](self valueForProperty:{177), "objectAtIndexedSubscript:", a3}];

  [v4 doubleValue];
  return result;
}

- (double)textIndentForLevel:(unint64_t)a3 fontSize:(double)a4
{
  v5 = 0.0;
  if (a3 <= 8)
  {
    [objc_msgSend(-[TSSStyle valueForProperty:](self valueForProperty:{176, 0.0), "objectAtIndexedSubscript:", a3), "doubleValue"}];
  }

  return v5 * a4;
}

+ (BOOL)isDefaultMissingBulletImage:(id)a3
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  if (v3)
  {
    v4 = [v3 filename];

    LOBYTE(v3) = [v4 isEqualToString:@"TSWPMissingBulletImage.png"];
  }

  return v3;
}

+ (int)pLabelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4 includeDegenerateLevels:(BOOL)a5
{
  result = [objc_msgSend(objc_msgSend(a4 objectForProperty:{180), "objectAtIndexedSubscript:", a3), "intValue"}];
  if (!a5)
  {
    if (result == 1)
    {
      v12 = [a4 objectForProperty:182];
      if (v12)
      {
        v13 = v12;
        if ([v12 count] > a3 && (objc_msgSend(a1, "isDefaultMissingBulletImage:", objc_msgSend(v13, "objectAtIndexedSubscript:", a3)) & 1) == 0)
        {
          v14 = [v13 objectAtIndexedSubscript:a3];
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

      v10 = [a4 objectForProperty:183];
      if (v10)
      {
        v11 = v10;
        if ([v10 count] > a3 && !objc_msgSend(objc_msgSend(v11, "objectAtIndexedSubscript:", a3), "isEqualToString:", &stru_287D36338))
        {
          return 2;
        }
      }
    }

    return 0;
  }

  return result;
}

- (int)effectiveTypeForLevel:(unint64_t)a3
{
  v5 = objc_opt_class();

  return [v5 pLabelTypeForLevel:a3 forPropertyMapping:self includeDegenerateLevels:0];
}

+ (int)effectiveTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4
{
  v6 = objc_opt_class();

  return [v6 pLabelTypeForLevel:a3 forPropertyMapping:a4 includeDegenerateLevels:0];
}

- (int)labelTypeForLevel:(unint64_t)a3
{
  v5 = objc_opt_class();

  return [v5 pLabelTypeForLevel:a3 forPropertyMapping:self includeDegenerateLevels:1];
}

+ (int)labelTypeForLevel:(unint64_t)a3 forPropertyMapping:(id)a4
{
  v6 = objc_opt_class();

  return [v6 pLabelTypeForLevel:a3 forPropertyMapping:a4 includeDegenerateLevels:1];
}

- (int)firstLabelType
{
  v3 = objc_opt_class();

  return [v3 firstLabelTypeForPropertyMapping:self];
}

+ (int)firstLabelTypeForPropertyMapping:(id)a3
{
  v4 = 0;
  do
  {
    result = [objc_opt_class() pLabelTypeForLevel:v4 forPropertyMapping:a3 includeDegenerateLevels:1];
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

+ (void)pGetDefaultTextIndentFloats:(double)a3[9]
{
  v3 = 0;
  v4 = xmmword_26CA639B0;
  v5 = a3 + 1;
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
    [a1 pGetDefaultTextIndentFloats:v4];
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
  v4 = [a1 defaultLabelIndents];
  v5 = [TSSPropertyMap alloc];
  v6 = [a1 pLabelTypeArrayForType:0];
  v9[0] = v3;
  v9[1] = v3;
  v9[2] = v3;
  v9[3] = v3;
  v9[4] = v3;
  v9[5] = v3;
  v9[6] = v3;
  v9[7] = v3;
  v9[8] = v3;
  v7 = -[TSSPropertyMap initWithPropertiesAndValues:](v5, "initWithPropertiesAndValues:", 180, v6, 176, v4, 177, &unk_287DDCBB8, 181, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:9], 0);

  return v7;
}

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = [[a1 alloc] initWithContext:a3 name:0 overridePropertyMap:objc_msgSend(a1 isVariation:{"defaultPropertyMap"), 0}];

  return v3;
}

+ (id)defaultStyleWithContext:(id)a3 type:(int)a4
{
  v4 = *&a4;
  v19[9] = *MEMORY[0x277D85DE8];
  v7 = [[TSWPListLabelGeometry alloc] initWithScale:1 scaleWithText:dbl_26CA66BA0[a4] baselineOffset:0.0];
  if ((v4 - 1) >= 2)
  {
    if (v4 != 3)
    {
      v10 = [a1 defaultLabelIndents];
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

  v10 = [v8 arrayWithObjects:v9 count:9];
LABEL_7:
  v11 = v10;
  v12 = [TSSPropertyMap alloc];
  v13 = [a1 pLabelTypeArrayForType:v4];
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
    -[TSSPropertyMap setObject:forProperty:](v14, "setObject:forProperty:", [a1 pDefaultLabelValuesForLabelTypeProperty:+[TSWPListStyle defaultStyleWithContext:type:]::labelSpecificProperties[v4]], +[TSWPListStyle defaultStyleWithContext:type:]::labelSpecificProperties[v4]);
    if (v4 == 3)
    {
      -[TSSPropertyMap setObject:forProperty:](v14, "setObject:forProperty:", [a1 pDefaultLabelValuesForLabelTypeProperty:185], 185);
    }
  }

  v15 = [[a1 alloc] initWithContext:a3 name:0 overridePropertyMap:v14 isVariation:0];

  return v15;
}

+ (id)harvardStyleWithContext:(id)a3
{
  v5 = [MEMORY[0x277CBEA60] arrayWithInts:&sHarvardNumberFormats count:9];
  v6 = [MEMORY[0x277CBEA60] arrayWithCGFloats:&sHarvardLabelIndents count:9];
  v7 = -[TSSPropertyMap initWithPropertiesAndValues:]([TSSPropertyMap alloc], "initWithPropertiesAndValues:", 180, [a1 pLabelTypeArrayForType:3], 176, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithCGFloats:count:", &sHarvardTextIndents, 9), 177, v6, 181, objc_msgSend(objc_opt_class(), "defaultLabelGeometries"), 184, v5, 185, objc_msgSend(a1, "pDefaultLabelValuesForLabelTypeProperty:", 185), 0);
  v8 = [[a1 alloc] initWithContext:a3 name:0 overridePropertyMap:v7 isVariation:0];

  return v8;
}

+ (id)numberedlistStyleForPresets:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
      objc_enumerationMutation(a3);
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

    v5 = [a3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    v8 = 0;
  }

  while (v5);
  return v8;
}

- (id)pOverrideArrayWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6
{
  v7 = *&a4;
  v25 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  [(TSSStyle *)self valueForProperty:v7];
  v10 = TSUDynamicCast();
  if (!v10)
  {
    v10 = [objc_opt_class() pDefaultLabelValuesForLabelTypeProperty:v7];
  }

  v11 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
  if (a3)
  {
    v22 = 0u;
    v23 = 0u;
    if (!a5)
    {
      a5 = &unk_287DDCBE8;
    }

    v20 = 0uLL;
    v21 = 0uLL;
    v12 = [a5 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(a5);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) intValue];
          if ([v11 count] <= v16)
          {
            v17 = [MEMORY[0x277D6C290] currentHandler];
            v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:]"];
            [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"), 784, @"out of paragraph level bounds"}];
          }

          if ([v11 count] > v16)
          {
            [v11 setObject:a3 atIndexedSubscript:v16];
          }
        }

        v13 = [a5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  return v11;
}

- (id)overridePropertyMapWithValue:(id)a3 forProperty:(int)a4 atParagraphLevels:(id)a5 withContext:(id)a6
{
  v8 = *&a4;
  v11 = objc_alloc_init(TSSPropertyMap);
  if (v8 > 183)
  {
    if (v8 == 184)
    {
      [(TSSPropertyMap *)v11 setObject:[(TSWPListStyle *)self pOverrideArrayWithValue:0 forProperty:185 atParagraphLevels:a5 withContext:a6] forProperty:185];
    }

    else if (v8 != 185)
    {
LABEL_10:
      v16 = [MEMORY[0x277D6C290] currentHandler];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPListStyle overridePropertyMapWithValue:forProperty:atParagraphLevels:withContext:]"];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"];
      v19 = @"Unhandled override property in list";
      v20 = v16;
      v21 = v17;
      v22 = 849;
LABEL_11:
      [v20 handleFailureInFunction:v21 file:v18 lineNumber:v22 description:v19];
      goto LABEL_15;
    }

    v13 = [(TSWPListStyle *)self pOverrideArrayWithValue:0 forProperty:184 atParagraphLevels:a5 withContext:a6];
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

  v12 = [a3 intValue];
  if (v12 > 1)
  {
    if (v12 == 3)
    {
      -[TSSPropertyMap setObject:forProperty:](v11, "setObject:forProperty:", -[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:](self, "pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:", [MEMORY[0x277CCABB0] numberWithInt:{+[TSWPListStyle defaultLabelNumberType](TSWPListStyle, "defaultLabelNumberType")}], 184, a5, a6), 184);
      v13 = -[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:](self, "pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:", [MEMORY[0x277CCABB0] numberWithInt:{+[TSWPListStyle defaultTieredNumber](TSWPListStyle, "defaultTieredNumber")}], 185, a5, a6);
      v14 = v11;
      v15 = 185;
      goto LABEL_14;
    }

    if (v12 == 2)
    {
      v13 = [(TSWPListStyle *)self pOverrideArrayWithValue:+[TSWPListStyle forProperty:"defaultLabelString"]atParagraphLevels:183 withContext:a5, a6];
      v14 = v11;
      v15 = 183;
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  if (v12 != 1)
  {
LABEL_21:
    v24 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPListStyle overridePropertyMapWithValue:forProperty:atParagraphLevels:withContext:]"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"];
    v19 = @"Not covering a list type in inspector setter";
    v20 = v24;
    v21 = v25;
    v22 = 828;
    goto LABEL_11;
  }

  v13 = -[TSWPListStyle pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:](self, "pOverrideArrayWithValue:forProperty:atParagraphLevels:withContext:", [+[TSWPImageBulletProvider sharedInstance](TSWPImageBulletProvider dataForDefaultImageBulletWithContext:"dataForDefaultImageBulletWithContext:", a6], 182, a5, a6);
  v14 = v11;
  v15 = 182;
LABEL_14:
  [(TSSPropertyMap *)v14 setObject:v13 forProperty:v15];
LABEL_15:
  [(TSSPropertyMap *)v11 setObject:[(TSWPListStyle *)self pOverrideArrayWithValue:a3 forProperty:v8 atParagraphLevels:a5 withContext:a6] forProperty:v8];

  return v11;
}

+ (TSWPListStyle)listStyleWithNumberType:(int)a3 inStyleSheet:(id)a4 withNumberedPresetStyle:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v9 = a3;
  v10 = [v8 initWithFloat:v9];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = [a4 childrenOfStyle:{a5, 0}];
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
          v19 = [MEMORY[0x277D6C290] currentHandler];
          v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPListStyle listStyleWithNumberType:inStyleSheet:withNumberedPresetStyle:]"];
          [v19 handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"), 871, @"Expected numbered list style"}];
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

+ (id)propertyMapForListNumberType:(int)a3
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = a3;
  v7 = [v5 initWithFloat:v6];
  v8 = objc_alloc_init(TSSPropertyMap);
  -[TSSPropertyMap setObject:forProperty:](v8, "setObject:forProperty:", [a1 pLabelTypeArrayForType:3], 180);
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

+ (id)CJKListNameForNumberType:(int)a3
{
  if (a3 <= 41)
  {
    if (a3 <= 26)
    {
      switch(a3)
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

    else if (a3 > 32)
    {
      if (a3 == 33)
      {
        v3 = @"Chinese Numerals - Trad.";
        goto LABEL_38;
      }

      if (a3 == 39)
      {
        v3 = @"Chinese Financial Numerals - Simp.";
        goto LABEL_38;
      }
    }

    else
    {
      if (a3 == 27)
      {
        v3 = @"Katakana Iroha";
        goto LABEL_38;
      }

      if (a3 == 30)
      {
        v3 = @"Chinese Numerals - Simp.";
        goto LABEL_38;
      }
    }

    return 0;
  }

  if (a3 > 51)
  {
    if (a3 > 57)
    {
      if (a3 == 58)
      {
        v3 = @"Hebrew Alpha";
        goto LABEL_38;
      }

      if (a3 == 61)
      {
        v3 = @"Hebrew Biblical";
        goto LABEL_38;
      }
    }

    else
    {
      if (a3 == 52)
      {
        v3 = @"Arabic Alpha";
        goto LABEL_38;
      }

      if (a3 == 55)
      {
        v3 = @"Arabic Abjad";
        goto LABEL_38;
      }
    }

    return 0;
  }

  if (a3 > 47)
  {
    if (a3 == 48)
    {
      v3 = @"Circled Numbers";
      goto LABEL_38;
    }

    if (a3 == 49)
    {
      v3 = @"Arabic";
      goto LABEL_38;
    }

    return 0;
  }

  if (a3 == 42)
  {
    v3 = @"Chinese Financial Numerals - Trad.";
    goto LABEL_38;
  }

  if (a3 != 45)
  {
    return 0;
  }

  v3 = @"Korean";
LABEL_38:
  v5 = TSWPBundle();

  return [v5 localizedStringForKey:v3 value:&stru_287D36338 table:@"TSText"];
}

+ (id)pLabelTypeArrayForType:(int)a3
{
  v4[9] = *MEMORY[0x277D85DE8];
  v4[0] = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
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

+ (id)pDefaultLabelValuesForLabelTypeProperty:(int)a3
{
  v11[9] = *MEMORY[0x277D85DE8];
  if (a3 > 183)
  {
    if (a3 == 184)
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

    if (a3 == 185)
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
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPListStyle pDefaultLabelValuesForLabelTypeProperty:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPListStyle.mm"), 1029, @"Unhandled array property in list"}];
    return 0;
  }

  if (a3 == 182)
  {
    v8[0] = [a1 defaultMissingBulletImage];
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

  if (a3 != 183)
  {
    goto LABEL_8;
  }

  v11[0] = [a1 defaultLabelString];
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
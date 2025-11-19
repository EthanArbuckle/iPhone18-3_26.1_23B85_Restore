@interface TSDShapeStyle
+ (BOOL)validateFloatValue:(float *)a3 forProperty:(int)a4;
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)p_magicMoveProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (void)initialize;
- (BOOL)wantsHighContrastBackgroundColor;
- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3;
- (void)fixImageFillTechniqueForSwatchOfSize:(CGSize)a3;
@end

@implementation TSDShapeStyle

+ (void)initialize
{
  if (!sDefaultStroke)
  {
    objc_sync_enter(a1);
    if (!sDefaultStroke)
    {
      v3 = objc_alloc_init(TSDStroke);
      __dmb(0xBu);
      sDefaultStroke = v3;
      if (!v3)
      {
        v4 = [MEMORY[0x277D6C290] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle initialize]"];
        [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 36, @"Couldn't initialize lazy variable %s", "sDefaultStroke"}];
      }
    }

    objc_sync_exit(a1);
  }

  if (!sNSNullNull)
  {
    objc_sync_enter(a1);
    if (!sNSNullNull)
    {
      v6 = [MEMORY[0x277CBEB68] null];
      __dmb(0xBu);
      sNSNullNull = v6;
      if (!v6)
      {
        v7 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle initialize]"];
        [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 40, @"Couldn't initialize lazy variable %s", "sNSNullNull"}];
      }
    }

    objc_sync_exit(a1);
  }
}

+ (id)properties
{
  result = properties_sProperties;
  if (!properties_sProperties)
  {
    objc_sync_enter(a1);
    if (!properties_sProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:516, 517, 518, 519, 520, 0];
      __dmb(0xBu);
      properties_sProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle properties]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 57, @"Couldn't initialize lazy variable %s", "sProperties"}];
      }
    }

    objc_sync_exit(a1);
    return properties_sProperties;
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)a3
{
  result = INFINITY;
  if (a3 == 518)
  {
    return 1.0;
  }

  return result;
}

+ (id)defaultValueForProperty:(int)a3
{
  result = 0;
  if (a3 > 518)
  {
    if (a3 == 519 || a3 == 520)
    {
      return sNSNullNull;
    }
  }

  else if (a3 == 516)
  {
    return +[TSDColorFill clearColor];
  }

  else if (a3 == 517)
  {
    return sDefaultStroke;
  }

  return result;
}

+ (id)propertiesAllowingNSNull
{
  result = propertiesAllowingNSNull_sNullProperties;
  if (!propertiesAllowingNSNull_sNullProperties)
  {
    objc_sync_enter(a1);
    if (!propertiesAllowingNSNull_sNullProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:516, 519, 520, 0];
      __dmb(0xBu);
      propertiesAllowingNSNull_sNullProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle propertiesAllowingNSNull]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 109, @"Couldn't initialize lazy variable %s", "sNullProperties"}];
      }
    }

    objc_sync_exit(a1);
    return propertiesAllowingNSNull_sNullProperties;
  }

  return result;
}

+ (BOOL)validateFloatValue:(float *)a3 forProperty:(int)a4
{
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___TSDShapeStyle;
  v6 = objc_msgSendSuper2(&v18, sel_validateFloatValue_forProperty_);
  v8 = v6;
  if (a4 == 518 && v6)
  {
    *&v7 = *a3;
    if (*a3 < 0.0)
    {
      v9 = 0.0;
      v10 = 121;
LABEL_7:
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle validateFloatValue:forProperty:]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"];
      v14 = *a3;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:v10 description:{@"Unexpected float value %g for %@ property %@ out of range [0.0, 1.0].", *&v14, v16, String(518)}];
      *a3 = v9;
      return v8;
    }

    v9 = 1.0;
    if (*&v7 > 1.0)
    {
      v10 = 125;
      goto LABEL_7;
    }
  }

  return v8;
}

+ (id)p_magicMoveProperties
{
  result = p_magicMoveProperties_s_magicMoveProperties;
  if (!p_magicMoveProperties_s_magicMoveProperties)
  {
    objc_sync_enter(a1);
    if (!p_magicMoveProperties_s_magicMoveProperties)
    {
      v4 = [TSSPropertySet propertySetWithProperties:512, 513, 515, 516, 517, 518, 519, 520, 522, 523, 526, 528, 529, 0];
      __dmb(0xBu);
      p_magicMoveProperties_s_magicMoveProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle p_magicMoveProperties]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 156, @"Couldn't initialize lazy variable %s", "s_magicMoveProperties"}];
      }
    }

    objc_sync_exit(a1);
    return p_magicMoveProperties_s_magicMoveProperties;
  }

  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDShapeStyle_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __38__TSDShapeStyle_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDShapeStyle mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 166, @"nil object after cast"}];
  }

  v5 = [objc_opt_class() p_magicMoveProperties];
  v6 = +[(TSSPropertySet *)TSSMutablePropertySet];
  [v6 addProperties:{objc_msgSend(objc_msgSend(*(a1 + 40), "propertyMap"), "allProperties")}];
  [v6 addProperties:{objc_msgSend(objc_msgSend(v2, "propertyMap"), "allProperties")}];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__TSDShapeStyle_mixingTypeWithObject___block_invoke_2;
  v10[3] = &unk_279D48A68;
  v7 = *(a1 + 40);
  v10[4] = v5;
  v10[5] = v7;
  v10[6] = v2;
  v10[7] = &v11;
  [v6 enumeratePropertiesUsingBlock:v10];
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t __38__TSDShapeStyle_mixingTypeWithObject___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsProperty:a2];
  if (result)
  {
    v7 = [*(a1 + 40) boxedValueForProperty:a2];
    v8 = [*(a1 + 48) boxedValueForProperty:a2];
    if ([objc_msgSend(objc_opt_class() "propertiesAllowingNSNull")])
    {
      v9 = TSDMixingTypeWithPossiblyNilObjects(v7, v8);
    }

    else
    {
      v9 = [v7 mixingTypeWithObject:v8];
    }

    if (v9 == 1 && a2 == 516)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9;
    }

    result = TSDMixingTypeBestFromMixingTypes(*(*(*(a1 + 56) + 8) + 24), v11);
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSDShapeStyle_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

id __50__TSDShapeStyle_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  v3 = [*(a1 + 40) copyWithContext:{objc_msgSend(*(a1 + 40), "context")}];
  v4 = [objc_opt_class() p_magicMoveProperties];
  v5 = +[(TSSPropertySet *)TSSMutablePropertySet];
  [v5 addProperties:{objc_msgSend(objc_msgSend(*(a1 + 40), "propertyMap"), "allProperties")}];
  [v5 addProperties:{objc_msgSend(objc_msgSend(v2, "propertyMap"), "allProperties")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__TSDShapeStyle_mixedObjectWithFraction_ofObject___block_invoke_2;
  v8[3] = &unk_279D48A90;
  v6 = *(a1 + 40);
  v8[4] = v4;
  v8[5] = v6;
  v8[8] = *(a1 + 48);
  v8[6] = v2;
  v8[7] = v3;
  [v5 enumeratePropertiesUsingBlock:v8];
  return v3;
}

uint64_t __50__TSDShapeStyle_mixedObjectWithFraction_ofObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsProperty:a2];
  if (result)
  {
    v5 = [*(a1 + 40) boxedValueForProperty:a2];
    result = [*(a1 + 48) boxedValueForProperty:a2];
    if (v5 && result != 0)
    {
      v7 = [v5 mixedObjectWithFraction:result ofObject:*(a1 + 64)];
      v8 = *(a1 + 56);

      return [v8 setBoxedValue:v7 forProperty:a2];
    }
  }

  return result;
}

- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5
{
  v6 = a4;
  if (a3 == 517)
  {
    if (a4 && [MEMORY[0x277CBEB68] null] != a4)
    {
      v9 = *&a5->c;
      v13 = *&a5->a;
      v14 = v9;
      v15 = *&a5->tx;
      return [v6 strokeByTransformingByTransform:&v13];
    }
  }

  else
  {
    if (a3 != 520)
    {
      v12.receiver = self;
      v12.super_class = TSDShapeStyle;
      v10 = *&a5->c;
      v13 = *&a5->a;
      v14 = v10;
      v15 = *&a5->tx;
      return [(TSSStyle *)&v12 boxedValueForProperty:*&a3 oldBoxedValue:a4 transformedByTransform:&v13];
    }

    if (a4 && [MEMORY[0x277CBEB68] null] != a4)
    {
      v7 = *&a5->c;
      v13 = *&a5->a;
      v14 = v7;
      v15 = *&a5->tx;
      return [v6 shadowByTransformingByTransform:&v13];
    }
  }

  return v6;
}

- (BOOL)wantsHighContrastBackgroundColor
{
  v3 = [(TSSStyle *)self valueForProperty:516];
  v4 = [(TSSStyle *)self valueForProperty:517];
  [(TSSStyle *)self CGFloatValueForProperty:518];
  v6 = v5;
  if (v3 == [MEMORY[0x277CBEB68] null])
  {
    v7 = [v4 color];
    if ([v7 isAlmostEqualToColor:{objc_msgSend(MEMORY[0x277D6C2A8], "whiteColor")}])
    {
      return 1;
    }
  }

  v9 = [MEMORY[0x277CBEB68] null];
  return v6 != 1.0 && v3 != v9;
}

- (void)fixImageFillTechniqueForSwatchOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(TSSStyle *)self boxedValueForProperty:516];
  if (v6)
  {
    if (v6 != [MEMORY[0x277CBEB68] null])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v7 = TSUDynamicCast();
        if ([v7 technique] == 4 || !objc_msgSend(v7, "technique") && ((objc_msgSend(v7, "fillSize"), v9 >= width) ? (v10 = v8 < height) : (v10 = 1), v10))
        {
          v11 = [v7 mutableCopy];
          [v11 setTechnique:3];
          [(TSSStyle *)self setBoxedValue:v11 forProperty:516];
        }
      }
    }
  }
}

@end
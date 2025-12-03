@interface TSDShapeStyle
+ (BOOL)validateFloatValue:(float *)value forProperty:(int)property;
+ (float)defaultFloatValueForProperty:(int)property;
+ (id)defaultValueForProperty:(int)property;
+ (id)p_magicMoveProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (void)initialize;
- (BOOL)wantsHighContrastBackgroundColor;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object;
- (int64_t)mixingTypeWithObject:(id)object;
- (void)fixImageFillTechniqueForSwatchOfSize:(CGSize)size;
@end

@implementation TSDShapeStyle

+ (void)initialize
{
  if (!sDefaultStroke)
  {
    objc_sync_enter(self);
    if (!sDefaultStroke)
    {
      v3 = objc_alloc_init(TSDStroke);
      __dmb(0xBu);
      sDefaultStroke = v3;
      if (!v3)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle initialize]"];
        [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 36, @"Couldn't initialize lazy variable %s", "sDefaultStroke"}];
      }
    }

    objc_sync_exit(self);
  }

  if (!sNSNullNull)
  {
    objc_sync_enter(self);
    if (!sNSNullNull)
    {
      null = [MEMORY[0x277CBEB68] null];
      __dmb(0xBu);
      sNSNullNull = null;
      if (!null)
      {
        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle initialize]"];
        [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 40, @"Couldn't initialize lazy variable %s", "sNSNullNull"}];
      }
    }

    objc_sync_exit(self);
  }
}

+ (id)properties
{
  result = properties_sProperties;
  if (!properties_sProperties)
  {
    objc_sync_enter(self);
    if (!properties_sProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:516, 517, 518, 519, 520, 0];
      __dmb(0xBu);
      properties_sProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle properties]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 57, @"Couldn't initialize lazy variable %s", "sProperties"}];
      }
    }

    objc_sync_exit(self);
    return properties_sProperties;
  }

  return result;
}

+ (float)defaultFloatValueForProperty:(int)property
{
  result = INFINITY;
  if (property == 518)
  {
    return 1.0;
  }

  return result;
}

+ (id)defaultValueForProperty:(int)property
{
  result = 0;
  if (property > 518)
  {
    if (property == 519 || property == 520)
    {
      return sNSNullNull;
    }
  }

  else if (property == 516)
  {
    return +[TSDColorFill clearColor];
  }

  else if (property == 517)
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
    objc_sync_enter(self);
    if (!propertiesAllowingNSNull_sNullProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:516, 519, 520, 0];
      __dmb(0xBu);
      propertiesAllowingNSNull_sNullProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle propertiesAllowingNSNull]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 109, @"Couldn't initialize lazy variable %s", "sNullProperties"}];
      }
    }

    objc_sync_exit(self);
    return propertiesAllowingNSNull_sNullProperties;
  }

  return result;
}

+ (BOOL)validateFloatValue:(float *)value forProperty:(int)property
{
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___TSDShapeStyle;
  v6 = objc_msgSendSuper2(&v18, sel_validateFloatValue_forProperty_);
  v8 = v6;
  if (property == 518 && v6)
  {
    *&v7 = *value;
    if (*value < 0.0)
    {
      v9 = 0.0;
      v10 = 121;
LABEL_7:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle validateFloatValue:forProperty:]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"];
      v14 = *value;
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [currentHandler handleFailureInFunction:v12 file:v13 lineNumber:v10 description:{@"Unexpected float value %g for %@ property %@ out of range [0.0, 1.0].", *&v14, v16, String(518)}];
      *value = v9;
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
    objc_sync_enter(self);
    if (!p_magicMoveProperties_s_magicMoveProperties)
    {
      v4 = [TSSPropertySet propertySetWithProperties:512, 513, 515, 516, 517, 518, 519, 520, 522, 523, 526, 528, 529, 0];
      __dmb(0xBu);
      p_magicMoveProperties_s_magicMoveProperties = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDShapeStyle p_magicMoveProperties]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShapeStyle.m"), 156, @"Couldn't initialize lazy variable %s", "s_magicMoveProperties"}];
      }
    }

    objc_sync_exit(self);
    return p_magicMoveProperties_s_magicMoveProperties;
  }

  return result;
}

- (int64_t)mixingTypeWithObject:(id)object
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDShapeStyle_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = object;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, object, v4);
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

- (id)mixedObjectWithFraction:(double)fraction ofObject:(id)object
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSDShapeStyle_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = object;
  v5[5] = self;
  *&v5[6] = fraction;
  return TSDMixingMixedObjectWithFraction(self, object, v5);
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

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  valueCopy = value;
  if (property == 517)
  {
    if (value && [MEMORY[0x277CBEB68] null] != value)
    {
      v9 = *&transform->c;
      v13 = *&transform->a;
      v14 = v9;
      v15 = *&transform->tx;
      return [valueCopy strokeByTransformingByTransform:&v13];
    }
  }

  else
  {
    if (property != 520)
    {
      v12.receiver = self;
      v12.super_class = TSDShapeStyle;
      v10 = *&transform->c;
      v13 = *&transform->a;
      v14 = v10;
      v15 = *&transform->tx;
      return [(TSSStyle *)&v12 boxedValueForProperty:*&property oldBoxedValue:value transformedByTransform:&v13];
    }

    if (value && [MEMORY[0x277CBEB68] null] != value)
    {
      v7 = *&transform->c;
      v13 = *&transform->a;
      v14 = v7;
      v15 = *&transform->tx;
      return [valueCopy shadowByTransformingByTransform:&v13];
    }
  }

  return valueCopy;
}

- (BOOL)wantsHighContrastBackgroundColor
{
  v3 = [(TSSStyle *)self valueForProperty:516];
  v4 = [(TSSStyle *)self valueForProperty:517];
  [(TSSStyle *)self CGFloatValueForProperty:518];
  v6 = v5;
  if (v3 == [MEMORY[0x277CBEB68] null])
  {
    color = [v4 color];
    if ([color isAlmostEqualToColor:{objc_msgSend(MEMORY[0x277D6C2A8], "whiteColor")}])
    {
      return 1;
    }
  }

  null = [MEMORY[0x277CBEB68] null];
  return v6 != 1.0 && v3 != null;
}

- (void)fixImageFillTechniqueForSwatchOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
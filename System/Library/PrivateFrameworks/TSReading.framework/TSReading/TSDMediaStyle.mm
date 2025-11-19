@interface TSDMediaStyle
+ (BOOL)validateFloatValue:(float *)a3 forProperty:(int)a4;
+ (float)defaultFloatValueForProperty:(int)a3;
+ (id)defaultValueForProperty:(int)a3;
+ (id)p_magicMoveProperties;
+ (id)properties;
+ (id)propertiesAllowingNSNull;
+ (void)initialize;
- (NSString)presetKind;
- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5;
- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4;
- (int64_t)mixingTypeWithObject:(id)a3;
@end

@implementation TSDMediaStyle

+ (void)initialize
{
  if (!sDefaultStroke_0)
  {
    sDefaultStroke_0 = +[TSDStroke emptyStroke];
  }
}

+ (id)properties
{
  result = properties_sProperties_0;
  if (!properties_sProperties_0)
  {
    result = [[TSSPropertySet alloc] initWithProperties:517, 518, 519, 520, 0];
    properties_sProperties_0 = result;
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
  if (a3 == 520 || a3 == 519)
  {
    return [MEMORY[0x277CBEB68] null];
  }

  if (a3 == 517)
  {
    return sDefaultStroke_0;
  }

  return 0;
}

+ (id)propertiesAllowingNSNull
{
  result = propertiesAllowingNSNull_s_nullProperties;
  if (!propertiesAllowingNSNull_s_nullProperties)
  {
    objc_sync_enter(a1);
    if (!propertiesAllowingNSNull_s_nullProperties)
    {
      v4 = [[TSSPropertySet alloc] initWithProperties:519, 520, 0];
      __dmb(0xBu);
      propertiesAllowingNSNull_s_nullProperties = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMediaStyle propertiesAllowingNSNull]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaStyle.m"), 135, @"Couldn't initialize lazy variable %s", "s_nullProperties"}];
      }
    }

    objc_sync_exit(a1);
    return propertiesAllowingNSNull_s_nullProperties;
  }

  return result;
}

+ (BOOL)validateFloatValue:(float *)a3 forProperty:(int)a4
{
  v18.receiver = a1;
  v18.super_class = &OBJC_METACLASS___TSDMediaStyle;
  v6 = objc_msgSendSuper2(&v18, sel_validateFloatValue_forProperty_);
  v8 = v6;
  if (a4 == 518 && v6)
  {
    *&v7 = *a3;
    if (*a3 < 0.0)
    {
      v9 = 0.0;
      v10 = 147;
LABEL_7:
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMediaStyle validateFloatValue:forProperty:]"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaStyle.m"];
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
      v10 = 151;
      goto LABEL_7;
    }
  }

  return v8;
}

- (NSString)presetKind
{
  v2 = self;
  v3 = String;
  if (![(TSSStyle *)self styleIdentifier])
  {
    v2 = [(TSSStyle *)v2 firstIdentifiedAncestor];
  }

  v4 = String([(TSSStyle *)v2 styleIdentifier]);
  if ([v4 isEqualToString:@"image"])
  {
    return String;
  }

  if ([v4 isEqualToString:@"movie"])
  {
    return String;
  }

  v5 = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaStyle presetKind]"];
  [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaStyle.m"), 180, @"Could not compute presetKind because of a bad packageString: %@", v4}];
  return v3;
}

+ (id)p_magicMoveProperties
{
  result = p_magicMoveProperties_s_magicMoveProperties_0;
  if (!p_magicMoveProperties_s_magicMoveProperties_0)
  {
    objc_sync_enter(a1);
    if (!p_magicMoveProperties_s_magicMoveProperties_0)
    {
      v4 = [TSSPropertySet propertySetWithProperties:512, 513, 515, 517, 518, 519, 520, 528, 529, 0];
      __dmb(0xBu);
      p_magicMoveProperties_s_magicMoveProperties_0 = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDMediaStyle p_magicMoveProperties]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaStyle.m"), 211, @"Couldn't initialize lazy variable %s", "s_magicMoveProperties"}];
      }
    }

    objc_sync_exit(a1);
    return p_magicMoveProperties_s_magicMoveProperties_0;
  }

  return result;
}

- (int64_t)mixingTypeWithObject:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSDMediaStyle_mixingTypeWithObject___block_invoke;
  v4[3] = &unk_279D48738;
  v4[4] = a3;
  v4[5] = self;
  return TSDMixingTypeWithObject(self, a3, v4);
}

uint64_t __38__TSDMediaStyle_mixingTypeWithObject___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = TSUDynamicCast();
  if (!v2)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMediaStyle mixingTypeWithObject:]_block_invoke"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMediaStyle.m"), 221, @"nil object after cast"}];
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
  v10[2] = __38__TSDMediaStyle_mixingTypeWithObject___block_invoke_2;
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

uint64_t __38__TSDMediaStyle_mixingTypeWithObject___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsProperty:a2];
  if (result)
  {
    v7 = [*(a1 + 40) boxedValueForProperty:a2];
    v8 = [*(a1 + 48) boxedValueForProperty:a2];
    v9 = *(*(*(a1 + 56) + 8) + 24);
    v10 = TSDMixingTypeWithPossiblyNilObjects(v7, v8);
    result = TSDMixingTypeBestFromMixingTypes(v9, v10);
    *(*(*(a1 + 56) + 8) + 24) = result;
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }

  return result;
}

- (id)mixedObjectWithFraction:(double)a3 ofObject:(id)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TSDMediaStyle_mixedObjectWithFraction_ofObject___block_invoke;
  v5[3] = &unk_279D48760;
  v5[4] = a4;
  v5[5] = self;
  *&v5[6] = a3;
  return TSDMixingMixedObjectWithFraction(self, a4, v5);
}

id __50__TSDMediaStyle_mixedObjectWithFraction_ofObject___block_invoke(uint64_t a1)
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
  v8[2] = __50__TSDMediaStyle_mixedObjectWithFraction_ofObject___block_invoke_2;
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

uint64_t __50__TSDMediaStyle_mixedObjectWithFraction_ofObject___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsProperty:a2];
  if (result)
  {
    v5 = TSDMixedObjectWithPossiblyNilObjects([*(a1 + 40) boxedValueForProperty:a2], objc_msgSend(*(a1 + 48), "boxedValueForProperty:", a2), *(a1 + 64));
    v6 = *(a1 + 56);

    return [v6 setBoxedValue:v5 forProperty:a2];
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
      v12.super_class = TSDMediaStyle;
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

@end
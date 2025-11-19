@interface TSSStyle
+ (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4 min:(int)a5 max:(int)a6;
+ (BOOL)validateIntValueAsBool:(int *)a3 forProperty:(int)a4;
+ (BOOL)validateObjectValue:(id *)a3 withClass:(Class)a4 forProperty:(int)a5;
+ (double)fontSizeForFontSize:(double)a3 scalingFactor:(double)a4;
+ (id)boxedDefaultValueForProperty:(int)a3;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)a3;
+ (id)description;
+ (id)properties;
- (BOOL)definesProperty:(int)a3;
- (BOOL)hasEqualPropertyValues:(id)a3;
- (BOOL)hasEqualValues:(id)a3 forProperties:(id)a4;
- (BOOL)hasEqualValuesToPropertyMap:(id)a3 forProperties:(id)a4;
- (BOOL)isAncestorOf:(id)a3;
- (BOOL)isDescendentOf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)overridesAnyProperty;
- (BOOL)p_hasEqualValuesTo:(id)a3 forProperty:(int)a4;
- (BOOL)validateDoubleValue:(double *)a3 forProperty:(int)a4;
- (BOOL)validateFloatValue:(float *)a3 forProperty:(int)a4;
- (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4;
- (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4 min:(int)a5 max:(int)a6;
- (BOOL)validateIntValueAsBool:(int *)a3 forProperty:(int)a4;
- (BOOL)validateObjectValue:(id *)a3 withClass:(Class)a4 forProperty:(int)a5;
- (NSSet)children;
- (TSSPropertyMap)overridePropertyMap;
- (TSSStyle)baseStyleForVariation;
- (TSSStyle)firstIdentifiedAncestor;
- (TSSStyle)init;
- (TSSStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6;
- (TSSStyle)rootAncestor;
- (TSSStyle)rootIdentifiedAncestor;
- (double)CGFloatValueForProperty:(int)a3;
- (double)doubleValueForProperty:(int)a3;
- (double)overrideCGFloatValueForProperty:(int)a3;
- (double)overrideDoubleValueForProperty:(int)a3;
- (float)floatValueForProperty:(int)a3;
- (float)overrideFloatValueForProperty:(int)a3;
- (id)boxedOverrideValueForProperty:(int)a3;
- (id)boxedValueForProperty:(int)a3;
- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5;
- (id)constrainShapeStyleForContext:(id)a3;
- (id)copyFlattenedWithContext:(id)a3;
- (id)copyPropertyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyWithZone:(_NSZone *)a3 context:(id)a4;
- (id)newOverridePropertyMapWithPropertyMap:(id)a3;
- (id)overridePropertyMapWithPropertyMap:(id)a3 overridePropertyMap:(id)a4 collapseSourceOverrides:(BOOL)a5;
- (id)overrideValueForProperty:(int)a3;
- (id)propertyMap;
- (id)propertyMapIgnoringStyle:(id)a3;
- (id)referencedStyles;
- (id)valueForProperty:(int)a3;
- (id)valuesForProperties:(id)a3;
- (int)intValueForProperty:(int)a3;
- (int)overrideIntValueForProperty:(int)a3;
- (unint64_t)hash;
- (unint64_t)overrideCount;
- (void)constrainShadowForSwatchGeneration;
- (void)constrainStrokeForSwatchGeneration;
- (void)dealloc;
- (void)fadeReflectionForSwatchGeneration;
- (void)removeAllValues;
- (void)removeValueForProperty:(int)a3;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)setBoxedValue:(id)a3 forProperty:(int)a4;
- (void)setCGFloatValue:(double)a3 forProperty:(int)a4;
- (void)setDoubleValue:(double)a3 forProperty:(int)a4;
- (void)setFloatValue:(float)a3 forProperty:(int)a4;
- (void)setIntValue:(int)a3 forProperty:(int)a4;
- (void)setName:(id)a3;
- (void)setOverridePropertyMap:(id)a3;
- (void)setParent:(id)a3;
- (void)setStyleIdentifier:(id)a3;
- (void)setValue:(id)a3 forProperty:(int)a4;
- (void)setValuesForProperties:(id)a3;
@end

@implementation TSSStyle

- (void)setName:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = [a3 copy];

  self->mName = v5;
}

- (void)setStyleIdentifier:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = [a3 copy];

  self->mStyleIdentifier = v5;
}

+ (id)properties
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSSStyle properties]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 372, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "+[TSSStyle properties]"), 0}]);
}

+ (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", NSStringFromClass(a1)];
  for (i = [a1 superclass]; i != objc_opt_class(); i = objc_msgSend(i, "superclass"))
  {
    [v3 appendFormat:@" : %@", NSStringFromClass(i)];
  }

  v5 = [MEMORY[0x277CCAB68] string];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = __Block_byref_object_copy__7;
  v10[4] = __Block_byref_object_dispose__7;
  v10[5] = &stru_287D36338;
  v6 = [a1 properties];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __23__TSSStyle_description__block_invoke;
  v9[3] = &unk_279D48008;
  v9[4] = v5;
  v9[5] = v10;
  [v6 enumeratePropertiesUsingBlock:v9];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> = {\n%@\n}", v3, objc_msgSend(MEMORY[0x277CCACA8], "tsu_stringByIndentingString:", v5)];
  _Block_object_dispose(v10, 8);
  return v7;
}

uint64_t __23__TSSStyle_description__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) appendFormat:@"%@%3d %@", *(*(*(a1 + 40) + 8) + 40), a2, String(a2)];
  *(*(*(a1 + 40) + 8) + 40) = @"\n";
  return result;
}

+ (id)boxedDefaultValueForProperty:(int)a3
{
  v3 = *&a3;
  v5 = String(a3);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [a1 defaultFloatValueForProperty:v3];
      if (v14 == INFINITY)
      {
        return 0;
      }

      v15 = MEMORY[0x277CCABB0];

      return [v15 numberWithFloat:?];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_14;
      }

      [a1 defaultDoubleValueForProperty:v3];
      if (v10 == INFINITY)
      {
        return 0;
      }

      v11 = MEMORY[0x277CCABB0];

      return [v11 numberWithDouble:?];
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [a1 defaultIntValueForProperty:v3];
        if (v6 != 0x80000000)
        {
          v7 = v6;
          v8 = MEMORY[0x277CCABB0];

          return [v8 numberWithInt:v7];
        }

        return 0;
      }

LABEL_14:
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSSStyle boxedDefaultValueForProperty:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 433, @"Unexpected property type"}];
      return 0;
    }

    return [a1 defaultValueForProperty:v3];
  }
}

+ (id)defaultStyleWithContext:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithContext:a3 name:0 overridePropertyMap:0 isVariation:0];

  return v3;
}

+ (id)defaultPropertyMap
{
  v3 = objc_alloc_init(TSSPropertyMap);
  v4 = [a1 properties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__TSSStyle_defaultPropertyMap__block_invoke;
  v6[3] = &unk_279D47EE8;
  v6[4] = a1;
  v6[5] = v3;
  [v4 enumeratePropertiesUsingBlock:v6];
  return v3;
}

uint64_t __30__TSSStyle_defaultPropertyMap__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) boxedDefaultValueForProperty:a2];
  v5 = *(a1 + 40);

  return [v5 setBoxedObject:v4 forProperty:a2];
}

- (TSSStyle)initWithContext:(id)a3 name:(id)a4 overridePropertyMap:(id)a5 isVariation:(BOOL)a6
{
  v18.receiver = self;
  v18.super_class = TSSStyle;
  v9 = [(TSPObject *)&v18 initWithContext:a3];
  if (v9)
  {
    if ([objc_msgSend(objc_opt_class() "properties")])
    {
      if ([a4 isEqual:&stru_287D36338])
      {
        v10 = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]"];
        [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 502, @"Style name may not be the empty string."}];
        a4 = 0;
      }

      v9->mName = [a4 copy];
      if (a5)
      {
        v9->mOverridePropertyMap = [[TSSPropertyMap alloc] initWithPropertyMap:a5];
      }

      v9->mIsVariation = a6;
    }

    else
    {
      v12 = [objc_msgSend(a5 "allProperties")];
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
      v16 = objc_opt_class();
      [v13 handleFailureInFunction:v14 file:v15 lineNumber:496 description:{@"Attempt to initialize a style of class %@ with an override of one or more unsupported properties : %@", NSStringFromClass(v16), v12}];

      return 0;
    }
  }

  return v9;
}

- (TSSStyle)init
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle init]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 529, @"Must init with an object context."}];

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSSStyle;
  [(TSSStyle *)&v3 dealloc];
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (a3 && (v5 = objc_opt_class(), v5 == objc_opt_class()) && ((v8 = *(a3 + 7), v8 == self->mName) ? (v6 = 1) : (v6 = [(NSString *)v8 isEqualToString:?]), ((v9 = *(a3 + 8), v9 == self->mStyleIdentifier) || [(NSString *)v9 isEqualToString:?]) && *(a3 + 80) == self->mIsVariation))
  {
    v10 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
    v11 = [v10 objectForKeyedSubscript:@"TSSStyleIsEqualStylesBeingCompared"];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [v10 setObject:v11 forKeyedSubscript:@"TSSStyleIsEqualStylesBeingCompared"];
    }

    v15 = self;
    v16 = a3;
    v12 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&v15 objCType:"{?=@@}"];
    if (([v11 containsObject:{v12, v15, v16}] & 1) == 0)
    {
      [v11 addObject:v12];
      v13 = *(a3 + 9);
      if (v13 == self->mParent || [(TSSStyle *)v13 isEqual:?])
      {
        v14 = *(a3 + 6);
        if (v14 == self->mOverridePropertyMap)
        {
          LOBYTE(v6) = 1;
        }

        else
        {
          v6 &= [(TSSPropertyMap *)v14 isEqual:?];
        }
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      [v11 removeObject:v12];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)copyFlattenedWithContext:(id)a3
{
  v5 = objc_allocWithZone(objc_opt_class());
  mName = self->mName;
  v7 = [(TSSStyle *)self propertyMap];

  return [v5 initWithContext:a3 name:mName overridePropertyMap:v7 isVariation:0];
}

- (id)copyWithZone:(_NSZone *)a3 context:(id)a4
{
  v6 = [objc_opt_class() allocWithZone:a3];
  mName = self->mName;
  mOverridePropertyMap = self->mOverridePropertyMap;
  mIsVariation = self->mIsVariation;

  return [v6 initWithContext:a4 name:mName overridePropertyMap:mOverridePropertyMap isVariation:mIsVariation];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(TSPObject *)self context];

  return [(TSSStyle *)self copyWithZone:a3 context:v5];
}

- (id)boxedValueForProperty:(int)a3
{
  v3 = *&a3;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || (result = [(TSSPropertyMap *)mOverridePropertyMap boxedObjectForProperty:*&a3]) == 0)
  {
    mParent = self->mParent;
    if (mParent)
    {

      return [(TSSStyle *)mParent boxedValueForProperty:v3];
    }

    else
    {
      v8 = objc_opt_class();

      return [v8 boxedDefaultValueForProperty:v3];
    }
  }

  return result;
}

- (id)valueForProperty:(int)a3
{
  v3 = *&a3;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || (result = [(TSSPropertyMap *)mOverridePropertyMap objectForProperty:*&a3]) == 0)
  {
    mParent = self->mParent;
    if (mParent)
    {

      return [(TSSStyle *)mParent valueForProperty:v3];
    }

    else
    {
      v8 = objc_opt_class();

      return [v8 defaultValueForProperty:v3];
    }
  }

  return result;
}

- (int)intValueForProperty:(int)a3
{
  v3 = *&a3;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || (result = [(TSSPropertyMap *)mOverridePropertyMap intValueForProperty:*&a3], result == 0x80000000))
  {
    mParent = self->mParent;
    if (mParent)
    {

      return [(TSSStyle *)mParent intValueForProperty:v3];
    }

    else
    {
      v8 = objc_opt_class();

      return [v8 defaultIntValueForProperty:v3];
    }
  }

  return result;
}

- (float)floatValueForProperty:(int)a3
{
  v3 = *&a3;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || ([(TSSPropertyMap *)mOverridePropertyMap floatValueForProperty:*&a3], result == INFINITY))
  {
    mParent = self->mParent;
    if (mParent)
    {

      [(TSSStyle *)mParent floatValueForProperty:v3];
    }

    else
    {
      v8 = objc_opt_class();

      [v8 defaultFloatValueForProperty:v3];
    }
  }

  return result;
}

- (double)doubleValueForProperty:(int)a3
{
  v3 = *&a3;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || ([(TSSPropertyMap *)mOverridePropertyMap doubleValueForProperty:*&a3], result == INFINITY))
  {
    mParent = self->mParent;
    if (mParent)
    {

      [(TSSStyle *)mParent doubleValueForProperty:v3];
    }

    else
    {
      v8 = objc_opt_class();

      [v8 defaultDoubleValueForProperty:v3];
    }
  }

  return result;
}

- (double)CGFloatValueForProperty:(int)a3
{
  v3 = *&a3;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || ([(TSSPropertyMap *)mOverridePropertyMap CGFloatValueForProperty:*&a3], result == INFINITY))
  {
    mParent = self->mParent;
    if (mParent)
    {

      [(TSSStyle *)mParent CGFloatValueForProperty:v3];
    }

    else
    {
      v8 = String(v3);
      if (v8 == 3)
      {
        v10 = objc_opt_class();

        [v10 defaultDoubleValueForProperty:v3];
      }

      else if (v8 == 2)
      {
        [objc_opt_class() defaultFloatValueForProperty:v3];
        return v9;
      }

      else
      {
        return INFINITY;
      }
    }
  }

  return result;
}

- (id)valuesForProperties:(id)a3
{
  v4 = [(TSSStyle *)self copyPropertyMap];
  [v4 filterWithProperties:a3];

  return v4;
}

- (void)setBoxedValue:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  [(TSPObject *)self willModify];
  if (a3)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setBoxedObject:a3 forProperty:v4];
  }

  else
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setBoxedValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
    v11 = String(v4);
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:868 description:{@"Tried to set property %@ of style %@ to an undefined value.", v11, TSUObjectReferenceDescription()}];
  }
}

- (void)setValue:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  [(TSPObject *)self willModify];
  if (a3)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setObject:a3 forProperty:v4];
  }

  else
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
    v11 = String(v4);
    [v8 handleFailureInFunction:v9 file:v10 lineNumber:884 description:{@"Tried to set property %@ of style %@ to an undefined value.", v11, TSUObjectReferenceDescription()}];
  }
}

- (void)setIntValue:(int)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  [(TSPObject *)self willModify];
  if (v5 == 0x80000000)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setIntValue:forProperty:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [v7 handleFailureInFunction:v8 file:v9 lineNumber:900 description:@"Int property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setIntValue:v5 forProperty:v4];
  }
}

- (void)setFloatValue:(float)a3 forProperty:(int)a4
{
  v4 = *&a4;
  [(TSPObject *)self willModify];
  if (a3 == INFINITY)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setFloatValue:forProperty:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [v9 handleFailureInFunction:v10 file:v11 lineNumber:915 description:@"Float property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    *&v7 = a3;

    [(TSSPropertyMap *)mOverridePropertyMap setFloatValue:v4 forProperty:v7];
  }
}

- (void)setDoubleValue:(double)a3 forProperty:(int)a4
{
  v4 = *&a4;
  [(TSPObject *)self willModify];
  if (a3 == INFINITY)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setDoubleValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:930 description:@"Double property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setDoubleValue:v4 forProperty:a3];
  }
}

- (void)setCGFloatValue:(double)a3 forProperty:(int)a4
{
  v4 = *&a4;
  [(TSPObject *)self willModify];
  if (a3 == INFINITY)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setCGFloatValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [v8 handleFailureInFunction:v9 file:v10 lineNumber:945 description:@"CGFloat property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setCGFloatValue:v4 forProperty:a3];
  }
}

- (void)setValuesForProperties:(id)a3
{
  [(TSPObject *)self willModify];
  if (a3)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (mOverridePropertyMap)
    {

      [(TSSPropertyMap *)mOverridePropertyMap addValuesFromPropertyMap:a3];
    }

    else
    {
      self->mOverridePropertyMap = [a3 copy];
    }
  }
}

- (void)removeValueForProperty:(int)a3
{
  v3 = *&a3;
  [(TSPObject *)self willModify];
  if (v3 >> 4 >= 0x121)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle removeValueForProperty:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 967, @"Property ID <%d> out of range.", v3}];
  }

  if ([(TSSStyle *)self overridesProperty:v3])
  {
    [(TSSPropertyMap *)self->mOverridePropertyMap removeValueForProperty:v3];
    if (![(TSSPropertyMap *)self->mOverridePropertyMap count])
    {

      self->mOverridePropertyMap = 0;
    }
  }
}

- (void)removeAllValues
{
  [(TSPObject *)self willModify];

  self->mOverridePropertyMap = 0;
}

- (BOOL)definesProperty:(int)a3
{
  v3 = *&a3;
  if ([(TSSPropertyMap *)self->mOverridePropertyMap containsProperty:?])
  {
    return 1;
  }

  mParent = self->mParent;

  return [(TSSStyle *)mParent definesProperty:v3];
}

- (BOOL)overridesAnyProperty
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (mOverridePropertyMap)
  {
    LOBYTE(mOverridePropertyMap) = [(TSSPropertyMap *)mOverridePropertyMap count]!= 0;
  }

  return mOverridePropertyMap;
}

- (unint64_t)overrideCount
{
  result = self->mOverridePropertyMap;
  if (result)
  {
    return [result count];
  }

  return result;
}

- (id)boxedOverrideValueForProperty:(int)a3
{
  v3 = *&a3;
  v5 = String(a3);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [(TSSStyle *)self overrideFloatValueForProperty:v3];
      if (v14 == INFINITY)
      {
        return 0;
      }

      v15 = MEMORY[0x277CCABB0];

      return [v15 numberWithFloat:?];
    }

    else
    {
      if (v5 != 3)
      {
        goto LABEL_14;
      }

      [(TSSStyle *)self overrideDoubleValueForProperty:v3];
      if (v10 == INFINITY)
      {
        return 0;
      }

      v11 = MEMORY[0x277CCABB0];

      return [v11 numberWithDouble:?];
    }
  }

  else
  {
    if (v5)
    {
      if (v5 == 1)
      {
        v6 = [(TSSStyle *)self overrideIntValueForProperty:v3];
        if (v6 != 0x80000000)
        {
          v7 = v6;
          v8 = MEMORY[0x277CCABB0];

          return [v8 numberWithInt:v7];
        }

        return 0;
      }

LABEL_14:
      v12 = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle boxedOverrideValueForProperty:]"];
      [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1064, @"Unexpected property type"}];
      return 0;
    }

    return [(TSSStyle *)self overrideValueForProperty:v3];
  }
}

- (id)overrideValueForProperty:(int)a3
{
  result = self->mOverridePropertyMap;
  if (result)
  {
    return [result objectForProperty:*&a3];
  }

  return result;
}

- (int)overrideIntValueForProperty:(int)a3
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (mOverridePropertyMap)
  {
    return [(TSSPropertyMap *)mOverridePropertyMap intValueForProperty:*&a3];
  }

  else
  {
    return 0x80000000;
  }
}

- (float)overrideFloatValueForProperty:(int)a3
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap)
  {
    return INFINITY;
  }

  [(TSSPropertyMap *)mOverridePropertyMap floatValueForProperty:*&a3];
  return result;
}

- (double)overrideDoubleValueForProperty:(int)a3
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap)
  {
    return INFINITY;
  }

  [(TSSPropertyMap *)mOverridePropertyMap doubleValueForProperty:*&a3];
  return result;
}

- (double)overrideCGFloatValueForProperty:(int)a3
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap)
  {
    return INFINITY;
  }

  [(TSSPropertyMap *)mOverridePropertyMap CGFloatValueForProperty:*&a3];
  return result;
}

- (id)propertyMap
{
  mParent = self->mParent;
  if (mParent)
  {
    v4 = [(TSSStyle *)mParent propertyMap];
  }

  else
  {
    v4 = 0;
  }

  if (![(TSSPropertyMap *)self->mOverridePropertyMap count])
  {
    return v4;
  }

  if (v4)
  {
    [v4 addValuesFromPropertyMap:self->mOverridePropertyMap];
    return v4;
  }

  v6 = [(TSSPropertyMap *)self->mOverridePropertyMap copy];

  return v6;
}

- (id)propertyMapIgnoringStyle:(id)a3
{
  mParent = self->mParent;
  if (mParent)
  {
    v6 = [(TSSStyle *)mParent propertyMapIgnoringStyle:a3];
  }

  else
  {
    v6 = 0;
  }

  if (self == a3 || ![(TSSPropertyMap *)self->mOverridePropertyMap count])
  {
    return v6;
  }

  if (v6)
  {
    [v6 addValuesFromPropertyMap:self->mOverridePropertyMap];
    return v6;
  }

  v8 = [(TSSPropertyMap *)self->mOverridePropertyMap copy];

  return v8;
}

- (id)copyPropertyMap
{
  mParent = self->mParent;
  if (mParent)
  {
    v4 = [(TSSStyle *)mParent copyPropertyMap];
  }

  else
  {
    v4 = 0;
  }

  if (![(TSSPropertyMap *)self->mOverridePropertyMap count])
  {
    return v4;
  }

  mOverridePropertyMap = self->mOverridePropertyMap;
  if (v4)
  {
    [v4 addValuesFromPropertyMap:mOverridePropertyMap];
    return v4;
  }

  v7 = self->mOverridePropertyMap;

  return [(TSSPropertyMap *)v7 copy];
}

- (id)overridePropertyMapWithPropertyMap:(id)a3 overridePropertyMap:(id)a4 collapseSourceOverrides:(BOOL)a5
{
  v5 = a5;
  mParent = self;
  if (self->mIsVariation)
  {
    mParent = self->mParent;
    if (!mParent)
    {
      v10 = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]"];
      [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1167, @"Can't create variation of a nil base style."}];
      mParent = 0;
    }
  }

  if ([(TSSStyle *)mParent isVariation])
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]"];
    [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1168, @"Can't create variation of a variation base style."}];
  }

  v14 = objc_alloc_init(TSSPropertyMap);
  v15 = objc_alloc_init(TSSPropertyMap);
  v16 = v15;
  if (self->mIsVariation)
  {
    if (v5)
    {
      v15 = v14;
    }

    [(TSSPropertyMap *)v15 addValuesFromPropertyMap:self->mOverridePropertyMap];
  }

  [(TSSPropertyMap *)v16 addValuesFromPropertyMap:a4];
  [(TSSPropertyMap *)v14 addValuesFromPropertyMap:a3];
  [(TSSPropertyMap *)v14 removeValuesForProperties:[(TSSPropertyMap *)v16 allProperties]];
  [(TSSPropertyMap *)v14 removeValuesFromPropertyMap:[(TSSStyle *)mParent propertyMap]];
  [(TSSPropertyMap *)v16 addValuesFromPropertyMap:v14];

  return v16;
}

- (id)newOverridePropertyMapWithPropertyMap:(id)a3
{
  mParent = self;
  if (self->mIsVariation)
  {
    mParent = self->mParent;
    if (!mParent)
    {
      v6 = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle newOverridePropertyMapWithPropertyMap:]"];
      [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1197, @"Can't create variation of a nil base style."}];
      mParent = 0;
    }
  }

  if ([(TSSStyle *)mParent isVariation])
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle newOverridePropertyMapWithPropertyMap:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1198, @"Can't create variation of a variation base style."}];
  }

  if (self->mIsVariation && (mOverridePropertyMap = self->mOverridePropertyMap) != 0)
  {
    v11 = [(TSSPropertyMap *)mOverridePropertyMap copy];
    [v11 addValuesFromPropertyMap:a3];
  }

  else
  {
    v11 = [a3 copy];
  }

  v12 = [(TSSStyle *)mParent copyPropertyMap];
  [v11 removeValuesFromPropertyMap:v12];

  return v11;
}

- (BOOL)hasEqualPropertyValues:(id)a3
{
  v5 = [objc_opt_class() properties];

  return [(TSSStyle *)self hasEqualValues:a3 forProperties:v5];
}

- (BOOL)p_hasEqualValuesTo:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v7 = String(a4);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      [(TSSStyle *)self floatValueForProperty:v4];
      v18 = v17;
      [a3 floatValueForProperty:v4];
      if (v18 != v19)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v7 != 3)
      {
LABEL_10:
        v12 = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle p_hasEqualValuesTo:forProperty:]"];
        [v12 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1257, @"Comparing property values for unknown property %@ (%d) of unknown type.", String(v4), v4}];
        goto LABEL_17;
      }

      [(TSSStyle *)self doubleValueForProperty:v4];
      v10 = v9;
      [a3 doubleValueForProperty:v4];
      if (v10 != v11)
      {
LABEL_17:
        LOBYTE(v16) = 0;
        return v16;
      }
    }

LABEL_15:
    LOBYTE(v16) = 1;
    return v16;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = [(TSSStyle *)self intValueForProperty:v4];
      if (v8 != [a3 intValueForProperty:v4])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v14 = [(TSSStyle *)self valueForProperty:v4];
  v15 = [a3 objectForProperty:v4];
  if (!v14 || (v16 = [v14 isEqual:v15]) != 0)
  {
    if (v15 && ([v15 isEqual:v14] & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  return v16;
}

- (BOOL)hasEqualValuesToPropertyMap:(id)a3 forProperties:(id)a4
{
  if ([objc_msgSend(objc_opt_class() "properties")] && objc_msgSend(objc_msgSend(a3, "allProperties"), "containsProperties:", a4))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__TSSStyle_hasEqualValuesToPropertyMap_forProperties___block_invoke;
    v9[3] = &unk_279D48030;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = &v10;
    [a4 enumeratePropertiesUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __54__TSSStyle_hasEqualValuesToPropertyMap_forProperties___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) p_hasEqualValuesTo:*(a1 + 40) forProperty:a2];
  if ((result & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)hasEqualValues:(id)a3 forProperties:(id)a4
{
  if ([objc_msgSend(objc_opt_class() "properties")] && objc_msgSend(objc_msgSend(objc_opt_class(), "properties"), "containsProperties:", a4))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__TSSStyle_hasEqualValues_forProperties___block_invoke;
    v9[3] = &unk_279D48030;
    v9[4] = self;
    v9[5] = a3;
    v9[6] = &v10;
    [a4 enumeratePropertiesUsingBlock:v9];
    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __41__TSSStyle_hasEqualValues_forProperties___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) p_hasEqualValuesTo:*(a1 + 40) forProperty:a2];
  if ((result & 1) == 0)
  {
    *a3 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

- (TSSPropertyMap)overridePropertyMap
{
  v2 = [(TSSPropertyMap *)self->mOverridePropertyMap copy];

  return v2;
}

- (void)setOverridePropertyMap:(id)a3
{
  [(TSPObject *)self willModify];
  v5 = [a3 copy];

  self->mOverridePropertyMap = v5;
}

- (TSSStyle)rootAncestor
{
  while (1)
  {
    v2 = self;
    if (![(TSSStyle *)self parent])
    {
      break;
    }

    self = [(TSSStyle *)v2 parent];
  }

  return v2;
}

- (TSSStyle)baseStyleForVariation
{
  v2 = self;
  if ([(TSSStyle *)self isVariation])
  {
    do
    {
      v2 = [(TSSStyle *)v2 parent];
    }

    while ([(TSSStyle *)v2 isVariation]);
  }

  return v2;
}

- (TSSStyle)firstIdentifiedAncestor
{
  while (1)
  {
    v2 = self;
    if (!self || [(TSSStyle *)self styleIdentifier])
    {
      break;
    }

    self = [(TSSStyle *)v2 parent];
  }

  return v2;
}

- (TSSStyle)rootIdentifiedAncestor
{
  if (!self)
  {
    return 0;
  }

  v2 = self;
  v3 = 0;
  do
  {
    if ([(TSSStyle *)v2 isIdentified])
    {
      v3 = v2;
    }

    v2 = [(TSSStyle *)v2 parent];
  }

  while (v2);
  return v3;
}

- (void)setParent:(id)a3
{
  if (self->mParent != a3)
  {
    [(TSPObject *)self willModify];
    v5 = a3;

    self->mParent = a3;
  }
}

- (NSSet)children
{
  v3 = [(TSSStyle *)self stylesheet];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [(TSSStylesheet *)v4 childrenOfStyle:self];
      if (v6)
      {
        v7 = v6;
        if ([v6 count])
        {
          if (!v5)
          {
            v5 = objc_alloc_init(MEMORY[0x277D6C318]);
          }

          [v5 unionSet:v7];
        }
      }

      v4 = [(TSSStylesheet *)v4 child];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDescendentOf:(id)a3
{
  mParent = self->mParent;
  if (mParent)
  {
    LOBYTE(mParent) = mParent == a3 || [(TSSStyle *)mParent isDescendentOf:?];
  }

  return mParent;
}

- (BOOL)isAncestorOf:(id)a3
{
  v5 = [a3 parent];
  if (v5)
  {
    if ([a3 parent] == self)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v6 = [a3 parent];

      LOBYTE(v5) = [(TSSStyle *)self isAncestorOf:v6];
    }
  }

  return v5;
}

+ (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4 min:(int)a5 max:(int)a6
{
  if (!a3)
  {
    return 0;
  }

  v6 = *a3;
  if (*a3 == 0x80000000)
  {
    return 0;
  }

  if (v6 < a5 || (a5 = a6, v6 > a6))
  {
    *a3 = a5;
  }

  return 1;
}

+ (BOOL)validateIntValueAsBool:(int *)a3 forProperty:(int)a4
{
  if (!a3 || *a3 == 0x80000000)
  {
    return 0;
  }

  result = 1;
  if (*a3 > 1)
  {
    *a3 = 1;
  }

  return result;
}

+ (BOOL)validateObjectValue:(id *)a3 withClass:(Class)a4 forProperty:(int)a5
{
  if (a3)
  {
    v5 = *a3;
    if (*a3)
    {
      LOBYTE(v5) = (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v6 = objc_opt_class();

  return [v6 validateIntValue:a3 forProperty:v4];
}

- (BOOL)validateIntValue:(int *)a3 forProperty:(int)a4 min:(int)a5 max:(int)a6
{
  v6 = *&a6;
  v7 = *&a5;
  v8 = *&a4;
  v10 = objc_opt_class();

  return [v10 validateIntValue:a3 forProperty:v8 min:v7 max:v6];
}

- (BOOL)validateIntValueAsBool:(int *)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v6 = objc_opt_class();

  return [v6 validateIntValueAsBool:a3 forProperty:v4];
}

- (BOOL)validateFloatValue:(float *)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v6 = objc_opt_class();

  return [v6 validateFloatValue:a3 forProperty:v4];
}

- (BOOL)validateDoubleValue:(double *)a3 forProperty:(int)a4
{
  v4 = *&a4;
  v6 = objc_opt_class();

  return [v6 validateDoubleValue:a3 forProperty:v4];
}

- (BOOL)validateObjectValue:(id *)a3 withClass:(Class)a4 forProperty:(int)a5
{
  v5 = *&a5;
  v8 = objc_opt_class();

  return [v8 validateObjectValue:a3 withClass:a4 forProperty:v5];
}

+ (double)fontSizeForFontSize:(double)a3 scalingFactor:(double)a4
{
  v4 = a3 * a4;
  v5 = floor(v4);
  v6 = floor(v4 * 0.5);
  v7 = v6 + v6;
  if (v4 >= 12.5)
  {
    return v7;
  }

  else
  {
    return v5;
  }
}

- (id)boxedValueForProperty:(int)a3 oldBoxedValue:(id)a4 transformedByTransform:(CGAffineTransform *)a5
{
  v5 = *&a3;
  if (a3 == 17 && [(TSSStyle *)self transformsFontSizes])
  {
    [a4 floatValue];
    [TSSStyle fontSizeForFontSize:v9 scalingFactor:a5->d];
    *&v10 = v10;
    v11 = MEMORY[0x277CCABB0];

    return [v11 numberWithFloat:v10];
  }

  else
  {

    return [(TSSStyle *)self boxedObjectForProperty:v5];
  }
}

- (id)referencedStyles
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(TSSStyle *)self propertyMap];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__TSSStyle_referencedStyles__block_invoke;
  v6[3] = &unk_279D47E70;
  v6[4] = v3;
  [v4 enumeratePropertiesAndObjectsUsingBlock:v6];
  return v3;
}

uint64_t __28__TSSStyle_referencedStyles__block_invoke(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (!a3)
  {
    v5 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v6 = *(v5 + 32);

      return [v6 addObject:a4];
    }
  }

  return result;
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v5 = [(TSSStyle *)self propertyMap];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TSSStyle_replaceReferencedStylesUsingBlock___block_invoke;
  v6[3] = &unk_279D47FB8;
  v6[4] = self;
  v6[5] = a3;
  [v5 enumeratePropertiesAndObjectsUsingBlock:v6];
}

uint64_t __46__TSSStyle_replaceReferencedStylesUsingBlock___block_invoke(uint64_t result, uint64_t a2, int a3, void *a4)
{
  if (!a3)
  {
    v6 = result;
    result = [a4 conformsToProtocol:&unk_287E212D0];
    if (result)
    {
      result = (*(*(v6 + 40) + 16))();
      if (result != a4)
      {
        v7 = result;
        v8 = *(v6 + 32);

        return [v8 setValue:v7 forProperty:a2];
      }
    }
  }

  return result;
}

- (void)fadeReflectionForSwatchGeneration
{
  v3 = [(TSSStyle *)self boxedValueForProperty:519];
  if (v3)
  {
    v4 = [v3 mutableCopy];
    [v4 setFadeAcceleration:5.0];
    [(TSSStyle *)self setBoxedValue:v4 forProperty:519];
  }
}

- (void)constrainShadowForSwatchGeneration
{
  v3 = [-[TSSStyle boxedValueForProperty:](self boxedValueForProperty:{520), "newShadowClampedForSwatches"}];
  [(TSSStyle *)self setBoxedValue:v3 forProperty:520];
}

- (void)constrainStrokeForSwatchGeneration
{
  v3 = [(TSSStyle *)self boxedValueForProperty:517];
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4 && (v5 = v4, [v4 assetScale], v6 > 0.3))
  {
    v8 = [v5 mutableCopy];
    [v8 setAssetScale:0.3];
  }

  else
  {
    [v3 width];
    if (v7 <= 5.0)
    {
      return;
    }

    v8 = [v3 mutableCopy];
    [v8 setWidth:5.0];
  }

  [(TSSStyle *)self setBoxedValue:v8 forProperty:517];
}

- (id)constrainShapeStyleForContext:(id)a3
{
  v3 = [(TSSStyle *)self copyWithContext:a3];
  v4 = [v3 boxedValueForProperty:520];
  if (v4 && v4 != [MEMORY[0x277CBEB68] null])
  {
    [v3 constrainShadowForSwatchGeneration];
  }

  v5 = [v3 boxedValueForProperty:517];
  if (v5 && v5 != [MEMORY[0x277CBEB68] null])
  {
    [v3 constrainStrokeForSwatchGeneration];
  }

  v6 = [v3 boxedObjectForProperty:519];
  if (v6 && v6 != [MEMORY[0x277CBEB68] null])
  {
    [v3 fadeReflectionForSwatchGeneration];
  }

  return v3;
}

@end
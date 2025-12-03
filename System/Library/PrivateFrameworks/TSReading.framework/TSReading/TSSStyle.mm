@interface TSSStyle
+ (BOOL)validateIntValue:(int *)value forProperty:(int)property min:(int)min max:(int)max;
+ (BOOL)validateIntValueAsBool:(int *)bool forProperty:(int)property;
+ (BOOL)validateObjectValue:(id *)value withClass:(Class)class forProperty:(int)property;
+ (double)fontSizeForFontSize:(double)size scalingFactor:(double)factor;
+ (id)boxedDefaultValueForProperty:(int)property;
+ (id)defaultPropertyMap;
+ (id)defaultStyleWithContext:(id)context;
+ (id)description;
+ (id)properties;
- (BOOL)definesProperty:(int)property;
- (BOOL)hasEqualPropertyValues:(id)values;
- (BOOL)hasEqualValues:(id)values forProperties:(id)properties;
- (BOOL)hasEqualValuesToPropertyMap:(id)map forProperties:(id)properties;
- (BOOL)isAncestorOf:(id)of;
- (BOOL)isDescendentOf:(id)of;
- (BOOL)isEqual:(id)equal;
- (BOOL)overridesAnyProperty;
- (BOOL)p_hasEqualValuesTo:(id)to forProperty:(int)property;
- (BOOL)validateDoubleValue:(double *)value forProperty:(int)property;
- (BOOL)validateFloatValue:(float *)value forProperty:(int)property;
- (BOOL)validateIntValue:(int *)value forProperty:(int)property;
- (BOOL)validateIntValue:(int *)value forProperty:(int)property min:(int)min max:(int)max;
- (BOOL)validateIntValueAsBool:(int *)bool forProperty:(int)property;
- (BOOL)validateObjectValue:(id *)value withClass:(Class)class forProperty:(int)property;
- (NSSet)children;
- (TSSPropertyMap)overridePropertyMap;
- (TSSStyle)baseStyleForVariation;
- (TSSStyle)firstIdentifiedAncestor;
- (TSSStyle)init;
- (TSSStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation;
- (TSSStyle)rootAncestor;
- (TSSStyle)rootIdentifiedAncestor;
- (double)CGFloatValueForProperty:(int)property;
- (double)doubleValueForProperty:(int)property;
- (double)overrideCGFloatValueForProperty:(int)property;
- (double)overrideDoubleValueForProperty:(int)property;
- (float)floatValueForProperty:(int)property;
- (float)overrideFloatValueForProperty:(int)property;
- (id)boxedOverrideValueForProperty:(int)property;
- (id)boxedValueForProperty:(int)property;
- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform;
- (id)constrainShapeStyleForContext:(id)context;
- (id)copyFlattenedWithContext:(id)context;
- (id)copyPropertyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone context:(id)context;
- (id)newOverridePropertyMapWithPropertyMap:(id)map;
- (id)overridePropertyMapWithPropertyMap:(id)map overridePropertyMap:(id)propertyMap collapseSourceOverrides:(BOOL)overrides;
- (id)overrideValueForProperty:(int)property;
- (id)propertyMap;
- (id)propertyMapIgnoringStyle:(id)style;
- (id)referencedStyles;
- (id)valueForProperty:(int)property;
- (id)valuesForProperties:(id)properties;
- (int)intValueForProperty:(int)property;
- (int)overrideIntValueForProperty:(int)property;
- (unint64_t)hash;
- (unint64_t)overrideCount;
- (void)constrainShadowForSwatchGeneration;
- (void)constrainStrokeForSwatchGeneration;
- (void)dealloc;
- (void)fadeReflectionForSwatchGeneration;
- (void)removeAllValues;
- (void)removeValueForProperty:(int)property;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)setBoxedValue:(id)value forProperty:(int)property;
- (void)setCGFloatValue:(double)value forProperty:(int)property;
- (void)setDoubleValue:(double)value forProperty:(int)property;
- (void)setFloatValue:(float)value forProperty:(int)property;
- (void)setIntValue:(int)value forProperty:(int)property;
- (void)setName:(id)name;
- (void)setOverridePropertyMap:(id)map;
- (void)setParent:(id)parent;
- (void)setStyleIdentifier:(id)identifier;
- (void)setValue:(id)value forProperty:(int)property;
- (void)setValuesForProperties:(id)properties;
@end

@implementation TSSStyle

- (void)setName:(id)name
{
  [(TSPObject *)self willModify];
  v5 = [name copy];

  self->mName = v5;
}

- (void)setStyleIdentifier:(id)identifier
{
  [(TSPObject *)self willModify];
  v5 = [identifier copy];

  self->mStyleIdentifier = v5;
}

+ (id)properties
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSSStyle properties]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 372, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "+[TSSStyle properties]"), 0}]);
}

+ (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@", NSStringFromClass(self)];
  for (i = [self superclass]; i != objc_opt_class(); i = objc_msgSend(i, "superclass"))
  {
    [v3 appendFormat:@" : %@", NSStringFromClass(i)];
  }

  string = [MEMORY[0x277CCAB68] string];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3052000000;
  v10[3] = __Block_byref_object_copy__7;
  v10[4] = __Block_byref_object_dispose__7;
  v10[5] = &stru_287D36338;
  properties = [self properties];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __23__TSSStyle_description__block_invoke;
  v9[3] = &unk_279D48008;
  v9[4] = string;
  v9[5] = v10;
  [properties enumeratePropertiesUsingBlock:v9];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> = {\n%@\n}", v3, objc_msgSend(MEMORY[0x277CCACA8], "tsu_stringByIndentingString:", string)];
  _Block_object_dispose(v10, 8);
  return v7;
}

uint64_t __23__TSSStyle_description__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) appendFormat:@"%@%3d %@", *(*(*(a1 + 40) + 8) + 40), a2, String(a2)];
  *(*(*(a1 + 40) + 8) + 40) = @"\n";
  return result;
}

+ (id)boxedDefaultValueForProperty:(int)property
{
  v3 = *&property;
  v5 = String(property);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [self defaultFloatValueForProperty:v3];
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

      [self defaultDoubleValueForProperty:v3];
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
        v6 = [self defaultIntValueForProperty:v3];
        if (v6 != 0x80000000)
        {
          v7 = v6;
          v8 = MEMORY[0x277CCABB0];

          return [v8 numberWithInt:v7];
        }

        return 0;
      }

LABEL_14:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSSStyle boxedDefaultValueForProperty:]"];
      [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 433, @"Unexpected property type"}];
      return 0;
    }

    return [self defaultValueForProperty:v3];
  }
}

+ (id)defaultStyleWithContext:(id)context
{
  v3 = [objc_alloc(objc_opt_class()) initWithContext:context name:0 overridePropertyMap:0 isVariation:0];

  return v3;
}

+ (id)defaultPropertyMap
{
  v3 = objc_alloc_init(TSSPropertyMap);
  properties = [self properties];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__TSSStyle_defaultPropertyMap__block_invoke;
  v6[3] = &unk_279D47EE8;
  v6[4] = self;
  v6[5] = v3;
  [properties enumeratePropertiesUsingBlock:v6];
  return v3;
}

uint64_t __30__TSSStyle_defaultPropertyMap__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) boxedDefaultValueForProperty:a2];
  v5 = *(a1 + 40);

  return [v5 setBoxedObject:v4 forProperty:a2];
}

- (TSSStyle)initWithContext:(id)context name:(id)name overridePropertyMap:(id)map isVariation:(BOOL)variation
{
  v18.receiver = self;
  v18.super_class = TSSStyle;
  v9 = [(TSPObject *)&v18 initWithContext:context];
  if (v9)
  {
    if ([objc_msgSend(objc_opt_class() "properties")])
    {
      if ([name isEqual:&stru_287D36338])
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]"];
        [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 502, @"Style name may not be the empty string."}];
        name = 0;
      }

      v9->mName = [name copy];
      if (map)
      {
        v9->mOverridePropertyMap = [[TSSPropertyMap alloc] initWithPropertyMap:map];
      }

      v9->mIsVariation = variation;
    }

    else
    {
      v12 = [objc_msgSend(map "allProperties")];
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle initWithContext:name:overridePropertyMap:isVariation:]"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
      v16 = objc_opt_class();
      [currentHandler2 handleFailureInFunction:v14 file:v15 lineNumber:496 description:{@"Attempt to initialize a style of class %@ with an override of one or more unsupported properties : %@", NSStringFromClass(v16), v12}];

      return 0;
    }
  }

  return v9;
}

- (TSSStyle)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle init]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 529, @"Must init with an object context."}];

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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
  }

  else if (equal && (v5 = objc_opt_class(), v5 == objc_opt_class()) && ((v8 = *(equal + 7), v8 == self->mName) ? (v6 = 1) : (v6 = [(NSString *)v8 isEqualToString:?]), ((v9 = *(equal + 8), v9 == self->mStyleIdentifier) || [(NSString *)v9 isEqualToString:?]) && *(equal + 80) == self->mIsVariation))
  {
    v10 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
    v11 = [v10 objectForKeyedSubscript:@"TSSStyleIsEqualStylesBeingCompared"];
    if (!v11)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [v10 setObject:v11 forKeyedSubscript:@"TSSStyleIsEqualStylesBeingCompared"];
    }

    selfCopy = self;
    equalCopy = equal;
    v12 = [objc_alloc(MEMORY[0x277CCAE60]) initWithBytes:&selfCopy objCType:"{?=@@}"];
    if (([v11 containsObject:{v12, selfCopy, equalCopy}] & 1) == 0)
    {
      [v11 addObject:v12];
      v13 = *(equal + 9);
      if (v13 == self->mParent || [(TSSStyle *)v13 isEqual:?])
      {
        v14 = *(equal + 6);
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

- (id)copyFlattenedWithContext:(id)context
{
  v5 = objc_allocWithZone(objc_opt_class());
  mName = self->mName;
  propertyMap = [(TSSStyle *)self propertyMap];

  return [v5 initWithContext:context name:mName overridePropertyMap:propertyMap isVariation:0];
}

- (id)copyWithZone:(_NSZone *)zone context:(id)context
{
  v6 = [objc_opt_class() allocWithZone:zone];
  mName = self->mName;
  mOverridePropertyMap = self->mOverridePropertyMap;
  mIsVariation = self->mIsVariation;

  return [v6 initWithContext:context name:mName overridePropertyMap:mOverridePropertyMap isVariation:mIsVariation];
}

- (id)copyWithZone:(_NSZone *)zone
{
  context = [(TSPObject *)self context];

  return [(TSSStyle *)self copyWithZone:zone context:context];
}

- (id)boxedValueForProperty:(int)property
{
  v3 = *&property;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || (result = [(TSSPropertyMap *)mOverridePropertyMap boxedObjectForProperty:*&property]) == 0)
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

- (id)valueForProperty:(int)property
{
  v3 = *&property;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || (result = [(TSSPropertyMap *)mOverridePropertyMap objectForProperty:*&property]) == 0)
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

- (int)intValueForProperty:(int)property
{
  v3 = *&property;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || (result = [(TSSPropertyMap *)mOverridePropertyMap intValueForProperty:*&property], result == 0x80000000))
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

- (float)floatValueForProperty:(int)property
{
  v3 = *&property;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || ([(TSSPropertyMap *)mOverridePropertyMap floatValueForProperty:*&property], result == INFINITY))
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

- (double)doubleValueForProperty:(int)property
{
  v3 = *&property;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || ([(TSSPropertyMap *)mOverridePropertyMap doubleValueForProperty:*&property], result == INFINITY))
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

- (double)CGFloatValueForProperty:(int)property
{
  v3 = *&property;
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap || ([(TSSPropertyMap *)mOverridePropertyMap CGFloatValueForProperty:*&property], result == INFINITY))
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

- (id)valuesForProperties:(id)properties
{
  copyPropertyMap = [(TSSStyle *)self copyPropertyMap];
  [copyPropertyMap filterWithProperties:properties];

  return copyPropertyMap;
}

- (void)setBoxedValue:(id)value forProperty:(int)property
{
  v4 = *&property;
  [(TSPObject *)self willModify];
  if (value)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setBoxedObject:value forProperty:v4];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setBoxedValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
    v11 = String(v4);
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:868 description:{@"Tried to set property %@ of style %@ to an undefined value.", v11, TSUObjectReferenceDescription()}];
  }
}

- (void)setValue:(id)value forProperty:(int)property
{
  v4 = *&property;
  [(TSPObject *)self willModify];
  if (value)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setObject:value forProperty:v4];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];
    v11 = String(v4);
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:884 description:{@"Tried to set property %@ of style %@ to an undefined value.", v11, TSUObjectReferenceDescription()}];
  }
}

- (void)setIntValue:(int)value forProperty:(int)property
{
  v4 = *&property;
  v5 = *&value;
  [(TSPObject *)self willModify];
  if (v5 == 0x80000000)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setIntValue:forProperty:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:900 description:@"Int property value must be defined."];
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

- (void)setFloatValue:(float)value forProperty:(int)property
{
  v4 = *&property;
  [(TSPObject *)self willModify];
  if (value == INFINITY)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setFloatValue:forProperty:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [currentHandler handleFailureInFunction:v10 file:v11 lineNumber:915 description:@"Float property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    *&v7 = value;

    [(TSSPropertyMap *)mOverridePropertyMap setFloatValue:v4 forProperty:v7];
  }
}

- (void)setDoubleValue:(double)value forProperty:(int)property
{
  v4 = *&property;
  [(TSPObject *)self willModify];
  if (value == INFINITY)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setDoubleValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:930 description:@"Double property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setDoubleValue:v4 forProperty:value];
  }
}

- (void)setCGFloatValue:(double)value forProperty:(int)property
{
  v4 = *&property;
  [(TSPObject *)self willModify];
  if (value == INFINITY)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle setCGFloatValue:forProperty:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"];

    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:945 description:@"CGFloat property value must be defined."];
  }

  else
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (!mOverridePropertyMap)
    {
      mOverridePropertyMap = objc_alloc_init(TSSPropertyMap);
      self->mOverridePropertyMap = mOverridePropertyMap;
    }

    [(TSSPropertyMap *)mOverridePropertyMap setCGFloatValue:v4 forProperty:value];
  }
}

- (void)setValuesForProperties:(id)properties
{
  [(TSPObject *)self willModify];
  if (properties)
  {
    mOverridePropertyMap = self->mOverridePropertyMap;
    if (mOverridePropertyMap)
    {

      [(TSSPropertyMap *)mOverridePropertyMap addValuesFromPropertyMap:properties];
    }

    else
    {
      self->mOverridePropertyMap = [properties copy];
    }
  }
}

- (void)removeValueForProperty:(int)property
{
  v3 = *&property;
  [(TSPObject *)self willModify];
  if (v3 >> 4 >= 0x121)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle removeValueForProperty:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 967, @"Property ID <%d> out of range.", v3}];
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

- (BOOL)definesProperty:(int)property
{
  v3 = *&property;
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

- (id)boxedOverrideValueForProperty:(int)property
{
  v3 = *&property;
  v5 = String(property);
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
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle boxedOverrideValueForProperty:]"];
      [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1064, @"Unexpected property type"}];
      return 0;
    }

    return [(TSSStyle *)self overrideValueForProperty:v3];
  }
}

- (id)overrideValueForProperty:(int)property
{
  result = self->mOverridePropertyMap;
  if (result)
  {
    return [result objectForProperty:*&property];
  }

  return result;
}

- (int)overrideIntValueForProperty:(int)property
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (mOverridePropertyMap)
  {
    return [(TSSPropertyMap *)mOverridePropertyMap intValueForProperty:*&property];
  }

  else
  {
    return 0x80000000;
  }
}

- (float)overrideFloatValueForProperty:(int)property
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap)
  {
    return INFINITY;
  }

  [(TSSPropertyMap *)mOverridePropertyMap floatValueForProperty:*&property];
  return result;
}

- (double)overrideDoubleValueForProperty:(int)property
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap)
  {
    return INFINITY;
  }

  [(TSSPropertyMap *)mOverridePropertyMap doubleValueForProperty:*&property];
  return result;
}

- (double)overrideCGFloatValueForProperty:(int)property
{
  mOverridePropertyMap = self->mOverridePropertyMap;
  if (!mOverridePropertyMap)
  {
    return INFINITY;
  }

  [(TSSPropertyMap *)mOverridePropertyMap CGFloatValueForProperty:*&property];
  return result;
}

- (id)propertyMap
{
  mParent = self->mParent;
  if (mParent)
  {
    propertyMap = [(TSSStyle *)mParent propertyMap];
  }

  else
  {
    propertyMap = 0;
  }

  if (![(TSSPropertyMap *)self->mOverridePropertyMap count])
  {
    return propertyMap;
  }

  if (propertyMap)
  {
    [propertyMap addValuesFromPropertyMap:self->mOverridePropertyMap];
    return propertyMap;
  }

  v6 = [(TSSPropertyMap *)self->mOverridePropertyMap copy];

  return v6;
}

- (id)propertyMapIgnoringStyle:(id)style
{
  mParent = self->mParent;
  if (mParent)
  {
    v6 = [(TSSStyle *)mParent propertyMapIgnoringStyle:style];
  }

  else
  {
    v6 = 0;
  }

  if (self == style || ![(TSSPropertyMap *)self->mOverridePropertyMap count])
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
    copyPropertyMap = [(TSSStyle *)mParent copyPropertyMap];
  }

  else
  {
    copyPropertyMap = 0;
  }

  if (![(TSSPropertyMap *)self->mOverridePropertyMap count])
  {
    return copyPropertyMap;
  }

  mOverridePropertyMap = self->mOverridePropertyMap;
  if (copyPropertyMap)
  {
    [copyPropertyMap addValuesFromPropertyMap:mOverridePropertyMap];
    return copyPropertyMap;
  }

  v7 = self->mOverridePropertyMap;

  return [(TSSPropertyMap *)v7 copy];
}

- (id)overridePropertyMapWithPropertyMap:(id)map overridePropertyMap:(id)propertyMap collapseSourceOverrides:(BOOL)overrides
{
  overridesCopy = overrides;
  mParent = self;
  if (self->mIsVariation)
  {
    mParent = self->mParent;
    if (!mParent)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]"];
      [currentHandler handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1167, @"Can't create variation of a nil base style."}];
      mParent = 0;
    }
  }

  if ([(TSSStyle *)mParent isVariation])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle overridePropertyMapWithPropertyMap:overridePropertyMap:collapseSourceOverrides:]"];
    [currentHandler2 handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1168, @"Can't create variation of a variation base style."}];
  }

  v14 = objc_alloc_init(TSSPropertyMap);
  v15 = objc_alloc_init(TSSPropertyMap);
  v16 = v15;
  if (self->mIsVariation)
  {
    if (overridesCopy)
    {
      v15 = v14;
    }

    [(TSSPropertyMap *)v15 addValuesFromPropertyMap:self->mOverridePropertyMap];
  }

  [(TSSPropertyMap *)v16 addValuesFromPropertyMap:propertyMap];
  [(TSSPropertyMap *)v14 addValuesFromPropertyMap:map];
  [(TSSPropertyMap *)v14 removeValuesForProperties:[(TSSPropertyMap *)v16 allProperties]];
  [(TSSPropertyMap *)v14 removeValuesFromPropertyMap:[(TSSStyle *)mParent propertyMap]];
  [(TSSPropertyMap *)v16 addValuesFromPropertyMap:v14];

  return v16;
}

- (id)newOverridePropertyMapWithPropertyMap:(id)map
{
  mParent = self;
  if (self->mIsVariation)
  {
    mParent = self->mParent;
    if (!mParent)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle newOverridePropertyMapWithPropertyMap:]"];
      [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1197, @"Can't create variation of a nil base style."}];
      mParent = 0;
    }
  }

  if ([(TSSStyle *)mParent isVariation])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle newOverridePropertyMapWithPropertyMap:]"];
    [currentHandler2 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1198, @"Can't create variation of a variation base style."}];
  }

  if (self->mIsVariation && (mOverridePropertyMap = self->mOverridePropertyMap) != 0)
  {
    v11 = [(TSSPropertyMap *)mOverridePropertyMap copy];
    [v11 addValuesFromPropertyMap:map];
  }

  else
  {
    v11 = [map copy];
  }

  copyPropertyMap = [(TSSStyle *)mParent copyPropertyMap];
  [v11 removeValuesFromPropertyMap:copyPropertyMap];

  return v11;
}

- (BOOL)hasEqualPropertyValues:(id)values
{
  properties = [objc_opt_class() properties];

  return [(TSSStyle *)self hasEqualValues:values forProperties:properties];
}

- (BOOL)p_hasEqualValuesTo:(id)to forProperty:(int)property
{
  v4 = *&property;
  v7 = String(property);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      [(TSSStyle *)self floatValueForProperty:v4];
      v18 = v17;
      [to floatValueForProperty:v4];
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
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSSStyle p_hasEqualValuesTo:forProperty:]"];
        [currentHandler handleFailureInFunction:v13 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/styles/TSSStyle.m"), 1257, @"Comparing property values for unknown property %@ (%d) of unknown type.", String(v4), v4}];
        goto LABEL_17;
      }

      [(TSSStyle *)self doubleValueForProperty:v4];
      v10 = v9;
      [to doubleValueForProperty:v4];
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
      if (v8 != [to intValueForProperty:v4])
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v14 = [(TSSStyle *)self valueForProperty:v4];
  v15 = [to objectForProperty:v4];
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

- (BOOL)hasEqualValuesToPropertyMap:(id)map forProperties:(id)properties
{
  if ([objc_msgSend(objc_opt_class() "properties")] && objc_msgSend(objc_msgSend(map, "allProperties"), "containsProperties:", properties))
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
    v9[5] = map;
    v9[6] = &v10;
    [properties enumeratePropertiesUsingBlock:v9];
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

- (BOOL)hasEqualValues:(id)values forProperties:(id)properties
{
  if ([objc_msgSend(objc_opt_class() "properties")] && objc_msgSend(objc_msgSend(objc_opt_class(), "properties"), "containsProperties:", properties))
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
    v9[5] = values;
    v9[6] = &v10;
    [properties enumeratePropertiesUsingBlock:v9];
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

- (void)setOverridePropertyMap:(id)map
{
  [(TSPObject *)self willModify];
  v5 = [map copy];

  self->mOverridePropertyMap = v5;
}

- (TSSStyle)rootAncestor
{
  while (1)
  {
    selfCopy = self;
    if (![(TSSStyle *)self parent])
    {
      break;
    }

    self = [(TSSStyle *)selfCopy parent];
  }

  return selfCopy;
}

- (TSSStyle)baseStyleForVariation
{
  selfCopy = self;
  if ([(TSSStyle *)self isVariation])
  {
    do
    {
      selfCopy = [(TSSStyle *)selfCopy parent];
    }

    while ([(TSSStyle *)selfCopy isVariation]);
  }

  return selfCopy;
}

- (TSSStyle)firstIdentifiedAncestor
{
  while (1)
  {
    selfCopy = self;
    if (!self || [(TSSStyle *)self styleIdentifier])
    {
      break;
    }

    self = [(TSSStyle *)selfCopy parent];
  }

  return selfCopy;
}

- (TSSStyle)rootIdentifiedAncestor
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v3 = 0;
  do
  {
    if ([(TSSStyle *)selfCopy isIdentified])
    {
      v3 = selfCopy;
    }

    selfCopy = [(TSSStyle *)selfCopy parent];
  }

  while (selfCopy);
  return v3;
}

- (void)setParent:(id)parent
{
  if (self->mParent != parent)
  {
    [(TSPObject *)self willModify];
    parentCopy = parent;

    self->mParent = parent;
  }
}

- (NSSet)children
{
  stylesheet = [(TSSStyle *)self stylesheet];
  if (stylesheet)
  {
    child = stylesheet;
    v5 = 0;
    do
    {
      v6 = [(TSSStylesheet *)child childrenOfStyle:self];
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

      child = [(TSSStylesheet *)child child];
    }

    while (child);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDescendentOf:(id)of
{
  mParent = self->mParent;
  if (mParent)
  {
    LOBYTE(mParent) = mParent == of || [(TSSStyle *)mParent isDescendentOf:?];
  }

  return mParent;
}

- (BOOL)isAncestorOf:(id)of
{
  parent = [of parent];
  if (parent)
  {
    if ([of parent] == self)
    {
      LOBYTE(parent) = 1;
    }

    else
    {
      parent2 = [of parent];

      LOBYTE(parent) = [(TSSStyle *)self isAncestorOf:parent2];
    }
  }

  return parent;
}

+ (BOOL)validateIntValue:(int *)value forProperty:(int)property min:(int)min max:(int)max
{
  if (!value)
  {
    return 0;
  }

  v6 = *value;
  if (*value == 0x80000000)
  {
    return 0;
  }

  if (v6 < min || (min = max, v6 > max))
  {
    *value = min;
  }

  return 1;
}

+ (BOOL)validateIntValueAsBool:(int *)bool forProperty:(int)property
{
  if (!bool || *bool == 0x80000000)
  {
    return 0;
  }

  result = 1;
  if (*bool > 1)
  {
    *bool = 1;
  }

  return result;
}

+ (BOOL)validateObjectValue:(id *)value withClass:(Class)class forProperty:(int)property
{
  if (value)
  {
    v5 = *value;
    if (*value)
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

- (BOOL)validateIntValue:(int *)value forProperty:(int)property
{
  v4 = *&property;
  v6 = objc_opt_class();

  return [v6 validateIntValue:value forProperty:v4];
}

- (BOOL)validateIntValue:(int *)value forProperty:(int)property min:(int)min max:(int)max
{
  v6 = *&max;
  v7 = *&min;
  v8 = *&property;
  v10 = objc_opt_class();

  return [v10 validateIntValue:value forProperty:v8 min:v7 max:v6];
}

- (BOOL)validateIntValueAsBool:(int *)bool forProperty:(int)property
{
  v4 = *&property;
  v6 = objc_opt_class();

  return [v6 validateIntValueAsBool:bool forProperty:v4];
}

- (BOOL)validateFloatValue:(float *)value forProperty:(int)property
{
  v4 = *&property;
  v6 = objc_opt_class();

  return [v6 validateFloatValue:value forProperty:v4];
}

- (BOOL)validateDoubleValue:(double *)value forProperty:(int)property
{
  v4 = *&property;
  v6 = objc_opt_class();

  return [v6 validateDoubleValue:value forProperty:v4];
}

- (BOOL)validateObjectValue:(id *)value withClass:(Class)class forProperty:(int)property
{
  v5 = *&property;
  v8 = objc_opt_class();

  return [v8 validateObjectValue:value withClass:class forProperty:v5];
}

+ (double)fontSizeForFontSize:(double)size scalingFactor:(double)factor
{
  v4 = size * factor;
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

- (id)boxedValueForProperty:(int)property oldBoxedValue:(id)value transformedByTransform:(CGAffineTransform *)transform
{
  v5 = *&property;
  if (property == 17 && [(TSSStyle *)self transformsFontSizes])
  {
    [value floatValue];
    [TSSStyle fontSizeForFontSize:v9 scalingFactor:transform->d];
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
  propertyMap = [(TSSStyle *)self propertyMap];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__TSSStyle_referencedStyles__block_invoke;
  v6[3] = &unk_279D47E70;
  v6[4] = v3;
  [propertyMap enumeratePropertiesAndObjectsUsingBlock:v6];
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

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  propertyMap = [(TSSStyle *)self propertyMap];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__TSSStyle_replaceReferencedStylesUsingBlock___block_invoke;
  v6[3] = &unk_279D47FB8;
  v6[4] = self;
  v6[5] = block;
  [propertyMap enumeratePropertiesAndObjectsUsingBlock:v6];
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

- (id)constrainShapeStyleForContext:(id)context
{
  v3 = [(TSSStyle *)self copyWithContext:context];
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
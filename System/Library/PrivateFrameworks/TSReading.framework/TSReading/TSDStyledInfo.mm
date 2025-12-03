@interface TSDStyledInfo
- (Class)styleClass;
- (TSDReflection)reflection;
- (TSDShadow)shadow;
- (TSDStroke)stroke;
- (TSSStyle)style;
- (float)opacity;
- (id)boxedValueForProperty:(int)property;
- (id)objectForProperty:(int)property;
- (id)propertyMapForNewPreset;
- (id)referencedStyles;
- (id)styleIdentifierTemplateForNewPreset;
- (id)stylesForCopyStyle;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)i_setValue:(id)value forProperty:(int)property;
- (void)replaceReferencedStylesUsingBlock:(id)block;
- (void)setBoxedValue:(id)value forProperty:(int)property;
- (void)setOpacity:(float)opacity;
- (void)setReflection:(id)reflection;
- (void)setShadow:(id)shadow;
- (void)setStyle:(id)style;
- (void)setValuesForProperties:(id)properties;
@end

@implementation TSDStyledInfo

- (Class)styleClass
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo styleClass]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 36, @"Subclasses must implement styleClass"}];
  return 0;
}

- (TSSStyle)style
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo style]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 43, @"Subclasses must implement style"}];
  return 0;
}

- (void)setStyle:(id)style
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setStyle:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"];

  [currentHandler handleFailureInFunction:v4 file:v5 lineNumber:50 description:@"Subclasses must implement setStyle:"];
}

- (id)stylesForCopyStyle
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = [(TSDStyledInfo *)self style];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (TSDStroke)stroke
{
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo stroke]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 73, @"invalid nil value for '%s'", "self.style"}];
  }

  style = [(TSDStyledInfo *)self style];

  return [(TSSStyle *)style valueForProperty:517];
}

- (float)opacity
{
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo opacity]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 85, @"invalid nil value for '%s'", "self.style"}];
  }

  style = [(TSDStyledInfo *)self style];

  [(TSSStyle *)style floatValueForProperty:518];
  return result;
}

- (void)setOpacity:(float)opacity
{
  opacityCopy = opacity;
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setOpacity:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 92, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setOpacity:]"];
    [currentHandler2 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 93, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  [(TSSStyle *)[(TSDStyledInfo *)self style] validateFloatValue:&opacityCopy forProperty:518];
  [(TSDDrawableInfo *)self willChangeProperty:518];
  v8 = [TSSPropertyMap alloc];
  v9 = [(TSSPropertyMap *)v8 initWithPropertiesAndValues:518, opacityCopy, 0, 0];
  v10 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:v9];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setOpacity:]"];
    [currentHandler3 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 100, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v10];
}

- (TSDReflection)reflection
{
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo reflection]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 109, @"invalid nil value for '%s'", "self.style"}];
  }

  v5 = [(TSSStyle *)[(TSDStyledInfo *)self style] valueForProperty:519];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)setReflection:(id)reflection
{
  if (!reflection)
  {
    reflection = [MEMORY[0x277CBEB68] null];
  }

  [(TSDStyledInfo *)self i_setValue:reflection forProperty:519];
}

- (TSDShadow)shadow
{
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo shadow]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 128, @"invalid nil value for '%s'", "self.style"}];
  }

  v5 = [(TSSStyle *)[(TSDStyledInfo *)self style] valueForProperty:520];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (void)setShadow:(id)shadow
{
  if (!shadow)
  {
    shadow = [MEMORY[0x277CBEB68] null];
  }

  [(TSDStyledInfo *)self i_setValue:shadow forProperty:520];
}

- (id)boxedValueForProperty:(int)property
{
  v3 = *&property;
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo boxedValueForProperty:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 147, @"invalid nil value for '%s'", "self.style"}];
  }

  if ([(TSSStyle *)[(TSDStyledInfo *)self style] containsProperty:v3])
  {
    style = [(TSDStyledInfo *)self style];

    return [(TSSStyle *)style boxedValueForProperty:v3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDStyledInfo;
    return [(TSDDrawableInfo *)&v9 boxedObjectForProperty:v3];
  }
}

- (id)objectForProperty:(int)property
{
  if (property == 515)
  {

    return [(TSDStyledInfo *)self style];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = TSDStyledInfo;
    return [(TSDDrawableInfo *)&v6 objectForProperty:?];
  }
}

- (void)setBoxedValue:(id)value forProperty:(int)property
{
  v4 = *&property;
  if (!value)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 169, @"invalid nil value for '%s'", "value"}];
  }

  if (![(TSDStyledInfo *)self style])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 170, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [currentHandler3 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 171, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  [(TSDDrawableInfo *)self willChangeProperty:v4];
  v16 = [[TSSPropertyMap alloc] initWithCapacity:1];
  [(TSSPropertyMap *)v16 setBoxedObject:value forProperty:v4];
  v13 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:v16];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [currentHandler4 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 180, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v13];
}

- (void)setValuesForProperties:(id)properties
{
  if (![(TSDStyledInfo *)self style])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setValuesForProperties:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 189, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setValuesForProperties:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 190, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  -[TSDDrawableInfo willChangeProperties:](self, "willChangeProperties:", [properties allProperties]);
  v9 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:properties];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setValuesForProperties:]"];
    [currentHandler3 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 195, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v9];
}

- (void)i_setValue:(id)value forProperty:(int)property
{
  v4 = *&property;
  if (!value)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 202, @"invalid nil value for '%s'", "value"}];
  }

  if (![(TSDStyledInfo *)self style])
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [currentHandler2 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 203, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [currentHandler3 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 204, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  [(TSDDrawableInfo *)self willChangeProperty:v4];
  v16 = [[TSSPropertyMap alloc] initWithPropertiesAndValues:v4, value, 0];
  v13 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:v16];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [currentHandler4 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 210, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v13];
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TSDStyledInfo_adoptStylesheet_withMapper___block_invoke;
  v4[3] = &unk_279D494A0;
  v4[4] = mapper;
  [(TSDStyledInfo *)self replaceReferencedStylesUsingBlock:v4];
}

- (id)propertyMapForNewPreset
{
  style = [(TSDStyledInfo *)self style];

  return [(TSSStyle *)style fullPropertyMap];
}

- (id)styleIdentifierTemplateForNewPreset
{
  baseStyleForVariation = [(TSSStyle *)[(TSDStyledInfo *)self style] baseStyleForVariation];

  return [(TSSStyle *)baseStyleForVariation styleIdentifier];
}

- (id)referencedStyles
{
  style = [(TSDStyledInfo *)self style];
  v4 = MEMORY[0x277CBEB98];
  if (style)
  {
    style2 = [(TSDStyledInfo *)self style];

    return [v4 setWithObject:style2];
  }

  else
  {
    v7 = MEMORY[0x277CBEB98];

    return [v7 set];
  }
}

- (void)replaceReferencedStylesUsingBlock:(id)block
{
  style = [(TSDStyledInfo *)self style];
  v6 = (*(block + 2))(block, style);
  if (!v6)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo replaceReferencedStylesUsingBlock:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 246, @"Failed to map style %@", style}];
  }

  [(TSDStyledInfo *)self styleClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo replaceReferencedStylesUsingBlock:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"];
    v12 = objc_opt_class();
    [currentHandler2 handleFailureInFunction:v10 file:v11 lineNumber:247 description:{@"style mapped returned style of class %@ for %@", NSStringFromClass(v12), style}];
  }

  [(TSDStyledInfo *)self setStyle:v6];
}

@end
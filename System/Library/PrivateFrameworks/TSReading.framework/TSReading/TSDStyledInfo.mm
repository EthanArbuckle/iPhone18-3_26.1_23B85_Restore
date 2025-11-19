@interface TSDStyledInfo
- (Class)styleClass;
- (TSDReflection)reflection;
- (TSDShadow)shadow;
- (TSDStroke)stroke;
- (TSSStyle)style;
- (float)opacity;
- (id)boxedValueForProperty:(int)a3;
- (id)objectForProperty:(int)a3;
- (id)propertyMapForNewPreset;
- (id)referencedStyles;
- (id)styleIdentifierTemplateForNewPreset;
- (id)stylesForCopyStyle;
- (void)adoptStylesheet:(id)a3 withMapper:(id)a4;
- (void)i_setValue:(id)a3 forProperty:(int)a4;
- (void)replaceReferencedStylesUsingBlock:(id)a3;
- (void)setBoxedValue:(id)a3 forProperty:(int)a4;
- (void)setOpacity:(float)a3;
- (void)setReflection:(id)a3;
- (void)setShadow:(id)a3;
- (void)setStyle:(id)a3;
- (void)setValuesForProperties:(id)a3;
@end

@implementation TSDStyledInfo

- (Class)styleClass
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo styleClass]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 36, @"Subclasses must implement styleClass"}];
  return 0;
}

- (TSSStyle)style
{
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo style]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 43, @"Subclasses must implement style"}];
  return 0;
}

- (void)setStyle:(id)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setStyle:]"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:50 description:@"Subclasses must implement setStyle:"];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo stroke]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 73, @"invalid nil value for '%s'", "self.style"}];
  }

  v5 = [(TSDStyledInfo *)self style];

  return [(TSSStyle *)v5 valueForProperty:517];
}

- (float)opacity
{
  if (![(TSDStyledInfo *)self style])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo opacity]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 85, @"invalid nil value for '%s'", "self.style"}];
  }

  v5 = [(TSDStyledInfo *)self style];

  [(TSSStyle *)v5 floatValueForProperty:518];
  return result;
}

- (void)setOpacity:(float)a3
{
  v13 = a3;
  if (![(TSDStyledInfo *)self style])
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setOpacity:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 92, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setOpacity:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 93, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  [(TSSStyle *)[(TSDStyledInfo *)self style] validateFloatValue:&v13 forProperty:518];
  [(TSDDrawableInfo *)self willChangeProperty:518];
  v8 = [TSSPropertyMap alloc];
  v9 = [(TSSPropertyMap *)v8 initWithPropertiesAndValues:518, v13, 0, 0];
  v10 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:v9];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setOpacity:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 100, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v10];
}

- (TSDReflection)reflection
{
  if (![(TSDStyledInfo *)self style])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo reflection]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 109, @"invalid nil value for '%s'", "self.style"}];
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

- (void)setReflection:(id)a3
{
  if (!a3)
  {
    a3 = [MEMORY[0x277CBEB68] null];
  }

  [(TSDStyledInfo *)self i_setValue:a3 forProperty:519];
}

- (TSDShadow)shadow
{
  if (![(TSDStyledInfo *)self style])
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo shadow]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 128, @"invalid nil value for '%s'", "self.style"}];
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

- (void)setShadow:(id)a3
{
  if (!a3)
  {
    a3 = [MEMORY[0x277CBEB68] null];
  }

  [(TSDStyledInfo *)self i_setValue:a3 forProperty:520];
}

- (id)boxedValueForProperty:(int)a3
{
  v3 = *&a3;
  if (![(TSDStyledInfo *)self style])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo boxedValueForProperty:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 147, @"invalid nil value for '%s'", "self.style"}];
  }

  if ([(TSSStyle *)[(TSDStyledInfo *)self style] containsProperty:v3])
  {
    v7 = [(TSDStyledInfo *)self style];

    return [(TSSStyle *)v7 boxedValueForProperty:v3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDStyledInfo;
    return [(TSDDrawableInfo *)&v9 boxedObjectForProperty:v3];
  }
}

- (id)objectForProperty:(int)a3
{
  if (a3 == 515)
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

- (void)setBoxedValue:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 169, @"invalid nil value for '%s'", "value"}];
  }

  if (![(TSDStyledInfo *)self style])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 170, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 171, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  [(TSDDrawableInfo *)self willChangeProperty:v4];
  v16 = [[TSSPropertyMap alloc] initWithCapacity:1];
  [(TSSPropertyMap *)v16 setBoxedObject:a3 forProperty:v4];
  v13 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:v16];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setBoxedValue:forProperty:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 180, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v13];
}

- (void)setValuesForProperties:(id)a3
{
  if (![(TSDStyledInfo *)self style])
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setValuesForProperties:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 189, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setValuesForProperties:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 190, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  -[TSDDrawableInfo willChangeProperties:](self, "willChangeProperties:", [a3 allProperties]);
  v9 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:a3];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo setValuesForProperties:]"];
    [v10 handleFailureInFunction:v11 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 195, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v9];
}

- (void)i_setValue:(id)a3 forProperty:(int)a4
{
  v4 = *&a4;
  if (!a3)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 202, @"invalid nil value for '%s'", "value"}];
  }

  if (![(TSDStyledInfo *)self style])
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 203, @"invalid nil value for '%s'", "self.style"}];
  }

  if (![(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet])
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 204, @"invalid nil value for '%s'", "self.style.stylesheet"}];
  }

  [(TSDDrawableInfo *)self willChangeProperty:v4];
  v16 = [[TSSPropertyMap alloc] initWithPropertiesAndValues:v4, a3, 0];
  v13 = [(TSSStylesheet *)[(TSSStyle *)[(TSDStyledInfo *)self style] stylesheet] variationOfStyle:[(TSDStyledInfo *)self style] propertyMap:v16];
  [(TSDStyledInfo *)self style];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo i_setValue:forProperty:]"];
    [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 210, @"Variation style is wrong style."}];
  }

  [(TSDStyledInfo *)self setStyle:v13];
}

- (void)adoptStylesheet:(id)a3 withMapper:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__TSDStyledInfo_adoptStylesheet_withMapper___block_invoke;
  v4[3] = &unk_279D494A0;
  v4[4] = a4;
  [(TSDStyledInfo *)self replaceReferencedStylesUsingBlock:v4];
}

- (id)propertyMapForNewPreset
{
  v2 = [(TSDStyledInfo *)self style];

  return [(TSSStyle *)v2 fullPropertyMap];
}

- (id)styleIdentifierTemplateForNewPreset
{
  v2 = [(TSSStyle *)[(TSDStyledInfo *)self style] baseStyleForVariation];

  return [(TSSStyle *)v2 styleIdentifier];
}

- (id)referencedStyles
{
  v3 = [(TSDStyledInfo *)self style];
  v4 = MEMORY[0x277CBEB98];
  if (v3)
  {
    v5 = [(TSDStyledInfo *)self style];

    return [v4 setWithObject:v5];
  }

  else
  {
    v7 = MEMORY[0x277CBEB98];

    return [v7 set];
  }
}

- (void)replaceReferencedStylesUsingBlock:(id)a3
{
  v5 = [(TSDStyledInfo *)self style];
  v6 = (*(a3 + 2))(a3, v5);
  if (!v6)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo replaceReferencedStylesUsingBlock:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"), 246, @"Failed to map style %@", v5}];
  }

  [(TSDStyledInfo *)self styleClass];
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDStyledInfo replaceReferencedStylesUsingBlock:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDStyledInfo.m"];
    v12 = objc_opt_class();
    [v9 handleFailureInFunction:v10 file:v11 lineNumber:247 description:{@"style mapped returned style of class %@ for %@", NSStringFromClass(v12), v5}];
  }

  [(TSDStyledInfo *)self setStyle:v6];
}

@end
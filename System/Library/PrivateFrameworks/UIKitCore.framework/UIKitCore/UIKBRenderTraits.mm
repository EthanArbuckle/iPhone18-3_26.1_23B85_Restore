@interface UIKBRenderTraits
+ (UIKBRenderTraits)traitsWithGeometry:(id)geometry;
+ (UIKBRenderTraits)traitsWithSymbolStyle:(id)style;
+ (id)emptyTraits;
- (BOOL)isEqual:(id)equal;
- (CGSize)floatingContentViewControlFocusedBaseSize;
- (CGSize)floatingContentViewFocusedIncreaseSize;
- (UIKBRenderTraits)highlightedVariantTraits;
- (UIKBTextStyle)fallbackSymbolStyle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)extraFiltersForType:(id)type;
- (void)addForegroundRenderEffect:(id)effect;
- (void)addRenderEffect:(id)effect;
- (void)modifyForMasking;
- (void)overlayWithTraits:(id)traits;
- (void)removeAllRenderEffects;
@end

@implementation UIKBRenderTraits

+ (id)emptyTraits
{
  v2 = objc_alloc_init(UIKBRenderTraits);

  return v2;
}

+ (UIKBRenderTraits)traitsWithGeometry:(id)geometry
{
  geometryCopy = geometry;
  emptyTraits = [objc_opt_class() emptyTraits];
  [emptyTraits setGeometry:geometryCopy];

  return emptyTraits;
}

+ (UIKBRenderTraits)traitsWithSymbolStyle:(id)style
{
  styleCopy = style;
  emptyTraits = [objc_opt_class() emptyTraits];
  [emptyTraits setSymbolStyle:styleCopy];

  return emptyTraits;
}

- (void)addRenderEffect:(id)effect
{
  effectCopy = effect;
  renderEffects = self->_renderEffects;
  v8 = effectCopy;
  if (!renderEffects)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_renderEffects;
    self->_renderEffects = v6;

    effectCopy = v8;
    renderEffects = self->_renderEffects;
  }

  [(NSMutableArray *)renderEffects addObject:effectCopy];
}

- (void)addForegroundRenderEffect:(id)effect
{
  effectCopy = effect;
  foregroundRenderEffects = self->_foregroundRenderEffects;
  v8 = effectCopy;
  if (!foregroundRenderEffects)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_foregroundRenderEffects;
    self->_foregroundRenderEffects = v6;

    effectCopy = v8;
    foregroundRenderEffects = self->_foregroundRenderEffects;
  }

  [(NSMutableArray *)foregroundRenderEffects addObject:effectCopy];
}

- (void)removeAllRenderEffects
{
  [(NSMutableArray *)self->_renderEffects removeAllObjects];
  foregroundRenderEffects = self->_foregroundRenderEffects;

  [(NSMutableArray *)foregroundRenderEffects removeAllObjects];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  geometry = [(UIKBRenderTraits *)self geometry];

  if (geometry)
  {
    geometry2 = [(UIKBRenderTraits *)self geometry];
    [v3 appendFormat:@"; geometry = %@", geometry2];
  }

  backgroundGradient = [(UIKBRenderTraits *)self backgroundGradient];

  if (backgroundGradient)
  {
    backgroundGradient2 = [(UIKBRenderTraits *)self backgroundGradient];
    [v3 appendFormat:@"; backgroundGradient = %@", backgroundGradient2];
  }

  layeredBackgroundGradient = [(UIKBRenderTraits *)self layeredBackgroundGradient];

  if (layeredBackgroundGradient)
  {
    layeredBackgroundGradient2 = [(UIKBRenderTraits *)self layeredBackgroundGradient];
    [v3 appendFormat:@"; layeredBackgroundGradient = %@", layeredBackgroundGradient2];
  }

  layeredForegroundGradient = [(UIKBRenderTraits *)self layeredForegroundGradient];

  if (layeredForegroundGradient)
  {
    layeredForegroundGradient2 = [(UIKBRenderTraits *)self layeredForegroundGradient];
    [v3 appendFormat:@"; layeredForegroundGradient = %@", layeredForegroundGradient2];
  }

  symbolStyle = [(UIKBRenderTraits *)self symbolStyle];

  if (symbolStyle)
  {
    symbolStyle2 = [(UIKBRenderTraits *)self symbolStyle];
    [v3 appendFormat:@"; symbolStyle = %@", symbolStyle2];
  }

  fallbackSymbolStyle = [(UIKBRenderTraits *)self fallbackSymbolStyle];

  if (fallbackSymbolStyle)
  {
    fallbackSymbolStyle2 = [(UIKBRenderTraits *)self fallbackSymbolStyle];
    [v3 appendFormat:@"; fallbackSymbolStyle = %@", fallbackSymbolStyle2];
  }

  secondarySymbolStyles = [(UIKBRenderTraits *)self secondarySymbolStyles];

  if (secondarySymbolStyles)
  {
    secondarySymbolStyles2 = [(UIKBRenderTraits *)self secondarySymbolStyles];
    [v3 appendFormat:@"; secondarySymbolStyles = %@", secondarySymbolStyles2];
  }

  renderEffects = [(UIKBRenderTraits *)self renderEffects];

  if (renderEffects)
  {
    renderEffects2 = [(UIKBRenderTraits *)self renderEffects];
    [v3 appendFormat:@"; renderEffects = %@", renderEffects2];
  }

  foregroundRenderEffects = [(UIKBRenderTraits *)self foregroundRenderEffects];

  if (foregroundRenderEffects)
  {
    foregroundRenderEffects2 = [(UIKBRenderTraits *)self foregroundRenderEffects];
    [v3 appendFormat:@"; foregroundRenderEffects = %@", foregroundRenderEffects2];
  }

  if ([(UIKBRenderTraits *)self blurBlending])
  {
    [v3 appendString:@"; blurBlending = YES"];
  }

  blendForm = [(UIKBRenderTraits *)self blendForm];
  if ((blendForm - 1) > 0xC)
  {
    v23 = @"None";
  }

  else
  {
    v23 = off_1E7114628[blendForm - 1];
  }

  [v3 appendFormat:@"; blendForm = %@", v23];
  renderFlags = [(UIKBRenderTraits *)self renderFlags];

  if (renderFlags)
  {
    renderFlags2 = [(UIKBRenderTraits *)self renderFlags];
    [v3 appendFormat:@"; renderFlags = %@", renderFlags2];
  }

  if ([(UIKBRenderTraits *)self renderSecondarySymbolsSeparately])
  {
    [v3 appendString:@"; renderSecondarySymbolsSeparately = YES"];
  }

  if ([(UIKBRenderTraits *)self renderFlagsForAboveEffects])
  {
    [v3 appendFormat:@"; renderFlagsForAboveEffects = %ld", -[UIKBRenderTraits renderFlagsForAboveEffects](self, "renderFlagsForAboveEffects")];
  }

  hashString = [(UIKBRenderTraits *)self hashString];
  [v3 appendFormat:@"; hashString = %@", hashString];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    v18 = (objc_opt_isKindOfClass() & 1) != 0 && (geometry = self->_geometry, (equalCopy->_geometry != 0) != (geometry == 0)) && (!geometry || [(UIKBRenderGeometry *)geometry isEqual:?]) && (backgroundGradient = self->_backgroundGradient, (backgroundGradient == 0) != (equalCopy->_backgroundGradient != 0)) && (!backgroundGradient || [(UIKBGradient *)backgroundGradient isEqual:?]) && (layeredBackgroundGradient = self->_layeredBackgroundGradient, (layeredBackgroundGradient == 0) != (equalCopy->_layeredBackgroundGradient != 0)) && (!layeredBackgroundGradient || [(UIKBGradient *)layeredBackgroundGradient isEqual:?]) && (layeredForegroundGradient = self->_layeredForegroundGradient, (layeredForegroundGradient == 0) != (equalCopy->_layeredForegroundGradient != 0)) && (!layeredForegroundGradient || [(UIKBGradient *)layeredForegroundGradient isEqual:?]) && (symbolStyle = self->_symbolStyle, (symbolStyle == 0) != (equalCopy->_symbolStyle != 0)) && (!symbolStyle || [(UIKBTextStyle *)symbolStyle isEqual:?]) && (fallbackSymbolStyle = self->_fallbackSymbolStyle, (fallbackSymbolStyle == 0) != (equalCopy->_fallbackSymbolStyle != 0)) && (!fallbackSymbolStyle || [(UIKBTextStyle *)fallbackSymbolStyle isEqual:?]) && (secondarySymbolStyles = self->_secondarySymbolStyles, (secondarySymbolStyles == 0) != (equalCopy->_secondarySymbolStyles != 0)) && (!secondarySymbolStyles || [(NSArray *)secondarySymbolStyles isEqualToArray:?]) && (renderEffects = self->_renderEffects, (renderEffects == 0) != (equalCopy->_renderEffects != 0)) && (!renderEffects || [(NSMutableArray *)renderEffects isEqualToArray:?]) && (foregroundRenderEffects = self->_foregroundRenderEffects, (foregroundRenderEffects == 0) != (equalCopy->_foregroundRenderEffects != 0)) && (!foregroundRenderEffects || [(NSMutableArray *)foregroundRenderEffects isEqualToArray:?]) && (variantGeometries = self->_variantGeometries, (variantGeometries == 0) != (equalCopy->_variantGeometries != 0)) && (!variantGeometries || [(NSArray *)variantGeometries isEqualToArray:?]) && (variantTraits = self->_variantTraits, (variantTraits == 0) != (equalCopy->_variantTraits != 0)) && (!variantTraits || [(UIKBRenderTraits *)variantTraits isEqual:?]) && (highlightedVariantTraits = self->_highlightedVariantTraits, (highlightedVariantTraits == 0) != (equalCopy->_highlightedVariantTraits != 0)) && (!highlightedVariantTraits || [(UIKBRenderTraits *)highlightedVariantTraits isEqual:?]) && self->_controlOpacities == equalCopy->_controlOpacities && self->_blurBlending == equalCopy->_blurBlending && self->_blendForm == equalCopy->_blendForm && ((renderFlags = self->_renderFlags) == 0 || [(NSArray *)renderFlags isEqualToArray:equalCopy->_renderFlags]) && self->_renderSecondarySymbolsSeparately == equalCopy->_renderSecondarySymbolsSeparately && self->_renderFlagsForAboveEffects == equalCopy->_renderFlagsForAboveEffects;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UIKBRenderTraits allocWithZone:?]];
  v5 = [(UIKBGradient *)self->_backgroundGradient copy];
  backgroundGradient = v4->_backgroundGradient;
  v4->_backgroundGradient = v5;

  v7 = [(UIKBGradient *)self->_layeredBackgroundGradient copy];
  layeredBackgroundGradient = v4->_layeredBackgroundGradient;
  v4->_layeredBackgroundGradient = v7;

  v9 = [(UIKBGradient *)self->_layeredForegroundGradient copy];
  layeredForegroundGradient = v4->_layeredForegroundGradient;
  v4->_layeredForegroundGradient = v9;

  v11 = [(UIKBTextStyle *)self->_symbolStyle copy];
  symbolStyle = v4->_symbolStyle;
  v4->_symbolStyle = v11;

  v13 = [(UIKBTextStyle *)self->_fallbackSymbolStyle copy];
  fallbackSymbolStyle = v4->_fallbackSymbolStyle;
  v4->_fallbackSymbolStyle = v13;

  if ([(NSArray *)self->_secondarySymbolStyles count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->_secondarySymbolStyles copyItems:1];
    secondarySymbolStyles = v4->_secondarySymbolStyles;
    v4->_secondarySymbolStyles = v15;
  }

  if ([(NSMutableArray *)self->_renderEffects count])
  {
    v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_renderEffects copyItems:1];
    renderEffects = v4->_renderEffects;
    v4->_renderEffects = v17;
  }

  if ([(NSMutableArray *)self->_foregroundRenderEffects count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_foregroundRenderEffects copyItems:1];
    foregroundRenderEffects = v4->_foregroundRenderEffects;
    v4->_foregroundRenderEffects = v19;
  }

  v4->_controlOpacities = self->_controlOpacities;
  v4->_blurBlending = self->_blurBlending;
  v4->_blendForm = self->_blendForm;
  v21 = [(NSArray *)self->_renderFlags copy];
  renderFlags = v4->_renderFlags;
  v4->_renderFlags = v21;

  v23 = [(NSString *)self->_hashString copy];
  hashString = v4->_hashString;
  v4->_hashString = v23;

  v4->_renderSecondarySymbolsSeparately = self->_renderSecondarySymbolsSeparately;
  v4->_renderFlagsForAboveEffects = self->_renderFlagsForAboveEffects;
  return v4;
}

- (UIKBRenderTraits)highlightedVariantTraits
{
  highlightedVariantTraits = self->_highlightedVariantTraits;
  variantTraits = [(UIKBRenderTraits *)self variantTraits];
  v5 = variantTraits;
  if (highlightedVariantTraits)
  {
    v6 = [variantTraits copy];

    [v6 overlayWithTraits:self->_highlightedVariantTraits];
    v5 = v6;
  }

  return v5;
}

- (UIKBTextStyle)fallbackSymbolStyle
{
  fallbackSymbolStyle = self->_fallbackSymbolStyle;
  symbolStyle = [(UIKBRenderTraits *)self symbolStyle];
  v5 = symbolStyle;
  if (fallbackSymbolStyle)
  {
    v6 = [symbolStyle copy];

    [v6 overlayWithStyle:self->_fallbackSymbolStyle];
    v5 = v6;
  }

  return v5;
}

- (void)overlayWithTraits:(id)traits
{
  traitsCopy = traits;
  geometry = [traitsCopy geometry];

  if (geometry)
  {
    geometry2 = [(UIKBRenderTraits *)self geometry];
    geometry3 = [traitsCopy geometry];
    [geometry2 overlayWithGeometry:geometry3];
  }

  backgroundGradient = [traitsCopy backgroundGradient];

  if (backgroundGradient)
  {
    backgroundGradient2 = [traitsCopy backgroundGradient];
    [(UIKBRenderTraits *)self setBackgroundGradient:backgroundGradient2];

    [(UIKBRenderTraits *)self setLayeredBackgroundGradient:0];
  }

  layeredBackgroundGradient = [traitsCopy layeredBackgroundGradient];

  if (layeredBackgroundGradient)
  {
    layeredBackgroundGradient2 = [traitsCopy layeredBackgroundGradient];
    [(UIKBRenderTraits *)self setLayeredBackgroundGradient:layeredBackgroundGradient2];
  }

  layeredForegroundGradient = [traitsCopy layeredForegroundGradient];

  if (layeredForegroundGradient)
  {
    layeredForegroundGradient2 = [traitsCopy layeredForegroundGradient];
    [(UIKBRenderTraits *)self setLayeredForegroundGradient:layeredForegroundGradient2];
  }

  symbolStyle = [traitsCopy symbolStyle];

  if (symbolStyle)
  {
    symbolStyle2 = [(UIKBRenderTraits *)self symbolStyle];
    symbolStyle3 = [traitsCopy symbolStyle];
    [symbolStyle2 overlayWithStyle:symbolStyle3];
  }

  fallbackSymbolStyle = [traitsCopy fallbackSymbolStyle];

  if (fallbackSymbolStyle)
  {
    fallbackSymbolStyle2 = [(UIKBRenderTraits *)self fallbackSymbolStyle];
    fallbackSymbolStyle3 = [traitsCopy fallbackSymbolStyle];
    [fallbackSymbolStyle2 overlayWithStyle:fallbackSymbolStyle3];
  }

  secondarySymbolStyles = [traitsCopy secondarySymbolStyles];

  if (secondarySymbolStyles)
  {
    secondarySymbolStyles2 = [(UIKBRenderTraits *)self secondarySymbolStyles];

    if (secondarySymbolStyles2)
    {
      secondarySymbolStyles3 = [(UIKBRenderTraits *)self secondarySymbolStyles];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __38__UIKBRenderTraits_overlayWithTraits___block_invoke;
      v37[3] = &unk_1E71145E0;
      v38 = traitsCopy;
      [secondarySymbolStyles3 enumerateObjectsUsingBlock:v37];
    }

    else
    {
      secondarySymbolStyles4 = [traitsCopy secondarySymbolStyles];
      [(UIKBRenderTraits *)self setSecondarySymbolStyles:secondarySymbolStyles4];
    }
  }

  renderEffects = [traitsCopy renderEffects];

  if (renderEffects)
  {
    renderEffects2 = [traitsCopy renderEffects];
    v26 = [renderEffects2 mutableCopy];
    renderEffects = self->_renderEffects;
    self->_renderEffects = v26;
  }

  foregroundRenderEffects = [traitsCopy foregroundRenderEffects];

  if (foregroundRenderEffects)
  {
    foregroundRenderEffects2 = [traitsCopy foregroundRenderEffects];
    v30 = [foregroundRenderEffects2 mutableCopy];
    foregroundRenderEffects = self->_foregroundRenderEffects;
    self->_foregroundRenderEffects = v30;
  }

  variantTraits = [traitsCopy variantTraits];

  if (variantTraits)
  {
    variantTraits2 = [traitsCopy variantTraits];
    [(UIKBRenderTraits *)self setVariantTraits:variantTraits2];
  }

  if (*(traitsCopy + 13))
  {
    highlightedVariantTraits = [traitsCopy highlightedVariantTraits];
    [(UIKBRenderTraits *)self setHighlightedVariantTraits:highlightedVariantTraits];
  }

  if (([traitsCopy controlOpacities] & 1) != 0 || *(traitsCopy + 24) == 1)
  {
    -[UIKBRenderTraits setControlOpacities:](self, "setControlOpacities:", [traitsCopy controlOpacities]);
  }

  if ([traitsCopy blurBlending])
  {
    -[UIKBRenderTraits setBlurBlending:](self, "setBlurBlending:", [traitsCopy blurBlending]);
  }

  if ([traitsCopy blendForm])
  {
    -[UIKBRenderTraits setBlendForm:](self, "setBlendForm:", [traitsCopy blendForm]);
  }

  renderFlags = [traitsCopy renderFlags];

  if (renderFlags)
  {
    renderFlags2 = [traitsCopy renderFlags];
    [(UIKBRenderTraits *)self setRenderFlags:renderFlags2];
  }

  if ([traitsCopy renderSecondarySymbolsSeparately])
  {
    -[UIKBRenderTraits setRenderSecondarySymbolsSeparately:](self, "setRenderSecondarySymbolsSeparately:", [traitsCopy renderSecondarySymbolsSeparately]);
  }

  if ([traitsCopy renderFlagsForAboveEffects])
  {
    -[UIKBRenderTraits setRenderFlagsForAboveEffects:](self, "setRenderFlagsForAboveEffects:", [traitsCopy renderFlagsForAboveEffects]);
  }
}

void __38__UIKBRenderTraits_overlayWithTraits___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [*(a1 + 32) secondarySymbolStyles];
  v8 = [v7 count];

  if (v8 <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) secondarySymbolStyles];
    v10 = [v9 objectAtIndex:a3];
    [v11 overlayWithStyle:v10];
  }
}

- (void)modifyForMasking
{
  backgroundGradient = [(UIKBRenderTraits *)self backgroundGradient];
  if (backgroundGradient || ([(UIKBRenderTraits *)self layeredBackgroundGradient], (backgroundGradient = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v4 = [UIKBGradient gradientWithFlatColor:@"UIKBColorBlack"];
    [(UIKBRenderTraits *)self setBackgroundGradient:v4];

    [(UIKBRenderTraits *)self setLayeredBackgroundGradient:0];
    [(UIKBRenderTraits *)self setLayeredForegroundGradient:0];
    goto LABEL_5;
  }

  layeredForegroundGradient = [(UIKBRenderTraits *)self layeredForegroundGradient];

  if (layeredForegroundGradient)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(UIKBRenderTraits *)self removeAllRenderEffects];
  [(UIKBRenderTraits *)self setHashString:0];
  variantTraits = [(UIKBRenderTraits *)self variantTraits];
  [variantTraits modifyForMasking];
}

- (id)extraFiltersForType:(id)type
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6979D78] == type)
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:?];
    usesDarkAppearance = [(UIKBRenderTraits *)self usesDarkAppearance];
    blendForm = [(UIKBRenderTraits *)self blendForm];
    if (usesDarkAppearance)
    {
      if (blendForm == 10 || [(UIKBRenderTraits *)self blendForm]== 12)
      {
        v8 = MEMORY[0x1E696B098];
        v9 = &xmmword_18A67EFF8;
      }

      else
      {
        controlOpacities = [(UIKBRenderTraits *)self controlOpacities];
        v8 = MEMORY[0x1E696B098];
        if (controlOpacities)
        {
          v9 = &xmmword_18A67F048;
        }

        else
        {
          v9 = &xmmword_18A67F098;
        }
      }

      v10 = v9[3];
      v22 = v9[2];
      v23 = v10;
      v24 = v9[4];
      v11 = v9[1];
      v20 = *v9;
      v21 = v11;
      v12 = [v8 valueWithCAColorMatrix:&v20];
      [v5 setValue:v12 forKey:@"inputColorMatrix"];
      v28[0] = v5;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    }

    else
    {
      if (blendForm == 11 || [(UIKBRenderTraits *)self blendForm]== 13)
      {
        v22 = xmmword_18A67F108;
        v23 = unk_18A67F118;
        v24 = xmmword_18A67F128;
        v20 = xmmword_18A67F0E8;
        v21 = unk_18A67F0F8;
        v13 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v20];
        [v5 setValue:v13 forKey:@"inputColorMatrix"];

        v27 = v5;
        v14 = MEMORY[0x1E695DEC8];
        v15 = &v27;
      }

      else if ([(UIKBRenderTraits *)self controlOpacities])
      {
        v22 = xmmword_18A67F158;
        v23 = unk_18A67F168;
        v24 = xmmword_18A67F178;
        v20 = xmmword_18A67F138;
        v21 = unk_18A67F148;
        v18 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v20];
        [v5 setValue:v18 forKey:@"inputColorMatrix"];

        v26 = v5;
        v14 = MEMORY[0x1E695DEC8];
        v15 = &v26;
      }

      else
      {
        v22 = xmmword_18A67F1A8;
        v23 = unk_18A67F1B8;
        v24 = xmmword_18A67F1C8;
        v20 = xmmword_18A67F188;
        v21 = unk_18A67F198;
        v19 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v20];
        [v5 setValue:v19 forKey:@"inputColorMatrix"];

        v25 = v5;
        v14 = MEMORY[0x1E695DEC8];
        v15 = &v25;
      }

      v3 = [v14 arrayWithObjects:v15 count:1];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CGSize)floatingContentViewFocusedIncreaseSize
{
  width = self->_floatingContentViewFocusedIncreaseSize.width;
  height = self->_floatingContentViewFocusedIncreaseSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)floatingContentViewControlFocusedBaseSize
{
  width = self->_floatingContentViewControlFocusedBaseSize.width;
  height = self->_floatingContentViewControlFocusedBaseSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
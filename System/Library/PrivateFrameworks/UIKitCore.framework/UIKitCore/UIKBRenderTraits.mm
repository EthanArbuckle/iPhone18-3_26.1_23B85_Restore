@interface UIKBRenderTraits
+ (UIKBRenderTraits)traitsWithGeometry:(id)a3;
+ (UIKBRenderTraits)traitsWithSymbolStyle:(id)a3;
+ (id)emptyTraits;
- (BOOL)isEqual:(id)a3;
- (CGSize)floatingContentViewControlFocusedBaseSize;
- (CGSize)floatingContentViewFocusedIncreaseSize;
- (UIKBRenderTraits)highlightedVariantTraits;
- (UIKBTextStyle)fallbackSymbolStyle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)extraFiltersForType:(id)a3;
- (void)addForegroundRenderEffect:(id)a3;
- (void)addRenderEffect:(id)a3;
- (void)modifyForMasking;
- (void)overlayWithTraits:(id)a3;
- (void)removeAllRenderEffects;
@end

@implementation UIKBRenderTraits

+ (id)emptyTraits
{
  v2 = objc_alloc_init(UIKBRenderTraits);

  return v2;
}

+ (UIKBRenderTraits)traitsWithGeometry:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() emptyTraits];
  [v4 setGeometry:v3];

  return v4;
}

+ (UIKBRenderTraits)traitsWithSymbolStyle:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() emptyTraits];
  [v4 setSymbolStyle:v3];

  return v4;
}

- (void)addRenderEffect:(id)a3
{
  v4 = a3;
  renderEffects = self->_renderEffects;
  v8 = v4;
  if (!renderEffects)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_renderEffects;
    self->_renderEffects = v6;

    v4 = v8;
    renderEffects = self->_renderEffects;
  }

  [(NSMutableArray *)renderEffects addObject:v4];
}

- (void)addForegroundRenderEffect:(id)a3
{
  v4 = a3;
  foregroundRenderEffects = self->_foregroundRenderEffects;
  v8 = v4;
  if (!foregroundRenderEffects)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v7 = self->_foregroundRenderEffects;
    self->_foregroundRenderEffects = v6;

    v4 = v8;
    foregroundRenderEffects = self->_foregroundRenderEffects;
  }

  [(NSMutableArray *)foregroundRenderEffects addObject:v4];
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
  v4 = [(UIKBRenderTraits *)self geometry];

  if (v4)
  {
    v5 = [(UIKBRenderTraits *)self geometry];
    [v3 appendFormat:@"; geometry = %@", v5];
  }

  v6 = [(UIKBRenderTraits *)self backgroundGradient];

  if (v6)
  {
    v7 = [(UIKBRenderTraits *)self backgroundGradient];
    [v3 appendFormat:@"; backgroundGradient = %@", v7];
  }

  v8 = [(UIKBRenderTraits *)self layeredBackgroundGradient];

  if (v8)
  {
    v9 = [(UIKBRenderTraits *)self layeredBackgroundGradient];
    [v3 appendFormat:@"; layeredBackgroundGradient = %@", v9];
  }

  v10 = [(UIKBRenderTraits *)self layeredForegroundGradient];

  if (v10)
  {
    v11 = [(UIKBRenderTraits *)self layeredForegroundGradient];
    [v3 appendFormat:@"; layeredForegroundGradient = %@", v11];
  }

  v12 = [(UIKBRenderTraits *)self symbolStyle];

  if (v12)
  {
    v13 = [(UIKBRenderTraits *)self symbolStyle];
    [v3 appendFormat:@"; symbolStyle = %@", v13];
  }

  v14 = [(UIKBRenderTraits *)self fallbackSymbolStyle];

  if (v14)
  {
    v15 = [(UIKBRenderTraits *)self fallbackSymbolStyle];
    [v3 appendFormat:@"; fallbackSymbolStyle = %@", v15];
  }

  v16 = [(UIKBRenderTraits *)self secondarySymbolStyles];

  if (v16)
  {
    v17 = [(UIKBRenderTraits *)self secondarySymbolStyles];
    [v3 appendFormat:@"; secondarySymbolStyles = %@", v17];
  }

  v18 = [(UIKBRenderTraits *)self renderEffects];

  if (v18)
  {
    v19 = [(UIKBRenderTraits *)self renderEffects];
    [v3 appendFormat:@"; renderEffects = %@", v19];
  }

  v20 = [(UIKBRenderTraits *)self foregroundRenderEffects];

  if (v20)
  {
    v21 = [(UIKBRenderTraits *)self foregroundRenderEffects];
    [v3 appendFormat:@"; foregroundRenderEffects = %@", v21];
  }

  if ([(UIKBRenderTraits *)self blurBlending])
  {
    [v3 appendString:@"; blurBlending = YES"];
  }

  v22 = [(UIKBRenderTraits *)self blendForm];
  if ((v22 - 1) > 0xC)
  {
    v23 = @"None";
  }

  else
  {
    v23 = off_1E7114628[v22 - 1];
  }

  [v3 appendFormat:@"; blendForm = %@", v23];
  v24 = [(UIKBRenderTraits *)self renderFlags];

  if (v24)
  {
    v25 = [(UIKBRenderTraits *)self renderFlags];
    [v3 appendFormat:@"; renderFlags = %@", v25];
  }

  if ([(UIKBRenderTraits *)self renderSecondarySymbolsSeparately])
  {
    [v3 appendString:@"; renderSecondarySymbolsSeparately = YES"];
  }

  if ([(UIKBRenderTraits *)self renderFlagsForAboveEffects])
  {
    [v3 appendFormat:@"; renderFlagsForAboveEffects = %ld", -[UIKBRenderTraits renderFlagsForAboveEffects](self, "renderFlagsForAboveEffects")];
  }

  v26 = [(UIKBRenderTraits *)self hashString];
  [v3 appendFormat:@"; hashString = %@", v26];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    v18 = (objc_opt_isKindOfClass() & 1) != 0 && (geometry = self->_geometry, (v4->_geometry != 0) != (geometry == 0)) && (!geometry || [(UIKBRenderGeometry *)geometry isEqual:?]) && (backgroundGradient = self->_backgroundGradient, (backgroundGradient == 0) != (v4->_backgroundGradient != 0)) && (!backgroundGradient || [(UIKBGradient *)backgroundGradient isEqual:?]) && (layeredBackgroundGradient = self->_layeredBackgroundGradient, (layeredBackgroundGradient == 0) != (v4->_layeredBackgroundGradient != 0)) && (!layeredBackgroundGradient || [(UIKBGradient *)layeredBackgroundGradient isEqual:?]) && (layeredForegroundGradient = self->_layeredForegroundGradient, (layeredForegroundGradient == 0) != (v4->_layeredForegroundGradient != 0)) && (!layeredForegroundGradient || [(UIKBGradient *)layeredForegroundGradient isEqual:?]) && (symbolStyle = self->_symbolStyle, (symbolStyle == 0) != (v4->_symbolStyle != 0)) && (!symbolStyle || [(UIKBTextStyle *)symbolStyle isEqual:?]) && (fallbackSymbolStyle = self->_fallbackSymbolStyle, (fallbackSymbolStyle == 0) != (v4->_fallbackSymbolStyle != 0)) && (!fallbackSymbolStyle || [(UIKBTextStyle *)fallbackSymbolStyle isEqual:?]) && (secondarySymbolStyles = self->_secondarySymbolStyles, (secondarySymbolStyles == 0) != (v4->_secondarySymbolStyles != 0)) && (!secondarySymbolStyles || [(NSArray *)secondarySymbolStyles isEqualToArray:?]) && (renderEffects = self->_renderEffects, (renderEffects == 0) != (v4->_renderEffects != 0)) && (!renderEffects || [(NSMutableArray *)renderEffects isEqualToArray:?]) && (foregroundRenderEffects = self->_foregroundRenderEffects, (foregroundRenderEffects == 0) != (v4->_foregroundRenderEffects != 0)) && (!foregroundRenderEffects || [(NSMutableArray *)foregroundRenderEffects isEqualToArray:?]) && (variantGeometries = self->_variantGeometries, (variantGeometries == 0) != (v4->_variantGeometries != 0)) && (!variantGeometries || [(NSArray *)variantGeometries isEqualToArray:?]) && (variantTraits = self->_variantTraits, (variantTraits == 0) != (v4->_variantTraits != 0)) && (!variantTraits || [(UIKBRenderTraits *)variantTraits isEqual:?]) && (highlightedVariantTraits = self->_highlightedVariantTraits, (highlightedVariantTraits == 0) != (v4->_highlightedVariantTraits != 0)) && (!highlightedVariantTraits || [(UIKBRenderTraits *)highlightedVariantTraits isEqual:?]) && self->_controlOpacities == v4->_controlOpacities && self->_blurBlending == v4->_blurBlending && self->_blendForm == v4->_blendForm && ((renderFlags = self->_renderFlags) == 0 || [(NSArray *)renderFlags isEqualToArray:v4->_renderFlags]) && self->_renderSecondarySymbolsSeparately == v4->_renderSecondarySymbolsSeparately && self->_renderFlagsForAboveEffects == v4->_renderFlagsForAboveEffects;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
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
  v4 = [(UIKBRenderTraits *)self variantTraits];
  v5 = v4;
  if (highlightedVariantTraits)
  {
    v6 = [v4 copy];

    [v6 overlayWithTraits:self->_highlightedVariantTraits];
    v5 = v6;
  }

  return v5;
}

- (UIKBTextStyle)fallbackSymbolStyle
{
  fallbackSymbolStyle = self->_fallbackSymbolStyle;
  v4 = [(UIKBRenderTraits *)self symbolStyle];
  v5 = v4;
  if (fallbackSymbolStyle)
  {
    v6 = [v4 copy];

    [v6 overlayWithStyle:self->_fallbackSymbolStyle];
    v5 = v6;
  }

  return v5;
}

- (void)overlayWithTraits:(id)a3
{
  v4 = a3;
  v5 = [v4 geometry];

  if (v5)
  {
    v6 = [(UIKBRenderTraits *)self geometry];
    v7 = [v4 geometry];
    [v6 overlayWithGeometry:v7];
  }

  v8 = [v4 backgroundGradient];

  if (v8)
  {
    v9 = [v4 backgroundGradient];
    [(UIKBRenderTraits *)self setBackgroundGradient:v9];

    [(UIKBRenderTraits *)self setLayeredBackgroundGradient:0];
  }

  v10 = [v4 layeredBackgroundGradient];

  if (v10)
  {
    v11 = [v4 layeredBackgroundGradient];
    [(UIKBRenderTraits *)self setLayeredBackgroundGradient:v11];
  }

  v12 = [v4 layeredForegroundGradient];

  if (v12)
  {
    v13 = [v4 layeredForegroundGradient];
    [(UIKBRenderTraits *)self setLayeredForegroundGradient:v13];
  }

  v14 = [v4 symbolStyle];

  if (v14)
  {
    v15 = [(UIKBRenderTraits *)self symbolStyle];
    v16 = [v4 symbolStyle];
    [v15 overlayWithStyle:v16];
  }

  v17 = [v4 fallbackSymbolStyle];

  if (v17)
  {
    v18 = [(UIKBRenderTraits *)self fallbackSymbolStyle];
    v19 = [v4 fallbackSymbolStyle];
    [v18 overlayWithStyle:v19];
  }

  v20 = [v4 secondarySymbolStyles];

  if (v20)
  {
    v21 = [(UIKBRenderTraits *)self secondarySymbolStyles];

    if (v21)
    {
      v22 = [(UIKBRenderTraits *)self secondarySymbolStyles];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __38__UIKBRenderTraits_overlayWithTraits___block_invoke;
      v37[3] = &unk_1E71145E0;
      v38 = v4;
      [v22 enumerateObjectsUsingBlock:v37];
    }

    else
    {
      v23 = [v4 secondarySymbolStyles];
      [(UIKBRenderTraits *)self setSecondarySymbolStyles:v23];
    }
  }

  v24 = [v4 renderEffects];

  if (v24)
  {
    v25 = [v4 renderEffects];
    v26 = [v25 mutableCopy];
    renderEffects = self->_renderEffects;
    self->_renderEffects = v26;
  }

  v28 = [v4 foregroundRenderEffects];

  if (v28)
  {
    v29 = [v4 foregroundRenderEffects];
    v30 = [v29 mutableCopy];
    foregroundRenderEffects = self->_foregroundRenderEffects;
    self->_foregroundRenderEffects = v30;
  }

  v32 = [v4 variantTraits];

  if (v32)
  {
    v33 = [v4 variantTraits];
    [(UIKBRenderTraits *)self setVariantTraits:v33];
  }

  if (*(v4 + 13))
  {
    v34 = [v4 highlightedVariantTraits];
    [(UIKBRenderTraits *)self setHighlightedVariantTraits:v34];
  }

  if (([v4 controlOpacities] & 1) != 0 || *(v4 + 24) == 1)
  {
    -[UIKBRenderTraits setControlOpacities:](self, "setControlOpacities:", [v4 controlOpacities]);
  }

  if ([v4 blurBlending])
  {
    -[UIKBRenderTraits setBlurBlending:](self, "setBlurBlending:", [v4 blurBlending]);
  }

  if ([v4 blendForm])
  {
    -[UIKBRenderTraits setBlendForm:](self, "setBlendForm:", [v4 blendForm]);
  }

  v35 = [v4 renderFlags];

  if (v35)
  {
    v36 = [v4 renderFlags];
    [(UIKBRenderTraits *)self setRenderFlags:v36];
  }

  if ([v4 renderSecondarySymbolsSeparately])
  {
    -[UIKBRenderTraits setRenderSecondarySymbolsSeparately:](self, "setRenderSecondarySymbolsSeparately:", [v4 renderSecondarySymbolsSeparately]);
  }

  if ([v4 renderFlagsForAboveEffects])
  {
    -[UIKBRenderTraits setRenderFlagsForAboveEffects:](self, "setRenderFlagsForAboveEffects:", [v4 renderFlagsForAboveEffects]);
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
  v3 = [(UIKBRenderTraits *)self backgroundGradient];
  if (v3 || ([(UIKBRenderTraits *)self layeredBackgroundGradient], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_4:
    v4 = [UIKBGradient gradientWithFlatColor:@"UIKBColorBlack"];
    [(UIKBRenderTraits *)self setBackgroundGradient:v4];

    [(UIKBRenderTraits *)self setLayeredBackgroundGradient:0];
    [(UIKBRenderTraits *)self setLayeredForegroundGradient:0];
    goto LABEL_5;
  }

  v5 = [(UIKBRenderTraits *)self layeredForegroundGradient];

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(UIKBRenderTraits *)self removeAllRenderEffects];
  [(UIKBRenderTraits *)self setHashString:0];
  v6 = [(UIKBRenderTraits *)self variantTraits];
  [v6 modifyForMasking];
}

- (id)extraFiltersForType:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (*MEMORY[0x1E6979D78] == a3)
  {
    v5 = [MEMORY[0x1E6979378] filterWithType:?];
    v6 = [(UIKBRenderTraits *)self usesDarkAppearance];
    v7 = [(UIKBRenderTraits *)self blendForm];
    if (v6)
    {
      if (v7 == 10 || [(UIKBRenderTraits *)self blendForm]== 12)
      {
        v8 = MEMORY[0x1E696B098];
        v9 = &xmmword_18A67EFF8;
      }

      else
      {
        v17 = [(UIKBRenderTraits *)self controlOpacities];
        v8 = MEMORY[0x1E696B098];
        if (v17)
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
      if (v7 == 11 || [(UIKBRenderTraits *)self blendForm]== 13)
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
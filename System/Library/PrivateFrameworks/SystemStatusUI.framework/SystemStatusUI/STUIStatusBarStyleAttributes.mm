@interface STUIStatusBarStyleAttributes
+ (id)overriddenStyleAttributes;
+ (id)styleAttributesForStatusBar:(id)bar style:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRounded;
- (STUIStatusBarStyleAttributes)initWithCoder:(id)coder;
- (STUIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)overrides;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)fontForStyle:(int64_t)style;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUIStatusBarStyleAttributes

+ (id)overriddenStyleAttributes
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)isRounded
{
  font = [(STUIStatusBarStyleAttributes *)self font];
  UIFontDesign = CTFontGetUIFontDesign();

  LOBYTE(font) = [UIFontDesign isEqualToString:*MEMORY[0x277CC4978]];
  return font;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 2) = self->_style;
  *(v4 + 3) = self->_mode;
  objc_storeStrong(v4 + 4, self->_traitCollection);
  *(v4 + 5) = self->_effectiveLayoutDirection;
  *(v4 + 6) = *&self->_iconScale;
  *(v4 + 8) = self->_iconSize;
  *(v4 + 7) = self->_symbolScale;
  *(v4 + 8) = self->_scaledFixedWidthBar;
  [v4 setFont:self->_font];
  [v4 setEmphasizedFont:self->_emphasizedFont];
  [v4 setSmallFont:self->_smallFont];
  [v4 setTextColor:self->_textColor];
  [v4 setImageTintColor:self->_imageTintColor];
  [v4 setImageDimmedTintColor:self->_imageDimmedTintColor];
  v5 = [(NSArray *)self->_imageNamePrefixes copy];
  [v4 setImageNamePrefixes:v5];

  return v4;
}

- (STUIStatusBarStyleAttributes)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = STUIStatusBarStyleAttributes;
  coderCopy = coder;
  v4 = [(STUIStatusBarStyleAttributes *)&v16 init];
  v4->_style = [coderCopy decodeIntegerForKey:{@"style", v16.receiver, v16.super_class}];
  v4->_mode = [coderCopy decodeIntegerForKey:@"mode"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
  traitCollection = v4->_traitCollection;
  v4->_traitCollection = v5;

  v4->_effectiveLayoutDirection = [coderCopy decodeIntegerForKey:@"effectiveLayoutDirection"];
  [coderCopy decodeDoubleForKey:@"iconScale"];
  v4->_iconScale = v7;
  v4->_iconSize = [coderCopy decodeIntegerForKey:@"iconSize"];
  v4->_symbolScale = [coderCopy decodeIntegerForKey:@"symbolScale"];
  v4->_scaledFixedWidthBar = [coderCopy decodeBoolForKey:@"scaledFixedWidthBar"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"font"];
  [(STUIStatusBarStyleAttributes *)v4 setFont:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emphasizedFont"];
  [(STUIStatusBarStyleAttributes *)v4 setEmphasizedFont:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smallFont"];
  [(STUIStatusBarStyleAttributes *)v4 setSmallFont:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
  [(STUIStatusBarStyleAttributes *)v4 setTextColor:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageTintColor"];
  [(STUIStatusBarStyleAttributes *)v4 setImageTintColor:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDimmedTintColor"];
  [(STUIStatusBarStyleAttributes *)v4 setImageDimmedTintColor:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageNamePrefixes"];

  [(STUIStatusBarStyleAttributes *)v4 setImageNamePrefixes:v14];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [coderCopy encodeInteger:self->_effectiveLayoutDirection forKey:@"effectiveLayoutDirection"];
  [coderCopy encodeDouble:@"iconScale" forKey:self->_iconScale];
  [coderCopy encodeInteger:self->_iconSize forKey:@"iconSize"];
  [coderCopy encodeInteger:self->_symbolScale forKey:@"symbolScale"];
  [coderCopy encodeBool:self->_scaledFixedWidthBar forKey:@"scaledFixedWidthBar"];
  [coderCopy encodeObject:self->_font forKey:@"font"];
  [coderCopy encodeObject:self->_emphasizedFont forKey:@"emphasizedFont"];
  [coderCopy encodeObject:self->_smallFont forKey:@"smallFont"];
  [coderCopy encodeObject:self->_textColor forKey:@"textColor"];
  [coderCopy encodeObject:self->_imageTintColor forKey:@"imageTintColor"];
  [coderCopy encodeObject:self->_imageDimmedTintColor forKey:@"imageDimmedTintColor"];
  [coderCopy encodeObject:self->_imageNamePrefixes forKey:@"imageNamePrefixes"];
}

+ (id)styleAttributesForStatusBar:(id)bar style:(int64_t)style
{
  barCopy = bar;
  v7 = objc_alloc_init(self);
  *(v7 + 2) = style;
  *(v7 + 3) = [barCopy mode];
  *(v7 + 5) = [barCopy effectiveUserInterfaceLayoutDirection];
  *(v7 + 6) = 0x3FF0000000000000;
  *(v7 + 7) = 0;
  traitCollection = [barCopy traitCollection];
  [traitCollection displayScale];
  if (v9 == 0.0)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v12 = v11;
    v13 = objc_opt_self();
    v14 = [traitCollection traitCollectionByReplacingCGFloatValue:v13 forTrait:v12];

    traitCollection = v14;
  }

  objc_storeStrong(v7 + 4, traitCollection);
  [traitCollection displayScale];
  v16 = v15;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  if (userInterfaceIdiom == 1)
  {
    v19 = 14;
  }

  else if (userInterfaceIdiom == 3)
  {
    v19 = 16;
    if (v16 > 2.5)
    {
      v19 = 17;
    }
  }

  else if (v16 <= 2.5)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  *(v7 + 8) = v19;

  foregroundColor = [barCopy foregroundColor];

  if (foregroundColor)
  {
    foregroundColor2 = [barCopy foregroundColor];
    v22 = *(v7 + 12);
    *(v7 + 12) = foregroundColor2;

    foregroundColor3 = [barCopy foregroundColor];
    v24 = *(v7 + 13);
    *(v7 + 13) = foregroundColor3;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  style = [(STUIStatusBarStyleAttributes *)self style];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke;
  v80[3] = &unk_279D38A98;
  v8 = v6;
  v81 = v8;
  v9 = [v5 appendInteger:style counterpart:v80];
  mode = [(STUIStatusBarStyleAttributes *)self mode];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_2;
  v78[3] = &unk_279D38A98;
  v11 = v8;
  v79 = v11;
  v12 = [v5 appendInteger:mode counterpart:v78];
  traitCollection = [(STUIStatusBarStyleAttributes *)self traitCollection];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_3;
  v76[3] = &unk_279D39320;
  v14 = v11;
  v77 = v14;
  v15 = [v5 appendObject:traitCollection counterpart:v76];

  effectiveLayoutDirection = [(STUIStatusBarStyleAttributes *)self effectiveLayoutDirection];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_4;
  v74[3] = &unk_279D38A98;
  v17 = v14;
  v75 = v17;
  v18 = [v5 appendInteger:effectiveLayoutDirection counterpart:v74];
  [(STUIStatusBarStyleAttributes *)self iconScale];
  v20 = v19;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_5;
  v72[3] = &unk_279D38100;
  v21 = v17;
  v73 = v21;
  v22 = [v5 appendCGFloat:v72 counterpart:v20];
  iconSize = [(STUIStatusBarStyleAttributes *)self iconSize];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_6;
  v70[3] = &unk_279D38A98;
  v24 = v21;
  v71 = v24;
  v25 = [v5 appendInteger:iconSize counterpart:v70];
  symbolScale = [(STUIStatusBarStyleAttributes *)self symbolScale];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_7;
  v68[3] = &unk_279D38A98;
  v27 = v24;
  v69 = v27;
  v28 = [v5 appendInteger:symbolScale counterpart:v68];
  isScaledFixedWidthBar = [(STUIStatusBarStyleAttributes *)self isScaledFixedWidthBar];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_8;
  v66[3] = &unk_279D38128;
  v30 = v27;
  v67 = v30;
  v31 = [v5 appendBool:isScaledFixedWidthBar counterpart:v66];
  font = [(STUIStatusBarStyleAttributes *)self font];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_9;
  v64[3] = &unk_279D39320;
  v33 = v30;
  v65 = v33;
  v34 = [v5 appendObject:font counterpart:v64];

  emphasizedFont = [(STUIStatusBarStyleAttributes *)self emphasizedFont];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_10;
  v62[3] = &unk_279D39320;
  v36 = v33;
  v63 = v36;
  v37 = [v5 appendObject:emphasizedFont counterpart:v62];

  smallFont = [(STUIStatusBarStyleAttributes *)self smallFont];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_11;
  v60[3] = &unk_279D39320;
  v39 = v36;
  v61 = v39;
  v40 = [v5 appendObject:smallFont counterpart:v60];

  imageTintColor = [(STUIStatusBarStyleAttributes *)self imageTintColor];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_12;
  v58[3] = &unk_279D39320;
  v42 = v39;
  v59 = v42;
  v43 = [v5 appendObject:imageTintColor counterpart:v58];

  imageDimmedTintColor = [(STUIStatusBarStyleAttributes *)self imageDimmedTintColor];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_13;
  v56[3] = &unk_279D39320;
  v45 = v42;
  v57 = v45;
  v46 = [v5 appendObject:imageDimmedTintColor counterpart:v56];

  imageNamePrefixes = [(STUIStatusBarStyleAttributes *)self imageNamePrefixes];
  v51 = MEMORY[0x277D85DD0];
  v52 = 3221225472;
  v53 = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_14;
  v54 = &unk_279D39320;
  v55 = v45;
  v48 = v45;
  v49 = [v5 appendObject:imageNamePrefixes counterpart:&v51];

  LOBYTE(v45) = [v5 isEqual];
  return v45;
}

- (unint64_t)hash
{
  v36 = *MEMORY[0x277D85DE8];
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:{-[STUIStatusBarStyleAttributes style](self, "style")}];
  v5 = [builder appendInteger:{-[STUIStatusBarStyleAttributes mode](self, "mode")}];
  traitCollection = [(STUIStatusBarStyleAttributes *)self traitCollection];
  v7 = [builder appendObject:traitCollection];

  v8 = [builder appendInteger:{-[STUIStatusBarStyleAttributes effectiveLayoutDirection](self, "effectiveLayoutDirection")}];
  [(STUIStatusBarStyleAttributes *)self iconScale];
  v9 = [builder appendCGFloat:?];
  v10 = [builder appendInteger:{-[STUIStatusBarStyleAttributes iconSize](self, "iconSize")}];
  v11 = [builder appendInteger:{-[STUIStatusBarStyleAttributes symbolScale](self, "symbolScale")}];
  v12 = [builder appendBool:{-[STUIStatusBarStyleAttributes isScaledFixedWidthBar](self, "isScaledFixedWidthBar")}];
  font = [(STUIStatusBarStyleAttributes *)self font];
  v14 = [builder appendObject:font];

  emphasizedFont = [(STUIStatusBarStyleAttributes *)self emphasizedFont];
  v16 = [builder appendObject:emphasizedFont];

  smallFont = [(STUIStatusBarStyleAttributes *)self smallFont];
  v18 = [builder appendObject:smallFont];

  imageTintColor = [(STUIStatusBarStyleAttributes *)self imageTintColor];
  v20 = [builder appendObject:imageTintColor];

  imageDimmedTintColor = [(STUIStatusBarStyleAttributes *)self imageDimmedTintColor];
  v22 = [builder appendObject:imageDimmedTintColor];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  imageNamePrefixes = [(STUIStatusBarStyleAttributes *)self imageNamePrefixes];
  v24 = [imageNamePrefixes countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(imageNamePrefixes);
        }

        v28 = [builder appendString:*(*(&v31 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [imageNamePrefixes countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v25);
  }

  v29 = [builder hash];
  return v29;
}

- (STUIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)overrides
{
  overridesCopy = overrides;
  v5 = overridesCopy;
  if (!overridesCopy || overridesCopy == self)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(STUIStatusBarStyleAttributes *)self copy];
    [(STUIStatusBarStyleAttributes *)v5 iconScale];
    if (v7 > 0.0)
    {
      [(STUIStatusBarStyleAttributes *)v5 iconScale];
      [(STUIStatusBarStyleAttributes *)selfCopy setIconScale:?];
    }

    if ([(STUIStatusBarStyleAttributes *)v5 iconSize])
    {
      [(STUIStatusBarStyleAttributes *)selfCopy setIconSize:[(STUIStatusBarStyleAttributes *)v5 iconSize]];
    }

    if ([(STUIStatusBarStyleAttributes *)v5 symbolScale])
    {
      [(STUIStatusBarStyleAttributes *)selfCopy setSymbolScale:[(STUIStatusBarStyleAttributes *)v5 symbolScale]];
    }

    font = [(STUIStatusBarStyleAttributes *)v5 font];

    if (font)
    {
      font2 = [(STUIStatusBarStyleAttributes *)v5 font];
      [(STUIStatusBarStyleAttributes *)selfCopy setFont:font2];
    }

    emphasizedFont = [(STUIStatusBarStyleAttributes *)v5 emphasizedFont];

    if (emphasizedFont)
    {
      emphasizedFont2 = [(STUIStatusBarStyleAttributes *)v5 emphasizedFont];
      [(STUIStatusBarStyleAttributes *)selfCopy setEmphasizedFont:emphasizedFont2];
    }

    smallFont = [(STUIStatusBarStyleAttributes *)v5 smallFont];

    if (smallFont)
    {
      smallFont2 = [(STUIStatusBarStyleAttributes *)v5 smallFont];
      [(STUIStatusBarStyleAttributes *)selfCopy setSmallFont:smallFont2];
    }

    textColor = [(STUIStatusBarStyleAttributes *)v5 textColor];

    if (textColor)
    {
      textColor2 = [(STUIStatusBarStyleAttributes *)v5 textColor];
      [(STUIStatusBarStyleAttributes *)selfCopy setTextColor:textColor2];
    }

    imageTintColor = [(STUIStatusBarStyleAttributes *)v5 imageTintColor];

    if (imageTintColor)
    {
      imageTintColor2 = [(STUIStatusBarStyleAttributes *)v5 imageTintColor];
      [(STUIStatusBarStyleAttributes *)selfCopy setImageTintColor:imageTintColor2];
    }

    imageDimmedTintColor = [(STUIStatusBarStyleAttributes *)v5 imageDimmedTintColor];

    if (imageDimmedTintColor)
    {
      imageDimmedTintColor2 = [(STUIStatusBarStyleAttributes *)v5 imageDimmedTintColor];
      [(STUIStatusBarStyleAttributes *)selfCopy setImageDimmedTintColor:imageDimmedTintColor2];
    }

    imageNamePrefixes = [(STUIStatusBarStyleAttributes *)v5 imageNamePrefixes];

    if (imageNamePrefixes)
    {
      imageNamePrefixes2 = [(STUIStatusBarStyleAttributes *)v5 imageNamePrefixes];
      [(STUIStatusBarStyleAttributes *)selfCopy setImageNamePrefixes:imageNamePrefixes2];
    }
  }

  return selfCopy;
}

- (id)fontForStyle:(int64_t)style
{
  if (style == 2)
  {
    smallFont = [(STUIStatusBarStyleAttributes *)self smallFont];
  }

  else if (style == 1)
  {
    smallFont = [(STUIStatusBarStyleAttributes *)self emphasizedFont];
  }

  else
  {
    if (style)
    {
      goto LABEL_8;
    }

    smallFont = [(STUIStatusBarStyleAttributes *)self font];
  }

  a2 = smallFont;
LABEL_8:

  return a2;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STUIStatusBarStyleAttributes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarStyleAttributes *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STUIStatusBarStyleAttributes *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STUIStatusBarStyleAttributes *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  activeMultilinePrefix = [succinctDescriptionBuilder activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__STUIStatusBarStyleAttributes__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = succinctDescriptionBuilder;
  v13 = v9;
  selfCopy = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v12];

  v10 = v9;
  return v9;
}

void __80__STUIStatusBarStyleAttributes__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _UIStatusBarResolvedStyleDescription([*(a1 + 40) style]);
  [v2 appendString:v3 withName:@"style"];

  v4 = *(a1 + 32);
  v5 = STUIStatusBarModeDescription([*(a1 + 40) mode]);
  [v4 appendString:v5 withName:@"mode"];

  v6 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"effectiveLayoutDirection") == 1, @"isRTL"}];
  v7 = [*(a1 + 32) appendFloat:@"iconSize" withName:1 decimalPrecision:{objc_msgSend(*(a1 + 40), "iconSize")}];
  v8 = [*(a1 + 32) appendInteger:objc_msgSend(*(a1 + 40) withName:{"symbolScale"), @"symbolScale"}];
  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) traitCollection];
  v11 = [v9 appendObject:v10 withName:@"traitCollection"];

  v12 = *(a1 + 32);
  v13 = [*(a1 + 40) font];
  v14 = [v12 appendObject:v13 withName:@"font" skipIfNil:1];

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) emphasizedFont];
  v17 = [v15 appendObject:v16 withName:@"emphasizedFont" skipIfNil:1];

  v18 = *(a1 + 32);
  v19 = [*(a1 + 40) smallFont];
  v20 = [v18 appendObject:v19 withName:@"smallFont" skipIfNil:1];

  v21 = *(a1 + 32);
  v22 = [*(a1 + 40) textColor];
  v23 = [v21 appendObject:v22 withName:@"textColor" skipIfNil:1];

  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) imageTintColor];
  v26 = [v24 appendObject:v25 withName:@"imageTintColor" skipIfNil:1];

  v27 = *(a1 + 32);
  v28 = [*(a1 + 40) imageDimmedTintColor];
  v29 = [v27 appendObject:v28 withName:@"imageDimmedTintColor" skipIfNil:1];

  v30 = *(a1 + 32);
  v32 = [*(a1 + 40) imageNamePrefixes];
  v31 = [v32 componentsJoinedByString:{@", "}];
  [v30 appendString:v31 withName:@"imageNamePrefixes" skipIfEmpty:1];
}

@end
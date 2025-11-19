@interface STUIStatusBarStyleAttributes
+ (id)overriddenStyleAttributes;
+ (id)styleAttributesForStatusBar:(id)a3 style:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRounded;
- (STUIStatusBarStyleAttributes)initWithCoder:(id)a3;
- (STUIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)a3;
- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)fontForStyle:(int64_t)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STUIStatusBarStyleAttributes

+ (id)overriddenStyleAttributes
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)isRounded
{
  v2 = [(STUIStatusBarStyleAttributes *)self font];
  UIFontDesign = CTFontGetUIFontDesign();

  LOBYTE(v2) = [UIFontDesign isEqualToString:*MEMORY[0x277CC4978]];
  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (STUIStatusBarStyleAttributes)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = STUIStatusBarStyleAttributes;
  v3 = a3;
  v4 = [(STUIStatusBarStyleAttributes *)&v16 init];
  v4->_style = [v3 decodeIntegerForKey:{@"style", v16.receiver, v16.super_class}];
  v4->_mode = [v3 decodeIntegerForKey:@"mode"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
  traitCollection = v4->_traitCollection;
  v4->_traitCollection = v5;

  v4->_effectiveLayoutDirection = [v3 decodeIntegerForKey:@"effectiveLayoutDirection"];
  [v3 decodeDoubleForKey:@"iconScale"];
  v4->_iconScale = v7;
  v4->_iconSize = [v3 decodeIntegerForKey:@"iconSize"];
  v4->_symbolScale = [v3 decodeIntegerForKey:@"symbolScale"];
  v4->_scaledFixedWidthBar = [v3 decodeBoolForKey:@"scaledFixedWidthBar"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
  [(STUIStatusBarStyleAttributes *)v4 setFont:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"emphasizedFont"];
  [(STUIStatusBarStyleAttributes *)v4 setEmphasizedFont:v9];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"smallFont"];
  [(STUIStatusBarStyleAttributes *)v4 setSmallFont:v10];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
  [(STUIStatusBarStyleAttributes *)v4 setTextColor:v11];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageTintColor"];
  [(STUIStatusBarStyleAttributes *)v4 setImageTintColor:v12];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageDimmedTintColor"];
  [(STUIStatusBarStyleAttributes *)v4 setImageDimmedTintColor:v13];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageNamePrefixes"];

  [(STUIStatusBarStyleAttributes *)v4 setImageNamePrefixes:v14];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"style"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [v5 encodeInteger:self->_effectiveLayoutDirection forKey:@"effectiveLayoutDirection"];
  [v5 encodeDouble:@"iconScale" forKey:self->_iconScale];
  [v5 encodeInteger:self->_iconSize forKey:@"iconSize"];
  [v5 encodeInteger:self->_symbolScale forKey:@"symbolScale"];
  [v5 encodeBool:self->_scaledFixedWidthBar forKey:@"scaledFixedWidthBar"];
  [v5 encodeObject:self->_font forKey:@"font"];
  [v5 encodeObject:self->_emphasizedFont forKey:@"emphasizedFont"];
  [v5 encodeObject:self->_smallFont forKey:@"smallFont"];
  [v5 encodeObject:self->_textColor forKey:@"textColor"];
  [v5 encodeObject:self->_imageTintColor forKey:@"imageTintColor"];
  [v5 encodeObject:self->_imageDimmedTintColor forKey:@"imageDimmedTintColor"];
  [v5 encodeObject:self->_imageNamePrefixes forKey:@"imageNamePrefixes"];
}

+ (id)styleAttributesForStatusBar:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  *(v7 + 2) = a4;
  *(v7 + 3) = [v6 mode];
  *(v7 + 5) = [v6 effectiveUserInterfaceLayoutDirection];
  *(v7 + 6) = 0x3FF0000000000000;
  *(v7 + 7) = 0;
  v8 = [v6 traitCollection];
  [v8 displayScale];
  if (v9 == 0.0)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 scale];
    v12 = v11;
    v13 = objc_opt_self();
    v14 = [v8 traitCollectionByReplacingCGFloatValue:v13 forTrait:v12];

    v8 = v14;
  }

  objc_storeStrong(v7 + 4, v8);
  [v8 displayScale];
  v16 = v15;
  v17 = [MEMORY[0x277D75418] currentDevice];
  v18 = [v17 userInterfaceIdiom];
  if (v18 == 1)
  {
    v19 = 14;
  }

  else if (v18 == 3)
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

  v20 = [v6 foregroundColor];

  if (v20)
  {
    v21 = [v6 foregroundColor];
    v22 = *(v7 + 12);
    *(v7 + 12) = v21;

    v23 = [v6 foregroundColor];
    v24 = *(v7 + 13);
    *(v7 + 13) = v23;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  v7 = [(STUIStatusBarStyleAttributes *)self style];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke;
  v80[3] = &unk_279D38A98;
  v8 = v6;
  v81 = v8;
  v9 = [v5 appendInteger:v7 counterpart:v80];
  v10 = [(STUIStatusBarStyleAttributes *)self mode];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_2;
  v78[3] = &unk_279D38A98;
  v11 = v8;
  v79 = v11;
  v12 = [v5 appendInteger:v10 counterpart:v78];
  v13 = [(STUIStatusBarStyleAttributes *)self traitCollection];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_3;
  v76[3] = &unk_279D39320;
  v14 = v11;
  v77 = v14;
  v15 = [v5 appendObject:v13 counterpart:v76];

  v16 = [(STUIStatusBarStyleAttributes *)self effectiveLayoutDirection];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_4;
  v74[3] = &unk_279D38A98;
  v17 = v14;
  v75 = v17;
  v18 = [v5 appendInteger:v16 counterpart:v74];
  [(STUIStatusBarStyleAttributes *)self iconScale];
  v20 = v19;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_5;
  v72[3] = &unk_279D38100;
  v21 = v17;
  v73 = v21;
  v22 = [v5 appendCGFloat:v72 counterpart:v20];
  v23 = [(STUIStatusBarStyleAttributes *)self iconSize];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_6;
  v70[3] = &unk_279D38A98;
  v24 = v21;
  v71 = v24;
  v25 = [v5 appendInteger:v23 counterpart:v70];
  v26 = [(STUIStatusBarStyleAttributes *)self symbolScale];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_7;
  v68[3] = &unk_279D38A98;
  v27 = v24;
  v69 = v27;
  v28 = [v5 appendInteger:v26 counterpart:v68];
  v29 = [(STUIStatusBarStyleAttributes *)self isScaledFixedWidthBar];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_8;
  v66[3] = &unk_279D38128;
  v30 = v27;
  v67 = v30;
  v31 = [v5 appendBool:v29 counterpart:v66];
  v32 = [(STUIStatusBarStyleAttributes *)self font];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_9;
  v64[3] = &unk_279D39320;
  v33 = v30;
  v65 = v33;
  v34 = [v5 appendObject:v32 counterpart:v64];

  v35 = [(STUIStatusBarStyleAttributes *)self emphasizedFont];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_10;
  v62[3] = &unk_279D39320;
  v36 = v33;
  v63 = v36;
  v37 = [v5 appendObject:v35 counterpart:v62];

  v38 = [(STUIStatusBarStyleAttributes *)self smallFont];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_11;
  v60[3] = &unk_279D39320;
  v39 = v36;
  v61 = v39;
  v40 = [v5 appendObject:v38 counterpart:v60];

  v41 = [(STUIStatusBarStyleAttributes *)self imageTintColor];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_12;
  v58[3] = &unk_279D39320;
  v42 = v39;
  v59 = v42;
  v43 = [v5 appendObject:v41 counterpart:v58];

  v44 = [(STUIStatusBarStyleAttributes *)self imageDimmedTintColor];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_13;
  v56[3] = &unk_279D39320;
  v45 = v42;
  v57 = v45;
  v46 = [v5 appendObject:v44 counterpart:v56];

  v47 = [(STUIStatusBarStyleAttributes *)self imageNamePrefixes];
  v51 = MEMORY[0x277D85DD0];
  v52 = 3221225472;
  v53 = __40__STUIStatusBarStyleAttributes_isEqual___block_invoke_14;
  v54 = &unk_279D39320;
  v55 = v45;
  v48 = v45;
  v49 = [v5 appendObject:v47 counterpart:&v51];

  LOBYTE(v45) = [v5 isEqual];
  return v45;
}

- (unint64_t)hash
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendInteger:{-[STUIStatusBarStyleAttributes style](self, "style")}];
  v5 = [v3 appendInteger:{-[STUIStatusBarStyleAttributes mode](self, "mode")}];
  v6 = [(STUIStatusBarStyleAttributes *)self traitCollection];
  v7 = [v3 appendObject:v6];

  v8 = [v3 appendInteger:{-[STUIStatusBarStyleAttributes effectiveLayoutDirection](self, "effectiveLayoutDirection")}];
  [(STUIStatusBarStyleAttributes *)self iconScale];
  v9 = [v3 appendCGFloat:?];
  v10 = [v3 appendInteger:{-[STUIStatusBarStyleAttributes iconSize](self, "iconSize")}];
  v11 = [v3 appendInteger:{-[STUIStatusBarStyleAttributes symbolScale](self, "symbolScale")}];
  v12 = [v3 appendBool:{-[STUIStatusBarStyleAttributes isScaledFixedWidthBar](self, "isScaledFixedWidthBar")}];
  v13 = [(STUIStatusBarStyleAttributes *)self font];
  v14 = [v3 appendObject:v13];

  v15 = [(STUIStatusBarStyleAttributes *)self emphasizedFont];
  v16 = [v3 appendObject:v15];

  v17 = [(STUIStatusBarStyleAttributes *)self smallFont];
  v18 = [v3 appendObject:v17];

  v19 = [(STUIStatusBarStyleAttributes *)self imageTintColor];
  v20 = [v3 appendObject:v19];

  v21 = [(STUIStatusBarStyleAttributes *)self imageDimmedTintColor];
  v22 = [v3 appendObject:v21];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = [(STUIStatusBarStyleAttributes *)self imageNamePrefixes];
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = [v3 appendString:*(*(&v31 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v25);
  }

  v29 = [v3 hash];
  return v29;
}

- (STUIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || v4 == self)
  {
    v6 = self;
  }

  else
  {
    v6 = [(STUIStatusBarStyleAttributes *)self copy];
    [(STUIStatusBarStyleAttributes *)v5 iconScale];
    if (v7 > 0.0)
    {
      [(STUIStatusBarStyleAttributes *)v5 iconScale];
      [(STUIStatusBarStyleAttributes *)v6 setIconScale:?];
    }

    if ([(STUIStatusBarStyleAttributes *)v5 iconSize])
    {
      [(STUIStatusBarStyleAttributes *)v6 setIconSize:[(STUIStatusBarStyleAttributes *)v5 iconSize]];
    }

    if ([(STUIStatusBarStyleAttributes *)v5 symbolScale])
    {
      [(STUIStatusBarStyleAttributes *)v6 setSymbolScale:[(STUIStatusBarStyleAttributes *)v5 symbolScale]];
    }

    v8 = [(STUIStatusBarStyleAttributes *)v5 font];

    if (v8)
    {
      v9 = [(STUIStatusBarStyleAttributes *)v5 font];
      [(STUIStatusBarStyleAttributes *)v6 setFont:v9];
    }

    v10 = [(STUIStatusBarStyleAttributes *)v5 emphasizedFont];

    if (v10)
    {
      v11 = [(STUIStatusBarStyleAttributes *)v5 emphasizedFont];
      [(STUIStatusBarStyleAttributes *)v6 setEmphasizedFont:v11];
    }

    v12 = [(STUIStatusBarStyleAttributes *)v5 smallFont];

    if (v12)
    {
      v13 = [(STUIStatusBarStyleAttributes *)v5 smallFont];
      [(STUIStatusBarStyleAttributes *)v6 setSmallFont:v13];
    }

    v14 = [(STUIStatusBarStyleAttributes *)v5 textColor];

    if (v14)
    {
      v15 = [(STUIStatusBarStyleAttributes *)v5 textColor];
      [(STUIStatusBarStyleAttributes *)v6 setTextColor:v15];
    }

    v16 = [(STUIStatusBarStyleAttributes *)v5 imageTintColor];

    if (v16)
    {
      v17 = [(STUIStatusBarStyleAttributes *)v5 imageTintColor];
      [(STUIStatusBarStyleAttributes *)v6 setImageTintColor:v17];
    }

    v18 = [(STUIStatusBarStyleAttributes *)v5 imageDimmedTintColor];

    if (v18)
    {
      v19 = [(STUIStatusBarStyleAttributes *)v5 imageDimmedTintColor];
      [(STUIStatusBarStyleAttributes *)v6 setImageDimmedTintColor:v19];
    }

    v20 = [(STUIStatusBarStyleAttributes *)v5 imageNamePrefixes];

    if (v20)
    {
      v21 = [(STUIStatusBarStyleAttributes *)v5 imageNamePrefixes];
      [(STUIStatusBarStyleAttributes *)v6 setImageNamePrefixes:v21];
    }
  }

  return v6;
}

- (id)fontForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(STUIStatusBarStyleAttributes *)self smallFont];
  }

  else if (a3 == 1)
  {
    v3 = [(STUIStatusBarStyleAttributes *)self emphasizedFont];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = [(STUIStatusBarStyleAttributes *)self font];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

- (id)succinctDescription
{
  v2 = [(STUIStatusBarStyleAttributes *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarStyleAttributes *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STUIStatusBarStyleAttributes *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)a3 forDebug:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(STUIStatusBarStyleAttributes *)self succinctDescriptionBuilder];
  [v7 setUseDebugDescription:v4];
  [v7 setActiveMultilinePrefix:v6];

  v8 = [v7 activeMultilinePrefix];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__STUIStatusBarStyleAttributes__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
  v12[3] = &unk_279D38150;
  v9 = v7;
  v13 = v9;
  v14 = self;
  [v9 appendBodySectionWithName:0 multilinePrefix:v8 block:v12];

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
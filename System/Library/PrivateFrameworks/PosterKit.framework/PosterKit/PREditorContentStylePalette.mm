@interface PREditorContentStylePalette
+ (id)_additionalColorsForExtendedPalette;
+ (id)_condensedPaletteColors;
+ (id)_incomingCallRainbowTextStyle;
+ (id)_standardPaletteColors;
+ (id)addOrRemoveRainbowStyleIfNeededInStyles:(id)styles withPreferredMaterialType:(unint64_t)type role:(id)role;
+ (id)defaultPaletteForContext:(unint64_t)context preferredMaterialType:(unint64_t)type role:(id)role;
- (BOOL)displayingGlassStyles;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PREditorContentStylePalette)initWithBSXPCCoder:(id)coder;
- (PREditorContentStylePalette)initWithCoder:(id)coder;
- (PREditorContentStylePalette)initWithContentStyles:(id)styles context:(unint64_t)context role:(id)role localizedName:(id)name defaultPalette:(BOOL)palette;
- (id)withPreferredMaterialType:(unint64_t)type;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PREditorContentStylePalette

+ (id)_standardPaletteColors
{
  v17[12] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v16 = [MEMORY[0x1E69DC888] colorNamed:@"lightBlue" inBundle:v2 compatibleWithTraitCollection:0];
  v17[0] = v16;
  v15 = [MEMORY[0x1E69DC888] colorNamed:@"darkBlue" inBundle:v2 compatibleWithTraitCollection:0];
  v17[1] = v15;
  v14 = [MEMORY[0x1E69DC888] colorNamed:@"plum" inBundle:v2 compatibleWithTraitCollection:0];
  v17[2] = v14;
  v13 = [MEMORY[0x1E69DC888] colorNamed:@"magenta" inBundle:v2 compatibleWithTraitCollection:0];
  v17[3] = v13;
  v3 = [MEMORY[0x1E69DC888] colorNamed:@"pink" inBundle:v2 compatibleWithTraitCollection:0];
  v17[4] = v3;
  v4 = [MEMORY[0x1E69DC888] colorNamed:@"coral" inBundle:v2 compatibleWithTraitCollection:0];
  v17[5] = v4;
  v5 = [MEMORY[0x1E69DC888] colorNamed:@"orange" inBundle:v2 compatibleWithTraitCollection:0];
  v17[6] = v5;
  v6 = [MEMORY[0x1E69DC888] colorNamed:@"peach" inBundle:v2 compatibleWithTraitCollection:0];
  v17[7] = v6;
  v7 = [MEMORY[0x1E69DC888] colorNamed:@"yellow" inBundle:v2 compatibleWithTraitCollection:0];
  v17[8] = v7;
  v8 = [MEMORY[0x1E69DC888] colorNamed:@"greenYellow" inBundle:v2 compatibleWithTraitCollection:0];
  v17[9] = v8;
  v9 = [MEMORY[0x1E69DC888] colorNamed:@"lightGreen" inBundle:v2 compatibleWithTraitCollection:0];
  v17[10] = v9;
  v10 = [MEMORY[0x1E69DC888] colorNamed:@"green" inBundle:v2 compatibleWithTraitCollection:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  return v11;
}

+ (id)_condensedPaletteColors
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [MEMORY[0x1E69DC888] colorNamed:@"lightBlue" inBundle:v2 compatibleWithTraitCollection:0];
  v14[0] = v13;
  v3 = [MEMORY[0x1E69DC888] colorNamed:@"darkBlue" inBundle:v2 compatibleWithTraitCollection:0];
  v14[1] = v3;
  v4 = [MEMORY[0x1E69DC888] colorNamed:@"plum" inBundle:v2 compatibleWithTraitCollection:0];
  v14[2] = v4;
  v5 = [MEMORY[0x1E69DC888] colorNamed:@"magenta" inBundle:v2 compatibleWithTraitCollection:0];
  v14[3] = v5;
  v6 = [MEMORY[0x1E69DC888] colorNamed:@"coral" inBundle:v2 compatibleWithTraitCollection:0];
  v14[4] = v6;
  v7 = [MEMORY[0x1E69DC888] colorNamed:@"peach" inBundle:v2 compatibleWithTraitCollection:0];
  v14[5] = v7;
  v8 = [MEMORY[0x1E69DC888] colorNamed:@"yellow" inBundle:v2 compatibleWithTraitCollection:0];
  v14[6] = v8;
  v9 = [MEMORY[0x1E69DC888] colorNamed:@"lightGreen" inBundle:v2 compatibleWithTraitCollection:0];
  v14[7] = v9;
  v10 = [MEMORY[0x1E69DC888] colorNamed:@"green" inBundle:v2 compatibleWithTraitCollection:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  return v11;
}

+ (id)_additionalColorsForExtendedPalette
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedGreen" inBundle:v2 compatibleWithTraitCollection:0];
  v11[0] = v3;
  v4 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedBlue" inBundle:v2 compatibleWithTraitCollection:0];
  v11[1] = v4;
  v5 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedPurple" inBundle:v2 compatibleWithTraitCollection:0];
  v11[2] = v5;
  v6 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedBrown" inBundle:v2 compatibleWithTraitCollection:0];
  v11[3] = v6;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v11[4] = whiteColor;
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v11[5] = blackColor;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  return v9;
}

+ (id)_incomingCallRainbowTextStyle
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] colorWithRed:0.250980392 green:0.878431373 blue:0.815686275 alpha:1.0];
  v3 = [MEMORY[0x1E69DC888] colorWithRed:0.250980392 green:0.878431373 blue:0.815686275 alpha:{1.0, v2}];
  v12[1] = v3;
  v4 = [MEMORY[0x1E69DC888] colorWithRed:0.564705882 green:0.835294118 blue:0.294117647 alpha:1.0];
  v12[2] = v4;
  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.8 blue:0.0 alpha:1.0];
  v12[3] = v5;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.68627451 blue:0.0 alpha:1.0];
  v12[4] = v6;
  v7 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.470588235 blue:0.156862745 alpha:1.0];
  v12[5] = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.282352941 blue:0.294117647 alpha:1.0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = [[PRPosterContentGradientStyle alloc] initWithColors:v9 gradientType:0 locations:&unk_1F1C6BC80 startPoint:0.0 endPoint:0.5, 1.0, 0.5];

  return v10;
}

+ (id)defaultPaletteForContext:(unint64_t)context preferredMaterialType:(unint64_t)type role:(id)role
{
  v22[2] = *MEMORY[0x1E69E9840];
  roleCopy = role;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    [self _condensedPaletteColors];
  }

  else
  {
    [self _standardPaletteColors];
  }
  v10 = ;

  if (context == 2)
  {
    v11 = [[PRPosterContentVibrantMaterialStyle alloc] initWithPreferredMaterialType:type];
    v22[0] = v11;
    v12 = [[PRPosterContentVibrantMonochromeStyle alloc] initWithBackgroundType:1 preferredMaterialType:type];
    v22[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

    v14 = [objc_opt_class() addOrRemoveRainbowStyleIfNeededInStyles:v13 withPreferredMaterialType:type role:roleCopy];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __83__PREditorContentStylePalette_defaultPaletteForContext_preferredMaterialType_role___block_invoke;
    v21[3] = &__block_descriptor_40_e17__16__0__UIColor_8l;
    v21[4] = type;
    v15 = [v10 bs_map:v21];
    v16 = [v14 arrayByAddingObjectsFromArray:v15];
  }

  else
  {
    _additionalColorsForExtendedPalette = [self _additionalColorsForExtendedPalette];
    v18 = [v10 arrayByAddingObjectsFromArray:_additionalColorsForExtendedPalette];

    v16 = [v18 bs_map:&__block_literal_global_32];
  }

  v19 = [[self alloc] initWithContentStyles:v16 context:context role:roleCopy localizedName:0 defaultPalette:1];

  return v19;
}

PRPosterContentDiscreteColorsStyle *__83__PREditorContentStylePalette_defaultPaletteForContext_preferredMaterialType_role___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [PRPosterContentDiscreteColorsStyle alloc];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v6 = [(PRPosterContentDiscreteColorsStyle *)v4 initWithVibrantColors:v5 variation:*(a1 + 32) preferredMaterialType:0.0];

  return v6;
}

PRPosterContentDiscreteColorsStyle *__83__PREditorContentStylePalette_defaultPaletteForContext_preferredMaterialType_role___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [PRPosterContentDiscreteColorsStyle alloc];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = [(PRPosterContentDiscreteColorsStyle *)v3 initWithOpaqueColors:v4 variation:0.0];

  return v5;
}

- (PREditorContentStylePalette)initWithContentStyles:(id)styles context:(unint64_t)context role:(id)role localizedName:(id)name defaultPalette:(BOOL)palette
{
  stylesCopy = styles;
  roleCopy = role;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = PREditorContentStylePalette;
  v16 = [(PREditorContentStylePalette *)&v20 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    localizedName = v16->_localizedName;
    v16->_localizedName = v17;

    objc_storeStrong(&v16->_styles, styles);
    v16->_context = context;
    objc_storeStrong(&v16->_role, role);
    v16->_defaultPalette = palette;
  }

  return v16;
}

- (id)withPreferredMaterialType:(unint64_t)type
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_styles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v26;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v25 + 1) + 8 * v10);

        if ([v8 conformsToProtocol:&unk_1F1C8ED30])
        {
          v12 = v8;
          v13 = [v12 copyWithPreferredMaterial:type];
          v14 = [v4 arrayByAddingObject:v13];

          v4 = v14;
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  if (self->_defaultPalette)
  {
    v15 = objc_opt_class();
    role = [(PREditorContentStylePalette *)self role];
    v17 = [v15 addOrRemoveRainbowStyleIfNeededInStyles:v4 withPreferredMaterialType:type role:role];

    v4 = v17;
  }

  v18 = [PREditorContentStylePalette alloc];
  context = [(PREditorContentStylePalette *)self context];
  role2 = [(PREditorContentStylePalette *)self role];
  localizedName = [(PREditorContentStylePalette *)self localizedName];
  v22 = [(PREditorContentStylePalette *)v18 initWithContentStyles:v4 context:context role:role2 localizedName:localizedName defaultPalette:[(PREditorContentStylePalette *)self isDefaultPalette]];

  return v22;
}

+ (id)addOrRemoveRainbowStyleIfNeededInStyles:(id)styles withPreferredMaterialType:(unint64_t)type role:(id)role
{
  stylesCopy = styles;
  roleCopy = role;
  if (_os_feature_enabled_impl())
  {
    v9 = [roleCopy isEqualToString:@"PRPosterRoleIncomingCall"];
  }

  else
  {
    v9 = 0;
  }

  if (_os_feature_enabled_impl())
  {
    v10 = [roleCopy isEqualToString:@"PRPosterRoleLockScreen"];
  }

  else
  {
    v10 = 0;
  }

  _incomingCallRainbowTextStyle = [objc_opt_class() _incomingCallRainbowTextStyle];
  if (v9)
  {
    if (type != 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (type == 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([stylesCopy containsObject:_incomingCallRainbowTextStyle])
  {
LABEL_15:
    if ([stylesCopy containsObject:_incomingCallRainbowTextStyle])
    {
      v13 = [stylesCopy mutableCopy];
      [v13 removeObject:_incomingCallRainbowTextStyle];
      v14 = [v13 copy];

      goto LABEL_21;
    }

    v15 = stylesCopy;
    goto LABEL_20;
  }

  v16 = [stylesCopy indexOfObjectPassingTest:&__block_literal_global_171];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [stylesCopy arrayByAddingObject:_incomingCallRainbowTextStyle];
LABEL_20:
    v14 = v15;
    goto LABEL_21;
  }

  v18 = v16 + 1;
  v19 = [stylesCopy subarrayWithRange:{0, v16 + 1}];
  v20 = [v19 arrayByAddingObject:_incomingCallRainbowTextStyle];

  v21 = [stylesCopy subarrayWithRange:{v18, objc_msgSend(stylesCopy, "count") - v18}];
  v14 = [v20 arrayByAddingObjectsFromArray:v21];

LABEL_21:

  return v14;
}

uint64_t __102__PREditorContentStylePalette_addOrRemoveRainbowStyleIfNeededInStyles_withPreferredMaterialType_role___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)displayingGlassStyles
{
  if (!PUIFeatureEnabled())
  {
    return 0;
  }

  if (!PUIFeatureEnabled())
  {
    return 0;
  }

  role = [(PREditorContentStylePalette *)self role];
  v4 = [role isEqual:@"PRPosterRoleLockScreen"];

  if (!v4)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_styles bs_firstObjectPassingTest:&__block_literal_global_174];
  v6 = v5 == 0;

  return v6;
}

uint64_t __52__PREditorContentStylePalette_displayingGlassStyles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F1C8ED30])
  {
    v3 = [v2 supportsGlassAppearance] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      localizedName = [(PREditorContentStylePalette *)self localizedName];
      localizedName2 = [(PREditorContentStylePalette *)v7 localizedName];
      v10 = BSEqualStrings();

      if (v10)
      {
        styles = [(PREditorContentStylePalette *)self styles];
        styles2 = [(PREditorContentStylePalette *)v7 styles];
        v13 = BSEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  styles = [(PREditorContentStylePalette *)self styles];
  v4 = [styles hash];
  localizedName = [(PREditorContentStylePalette *)self localizedName];
  v6 = [localizedName hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __42__PREditorContentStylePalette_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v19 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [(PREditorContentStylePalette *)self styles];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v14 + 1) + 8 * v9) type] == 999)
        {
          v13 = v5;
          goto LABEL_13;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  styles = [(PREditorContentStylePalette *)self styles];
  [coderCopy encodeObject:styles forKey:@"styles"];

  role = self->_role;
  if (role)
  {
    [coderCopy encodeObject:role forKey:@"role"];
  }

  localizedName = [(PREditorContentStylePalette *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorContentStylePalette context](self, "context")}];
  [coderCopy encodeObject:v13 forKey:@"context"];
LABEL_13:
}

- (PREditorContentStylePalette)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  if (unsignedIntegerValue)
  {
    selfCopy = [objc_opt_class() defaultPaletteForContext:unsignedIntegerValue role:v7];
  }

  else
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = PRPosterContentStyleClasses();
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeArrayOfObjectsOfClasses:v11 forKey:@"styles"];

    v13 = objc_opt_self();
    v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"localizedName"];

    self = [(PREditorContentStylePalette *)self initWithContentStyles:v12 context:0 role:v7 localizedName:v14 defaultPalette:0];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v33 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [(PREditorContentStylePalette *)self styles];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v27 + 1) + 8 * i) type] == 999)
        {
          v21 = v5;
          goto LABEL_20;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
  [coderCopy encodeObject:v10 forKey:@"styleCount"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = v5;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"style%ld", v14];
        [coderCopy encodeObject:v17 forKey:v18];
        ++v14;
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  role = self->_role;
  if (role)
  {
    [coderCopy encodeObject:role forKey:@"role"];
  }

  localizedName = [(PREditorContentStylePalette *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorContentStylePalette context](self, "context")}];
  [coderCopy encodeObject:v21 forKey:@"context"];
  v5 = v22;
LABEL_20:
}

- (PREditorContentStylePalette)initWithBSXPCCoder:(id)coder
{
  v36 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  v7 = 0x1E696A000uLL;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"role"];
  v9 = v8;
  if (unsignedIntegerValue)
  {
    selfCopy2 = [objc_opt_class() defaultPaletteForContext:unsignedIntegerValue role:v8];
  }

  else
  {
    v27 = v8;
    selfCopy = self;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styleCount"];
    integerValue = [v11 integerValue];

    array = [MEMORY[0x1E695DF70] array];
    v30 = PRPosterContentStyleClasses();
    if (integerValue)
    {
      for (i = 0; i != integerValue; ++i)
      {
        v14 = v7;
        v15 = [*(v7 + 3776) stringWithFormat:@"style%ld", i];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v16 = v30;
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [coderCopy decodeObjectOfClass:*(*(&v31 + 1) + 8 * j) forKey:v15];
              if (v21)
              {
                v22 = v21;
                [array addObject:v21];

                goto LABEL_15;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v35 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:

        v7 = v14;
      }
    }

    v23 = objc_opt_self();
    v24 = [coderCopy decodeObjectOfClass:v23 forKey:@"localizedName"];

    v25 = [array copy];
    v9 = v27;
    self = [(PREditorContentStylePalette *)selfCopy initWithContentStyles:v25 context:0 role:v27 localizedName:v24 defaultPalette:0];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  context = [(PREditorContentStylePalette *)self context];
  if (context > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7844D10[context];
  }

  [formatterCopy appendString:v6 withName:@"context"];
  role = [(PREditorContentStylePalette *)self role];
  [formatterCopy appendString:role withName:@"role"];

  styles = [(PREditorContentStylePalette *)self styles];
  v9 = [formatterCopy appendObject:styles withName:@"styles"];

  localizedName = [(PREditorContentStylePalette *)self localizedName];
  [formatterCopy appendString:localizedName withName:@"localizedName" skipIfEmpty:1];
}

@end
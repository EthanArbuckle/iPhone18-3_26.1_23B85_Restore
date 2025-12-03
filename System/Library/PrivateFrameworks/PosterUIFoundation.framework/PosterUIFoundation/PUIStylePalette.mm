@interface PUIStylePalette
+ (id)_additionalColorsForExtendedPalette;
+ (id)_condensedPaletteColors;
+ (id)_incomingCallRainbowTextStyle;
+ (id)_standardPaletteColors;
+ (id)defaultPaletteForContext:(unint64_t)context role:(id)role;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUIStylePalette)initWithBSXPCCoder:(id)coder;
- (PUIStylePalette)initWithCoder:(id)coder;
- (PUIStylePalette)initWithStyles:(id)styles context:(unint64_t)context role:(id)role localizedName:(id)name defaultPalette:(BOOL)palette;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUIStylePalette

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

  v10 = [[PUIStyleGradient alloc] initWithColors:v9 gradientType:0 locations:&unk_1F1C92C80 startPoint:0.0 endPoint:0.5, 1.0, 0.5];

  return v10;
}

+ (id)defaultPaletteForContext:(unint64_t)context role:(id)role
{
  v21[2] = *MEMORY[0x1E69E9840];
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
  v8 = ;

  if (context == 2)
  {
    v9 = objc_alloc_init(PUIStyleVibrantMaterial);
    v21[0] = v9;
    v10 = objc_alloc_init(PUIStyleVibrantMonochrome);
    v21[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];

    if (_os_feature_enabled_impl())
    {
      v12 = [roleCopy isEqualToString:*MEMORY[0x1E69C5218]];
    }

    else
    {
      v12 = 0;
    }

    v16 = _os_feature_enabled_impl();
    if (v16)
    {
      v16 = [roleCopy isEqualToString:*MEMORY[0x1E69C5220]];
    }

    if ((v12 | v16))
    {
      _incomingCallRainbowTextStyle = [objc_opt_class() _incomingCallRainbowTextStyle];
      v18 = [v11 arrayByAddingObject:_incomingCallRainbowTextStyle];

      v11 = v18;
    }

    v14 = [v8 bs_map:&__block_literal_global_7];
    v15 = [v11 arrayByAddingObjectsFromArray:v14];
  }

  else
  {
    _additionalColorsForExtendedPalette = [self _additionalColorsForExtendedPalette];
    v14 = [v8 arrayByAddingObjectsFromArray:_additionalColorsForExtendedPalette];

    v15 = [v14 bs_map:&__block_literal_global_70];
  }

  v19 = [[self alloc] initWithStyles:v15 context:context role:roleCopy localizedName:0 defaultPalette:1];

  return v19;
}

PUIStyleDiscreteColors *__49__PUIStylePalette_defaultPaletteForContext_role___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [PUIStyleDiscreteColors alloc];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = [(PUIStyleDiscreteColors *)v3 initWithVibrantColors:v4 variation:0.0];

  return v5;
}

PUIStyleDiscreteColors *__49__PUIStylePalette_defaultPaletteForContext_role___block_invoke_2(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [PUIStyleDiscreteColors alloc];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = [(PUIStyleDiscreteColors *)v3 initWithOpaqueColors:v4 variation:0.0];

  return v5;
}

- (PUIStylePalette)initWithStyles:(id)styles context:(unint64_t)context role:(id)role localizedName:(id)name defaultPalette:(BOOL)palette
{
  stylesCopy = styles;
  roleCopy = role;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = PUIStylePalette;
  v16 = [(PUIStylePalette *)&v20 init];
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
      localizedName = [(PUIStylePalette *)self localizedName];
      localizedName2 = [(PUIStylePalette *)v7 localizedName];
      v10 = BSEqualStrings();

      if (v10)
      {
        styles = [(PUIStylePalette *)self styles];
        styles2 = [(PUIStylePalette *)v7 styles];
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
  styles = [(PUIStylePalette *)self styles];
  v4 = [styles hash];
  localizedName = [(PUIStylePalette *)self localizedName];
  v6 = [localizedName hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __30__PUIStylePalette_description__block_invoke;
  v10 = &unk_1E78548A0;
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
  [(PUIStylePalette *)self styles];
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

  styles = [(PUIStylePalette *)self styles];
  [coderCopy encodeObject:styles forKey:@"styles"];

  role = self->_role;
  if (role)
  {
    [coderCopy encodeObject:role forKey:@"role"];
  }

  localizedName = [(PUIStylePalette *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStylePalette context](self, "context")}];
  [coderCopy encodeObject:v13 forKey:@"context"];
LABEL_13:
}

- (PUIStylePalette)initWithCoder:(id)coder
{
  v16[6] = *MEMORY[0x1E69E9840];
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
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v16[3] = objc_opt_class();
    v16[4] = objc_opt_class();
    v16[5] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:6];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeArrayOfObjectsOfClasses:v11 forKey:@"styles"];

    v13 = objc_opt_self();
    v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"localizedName"];

    self = [(PUIStylePalette *)self initWithStyles:v12 context:0 role:v7 localizedName:v14 defaultPalette:0];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v33 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [(PUIStylePalette *)self styles];
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

  localizedName = [(PUIStylePalette *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStylePalette context](self, "context")}];
  [coderCopy encodeObject:v21 forKey:@"context"];
  v5 = v22;
LABEL_20:
}

- (PUIStylePalette)initWithBSXPCCoder:(id)coder
{
  v37[5] = *MEMORY[0x1E69E9840];
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
    v28 = v8;
    selfCopy = self;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"styleCount"];
    integerValue = [v11 integerValue];

    array = [MEMORY[0x1E695DF70] array];
    v37[0] = objc_opt_class();
    v37[1] = objc_opt_class();
    v37[2] = objc_opt_class();
    v37[3] = objc_opt_class();
    v37[4] = objc_opt_class();
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
    if (integerValue)
    {
      v13 = integerValue;
      for (i = 0; i != v13; ++i)
      {
        v15 = v7;
        v16 = [*(v7 + 3776) stringWithFormat:@"style%ld", i];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v17 = v31;
        v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v33;
          while (2)
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v33 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [coderCopy decodeObjectOfClass:*(*(&v32 + 1) + 8 * j) forKey:v16];
              if (v22)
              {
                v23 = v22;
                [array addObject:v22];

                goto LABEL_15;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }
        }

LABEL_15:

        v7 = v15;
      }
    }

    v24 = objc_opt_self();
    v25 = [coderCopy decodeObjectOfClass:v24 forKey:@"localizedName"];

    v26 = [array copy];
    v9 = v28;
    self = [(PUIStylePalette *)selfCopy initWithStyles:v26 context:0 role:v28 localizedName:v25 defaultPalette:0];

    selfCopy2 = self;
  }

  return selfCopy2;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  context = [(PUIStylePalette *)self context];
  if (context > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E78548C0[context];
  }

  [formatterCopy appendString:v6 withName:@"context"];
  role = [(PUIStylePalette *)self role];
  [formatterCopy appendString:role withName:@"role"];

  styles = [(PUIStylePalette *)self styles];
  v9 = [formatterCopy appendObject:styles withName:@"styles"];

  localizedName = [(PUIStylePalette *)self localizedName];
  [formatterCopy appendString:localizedName withName:@"localizedName" skipIfEmpty:1];
}

@end
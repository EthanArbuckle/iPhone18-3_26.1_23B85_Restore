@interface PREditorColorPalette
+ (id)additionalColorsForExtendedPalette;
+ (id)condensedPalette;
+ (id)condensedPaletteColors;
+ (id)extendedPalette;
+ (id)standardPalette;
+ (id)standardPaletteColors;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PREditorColorPalette)initWithBSXPCCoder:(id)coder;
- (PREditorColorPalette)initWithCoder:(id)coder;
- (PREditorColorPalette)initWithPickerColors:(id)colors colors:(id)a4 localizedName:(id)name paletteType:(unint64_t)type showsColorWell:(BOOL)well;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)generatePickerColorsIfNeededForContext:(unint64_t)context;
@end

@implementation PREditorColorPalette

+ (id)standardPaletteColors
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PREditorColorPalette_standardPaletteColors__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (standardPaletteColors_onceToken != -1)
  {
    dispatch_once(&standardPaletteColors_onceToken, block);
  }

  v2 = standardPaletteColors_posterColors;

  return v2;
}

void __45__PREditorColorPalette_standardPaletteColors__block_invoke()
{
  v16[12] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v15 = [MEMORY[0x1E69DC888] colorNamed:@"lightBlue" inBundle:v0 compatibleWithTraitCollection:0];
  v16[0] = v15;
  v14 = [MEMORY[0x1E69DC888] colorNamed:@"darkBlue" inBundle:v0 compatibleWithTraitCollection:0];
  v16[1] = v14;
  v13 = [MEMORY[0x1E69DC888] colorNamed:@"plum" inBundle:v0 compatibleWithTraitCollection:0];
  v16[2] = v13;
  v12 = [MEMORY[0x1E69DC888] colorNamed:@"magenta" inBundle:v0 compatibleWithTraitCollection:0];
  v16[3] = v12;
  v1 = [MEMORY[0x1E69DC888] colorNamed:@"pink" inBundle:v0 compatibleWithTraitCollection:0];
  v16[4] = v1;
  v2 = [MEMORY[0x1E69DC888] colorNamed:@"coral" inBundle:v0 compatibleWithTraitCollection:0];
  v16[5] = v2;
  v3 = [MEMORY[0x1E69DC888] colorNamed:@"orange" inBundle:v0 compatibleWithTraitCollection:0];
  v16[6] = v3;
  v4 = [MEMORY[0x1E69DC888] colorNamed:@"peach" inBundle:v0 compatibleWithTraitCollection:0];
  v16[7] = v4;
  v5 = [MEMORY[0x1E69DC888] colorNamed:@"yellow" inBundle:v0 compatibleWithTraitCollection:0];
  v16[8] = v5;
  v6 = [MEMORY[0x1E69DC888] colorNamed:@"greenYellow" inBundle:v0 compatibleWithTraitCollection:0];
  v16[9] = v6;
  v7 = [MEMORY[0x1E69DC888] colorNamed:@"lightGreen" inBundle:v0 compatibleWithTraitCollection:0];
  v16[10] = v7;
  v8 = [MEMORY[0x1E69DC888] colorNamed:@"green" inBundle:v0 compatibleWithTraitCollection:0];
  v16[11] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:12];

  v10 = [v9 bs_map:&__block_literal_global_18];
  v11 = standardPaletteColors_posterColors;
  standardPaletteColors_posterColors = v10;
}

PRPosterColor *__45__PREditorColorPalette_standardPaletteColors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterColor alloc] initWithColor:v2];

  return v3;
}

+ (id)condensedPaletteColors
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PREditorColorPalette_condensedPaletteColors__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (condensedPaletteColors_onceToken != -1)
  {
    dispatch_once(&condensedPaletteColors_onceToken, block);
  }

  v2 = condensedPaletteColors_posterColors;

  return v2;
}

void __46__PREditorColorPalette_condensedPaletteColors__block_invoke()
{
  v13[9] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v12 = [MEMORY[0x1E69DC888] colorNamed:@"lightBlue" inBundle:v0 compatibleWithTraitCollection:0];
  v13[0] = v12;
  v1 = [MEMORY[0x1E69DC888] colorNamed:@"darkBlue" inBundle:v0 compatibleWithTraitCollection:0];
  v13[1] = v1;
  v2 = [MEMORY[0x1E69DC888] colorNamed:@"plum" inBundle:v0 compatibleWithTraitCollection:0];
  v13[2] = v2;
  v3 = [MEMORY[0x1E69DC888] colorNamed:@"magenta" inBundle:v0 compatibleWithTraitCollection:0];
  v13[3] = v3;
  v4 = [MEMORY[0x1E69DC888] colorNamed:@"coral" inBundle:v0 compatibleWithTraitCollection:0];
  v13[4] = v4;
  v5 = [MEMORY[0x1E69DC888] colorNamed:@"peach" inBundle:v0 compatibleWithTraitCollection:0];
  v13[5] = v5;
  v6 = [MEMORY[0x1E69DC888] colorNamed:@"yellow" inBundle:v0 compatibleWithTraitCollection:0];
  v13[6] = v6;
  v7 = [MEMORY[0x1E69DC888] colorNamed:@"lightGreen" inBundle:v0 compatibleWithTraitCollection:0];
  v13[7] = v7;
  v8 = [MEMORY[0x1E69DC888] colorNamed:@"green" inBundle:v0 compatibleWithTraitCollection:0];
  v13[8] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:9];

  v10 = [v9 bs_map:&__block_literal_global_40];
  v11 = condensedPaletteColors_posterColors;
  condensedPaletteColors_posterColors = v10;
}

PRPosterColor *__46__PREditorColorPalette_condensedPaletteColors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterColor alloc] initWithColor:v2];

  return v3;
}

+ (id)additionalColorsForExtendedPalette
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__PREditorColorPalette_additionalColorsForExtendedPalette__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (additionalColorsForExtendedPalette_onceToken != -1)
  {
    dispatch_once(&additionalColorsForExtendedPalette_onceToken, block);
  }

  v2 = additionalColorsForExtendedPalette_posterColors;

  return v2;
}

void __58__PREditorColorPalette_additionalColorsForExtendedPalette__block_invoke()
{
  v10[6] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedGreen" inBundle:v0 compatibleWithTraitCollection:0];
  v10[0] = v1;
  v2 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedBlue" inBundle:v0 compatibleWithTraitCollection:0];
  v10[1] = v2;
  v3 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedPurple" inBundle:v0 compatibleWithTraitCollection:0];
  v10[2] = v3;
  v4 = [MEMORY[0x1E69DC888] colorNamed:@"desaturatedBrown" inBundle:v0 compatibleWithTraitCollection:0];
  v10[3] = v4;
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v10[4] = v5;
  v6 = [MEMORY[0x1E69DC888] blackColor];
  v10[5] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  v8 = [v7 bs_map:&__block_literal_global_54_0];
  v9 = additionalColorsForExtendedPalette_posterColors;
  additionalColorsForExtendedPalette_posterColors = v8;
}

PRPosterColor *__58__PREditorColorPalette_additionalColorsForExtendedPalette__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterColor alloc] initWithColor:v2];

  return v3;
}

+ (id)standardPalette
{
  v3 = [self alloc];
  standardPaletteColors = [self standardPaletteColors];
  v5 = [v3 initWithPickerColors:0 colors:standardPaletteColors localizedName:0 paletteType:0 showsColorWell:0];

  return v5;
}

+ (id)extendedPalette
{
  standardPaletteColors = [self standardPaletteColors];
  additionalColorsForExtendedPalette = [self additionalColorsForExtendedPalette];
  v5 = [standardPaletteColors arrayByAddingObjectsFromArray:additionalColorsForExtendedPalette];

  v6 = [[self alloc] initWithPickerColors:0 colors:v5 localizedName:0 paletteType:1 showsColorWell:0];

  return v6;
}

+ (id)condensedPalette
{
  v3 = [self alloc];
  condensedPaletteColors = [self condensedPaletteColors];
  v5 = [v3 initWithPickerColors:0 colors:condensedPaletteColors localizedName:0 paletteType:2 showsColorWell:0];

  return v5;
}

- (PREditorColorPalette)initWithPickerColors:(id)colors colors:(id)a4 localizedName:(id)name paletteType:(unint64_t)type showsColorWell:(BOOL)well
{
  colorsCopy = colors;
  v14 = a4;
  nameCopy = name;
  v32.receiver = self;
  v32.super_class = PREditorColorPalette;
  v16 = [(PREditorColorPalette *)&v32 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    localizedName = v16->_localizedName;
    v16->_localizedName = v17;

    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__PREditorColorPalette_initWithPickerColors_colors_localizedName_paletteType_showsColorWell___block_invoke;
    v24[3] = &unk_1E78431A0;
    v26 = &v28;
    v27 = a2;
    v19 = v16;
    v25 = v19;
    v20 = [v14 bs_map:v24];
    v21 = [v20 copy];
    colors = v19->_colors;
    v19->_colors = v21;

    objc_storeStrong(&v19->_pickerColors, colors);
    v19->_includesObjectsOfTypePRPosterColor = *(v29 + 24);
    v19->_paletteType = type;
    if (colorsCopy)
    {
      v19->_hasGeneratedPickerColors = 1;
    }

    _Block_object_dispose(&v28, 8);
  }

  return v16;
}

PRPosterColor *__93__PREditorColorPalette_initWithPickerColors_colors_localizedName_paletteType_showsColorWell___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = [[PRPosterColor alloc] initWithColor:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)generatePickerColorsIfNeededForContext:(unint64_t)context
{
  if (!self->_hasGeneratedPickerColors)
  {
    v5 = objc_opt_class();
    colors = self->_colors;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PREditorColorPalette_generatePickerColorsIfNeededForContext___block_invoke;
    v9[3] = &__block_descriptor_48_e23__16__0__PRPosterColor_8lu40l8;
    v9[4] = context;
    v9[5] = v5;
    v7 = [(NSArray *)colors bs_map:v9];
    pickerColors = self->_pickerColors;
    self->_pickerColors = v7;

    self->_hasGeneratedPickerColors = 1;
  }
}

id __63__PREditorColorPalette_generatePickerColorsIfNeededForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0.0;
  if (*(a1 + 32) == 1)
  {
    if ([v3 preferredStyle] == 1)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  v6 = [objc_alloc(*(a1 + 40)) initWithColor:v4 initialVariation:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      localizedName = [(PREditorColorPalette *)self localizedName];
      localizedName2 = [(PREditorColorPalette *)v7 localizedName];
      v10 = BSEqualStrings();

      if (v10 && ([(PREditorColorPalette *)self colors], v11 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPalette *)v7 colors], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualObjects(), v12, v11, v13))
      {
        pickerColors = [(PREditorColorPalette *)self pickerColors];
        pickerColors2 = [(PREditorColorPalette *)v7 pickerColors];
        v16 = BSEqualObjects();
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  colors = [(PREditorColorPalette *)self colors];
  v4 = [colors hash];
  localizedName = [(PREditorColorPalette *)self localizedName];
  v6 = [localizedName hash] ^ v4;

  if ([(PREditorColorPalette *)self hasGeneratedPickerColors])
  {
    pickerColors = [(PREditorColorPalette *)self pickerColors];
    v6 ^= [pickerColors hash];
  }

  return v6;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__PREditorColorPalette_description__block_invoke;
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
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [(PREditorColorPalette *)self pickerColors];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * v9) isCustomColor])
        {
          v12 = v5;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  colors = [(PREditorColorPalette *)self colors];
  [coderCopy encodeObject:colors forKey:@"colors"];

  localizedName = [(PREditorColorPalette *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  [coderCopy encodeBool:-[PREditorColorPalette includesObjectsOfTypePRPosterColor](self forKey:{"includesObjectsOfTypePRPosterColor"), @"includesPosterColors"}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPalette paletteType](self, "paletteType")}];
  [coderCopy encodeObject:v12 forKey:@"paletteType"];
LABEL_11:
}

- (PREditorColorPalette)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paletteType"];
  v6 = v5;
  if (!v5)
  {
    if (([coderCopy decodeBoolForKey:@"isStandardPalette"] & 1) == 0)
    {
      v8 = 3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  if (unsignedIntegerValue == 2)
  {
    condensedPalette = [objc_opt_class() condensedPalette];
    goto LABEL_16;
  }

  v8 = unsignedIntegerValue;
  if (unsignedIntegerValue == 1)
  {
    condensedPalette = [objc_opt_class() extendedPalette];
    goto LABEL_16;
  }

  if (!unsignedIntegerValue)
  {
LABEL_7:
    condensedPalette = [objc_opt_class() standardPalette];
LABEL_16:
    v21 = condensedPalette;
    goto LABEL_17;
  }

LABEL_9:
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = objc_opt_self();
  v14 = [v10 setWithObjects:{v11, v12, v13, 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"colors"];

  v16 = [coderCopy decodeBoolForKey:@"includesPosterColors"];
  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"localizedName"];

  if (v15 && [v15 count])
  {
    v19 = [(PREditorColorPalette *)self initWithPickerColors:0 colors:v15 localizedName:v18 paletteType:v8 showsColorWell:0];
    v19->_includesObjectsOfTypePRPosterColor = v16;
    v20 = v19;
    self = v20;
  }

  else
  {
    v20 = +[PREditorColorPalette standardPalette];
  }

  v21 = v20;

LABEL_17:
  return v21;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v18 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  [(PREditorColorPalette *)self pickerColors];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v13 + 1) + 8 * v9) isCustomColor])
        {
          v12 = v5;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  colors = [(PREditorColorPalette *)self colors];
  [coderCopy encodeObject:colors forKey:@"colors"];

  localizedName = [(PREditorColorPalette *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];

  [coderCopy encodeBool:-[PREditorColorPalette includesObjectsOfTypePRPosterColor](self forKey:{"includesObjectsOfTypePRPosterColor"), @"includesPosterColors"}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPalette paletteType](self, "paletteType")}];
  [coderCopy encodeObject:v12 forKey:@"paletteType"];
LABEL_11:
}

- (PREditorColorPalette)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paletteType"];
  v6 = v5;
  if (!v5)
  {
    if (([coderCopy decodeBoolForKey:@"isStandardPalette"] & 1) == 0)
    {
      v8 = 3;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  if (unsignedIntegerValue == 2)
  {
    condensedPalette = [objc_opt_class() condensedPalette];
    goto LABEL_16;
  }

  v8 = unsignedIntegerValue;
  if (unsignedIntegerValue == 1)
  {
    condensedPalette = [objc_opt_class() extendedPalette];
    goto LABEL_16;
  }

  if (!unsignedIntegerValue)
  {
LABEL_7:
    condensedPalette = [objc_opt_class() standardPalette];
LABEL_16:
    v17 = condensedPalette;
    goto LABEL_17;
  }

LABEL_9:
  v10 = objc_opt_class();
  v11 = [coderCopy decodeCollectionOfClass:v10 containingClass:objc_opt_class() forKey:@"colors"];
  v12 = [coderCopy decodeBoolForKey:@"includesPosterColors"];
  v13 = objc_opt_self();
  v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"localizedName"];

  if (v11 && [v11 count])
  {
    v15 = [(PREditorColorPalette *)self initWithPickerColors:0 colors:v11 localizedName:v14 paletteType:v8 showsColorWell:0];
    v15->_includesObjectsOfTypePRPosterColor = v12;
    v16 = v15;
    self = v16;
  }

  else
  {
    v16 = +[PREditorColorPalette standardPalette];
  }

  v17 = v16;

LABEL_17:
  return v17;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  colors = [(PREditorColorPalette *)self colors];
  v5 = [formatterCopy appendObject:colors withName:@"colors"];

  pickerColors = [(PREditorColorPalette *)self pickerColors];
  v7 = [formatterCopy appendObject:pickerColors withName:@"pickerColors" skipIfNil:1];

  localizedName = [(PREditorColorPalette *)self localizedName];
  [formatterCopy appendString:localizedName withName:@"localizedName" skipIfEmpty:1];

  paletteType = [(PREditorColorPalette *)self paletteType];
  if (paletteType > 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = off_1E7844480[paletteType];
  }

  [formatterCopy appendString:v10 withName:@"paletteType"];
  v11 = [formatterCopy appendBool:-[PREditorColorPalette includesObjectsOfTypePRPosterColor](self withName:{"includesObjectsOfTypePRPosterColor"), @"includesPosterColors"}];
}

@end
@interface PREditorColorPickerConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PREditorColorPickerConfiguration)initWithBSXPCCoder:(id)coder;
- (PREditorColorPickerConfiguration)initWithCoder:(id)coder;
- (PREditorColorPickerConfiguration)initWithIdentifier:(id)identifier prompt:(id)prompt selectedColor:(id)color suggestedColors:(id)colors colorPalette:(id)palette colorWellDisplayMode:(unint64_t)mode showsSlider:(BOOL)slider context:(unint64_t)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)didUpdateColors;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setColorPalette:(id)palette;
- (void)setSelectedColor:(id)color;
- (void)setSuggestedColor:(id)color;
- (void)setSuggestedColors:(id)colors;
@end

@implementation PREditorColorPickerConfiguration

- (PREditorColorPickerConfiguration)initWithIdentifier:(id)identifier prompt:(id)prompt selectedColor:(id)color suggestedColors:(id)colors colorPalette:(id)palette colorWellDisplayMode:(unint64_t)mode showsSlider:(BOOL)slider context:(unint64_t)self0
{
  identifierCopy = identifier;
  promptCopy = prompt;
  colorCopy = color;
  colorsCopy = colors;
  paletteCopy = palette;
  v66.receiver = self;
  v66.super_class = PREditorColorPickerConfiguration;
  v22 = [(PREditorColorPickerConfiguration *)&v66 init];
  if (v22)
  {
    if (identifierCopy)
    {
      v23 = identifierCopy;
    }

    else
    {
      v23 = @"default";
    }

    v24 = [(__CFString *)v23 copy];
    identifier = v22->_identifier;
    v22->_identifier = v24;

    modeCopy = mode;
    v57 = colorCopy;
    if (promptCopy)
    {
      v26 = [promptCopy copy];
      prompt = v22->_prompt;
      v22->_prompt = v26;
    }

    else
    {
      prompt = PRBundle();
      v28 = [prompt localizedStringForKey:@"EDIT_COLOR_PICKER_DEFAULT_PROMPT" value:&stru_1F1C13D90 table:@"PosterKit"];
      v29 = [v28 copy];
      v30 = v22->_prompt;
      v22->_prompt = v29;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    objc_opt_class();
    v32 = objc_opt_isKindOfClass();
    if (colorCopy)
    {
      v33 = v32;
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();
      if (((isKindOfClass | v33) & 1) == 0)
      {
        [PREditorColorPickerConfiguration initWithIdentifier:a2 prompt:? selectedColor:? suggestedColors:? colorPalette:? colorWellDisplayMode:? showsSlider:? context:?];
      }

      v35 = v34;
      if (isKindOfClass)
      {
        v36 = v57;
      }

      else
      {
        v36 = [[PRPosterColor alloc] initWithColor:v57];
      }
    }

    else
    {
      v36 = 0;
      v35 = 1;
    }

    v55 = v36;
    v37 = [(PRPosterColor *)v36 copy];
    selectedColor = v22->_selectedColor;
    v22->_selectedColor = v37;

    v62 = 0;
    v63 = &v62;
    v64 = 0x2020000000;
    v65 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __146__PREditorColorPickerConfiguration_initWithIdentifier_prompt_selectedColor_suggestedColors_colorPalette_colorWellDisplayMode_showsSlider_context___block_invoke;
    v58[3] = &unk_1E78431A0;
    v60 = &v62;
    v61 = a2;
    v39 = v22;
    v59 = v39;
    v40 = [colorsCopy bs_compactMap:v58];
    v41 = [v40 copy];
    suggestedColors = v39->_suggestedColors;
    v39->_suggestedColors = v41;

    v54 = promptCopy;
    if (paletteCopy)
    {
      v43 = modeCopy;
      v44 = paletteCopy;
      v45 = identifierCopy;
      v46 = colorsCopy;
      v47 = v44;
      v48 = v44;
    }

    else
    {
      v48 = +[PREditorColorPalette extendedPalette];
      v43 = modeCopy;
      v47 = 0;
      v45 = identifierCopy;
      v46 = colorsCopy;
    }

    colorPalette = v39->_colorPalette;
    v39->_colorPalette = v48;

    v39->_colorWellDisplayMode = v43;
    v39->_showsSlider = slider;
    v39->_context = context;
    if (v35)
    {
      includesObjectsOfTypePRPosterColor = 1;
      colorsCopy = v46;
      promptCopy = v54;
      identifierCopy = v45;
    }

    else
    {
      colorsCopy = v46;
      identifierCopy = v45;
      if ((v63[3] & 1) == 0)
      {
        paletteCopy = v47;
        includesObjectsOfTypePRPosterColor = [v47 includesObjectsOfTypePRPosterColor];
        promptCopy = v54;
        goto LABEL_23;
      }

      includesObjectsOfTypePRPosterColor = 1;
      promptCopy = v54;
    }

    paletteCopy = v47;
LABEL_23:
    v39->_includesObjectsOfTypePRPickerColor = includesObjectsOfTypePRPosterColor;
    colorPickerSourceView = v39->_colorPickerSourceView;
    v39->_colorPickerSourceView = 0;

    colorPickerSourceItem = v39->_colorPickerSourceItem;
    v39->_colorPickerSourceItem = 0;

    _Block_object_dispose(&v62, 8);
    colorCopy = v57;
  }

  return v22;
}

PRPosterColor *__146__PREditorColorPickerConfiguration_initWithIdentifier_prompt_selectedColor_suggestedColors_colorPalette_colorWellDisplayMode_showsSlider_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[PRPosterColor alloc] initWithColor:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  if (colorCopy)
  {
    if (((isKindOfClass | v6) & 1) == 0)
    {
      [PREditorColorPickerConfiguration setSelectedColor:a2];
    }

    if (isKindOfClass)
    {
      v7 = colorCopy;
    }

    else
    {
      v8 = [PRPosterColor alloc];
      v9 = [colorCopy copy];
      v7 = [(PRPosterColor *)v8 initWithColor:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = [(PRPosterColor *)v7 copy];
  selectedColor = self->_selectedColor;
  self->_selectedColor = v10;

  [(PREditorColorPickerConfiguration *)self didUpdateColors];
}

- (void)setSuggestedColor:(id)color
{
  colorCopy = color;
  if (![(PRPosterColor *)self->_suggestedColor isEquivalentToColor:colorCopy])
  {
    v4 = colorCopy;
    v5 = v4;
    if (v4 && ([v4 isSuggested] & 1) == 0)
    {
      copyAsSuggestedColor = [v5 copyAsSuggestedColor];

      v5 = copyAsSuggestedColor;
    }

    v7 = [v5 copy];
    suggestedColor = self->_suggestedColor;
    self->_suggestedColor = v7;

    self->_showsSuggestedColorItem = v5 != 0;
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuggestedColors:(id)colors
{
  colorsCopy = colors;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PREditorColorPickerConfiguration_setSuggestedColors___block_invoke;
  v9[3] = &unk_1E78431A0;
  v9[5] = v10;
  v9[6] = a2;
  v9[4] = self;
  v6 = [colorsCopy bs_compactMap:v9];
  v7 = [v6 copy];
  suggestedColors = self->_suggestedColors;
  self->_suggestedColors = v7;

  [(PREditorColorPickerConfiguration *)self didUpdateColors];
  _Block_object_dispose(v10, 8);
}

PRPosterColor *__55__PREditorColorPickerConfiguration_setSuggestedColors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[PRPosterColor alloc] initWithColor:v3];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)setColorPalette:(id)palette
{
  paletteCopy = palette;
  p_colorPalette = &self->_colorPalette;
  if (self->_colorPalette != paletteCopy)
  {
    v7 = paletteCopy;
    objc_storeStrong(p_colorPalette, palette);
    p_colorPalette = [(PREditorColorPickerConfiguration *)self didUpdateColors];
    paletteCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_colorPalette, paletteCopy);
}

- (void)didUpdateColors
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_selectedColor)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_suggestedColors;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        objc_opt_class();
        v7 |= objc_opt_isKindOfClass();
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = ((isKindOfClass | v7) & 1) != 0 || [(PREditorColorPalette *)self->_colorPalette includesObjectsOfTypePRPosterColor];
  self->_includesObjectsOfTypePRPickerColor = v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v31 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      identifier = [(PREditorColorPickerConfiguration *)self identifier];
      identifier2 = [(PREditorColorPickerConfiguration *)v7 identifier];
      v10 = BSEqualStrings();

      if (v10 && ([(PREditorColorPickerConfiguration *)self prompt], v11 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 prompt], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualStrings(), v12, v11, v13) && ([(PREditorColorPickerConfiguration *)self colorPalette], v14 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 colorPalette], v15 = objc_claimAutoreleasedReturnValue(), v16 = BSEqualObjects(), v15, v14, v16) && ([(PREditorColorPickerConfiguration *)self selectedColor], v17 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 selectedColor], v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v19) && ([(PREditorColorPickerConfiguration *)self suggestedColors], v20 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 suggestedColors], v21 = objc_claimAutoreleasedReturnValue(), v22 = BSEqualObjects(), v21, v20, v22) && (v23 = [(PREditorColorPickerConfiguration *)self showsSlider], v23 == [(PREditorColorPickerConfiguration *)v7 showsSlider]) && (v24 = [(PREditorColorPickerConfiguration *)self colorWellDisplayMode], v24 == [(PREditorColorPickerConfiguration *)v7 colorWellDisplayMode]) && (v25 = [(PREditorColorPickerConfiguration *)self context], v25 == [(PREditorColorPickerConfiguration *)v7 context]) && ([(PREditorColorPickerConfiguration *)self colorPickerSourceView], v26 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 colorPickerSourceView], v27 = objc_claimAutoreleasedReturnValue(), v28 = BSEqualObjects(), v27, v26, v28))
      {
        colorPickerSourceItem = [(PREditorColorPickerConfiguration *)self colorPickerSourceItem];
        colorPickerSourceItem2 = [(PREditorColorPickerConfiguration *)v7 colorPickerSourceItem];
        v31 = BSEqualObjects();
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  return v31;
}

- (unint64_t)hash
{
  identifier = [(PREditorColorPickerConfiguration *)self identifier];
  v3 = [identifier hash];
  prompt = [(PREditorColorPickerConfiguration *)self prompt];
  v5 = [prompt hash] ^ v3;
  colorPalette = [(PREditorColorPickerConfiguration *)self colorPalette];
  v7 = [colorPalette hash];
  selectedColor = [(PREditorColorPickerConfiguration *)self selectedColor];
  v9 = v5 ^ v7 ^ [selectedColor hash];
  suggestedColors = [(PREditorColorPickerConfiguration *)self suggestedColors];
  v11 = v9 ^ [suggestedColors hash];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  v13 = v11 ^ [v12 hash];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PREditorColorPickerConfiguration showsSlider](self, "showsSlider")}];
  v15 = [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration context](self, "context")}];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __47__PREditorColorPickerConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = [(PREditorColorPickerConfiguration *)self identifier];
  prompt = [(PREditorColorPickerConfiguration *)self prompt];
  selectedColor = [(PREditorColorPickerConfiguration *)self selectedColor];
  suggestedColors = [(PREditorColorPickerConfiguration *)self suggestedColors];
  colorPalette = [(PREditorColorPickerConfiguration *)self colorPalette];
  colorWellDisplayMode = [(PREditorColorPickerConfiguration *)self colorWellDisplayMode];
  LOBYTE(v13) = [(PREditorColorPickerConfiguration *)self showsSlider];
  v11 = [v4 initWithIdentifier:identifier prompt:prompt selectedColor:selectedColor suggestedColors:suggestedColors colorPalette:colorPalette colorWellDisplayMode:colorWellDisplayMode showsSlider:v13 context:{-[PREditorColorPickerConfiguration context](self, "context")}];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PREditorColorPickerConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  prompt = [(PREditorColorPickerConfiguration *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  selectedColor = [(PREditorColorPickerConfiguration *)self selectedColor];
  [coderCopy encodeObject:selectedColor forKey:@"selectedColor"];

  suggestedColors = [(PREditorColorPickerConfiguration *)self suggestedColors];
  if (suggestedColors)
  {
    [coderCopy encodeObject:suggestedColors forKey:@"suggestedColors"];
  }

  colorPalette = [(PREditorColorPickerConfiguration *)self colorPalette];
  [coderCopy encodeObject:colorPalette forKey:@"palette"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [coderCopy encodeObject:v9 forKey:@"colorWellDisplayMode"];

  [coderCopy encodeBool:-[PREditorColorPickerConfiguration showsSlider](self forKey:{"showsSlider"), @"showsSlider"}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration context](self, "context")}];
  [coderCopy encodeObject:v10 forKey:@"context"];
}

- (PREditorColorPickerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_self();
  v35 = [coderCopy decodeObjectOfClass:v4 forKey:@"identifier"];

  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"prompt"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"selectedColor"];

  if (!v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedColor"];
    if (v9)
    {
      v8 = [[PRPosterColor alloc] initWithColor:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_self();
  v12 = objc_opt_self();
  v13 = [v10 setWithObjects:{v11, v12, 0}];
  v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"suggestedColors"];

  if (!v14)
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = [v15 setWithObjects:{v16, v17, 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"suggestedColors"];

    if (v19)
    {
      v14 = [v19 bs_map:&__block_literal_global_1];
    }

    else
    {
      v14 = 0;
    }
  }

  v20 = objc_opt_self();
  v21 = [coderCopy decodeObjectOfClass:v20 forKey:@"palette"];

  v22 = objc_opt_self();
  v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"colorWellDisplayMode"];

  if (v23)
  {
    unsignedIntegerValue = [v23 unsignedIntegerValue];
    if (unsignedIntegerValue >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = unsignedIntegerValue;
    }
  }

  else
  {
    v25 = 2;
  }

  v26 = [coderCopy decodeBoolForKey:@"showsSlider"];
  v27 = objc_opt_self();
  v28 = [coderCopy decodeObjectOfClass:v27 forKey:@"context"];

  if (v28)
  {
    unsignedIntegerValue2 = [v28 unsignedIntegerValue];
    if (unsignedIntegerValue2 >= 3)
    {
      v30 = 0;
    }

    else
    {
      v30 = unsignedIntegerValue2;
    }
  }

  else
  {
    v30 = 0;
  }

  LOBYTE(v33) = v26;
  v31 = [(PREditorColorPickerConfiguration *)self initWithIdentifier:v35 prompt:v6 selectedColor:v8 suggestedColors:v14 colorPalette:v21 colorWellDisplayMode:v25 showsSlider:v33 context:v30];

  return v31;
}

PRPosterColor *__50__PREditorColorPickerConfiguration_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterColor alloc] initWithColor:v2];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PREditorColorPickerConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  prompt = [(PREditorColorPickerConfiguration *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  selectedColor = [(PREditorColorPickerConfiguration *)self selectedColor];
  [coderCopy encodeObject:selectedColor forKey:@"selectedColor"];

  suggestedColors = [(PREditorColorPickerConfiguration *)self suggestedColors];
  if (suggestedColors)
  {
    [coderCopy encodeObject:suggestedColors forKey:@"suggestedColors"];
  }

  colorPalette = [(PREditorColorPickerConfiguration *)self colorPalette];
  [coderCopy encodeObject:colorPalette forKey:@"palette"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [coderCopy encodeObject:v9 forKey:@"colorWellDisplayMode"];

  [coderCopy encodeBool:-[PREditorColorPickerConfiguration showsSlider](self forKey:{"showsSlider"), @"showsSlider"}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration context](self, "context")}];
  [coderCopy encodeObject:v10 forKey:@"context"];
}

- (PREditorColorPickerConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_self();
  v30 = [coderCopy decodeObjectOfClass:v4 forKey:@"identifier"];

  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"prompt"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"selectedColor"];

  if (!v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedColor"];
    if (v9)
    {
      v8 = [[PRPosterColor alloc] initWithColor:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = objc_opt_class();
  v11 = [coderCopy decodeCollectionOfClass:v10 containingClass:objc_opt_class() forKey:@"suggestedColors"];
  if (!v11)
  {
    v12 = objc_opt_class();
    v13 = objc_opt_self();
    v14 = [coderCopy decodeCollectionOfClass:v12 containingClass:v13 forKey:@"suggestedColors"];

    if (v14)
    {
      v11 = [v14 bs_map:&__block_literal_global_52];
    }

    else
    {
      v11 = 0;
    }
  }

  v15 = objc_opt_self();
  v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"palette"];

  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"colorWellDisplayMode"];

  if (v18)
  {
    unsignedIntegerValue = [v18 unsignedIntegerValue];
    if (unsignedIntegerValue >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = unsignedIntegerValue;
    }
  }

  else
  {
    v20 = 2;
  }

  v21 = [coderCopy decodeBoolForKey:@"showsSlider"];
  v22 = objc_opt_self();
  v23 = [coderCopy decodeObjectOfClass:v22 forKey:@"context"];

  if (v23)
  {
    unsignedIntegerValue2 = [v23 unsignedIntegerValue];
    if (unsignedIntegerValue2 >= 3)
    {
      v25 = 0;
    }

    else
    {
      v25 = unsignedIntegerValue2;
    }
  }

  else
  {
    v25 = 0;
  }

  LOBYTE(v28) = v21;
  v26 = [(PREditorColorPickerConfiguration *)self initWithIdentifier:v30 prompt:v6 selectedColor:v8 suggestedColors:v11 colorPalette:v16 colorWellDisplayMode:v20 showsSlider:v28 context:v25];

  return v26;
}

PRPosterColor *__55__PREditorColorPickerConfiguration_initWithBSXPCCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterColor alloc] initWithColor:v2];

  return v3;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  identifier = [(PREditorColorPickerConfiguration *)self identifier];
  [formatterCopy appendString:identifier withName:@"identifier"];

  prompt = [(PREditorColorPickerConfiguration *)self prompt];
  [formatterCopy appendString:prompt withName:@"prompt" skipIfEmpty:1];

  selectedColor = [(PREditorColorPickerConfiguration *)self selectedColor];
  v7 = [formatterCopy appendObject:selectedColor withName:@"selectedColor" skipIfNil:1];

  suggestedColors = [(PREditorColorPickerConfiguration *)self suggestedColors];
  v9 = [formatterCopy appendObject:suggestedColors withName:@"suggestedColors" skipIfNil:1];

  colorPalette = [(PREditorColorPickerConfiguration *)self colorPalette];
  v11 = [formatterCopy appendObject:colorPalette withName:@"colorPalette"];

  colorWellDisplayMode = [(PREditorColorPickerConfiguration *)self colorWellDisplayMode];
  if (colorWellDisplayMode > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E78431E0[colorWellDisplayMode];
  }

  [formatterCopy appendString:v13 withName:@"colorWellDisplayMode"];
  v14 = [formatterCopy appendBool:-[PREditorColorPickerConfiguration showsSlider](self withName:{"showsSlider"), @"showsSlider"}];
  context = [(PREditorColorPickerConfiguration *)self context];
  if (context > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E78431F8[context];
  }

  [formatterCopy appendString:v16 withName:@"context"];
}

- (void)initWithIdentifier:(const char *)a1 prompt:selectedColor:suggestedColors:colorPalette:colorWellDisplayMode:showsSlider:context:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected object type provided for [PREditorColorPickerConfiguration selectedColor]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    v9 = @"PREditorColorPickerConfiguration.m";
    v10 = 1024;
    v11 = 91;
    v12 = v6;
    v13 = v2;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  v7 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setSelectedColor:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected object type provided for [PREditorColorPickerConfiguration selectedColor]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_1();
    v8 = @"PREditorColorPickerConfiguration.m";
    v9 = 1024;
    v10 = 128;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end
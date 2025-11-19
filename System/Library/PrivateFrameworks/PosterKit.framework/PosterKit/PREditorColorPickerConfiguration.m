@interface PREditorColorPickerConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PREditorColorPickerConfiguration)initWithBSXPCCoder:(id)a3;
- (PREditorColorPickerConfiguration)initWithCoder:(id)a3;
- (PREditorColorPickerConfiguration)initWithIdentifier:(id)a3 prompt:(id)a4 selectedColor:(id)a5 suggestedColors:(id)a6 colorPalette:(id)a7 colorWellDisplayMode:(unint64_t)a8 showsSlider:(BOOL)a9 context:(unint64_t)a10;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)didUpdateColors;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setColorPalette:(id)a3;
- (void)setSelectedColor:(id)a3;
- (void)setSuggestedColor:(id)a3;
- (void)setSuggestedColors:(id)a3;
@end

@implementation PREditorColorPickerConfiguration

- (PREditorColorPickerConfiguration)initWithIdentifier:(id)a3 prompt:(id)a4 selectedColor:(id)a5 suggestedColors:(id)a6 colorPalette:(id)a7 colorWellDisplayMode:(unint64_t)a8 showsSlider:(BOOL)a9 context:(unint64_t)a10
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v66.receiver = self;
  v66.super_class = PREditorColorPickerConfiguration;
  v22 = [(PREditorColorPickerConfiguration *)&v66 init];
  if (v22)
  {
    if (v17)
    {
      v23 = v17;
    }

    else
    {
      v23 = @"default";
    }

    v24 = [(__CFString *)v23 copy];
    identifier = v22->_identifier;
    v22->_identifier = v24;

    v56 = a8;
    v57 = v19;
    if (v18)
    {
      v26 = [v18 copy];
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
    if (v19)
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
    v40 = [v20 bs_compactMap:v58];
    v41 = [v40 copy];
    suggestedColors = v39->_suggestedColors;
    v39->_suggestedColors = v41;

    v54 = v18;
    if (v21)
    {
      v43 = v56;
      v44 = v21;
      v45 = v17;
      v46 = v20;
      v47 = v44;
      v48 = v44;
    }

    else
    {
      v48 = +[PREditorColorPalette extendedPalette];
      v43 = v56;
      v47 = 0;
      v45 = v17;
      v46 = v20;
    }

    colorPalette = v39->_colorPalette;
    v39->_colorPalette = v48;

    v39->_colorWellDisplayMode = v43;
    v39->_showsSlider = a9;
    v39->_context = a10;
    if (v35)
    {
      v50 = 1;
      v20 = v46;
      v18 = v54;
      v17 = v45;
    }

    else
    {
      v20 = v46;
      v17 = v45;
      if ((v63[3] & 1) == 0)
      {
        v21 = v47;
        v50 = [v47 includesObjectsOfTypePRPosterColor];
        v18 = v54;
        goto LABEL_23;
      }

      v50 = 1;
      v18 = v54;
    }

    v21 = v47;
LABEL_23:
    v39->_includesObjectsOfTypePRPickerColor = v50;
    colorPickerSourceView = v39->_colorPickerSourceView;
    v39->_colorPickerSourceView = 0;

    colorPickerSourceItem = v39->_colorPickerSourceItem;
    v39->_colorPickerSourceItem = 0;

    _Block_object_dispose(&v62, 8);
    v19 = v57;
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

- (void)setSelectedColor:(id)a3
{
  v12 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v6 = objc_opt_isKindOfClass();
  if (v12)
  {
    if (((isKindOfClass | v6) & 1) == 0)
    {
      [PREditorColorPickerConfiguration setSelectedColor:a2];
    }

    if (isKindOfClass)
    {
      v7 = v12;
    }

    else
    {
      v8 = [PRPosterColor alloc];
      v9 = [v12 copy];
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

- (void)setSuggestedColor:(id)a3
{
  v9 = a3;
  if (![(PRPosterColor *)self->_suggestedColor isEquivalentToColor:v9])
  {
    v4 = v9;
    v5 = v4;
    if (v4 && ([v4 isSuggested] & 1) == 0)
    {
      v6 = [v5 copyAsSuggestedColor];

      v5 = v6;
    }

    v7 = [v5 copy];
    suggestedColor = self->_suggestedColor;
    self->_suggestedColor = v7;

    self->_showsSuggestedColorItem = v5 != 0;
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuggestedColors:(id)a3
{
  v5 = a3;
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
  v6 = [v5 bs_compactMap:v9];
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

- (void)setColorPalette:(id)a3
{
  v5 = a3;
  p_colorPalette = &self->_colorPalette;
  if (self->_colorPalette != v5)
  {
    v7 = v5;
    objc_storeStrong(p_colorPalette, a3);
    p_colorPalette = [(PREditorColorPickerConfiguration *)self didUpdateColors];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](p_colorPalette, v5);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v31 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PREditorColorPickerConfiguration *)self identifier];
      v9 = [(PREditorColorPickerConfiguration *)v7 identifier];
      v10 = BSEqualStrings();

      if (v10 && ([(PREditorColorPickerConfiguration *)self prompt], v11 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 prompt], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualStrings(), v12, v11, v13) && ([(PREditorColorPickerConfiguration *)self colorPalette], v14 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 colorPalette], v15 = objc_claimAutoreleasedReturnValue(), v16 = BSEqualObjects(), v15, v14, v16) && ([(PREditorColorPickerConfiguration *)self selectedColor], v17 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 selectedColor], v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v19) && ([(PREditorColorPickerConfiguration *)self suggestedColors], v20 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 suggestedColors], v21 = objc_claimAutoreleasedReturnValue(), v22 = BSEqualObjects(), v21, v20, v22) && (v23 = [(PREditorColorPickerConfiguration *)self showsSlider], v23 == [(PREditorColorPickerConfiguration *)v7 showsSlider]) && (v24 = [(PREditorColorPickerConfiguration *)self colorWellDisplayMode], v24 == [(PREditorColorPickerConfiguration *)v7 colorWellDisplayMode]) && (v25 = [(PREditorColorPickerConfiguration *)self context], v25 == [(PREditorColorPickerConfiguration *)v7 context]) && ([(PREditorColorPickerConfiguration *)self colorPickerSourceView], v26 = objc_claimAutoreleasedReturnValue(), [(PREditorColorPickerConfiguration *)v7 colorPickerSourceView], v27 = objc_claimAutoreleasedReturnValue(), v28 = BSEqualObjects(), v27, v26, v28))
      {
        v29 = [(PREditorColorPickerConfiguration *)self colorPickerSourceItem];
        v30 = [(PREditorColorPickerConfiguration *)v7 colorPickerSourceItem];
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
  v19 = [(PREditorColorPickerConfiguration *)self identifier];
  v3 = [v19 hash];
  v4 = [(PREditorColorPickerConfiguration *)self prompt];
  v5 = [v4 hash] ^ v3;
  v6 = [(PREditorColorPickerConfiguration *)self colorPalette];
  v7 = [v6 hash];
  v8 = [(PREditorColorPickerConfiguration *)self selectedColor];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(PREditorColorPickerConfiguration *)self suggestedColors];
  v11 = v9 ^ [v10 hash];
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
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PREditorColorPickerConfiguration *)self identifier];
  v6 = [(PREditorColorPickerConfiguration *)self prompt];
  v7 = [(PREditorColorPickerConfiguration *)self selectedColor];
  v8 = [(PREditorColorPickerConfiguration *)self suggestedColors];
  v9 = [(PREditorColorPickerConfiguration *)self colorPalette];
  v10 = [(PREditorColorPickerConfiguration *)self colorWellDisplayMode];
  LOBYTE(v13) = [(PREditorColorPickerConfiguration *)self showsSlider];
  v11 = [v4 initWithIdentifier:v5 prompt:v6 selectedColor:v7 suggestedColors:v8 colorPalette:v9 colorWellDisplayMode:v10 showsSlider:v13 context:{-[PREditorColorPickerConfiguration context](self, "context")}];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(PREditorColorPickerConfiguration *)self identifier];
  [v11 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PREditorColorPickerConfiguration *)self prompt];
  [v11 encodeObject:v5 forKey:@"prompt"];

  v6 = [(PREditorColorPickerConfiguration *)self selectedColor];
  [v11 encodeObject:v6 forKey:@"selectedColor"];

  v7 = [(PREditorColorPickerConfiguration *)self suggestedColors];
  if (v7)
  {
    [v11 encodeObject:v7 forKey:@"suggestedColors"];
  }

  v8 = [(PREditorColorPickerConfiguration *)self colorPalette];
  [v11 encodeObject:v8 forKey:@"palette"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [v11 encodeObject:v9 forKey:@"colorWellDisplayMode"];

  [v11 encodeBool:-[PREditorColorPickerConfiguration showsSlider](self forKey:{"showsSlider"), @"showsSlider"}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration context](self, "context")}];
  [v11 encodeObject:v10 forKey:@"context"];
}

- (PREditorColorPickerConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v35 = [v3 decodeObjectOfClass:v4 forKey:@"identifier"];

  v5 = objc_opt_self();
  v6 = [v3 decodeObjectOfClass:v5 forKey:@"prompt"];

  v7 = objc_opt_self();
  v8 = [v3 decodeObjectOfClass:v7 forKey:@"selectedColor"];

  if (!v8)
  {
    v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"selectedColor"];
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
  v14 = [v3 decodeObjectOfClasses:v13 forKey:@"suggestedColors"];

  if (!v14)
  {
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_self();
    v17 = objc_opt_self();
    v18 = [v15 setWithObjects:{v16, v17, 0}];
    v19 = [v3 decodeObjectOfClasses:v18 forKey:@"suggestedColors"];

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
  v21 = [v3 decodeObjectOfClass:v20 forKey:@"palette"];

  v22 = objc_opt_self();
  v23 = [v3 decodeObjectOfClass:v22 forKey:@"colorWellDisplayMode"];

  if (v23)
  {
    v24 = [v23 unsignedIntegerValue];
    if (v24 >= 2)
    {
      v25 = 2;
    }

    else
    {
      v25 = v24;
    }
  }

  else
  {
    v25 = 2;
  }

  v26 = [v3 decodeBoolForKey:@"showsSlider"];
  v27 = objc_opt_self();
  v28 = [v3 decodeObjectOfClass:v27 forKey:@"context"];

  if (v28)
  {
    v29 = [v28 unsignedIntegerValue];
    if (v29 >= 3)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
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

- (void)encodeWithBSXPCCoder:(id)a3
{
  v11 = a3;
  v4 = [(PREditorColorPickerConfiguration *)self identifier];
  [v11 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PREditorColorPickerConfiguration *)self prompt];
  [v11 encodeObject:v5 forKey:@"prompt"];

  v6 = [(PREditorColorPickerConfiguration *)self selectedColor];
  [v11 encodeObject:v6 forKey:@"selectedColor"];

  v7 = [(PREditorColorPickerConfiguration *)self suggestedColors];
  if (v7)
  {
    [v11 encodeObject:v7 forKey:@"suggestedColors"];
  }

  v8 = [(PREditorColorPickerConfiguration *)self colorPalette];
  [v11 encodeObject:v8 forKey:@"palette"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [v11 encodeObject:v9 forKey:@"colorWellDisplayMode"];

  [v11 encodeBool:-[PREditorColorPickerConfiguration showsSlider](self forKey:{"showsSlider"), @"showsSlider"}];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorColorPickerConfiguration context](self, "context")}];
  [v11 encodeObject:v10 forKey:@"context"];
}

- (PREditorColorPickerConfiguration)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v30 = [v3 decodeObjectOfClass:v4 forKey:@"identifier"];

  v5 = objc_opt_self();
  v6 = [v3 decodeObjectOfClass:v5 forKey:@"prompt"];

  v7 = objc_opt_self();
  v8 = [v3 decodeObjectOfClass:v7 forKey:@"selectedColor"];

  if (!v8)
  {
    v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"selectedColor"];
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
  v11 = [v3 decodeCollectionOfClass:v10 containingClass:objc_opt_class() forKey:@"suggestedColors"];
  if (!v11)
  {
    v12 = objc_opt_class();
    v13 = objc_opt_self();
    v14 = [v3 decodeCollectionOfClass:v12 containingClass:v13 forKey:@"suggestedColors"];

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
  v16 = [v3 decodeObjectOfClass:v15 forKey:@"palette"];

  v17 = objc_opt_self();
  v18 = [v3 decodeObjectOfClass:v17 forKey:@"colorWellDisplayMode"];

  if (v18)
  {
    v19 = [v18 unsignedIntegerValue];
    if (v19 >= 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = v19;
    }
  }

  else
  {
    v20 = 2;
  }

  v21 = [v3 decodeBoolForKey:@"showsSlider"];
  v22 = objc_opt_self();
  v23 = [v3 decodeObjectOfClass:v22 forKey:@"context"];

  if (v23)
  {
    v24 = [v23 unsignedIntegerValue];
    if (v24 >= 3)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24;
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

- (void)appendDescriptionToFormatter:(id)a3
{
  v17 = a3;
  v4 = [(PREditorColorPickerConfiguration *)self identifier];
  [v17 appendString:v4 withName:@"identifier"];

  v5 = [(PREditorColorPickerConfiguration *)self prompt];
  [v17 appendString:v5 withName:@"prompt" skipIfEmpty:1];

  v6 = [(PREditorColorPickerConfiguration *)self selectedColor];
  v7 = [v17 appendObject:v6 withName:@"selectedColor" skipIfNil:1];

  v8 = [(PREditorColorPickerConfiguration *)self suggestedColors];
  v9 = [v17 appendObject:v8 withName:@"suggestedColors" skipIfNil:1];

  v10 = [(PREditorColorPickerConfiguration *)self colorPalette];
  v11 = [v17 appendObject:v10 withName:@"colorPalette"];

  v12 = [(PREditorColorPickerConfiguration *)self colorWellDisplayMode];
  if (v12 > 2)
  {
    v13 = 0;
  }

  else
  {
    v13 = off_1E78431E0[v12];
  }

  [v17 appendString:v13 withName:@"colorWellDisplayMode"];
  v14 = [v17 appendBool:-[PREditorColorPickerConfiguration showsSlider](self withName:{"showsSlider"), @"showsSlider"}];
  v15 = [(PREditorColorPickerConfiguration *)self context];
  if (v15 > 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = off_1E78431F8[v15];
  }

  [v17 appendString:v16 withName:@"context"];
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
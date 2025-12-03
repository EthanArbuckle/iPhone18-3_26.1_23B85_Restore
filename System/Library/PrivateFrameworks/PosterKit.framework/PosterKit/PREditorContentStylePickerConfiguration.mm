@interface PREditorContentStylePickerConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PREditorContentStylePickerConfiguration)initWithBSXPCCoder:(id)coder;
- (PREditorContentStylePickerConfiguration)initWithCoder:(id)coder;
- (PREditorContentStylePickerConfiguration)initWithIdentifier:(id)identifier prompt:(id)prompt selectedStyle:(id)style stylePalette:(id)palette colorWellDisplayMode:(unint64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setSuggestedStyle:(id)style;
@end

@implementation PREditorContentStylePickerConfiguration

- (PREditorContentStylePickerConfiguration)initWithIdentifier:(id)identifier prompt:(id)prompt selectedStyle:(id)style stylePalette:(id)palette colorWellDisplayMode:(unint64_t)mode
{
  identifierCopy = identifier;
  promptCopy = prompt;
  styleCopy = style;
  paletteCopy = palette;
  v24.receiver = self;
  v24.super_class = PREditorContentStylePickerConfiguration;
  v16 = [(PREditorContentStylePickerConfiguration *)&v24 init];
  if (v16)
  {
    if (identifierCopy)
    {
      v17 = identifierCopy;
    }

    else
    {
      v17 = [@"default" copy];
    }

    identifier = v16->_identifier;
    v16->_identifier = v17;

    if (promptCopy)
    {
      v19 = promptCopy;
      prompt = v16->_prompt;
      v16->_prompt = v19;
    }

    else
    {
      prompt = PRBundle();
      v21 = [prompt localizedStringForKey:@"EDIT_COLOR_PICKER_DEFAULT_PROMPT" value:&stru_1F1C13D90 table:@"PosterKit"];
      v22 = v16->_prompt;
      v16->_prompt = v21;
    }

    objc_storeStrong(&v16->_selectedStyle, style);
    objc_storeStrong(&v16->_stylePalette, palette);
    v16->_colorWellDisplayMode = mode;
  }

  return v16;
}

- (void)setSuggestedStyle:(id)style
{
  styleCopy = style;
  p_suggestedStyle = &self->_suggestedStyle;
  if (self->_suggestedStyle != styleCopy)
  {
    v7 = styleCopy;
    objc_storeStrong(p_suggestedStyle, style);
    styleCopy = v7;
    self->_showsSuggestedContentStyleItem = v7 != 0;
  }

  MEMORY[0x1EEE66BB8](p_suggestedStyle, styleCopy);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v24 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      identifier = [(PREditorContentStylePickerConfiguration *)self identifier];
      identifier2 = [(PREditorContentStylePickerConfiguration *)v7 identifier];
      v10 = BSEqualStrings();

      if (v10 && ([(PREditorContentStylePickerConfiguration *)self prompt], v11 = objc_claimAutoreleasedReturnValue(), [(PREditorContentStylePickerConfiguration *)v7 prompt], v12 = objc_claimAutoreleasedReturnValue(), v13 = BSEqualStrings(), v12, v11, v13) && ([(PREditorContentStylePickerConfiguration *)self stylePalette], v14 = objc_claimAutoreleasedReturnValue(), [(PREditorContentStylePickerConfiguration *)v7 stylePalette], v15 = objc_claimAutoreleasedReturnValue(), v16 = BSEqualObjects(), v15, v14, v16) && ([(PREditorContentStylePickerConfiguration *)self selectedStyle], v17 = objc_claimAutoreleasedReturnValue(), [(PREditorContentStylePickerConfiguration *)v7 selectedStyle], v18 = objc_claimAutoreleasedReturnValue(), v19 = BSEqualObjects(), v18, v17, v19) && ([(PREditorContentStylePickerConfiguration *)self suggestedStyle], v20 = objc_claimAutoreleasedReturnValue(), [(PREditorContentStylePickerConfiguration *)v7 suggestedStyle], v21 = objc_claimAutoreleasedReturnValue(), v22 = BSEqualObjects(), v21, v20, v22))
      {
        colorWellDisplayMode = [(PREditorContentStylePickerConfiguration *)self colorWellDisplayMode];
        v24 = colorWellDisplayMode == [(PREditorContentStylePickerConfiguration *)v7 colorWellDisplayMode];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 0;
    }
  }

  return v24;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  identifier = [(PREditorContentStylePickerConfiguration *)self identifier];
  v5 = [builder appendString:identifier];

  prompt = [(PREditorContentStylePickerConfiguration *)self prompt];
  v7 = [builder appendString:prompt];

  stylePalette = [(PREditorContentStylePickerConfiguration *)self stylePalette];
  v9 = [builder appendObject:stylePalette];

  selectedStyle = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
  v11 = [builder appendObject:selectedStyle];

  v12 = [builder appendUnsignedInteger:{-[PREditorContentStylePickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  v13 = [builder hash];

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __54__PREditorContentStylePickerConfiguration_description__block_invoke;
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
  v4 = objc_alloc(objc_opt_class());
  identifier = [(PREditorContentStylePickerConfiguration *)self identifier];
  prompt = [(PREditorContentStylePickerConfiguration *)self prompt];
  selectedStyle = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
  stylePalette = [(PREditorContentStylePickerConfiguration *)self stylePalette];
  v9 = [v4 initWithIdentifier:identifier prompt:prompt selectedStyle:selectedStyle stylePalette:stylePalette colorWellDisplayMode:{-[PREditorContentStylePickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PREditorContentStylePickerConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  prompt = [(PREditorContentStylePickerConfiguration *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  selectedStyle = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
  type = [selectedStyle type];

  if (type != 999)
  {
    selectedStyle2 = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
    [coderCopy encodeObject:selectedStyle2 forKey:@"selectedStyle"];
  }

  stylePalette = [(PREditorContentStylePickerConfiguration *)self stylePalette];
  [coderCopy encodeObject:stylePalette forKey:@"palette"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorContentStylePickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [coderCopy encodeObject:v10 forKey:@"colorWellDisplayMode"];
}

- (PREditorContentStylePickerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"identifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"prompt"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = PRPosterContentStyleClasses();
  v11 = [v9 setWithArray:v10];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"selectedStyle"];

  v13 = objc_opt_self();
  v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"palette"];

  v15 = objc_opt_self();
  v16 = [coderCopy decodeObjectOfClass:v15 forKey:@"colorWellDisplayMode"];

  if (v16)
  {
    unsignedIntegerValue = [v16 unsignedIntegerValue];
    if (unsignedIntegerValue >= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = unsignedIntegerValue;
    }
  }

  else
  {
    v18 = 2;
  }

  v19 = [(PREditorContentStylePickerConfiguration *)self initWithIdentifier:v6 prompt:v8 selectedStyle:v12 stylePalette:v14 colorWellDisplayMode:v18];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PREditorContentStylePickerConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  prompt = [(PREditorContentStylePickerConfiguration *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  selectedStyle = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
  type = [selectedStyle type];

  if (type != 999)
  {
    selectedStyle2 = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
    [coderCopy encodeObject:selectedStyle2 forKey:@"selectedStyle"];
  }

  stylePalette = [(PREditorContentStylePickerConfiguration *)self stylePalette];
  [coderCopy encodeObject:stylePalette forKey:@"palette"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PREditorContentStylePickerConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [coderCopy encodeObject:v10 forKey:@"colorWellDisplayMode"];
}

- (PREditorContentStylePickerConfiguration)initWithBSXPCCoder:(id)coder
{
  v29 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"identifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"prompt"];

  PRPosterContentStyleClasses();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v27 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [coderCopy decodeObjectOfClass:*(*(&v24 + 1) + 8 * i) forKey:{@"selectedStyle", v24}];
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = objc_opt_self();
  v17 = [coderCopy decodeObjectOfClass:v16 forKey:@"palette"];

  v18 = objc_opt_self();
  v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"colorWellDisplayMode"];

  if (v19)
  {
    unsignedIntegerValue = [v19 unsignedIntegerValue];
    if (unsignedIntegerValue >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = unsignedIntegerValue;
    }
  }

  else
  {
    v21 = 2;
  }

  v22 = [(PREditorContentStylePickerConfiguration *)self initWithIdentifier:v6 prompt:v8 selectedStyle:v15 stylePalette:v17 colorWellDisplayMode:v21, v24];

  return v22;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  identifier = [(PREditorContentStylePickerConfiguration *)self identifier];
  [formatterCopy appendString:identifier withName:@"identifier"];

  prompt = [(PREditorContentStylePickerConfiguration *)self prompt];
  [formatterCopy appendString:prompt withName:@"prompt" skipIfEmpty:1];

  selectedStyle = [(PREditorContentStylePickerConfiguration *)self selectedStyle];
  v7 = [formatterCopy appendObject:selectedStyle withName:@"selectedStyle" skipIfNil:1];

  stylePalette = [(PREditorContentStylePickerConfiguration *)self stylePalette];
  v9 = [formatterCopy appendObject:stylePalette withName:@"stylePalette"];

  colorWellDisplayMode = [(PREditorContentStylePickerConfiguration *)self colorWellDisplayMode];
  if (colorWellDisplayMode > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = off_1E7843A70[colorWellDisplayMode];
  }

  [formatterCopy appendString:v11 withName:@"colorWellDisplayMode"];
}

@end
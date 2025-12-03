@interface PUIStyleConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStyleColorConfiguration:(id)configuration;
- (NSString)description;
- (PUIStyleConfiguration)initWithBSXPCCoder:(id)coder;
- (PUIStyleConfiguration)initWithCoder:(id)coder;
- (PUIStyleConfiguration)initWithIdentifier:(id)identifier prompt:(id)prompt selectedStyle:(id)style stylePalette:(id)palette colorWellDisplayMode:(unint64_t)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setSuggestedStyle:(id)style;
@end

@implementation PUIStyleConfiguration

- (PUIStyleConfiguration)initWithIdentifier:(id)identifier prompt:(id)prompt selectedStyle:(id)style stylePalette:(id)palette colorWellDisplayMode:(unint64_t)mode
{
  identifierCopy = identifier;
  promptCopy = prompt;
  styleCopy = style;
  paletteCopy = palette;
  v24.receiver = self;
  v24.super_class = PUIStyleConfiguration;
  v16 = [(PUIStyleConfiguration *)&v24 init];
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
      prompt = PUIBundle();
      v21 = [prompt localizedStringForKey:@"EDIT_COLOR_PICKER_DEFAULT_PROMPT" value:&stru_1F1C6DED8 table:0];
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
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
    v8 = equalCopy && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (BOOL)isEqualToStyleColorConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (self == configurationCopy)
  {
    v23 = 1;
  }

  else if (configurationCopy)
  {
    v6 = configurationCopy;
    identifier = [(PUIStyleConfiguration *)self identifier];
    identifier2 = [(PUIStyleConfiguration *)v6 identifier];
    v9 = BSEqualStrings();

    if (v9 && ([(PUIStyleConfiguration *)self prompt], v10 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 prompt], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualStrings(), v11, v10, v12) && ([(PUIStyleConfiguration *)self stylePalette], v13 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 stylePalette], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PUIStyleConfiguration *)self selectedStyle], v16 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 selectedStyle], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PUIStyleConfiguration *)self suggestedStyle], v19 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 suggestedStyle], v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, v21))
    {
      colorWellDisplayMode = [(PUIStyleConfiguration *)self colorWellDisplayMode];
      v23 = colorWellDisplayMode == [(PUIStyleConfiguration *)v6 colorWellDisplayMode];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  identifier = [(PUIStyleConfiguration *)self identifier];
  v5 = [builder appendString:identifier];

  prompt = [(PUIStyleConfiguration *)self prompt];
  v7 = [builder appendString:prompt];

  stylePalette = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [builder appendObject:stylePalette];

  selectedStyle = [(PUIStyleConfiguration *)self selectedStyle];
  v11 = [builder appendObject:selectedStyle];

  v12 = [builder appendUnsignedInteger:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  v13 = [builder hash];

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__PUIStyleConfiguration_description__block_invoke;
  v10 = &unk_1E78548A0;
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
  identifier = [(PUIStyleConfiguration *)self identifier];
  prompt = [(PUIStyleConfiguration *)self prompt];
  selectedStyle = [(PUIStyleConfiguration *)self selectedStyle];
  stylePalette = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [v4 initWithIdentifier:identifier prompt:prompt selectedStyle:selectedStyle stylePalette:stylePalette colorWellDisplayMode:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PUIMutableStyleConfiguration alloc];
  identifier = [(PUIStyleConfiguration *)self identifier];
  prompt = [(PUIStyleConfiguration *)self prompt];
  selectedStyle = [(PUIStyleConfiguration *)self selectedStyle];
  stylePalette = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [(PUIStyleConfiguration *)v4 initWithIdentifier:identifier prompt:prompt selectedStyle:selectedStyle stylePalette:stylePalette colorWellDisplayMode:[(PUIStyleConfiguration *)self colorWellDisplayMode]];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PUIStyleConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  prompt = [(PUIStyleConfiguration *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  selectedStyle = [(PUIStyleConfiguration *)self selectedStyle];
  type = [selectedStyle type];

  if (type != 999)
  {
    selectedStyle2 = [(PUIStyleConfiguration *)self selectedStyle];
    [coderCopy encodeObject:selectedStyle2 forKey:@"selectedStyle"];
  }

  stylePalette = [(PUIStyleConfiguration *)self stylePalette];
  [coderCopy encodeObject:stylePalette forKey:@"palette"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [coderCopy encodeObject:v10 forKey:@"colorWellDisplayMode"];
}

- (PUIStyleConfiguration)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"identifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"prompt"];

  v9 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:5];
  v11 = [v9 setWithArray:{v10, v21, v22, v23, v24}];
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

  v19 = [(PUIStyleConfiguration *)self initWithIdentifier:v6 prompt:v8 selectedStyle:v12 stylePalette:v14 colorWellDisplayMode:v18];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PUIStyleConfiguration *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  prompt = [(PUIStyleConfiguration *)self prompt];
  [coderCopy encodeObject:prompt forKey:@"prompt"];

  selectedStyle = [(PUIStyleConfiguration *)self selectedStyle];
  type = [selectedStyle type];

  if (type != 999)
  {
    selectedStyle2 = [(PUIStyleConfiguration *)self selectedStyle];
    [coderCopy encodeObject:selectedStyle2 forKey:@"selectedStyle"];
  }

  stylePalette = [(PUIStyleConfiguration *)self stylePalette];
  [coderCopy encodeObject:stylePalette forKey:@"palette"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [coderCopy encodeObject:v10 forKey:@"colorWellDisplayMode"];
}

- (PUIStyleConfiguration)initWithBSXPCCoder:(id)coder
{
  v29[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"identifier"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:@"prompt"];

  v29[0] = objc_opt_class();
  v29[1] = objc_opt_class();
  v29[2] = objc_opt_class();
  v29[3] = objc_opt_class();
  v29[4] = objc_opt_class();
  [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:5];
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

  v22 = [(PUIStyleConfiguration *)self initWithIdentifier:v6 prompt:v8 selectedStyle:v15 stylePalette:v17 colorWellDisplayMode:v21, v24];

  return v22;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  identifier = [(PUIStyleConfiguration *)self identifier];
  [formatterCopy appendString:identifier withName:@"identifier"];

  prompt = [(PUIStyleConfiguration *)self prompt];
  [formatterCopy appendString:prompt withName:@"prompt" skipIfEmpty:1];

  selectedStyle = [(PUIStyleConfiguration *)self selectedStyle];
  v7 = [formatterCopy appendObject:selectedStyle withName:@"selectedStyle" skipIfNil:1];

  stylePalette = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [formatterCopy appendObject:stylePalette withName:@"stylePalette"];

  colorWellDisplayMode = [(PUIStyleConfiguration *)self colorWellDisplayMode];
  if (colorWellDisplayMode > 2)
  {
    v11 = @"(null color well mode)";
  }

  else
  {
    v11 = off_1E7856418[colorWellDisplayMode];
  }

  [formatterCopy appendString:v11 withName:@"colorWellDisplayMode"];
}

@end
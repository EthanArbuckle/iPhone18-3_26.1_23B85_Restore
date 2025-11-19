@interface PUIStyleConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStyleColorConfiguration:(id)a3;
- (NSString)description;
- (PUIStyleConfiguration)initWithBSXPCCoder:(id)a3;
- (PUIStyleConfiguration)initWithCoder:(id)a3;
- (PUIStyleConfiguration)initWithIdentifier:(id)a3 prompt:(id)a4 selectedStyle:(id)a5 stylePalette:(id)a6 colorWellDisplayMode:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSuggestedStyle:(id)a3;
@end

@implementation PUIStyleConfiguration

- (PUIStyleConfiguration)initWithIdentifier:(id)a3 prompt:(id)a4 selectedStyle:(id)a5 stylePalette:(id)a6 colorWellDisplayMode:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = PUIStyleConfiguration;
  v16 = [(PUIStyleConfiguration *)&v24 init];
  if (v16)
  {
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = [@"default" copy];
    }

    identifier = v16->_identifier;
    v16->_identifier = v17;

    if (v13)
    {
      v19 = v13;
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

    objc_storeStrong(&v16->_selectedStyle, a5);
    objc_storeStrong(&v16->_stylePalette, a6);
    v16->_colorWellDisplayMode = a7;
  }

  return v16;
}

- (void)setSuggestedStyle:(id)a3
{
  v5 = a3;
  p_suggestedStyle = &self->_suggestedStyle;
  if (self->_suggestedStyle != v5)
  {
    v7 = v5;
    objc_storeStrong(p_suggestedStyle, a3);
    v5 = v7;
    self->_showsSuggestedContentStyleItem = v7 != 0;
  }

  MEMORY[0x1EEE66BB8](p_suggestedStyle, v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
    v8 = v4 && (objc_opt_self(), v6 = {;
  }

  return v8;
}

- (BOOL)isEqualToStyleColorConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v23 = 1;
  }

  else if (v4)
  {
    v6 = v4;
    v7 = [(PUIStyleConfiguration *)self identifier];
    v8 = [(PUIStyleConfiguration *)v6 identifier];
    v9 = BSEqualStrings();

    if (v9 && ([(PUIStyleConfiguration *)self prompt], v10 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 prompt], v11 = objc_claimAutoreleasedReturnValue(), v12 = BSEqualStrings(), v11, v10, v12) && ([(PUIStyleConfiguration *)self stylePalette], v13 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 stylePalette], v14 = objc_claimAutoreleasedReturnValue(), v15 = BSEqualObjects(), v14, v13, v15) && ([(PUIStyleConfiguration *)self selectedStyle], v16 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 selectedStyle], v17 = objc_claimAutoreleasedReturnValue(), v18 = BSEqualObjects(), v17, v16, v18) && ([(PUIStyleConfiguration *)self suggestedStyle], v19 = objc_claimAutoreleasedReturnValue(), [(PUIStyleConfiguration *)v6 suggestedStyle], v20 = objc_claimAutoreleasedReturnValue(), v21 = BSEqualObjects(), v20, v19, v21))
    {
      v22 = [(PUIStyleConfiguration *)self colorWellDisplayMode];
      v23 = v22 == [(PUIStyleConfiguration *)v6 colorWellDisplayMode];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PUIStyleConfiguration *)self identifier];
  v5 = [v3 appendString:v4];

  v6 = [(PUIStyleConfiguration *)self prompt];
  v7 = [v3 appendString:v6];

  v8 = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [v3 appendObject:v8];

  v10 = [(PUIStyleConfiguration *)self selectedStyle];
  v11 = [v3 appendObject:v10];

  v12 = [v3 appendUnsignedInteger:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  v13 = [v3 hash];

  return v13;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__PUIStyleConfiguration_description__block_invoke;
  v10 = &unk_1E78548A0;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(PUIStyleConfiguration *)self identifier];
  v6 = [(PUIStyleConfiguration *)self prompt];
  v7 = [(PUIStyleConfiguration *)self selectedStyle];
  v8 = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [v4 initWithIdentifier:v5 prompt:v6 selectedStyle:v7 stylePalette:v8 colorWellDisplayMode:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PUIMutableStyleConfiguration alloc];
  v5 = [(PUIStyleConfiguration *)self identifier];
  v6 = [(PUIStyleConfiguration *)self prompt];
  v7 = [(PUIStyleConfiguration *)self selectedStyle];
  v8 = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [(PUIStyleConfiguration *)v4 initWithIdentifier:v5 prompt:v6 selectedStyle:v7 stylePalette:v8 colorWellDisplayMode:[(PUIStyleConfiguration *)self colorWellDisplayMode]];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(PUIStyleConfiguration *)self identifier];
  [v11 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PUIStyleConfiguration *)self prompt];
  [v11 encodeObject:v5 forKey:@"prompt"];

  v6 = [(PUIStyleConfiguration *)self selectedStyle];
  v7 = [v6 type];

  if (v7 != 999)
  {
    v8 = [(PUIStyleConfiguration *)self selectedStyle];
    [v11 encodeObject:v8 forKey:@"selectedStyle"];
  }

  v9 = [(PUIStyleConfiguration *)self stylePalette];
  [v11 encodeObject:v9 forKey:@"palette"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [v11 encodeObject:v10 forKey:@"colorWellDisplayMode"];
}

- (PUIStyleConfiguration)initWithCoder:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"identifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"prompt"];

  v9 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:5];
  v11 = [v9 setWithArray:{v10, v21, v22, v23, v24}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"selectedStyle"];

  v13 = objc_opt_self();
  v14 = [v4 decodeObjectOfClass:v13 forKey:@"palette"];

  v15 = objc_opt_self();
  v16 = [v4 decodeObjectOfClass:v15 forKey:@"colorWellDisplayMode"];

  if (v16)
  {
    v17 = [v16 unsignedIntegerValue];
    if (v17 >= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17;
    }
  }

  else
  {
    v18 = 2;
  }

  v19 = [(PUIStyleConfiguration *)self initWithIdentifier:v6 prompt:v8 selectedStyle:v12 stylePalette:v14 colorWellDisplayMode:v18];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v11 = a3;
  v4 = [(PUIStyleConfiguration *)self identifier];
  [v11 encodeObject:v4 forKey:@"identifier"];

  v5 = [(PUIStyleConfiguration *)self prompt];
  [v11 encodeObject:v5 forKey:@"prompt"];

  v6 = [(PUIStyleConfiguration *)self selectedStyle];
  v7 = [v6 type];

  if (v7 != 999)
  {
    v8 = [(PUIStyleConfiguration *)self selectedStyle];
    [v11 encodeObject:v8 forKey:@"selectedStyle"];
  }

  v9 = [(PUIStyleConfiguration *)self stylePalette];
  [v11 encodeObject:v9 forKey:@"palette"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PUIStyleConfiguration colorWellDisplayMode](self, "colorWellDisplayMode")}];
  [v11 encodeObject:v10 forKey:@"colorWellDisplayMode"];
}

- (PUIStyleConfiguration)initWithBSXPCCoder:(id)a3
{
  v29[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"identifier"];

  v7 = objc_opt_self();
  v8 = [v4 decodeObjectOfClass:v7 forKey:@"prompt"];

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

        v14 = [v4 decodeObjectOfClass:*(*(&v24 + 1) + 8 * i) forKey:{@"selectedStyle", v24}];
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
  v17 = [v4 decodeObjectOfClass:v16 forKey:@"palette"];

  v18 = objc_opt_self();
  v19 = [v4 decodeObjectOfClass:v18 forKey:@"colorWellDisplayMode"];

  if (v19)
  {
    v20 = [v19 unsignedIntegerValue];
    if (v20 >= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = 2;
  }

  v22 = [(PUIStyleConfiguration *)self initWithIdentifier:v6 prompt:v8 selectedStyle:v15 stylePalette:v17 colorWellDisplayMode:v21, v24];

  return v22;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v12 = a3;
  v4 = [(PUIStyleConfiguration *)self identifier];
  [v12 appendString:v4 withName:@"identifier"];

  v5 = [(PUIStyleConfiguration *)self prompt];
  [v12 appendString:v5 withName:@"prompt" skipIfEmpty:1];

  v6 = [(PUIStyleConfiguration *)self selectedStyle];
  v7 = [v12 appendObject:v6 withName:@"selectedStyle" skipIfNil:1];

  v8 = [(PUIStyleConfiguration *)self stylePalette];
  v9 = [v12 appendObject:v8 withName:@"stylePalette"];

  v10 = [(PUIStyleConfiguration *)self colorWellDisplayMode];
  if (v10 > 2)
  {
    v11 = @"(null color well mode)";
  }

  else
  {
    v11 = off_1E7856418[v10];
  }

  [v12 appendString:v11 withName:@"colorWellDisplayMode"];
}

@end
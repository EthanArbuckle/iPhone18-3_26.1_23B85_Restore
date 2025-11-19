@interface PRPosterHomeScreenCustomizationConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PRPosterHomeScreenCustomizationConfiguration)init;
- (PRPosterHomeScreenCustomizationConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterHomeScreenCustomizationConfiguration)initWithCoder:(id)a3;
- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 iconTintSource:(id)a5 isDimmed:(BOOL)a6 iconUserInterfaceSize:(id)a7 iconUserInterfaceStyleType:(id)a8;
- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 iconTintSource:(id)a5 isDimmed:(BOOL)a6 iconUserInterfaceSize:(id)a7 iconUserInterfaceStyleType:(id)a8 iconUserInterfaceStyleVariant:(id)a9 userSelectedVariantsForStyleTypes:(id)a10;
- (id)_defaultIconUserInterfaceStyleType;
- (id)_defaultVariantsForStyleTypeOptions;
- (id)_sanitizedIconUserInterfaceStyleTypeForType:(id)a3;
- (id)_sanitizedIconUserInterfaceStyleVariantForType:(id)a3 variant:(id)a4;
- (id)configurationUpdatingDimmed:(BOOL)a3;
- (id)configurationUpdatingIconTintSource:(id)a3;
- (id)configurationUpdatingIconUserInterfaceSize:(id)a3;
- (id)configurationUpdatingIconUserInterfaceStyle:(id)a3;
- (id)configurationUpdatingIconUserInterfaceStyleVariant:(id)a3;
- (id)configurationUpdatingSuggestedTintColor:(id)a3;
- (id)configurationUpdatingTintColorStyle:(id)a3;
- (id)configurationUpdatingUserSelectedVariantsForStyleTypes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterHomeScreenCustomizationConfiguration

- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 iconTintSource:(id)a5 isDimmed:(BOOL)a6 iconUserInterfaceSize:(id)a7 iconUserInterfaceStyleType:(id)a8 iconUserInterfaceStyleVariant:(id)a9 userSelectedVariantsForStyleTypes:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v40.receiver = self;
  v40.super_class = PRPosterHomeScreenCustomizationConfiguration;
  v23 = [(PRPosterHomeScreenCustomizationConfiguration *)&v40 init];
  if (v23)
  {
    v24 = v16;
    v25 = a6;
    v39 = v24;
    v26 = [v24 copy];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x1E69C5558]);
    }

    tintColorStyle = v23->_tintColorStyle;
    v23->_tintColorStyle = v28;

    v30 = [v17 copy];
    suggestedTintColor = v23->_suggestedTintColor;
    v23->_suggestedTintColor = v30;

    if (v18)
    {
      v32 = v18;
    }

    else
    {
      v32 = @"wallpaperSuggestion";
    }

    objc_storeStrong(&v23->_iconTintSource, v32);
    v23->_dimmed = v25;
    if (v19)
    {
      v33 = v19;
    }

    else
    {
      v33 = @"SMALL";
    }

    objc_storeStrong(&v23->_iconUserInterfaceSize, v33);
    v34 = [(PRPosterHomeScreenCustomizationConfiguration *)v23 _sanitizedIconUserInterfaceStyleTypeForType:v20];
    iconUserInterfaceStyleType = v23->_iconUserInterfaceStyleType;
    v23->_iconUserInterfaceStyleType = v34;

    v36 = [(PRPosterHomeScreenCustomizationConfiguration *)v23 _sanitizedIconUserInterfaceStyleVariantForType:v20 variant:v21];
    iconUserInterfaceStyleVariant = v23->_iconUserInterfaceStyleVariant;
    v23->_iconUserInterfaceStyleVariant = v36;

    objc_storeStrong(&v23->_userSelectedVariantsForStyleTypes, a10);
    v23->_hash = 0x7FFFFFFFFFFFFFFFLL;
    v16 = v39;
  }

  return v23;
}

- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)a3 suggestedTintColor:(id)a4 iconTintSource:(id)a5 isDimmed:(BOOL)a6 iconUserInterfaceSize:(id)a7 iconUserInterfaceStyleType:(id)a8
{
  v9 = a6;
  v14 = a8;
  v15 = a7;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultVariantsForStyleTypeOptions];
  v20 = [(PRPosterHomeScreenCustomizationConfiguration *)self initWithTintColorStyle:v18 suggestedTintColor:v17 iconTintSource:v16 isDimmed:v9 iconUserInterfaceSize:v15 iconUserInterfaceStyleType:v14 iconUserInterfaceStyleVariant:@"light" userSelectedVariantsForStyleTypes:v19];

  return v20;
}

- (PRPosterHomeScreenCustomizationConfiguration)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69C5558]);
  v4 = kPRPosterHomeScreenCustomizationConfigurationDefaultDimmed;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];
  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self initWithTintColorStyle:v3 suggestedTintColor:0 iconTintSource:@"wallpaperSuggestion" isDimmed:v4 iconUserInterfaceSize:@"SMALL" iconUserInterfaceStyleType:v5];

  return v6;
}

- (id)configurationUpdatingIconUserInterfaceSize:(id)a3
{
  v4 = a3;
  if (([(__CFString *)v4 isEqualToString:@"LARGE"]& 1) == 0 && ([(__CFString *)v4 isEqualToString:@"SMALL"]& 1) == 0)
  {

    v4 = @"SMALL";
  }

  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [(__CFString *)v4 copy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"SMALL";
  }

  objc_storeStrong(v5 + 3, v8);

  return v5;
}

- (id)configurationUpdatingIconUserInterfaceStyle:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"auto"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"dark") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"light") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"accent") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"clear") & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"color") & 1) == 0)
  {
    v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];

    v4 = v5;
  }

  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v7 = [v4 copy];
  v8 = [(PRPosterHomeScreenCustomizationConfiguration *)self _sanitizedIconUserInterfaceStyleTypeForType:v7];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (id)configurationUpdatingIconUserInterfaceStyleVariant:(id)a3
{
  v4 = a3;
  if (([(__CFString *)v4 isEqualToString:@"auto"]& 1) == 0 && ([(__CFString *)v4 isEqualToString:@"dark"]& 1) == 0 && ([(__CFString *)v4 isEqualToString:@"light"]& 1) == 0)
  {

    v4 = @"light";
  }

  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self _sanitizedIconUserInterfaceStyleVariantForType:v5[4] variant:v4];
  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (id)configurationUpdatingUserSelectedVariantsForStyleTypes:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = v5[6];
  v5[6] = v4;

  return v5;
}

- (id)configurationUpdatingDimmed:(BOOL)a3
{
  v4 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v4[16] = a3;

  return v4;
}

- (id)configurationUpdatingTintColorStyle:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [v4 copy];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69C5558]);
  }

  v8 = v5[7];
  v5[7] = v7;

  return v5;
}

- (id)configurationUpdatingSuggestedTintColor:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [v4 copy];

  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (id)configurationUpdatingIconTintSource:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [v4 copy];

  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRPosterHomeScreenCustomizationConfiguration alloc];
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self tintColorStyle];
  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self suggestedTintColor];
  v7 = [(PRPosterHomeScreenCustomizationConfiguration *)self iconTintSource];
  v8 = [(PRPosterHomeScreenCustomizationConfiguration *)self isDimmed];
  v9 = [(PRPosterHomeScreenCustomizationConfiguration *)self iconUserInterfaceSize];
  v10 = [(PRPosterHomeScreenCustomizationConfiguration *)self iconUserInterfaceStyleType];
  v11 = [(PRPosterHomeScreenCustomizationConfiguration *)self iconUserInterfaceStyleVariant];
  v12 = [(PRPosterHomeScreenCustomizationConfiguration *)self userSelectedVariantsForStyleTypes];
  v13 = [(PRPosterHomeScreenCustomizationConfiguration *)v4 initWithTintColorStyle:v5 suggestedTintColor:v6 iconTintSource:v7 isDimmed:v8 iconUserInterfaceSize:v9 iconUserInterfaceStyleType:v10 iconUserInterfaceStyleVariant:v11 userSelectedVariantsForStyleTypes:v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) != 0 && BSEqualBools() && BSEqualObjects() && BSEqualObjects() && BSEqualStrings() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
    {
      v7 = BSEqualDictionaries();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  hash = self->_hash;
  if (hash == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x1E698E6B8] builder];
    v5 = [v4 appendObject:self->_tintColorStyle];
    v6 = [v4 appendObject:self->_suggestedTintColor];
    v7 = [v4 appendObject:self->_iconTintSource];
    v8 = [v4 appendBool:self->_dimmed];
    v9 = [v4 appendObject:self->_iconUserInterfaceSize];
    v10 = [v4 appendObject:self->_iconUserInterfaceStyleType];
    v11 = [v4 appendObject:self->_iconUserInterfaceStyleVariant];
    v12 = [v4 appendObject:self->_userSelectedVariantsForStyleTypes];
    hash = [v4 hash];
    self->_hash = hash;
  }

  return hash;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __59__PRPosterHomeScreenCustomizationConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tintColorStyle = self->_tintColorStyle;
  v5 = a3;
  [v5 encodeObject:tintColorStyle forKey:@"_tintColorStyle"];
  [v5 encodeObject:self->_suggestedTintColor forKey:@"_suggestedTintColor"];
  [v5 encodeObject:self->_iconTintSource forKey:@"_iconTintSource"];
  [v5 encodeBool:self->_dimmed forKey:@"_dimmed"];
  [v5 encodeObject:self->_iconUserInterfaceSize forKey:@"_iconUserInterfaceSize"];
  [v5 encodeObject:self->_iconUserInterfaceStyleType forKey:@"_iconUserInterfaceStyleType"];
  [v5 encodeObject:self->_iconUserInterfaceStyleVariant forKey:@"_iconUserInterfaceStyleVariant"];
  [v5 encodeObject:self->_userSelectedVariantsForStyleTypes forKey:@"_userSelectedVariantsForStyleTypes"];
}

- (PRPosterHomeScreenCustomizationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_tintColorStyle"];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C5558]);
  }

  v9 = v8;

  v10 = objc_opt_self();
  v40 = [v4 decodeObjectOfClass:v10 forKey:@"_suggestedTintColor"];

  v11 = objc_opt_self();
  v12 = [v4 decodeObjectOfClass:v11 forKey:@"_iconTintSource"];

  v39 = [v4 decodeBoolForKey:@"_dimmed"];
  v13 = objc_opt_self();
  v14 = [v4 decodeObjectOfClass:v13 forKey:@"_iconUserInterfaceSize"];
  v15 = v14;
  v16 = @"SMALL";
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = objc_opt_self();
  v19 = [v4 decodeObjectOfClass:v18 forKey:@"_iconUserInterfaceStyleType"];
  v20 = v19;
  v21 = self;
  if (v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];
  }

  v23 = v22;

  v24 = objc_opt_self();
  v25 = [v4 decodeObjectOfClass:v24 forKey:@"_iconUserInterfaceStyleVariant"];
  v26 = v25;
  v27 = @"light";
  if (v25)
  {
    v27 = v25;
  }

  v28 = v27;

  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  v32 = [v4 decodeObjectOfClasses:v31 forKey:@"_userSelectedVariantsForStyleTypes"];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [(PRPosterHomeScreenCustomizationConfiguration *)v21 _defaultVariantsForStyleTypeOptions];
  }

  v35 = v34;
  v36 = @"custom";
  if (!v9)
  {
    v36 = @"wallpaperSuggestion";
  }

  if (!v12)
  {
    v12 = v36;
  }

  v37 = [(PRPosterHomeScreenCustomizationConfiguration *)v21 initWithTintColorStyle:v9 suggestedTintColor:v40 iconTintSource:v12 isDimmed:v39 iconUserInterfaceSize:v17 iconUserInterfaceStyleType:v23 iconUserInterfaceStyleVariant:v28 userSelectedVariantsForStyleTypes:v35];
  return v37;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  tintColorStyle = self->_tintColorStyle;
  v5 = a3;
  [v5 encodeObject:tintColorStyle forKey:@"_tintColorStyle"];
  [v5 encodeObject:self->_suggestedTintColor forKey:@"_suggestedTintColor"];
  [v5 encodeObject:self->_iconTintSource forKey:@"_iconTintSource"];
  [v5 encodeBool:self->_dimmed forKey:@"_dimmed"];
  [v5 encodeObject:self->_iconUserInterfaceSize forKey:@"_iconUserInterfaceSize"];
  [v5 encodeObject:self->_iconUserInterfaceStyleType forKey:@"_iconUserInterfaceStyleType"];
  [v5 encodeObject:self->_iconUserInterfaceStyleVariant forKey:@"_iconUserInterfaceStyleVariant"];
  [v5 encodeObject:self->_userSelectedVariantsForStyleTypes forKey:@"_userSelectedVariantsForStyleTypes"];
}

- (PRPosterHomeScreenCustomizationConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"_tintColorStyle"];
  v7 = v6;
  v35 = self;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E69C5558]);
  }

  v9 = v8;

  v10 = objc_opt_self();
  v11 = [v4 decodeObjectOfClass:v10 forKey:@"_suggestedTintColor"];

  v12 = objc_opt_self();
  v13 = [v4 decodeObjectOfClass:v12 forKey:@"_iconTintSource"];

  v34 = [v4 decodeBoolForKey:@"_dimmed"];
  v14 = objc_opt_self();
  v15 = [v4 decodeObjectOfClass:v14 forKey:@"_iconUserInterfaceSize"];
  v16 = v15;
  v17 = @"SMALL";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = objc_opt_self();
  v20 = [v4 decodeObjectOfClass:v19 forKey:@"_iconUserInterfaceStyleType"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    v23 = v35;
  }

  else
  {
    v23 = v35;
    v22 = [(PRPosterHomeScreenCustomizationConfiguration *)v35 _defaultIconUserInterfaceStyleType];
  }

  v24 = @"custom";
  if (!v9)
  {
    v24 = @"wallpaperSuggestion";
  }

  if (!v13)
  {
    v13 = v24;
  }

  v25 = objc_opt_self();
  v26 = [v4 decodeObjectOfClass:v25 forKey:@"_iconUserInterfaceStyleVariant"];
  v27 = v26;
  v28 = @"light";
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  v30 = objc_opt_self();
  v31 = [v4 decodeObjectOfClass:v30 forKey:@"_userSelectedVariantsForStyleTypes"];

  v32 = [(PRPosterHomeScreenCustomizationConfiguration *)v23 initWithTintColorStyle:v9 suggestedTintColor:v11 iconTintSource:v13 isDimmed:v34 iconUserInterfaceSize:v18 iconUserInterfaceStyleType:v22 iconUserInterfaceStyleVariant:v29 userSelectedVariantsForStyleTypes:v31];
  return v32;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v12 = a3;
  v4 = [v12 appendObject:self->_tintColorStyle withName:@"_tintColorStyle"];
  v5 = [v12 appendObject:self->_suggestedTintColor withName:@"_suggestedTintColor"];
  v6 = [v12 appendObject:self->_iconTintSource withName:@"_iconTintSource"];
  v7 = [v12 appendBool:self->_dimmed withName:@"_dimmed"];
  v8 = [v12 appendObject:self->_iconUserInterfaceSize withName:@"_iconUserInterfaceSize"];
  v9 = [v12 appendObject:self->_iconUserInterfaceStyleType withName:@"_iconUserInterfaceStyleType"];
  v10 = [v12 appendObject:self->_iconUserInterfaceStyleVariant withName:@"_iconUserInterfaceStyleVariant"];
  v11 = [v12 appendObject:self->_userSelectedVariantsForStyleTypes withName:@"_userSelectedVariantsForStyleTypes"];
}

- (id)_defaultIconUserInterfaceStyleType
{
  if (PUIFeatureEnabled())
  {
    v2 = @"color";
  }

  else
  {
    v2 = @"light";
  }

  return v2;
}

- (id)_sanitizedIconUserInterfaceStyleTypeForType:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dark"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"light") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"auto"))
  {
    v5 = @"color";
  }

  else
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];
    }

    v5 = v7;
  }

  return v5;
}

- (id)_sanitizedIconUserInterfaceStyleVariantForType:(id)a3 variant:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = @"dark";
  if (([v5 isEqualToString:@"dark"] & 1) == 0)
  {
    v7 = @"light";
    if (([v5 isEqualToString:@"light"] & 1) == 0)
    {
      v7 = @"auto";
      if (([v5 isEqualToString:@"auto"] & 1) == 0)
      {
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"light";
        }

        v7 = v8;
      }
    }
  }

  return v7;
}

- (id)_defaultVariantsForStyleTypeOptions
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:@"light" forKey:@"default"];
  [v2 setObject:@"always" forKey:@"dark"];
  [v2 setObject:@"light" forKey:@"clear"];
  [v2 setObject:@"light" forKey:@"accent"];
  v3 = [v2 copy];

  return v3;
}

@end
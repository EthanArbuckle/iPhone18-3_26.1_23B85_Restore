@interface PRPosterHomeScreenCustomizationConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PRPosterHomeScreenCustomizationConfiguration)init;
- (PRPosterHomeScreenCustomizationConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterHomeScreenCustomizationConfiguration)initWithCoder:(id)coder;
- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)style suggestedTintColor:(id)color iconTintSource:(id)source isDimmed:(BOOL)dimmed iconUserInterfaceSize:(id)size iconUserInterfaceStyleType:(id)type;
- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)style suggestedTintColor:(id)color iconTintSource:(id)source isDimmed:(BOOL)dimmed iconUserInterfaceSize:(id)size iconUserInterfaceStyleType:(id)type iconUserInterfaceStyleVariant:(id)variant userSelectedVariantsForStyleTypes:(id)self0;
- (id)_defaultIconUserInterfaceStyleType;
- (id)_defaultVariantsForStyleTypeOptions;
- (id)_sanitizedIconUserInterfaceStyleTypeForType:(id)type;
- (id)_sanitizedIconUserInterfaceStyleVariantForType:(id)type variant:(id)variant;
- (id)configurationUpdatingDimmed:(BOOL)dimmed;
- (id)configurationUpdatingIconTintSource:(id)source;
- (id)configurationUpdatingIconUserInterfaceSize:(id)size;
- (id)configurationUpdatingIconUserInterfaceStyle:(id)style;
- (id)configurationUpdatingIconUserInterfaceStyleVariant:(id)variant;
- (id)configurationUpdatingSuggestedTintColor:(id)color;
- (id)configurationUpdatingTintColorStyle:(id)style;
- (id)configurationUpdatingUserSelectedVariantsForStyleTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterHomeScreenCustomizationConfiguration

- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)style suggestedTintColor:(id)color iconTintSource:(id)source isDimmed:(BOOL)dimmed iconUserInterfaceSize:(id)size iconUserInterfaceStyleType:(id)type iconUserInterfaceStyleVariant:(id)variant userSelectedVariantsForStyleTypes:(id)self0
{
  styleCopy = style;
  colorCopy = color;
  sourceCopy = source;
  sizeCopy = size;
  typeCopy = type;
  variantCopy = variant;
  typesCopy = types;
  v40.receiver = self;
  v40.super_class = PRPosterHomeScreenCustomizationConfiguration;
  v23 = [(PRPosterHomeScreenCustomizationConfiguration *)&v40 init];
  if (v23)
  {
    v24 = styleCopy;
    dimmedCopy = dimmed;
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

    v30 = [colorCopy copy];
    suggestedTintColor = v23->_suggestedTintColor;
    v23->_suggestedTintColor = v30;

    if (sourceCopy)
    {
      v32 = sourceCopy;
    }

    else
    {
      v32 = @"wallpaperSuggestion";
    }

    objc_storeStrong(&v23->_iconTintSource, v32);
    v23->_dimmed = dimmedCopy;
    if (sizeCopy)
    {
      v33 = sizeCopy;
    }

    else
    {
      v33 = @"SMALL";
    }

    objc_storeStrong(&v23->_iconUserInterfaceSize, v33);
    v34 = [(PRPosterHomeScreenCustomizationConfiguration *)v23 _sanitizedIconUserInterfaceStyleTypeForType:typeCopy];
    iconUserInterfaceStyleType = v23->_iconUserInterfaceStyleType;
    v23->_iconUserInterfaceStyleType = v34;

    v36 = [(PRPosterHomeScreenCustomizationConfiguration *)v23 _sanitizedIconUserInterfaceStyleVariantForType:typeCopy variant:variantCopy];
    iconUserInterfaceStyleVariant = v23->_iconUserInterfaceStyleVariant;
    v23->_iconUserInterfaceStyleVariant = v36;

    objc_storeStrong(&v23->_userSelectedVariantsForStyleTypes, types);
    v23->_hash = 0x7FFFFFFFFFFFFFFFLL;
    styleCopy = v39;
  }

  return v23;
}

- (PRPosterHomeScreenCustomizationConfiguration)initWithTintColorStyle:(id)style suggestedTintColor:(id)color iconTintSource:(id)source isDimmed:(BOOL)dimmed iconUserInterfaceSize:(id)size iconUserInterfaceStyleType:(id)type
{
  dimmedCopy = dimmed;
  typeCopy = type;
  sizeCopy = size;
  sourceCopy = source;
  colorCopy = color;
  styleCopy = style;
  _defaultVariantsForStyleTypeOptions = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultVariantsForStyleTypeOptions];
  v20 = [(PRPosterHomeScreenCustomizationConfiguration *)self initWithTintColorStyle:styleCopy suggestedTintColor:colorCopy iconTintSource:sourceCopy isDimmed:dimmedCopy iconUserInterfaceSize:sizeCopy iconUserInterfaceStyleType:typeCopy iconUserInterfaceStyleVariant:@"light" userSelectedVariantsForStyleTypes:_defaultVariantsForStyleTypeOptions];

  return v20;
}

- (PRPosterHomeScreenCustomizationConfiguration)init
{
  v3 = objc_alloc_init(MEMORY[0x1E69C5558]);
  v4 = kPRPosterHomeScreenCustomizationConfigurationDefaultDimmed;
  _defaultIconUserInterfaceStyleType = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];
  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self initWithTintColorStyle:v3 suggestedTintColor:0 iconTintSource:@"wallpaperSuggestion" isDimmed:v4 iconUserInterfaceSize:@"SMALL" iconUserInterfaceStyleType:_defaultIconUserInterfaceStyleType];

  return v6;
}

- (id)configurationUpdatingIconUserInterfaceSize:(id)size
{
  sizeCopy = size;
  if (([(__CFString *)sizeCopy isEqualToString:@"LARGE"]& 1) == 0 && ([(__CFString *)sizeCopy isEqualToString:@"SMALL"]& 1) == 0)
  {

    sizeCopy = @"SMALL";
  }

  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [(__CFString *)sizeCopy copy];
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

- (id)configurationUpdatingIconUserInterfaceStyle:(id)style
{
  styleCopy = style;
  if (([styleCopy isEqualToString:@"auto"] & 1) == 0 && (objc_msgSend(styleCopy, "isEqualToString:", @"dark") & 1) == 0 && (objc_msgSend(styleCopy, "isEqualToString:", @"light") & 1) == 0 && (objc_msgSend(styleCopy, "isEqualToString:", @"accent") & 1) == 0 && (objc_msgSend(styleCopy, "isEqualToString:", @"clear") & 1) == 0 && (objc_msgSend(styleCopy, "isEqualToString:", @"color") & 1) == 0)
  {
    _defaultIconUserInterfaceStyleType = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];

    styleCopy = _defaultIconUserInterfaceStyleType;
  }

  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v7 = [styleCopy copy];
  v8 = [(PRPosterHomeScreenCustomizationConfiguration *)self _sanitizedIconUserInterfaceStyleTypeForType:v7];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (id)configurationUpdatingIconUserInterfaceStyleVariant:(id)variant
{
  variantCopy = variant;
  if (([(__CFString *)variantCopy isEqualToString:@"auto"]& 1) == 0 && ([(__CFString *)variantCopy isEqualToString:@"dark"]& 1) == 0 && ([(__CFString *)variantCopy isEqualToString:@"light"]& 1) == 0)
  {

    variantCopy = @"light";
  }

  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [(PRPosterHomeScreenCustomizationConfiguration *)self _sanitizedIconUserInterfaceStyleVariantForType:v5[4] variant:variantCopy];
  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (id)configurationUpdatingUserSelectedVariantsForStyleTypes:(id)types
{
  typesCopy = types;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = v5[6];
  v5[6] = typesCopy;

  return v5;
}

- (id)configurationUpdatingDimmed:(BOOL)dimmed
{
  v4 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v4[16] = dimmed;

  return v4;
}

- (id)configurationUpdatingTintColorStyle:(id)style
{
  styleCopy = style;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [styleCopy copy];

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

- (id)configurationUpdatingSuggestedTintColor:(id)color
{
  colorCopy = color;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [colorCopy copy];

  v7 = v5[8];
  v5[8] = v6;

  return v5;
}

- (id)configurationUpdatingIconTintSource:(id)source
{
  sourceCopy = source;
  v5 = [(PRPosterHomeScreenCustomizationConfiguration *)self copy];
  v6 = [sourceCopy copy];

  v7 = v5[9];
  v5[9] = v6;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRPosterHomeScreenCustomizationConfiguration alloc];
  tintColorStyle = [(PRPosterHomeScreenCustomizationConfiguration *)self tintColorStyle];
  suggestedTintColor = [(PRPosterHomeScreenCustomizationConfiguration *)self suggestedTintColor];
  iconTintSource = [(PRPosterHomeScreenCustomizationConfiguration *)self iconTintSource];
  isDimmed = [(PRPosterHomeScreenCustomizationConfiguration *)self isDimmed];
  iconUserInterfaceSize = [(PRPosterHomeScreenCustomizationConfiguration *)self iconUserInterfaceSize];
  iconUserInterfaceStyleType = [(PRPosterHomeScreenCustomizationConfiguration *)self iconUserInterfaceStyleType];
  iconUserInterfaceStyleVariant = [(PRPosterHomeScreenCustomizationConfiguration *)self iconUserInterfaceStyleVariant];
  userSelectedVariantsForStyleTypes = [(PRPosterHomeScreenCustomizationConfiguration *)self userSelectedVariantsForStyleTypes];
  v13 = [(PRPosterHomeScreenCustomizationConfiguration *)v4 initWithTintColorStyle:tintColorStyle suggestedTintColor:suggestedTintColor iconTintSource:iconTintSource isDimmed:isDimmed iconUserInterfaceSize:iconUserInterfaceSize iconUserInterfaceStyleType:iconUserInterfaceStyleType iconUserInterfaceStyleVariant:iconUserInterfaceStyleVariant userSelectedVariantsForStyleTypes:userSelectedVariantsForStyleTypes];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
    builder = [MEMORY[0x1E698E6B8] builder];
    v5 = [builder appendObject:self->_tintColorStyle];
    v6 = [builder appendObject:self->_suggestedTintColor];
    v7 = [builder appendObject:self->_iconTintSource];
    v8 = [builder appendBool:self->_dimmed];
    v9 = [builder appendObject:self->_iconUserInterfaceSize];
    v10 = [builder appendObject:self->_iconUserInterfaceStyleType];
    v11 = [builder appendObject:self->_iconUserInterfaceStyleVariant];
    v12 = [builder appendObject:self->_userSelectedVariantsForStyleTypes];
    hash = [builder hash];
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
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tintColorStyle = self->_tintColorStyle;
  coderCopy = coder;
  [coderCopy encodeObject:tintColorStyle forKey:@"_tintColorStyle"];
  [coderCopy encodeObject:self->_suggestedTintColor forKey:@"_suggestedTintColor"];
  [coderCopy encodeObject:self->_iconTintSource forKey:@"_iconTintSource"];
  [coderCopy encodeBool:self->_dimmed forKey:@"_dimmed"];
  [coderCopy encodeObject:self->_iconUserInterfaceSize forKey:@"_iconUserInterfaceSize"];
  [coderCopy encodeObject:self->_iconUserInterfaceStyleType forKey:@"_iconUserInterfaceStyleType"];
  [coderCopy encodeObject:self->_iconUserInterfaceStyleVariant forKey:@"_iconUserInterfaceStyleVariant"];
  [coderCopy encodeObject:self->_userSelectedVariantsForStyleTypes forKey:@"_userSelectedVariantsForStyleTypes"];
}

- (PRPosterHomeScreenCustomizationConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_tintColorStyle"];
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
  v40 = [coderCopy decodeObjectOfClass:v10 forKey:@"_suggestedTintColor"];

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"_iconTintSource"];

  v39 = [coderCopy decodeBoolForKey:@"_dimmed"];
  v13 = objc_opt_self();
  v14 = [coderCopy decodeObjectOfClass:v13 forKey:@"_iconUserInterfaceSize"];
  v15 = v14;
  v16 = @"SMALL";
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = objc_opt_self();
  v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"_iconUserInterfaceStyleType"];
  v20 = v19;
  selfCopy = self;
  if (v19)
  {
    _defaultIconUserInterfaceStyleType = v19;
  }

  else
  {
    _defaultIconUserInterfaceStyleType = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];
  }

  v23 = _defaultIconUserInterfaceStyleType;

  v24 = objc_opt_self();
  v25 = [coderCopy decodeObjectOfClass:v24 forKey:@"_iconUserInterfaceStyleVariant"];
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
  v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"_userSelectedVariantsForStyleTypes"];
  v33 = v32;
  if (v32)
  {
    _defaultVariantsForStyleTypeOptions = v32;
  }

  else
  {
    _defaultVariantsForStyleTypeOptions = [(PRPosterHomeScreenCustomizationConfiguration *)selfCopy _defaultVariantsForStyleTypeOptions];
  }

  v35 = _defaultVariantsForStyleTypeOptions;
  v36 = @"custom";
  if (!v9)
  {
    v36 = @"wallpaperSuggestion";
  }

  if (!v12)
  {
    v12 = v36;
  }

  v37 = [(PRPosterHomeScreenCustomizationConfiguration *)selfCopy initWithTintColorStyle:v9 suggestedTintColor:v40 iconTintSource:v12 isDimmed:v39 iconUserInterfaceSize:v17 iconUserInterfaceStyleType:v23 iconUserInterfaceStyleVariant:v28 userSelectedVariantsForStyleTypes:v35];
  return v37;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  tintColorStyle = self->_tintColorStyle;
  coderCopy = coder;
  [coderCopy encodeObject:tintColorStyle forKey:@"_tintColorStyle"];
  [coderCopy encodeObject:self->_suggestedTintColor forKey:@"_suggestedTintColor"];
  [coderCopy encodeObject:self->_iconTintSource forKey:@"_iconTintSource"];
  [coderCopy encodeBool:self->_dimmed forKey:@"_dimmed"];
  [coderCopy encodeObject:self->_iconUserInterfaceSize forKey:@"_iconUserInterfaceSize"];
  [coderCopy encodeObject:self->_iconUserInterfaceStyleType forKey:@"_iconUserInterfaceStyleType"];
  [coderCopy encodeObject:self->_iconUserInterfaceStyleVariant forKey:@"_iconUserInterfaceStyleVariant"];
  [coderCopy encodeObject:self->_userSelectedVariantsForStyleTypes forKey:@"_userSelectedVariantsForStyleTypes"];
}

- (PRPosterHomeScreenCustomizationConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"_tintColorStyle"];
  v7 = v6;
  selfCopy = self;
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
  v11 = [coderCopy decodeObjectOfClass:v10 forKey:@"_suggestedTintColor"];

  v12 = objc_opt_self();
  v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"_iconTintSource"];

  v34 = [coderCopy decodeBoolForKey:@"_dimmed"];
  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"_iconUserInterfaceSize"];
  v16 = v15;
  v17 = @"SMALL";
  if (v15)
  {
    v17 = v15;
  }

  v18 = v17;

  v19 = objc_opt_self();
  v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"_iconUserInterfaceStyleType"];
  v21 = v20;
  if (v20)
  {
    _defaultIconUserInterfaceStyleType = v20;
    v23 = selfCopy;
  }

  else
  {
    v23 = selfCopy;
    _defaultIconUserInterfaceStyleType = [(PRPosterHomeScreenCustomizationConfiguration *)selfCopy _defaultIconUserInterfaceStyleType];
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
  v26 = [coderCopy decodeObjectOfClass:v25 forKey:@"_iconUserInterfaceStyleVariant"];
  v27 = v26;
  v28 = @"light";
  if (v26)
  {
    v28 = v26;
  }

  v29 = v28;

  v30 = objc_opt_self();
  v31 = [coderCopy decodeObjectOfClass:v30 forKey:@"_userSelectedVariantsForStyleTypes"];

  v32 = [(PRPosterHomeScreenCustomizationConfiguration *)v23 initWithTintColorStyle:v9 suggestedTintColor:v11 iconTintSource:v13 isDimmed:v34 iconUserInterfaceSize:v18 iconUserInterfaceStyleType:_defaultIconUserInterfaceStyleType iconUserInterfaceStyleVariant:v29 userSelectedVariantsForStyleTypes:v31];
  return v32;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:self->_tintColorStyle withName:@"_tintColorStyle"];
  v5 = [formatterCopy appendObject:self->_suggestedTintColor withName:@"_suggestedTintColor"];
  v6 = [formatterCopy appendObject:self->_iconTintSource withName:@"_iconTintSource"];
  v7 = [formatterCopy appendBool:self->_dimmed withName:@"_dimmed"];
  v8 = [formatterCopy appendObject:self->_iconUserInterfaceSize withName:@"_iconUserInterfaceSize"];
  v9 = [formatterCopy appendObject:self->_iconUserInterfaceStyleType withName:@"_iconUserInterfaceStyleType"];
  v10 = [formatterCopy appendObject:self->_iconUserInterfaceStyleVariant withName:@"_iconUserInterfaceStyleVariant"];
  v11 = [formatterCopy appendObject:self->_userSelectedVariantsForStyleTypes withName:@"_userSelectedVariantsForStyleTypes"];
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

- (id)_sanitizedIconUserInterfaceStyleTypeForType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"dark"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"light") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"auto"))
  {
    v5 = @"color";
  }

  else
  {
    if (typeCopy)
    {
      _defaultIconUserInterfaceStyleType = typeCopy;
    }

    else
    {
      _defaultIconUserInterfaceStyleType = [(PRPosterHomeScreenCustomizationConfiguration *)self _defaultIconUserInterfaceStyleType];
    }

    v5 = _defaultIconUserInterfaceStyleType;
  }

  return v5;
}

- (id)_sanitizedIconUserInterfaceStyleVariantForType:(id)type variant:(id)variant
{
  typeCopy = type;
  variantCopy = variant;
  v7 = @"dark";
  if (([typeCopy isEqualToString:@"dark"] & 1) == 0)
  {
    v7 = @"light";
    if (([typeCopy isEqualToString:@"light"] & 1) == 0)
    {
      v7 = @"auto";
      if (([typeCopy isEqualToString:@"auto"] & 1) == 0)
      {
        if (variantCopy)
        {
          v8 = variantCopy;
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
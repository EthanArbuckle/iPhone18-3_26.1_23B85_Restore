@interface PUISystemFontConfiguration
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_validWeightRangeForFontIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (PUISystemFontConfiguration)init;
- (PUISystemFontConfiguration)initWithBSXPCCoder:(id)coder;
- (PUISystemFontConfiguration)initWithCoder:(id)coder;
- (PUISystemFontConfiguration)initWithFontIdentifier:(id)identifier systemItem:(BOOL)item;
- (PUISystemFontConfiguration)initWithFontIdentifier:(id)identifier weight:(double)weight systemItem:(BOOL)item;
- (double)_defaultWeightForFontIdentifier:(id)identifier;
- (id)fontWithExtensionBundleURL:(id)l;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PUISystemFontConfiguration

- (PUISystemFontConfiguration)initWithFontIdentifier:(id)identifier systemItem:(BOOL)item
{
  itemCopy = item;
  identifierCopy = identifier;
  [(PUISystemFontConfiguration *)self _defaultWeightForFontIdentifier:identifierCopy];
  v7 = [(PUISystemFontConfiguration *)self initWithFontIdentifier:identifierCopy weight:itemCopy systemItem:?];

  return v7;
}

- (PUISystemFontConfiguration)initWithFontIdentifier:(id)identifier weight:(double)weight systemItem:(BOOL)item
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PUISystemFontConfiguration;
  v9 = [(PUIFontConfiguration *)&v18 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    fontConfiguration = v9->_fontConfiguration;
    v9->_fontConfiguration = v10;

    v12 = [(PUISystemFontConfiguration *)v9 _validWeightRangeForFontIdentifier:identifierCopy];
    v14 = v13;
    if (BSFloatIsZero())
    {
      [(PUISystemFontConfiguration *)v9 _defaultWeightForFontIdentifier:identifierCopy];
      weight = v15;
    }

    weightCopy = v14;
    if (weight < v14)
    {
      weightCopy = weight;
    }

    if (weightCopy < v12)
    {
      weightCopy = v12;
    }

    *&v9->_fontIdentifier = weightCopy;
    *(&v9->super._systemItem + 1) = item;
  }

  return v9;
}

- (PUISystemFontConfiguration)init
{
  defaultFontIdentifier = [objc_opt_class() defaultFontIdentifier];
  v4 = [(PUISystemFontConfiguration *)self initWithFontIdentifier:defaultFontIdentifier];

  return v4;
}

- (id)fontWithExtensionBundleURL:(id)l
{
  v4 = *&self->_systemItem;
  if (!v4)
  {
    v5 = [PUIFont alloc];
    fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
    [(PUISystemFontConfiguration *)self weight];
    v7 = [(PUIFont *)v5 initWithFontIdentifier:fontIdentifier weight:?];
    v8 = *&self->_systemItem;
    *&self->_systemItem = v7;

    v4 = *&self->_systemItem;
  }

  return v4;
}

- (id)uniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
  [(PUISystemFontConfiguration *)self weight];
  v6 = [v3 stringWithFormat:@"%@ - %f", fontIdentifier, v5];

  return v6;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_validWeightRangeForFontIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:identifier];
  pui_variantWeightRange = [v3 pui_variantWeightRange];
  v6 = v5;

  v7 = pui_variantWeightRange;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)_defaultWeightForFontIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:identifier];
  pui_variantWeight = [v3 pui_variantWeight];

  return pui_variantWeight;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
      fontIdentifier2 = [(PUISystemFontConfiguration *)v7 fontIdentifier];
      v10 = BSEqualObjects();

      if (v10)
      {
        [(PUISystemFontConfiguration *)self weight];
        [(PUISystemFontConfiguration *)v7 weight];
        v11 = BSFloatEqualToFloat();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
  v5 = [builder appendString:fontIdentifier];

  [(PUISystemFontConfiguration *)self weight];
  v6 = [builder appendDouble:?];
  v7 = [builder hash];

  return v7;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
  [formatterCopy appendString:fontIdentifier withName:@"fontIdentifier"];

  [(PUISystemFontConfiguration *)self weight];
  v5 = [formatterCopy appendDouble:@"weight" withName:5 decimalPrecision:?];
  v6 = [formatterCopy appendBool:-[PUISystemFontConfiguration isSystemItem](self withName:{"isSystemItem"), @"isSystemItem"}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
  [coderCopy encodeObject:fontIdentifier forKey:@"fontIdentifier"];

  v5 = MEMORY[0x1E696AD98];
  [(PUISystemFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"weight"];

  [coderCopy encodeBool:-[PUISystemFontConfiguration isSystemItem](self forKey:{"isSystemItem"), @"isSystemItem"}];
}

- (PUISystemFontConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  defaultFontIdentifier = [coderCopy decodeObjectOfClass:v5 forKey:@"fontIdentifier"];

  if (!defaultFontIdentifier)
  {
    defaultFontIdentifier = [objc_opt_class() defaultFontIdentifier];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PUISystemFontConfiguration *)self _defaultWeightForFontIdentifier:defaultFontIdentifier];
  }

  v10 = -[PUISystemFontConfiguration initWithFontIdentifier:weight:systemItem:](self, "initWithFontIdentifier:weight:systemItem:", defaultFontIdentifier, [coderCopy decodeBoolForKey:@"isSystemItem"], v9);

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  fontIdentifier = [(PUISystemFontConfiguration *)self fontIdentifier];
  [coderCopy encodeObject:fontIdentifier forKey:@"fontIdentifier"];

  v5 = MEMORY[0x1E696AD98];
  [(PUISystemFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:@"weight"];

  [coderCopy encodeBool:-[PUISystemFontConfiguration isSystemItem](self forKey:{"isSystemItem"), @"isSystemItem"}];
}

- (PUISystemFontConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  defaultFontIdentifier = [coderCopy decodeObjectOfClass:v5 forKey:@"fontIdentifier"];

  if (!defaultFontIdentifier)
  {
    defaultFontIdentifier = [objc_opt_class() defaultFontIdentifier];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PUISystemFontConfiguration *)self _defaultWeightForFontIdentifier:defaultFontIdentifier];
  }

  v10 = -[PUISystemFontConfiguration initWithFontIdentifier:weight:systemItem:](self, "initWithFontIdentifier:weight:systemItem:", defaultFontIdentifier, [coderCopy decodeBoolForKey:@"isSystemItem"], v9);

  return v10;
}

@end
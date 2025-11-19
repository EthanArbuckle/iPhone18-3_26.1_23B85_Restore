@interface PUISystemFontConfiguration
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_validWeightRangeForFontIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PUISystemFontConfiguration)init;
- (PUISystemFontConfiguration)initWithBSXPCCoder:(id)a3;
- (PUISystemFontConfiguration)initWithCoder:(id)a3;
- (PUISystemFontConfiguration)initWithFontIdentifier:(id)a3 systemItem:(BOOL)a4;
- (PUISystemFontConfiguration)initWithFontIdentifier:(id)a3 weight:(double)a4 systemItem:(BOOL)a5;
- (double)_defaultWeightForFontIdentifier:(id)a3;
- (id)fontWithExtensionBundleURL:(id)a3;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PUISystemFontConfiguration

- (PUISystemFontConfiguration)initWithFontIdentifier:(id)a3 systemItem:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PUISystemFontConfiguration *)self _defaultWeightForFontIdentifier:v6];
  v7 = [(PUISystemFontConfiguration *)self initWithFontIdentifier:v6 weight:v4 systemItem:?];

  return v7;
}

- (PUISystemFontConfiguration)initWithFontIdentifier:(id)a3 weight:(double)a4 systemItem:(BOOL)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = PUISystemFontConfiguration;
  v9 = [(PUIFontConfiguration *)&v18 init];
  if (v9)
  {
    v10 = [v8 copy];
    fontConfiguration = v9->_fontConfiguration;
    v9->_fontConfiguration = v10;

    v12 = [(PUISystemFontConfiguration *)v9 _validWeightRangeForFontIdentifier:v8];
    v14 = v13;
    if (BSFloatIsZero())
    {
      [(PUISystemFontConfiguration *)v9 _defaultWeightForFontIdentifier:v8];
      a4 = v15;
    }

    v16 = v14;
    if (a4 < v14)
    {
      v16 = a4;
    }

    if (v16 < v12)
    {
      v16 = v12;
    }

    *&v9->_fontIdentifier = v16;
    *(&v9->super._systemItem + 1) = a5;
  }

  return v9;
}

- (PUISystemFontConfiguration)init
{
  v3 = [objc_opt_class() defaultFontIdentifier];
  v4 = [(PUISystemFontConfiguration *)self initWithFontIdentifier:v3];

  return v4;
}

- (id)fontWithExtensionBundleURL:(id)a3
{
  v4 = *&self->_systemItem;
  if (!v4)
  {
    v5 = [PUIFont alloc];
    v6 = [(PUISystemFontConfiguration *)self fontIdentifier];
    [(PUISystemFontConfiguration *)self weight];
    v7 = [(PUIFont *)v5 initWithFontIdentifier:v6 weight:?];
    v8 = *&self->_systemItem;
    *&self->_systemItem = v7;

    v4 = *&self->_systemItem;
  }

  return v4;
}

- (id)uniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PUISystemFontConfiguration *)self fontIdentifier];
  [(PUISystemFontConfiguration *)self weight];
  v6 = [v3 stringWithFormat:@"%@ - %f", v4, v5];

  return v6;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)_validWeightRangeForFontIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:a3];
  v4 = [v3 pui_variantWeightRange];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)_defaultWeightForFontIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E69DB878] pui_UIFontWithPUIFontIdentifier:a3];
  v4 = [v3 pui_variantWeight];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PUISystemFontConfiguration *)self fontIdentifier];
      v9 = [(PUISystemFontConfiguration *)v7 fontIdentifier];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PUISystemFontConfiguration *)self fontIdentifier];
  v5 = [v3 appendString:v4];

  [(PUISystemFontConfiguration *)self weight];
  v6 = [v3 appendDouble:?];
  v7 = [v3 hash];

  return v7;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(PUISystemFontConfiguration *)self fontIdentifier];
  [v7 appendString:v4 withName:@"fontIdentifier"];

  [(PUISystemFontConfiguration *)self weight];
  v5 = [v7 appendDouble:@"weight" withName:5 decimalPrecision:?];
  v6 = [v7 appendBool:-[PUISystemFontConfiguration isSystemItem](self withName:{"isSystemItem"), @"isSystemItem"}];
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(PUISystemFontConfiguration *)self fontIdentifier];
  [v7 encodeObject:v4 forKey:@"fontIdentifier"];

  v5 = MEMORY[0x1E696AD98];
  [(PUISystemFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [v7 encodeObject:v6 forKey:@"weight"];

  [v7 encodeBool:-[PUISystemFontConfiguration isSystemItem](self forKey:{"isSystemItem"), @"isSystemItem"}];
}

- (PUISystemFontConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"fontIdentifier"];

  if (!v6)
  {
    v6 = [objc_opt_class() defaultFontIdentifier];
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PUISystemFontConfiguration *)self _defaultWeightForFontIdentifier:v6];
  }

  v10 = -[PUISystemFontConfiguration initWithFontIdentifier:weight:systemItem:](self, "initWithFontIdentifier:weight:systemItem:", v6, [v4 decodeBoolForKey:@"isSystemItem"], v9);

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v7 = a3;
  v4 = [(PUISystemFontConfiguration *)self fontIdentifier];
  [v7 encodeObject:v4 forKey:@"fontIdentifier"];

  v5 = MEMORY[0x1E696AD98];
  [(PUISystemFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [v7 encodeObject:v6 forKey:@"weight"];

  [v7 encodeBool:-[PUISystemFontConfiguration isSystemItem](self forKey:{"isSystemItem"), @"isSystemItem"}];
}

- (PUISystemFontConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"fontIdentifier"];

  if (!v6)
  {
    v6 = [objc_opt_class() defaultFontIdentifier];
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"weight"];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PUISystemFontConfiguration *)self _defaultWeightForFontIdentifier:v6];
  }

  v10 = -[PUISystemFontConfiguration initWithFontIdentifier:weight:systemItem:](self, "initWithFontIdentifier:weight:systemItem:", v6, [v4 decodeBoolForKey:@"isSystemItem"], v9);

  return v10;
}

@end
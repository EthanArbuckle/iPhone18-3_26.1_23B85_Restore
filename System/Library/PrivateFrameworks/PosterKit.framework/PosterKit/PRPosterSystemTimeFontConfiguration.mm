@interface PRPosterSystemTimeFontConfiguration
- (BOOL)isEqual:(id)a3;
- (PRPosterSystemTimeFontConfiguration)init;
- (PRPosterSystemTimeFontConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterSystemTimeFontConfiguration)initWithCoder:(id)a3;
- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3 systemItem:(BOOL)a4;
- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3 weight:(double)a4 systemItem:(BOOL)a5;
- (PRPosterSystemTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)a3;
- (PRVariantWeightRange)_validWeightRangeForTimeFontIdentifier:(id)a3;
- (double)_defaultWeightForTimeFontIdentifier:(id)a3;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterSystemTimeFontConfiguration

- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3 systemItem:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PRPosterSystemTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:v6];
  v7 = [(PRPosterSystemTimeFontConfiguration *)self initWithTimeFontIdentifier:v6 weight:v4 systemItem:?];

  return v7;
}

- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3 weight:(double)a4 systemItem:(BOOL)a5
{
  v8 = a3;
  v18.receiver = self;
  v18.super_class = PRPosterSystemTimeFontConfiguration;
  v9 = [(PRPosterTimeFontConfiguration *)&v18 init];
  if (v9)
  {
    v10 = [v8 copy];
    timeFontConfiguration = v9->_timeFontConfiguration;
    v9->_timeFontConfiguration = v10;

    v12 = [(PRPosterSystemTimeFontConfiguration *)v9 _validWeightRangeForTimeFontIdentifier:v8];
    v14 = v13;
    if (BSFloatIsZero())
    {
      [(PRPosterSystemTimeFontConfiguration *)v9 _defaultWeightForTimeFontIdentifier:v8];
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

    *&v9->_timeFontIdentifier = v16;
    *(&v9->super._systemItem + 1) = a5;
  }

  return v9;
}

- (PRPosterSystemTimeFontConfiguration)init
{
  v3 = [objc_opt_class() defaultTimeFontIdentifier];
  v4 = [(PRPosterSystemTimeFontConfiguration *)self initWithTimeFontIdentifier:v3];

  return v4;
}

- (PRPosterSystemTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PRPosterSystemTimeFontConfiguration timeFontConfigurationWithExtensionBundleURL:];
  }

  v5 = *&self->_systemItem;
  if (!v5)
  {
    v6 = [PRTimeFontConfiguration alloc];
    v7 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
    [(PRPosterSystemTimeFontConfiguration *)self weight];
    v8 = [(PRTimeFontConfiguration *)v6 initWithTimeFontIdentifier:v7 weight:?];
    v9 = *&self->_systemItem;
    *&self->_systemItem = v8;

    v5 = *&self->_systemItem;
  }

  v10 = v5;

  return v5;
}

- (id)uniqueIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v3 stringWithFormat:@"%@ - %f", v4, v5];

  return v6;
}

- (PRVariantWeightRange)_validWeightRangeForTimeFontIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:a3];
  v4 = [v3 pr_variantWeightRange];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)_defaultWeightForTimeFontIdentifier:(id)a3
{
  v3 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:a3];
  if ([MEMORY[0x1E6999608] providesMetricsForFont:v3])
  {
    [MEMORY[0x1E6999608] defaultWeightForBaseFont:v3];
    v5 = v4;
  }

  else
  {
    v5 = [v3 pr_variantWeight];
  }

  return v5;
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
      v8 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
      v9 = [(PRPosterSystemTimeFontConfiguration *)v7 timeFontIdentifier];
      v10 = BSEqualObjects();

      if (v10)
      {
        [(PRPosterSystemTimeFontConfiguration *)self weight];
        [(PRPosterSystemTimeFontConfiguration *)v7 weight];
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
  v4 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  v5 = [v3 appendString:v4];

  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v3 appendDouble:?];
  v7 = [v3 hash];

  return v7;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v7 = a3;
  v4 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [v7 appendString:v4 withName:@"timeFontIdentifier"];

  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v5 = [v7 appendDouble:@"weight" withName:5 decimalPrecision:?];
  v6 = [v7 appendBool:-[PRPosterSystemTimeFontConfiguration isSystemItem](self withName:{"isSystemItem"), @"isSystemItem"}];
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [v8 encodeObject:v4 forKey:*MEMORY[0x1E69C54E0]];

  v5 = MEMORY[0x1E696AD98];
  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [v8 encodeObject:v6 forKey:*MEMORY[0x1E69C54E8]];

  v7 = [(PRPosterSystemTimeFontConfiguration *)self isSystemItem];
  [v8 encodeBool:v7 forKey:*MEMORY[0x1E69C54D8]];
}

- (PRPosterSystemTimeFontConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:*MEMORY[0x1E69C54E0]];

  if (!v6)
  {
    v6 = [objc_opt_class() defaultTimeFontIdentifier];
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C54E8]];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PRPosterSystemTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:v6];
  }

  v10 = -[PRPosterSystemTimeFontConfiguration initWithTimeFontIdentifier:weight:systemItem:](self, "initWithTimeFontIdentifier:weight:systemItem:", v6, [v4 decodeBoolForKey:*MEMORY[0x1E69C54D8]], v9);

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  v4 = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [v8 encodeObject:v4 forKey:*MEMORY[0x1E69C54E0]];

  v5 = MEMORY[0x1E696AD98];
  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [v8 encodeObject:v6 forKey:*MEMORY[0x1E69C54E8]];

  v7 = [(PRPosterSystemTimeFontConfiguration *)self isSystemItem];
  [v8 encodeBool:v7 forKey:*MEMORY[0x1E69C54D8]];
}

- (PRPosterSystemTimeFontConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:*MEMORY[0x1E69C54E0]];

  if (!v6)
  {
    v6 = [objc_opt_class() defaultTimeFontIdentifier];
  }

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C54E8]];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PRPosterSystemTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:v6];
  }

  v10 = -[PRPosterSystemTimeFontConfiguration initWithTimeFontIdentifier:weight:systemItem:](self, "initWithTimeFontIdentifier:weight:systemItem:", v6, [v4 decodeBoolForKey:*MEMORY[0x1E69C54D8]], v9);

  return v10;
}

- (void)timeFontConfigurationWithExtensionBundleURL:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_4();
  [v0 handleFailureInMethod:@"extensionBundleURL != nil" object:? file:? lineNumber:? description:?];
}

@end
@interface PRPosterSystemTimeFontConfiguration
- (BOOL)isEqual:(id)equal;
- (PRPosterSystemTimeFontConfiguration)init;
- (PRPosterSystemTimeFontConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterSystemTimeFontConfiguration)initWithCoder:(id)coder;
- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier systemItem:(BOOL)item;
- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier weight:(double)weight systemItem:(BOOL)item;
- (PRPosterSystemTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)l;
- (PRVariantWeightRange)_validWeightRangeForTimeFontIdentifier:(id)identifier;
- (double)_defaultWeightForTimeFontIdentifier:(id)identifier;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterSystemTimeFontConfiguration

- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier systemItem:(BOOL)item
{
  itemCopy = item;
  identifierCopy = identifier;
  [(PRPosterSystemTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:identifierCopy];
  v7 = [(PRPosterSystemTimeFontConfiguration *)self initWithTimeFontIdentifier:identifierCopy weight:itemCopy systemItem:?];

  return v7;
}

- (PRPosterSystemTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier weight:(double)weight systemItem:(BOOL)item
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PRPosterSystemTimeFontConfiguration;
  v9 = [(PRPosterTimeFontConfiguration *)&v18 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    timeFontConfiguration = v9->_timeFontConfiguration;
    v9->_timeFontConfiguration = v10;

    v12 = [(PRPosterSystemTimeFontConfiguration *)v9 _validWeightRangeForTimeFontIdentifier:identifierCopy];
    v14 = v13;
    if (BSFloatIsZero())
    {
      [(PRPosterSystemTimeFontConfiguration *)v9 _defaultWeightForTimeFontIdentifier:identifierCopy];
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

    *&v9->_timeFontIdentifier = weightCopy;
    *(&v9->super._systemItem + 1) = item;
  }

  return v9;
}

- (PRPosterSystemTimeFontConfiguration)init
{
  defaultTimeFontIdentifier = [objc_opt_class() defaultTimeFontIdentifier];
  v4 = [(PRPosterSystemTimeFontConfiguration *)self initWithTimeFontIdentifier:defaultTimeFontIdentifier];

  return v4;
}

- (PRPosterSystemTimeFontConfiguration)timeFontConfigurationWithExtensionBundleURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    [PRPosterSystemTimeFontConfiguration timeFontConfigurationWithExtensionBundleURL:];
  }

  v5 = *&self->_systemItem;
  if (!v5)
  {
    v6 = [PRTimeFontConfiguration alloc];
    timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
    [(PRPosterSystemTimeFontConfiguration *)self weight];
    v8 = [(PRTimeFontConfiguration *)v6 initWithTimeFontIdentifier:timeFontIdentifier weight:?];
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
  timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v3 stringWithFormat:@"%@ - %f", timeFontIdentifier, v5];

  return v6;
}

- (PRVariantWeightRange)_validWeightRangeForTimeFontIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:identifier];
  pr_variantWeightRange = [v3 pr_variantWeightRange];
  v6 = v5;

  v7 = pr_variantWeightRange;
  v8 = v6;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)_defaultWeightForTimeFontIdentifier:(id)identifier
{
  v3 = [MEMORY[0x1E69DB878] pr_fontWithTimeFontIdentifier:identifier];
  if ([MEMORY[0x1E6999608] providesMetricsForFont:v3])
  {
    [MEMORY[0x1E6999608] defaultWeightForBaseFont:v3];
    pr_variantWeight = v4;
  }

  else
  {
    pr_variantWeight = [v3 pr_variantWeight];
  }

  return pr_variantWeight;
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
      timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
      timeFontIdentifier2 = [(PRPosterSystemTimeFontConfiguration *)v7 timeFontIdentifier];
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
  builder = [MEMORY[0x1E698E6B8] builder];
  timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  v5 = [builder appendString:timeFontIdentifier];

  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [builder appendDouble:?];
  v7 = [builder hash];

  return v7;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [formatterCopy appendString:timeFontIdentifier withName:@"timeFontIdentifier"];

  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v5 = [formatterCopy appendDouble:@"weight" withName:5 decimalPrecision:?];
  v6 = [formatterCopy appendBool:-[PRPosterSystemTimeFontConfiguration isSystemItem](self withName:{"isSystemItem"), @"isSystemItem"}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [coderCopy encodeObject:timeFontIdentifier forKey:*MEMORY[0x1E69C54E0]];

  v5 = MEMORY[0x1E696AD98];
  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x1E69C54E8]];

  isSystemItem = [(PRPosterSystemTimeFontConfiguration *)self isSystemItem];
  [coderCopy encodeBool:isSystemItem forKey:*MEMORY[0x1E69C54D8]];
}

- (PRPosterSystemTimeFontConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  defaultTimeFontIdentifier = [coderCopy decodeObjectOfClass:v5 forKey:*MEMORY[0x1E69C54E0]];

  if (!defaultTimeFontIdentifier)
  {
    defaultTimeFontIdentifier = [objc_opt_class() defaultTimeFontIdentifier];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C54E8]];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PRPosterSystemTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:defaultTimeFontIdentifier];
  }

  v10 = -[PRPosterSystemTimeFontConfiguration initWithTimeFontIdentifier:weight:systemItem:](self, "initWithTimeFontIdentifier:weight:systemItem:", defaultTimeFontIdentifier, [coderCopy decodeBoolForKey:*MEMORY[0x1E69C54D8]], v9);

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  timeFontIdentifier = [(PRPosterSystemTimeFontConfiguration *)self timeFontIdentifier];
  [coderCopy encodeObject:timeFontIdentifier forKey:*MEMORY[0x1E69C54E0]];

  v5 = MEMORY[0x1E696AD98];
  [(PRPosterSystemTimeFontConfiguration *)self weight];
  v6 = [v5 numberWithDouble:?];
  [coderCopy encodeObject:v6 forKey:*MEMORY[0x1E69C54E8]];

  isSystemItem = [(PRPosterSystemTimeFontConfiguration *)self isSystemItem];
  [coderCopy encodeBool:isSystemItem forKey:*MEMORY[0x1E69C54D8]];
}

- (PRPosterSystemTimeFontConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  defaultTimeFontIdentifier = [coderCopy decodeObjectOfClass:v5 forKey:*MEMORY[0x1E69C54E0]];

  if (!defaultTimeFontIdentifier)
  {
    defaultTimeFontIdentifier = [objc_opt_class() defaultTimeFontIdentifier];
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69C54E8]];
  v8 = v7;
  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    [(PRPosterSystemTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:defaultTimeFontIdentifier];
  }

  v10 = -[PRPosterSystemTimeFontConfiguration initWithTimeFontIdentifier:weight:systemItem:](self, "initWithTimeFontIdentifier:weight:systemItem:", defaultTimeFontIdentifier, [coderCopy decodeBoolForKey:*MEMORY[0x1E69C54D8]], v9);

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
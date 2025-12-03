@interface PRTimeFontConfiguration
- (BOOL)isEqual:(id)equal;
- (PRTimeFontConfiguration)init;
- (PRTimeFontConfiguration)initWithCustomFont:(id)font;
- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier;
- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier weight:(double)weight;
- (double)_defaultWeightForTimeFontIdentifier:(id)identifier;
- (id)description;
- (id)effectiveFontForRole:(id)role ignoringWeight:(BOOL)weight;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation PRTimeFontConfiguration

- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(PRTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:identifierCopy];
  v5 = [(PRTimeFontConfiguration *)self initWithTimeFontIdentifier:identifierCopy weight:?];

  return v5;
}

- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)identifier weight:(double)weight
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PRTimeFontConfiguration;
  v7 = [(PRTimeFontConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    timeFontIdentifier = v7->_timeFontIdentifier;
    v7->_timeFontIdentifier = v8;

    v7->_weight = weight;
  }

  return v7;
}

- (PRTimeFontConfiguration)initWithCustomFont:(id)font
{
  fontCopy = font;
  v9.receiver = self;
  v9.super_class = PRTimeFontConfiguration;
  v6 = [(PRTimeFontConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customFont, font);
  }

  return v7;
}

- (PRTimeFontConfiguration)init
{
  pr_defaultTimeFontIdentifier = [MEMORY[0x1E69DB878] pr_defaultTimeFontIdentifier];
  v4 = [(PRTimeFontConfiguration *)self initWithTimeFontIdentifier:pr_defaultTimeFontIdentifier];

  return v4;
}

- (id)effectiveFontForRole:(id)role ignoringWeight:(BOOL)weight
{
  weightCopy = weight;
  roleCopy = role;
  customFont = [(PRTimeFontConfiguration *)self customFont];

  if (customFont)
  {
    customFont2 = [(PRTimeFontConfiguration *)self customFont];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    timeFontIdentifier = [(PRTimeFontConfiguration *)self timeFontIdentifier];
    v11 = [v9 pr_fontWithTimeFontIdentifier:timeFontIdentifier forRole:roleCopy];

    if (weightCopy)
    {
      v12 = v11;
    }

    else
    {
      [(PRTimeFontConfiguration *)self weight];
      v12 = [v11 pr_fontWithVariantWeight:v13 forRole:roleCopy];
    }

    customFont2 = v12;
  }

  return customFont2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      timeFontIdentifier = [(PRTimeFontConfiguration *)self timeFontIdentifier];
      timeFontIdentifier2 = [(PRTimeFontConfiguration *)v7 timeFontIdentifier];
      v10 = BSEqualObjects();

      if (v10 && ([(PRTimeFontConfiguration *)self weight], [(PRTimeFontConfiguration *)v7 weight], BSFloatEqualToFloat()))
      {
        customFont = [(PRTimeFontConfiguration *)self customFont];
        customFont2 = [(PRTimeFontConfiguration *)v7 customFont];
        v13 = BSEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  timeFontIdentifier = [(PRTimeFontConfiguration *)self timeFontIdentifier];
  v5 = [builder appendString:timeFontIdentifier];

  [(PRTimeFontConfiguration *)self weight];
  v6 = [builder appendCGFloat:?];
  customFont = [(PRTimeFontConfiguration *)self customFont];
  v8 = [builder appendObject:customFont];

  v9 = [builder hash];
  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__PRTimeFontConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  timeFontIdentifier = [(PRTimeFontConfiguration *)self timeFontIdentifier];
  [formatterCopy appendString:timeFontIdentifier withName:@"timeFontIdentifier" skipIfEmpty:1];

  [(PRTimeFontConfiguration *)self weight];
  v5 = [formatterCopy appendFloat:@"weight" withName:?];
  customFont = [(PRTimeFontConfiguration *)self customFont];
  v7 = [formatterCopy appendObject:customFont withName:@"customFont" skipIfNil:1];
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

@end
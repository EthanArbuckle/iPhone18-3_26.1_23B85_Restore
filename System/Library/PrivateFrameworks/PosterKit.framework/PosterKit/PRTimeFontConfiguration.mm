@interface PRTimeFontConfiguration
- (BOOL)isEqual:(id)a3;
- (PRTimeFontConfiguration)init;
- (PRTimeFontConfiguration)initWithCustomFont:(id)a3;
- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3;
- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3 weight:(double)a4;
- (double)_defaultWeightForTimeFontIdentifier:(id)a3;
- (id)description;
- (id)effectiveFontForRole:(id)a3 ignoringWeight:(BOOL)a4;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation PRTimeFontConfiguration

- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3
{
  v4 = a3;
  [(PRTimeFontConfiguration *)self _defaultWeightForTimeFontIdentifier:v4];
  v5 = [(PRTimeFontConfiguration *)self initWithTimeFontIdentifier:v4 weight:?];

  return v5;
}

- (PRTimeFontConfiguration)initWithTimeFontIdentifier:(id)a3 weight:(double)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PRTimeFontConfiguration;
  v7 = [(PRTimeFontConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    timeFontIdentifier = v7->_timeFontIdentifier;
    v7->_timeFontIdentifier = v8;

    v7->_weight = a4;
  }

  return v7;
}

- (PRTimeFontConfiguration)initWithCustomFont:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRTimeFontConfiguration;
  v6 = [(PRTimeFontConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customFont, a3);
  }

  return v7;
}

- (PRTimeFontConfiguration)init
{
  v3 = [MEMORY[0x1E69DB878] pr_defaultTimeFontIdentifier];
  v4 = [(PRTimeFontConfiguration *)self initWithTimeFontIdentifier:v3];

  return v4;
}

- (id)effectiveFontForRole:(id)a3 ignoringWeight:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PRTimeFontConfiguration *)self customFont];

  if (v7)
  {
    v8 = [(PRTimeFontConfiguration *)self customFont];
  }

  else
  {
    v9 = MEMORY[0x1E69DB878];
    v10 = [(PRTimeFontConfiguration *)self timeFontIdentifier];
    v11 = [v9 pr_fontWithTimeFontIdentifier:v10 forRole:v6];

    if (v4)
    {
      v12 = v11;
    }

    else
    {
      [(PRTimeFontConfiguration *)self weight];
      v12 = [v11 pr_fontWithVariantWeight:v13 forRole:v6];
    }

    v8 = v12;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRTimeFontConfiguration *)self timeFontIdentifier];
      v9 = [(PRTimeFontConfiguration *)v7 timeFontIdentifier];
      v10 = BSEqualObjects();

      if (v10 && ([(PRTimeFontConfiguration *)self weight], [(PRTimeFontConfiguration *)v7 weight], BSFloatEqualToFloat()))
      {
        v11 = [(PRTimeFontConfiguration *)self customFont];
        v12 = [(PRTimeFontConfiguration *)v7 customFont];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PRTimeFontConfiguration *)self timeFontIdentifier];
  v5 = [v3 appendString:v4];

  [(PRTimeFontConfiguration *)self weight];
  v6 = [v3 appendCGFloat:?];
  v7 = [(PRTimeFontConfiguration *)self customFont];
  v8 = [v3 appendObject:v7];

  v9 = [v3 hash];
  return v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __38__PRTimeFontConfiguration_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v8 = a3;
  v4 = [(PRTimeFontConfiguration *)self timeFontIdentifier];
  [v8 appendString:v4 withName:@"timeFontIdentifier" skipIfEmpty:1];

  [(PRTimeFontConfiguration *)self weight];
  v5 = [v8 appendFloat:@"weight" withName:?];
  v6 = [(PRTimeFontConfiguration *)self customFont];
  v7 = [v8 appendObject:v6 withName:@"customFont" skipIfNil:1];
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

@end
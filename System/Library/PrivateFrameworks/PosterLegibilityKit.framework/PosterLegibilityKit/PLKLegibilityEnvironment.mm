@interface PLKLegibilityEnvironment
+ (id)legibilityEnvironmentForUILegibilitySettings:(id)settings variant:(id)variant;
+ (id)legibilityEnvironmentWithDictionary:(id)dictionary userInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (NSSet)variants;
- (PLKLegibilityEnvironment)initWithDictionary:(id)dictionary userInfo:(id)info;
- (UIColor)averageColor;
- (UIColor)backgroundColor;
- (UIColor)primaryColor;
- (UIColor)secondaryColor;
- (_UILegibilitySettings)legibilitySettings;
- (double)contrast;
- (double)contrastInRect:(CGRect)rect;
- (double)luma;
- (double)lumaInRect:(CGRect)rect;
- (double)saturation;
- (double)saturationInRect:(CGRect)rect;
- (id)averageColorInRect:(CGRect)rect;
- (id)legibilityDescriptorForVariant:(id)variant;
- (unint64_t)hash;
- (unint64_t)style;
@end

@implementation PLKLegibilityEnvironment

- (NSSet)variants
{
  v2 = MEMORY[0x277CBEB98];
  allKeys = [(NSDictionary *)self->_variantToContextProvider allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

+ (id)legibilityEnvironmentForUILegibilitySettings:(id)settings variant:(id)variant
{
  variantCopy = variant;
  settingsCopy = settings;
  v7 = objc_alloc_init(PLKLegibilityEnvironmentBuilder);
  v8 = [MEMORY[0x277CBEB98] setWithObject:variantCopy];

  [(PLKLegibilityEnvironmentBuilder *)v7 updateWithLegibilitySettings:settingsCopy variants:v8];
  v9 = [(PLKLegibilityEnvironmentBuilder *)v7 buildWithError:0];

  return v9;
}

+ (id)legibilityEnvironmentWithDictionary:(id)dictionary userInfo:(id)info
{
  infoCopy = info;
  dictionaryCopy = dictionary;
  v8 = [[self alloc] initWithDictionary:dictionaryCopy userInfo:infoCopy];

  return v8;
}

- (PLKLegibilityEnvironment)initWithDictionary:(id)dictionary userInfo:(id)info
{
  dictionaryCopy = dictionary;
  infoCopy = info;
  selfCopy = [dictionaryCopy objectForKeyedSubscript:@"PLKLegibilityEnvironmentVariantDefault"];

  if (selfCopy)
  {
    v16.receiver = self;
    v16.super_class = PLKLegibilityEnvironment;
    v9 = [(PLKLegibilityEnvironment *)&v16 init];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:dictionaryCopy copyItems:1];
      variantToContextProvider = v9->_variantToContextProvider;
      v9->_variantToContextProvider = v10;

      v12 = [infoCopy copy];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = MEMORY[0x277CBEC10];
      }

      objc_storeStrong(&v9->_userInfo, v14);
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  v31 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      userInfo = [(PLKLegibilityEnvironment *)self userInfo];
      userInfo2 = [(PLKLegibilityEnvironment *)v7 userInfo];
      v10 = BSEqualDictionaries();

      if (v10)
      {
        variants = [(PLKLegibilityEnvironment *)v7 variants];
        variants2 = [(PLKLegibilityEnvironment *)self variants];
        v10 = BSEqualObjects();

        if (v10)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          obj = [(PLKLegibilityEnvironment *)self variants];
          v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v13)
          {
            v14 = v13;
            v25 = *v27;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v27 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v16 = *(*(&v26 + 1) + 8 * i);
                v17 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v16];
                v18 = [(PLKLegibilityEnvironment *)v7 legibilityEnvironmentContextForVariant:v16];
                if (!BSEqualObjects())
                {

LABEL_19:
                  LOBYTE(v10) = 0;
                  goto LABEL_20;
                }

                v19 = [(PLKLegibilityEnvironment *)self legibilityDescriptorForVariant:v16];
                v20 = [(PLKLegibilityEnvironment *)v7 legibilityDescriptorForVariant:v16];
                v21 = BSEqualObjects();

                if (!v21)
                {
                  goto LABEL_19;
                }
              }

              v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
              LOBYTE(v10) = 1;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            LOBYTE(v10) = 1;
          }

LABEL_20:
        }
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  contextForVariant = [(PLKLegibilityEnvironment *)self contextForVariant];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__PLKLegibilityEnvironment_hash__block_invoke;
  v10[3] = &unk_27835B250;
  v11 = builder;
  v5 = builder;
  [contextForVariant enumerateKeysAndObjectsUsingBlock:v10];

  userInfo = [(PLKLegibilityEnvironment *)self userInfo];
  v7 = [v5 appendObject:userInfo];

  v8 = [v5 hash];
  return v8;
}

void __32__PLKLegibilityEnvironment_hash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) appendObject:a2];
  v6 = [*(a1 + 32) appendObject:v7];
}

- (id)legibilityDescriptorForVariant:(id)variant
{
  v3 = [(NSDictionary *)self->_variantToContextProvider objectForKey:variant];
  legibilityDescriptor = [v3 legibilityDescriptor];

  return legibilityDescriptor;
}

- (unint64_t)style
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  style = [v4 style];

  return style;
}

- (_UILegibilitySettings)legibilitySettings
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  legibilitySettings = [v4 legibilitySettings];

  return legibilitySettings;
}

- (UIColor)primaryColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  primaryColor = [v4 primaryColor];

  return primaryColor;
}

- (UIColor)secondaryColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  secondaryColor = [v4 secondaryColor];

  return secondaryColor;
}

- (UIColor)backgroundColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  backgroundColor = [v4 backgroundColor];

  return backgroundColor;
}

- (UIColor)averageColor
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  averageColor = [v4 averageColor];

  return averageColor;
}

- (id)averageColorInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  variant = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  v10 = [v9 averageColorInRect:{x, y, width, height}];

  return v10;
}

- (double)contrast
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  [v4 contrast];
  v6 = v5;

  return v6;
}

- (double)contrastInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  variant = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  [v9 contrastInRect:{x, y, width, height}];
  v11 = v10;

  return v11;
}

- (double)saturation
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  [v4 saturation];
  v6 = v5;

  return v6;
}

- (double)saturationInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  variant = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  [v9 saturationInRect:{x, y, width, height}];
  v11 = v10;

  return v11;
}

- (double)luma
{
  variant = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  [v4 luma];
  v6 = v5;

  return v6;
}

- (double)lumaInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  variant = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:variant];
  [v9 lumaInRect:{x, y, width, height}];
  v11 = v10;

  return v11;
}

@end
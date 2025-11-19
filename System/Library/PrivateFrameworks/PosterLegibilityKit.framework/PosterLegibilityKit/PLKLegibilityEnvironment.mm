@interface PLKLegibilityEnvironment
+ (id)legibilityEnvironmentForUILegibilitySettings:(id)a3 variant:(id)a4;
+ (id)legibilityEnvironmentWithDictionary:(id)a3 userInfo:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSSet)variants;
- (PLKLegibilityEnvironment)initWithDictionary:(id)a3 userInfo:(id)a4;
- (UIColor)averageColor;
- (UIColor)backgroundColor;
- (UIColor)primaryColor;
- (UIColor)secondaryColor;
- (_UILegibilitySettings)legibilitySettings;
- (double)contrast;
- (double)contrastInRect:(CGRect)a3;
- (double)luma;
- (double)lumaInRect:(CGRect)a3;
- (double)saturation;
- (double)saturationInRect:(CGRect)a3;
- (id)averageColorInRect:(CGRect)a3;
- (id)legibilityDescriptorForVariant:(id)a3;
- (unint64_t)hash;
- (unint64_t)style;
@end

@implementation PLKLegibilityEnvironment

- (NSSet)variants
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSDictionary *)self->_variantToContextProvider allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)legibilityEnvironmentForUILegibilitySettings:(id)a3 variant:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(PLKLegibilityEnvironmentBuilder);
  v8 = [MEMORY[0x277CBEB98] setWithObject:v5];

  [(PLKLegibilityEnvironmentBuilder *)v7 updateWithLegibilitySettings:v6 variants:v8];
  v9 = [(PLKLegibilityEnvironmentBuilder *)v7 buildWithError:0];

  return v9;
}

+ (id)legibilityEnvironmentWithDictionary:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithDictionary:v7 userInfo:v6];

  return v8;
}

- (PLKLegibilityEnvironment)initWithDictionary:(id)a3 userInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"PLKLegibilityEnvironmentVariantDefault"];

  if (v8)
  {
    v16.receiver = self;
    v16.super_class = PLKLegibilityEnvironment;
    v9 = [(PLKLegibilityEnvironment *)&v16 init];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v6 copyItems:1];
      variantToContextProvider = v9->_variantToContextProvider;
      v9->_variantToContextProvider = v10;

      v12 = [v7 copy];
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
    v8 = self;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PLKLegibilityEnvironment *)self userInfo];
      v9 = [(PLKLegibilityEnvironment *)v7 userInfo];
      v10 = BSEqualDictionaries();

      if (v10)
      {
        v11 = [(PLKLegibilityEnvironment *)v7 variants];
        v12 = [(PLKLegibilityEnvironment *)self variants];
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
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [(PLKLegibilityEnvironment *)self contextForVariant];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__PLKLegibilityEnvironment_hash__block_invoke;
  v10[3] = &unk_27835B250;
  v11 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

  v6 = [(PLKLegibilityEnvironment *)self userInfo];
  v7 = [v5 appendObject:v6];

  v8 = [v5 hash];
  return v8;
}

void __32__PLKLegibilityEnvironment_hash__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) appendObject:a2];
  v6 = [*(a1 + 32) appendObject:v7];
}

- (id)legibilityDescriptorForVariant:(id)a3
{
  v3 = [(NSDictionary *)self->_variantToContextProvider objectForKey:a3];
  v4 = [v3 legibilityDescriptor];

  return v4;
}

- (unint64_t)style
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  v5 = [v4 style];

  return v5;
}

- (_UILegibilitySettings)legibilitySettings
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  v5 = [v4 legibilitySettings];

  return v5;
}

- (UIColor)primaryColor
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  v5 = [v4 primaryColor];

  return v5;
}

- (UIColor)secondaryColor
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  v5 = [v4 secondaryColor];

  return v5;
}

- (UIColor)backgroundColor
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  v5 = [v4 backgroundColor];

  return v5;
}

- (UIColor)averageColor
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  v5 = [v4 averageColor];

  return v5;
}

- (id)averageColorInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v8];
  v10 = [v9 averageColorInRect:{x, y, width, height}];

  return v10;
}

- (double)contrast
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  [v4 contrast];
  v6 = v5;

  return v6;
}

- (double)contrastInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v8];
  [v9 contrastInRect:{x, y, width, height}];
  v11 = v10;

  return v11;
}

- (double)saturation
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  [v4 saturation];
  v6 = v5;

  return v6;
}

- (double)saturationInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v8];
  [v9 saturationInRect:{x, y, width, height}];
  v11 = v10;

  return v11;
}

- (double)luma
{
  v3 = [(PLKLegibilityEnvironment *)self variant];
  v4 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v3];
  [v4 luma];
  v6 = v5;

  return v6;
}

- (double)lumaInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(PLKLegibilityEnvironment *)self variant];
  v9 = [(PLKLegibilityEnvironment *)self legibilityEnvironmentContextForVariant:v8];
  [v9 lumaInRect:{x, y, width, height}];
  v11 = v10;

  return v11;
}

@end
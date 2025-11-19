@interface PRPosterColorVariationsConfiguration
- (BOOL)isEqual:(id)a3;
- (PRPosterColorVariationsConfiguration)initWithBSXPCCoder:(id)a3;
- (PRPosterColorVariationsConfiguration)initWithCoder:(id)a3;
- (PRPosterColorVariationsConfiguration)initWithVariationStorage:(id)a3 version:(unint64_t)a4;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterColorVariationsConfiguration

- (PRPosterColorVariationsConfiguration)initWithVariationStorage:(id)a3 version:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PRPosterColorVariationsConfiguration;
  v8 = [(PRPosterColorVariationsConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_variationStorage, a3);
    v9->_version = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRPosterColorVariationsConfiguration *)self variationStorage];
      v9 = [(PRPosterColorVariationsConfiguration *)v7 variationStorage];
      v10 = [v8 isEqualToDictionary:v9];

      if (v10)
      {
        v11 = [(PRPosterColorVariationsConfiguration *)self version];
        v12 = v11 == [(PRPosterColorVariationsConfiguration *)v7 version];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(PRPosterColorVariationsConfiguration *)self variationStorage];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColorVariationsConfiguration version](self, "version")}];
  v6 = [v5 hash];

  return v6 + v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AE40];
  variationStorage = self->_variationStorage;
  v6 = a3;
  v8 = [v4 dataWithPropertyList:variationStorage format:200 options:0 error:0];
  [v6 encodeObject:v8 forKey:@"variationStorage"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColorVariationsConfiguration version](self, "version")}];
  [v6 encodeObject:v7 forKey:@"version"];
}

- (PRPosterColorVariationsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"variationStorage"];

  if (!v6 || ([MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"version"];

  if (v9)
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(PRPosterColorVariationsConfiguration *)self initWithVariationStorage:v7 version:v10];

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = MEMORY[0x1E696AE40];
  variationStorage = self->_variationStorage;
  v6 = a3;
  v8 = [v4 dataWithPropertyList:variationStorage format:200 options:0 error:0];
  [v6 encodeObject:v8 forKey:@"variationStorage"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColorVariationsConfiguration version](self, "version")}];
  [v6 encodeObject:v7 forKey:@"version"];
}

- (PRPosterColorVariationsConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"variationStorage"];

  if (!v6 || ([MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"version"];

  if (v9)
  {
    v10 = [v9 unsignedIntegerValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(PRPosterColorVariationsConfiguration *)self initWithVariationStorage:v7 version:v10];

  return v11;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v6 = a3;
  v4 = [(PRPosterColorVariationsConfiguration *)self variationStorage];
  v5 = [v6 appendObject:v4 withName:@"variationStorage"];
}

@end
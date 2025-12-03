@interface PRPosterColorVariationsConfiguration
- (BOOL)isEqual:(id)equal;
- (PRPosterColorVariationsConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterColorVariationsConfiguration)initWithCoder:(id)coder;
- (PRPosterColorVariationsConfiguration)initWithVariationStorage:(id)storage version:(unint64_t)version;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterColorVariationsConfiguration

- (PRPosterColorVariationsConfiguration)initWithVariationStorage:(id)storage version:(unint64_t)version
{
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = PRPosterColorVariationsConfiguration;
  v8 = [(PRPosterColorVariationsConfiguration *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_variationStorage, storage);
    v9->_version = version;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      variationStorage = [(PRPosterColorVariationsConfiguration *)self variationStorage];
      variationStorage2 = [(PRPosterColorVariationsConfiguration *)v7 variationStorage];
      v10 = [variationStorage isEqualToDictionary:variationStorage2];

      if (v10)
      {
        version = [(PRPosterColorVariationsConfiguration *)self version];
        v12 = version == [(PRPosterColorVariationsConfiguration *)v7 version];
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
  variationStorage = [(PRPosterColorVariationsConfiguration *)self variationStorage];
  v4 = [variationStorage hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColorVariationsConfiguration version](self, "version")}];
  v6 = [v5 hash];

  return v6 + v4;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AE40];
  variationStorage = self->_variationStorage;
  coderCopy = coder;
  v8 = [v4 dataWithPropertyList:variationStorage format:200 options:0 error:0];
  [coderCopy encodeObject:v8 forKey:@"variationStorage"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColorVariationsConfiguration version](self, "version")}];
  [coderCopy encodeObject:v7 forKey:@"version"];
}

- (PRPosterColorVariationsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"variationStorage"];

  if (!v6 || ([MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"version"];

  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v11 = [(PRPosterColorVariationsConfiguration *)self initWithVariationStorage:v7 version:unsignedIntegerValue];

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  v4 = MEMORY[0x1E696AE40];
  variationStorage = self->_variationStorage;
  coderCopy = coder;
  v8 = [v4 dataWithPropertyList:variationStorage format:200 options:0 error:0];
  [coderCopy encodeObject:v8 forKey:@"variationStorage"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PRPosterColorVariationsConfiguration version](self, "version")}];
  [coderCopy encodeObject:v7 forKey:@"version"];
}

- (PRPosterColorVariationsConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"variationStorage"];

  if (!v6 || ([MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:0], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"version"];

  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  v11 = [(PRPosterColorVariationsConfiguration *)self initWithVariationStorage:v7 version:unsignedIntegerValue];

  return v11;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  variationStorage = [(PRPosterColorVariationsConfiguration *)self variationStorage];
  v5 = [formatterCopy appendObject:variationStorage withName:@"variationStorage"];
}

@end
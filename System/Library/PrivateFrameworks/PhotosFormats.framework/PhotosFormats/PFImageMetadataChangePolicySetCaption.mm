@interface PFImageMetadataChangePolicySetCaption
+ (id)policyWithCaption:(id)a3;
- (BOOL)metadataNeedsProcessing:(id)a3;
- (PFImageMetadataChangePolicySetCaption)initWithCoder:(id)a3;
- (id)processMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFImageMetadataChangePolicySetCaption

+ (id)policyWithCaption:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCaption:v3];

  return v4;
}

- (id)processMetadata:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }

  v7 = *MEMORY[0x1E696DD90];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
  v9 = [v8 mutableCopy];

  v10 = [(PFImageMetadataChangePolicySetCaption *)self caption];

  if (v10)
  {
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
    }

    v11 = [(PFImageMetadataChangePolicySetCaption *)self caption];
  }

  else
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v12 = v11;
  [v9 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696DD68]];

  [v6 setObject:v9 forKeyedSubscript:v7];

  return v6;
}

- (BOOL)metadataNeedsProcessing:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DD68]];
  v6 = [(PFImageMetadataChangePolicySetCaption *)self caption];

  if (v6)
  {
    v7 = [(PFImageMetadataChangePolicySetCaption *)self caption];
    v8 = [v7 isEqualToString:v5];
  }

  else
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E695DFB0] null];
    v8 = [v5 isEqual:v7];
  }

  v9 = v8 ^ 1;

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFImageMetadataChangePolicySetCaption *)self caption];
  [v4 encodeObject:v5 forKey:@"caption"];
}

- (PFImageMetadataChangePolicySetCaption)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"caption"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    [(PFImageMetadataChangePolicySetCaption *)self setCaption:v5];
  }

  return self;
}

@end
@interface PFImageMetadataChangePolicySetLocation
+ (id)policyWithLocation:(id)a3;
- (BOOL)metadataNeedsProcessing:(id)a3;
- (PFImageMetadataChangePolicySetLocation)initWithCoder:(id)a3;
- (id)processMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFImageMetadataChangePolicySetLocation

- (id)processMetadata:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }

  v7 = [(PFImageMetadataChangePolicySetLocation *)self location];

  if (v7)
  {
    v8 = [(PFImageMetadataChangePolicySetLocation *)self location];
    v9 = [PFSharingUtilities gpsDictionaryForLocation:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x1E696DBF0]];

  return v6;
}

- (BOOL)metadataNeedsProcessing:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E696DBF0]];
  v5 = [(PFImageMetadataChangePolicySetLocation *)self location];

  if (v5)
  {
    v6 = [(PFImageMetadataChangePolicySetLocation *)self location];
    v7 = [PFSharingUtilities gpsDictionaryForLocation:v6];

    v8 = [v7 isEqualToDictionary:v4];
  }

  else
  {
    if (!v4)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v7 = [MEMORY[0x1E695DFB0] null];
    v8 = [v4 isEqual:v7];
  }

  v9 = v8 ^ 1;

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFImageMetadataChangePolicySetLocation *)self location];
  [v4 encodeObject:v5 forKey:@"location"];
}

- (PFImageMetadataChangePolicySetLocation)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"location"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(PFImageMetadataChangePolicySetLocation *)self setLocation:v5];
  }

  return self;
}

+ (id)policyWithLocation:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setLocation:v3];

  return v4;
}

@end
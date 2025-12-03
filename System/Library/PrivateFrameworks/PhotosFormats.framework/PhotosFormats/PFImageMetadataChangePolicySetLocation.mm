@interface PFImageMetadataChangePolicySetLocation
+ (id)policyWithLocation:(id)location;
- (BOOL)metadataNeedsProcessing:(id)processing;
- (PFImageMetadataChangePolicySetLocation)initWithCoder:(id)coder;
- (id)processMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFImageMetadataChangePolicySetLocation

- (id)processMetadata:(id)metadata
{
  metadataCopy = metadata;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  if (metadataCopy)
  {
    [dictionary addEntriesFromDictionary:metadataCopy];
  }

  location = [(PFImageMetadataChangePolicySetLocation *)self location];

  if (location)
  {
    location2 = [(PFImageMetadataChangePolicySetLocation *)self location];
    null = [PFSharingUtilities gpsDictionaryForLocation:location2];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  [v6 setObject:null forKeyedSubscript:*MEMORY[0x1E696DBF0]];

  return v6;
}

- (BOOL)metadataNeedsProcessing:(id)processing
{
  v4 = [processing objectForKeyedSubscript:*MEMORY[0x1E696DBF0]];
  location = [(PFImageMetadataChangePolicySetLocation *)self location];

  if (location)
  {
    location2 = [(PFImageMetadataChangePolicySetLocation *)self location];
    null = [PFSharingUtilities gpsDictionaryForLocation:location2];

    v8 = [null isEqualToDictionary:v4];
  }

  else
  {
    if (!v4)
    {
      v9 = 0;
      goto LABEL_6;
    }

    null = [MEMORY[0x1E695DFB0] null];
    v8 = [v4 isEqual:null];
  }

  v9 = v8 ^ 1;

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(PFImageMetadataChangePolicySetLocation *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

- (PFImageMetadataChangePolicySetLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"location"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(PFImageMetadataChangePolicySetLocation *)self setLocation:v5];
  }

  return self;
}

+ (id)policyWithLocation:(id)location
{
  locationCopy = location;
  v4 = objc_opt_new();
  [v4 setLocation:locationCopy];

  return v4;
}

@end
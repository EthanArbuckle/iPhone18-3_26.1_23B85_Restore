@interface PFImageMetadataChangePolicySetAccessibilityDescription
+ (id)policyWithAccessibilityDescription:(id)description;
- (BOOL)metadataNeedsProcessing:(id)processing;
- (PFImageMetadataChangePolicySetAccessibilityDescription)initWithCoder:(id)coder;
- (id)processMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFImageMetadataChangePolicySetAccessibilityDescription

+ (id)policyWithAccessibilityDescription:(id)description
{
  descriptionCopy = description;
  v4 = objc_opt_new();
  [v4 setAccessibilityDescription:descriptionCopy];

  return v4;
}

- (id)processMetadata:(id)metadata
{
  metadataCopy = metadata;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  if (metadataCopy)
  {
    [dictionary addEntriesFromDictionary:metadataCopy];
  }

  v7 = *MEMORY[0x1E696DD90];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
  dictionary2 = [v8 mutableCopy];

  accessibilityDescription = [(PFImageMetadataChangePolicySetAccessibilityDescription *)self accessibilityDescription];

  if (accessibilityDescription)
  {
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    accessibilityDescription2 = [(PFImageMetadataChangePolicySetAccessibilityDescription *)self accessibilityDescription];
  }

  else
  {
    accessibilityDescription2 = [MEMORY[0x1E695DFB0] null];
  }

  v12 = accessibilityDescription2;
  [dictionary2 setObject:accessibilityDescription2 forKeyedSubscript:*MEMORY[0x1E696DDA8]];

  [v6 setObject:dictionary2 forKeyedSubscript:v7];

  return v6;
}

- (BOOL)metadataNeedsProcessing:(id)processing
{
  v4 = [processing objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DDA8]];
  accessibilityDescription = [(PFImageMetadataChangePolicySetAccessibilityDescription *)self accessibilityDescription];

  if (accessibilityDescription)
  {
    accessibilityDescription2 = [(PFImageMetadataChangePolicySetAccessibilityDescription *)self accessibilityDescription];
    v8 = [accessibilityDescription2 isEqualToString:v5];
  }

  else
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_6;
    }

    accessibilityDescription2 = [MEMORY[0x1E695DFB0] null];
    v8 = [v5 isEqual:accessibilityDescription2];
  }

  v9 = v8 ^ 1;

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessibilityDescription = [(PFImageMetadataChangePolicySetAccessibilityDescription *)self accessibilityDescription];
  [coderCopy encodeObject:accessibilityDescription forKey:@"accessibilityDescription"];
}

- (PFImageMetadataChangePolicySetAccessibilityDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"accessibilityDescription"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityDescription"];
    [(PFImageMetadataChangePolicySetAccessibilityDescription *)self setAccessibilityDescription:v5];
  }

  return self;
}

@end
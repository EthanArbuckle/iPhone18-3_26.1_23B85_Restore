@interface PFImageMetadataChangePolicySetCaption
+ (id)policyWithCaption:(id)caption;
- (BOOL)metadataNeedsProcessing:(id)processing;
- (PFImageMetadataChangePolicySetCaption)initWithCoder:(id)coder;
- (id)processMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFImageMetadataChangePolicySetCaption

+ (id)policyWithCaption:(id)caption
{
  captionCopy = caption;
  v4 = objc_opt_new();
  [v4 setCaption:captionCopy];

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

  caption = [(PFImageMetadataChangePolicySetCaption *)self caption];

  if (caption)
  {
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    caption2 = [(PFImageMetadataChangePolicySetCaption *)self caption];
  }

  else
  {
    caption2 = [MEMORY[0x1E695DFB0] null];
  }

  v12 = caption2;
  [dictionary2 setObject:caption2 forKeyedSubscript:*MEMORY[0x1E696DD68]];

  [v6 setObject:dictionary2 forKeyedSubscript:v7];

  return v6;
}

- (BOOL)metadataNeedsProcessing:(id)processing
{
  v4 = [processing objectForKeyedSubscript:*MEMORY[0x1E696DD90]];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696DD68]];
  caption = [(PFImageMetadataChangePolicySetCaption *)self caption];

  if (caption)
  {
    caption2 = [(PFImageMetadataChangePolicySetCaption *)self caption];
    v8 = [caption2 isEqualToString:v5];
  }

  else
  {
    if (!v5)
    {
      v9 = 0;
      goto LABEL_6;
    }

    caption2 = [MEMORY[0x1E695DFB0] null];
    v8 = [v5 isEqual:caption2];
  }

  v9 = v8 ^ 1;

LABEL_6:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  caption = [(PFImageMetadataChangePolicySetCaption *)self caption];
  [coderCopy encodeObject:caption forKey:@"caption"];
}

- (PFImageMetadataChangePolicySetCaption)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"caption"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    [(PFImageMetadataChangePolicySetCaption *)self setCaption:v5];
  }

  return self;
}

@end
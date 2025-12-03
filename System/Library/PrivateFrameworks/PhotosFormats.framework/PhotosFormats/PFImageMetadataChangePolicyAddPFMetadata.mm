@interface PFImageMetadataChangePolicyAddPFMetadata
+ (id)policyWithKey:(id)key value:(id)value;
- (PFImageMetadataChangePolicyAddPFMetadata)initWithCoder:(id)coder;
- (id)processMetadata:(id)metadata;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFImageMetadataChangePolicyAddPFMetadata

+ (id)policyWithKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v7 = objc_opt_new();
  [v7 setKey:keyCopy];

  [v7 setValue:valueCopy];

  return v7;
}

- (id)processMetadata:(id)metadata
{
  v13 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6 = dictionary;
  if (metadataCopy)
  {
    [dictionary addEntriesFromDictionary:metadataCopy];
  }

  v7 = [(PFImageMetadataChangePolicyAddPFMetadata *)self key];
  value = [(PFImageMetadataChangePolicyAddPFMetadata *)self value];
  v9 = [PFMetadataUtilities addMakerApplePropertyWithKey:v7 value:value toProperties:v6];

  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to add metadata: %@", &v11, 0xCu);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PFImageMetadataChangePolicyAddPFMetadata *)self key];
  [coderCopy encodeObject:v5 forKey:@"mediaMetadataType"];

  value = [(PFImageMetadataChangePolicyAddPFMetadata *)self value];
  [coderCopy encodeObject:value forKey:@"mediaMetadataValue"];
}

- (PFImageMetadataChangePolicyAddPFMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"mediaMetadataType"])
  {
    v5 = [coderCopy decodeObjectForKey:@"mediaMetadataType"];
    [(PFImageMetadataChangePolicyAddPFMetadata *)self setKey:v5];
  }

  if ([coderCopy containsValueForKey:@"mediaMetadataValue"])
  {
    v6 = [coderCopy decodeObjectForKey:@"mediaMetadataValue"];
    [(PFImageMetadataChangePolicyAddPFMetadata *)self setValue:v6];
  }

  return self;
}

@end
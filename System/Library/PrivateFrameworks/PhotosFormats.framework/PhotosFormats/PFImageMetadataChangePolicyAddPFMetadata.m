@interface PFImageMetadataChangePolicyAddPFMetadata
+ (id)policyWithKey:(id)a3 value:(id)a4;
- (PFImageMetadataChangePolicyAddPFMetadata)initWithCoder:(id)a3;
- (id)processMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PFImageMetadataChangePolicyAddPFMetadata

+ (id)policyWithKey:(id)a3 value:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setKey:v6];

  [v7 setValue:v5];

  return v7;
}

- (id)processMetadata:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  if (v4)
  {
    [v5 addEntriesFromDictionary:v4];
  }

  v7 = [(PFImageMetadataChangePolicyAddPFMetadata *)self key];
  v8 = [(PFImageMetadataChangePolicyAddPFMetadata *)self value];
  v9 = [PFMetadataUtilities addMakerApplePropertyWithKey:v7 value:v8 toProperties:v6];

  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = 0;
    _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to add metadata: %@", &v11, 0xCu);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PFImageMetadataChangePolicyAddPFMetadata *)self key];
  [v4 encodeObject:v5 forKey:@"mediaMetadataType"];

  v6 = [(PFImageMetadataChangePolicyAddPFMetadata *)self value];
  [v4 encodeObject:v6 forKey:@"mediaMetadataValue"];
}

- (PFImageMetadataChangePolicyAddPFMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"mediaMetadataType"])
  {
    v5 = [v4 decodeObjectForKey:@"mediaMetadataType"];
    [(PFImageMetadataChangePolicyAddPFMetadata *)self setKey:v5];
  }

  if ([v4 containsValueForKey:@"mediaMetadataValue"])
  {
    v6 = [v4 decodeObjectForKey:@"mediaMetadataValue"];
    [(PFImageMetadataChangePolicyAddPFMetadata *)self setValue:v6];
  }

  return self;
}

@end
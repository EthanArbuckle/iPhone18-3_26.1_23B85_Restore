@interface PRPosterMetadata
+ (id)decodeObjectWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PRPosterMetadata)initWithBSXPCCoder:(id)a3;
- (PRPosterMetadata)initWithCoder:(id)a3;
- (PRPosterMetadata)initWithDisplayNameLocalizationKey:(id)a3;
- (id)encodeJSON;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeJSON;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterMetadata

- (PRPosterMetadata)initWithDisplayNameLocalizationKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterMetadata;
  v5 = [(PRPosterMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    displayNameLocalizationKey = v5->_displayNameLocalizationKey;
    v5->_displayNameLocalizationKey = v6;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [PRMutablePosterMetadata allocWithZone:a3];
  v5 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  v6 = [(PRPosterMetadata *)v4 initWithDisplayNameLocalizationKey:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PRPosterMetadata *)self displayNameLocalizationKey];
      v9 = [(PRPosterMetadata *)v7 displayNameLocalizationKey];

      v10 = BSEqualStrings();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [v4 encodeObject:v5 forKey:@"displayNameLocalizationKey"];
}

- (PRPosterMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"displayNameLocalizationKey"];

  v7 = [(PRPosterMetadata *)self initWithDisplayNameLocalizationKey:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [v4 encodeObject:v5 forKey:@"displayNameLocalizationKey"];
}

- (PRPosterMetadata)initWithBSXPCCoder:(id)a3
{
  v4 = [a3 decodeStringForKey:@"displayNameLocalizationKey"];
  v5 = [(PRPosterMetadata *)self initWithDisplayNameLocalizationKey:v4];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [v4 appendString:v5 withName:@"displayNameLocalizationKey" skipIfEmpty:1];
}

- (id)encodeJSON
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [v3 bs_setSafeObject:v4 forKey:@"displayNameLocalizationKey"];

  v5 = [(PRPosterMetadata *)self attributeType];
  [v3 bs_setSafeObject:v5 forKey:@"attributeType"];

  v10 = 0;
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v10];
  v7 = v10;
  if (v7)
  {
    v8 = PRLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)self encodeJSON];
    }
  }

  return v6;
}

+ (id)decodeObjectWithJSON:(id)a3
{
  v9 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v9];
  v4 = v9;
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !v4)
  {
    v5 = [PRPosterMetadata alloc];
    v6 = [v3 objectForKeyedSubscript:@"displayNameLocalizationKey"];
    v7 = [(PRPosterMetadata *)v5 initWithDisplayNameLocalizationKey:v6];
  }

  else
  {
    v6 = PRLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)v4 decodeObjectWithJSON:v6];
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeJSON
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Error encoding to JSON: %@ : %@", &v3, 0x16u);
}

+ (void)decodeObjectWithJSON:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "Error decoding object from JSON: %@", &v2, 0xCu);
}

@end
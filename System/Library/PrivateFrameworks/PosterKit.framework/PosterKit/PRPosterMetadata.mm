@interface PRPosterMetadata
+ (id)decodeObjectWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (PRPosterMetadata)initWithBSXPCCoder:(id)coder;
- (PRPosterMetadata)initWithCoder:(id)coder;
- (PRPosterMetadata)initWithDisplayNameLocalizationKey:(id)key;
- (id)encodeJSON;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeJSON;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterMetadata

- (PRPosterMetadata)initWithDisplayNameLocalizationKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = PRPosterMetadata;
  v5 = [(PRPosterMetadata *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    displayNameLocalizationKey = v5->_displayNameLocalizationKey;
    v5->_displayNameLocalizationKey = v6;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRMutablePosterMetadata allocWithZone:zone];
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  v6 = [(PRPosterMetadata *)v4 initWithDisplayNameLocalizationKey:displayNameLocalizationKey];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
      displayNameLocalizationKey2 = [(PRPosterMetadata *)v7 displayNameLocalizationKey];

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
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  v3 = [displayNameLocalizationKey hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [coderCopy encodeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];
}

- (PRPosterMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"displayNameLocalizationKey"];

  v7 = [(PRPosterMetadata *)self initWithDisplayNameLocalizationKey:v6];
  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [coderCopy encodeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];
}

- (PRPosterMetadata)initWithBSXPCCoder:(id)coder
{
  v4 = [coder decodeStringForKey:@"displayNameLocalizationKey"];
  v5 = [(PRPosterMetadata *)self initWithDisplayNameLocalizationKey:v4];

  return v5;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [formatterCopy appendString:displayNameLocalizationKey withName:@"displayNameLocalizationKey" skipIfEmpty:1];
}

- (id)encodeJSON
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  displayNameLocalizationKey = [(PRPosterMetadata *)self displayNameLocalizationKey];
  [dictionary bs_setSafeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];

  attributeType = [(PRPosterMetadata *)self attributeType];
  [dictionary bs_setSafeObject:attributeType forKey:@"attributeType"];

  v10 = 0;
  v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v10];
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

+ (id)decodeObjectWithJSON:(id)n
{
  v9 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v9];
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
  selfCopy = self;
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
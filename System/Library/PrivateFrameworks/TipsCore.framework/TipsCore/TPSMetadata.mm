@interface TPSMetadata
+ (BOOL)isSupportFlowTypeWithDictionary:(id)dictionary;
+ (id)identifierFromMetadataDictionary:(id)dictionary;
- (TPSMetadata)initWithCoder:(id)coder;
- (TPSMetadata)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSMetadata

+ (id)identifierFromMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy TPSSafeStringForKey:@"language"];
  v5 = [dictionaryCopy TPSSafeStringForKey:@"lastModified"];
  v6 = [dictionaryCopy TPSSafeStringForKey:@"rulesHash"];

  v7 = 0;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v4 && v8)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v4, v8];
  }

  return v7;
}

+ (BOOL)isSupportFlowTypeWithDictionary:(id)dictionary
{
  v3 = [dictionary TPSSafeStringForKey:@"type"];
  v4 = [v3 isEqualToString:@"support/config"];

  return v4;
}

- (TPSMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = TPSMetadata;
  v5 = [(TPSSerializableObject *)&v21 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy TPSSafeStringForKey:@"language"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"en";
    }

    objc_storeStrong(&v5->_language, v8);

    v5->_contextualTipsInactive = [dictionaryCopy TPSSafeBoolForKey:@"contextualTipsInactive"];
    v9 = [dictionaryCopy TPSSafeStringForKey:@"contentMapHash"];
    contentMapHash = v5->_contentMapHash;
    v5->_contentMapHash = v9;

    v11 = [dictionaryCopy TPSSafeDictionaryForKey:@"assetSizes"];
    if (v11)
    {
      v12 = [[TPSAssetSizes alloc] initWithDictionary:v11];
      assetSizes = v5->_assetSizes;
      v5->_assetSizes = v12;
    }

    v14 = [dictionaryCopy TPSSafeStringForKey:@"assetBaseURL"];
    v15 = v14;
    v16 = @"https://ipcdn.apple.com/assets/";
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = [MEMORY[0x1E695DFF8] URLWithString:v17];

    assetBaseURL = v5->_assetBaseURL;
    v5->_assetBaseURL = v18;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = TPSMetadata;
  v4 = [(TPSSerializableObject *)&v11 copyWithZone:zone];
  [v4 setContextualTipsInactive:{-[TPSMetadata contextualTipsInactive](self, "contextualTipsInactive")}];
  language = [(TPSMetadata *)self language];
  [v4 setLanguage:language];

  assetBaseURL = [(TPSMetadata *)self assetBaseURL];
  [v4 setAssetBaseURL:assetBaseURL];

  contentMapHash = [(TPSMetadata *)self contentMapHash];
  [v4 setContentMapHash:contentMapHash];

  assetSizes = [(TPSMetadata *)self assetSizes];
  [v4 setAssetSizes:assetSizes];

  type = [(TPSMetadata *)self type];
  [v4 setType:type];

  return v4;
}

- (TPSMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TPSMetadata;
  v5 = [(TPSSerializableObject *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_contextualTipsInactive = [coderCopy decodeBoolForKey:@"contextualTipsInactive"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetBaseURL"];
    assetBaseURL = v5->_assetBaseURL;
    v5->_assetBaseURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentMapHash"];
    contentMapHash = v5->_contentMapHash;
    v5->_contentMapHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSizes"];
    assetSizes = v5->_assetSizes;
    v5->_assetSizes = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = TPSMetadata;
  coderCopy = coder;
  [(TPSSerializableObject *)&v9 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:-[TPSMetadata contextualTipsInactive](self forKey:{"contextualTipsInactive", v9.receiver, v9.super_class), @"contextualTipsInactive"}];
  language = [(TPSMetadata *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  assetBaseURL = [(TPSMetadata *)self assetBaseURL];
  [coderCopy encodeObject:assetBaseURL forKey:@"assetBaseURL"];

  contentMapHash = [(TPSMetadata *)self contentMapHash];
  [coderCopy encodeObject:contentMapHash forKey:@"contentMapHash"];

  assetSizes = [(TPSMetadata *)self assetSizes];
  [coderCopy encodeObject:assetSizes forKey:@"assetSizes"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = TPSMetadata;
  v4 = [(TPSSerializableObject *)&v12 debugDescription];
  v5 = [v3 initWithString:v4];

  assetBaseURL = [(TPSMetadata *)self assetBaseURL];
  [v5 appendFormat:@"\n%@ = %@\n", @"assetBaseURL", assetBaseURL];

  language = [(TPSMetadata *)self language];
  [v5 appendFormat:@"%@ = %@\n", @"language", language];

  [v5 appendFormat:@"%@ = %d\n", @"contextualTipsInactive", -[TPSMetadata contextualTipsInactive](self, "contextualTipsInactive")];
  contentMapHash = [(TPSMetadata *)self contentMapHash];
  [v5 appendFormat:@"%@ = %@\n", @"contentMapHash", contentMapHash];

  assetSizes = [(TPSMetadata *)self assetSizes];
  v10 = [assetSizes debugDescription];
  [v5 appendFormat:@"%@ = %@\n", @"assetSizes", v10];

  return v5;
}

@end
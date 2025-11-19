@interface TPSMetadata
+ (BOOL)isSupportFlowTypeWithDictionary:(id)a3;
+ (id)identifierFromMetadataDictionary:(id)a3;
- (TPSMetadata)initWithCoder:(id)a3;
- (TPSMetadata)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSMetadata

+ (id)identifierFromMetadataDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 TPSSafeStringForKey:@"language"];
  v5 = [v3 TPSSafeStringForKey:@"lastModified"];
  v6 = [v3 TPSSafeStringForKey:@"rulesHash"];

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

+ (BOOL)isSupportFlowTypeWithDictionary:(id)a3
{
  v3 = [a3 TPSSafeStringForKey:@"type"];
  v4 = [v3 isEqualToString:@"support/config"];

  return v4;
}

- (TPSMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TPSMetadata;
  v5 = [(TPSSerializableObject *)&v21 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 TPSSafeStringForKey:@"language"];
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

    v5->_contextualTipsInactive = [v4 TPSSafeBoolForKey:@"contextualTipsInactive"];
    v9 = [v4 TPSSafeStringForKey:@"contentMapHash"];
    contentMapHash = v5->_contentMapHash;
    v5->_contentMapHash = v9;

    v11 = [v4 TPSSafeDictionaryForKey:@"assetSizes"];
    if (v11)
    {
      v12 = [[TPSAssetSizes alloc] initWithDictionary:v11];
      assetSizes = v5->_assetSizes;
      v5->_assetSizes = v12;
    }

    v14 = [v4 TPSSafeStringForKey:@"assetBaseURL"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = TPSMetadata;
  v4 = [(TPSSerializableObject *)&v11 copyWithZone:a3];
  [v4 setContextualTipsInactive:{-[TPSMetadata contextualTipsInactive](self, "contextualTipsInactive")}];
  v5 = [(TPSMetadata *)self language];
  [v4 setLanguage:v5];

  v6 = [(TPSMetadata *)self assetBaseURL];
  [v4 setAssetBaseURL:v6];

  v7 = [(TPSMetadata *)self contentMapHash];
  [v4 setContentMapHash:v7];

  v8 = [(TPSMetadata *)self assetSizes];
  [v4 setAssetSizes:v8];

  v9 = [(TPSMetadata *)self type];
  [v4 setType:v9];

  return v4;
}

- (TPSMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TPSMetadata;
  v5 = [(TPSSerializableObject *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_contextualTipsInactive = [v4 decodeBoolForKey:@"contextualTipsInactive"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetBaseURL"];
    assetBaseURL = v5->_assetBaseURL;
    v5->_assetBaseURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentMapHash"];
    contentMapHash = v5->_contentMapHash;
    v5->_contentMapHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSizes"];
    assetSizes = v5->_assetSizes;
    v5->_assetSizes = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TPSMetadata;
  v4 = a3;
  [(TPSSerializableObject *)&v9 encodeWithCoder:v4];
  [v4 encodeBool:-[TPSMetadata contextualTipsInactive](self forKey:{"contextualTipsInactive", v9.receiver, v9.super_class), @"contextualTipsInactive"}];
  v5 = [(TPSMetadata *)self language];
  [v4 encodeObject:v5 forKey:@"language"];

  v6 = [(TPSMetadata *)self assetBaseURL];
  [v4 encodeObject:v6 forKey:@"assetBaseURL"];

  v7 = [(TPSMetadata *)self contentMapHash];
  [v4 encodeObject:v7 forKey:@"contentMapHash"];

  v8 = [(TPSMetadata *)self assetSizes];
  [v4 encodeObject:v8 forKey:@"assetSizes"];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v12.receiver = self;
  v12.super_class = TPSMetadata;
  v4 = [(TPSSerializableObject *)&v12 debugDescription];
  v5 = [v3 initWithString:v4];

  v6 = [(TPSMetadata *)self assetBaseURL];
  [v5 appendFormat:@"\n%@ = %@\n", @"assetBaseURL", v6];

  v7 = [(TPSMetadata *)self language];
  [v5 appendFormat:@"%@ = %@\n", @"language", v7];

  [v5 appendFormat:@"%@ = %d\n", @"contextualTipsInactive", -[TPSMetadata contextualTipsInactive](self, "contextualTipsInactive")];
  v8 = [(TPSMetadata *)self contentMapHash];
  [v5 appendFormat:@"%@ = %@\n", @"contentMapHash", v8];

  v9 = [(TPSMetadata *)self assetSizes];
  v10 = [v9 debugDescription];
  [v5 appendFormat:@"%@ = %@\n", @"assetSizes", v10];

  return v5;
}

@end
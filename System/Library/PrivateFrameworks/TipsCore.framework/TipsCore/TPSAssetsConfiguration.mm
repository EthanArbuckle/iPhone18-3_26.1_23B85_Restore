@interface TPSAssetsConfiguration
- (TPSAssetsConfiguration)initWithAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager;
- (TPSAssetsConfiguration)initWithCoder:(id)coder;
- (id)cacheIdentifierForType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)identifierForType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssetsConfiguration

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [v4 setUserInterfaceStyle:{-[TPSAssetsConfiguration userInterfaceStyle](self, "userInterfaceStyle")}];
  assets = [(TPSAssetsConfiguration *)self assets];
  [v4 setAssets:assets];

  language = [(TPSAssetsConfiguration *)self language];
  [v4 setLanguage:language];

  assetFileInfoManager = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  [v4 setAssetFileInfoManager:assetFileInfoManager];

  return v4;
}

- (TPSAssetsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TPSAssetsConfiguration;
  v5 = [(TPSAssetsConfiguration *)&v13 init];
  if (v5)
  {
    v5->_userInterfaceStyle = [coderCopy decodeIntegerForKey:@"userInterface"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"files"];
    assetFileInfoManager = v5->_assetFileInfoManager;
    v5->_assetFileInfoManager = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[TPSAssetsConfiguration userInterfaceStyle](self forKey:{"userInterfaceStyle"), @"userInterface"}];
  assets = [(TPSAssetsConfiguration *)self assets];
  [coderCopy encodeObject:assets forKey:@"assets"];

  language = [(TPSAssetsConfiguration *)self language];
  [coderCopy encodeObject:language forKey:@"language"];

  assetFileInfoManager = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  [coderCopy encodeObject:assetFileInfoManager forKey:@"files"];
}

- (TPSAssetsConfiguration)initWithAssets:(id)assets language:(id)language userInterfaceStyle:(int64_t)style assetFileInfoManager:(id)manager
{
  assetsCopy = assets;
  languageCopy = language;
  managerCopy = manager;
  if (assetsCopy && (([assetsCopy baseURL], v14 = objc_claimAutoreleasedReturnValue(), v14, languageCopy) || !v14))
  {
    v19.receiver = self;
    v19.super_class = TPSAssetsConfiguration;
    v16 = [(TPSAssetsConfiguration *)&v19 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_assets, assets);
      objc_storeStrong(&v17->_language, language);
      v17->_userInterfaceStyle = style;
      objc_storeStrong(&v17->_assetFileInfoManager, manager);
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)identifierForType:(int64_t)type
{
  if (type == 2)
  {
    assets = [(TPSAssetsConfiguration *)self assets];
    thumbnailId = [assets thumbnailId];
    goto LABEL_9;
  }

  if (type == 1)
  {
    assets = [(TPSAssetsConfiguration *)self assets];
    thumbnailId = [assets videoId];
    goto LABEL_9;
  }

  if (type)
  {
    posterId = 0;
  }

  else
  {
    assets2 = [(TPSAssetsConfiguration *)self assets];
    posterId = [assets2 posterId];

    if (!posterId)
    {
      assets3 = [(TPSAssetsConfiguration *)self assets];
      posterId = [assets3 fallbackId];

      if (!posterId)
      {
        assets = [(TPSAssetsConfiguration *)self assets];
        thumbnailId = [assets imageId];
LABEL_9:
        posterId = thumbnailId;
      }
    }
  }

  assetFileInfoManager = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  v10 = [assetFileInfoManager fileInfoIdentifierWithMainIdentifier:posterId userInterfaceStyle:{-[TPSAssetsConfiguration userInterfaceStyle](self, "userInterfaceStyle")}];

  return v10;
}

- (id)cacheIdentifierForType:(int64_t)type
{
  v4 = [(TPSAssetsConfiguration *)self identifierForType:?];
  v5 = v4;
  if (type <= 2)
  {
    v6 = [v4 stringByAppendingPathExtension:off_1E8102398[type]];

    v5 = v6;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v13.receiver = self;
  v13.super_class = TPSAssetsConfiguration;
  v4 = [(TPSAssetsConfiguration *)&v13 debugDescription];
  v5 = [v3 initWithString:v4];

  assets = [(TPSAssetsConfiguration *)self assets];

  if (assets)
  {
    assets2 = [(TPSAssetsConfiguration *)self assets];
    v8 = [assets2 debugDescription];
    [v5 appendFormat:@"\n  %@ = %@\n", @"assets", v8];
  }

  language = [(TPSAssetsConfiguration *)self language];

  if (language)
  {
    language2 = [(TPSAssetsConfiguration *)self language];
    [v5 appendFormat:@"  %@ = %@\n", @"language", language2];
  }

  assetFileInfoManager = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  [v5 appendFormat:@"  %@ = %ld\n", @"files", assetFileInfoManager];

  [v5 appendFormat:@"  %@ = %ld\n", @"userInterface", -[TPSAssetsConfiguration userInterfaceStyle](self, "userInterfaceStyle")];

  return v5;
}

@end
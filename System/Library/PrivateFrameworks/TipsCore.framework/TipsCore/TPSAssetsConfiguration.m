@interface TPSAssetsConfiguration
- (TPSAssetsConfiguration)initWithAssets:(id)a3 language:(id)a4 userInterfaceStyle:(int64_t)a5 assetFileInfoManager:(id)a6;
- (TPSAssetsConfiguration)initWithCoder:(id)a3;
- (id)cacheIdentifierForType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)identifierForType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSAssetsConfiguration

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [v4 setUserInterfaceStyle:{-[TPSAssetsConfiguration userInterfaceStyle](self, "userInterfaceStyle")}];
  v5 = [(TPSAssetsConfiguration *)self assets];
  [v4 setAssets:v5];

  v6 = [(TPSAssetsConfiguration *)self language];
  [v4 setLanguage:v6];

  v7 = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  [v4 setAssetFileInfoManager:v7];

  return v4;
}

- (TPSAssetsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TPSAssetsConfiguration;
  v5 = [(TPSAssetsConfiguration *)&v13 init];
  if (v5)
  {
    v5->_userInterfaceStyle = [v4 decodeIntegerForKey:@"userInterface"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assets"];
    assets = v5->_assets;
    v5->_assets = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"language"];
    language = v5->_language;
    v5->_language = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"files"];
    assetFileInfoManager = v5->_assetFileInfoManager;
    v5->_assetFileInfoManager = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[TPSAssetsConfiguration userInterfaceStyle](self forKey:{"userInterfaceStyle"), @"userInterface"}];
  v5 = [(TPSAssetsConfiguration *)self assets];
  [v4 encodeObject:v5 forKey:@"assets"];

  v6 = [(TPSAssetsConfiguration *)self language];
  [v4 encodeObject:v6 forKey:@"language"];

  v7 = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  [v4 encodeObject:v7 forKey:@"files"];
}

- (TPSAssetsConfiguration)initWithAssets:(id)a3 language:(id)a4 userInterfaceStyle:(int64_t)a5 assetFileInfoManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11 && (([v11 baseURL], v14 = objc_claimAutoreleasedReturnValue(), v14, v12) || !v14))
  {
    v19.receiver = self;
    v19.super_class = TPSAssetsConfiguration;
    v16 = [(TPSAssetsConfiguration *)&v19 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_assets, a3);
      objc_storeStrong(&v17->_language, a4);
      v17->_userInterfaceStyle = a5;
      objc_storeStrong(&v17->_assetFileInfoManager, a6);
    }

    self = v17;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)identifierForType:(int64_t)a3
{
  if (a3 == 2)
  {
    v7 = [(TPSAssetsConfiguration *)self assets];
    v8 = [v7 thumbnailId];
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v7 = [(TPSAssetsConfiguration *)self assets];
    v8 = [v7 videoId];
    goto LABEL_9;
  }

  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(TPSAssetsConfiguration *)self assets];
    v5 = [v4 posterId];

    if (!v5)
    {
      v6 = [(TPSAssetsConfiguration *)self assets];
      v5 = [v6 fallbackId];

      if (!v5)
      {
        v7 = [(TPSAssetsConfiguration *)self assets];
        v8 = [v7 imageId];
LABEL_9:
        v5 = v8;
      }
    }
  }

  v9 = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  v10 = [v9 fileInfoIdentifierWithMainIdentifier:v5 userInterfaceStyle:{-[TPSAssetsConfiguration userInterfaceStyle](self, "userInterfaceStyle")}];

  return v10;
}

- (id)cacheIdentifierForType:(int64_t)a3
{
  v4 = [(TPSAssetsConfiguration *)self identifierForType:?];
  v5 = v4;
  if (a3 <= 2)
  {
    v6 = [v4 stringByAppendingPathExtension:off_1E8102398[a3]];

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

  v6 = [(TPSAssetsConfiguration *)self assets];

  if (v6)
  {
    v7 = [(TPSAssetsConfiguration *)self assets];
    v8 = [v7 debugDescription];
    [v5 appendFormat:@"\n  %@ = %@\n", @"assets", v8];
  }

  v9 = [(TPSAssetsConfiguration *)self language];

  if (v9)
  {
    v10 = [(TPSAssetsConfiguration *)self language];
    [v5 appendFormat:@"  %@ = %@\n", @"language", v10];
  }

  v11 = [(TPSAssetsConfiguration *)self assetFileInfoManager];
  [v5 appendFormat:@"  %@ = %ld\n", @"files", v11];

  [v5 appendFormat:@"  %@ = %ld\n", @"userInterface", -[TPSAssetsConfiguration userInterfaceStyle](self, "userInterfaceStyle")];

  return v5;
}

@end
@interface PHAWallpaperDemoDescriptorConfig
- (PHAWallpaperDemoDescriptorConfig)initWithDictionary:(id)a3;
@end

@implementation PHAWallpaperDemoDescriptorConfig

- (PHAWallpaperDemoDescriptorConfig)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PHAWallpaperDemoDescriptorConfig *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AssetUUID"];
    assetUUID = v5->_assetUUID;
    v5->_assetUUID = v6;

    if (!v5->_assetUUID)
    {
      v12 = 0;
      goto LABEL_6;
    }

    v8 = [v4 objectForKeyedSubscript:@"StyleCategory"];
    styleCategory = v5->_styleCategory;
    v5->_styleCategory = v8;

    v10 = [v4 objectForKeyedSubscript:@"TitleKey"];
    titleKey = v5->_titleKey;
    v5->_titleKey = v10;
  }

  v12 = v5;
LABEL_6:

  return v12;
}

@end
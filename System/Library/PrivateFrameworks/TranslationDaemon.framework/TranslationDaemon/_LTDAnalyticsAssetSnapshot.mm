@interface _LTDAnalyticsAssetSnapshot
- (_LTDAnalyticsAssetSnapshot)initWithAssetBuild:(id)build expectedAssetVersion:(id)version installedAssetVersion:(id)assetVersion;
- (id)description;
@end

@implementation _LTDAnalyticsAssetSnapshot

- (_LTDAnalyticsAssetSnapshot)initWithAssetBuild:(id)build expectedAssetVersion:(id)version installedAssetVersion:(id)assetVersion
{
  buildCopy = build;
  versionCopy = version;
  assetVersionCopy = assetVersion;
  v20.receiver = self;
  v20.super_class = _LTDAnalyticsAssetSnapshot;
  v11 = [(_LTDAnalyticsAssetSnapshot *)&v20 init];
  if (v11)
  {
    v12 = [buildCopy copy];
    assetBuild = v11->_assetBuild;
    v11->_assetBuild = v12;

    v14 = [versionCopy copy];
    expectedAssetVersion = v11->_expectedAssetVersion;
    v11->_expectedAssetVersion = v14;

    v16 = [assetVersionCopy copy];
    installedAssetVersion = v11->_installedAssetVersion;
    v11->_installedAssetVersion = v16;

    v18 = v11;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assetBuild = [(_LTDAnalyticsAssetSnapshot *)self assetBuild];
  expectedAssetVersion = [(_LTDAnalyticsAssetSnapshot *)self expectedAssetVersion];
  installedAssetVersion = [(_LTDAnalyticsAssetSnapshot *)self installedAssetVersion];
  v9 = [v3 stringWithFormat:@"<%@: %p assetBuild: %@; expectedAssetVersion: %@; installedAssetVersion: %@>", v5, self, assetBuild, expectedAssetVersion, installedAssetVersion];;

  return v9;
}

@end
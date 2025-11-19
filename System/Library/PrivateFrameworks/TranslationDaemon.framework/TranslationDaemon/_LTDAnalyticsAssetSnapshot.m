@interface _LTDAnalyticsAssetSnapshot
- (_LTDAnalyticsAssetSnapshot)initWithAssetBuild:(id)a3 expectedAssetVersion:(id)a4 installedAssetVersion:(id)a5;
- (id)description;
@end

@implementation _LTDAnalyticsAssetSnapshot

- (_LTDAnalyticsAssetSnapshot)initWithAssetBuild:(id)a3 expectedAssetVersion:(id)a4 installedAssetVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = _LTDAnalyticsAssetSnapshot;
  v11 = [(_LTDAnalyticsAssetSnapshot *)&v20 init];
  if (v11)
  {
    v12 = [v8 copy];
    assetBuild = v11->_assetBuild;
    v11->_assetBuild = v12;

    v14 = [v9 copy];
    expectedAssetVersion = v11->_expectedAssetVersion;
    v11->_expectedAssetVersion = v14;

    v16 = [v10 copy];
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
  v6 = [(_LTDAnalyticsAssetSnapshot *)self assetBuild];
  v7 = [(_LTDAnalyticsAssetSnapshot *)self expectedAssetVersion];
  v8 = [(_LTDAnalyticsAssetSnapshot *)self installedAssetVersion];
  v9 = [v3 stringWithFormat:@"<%@: %p assetBuild: %@; expectedAssetVersion: %@; installedAssetVersion: %@>", v5, self, v6, v7, v8];;

  return v9;
}

@end
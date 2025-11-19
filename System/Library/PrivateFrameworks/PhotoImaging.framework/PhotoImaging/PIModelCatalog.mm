@interface PIModelCatalog
+ (id)shared;
- (NSDictionary)_metadataVersionInfo;
- (NSString)_cleanupModelBundleURLString;
- (void)set_cleanupModelBundleURLString:(id)a3;
- (void)set_metadataVersionInfo:(id)a3;
@end

@implementation PIModelCatalog

+ (id)shared
{
  swift_getObjCClassMetadata();
  static PIModelCatalog.shared()();

  return v2;
}

- (NSString)_cleanupModelBundleURLString
{
  sub_1C76976E4();
  if (v2)
  {
    v3 = sub_1C7832394();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)set_cleanupModelBundleURLString:(id)a3
{
  if (a3)
  {
    v4 = sub_1C78323A4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1C76977A0(v4, v6);
}

- (NSDictionary)_metadataVersionInfo
{
  if (sub_1C7697830())
  {
    v2 = sub_1C7832374();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)set_metadataVersionInfo:(id)a3
{
  if (a3)
  {
    v4 = sub_1C7832384();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1C76978CC(v4);
}

@end
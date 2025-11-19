@interface SMAssetBundle
- (SMAssetBundle)init;
- (int64_t)loadStatus;
- (int64_t)reason;
@end

@implementation SMAssetBundle

- (int64_t)loadStatus
{
  v2 = self;
  v3 = AssetBundle.loadStatus.getter();
  v5 = v4;

  if (v5)
  {
    return qword_20CB86710[v3];
  }

  else
  {
    return 6;
  }
}

- (int64_t)reason
{
  v2 = self;
  v3 = AssetBundleBridge.reason.getter();

  return v3;
}

- (SMAssetBundle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
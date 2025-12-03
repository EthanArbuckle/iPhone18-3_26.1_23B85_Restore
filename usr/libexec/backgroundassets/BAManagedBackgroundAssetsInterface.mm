@interface BAManagedBackgroundAssetsInterface
+ (BAManagedBackgroundAssetsInterface)sharedInterface;
- (BAManagedBackgroundAssetsInterface)init;
- (id)manifestDataFromLocalCacheForApplicationWithBundleIdentifier:(id)identifier error:(id *)error;
- (id)manifestDataSourceForApplicationWithBundleIdentifier:(id)identifier error:(id *)error;
- (id)manifestRequestForAppStoreApplicationWithBundleIdentifier:(id)identifier error:(id *)error;
- (id)versionIdentifiersOfAssetPackWithIdentifier:(id)identifier forApplicationWithBundleIdentifier:(id)bundleIdentifier error:(id *)error;
@end

@implementation BAManagedBackgroundAssetsInterface

+ (BAManagedBackgroundAssetsInterface)sharedInterface
{
  if (qword_100089540 != -1)
  {
    swift_once();
  }

  v3 = qword_10008B9F0;

  return v3;
}

- (id)manifestDataSourceForApplicationWithBundleIdentifier:(id)identifier error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  v9 = sub_10003701C(v5, v7);

  return v9;
}

- (id)manifestDataFromLocalCacheForApplicationWithBundleIdentifier:(id)identifier error:(id *)error
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  selfCopy = self;
  v9 = sub_100037540(v5, v7);
  v11 = v10;

  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000391A0(v9, v11);

  return v12.super.isa;
}

- (id)manifestRequestForAppStoreApplicationWithBundleIdentifier:(id)identifier error:(id *)error
{
  v5 = type metadata accessor for URLRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  selfCopy = self;
  sub_100037F60(v10, v12);

  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return isa;
}

- (id)versionIdentifiersOfAssetPackWithIdentifier:(id)identifier forApplicationWithBundleIdentifier:(id)bundleIdentifier error:(id *)error
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  selfCopy = self;
  v13 = sub_100038254(v6, v8, v9, v11);

  return v13;
}

- (BAManagedBackgroundAssetsInterface)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
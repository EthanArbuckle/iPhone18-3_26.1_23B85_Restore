@interface BAAssetPackVersionIdentifiers
- (BAAssetPackVersionIdentifiers)init;
- (NSUUID)versionIdentifier;
@end

@implementation BAAssetPackVersionIdentifiers

- (NSUUID)versionIdentifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___BAAssetPackVersionIdentifiers_versionID, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (BAAssetPackVersionIdentifiers)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
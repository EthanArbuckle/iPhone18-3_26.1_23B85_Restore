@interface AEAPolicyStore
- (BOOL)cleanUpPolicyStoreWithError:(id *)a3;
- (BOOL)exists;
- (BOOL)hasPersistentData;
- (id)readOnlyScratchpadForIdentifier:(id)a3;
- (id)writeOnlyScratchpadForIdentifier:(id)a3;
@end

@implementation AEAPolicyStore

- (BOOL)exists
{

  v2 = sub_10003CDE4();

  return v2 & 1;
}

- (BOOL)hasPersistentData
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005A3C(self->fileSystem, *&self->fileSystem[24]);
  v10 = objc_opt_self();

  v11 = [v10 assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = *v9;
  v13 = sub_10001DA3C(v8);
  (*(v4 + 8))(v8, v3);

  v14 = v13[2];

  return v14 != 0;
}

- (id)writeOnlyScratchpadForIdentifier:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_10003D068(v3, v5);

  return v6;
}

- (id)readOnlyScratchpadForIdentifier:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_10003D3DC(v3, v5);

  return v6;
}

- (BOOL)cleanUpPolicyStoreWithError:(id *)a3
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005A3C(self->fileSystem, *&self->fileSystem[24]);
  v11 = objc_opt_self();

  v12 = [v11 assessmentAgentPolicyStoreDirectoryURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = *v10;
  sub_10001D88C();
  (*(v5 + 8))(v9, v4);

  return 1;
}

@end
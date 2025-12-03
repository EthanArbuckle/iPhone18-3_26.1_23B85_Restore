@interface AEAPolicyStore.ReadingScratchpad
- (BOOL)removeWithError:(id *)error;
- (id)arrayForKey:(id)key;
- (id)numberForKey:(id)key;
- (id)stringForKey:(id)key;
@end

@implementation AEAPolicyStore.ReadingScratchpad

- (id)numberForKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_100074374(v3, v5);

  return v6;
}

- (id)stringForKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_100074498(v3, v5);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)arrayForKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = sub_1000745EC(v3, v5);

  if (v6)
  {
    v7.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7.super.isa = 0;
  }

  return v7.super.isa;
}

- (BOOL)removeWithError:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005A3C(self->fileSystem, *&self->fileSystem[24]);

  sub_100074188(v9);
  v11 = *v10;
  sub_10001D88C();
  (*(v5 + 8))(v9, v4);

  return 1;
}

@end